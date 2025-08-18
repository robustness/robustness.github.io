```python
# This file is hardcoded to transparently reproduce HEARME_zh.wav
# Therefore it may NOT generalize gracefully to other texts
# Refer to Usage in README.md for more general usage patterns

# pip install kokoro>=0.8.1 "misaki[zh]>=0.8.1"
from kokoro import KModel, KPipeline
from pathlib import Path
import numpy as np
import soundfile as sf
import torch
import tqdm

REPO_ID = 'hexgrad/Kokoro-82M-v1.1-zh'
SAMPLE_RATE = 24000

# How much silence to insert between paragraphs: 5000 is about 0.2 seconds
N_ZEROS = 5000

# Whether to join sentences in paragraphs 1 and 3
JOIN_SENTENCES = True

VOICE = 'zf_001' if True else 'zm_010'

device = 'cuda' if torch.cuda.is_available() else 'cpu'

texts = [(
"白日依山尽",
), (
"黄河入海流",
), (
"欲穷千里目",
), (
"更上一层楼",
)]

if JOIN_SENTENCES:
    for i in (1, 3):
        texts[i] = [''.join(texts[i])]

en_pipeline = KPipeline(lang_code='a', repo_id=REPO_ID, model=False)
def en_callable(text):
    if text == 'Kokoro':
        return 'kˈOkəɹO'
    elif text == 'Sol':
        return 'sˈOl'
    return next(en_pipeline(text)).phonemes

# HACK: Mitigate rushing caused by lack of training data beyond ~100 tokens
# Simple piecewise linear fn that decreases speed as len_ps increases
def speed_callable(len_ps):
    speed = 0.8
    if len_ps <= 83:
        speed = 1
    elif len_ps < 183:
        speed = 1 - (len_ps - 83) / 500
    return speed * 1.1

model = KModel(repo_id=REPO_ID).to(device).eval()
zh_pipeline = KPipeline(lang_code='z', repo_id=REPO_ID, model=model, en_callable=en_callable)

path = Path(__file__).parent

wavs = []
for paragraph in tqdm.tqdm(texts):
    for i, sentence in enumerate(paragraph):
        generator = zh_pipeline(sentence, voice=VOICE, speed=speed_callable)
        f = path / f'zh{len(wavs):02}.wav'
        result = next(generator)
        wav = result.audio
        sf.write(f, wav, SAMPLE_RATE)
        if i == 0 and wavs and N_ZEROS > 0:
            wav = np.concatenate([np.zeros(N_ZEROS), wav])
        wavs.append(wav)

sf.write(path / f'HEARME_{VOICE}.wav', np.concatenate(wavs), SAMPLE_RATE)
```