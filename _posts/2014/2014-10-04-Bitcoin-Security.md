## Bitcoin Security

https://anders.io/the-troublesome-history-of-the-bitcoin-exchange-mtgox/

Here’s a (very simplified) mockup:

![bitcoin-transaction-malleability](https://www.evernote.com/shard/s50/res/292bff59-d7b7-4d54-af0c-42109151aceb.png) 



Both transactions are valid, and they contain the same data, but they have different hashes (transaction ids). Only one of them will be validated by the bitcoin network.


发出一个比特币交易请求后不会立刻返回交易成功与否，在比特币网络中会有一个处理延时，而比特币网络由于自身的特性，所有交易请求是以网状形式随机处理的，两次交易请求并不会以队列形式依次处理。
如何发起攻击：

    首先需要有足够多的比特币矿机接入网络，以增加伪造的请求被优先处理的可能性。
    攻击者在第三方交易平台提交一个提款请求并获得一个交易ID。
    根据交易信息伪造一个签名同时生成一个完全不同的交易ID，并将伪造的请求发出。
    若伪造的交易被优先处理，则原始交易失败。
    我们可再次提交提现请求，第三方交易平台确认之前的交易失败后会再次发送提现交易，至此攻击成功。

 


