---
layout: post
title: Paper Introduction
categories:
- Writing
tags:
- Paper
---

1. In this paper, we show the impact of having composite links on point-to-point channels on network.

2. One of the key problems that surfaces when using power control in 802.11 networks is that of asymmetric links [16][3]. To demostrate such an effect we use ...

3. We adopt a game theoretic approach to analyze the impact of ...

4. in the sequel

5. one distinguishing aspect of our work...

6. Through a detailed implementation design and extensive computer simulation results, we demostrate that with Bandwidth Borrowing, 1) ...; 2)...; 3)...; and 4) .... Moreover, ....

7. In this paper, we provide a more general and detailded description of the DSM protocol first described in [14], describe modifications that significantly reduce the communication overhead between trackers, and provide a more detailed evaluation that was presented in oru original paper [14].

8. Regarding consumer Internet video traffic, video streaming is expected to grow further massively from 19% as of now to 53% in 2017, as forecasted by Cisco's Visual Network Index [2].


1. Increased usage of High Definition (HD) video streaming, IPTV applications and VoIP communication...

1. Countless next generation networking protocols at various layers of the protocol stack require data plane modifications. The past few years along have seen proposals at multiple layers of the protocol stack for improving routing in data centers, improving availability, providing greater security, and so on.

1. This platform must provide mechanisms to deploy these network protocols, header formats and functions quickly, yet still forward traffic as quickly as possible.

1. Unfortunately, the conventional hardware implementation and deployment path on custom ASICs incurs a long development cycle, and custom protocols may also consume precious space in ASIC.

1. The networking community needs a development and deployment platform that offers high performance, flexibility, and the possibility of rapid prototyping and deployment

1. NP-based implementation are difficult to port across different processor architectures and customization can be different if the function that a prototype requires is not native to the processor's instruction set. NP-based implementations are specifically bound to the respective vendor-provided platform, which can inherently limit the flexibility of data-plane implementation.

2. XXX strikes a balance between the programmability of software and the performance of hardware, enables rapid prototyping and deployment of new protocols.

1.  There are numerous measurement studies on the performance and behavior of actual BT system. In [2] the characteristics of BT systems and users are presented by actual BT traffic.

1. Given the increasing critical nature of network performance to many e-business operations and the competitive nature of the ISP market, more precise specification of network performance requirements in SLAs will become a differentiating factor in ISP service offerings.}

2. There are two possible approaches for realizing this goal that are complementary but embody different perspectives on how to deliver service guarantees.


1. There are 0.5-1.0 million flows in the backbone~\cite{FP99}. Maybe a few hundreds of flows can constitute as much as 80-90\% of the traffic at a router. Further, measuring sudden change in activity towards a given destination could be a sign of a DOS attack.


1. It is of theoretical and practical interest to understand whether the information in such systems can be effectively disseminated without the support of an underlying network, when the population of the system and its distribution across the dessemination network are \textit{a priori} unknown.}

1. With a large number of methods available and much empirical experience gained, recently {\color{blue} an increasing effort} has been put toward improving the theoretical understanding of measurement-based estimation of available bandwidths,

1. If the ``information'' to be disseminated {\color{JungleGreen}corresponds to} worm-like malicious software, the problem transfers to characterizing the performance worm propagation strategies. In this case, we are interested in {\color{JungleGreen} characterizing} the minimum number of scans that a worm needs to infect a target fraction of susceptible machines; such knowledge can be significant to designers of {\color{JungleGreen}worm countermeasures}.

1. as time evolves

1. Due to its high practical relevance, the topic of flow measurement has attracted a lot of attentions in recent years. In the following, we provide an overview of the works that are most closely related to our own contribution.

2. Recent years have seen an enormous growth in demand for Internet access, with applications from personal use to commercial and military operations. Several of these applications are sensitive to a ``quality'' of packet delivery. For instance, although archiving data transfer can tolerate long delays, VoIP is very sensitive to latency. Between these two extreme examples lies a spectrum of applications with varying service requirements, e.g. electronic commerce, video conference and online gaming.}

3. Provisioning an ISP backbone network for intro-domain IP traffic is a big challenge, particular due to rapid growth of the network and user demands. At times, the network topology and capacity may seem insufficient to meet the current demands. At the same time, there is mounting pressure for ISPs to provide QoS in terms of SLAs with customers, with loose guarantees on delay, loss, and throughput. All of these issues point to the important of traffic engineering, making use of existing network resources by tailoring routes to the prevailing traffic.


1. The explosive growth in Internet and intranet deployment for a constantly growing variety of application have created a massive increase in demand for bandwidth, performance, predictable QoS, and differentiated network services. Simultaneously the need has emerged for measurement technology that will support this growth by providing IP network managers with effective tools for monitoring network utilization and performance. Bandwidth and latency are clearly the two key performance parameters and utilization indicators for any modern network.}

1. Knowledge of the up-to-date bandwidth utilization and path latencies is critical for numerous important network management tasks, including application and user profiling, proactive and reactive resource management and traffic engineering, as well as providing and verifying QoS guarantees for end user applications

1. Indeed, these observations have led to a recent flurry of both research and industrial activity in the area of developing novel tools and infrastructures for measuring network bandwidth and latency parameters. Example include SNMP and RMON measurement probes, Cisco's Netflow tools, the IDMaps\cite{FJPZGJ99,JJJRSZ00} and Network Distance Maps~\cite{TR00} efforts for measuring end to end network latencies, the pathchar tool for estimating Internet link characteristics~\cite{Dow99} and packet-pair algorithms for measuring link bandwidths~\cite{LB99,Bol93}. A crucial requirement for such monitoring tools is that they be deployed in an intelligent manner in order to avoid placing undue strain on the shared resources of the production network.

1. As an example, Cisco's Netflow measurement tool allows Netflow-enabled routers to collect detailed traffic data on packet flows between source-destination node pairs. Netflow-enabled routers can generate large volumes of export data due to size and distributed nature of large data network, the granularity of the recorded flow data, and the rapid data traffic growth.

1. The key mechanism for enhancing Netflow data volume manageability is the careful planning of Netflow deployment. Cisco suggest that Netflow be deployed incrementally (i.e. interface by interface) and strategically (i.e., on carefully chosen routers), instead of being widely deployed on every router on the network{Netflow Services and applications, Cisco Systems, White paper, 1999}. Cisco domain experts can work with customers to determine such ``key'' routers and interfaces for netflow deployment based on customer's flow patterns and network topology and architecture.

1. Similar observations hold for the deployment of SNMP agents {W.Stallings, SNMP, SNMPv2, SNMPv3, and RMON 1 and 2, Addison Wesley Longman, Inc, 1999,Third Edition} since processing SNMP queries can adversely impact router performance and SNMP data transfers can result in significant volumes of additional network traffic. In particular, as modern network management systems shift their focus toward service- and application-level management, the monitoring process requires more data to be collected and at much higher frequencies.

1. In such scenarios, the SNMP-polling frequency needs to be high enough not to miss relevant changes or degradation in application behavior or service availabilty {\color{Emerald}an efficient polling layer for SNMP, NOMS 2000} (in fact, even for failure monitoring, stallings suggests that short polling intervals are often required in order for the NMS to be responsive to problems in the network.) When such high SNMP-polling frequencies are prescribed, the overhead that a polled SNMP agent imposes on the underlying router can be significant and can adversely impact the router's throughput. Further, the problem is only exacerbated for mid- to low-end routers (e.g. that implement large parts of their routing functionality in software.) As an example, our experiments with a Cisco 4000-Series router on our local network showed the throughput of the router to drop as much as 15-20\% during a polling cycle (where repeated getnext queries are issued to gather link utilization data)

1. Obviously, polling such a router at reasonably high frequencies can severely impact its performance. Also, note that the network bandwidth consumed by such frequent SNMP polling for detailed router/application/service monitoring can be significant, primarily due to the large number of polling messages that need to traverse the network from /to the NMS to/from the polled routers. In fact, this is the main motivation behind work on distributed polling engines {\color{Emerald}network management by delegation, IM1991} and more recent proposals on ``batching'' SNMP-polling messages {An efficient polling layer for SNMP, NOMS 2000} and more effective SNMP-polling primitives {SNMP GetPrev: An effective way to access data in large MIB tables, Bell labs Tech Memorandum, August 2000}.




1. an opportunist, one who conforms to the prevailing ways and opinions of one's time or condition for personal advantage.}

1.  Our network is a directed graph, or multi-graph, $G=(N,A)$ whose nodes and arcs represent routers and links between them. Each arc $a$ has a capacity $c(a)$ which is a measure for the amount of traffic flow it can take. In addition to the capacitated network, we are given a demand matrix $D$ that for each pair $(s,t)$ of nodes tells us how much traffic flow we need to send from $s$ to $t$. We shall refer to $s$ and $t$ as the source and the destination of the demand. The routing problem is now, for each non-zero demand $D(s,t)$, to distribute the demanded flow over paths from $s$ to $t$. Here, in the genral routing problem, we assume there are no limitations to how we can distribute the flow between the paths from $s$ to $t$.

1. In addition to, in addition, moreover, furthermore

1. although, even though, however, nevertheless, despite, in spite of}

1. Because, therefore, as a result, consequently, hence, because of, due to, as a result of.


1.  consistent with, similar to, unlike, similarly, conversely, in contrast, on the other hand.

1. give, present, XXX form the subject of Chapter X,.









