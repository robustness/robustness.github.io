wc <(cat /usr/share/dict/linux.words)
Here is the output:  483523  483523 4992010 /dev/fd/63. Could you explain me about the steps how the bash executes this command.

You're asking Bash to run wc (word count) on the output of cat /usr/share/dict/linux.words without creating a file. You're using process substitution (<(...)) to achieve this.

✅Step 1: Bash Sees the <(...)
Bash recognizes <(cat /usr/share/dict/linux.words) as process substitution — a special syntax.
Instead of passing the command’s output directly, Bash will:
Run cat /usr/share/dict/linux.words in the background, and
Make its output available via a named pipe or /dev/fd/N file descriptor.

✅Step 2: Bash Creates a File Descriptor
Bash creates something like: /dev/fd/63

This is a symbolic link to a file descriptor created by Bash (usually through /proc/self/fd/63), pointing to the output of cat.
📌 File descriptors are special kernel objects that represent open files or pipes. /dev/fd/N is a way to refer to them as filenames.

✅ Step 3: Bash Replaces the Command

So the command becomes effectively: wc /dev/fd/63
But /dev/fd/63 is not a regular file — it’s a pipe that streams the output of:
cat /usr/share/dict/linux.words

✅ Step 4: wc Runs on the Stream
Now wc sees a normal file argument:
wc /dev/fd/63
It reads from that file descriptor (which is the stream from cat) and prints: 483523  483523 4992010 /dev/fd/63

Which means: 483523 lines 483523 words 4992010 bytes 
Source: /dev/fd/63 (the temporary file descriptor Bash created)

Recap of What Bash Does Internally
1. Detects <(...)
2. Starts cat /usr/share/dict/linux.words in background
3. Connects its output to a temporary file descriptor, like /dev/fd/63
4. Runs wc /dev/fd/63
