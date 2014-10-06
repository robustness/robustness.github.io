---
layout: post
Title: 2014-10-06-BFT-Practical-Byzantine-Fault-Tolerance
categories:
- Other
tags:
- Other
---
Title: BFT - Practical Byzantine Fault Tolerance

 Dynamo takes pains to make sure that every storage node is utilized almost equally to any other storage node, but enforcing that precise load balancing may lead to wasted traffic in node join and leave.

In Dynamo, all nodes maintain information about all key-coordinator mappings. Dynamo does not employ a directory service lookup, instead insists --due to symmetry principle-- that all nodes maintain all the directory information. The request is first routed to a random node (for load balancing purposes), and since that node has information about which node is primarily responsible (a.k.a. coordinator) for the key (typically the first among the top N nodes in the preference list of the key), it routes the request to the corresponding coordinator. If by chance the node that received the request in the first place is also in the list, it can also coordinate the request. Read and write operations involve the first N healthy nodes in the preference list, skipping over those that are down or inaccessible.

A single master however will become the bottleneck in the system (exactly as happened with GFS). Also a single master has a location within the network which, if it's not &quot;central&quot; introduces consistently skewed latency for some clients.

This project is aimed at developing algorithms and implementation techniques to build practical Byzantine-fault-tolerant systems, that is, systems that work correctly even when some components are faulty and exhibit arbitrary behavior. We believe that these systems will be increasingly important in the future because malicious attacks and software errors are increasingly common and can cause faulty nodes to exhibit arbitrary behavior.

TODAY, we are more and more dependent on Internet 

services, which provide important functionality and

store critical state. These services are often implemented on

collections of machines residing at multiple geographic

locations such as a set of corporate data centers. For

example, Dynamo uses tens of thousands of servers

located in many data centers around the world to build

a storage back-end for Amazon’s S3 storage service and its

e-commerce platform [1]. As another example, in Google’s

cluster environment each cluster includes an installation of

the GFS file system spanning thousands of machines to

provide a storage substrate [2].

Additionally, these systems are 

Although the literature on Byzantine-fault tolerant systems is vast, until recently most research was theoretical, within the distributed computing community (e.g., [4, 19, 21, 25]).

Fair links may fail to deliver, delay, or duplicate messages, or deliver them out of order; however, if a message is sent infinitely often to a receiver, then it is received infinitely often.

Data replication improves both availability and performance for distributed services. Availability is improved by allowing access to the data even when some of the replicas are unavailable. Performance improvements concern reduced latency (by enabling local access from replica instead of remote access) and increased throughput (by letting multiple computers serve the data).

