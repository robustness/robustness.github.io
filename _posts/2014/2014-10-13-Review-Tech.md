---
layout: post
title: Review Tech
categories:
- Writing
tags:
- Review
---


### Technical Correctness

#### Reviewer 1
For unmanaged networks one would expect a "Plug-and-Play" (PnP) QoS framework. Whilst it would not be difficult to add PnP support to the platform (e.g. dynamic selection of QM node, dynamic discovery of QM for new nodes joining the network) this is not discussed in the paper - in fact, the reader is implicitly left with the idea that the QM is statically assigned and it is not discussed how new nodes discover the QM (using NSLP?).

Since policing is performed per-host and for outgoing traffic (cf. Section 3.3.2) it is not clear how traffic incoming from the Internet is integrated in the framework. I implicitly understand the router/home gateway is expected to perform this integration by monitoring and shaping the traffic it routes to the LAN, but this raises several issues (e.g. performance, scalability) that need to be addressed. Could a commercial, off-the-shelf router handle this for GPON broadband connections?

Regarding the evaluation setup presented in Figure 7, it is not clear why the router is not the QM (in facto, it is not clear if the router supports QoSiLAN at all). As recognized by the authors, the gateway is the preferred location for the QM, and not including the gateway as QM (or, at least, as a QoSiLAN-compliant host) reduces the representativeness of the scenario.

Cooperative frameworks such as QoSiLAN need to be able to cope with non-cooperating hosts (for instance with some sort of graceful degradation of performance or using secondary enforcement points to minimize the effects of rogue hosts). While this is discussed in Section 3.4.2 (QoSiLAN limitations), authors just say "LAN internal communication between two hosts not supporting QoSiLAN has to be avoided by the administrators". Isn't this contradictory with the concept of unmanaged LANs?

The need for training for eSPID should be further discussed: how can the (unmanaged) framework integrate new applications?



