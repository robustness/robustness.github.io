---
layout: post
title: Daily Notes
categories:
- Note
tags:
- Review
---

http://baohaojun.github.io/blog/2012/01/31/beagrep-cn.html

###Summary
1. This paper presents a QoSiLAN system for autonomous QoS management and policing in unmanaged LANs. The interesting aspect of this work is that they consider hybrid nature of access technology, and their QoSiLAN uses host co-operation and is independent of access technology. The applications of interest include IPTV and HD video streaming. The authors claim that rate-adaptive encoding in such applications cannot handle congestion issues, and their suggested QoS signaling protocol for cooperative traffic shaping on all hosts in the LAN can be more effective in an autonomous manner.

2. This paper presents a framework for QoS management within unmanaged LANs such as home networks. Authors combine a number of already existing tools (LLTD, NSIS) with specifically designed technologies (eSPID, policy and admission control solutions) to support resource reservation mechanisms within unmanaged LANs.

###Novelty
1. This paper contribution is incremental, and concepts presented build on earlier QoS work such as topology discovery, flow identification/classification, flow bandwidth prediction and policing. By taking on too many of these fundamental aspects of traffic engineering, the paper struggles to keep a balance of depth in any specific topic. The novelty of the work is not clear, although a complete system consideration is presented.

1. The proposed schemes of 'cooperation' of all hosts for reservation of QoS needs for applications has been proposed previously, and has been a challenge to implement in the Internet. The same is the case for MBAC schemes that are prescribed again by the authors. The authors do not have clear justifications why this time around, their scheme would be implementable, even within LAN where applications need to access Internet to obtain services and content for their applications such as IPTV and HD video streaming.

3. More convincing novelty and a clear focus on the paper contribution could have made the paper more appealing.

4. While the solution itself it not novel, its application to the home environment (and unmanaged LANs in general) has some novelty.

5. QoS/QoE management in home networks is a relevant issue that affects telecom's business (providing IP-based TV, VoD and voice services to their customers) and over-the-top services. There are several industry and academic proposals for QoS management in these scenarios, mostly based on DiffServ. This paper proposes a somehow different approach, but in my opinion it is still not convincing.



###Experiments
1. The evaluation setup seems somewhat realistic and a good set of metrics are used. However, the results are too simplistic to justify the relevance of the very broad range of traffic engineering topics discussed in the QoSiLAN system.

###Organization

#### Reviewer 1
The organization of the manuscript should be improved.

Authors start by discussing in some detail key technologies and specific tools (LLTD, eSPID, SCBP…) too early (in the introduction), then discuss related work already on a very specialized perspective (bandwidth prediction for flows and PBAC/MBAC) and only afterwards provide their own contributions - also following a very specialized and modular organization.

In my opinion the problem statement is not clear. Authors should discuss, in the introduction, which are the goals of their proposal and why is the proposal is relevant.

As already mentioned, the state of the art is focused on a subset of the technologies/components included in their proposal, without analyzing previous approaches to the general problems they are addressing.

Section 3 (contributions) starts by discussing the authors' contributions to specific components of their framework, instead of providing first an overview of the framework as a whole. Besides, at some points the content is excessively detailed without conveying relevant content to reader (I do not understand, for instance, the relevance or the need to present in such detail the QSLP-LAN message formats).

The second part of the evaluation is interesting to understand how the system works, but does not actually provide evaluation. For the same scenario would it be possible to achieve similar performance using alternative approaches? Does the system scale well with a higher number of nodes (and, more important, higher number of flows)?

Overall the paper seems fragmented, with detailed discussions of individual components of the proposed framework but without a proper description, discussion and evaluation of the framework as a whole.



###Reference
#### Reviewer 1
The paper does not discuss, with enough detail, some of the related work.

Specific topics such as bandwidth prediction for flows and PBAC/MBAC are fairly (albeit not extensively) covered. However, the core question of this work ("how to improve QoS for unmanaged LANs or home networks?") is not properly covered from a state-of-the-art perspective. In order to rationalize their proposal, authors should compare it with the alternative approaches that also address this goal. I understand that by focusing their proposal on bandwidth reservations authors already assume a distinction from a substantial part of previous work, but I would like to see a broader analysis of this field - otherwise the reader may raise doubts about the merit of the selected approach.

From the industry side I would point:

-- ITU-T H.622 framework (event though H.622 assumes some level of operator-assisted management, unlike the proposed framework).

-- UPnP-QoS, which is also extensively studied in academic literature.

From a more academic point of view, I would point for instance these papers:

-- Suraci et al., "Admission Control and Drop strategies in a UPnP-QoS controlled home network", 10.1109/PIMRC.2010.5671830

-- Castrucci et al., "Application QoS management and session control in a heterogeneous home network using Inter-MAC layer support", <http://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=5722465&isnumber=5722317>

-- Chen et al., "QoS management in heterogeneous home networks". Computer Networks, 2007 (despite its focus on DiffServ).

Many references lack the title of the paper, including only the title of the book or journal the paper was published in. This is disturbing and should be corrected.



### Technical Correctness
#### Reviewer 1
For unmanaged networks one would expect a "Plug-and-Play" (PnP) QoS framework. Whilst it would not be difficult to add PnP support to the platform (e.g. dynamic selection of QM node, dynamic discovery of QM for new nodes joining the network) this is not discussed in the paper - in fact, the reader is implicitly left with the idea that the QM is statically assigned and it is not discussed how new nodes discover the QM (using NSLP?).

Since policing is performed per-host and for outgoing traffic (cf. Section 3.3.2) it is not clear how traffic incoming from the Internet is integrated in the framework. I implicitly understand the router/home gateway is expected to perform this integration by monitoring and shaping the traffic it routes to the LAN, but this raises several issues (e.g. performance, scalability) that need to be addressed. Could a commercial, off-the-shelf router handle this for GPON broadband connections?

Regarding the evaluation setup presented in Figure 7, it is not clear why the router is not the QM (in facto, it is not clear if the router supports QoSiLAN at all). As recognized by the authors, the gateway is the preferred location for the QM, and not including the gateway as QM (or, at least, as a QoSiLAN-compliant host) reduces the representativeness of the scenario.

Cooperative frameworks such as QoSiLAN need to be able to cope with non-cooperating hosts (for instance with some sort of graceful degradation of performance or using secondary enforcement points to minimize the effects of rogue hosts). While this is discussed in Section 3.4.2 (QoSiLAN limitations), authors just say "LAN internal communication between two hosts not supporting QoSiLAN has to be avoided by the administrators". Isn't this contradictory with the concept of unmanaged LANs?

The need for training for eSPID should be further discussed: how can the (unmanaged) framework integrate new applications?


### Future Work
#### Reviewer 1
As recognized by the authors, eSPID degrades its performance with encrypted traffic. Since most applications are gradually moving to encrypted sessions, how does this affect the framework?



