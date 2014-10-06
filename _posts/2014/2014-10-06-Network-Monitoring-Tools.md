---
layout: post
Title: 2014-10-06-Network-Monitoring-Tools
categories:
- Other
tags:
- Other
---
Title: Network Monitoring Tools

- [NFDUMP][0] and [NfSen][1]
_NFDUMP_ is a set of tools to capture/record, dump,  
filter, and replay NetFlow (v5/v7/9) data. Can filter flows according  
to multiple user-defined profiles. _NfSen_ is a Graphical  
Web-based front-end for the NFDUMP tools. Plots aggregate statistics  
over time, supports filtering and drilling down up to the individual  
flow level.- [CoMo][2]
Traffic monitoring toolkit from Intel Research. Supports both  
continuous real-time processing and retrospective processing.  
Supports Netflow and many other traffic capture sources.- [YAF][3] – Yet  
Another Flow sensor
YAF snoops packets from pcap dump files or live capture,  
and produces _bidirectional_ flows. These flows can be sent to  
[IPFIX][4] collectors, or be stored in  
an IPFIX-derived file format.- [VERMONT][5] (VERsatile MONitoring  
Toolkit)
A reference implementation of the IPFIX and PSAMP protocols  
developed as part of the [HISTORY][6] project at the  
German universities of Erlangen and Tübingen, and of the European  
[DIADEM Firewall][7]  
project.- [libipfix][8]
A C library that implements the [IPFIX protocol][4].- [libfixbuf][9]
Aims to be a compliant implementation of the [IPFIX protocol][4] message format, from  
which fully compliant IPFIX Collecting Processes and IPFIX Exporting  
Processes may be built. In addition of the IPFIX Protocol, libfixbuf  
supports efficient persistent storage of IPFIX data using the method  
outlined in draft-trammell-ipfix-file-_NN_.- [NetSA Aggregated Flow (NAF) toolchain][10]
Tools for creating and analyzing timeslice-organized  
bidirectional flow files in the [IPFIX][4]-inspired _NAF_  
format.- [FlowScan][11]
A Perl-based system to analyze and report on flows collected by  
[flow-tools][12], lfapd or [cflowd][13], by [Dave Plonka][14]. [Sample output graphs][15] are  
available too, as well as Majordomo-driven [mailing lists][16] for announcements and general discussion ([archive][17]).  
It is currently built on [Cflow.pm][18].  
User-contributed tools based on FlowScan include: 
  - [CarrierIn][19]  
from Stanislav Sinyagin
which claims to be more suitable for larger ISP/Carriers  - [CUFlow][20]  
from Matt Selsky and Johan M. Andersen at Columbia University
which is an alternative graphing tool &quot;designed to combine  
the features of CampusIO and SubNetIO&quot;. Robert S. Galloway has  
contributed a nice [howto-style document][21] describing how it can be used.  - [FlowMonitor][22]  
from Johan M. Andersen at Columbia University
monitors individual users’ network usage against a bandwidth  
usage policy.  - [JKFlow][23]  
by Jurgen Kobierczynski
A new reporting module which is highly configurable using an  
XML configuration file.  - [FlowScan+][24]
An extension to FlowScan developed by KISTI/KAIST. Adds  
servlet-based visualization and support for queries for top  
user, AS, port, protocol, etc. This is supposed to be available  
under [http://flowscan.kreonet2.net/][25],  
but that site doesn’t seem to be responsive.
- [flow-tools][26]
Similar to [cflowd][13] but implemented  
as a set of smaller tools, with the addition of compression of the  
recorded data, thus capable of recording many more flows in a given  
amount of disk space. See [paper][27]  
about its application for Intrusion Detection. There is also a [mailing list][28] for the package. 

There is a short presentation called [Ohio Gigapop Traffic Measurements][29] that shows some examples on how  
flow-tools can be used.

The package is widely used, and there are quite a few user  
contributions, such as


  - [FlowViewer][30]
Web-interface to [flow-tools][12]. Consists  
of three tools: _FlowViewer_ provides the user with web access  
to many of the textual and statistical flow-tools reports.  
_FlowGrapher_ provides a web page with a graph of the selected  
flow data. These web pages can be saved. _FlowTracker_  
(introduced in FlowViewer 3.0, released in July 2006) allows the user  
to maintain this information long-term by creating four MRTG-like  
graphs. Filtered flow data is collected every five minutes and the  
graphs are updated. FlowTracker requires Tobi Oetiker’s [RRDtool][31] package.  
Screenshots are available.  - [flow-extract][32]
which can be used to filter flow-tools-recorded flows through  
user-specified tests  - a set of [_&quot;Inter.netPH contribs&quot;_][33]
by Horatio B. Bogbindero  - some patches and a [_Python module_][34]
by [Robin Sommer][35].  - [flow-pairs][36]
A script that extracts lists of the highest bandwidth  
consumers by host and by port. [Installed at UCB][37]. Seems to have similar uses as the older [MATHE][38] system.
- [jflow][39]
A set of Java classes for collecting and analyzing NetFlow data.  
Supports Netflow versions 5 and 6, multithreaded implementation to  
facilitate real-time traffic accounting and analysis.- [Autofocus][40]
A traffic analysis and visualization tool that describes the  
traffic mix of a link through textual reports and time series plots.  
The underlying research is documented in a SIGCOMM 2003 paper,  
_Automatically Inferring Patterns of Resource Consumption in  
Network Traffic_, C. Estan, S. Savage, G. Varghese ([PDF][41]  
paper, [PPT][42]  
slides).- Wisconsin[Netpy][43]
Netpy is a network traffic analysis and visualization package  
developed at University of Wisconsin-Madison. This application is  
intended for the use of network administrators and it can help  
understand usage trends in your network as well as support interactive  
analysis of specific network events of interest. Netpy is distributed  
under GPL and a BDS-like license. Netpy stores NetFlow records in a  
local database after applying some sampling to reduce the size of the  
data. The analysis engine supports interactive analyses on this data  
where the user chooses the time interval of interest, the filtering  
rules to apply to the traffic and the type of analysis. The netpy  
console allows the user to manage the database, and perform analyses  
interactively or through scripts. The graphical user interface  
visualizes the results of the analyses accessing the database locally  
or remotely through a netpy server that is also part of the  
package.- [Stager][44]
Stager is a system for aggregation and presentation of network statistics from the flow-tools package. Includes PostgreSQL storage of aggregated statistics, as well as a Web frontend. A public[demo][44] is available.- [nfstat][45]
Developed to analyze (sampled) Netflow data from the Internet2  
_Abilene_ backbone. This is used to generate the [Internet2 NetFlow Weekly Reports][46], which contain interesting statistics not easily found  
elsewhere, such as distribution of bulk flow throughput. There are  
two mailing lists for [announcements][47]  
and for [user discussions][48], respectively.- [CAIDA cflowd][49]
Rather complex system with distributed log servers. Released in  
1998, this was the first open-source software system to work on  
NetFlow data, but doesn’t seem to be maintained anymore. CAIDA have  
prepared a nice [FAQ][50]  
which contains interesting information both on Cflowd and on NetFlow  
in general. CAIDA has announced that they no longer support cflowd,  
and recommend that people move to [flow-tools][12] instead.- [Aflow][51]
Small Netflow monitoring tool developed by ARIN, available under  
GPL. Features include easy configuration, maintenance of and graph  
generation from [RRDtool][52] files,  
pf/tcpdump-style filter rules. There is a mailing list for  
announcements and discussion.- [ASFLOW][53] (already missing in  
action?)
Tool to analyze traffic to &quot;would-be&quot; BGP neighbors. [Presented][54] by  
Richard Steenbergen and Nathan Patrick at [NANOG 35][55], October  
2005. There is supposed to be both an easy-to-use Perl version and a  
high-performance (but somewhat complex) C version.- [Fluxoscope][56]
Software used for charging, monitoring, and traffic analysis at  
SWITCH. Includes its own NetFlow v5 accounting receiver which  
aggregates traffic into multidimensional matrices  
(AS/site/application). Most of the software is written in Common  
Lisp.- [UDP Samplicator][57]
A small program that receives UDP datagrams and redistributes  
them to a set of receivers. Useful to distribute NetFlow accounting  
streams to multiple post-processing programs. Is able to distribute  
only a specified percentage of all packets to each receiver. Note  
that recent versions added the possibility of “spoofing” the  
original sender’s IP address.- [Anonymization Application Programming Interface (AAPI)/AnonTool][58]
An open-source implementation of Anonymization API. Includes a  
set of ready-to-use applications for anonymization of Netflow (v5 and  
v9), as well as PCAP traces.- [CANINE][59]
&quot;A NetFlows Conversion/Anonymization Tool for Format  
Interoperability and Secure Sharing&quot;. Converts NetFlow data between  
various formats including NetFlow v5 and v7, [NFDUMP][60], CiscoNCSA and ArgusNCSA, and is able to  
apply various methods of anonymization based on user configuration.  
See also the [FlowCon 2005 paper][61] by  
K. Luo, Y. Li, A. Slagell, and W. Yurick.- [Panoptis][62]
An open-source project started in 2001 by Costas Kotsokalis of  
GRNET. Uses NetFlow accounting data to detect (Distributed) Denial of  
Service attacks. Status as of November 2006: Supports NetFlow v1, v5  
and v8 (router-aggregated) (with v8 untested for its biggest  
part). The system supports proof-of-concept attack trace-back using a  
mesh of detectors. Updates have been introduced so that the project  
compiles on newer systems.- [Flamingo][63]
Real-time 3D traffic visualization system developed at [Merit][64]. This client/server system  
based on Netflow and OpenGL plots traffic patterns by IP address, AS,  
or port numbers, and allows interactive exploration of this data.  
Sample graphics and a paper are available from the Website.- [MHTG][65]  
(Multi Host Traffic Grapher)
Uses NetFlow to generate per-host graphs of traffic for a campus  
network. Nice user interface implemented as a Java applet which  
allows interaction with traffic plots. The software consists of a C++  
program to process NetFlow data, a Mysql backend, and Perl frontend  
and the Java grapher.- [Matt’s Quick &amp; Dirty CFLOWD tutorial and scripts…][66]
Postprocessing scripts for cflowd data by Matthew Petach- [flow2rrd.pl][67]
_Converts a cisco NetFlow stream into set of RRDtool files, based  
on set of IP netmasks._ By Alex Pilosov.- [bmpcount][68]
A library of bitmap counting algorithms that count the number of  
active flows in a network traffic trace. To be able to use it, you  
should be familiar with the paper that describes the algorithms it  
implements: _Bitmap algorithms for counting active flows on high speed  
links_, C. Estan, G. Varghese, M. Fisk, Internet Measurement  
Conference 2003 ([PDF][69]  
paper, [PPT][70]  
slides)- Slate
An application that converts LFAP data into NetFlow records – see  
[http://www.nmops.org/][71].- [Ntop][72]
This well-known libpcap-based network usage monitor has been  
extended to produce NetFlow v5 accounting data. It also supports  
[sFlow][73].- [SiLK][74]
SiLK, the System for Internet-Level Knowledge, is a collection of  
netflow tools developed by the [CERT][75]/NetSA (Network Situational  
Awareness) Team to facilitate security analysis in large networks.  
The toolset includes programs such as rwfilter,  
rwcount, rwuniq. There are plans to develop this  
further into an &quot;Analyst’s Desktop&quot;, described in a FloCon’05 paper,  
_R: A Proposed Analysis and Visualization Environment for Network  
Security Data_, J. McNutt ([PDF][76]).  
_(Ed.: Should this be &quot;RAVE: A Proposed…&quot;?)_  
The idea is to base this on the _R_ statistical programming  
language (see [www.r-project.org][77]), which  
supports exploratory data analysis well.- [Java Netflow Collect-Analyzer][78]
Collects Netflow v1/v5/v7/v8/v9 packets from Cisco/Juniper  
routers or nProbe. It can store both raw data or analyzed contents to  
a database using JDBC.- [UPFrame][79]
This _UDP/Netflow Processing Framework_ is a system for  
real-time processing of UDP packet streams such as Netflow export  
data. It features a general infrastructure for dynamically  
configurable plugin modules.- [nProbe][80]
A small self-contained program that generates NetFlow accounting  
data for a traffic stream sniffed off one or several interfaces.  
Works under Unix and Windows environments. It can be used to build  
inexpensive NetFlow probes.- [fprobe][81] (I)
Traffic probe that can generate NetFlow data. Based on the  
libpcap library. Fairly small implementation in C.- [fprobe][82] (II)
Another NetFlow-generating software traffic probe.- [Softflowd][83]
Traffic probe that can generate NetFlow data. Based on libpcap.  
Comes with a NetFlow collector in Perl. Both the server (probe) and  
client (collector) support export/import over IPv6. Very lean (as of  
June 2004) implementation in C. 

The[pfflowd][84]  
variant is based on OpenBSD’s PF interface.

The[flowd][85] companion  
NetFlow collector includes features such as multicast, IPv6 and  
NetFlow v9 support, as well as fast upfront filtering.

- [Argus][86] from QoSient
This network _Audit Record Generation and Utilization  
System_ can be used for intrusion detection and QoS  
monitoring. It is also [mentioned][87]  
in the reference section of these pages.- [RENETCOL][88]  
(RENATER Network Collector)
GPL’ed Netflow collector with support for Netflow v9, IPv6,  
Multicast, and MPLS.- [Flowc][89]
&quot;a tool for gathering, storing and analyzing traffic accounting  
for Cisco routers with NetFlow enabled switching (version 5). This  
package could be used by ISP for planning, analysis and billing  
procedures.&quot;- CESNET [NetFlow Monitor][90]
by Jan Nejman.- [RUS-CERT tools][91]
The CERT of the Stuttgart University computing center (RUS-CERT)  
has published some tools that they use internally to analyze Netflow  
data. Some of the documentation is in German.- [pmacct][92]
A set of tools to account and aggregate IP traffic. Supports  
libpcap, Netflow v1/v5/v7/v8/v9, and sFlow v2/v4/v5 for both  
IPv4 and IPv6 traffic.- [NEye][93]
NEye is a Netflow V5 collector. It logs incoming Netflow V5 data  
to ASCII, MySQL, or SQLite databases, and it makes full use of POSIX  
threads if available. It works on most major platforms (Linux,  
Solaris, AIX, Irix, HP/UX, Mac OS X, Digital Unix, etc.) and older  
ones too (Ultrix, Nextstep, etc.).- [NetFlow2MySQL][94],  
[NetFlow2XML][95],  
and [pcNetFlow][96]
Three products from a research project at the NARA Institute of  
Science and Technology.- [F.L.A.V.I.O.][97] (see also the [FreshMeat][98] page)
A Perl-based NetFlow collector that stores flow data &quot;into a  
MySQL database and gets it back to graph daily, weekly, monthly and  
yearly charts.&quot;- [NetFlowMet][99]
Starting with release 4.2, Nevil Brownlee’s _NeTraMet_  
package includes _NetFlowMet_, which implements an RTFM meter  
fed on Netflow accounting data.- [NetFlow Accounting software][100] from [ABPSoft][101]
A self-contained NetFlow processing system written in C. Writes  
captured flows to file. Postprocessor breaks up this data over peers  
according to a definition file.- [EHNT][102]  
(Extreme Happy NetFlow Tool) by Nik Weidenbacher
Another self-contained NetFlow accounting packet processor. The  
receiving process also functions as a server to which various kinds of  
clients can connect. Also written in C.- [Hendrik Visage’s NetFlow tools][103]
FTP site with various tools for NetFlow postprocessing. In  
particular, you will find: 
  1. a UDP duplicator (hack of samplicator to preserve the source router  
IP)
  1. a couple of hacks to cflowd for dumping the flows every %n  
seconds as well as a &quot;flhh&quot; to output flowdump stuff  
aggregated, ready for a  
`grep|sed &quot;s/../update /&quot;|rrdtool -`

- [netMET][104] – Network’s  
METrology
Network measurement solution for the French regional academic  
networking community, developed at the C.I.R.I.L in Nancy. Includes  
an HTML interface and support for accounting and security  
monitoring.- [MATHE][105]
An article (in French) about a Netflow accounting and  
visualization system used at [EPFL][106].  
Uses an Oracle database and Perl DBI/GD scripts to generate a nice  
breakdown of external traffic to departments/institutes.- [JANET Traffic Accounting Site][107]
An impressive application of Netflow which is used for  
volume-based charging for JANET’s U.S. connection.  
[Other statistics][108] at JANET  
were done using NeTraMet.- InMon [sFlow Toolkit][109]
Open source tools for analyzing sFlow data. Allows sFlow data to  
be used with a number of open source tools, including: tcpdump, snort  
and MRTG or rrdtool. Also able to convert sFlow packets to NetFlow  
packets.- [Net::sFlow][110]
Perl module to parse sFlow messages. Written by Elisa Jasinska  
from AMS-IX as a basis of the sFlow-based traffic analysis service for  
AMS-IX members. The use of this at AMS-IX has been described in  
presentations and a paper, links to which can be found in  
the [references section][111].
### Commercial Applications

- [Watch4net APG (Automated Performance Grapher)][112]
APG is a reporting tool that provides performance and capacity  
reports on network, servers, applications and Netflow data.- [Apogee Networks][113]
The _NetCountant_ network usage-based billing system and  
the _NetScope_ real-time network monitoring and performance  
analysis solution support NetFlow, RMON2, RADIUS, other SNMP MIBs, and  
“Layer 7” application/content switches.- [Arbor Networks][114]
_Peakflow DOS_ detects denial-of-service attacks, and  
_Peakflow Traffic_ analyzes traffic and routing history. Both  
can process NetFlow accounting data. As of November 2003, Arbor is  
said to support Netflow v9.- [Network Signature][115] BENTO
BENTO stands for “BGP Enabled Network Traffic Organizer” and is  
a high-performance NetFlow data processor with an integrated BGP-4  
implementation to facilitate traffic analysis based on complex  
external routing relationships. Product offerings include a  
software/support package and an “appliance” consisting of a  
preconfigured rack-mount server.- [Caligare Flow Inspector][116]  
and [NetImonitor][117]
Analyzes NetFlow data for network monitoring as well as attack  
detection and response. Works with NetFlow data export version  
1,5,6,7 and 9. NetImonitor is primarily designed for use in the  
United States.- [Cisco][118]
[_NetFlow FlowCollector_][119]/[_Network Data Analyzer_][120]Similar to cflowd but productized, with a (Java-based)  
GUI and possibly better possibilities of defining filters and  
aggregation schemes.


  * NetFlow Collector 3.6 [documentation][121],  
demo version [download][122]
  * Network Data Analyzer 3.6 [documentation][120],  
demo version (3.0) [download][123]

- Cisco [NAM (Network Analyzer Module)][124]
This is a &quot;NetFlow collector on a linecard&quot; for the Catalyst  
6500/7600 OSR platform.- [Concord][125]
_Network Health_ uses NetFlow and RMON2 accounting  
information “to determine application, bandwitdth and server usage.”- Crannog Software’s [Netflow Monitor][126]
LAN and WAN bandwidth analysis based on NetFlow data. Includes a  
Web interface including Java applets to display traffic graphs and to  
enable drill-down. Runs on Microsoft Windows NT4/2000/XP and on Unix.  
Evaluation version of _NetFlow Live_[available][127].- [Cyclades-nQuirer][128]
A network traffic monitoring appliance that can generate data in  
both Netflow and nTop formats.- [Digiquant][129]
_IMS_ accounting and billing system based on  
Oracle 9i under Unix.- [Gadgets Software &amp; Professional Services Ltd.][130]
[_Network Intelligence_][131] traffic measurement and visualisation software  
for GNU/Linux and Windows (client only) platforms. Free trial  
available. Includes 3D visualization using OpenGL. 

The author also wrote [bbnfc][132], a  
“bare-bones Netflow collector tool” that simply receives and  
displayes Netflow v5 packets.

- [Hewlett-Packard][133]
The _Smart Internet Billing Solution_ usage management  
system and well as _OpenView Performance Insight for Networks_  
(OVPI) use NetFlow accounting data as possible input.- [Infosim StableNet][134] – Performance Management Engine
StableNet PME provides End-to-End (E2E) Service Level Management  
(SLM) by monitoring and reporting on the systems, networks and  
applications. StableNet supports the following flow technologies out  
of the box: Netflow, cFlow, sFlow, Netstream.- [InfoVista Corporation][135]
_InfoVista_ Service Level Management (SLM) and conformance  
solution.- [InMon Traffic Sentinel][136]
is a commercial, web-based application running on Linux that  
provides real-time and historical analysis of flow information from  
NetFlow, sFlow, LFAP or HP Extended RMON sources. Web queries provide  
easy access to historical traffic matrices. Real-time top talker  
charts identify sources of congestion. Includes network-wide  
threshold and alert features as well as anomaly detection.- [IsarFlow][137] from IsarNet
IsarFlow is a traffic analysis tool for accounting, capacity  
planning, QoS monitoring, and application distribution within Citrix  
sessions based on Netflow.- [Ixia][138]
_IxTraffic_ integrates NetFlow accounting data with  
topology information from a live BGP-4 feed to allow analysis of  
inter-domain traffic patterns.- [Lancope][139] StealthWatch
Flow-based Network Behavior Analysis appliance with advanced user  
identity tracking. Can handle Netflow and sFlow data, or capture  
packets from mirrored ports.- [LoriotPro][140]
A network monitoring (&quot;supervision&quot; in franglais) system that  
includes a [Netflow plugin][141]. Stores flow data in a MySQL database.- [ManageEngine NetFlow Analyzer][142]
Netflow-based bandwidth monitoring tool from AdventNet. Supports  
location of bottlenecks and allows drilling down to find traffic that  
is causing them. Thirty-day evaluation license available free of  
charge. Versions for Windows and Linux (x86).- [Mazu Networks][143]
[Mazu Profiler][144] analyzes and models enterprise network traffic. It  
provides visibility into network behavior, protects against worms and  
other malware, and supports auditing and policy enforcement. It  
supports Netflow v1/5/7/9 as well as other data collection mechanisms.- [Micromuse][145]
_Cisco Info Center USM_ “acquires, analyzes, displays and  
exports Internet usage data.” Note that Micromuse was integrated  
into IBM under the &quot;IBM Tivoli Netcool&quot; brand.- [NARUS][146]
_OSS Mediation solutions._ They also do anomaly  
detection.- [Nazca.Billing][147]
Integrated billing software for &quot;Telephony, Internet and  
Networks&quot;. Contains interfaces to many accounting systems including  
NetFlow.- [NetQoS ReporterAnalyzer][148]
Scalable solution for network capacity planning, troubleshooting,  
and traffic analysis, including traffic visualization capabilities.- [NetUp][149]  
Products
[UTM][150] is a billing  
system for ISPs. It can use Netflow (v5) and several other accounting  
methods. It supports a rich variety of charging and payment  
schemes. 

[NDSAD Traffic Collector][151] is an open-source (GPL’ed) tool that captures packets  
and generates a Netflow (v5) accounting stream.

- [NetUsage][152] from Apoapsis (formerly  
called WANBUS)
The NetUsage suite strives to provide visibility of network  
traffic, producing meaningful reports not only for network  
professionals, but for IT management, business managers and accounts  
departments. Supports network traffic monitoring, capacity planning,  
business justification and cost control.- SolarWinds [Orion NetFlow Traffic Analyzer][153]
Windows-based commercial system that stores NetFlow data,  
generates various types of charts, and provides &quot;drill-down&quot;  
capabilities.- [PRTG Traffic Manager][154]
Windows-based bandwidth management software from [Paessler][155]. Uses SNMP, Netflow, and  
packet capture for monitoring and classifying bandwidth usage.  
Besides the commercial license, there is also a (restricted)  
&quot;freeware&quot; license.- QRadar from [Q1 Labs][156]
The system can use Netflow data, but also includes its own  
payload-aware flow collector which produces bi-directional flow  
information in a format called QFlow. Includes anomaly  
detection.- Plixer[Scrutinizer NetFlow Analyzer][157]
NetFlow-based Enterprise-level traffic analysis tool with  
GUI-based reporting (topN hosts/applications etc.) and  
zoom/drill-down. Uses MySQL  
back-end. [Free (as in free beer) edition][158] available.- [I-ABA][159] and [M-NTM][160] from [Tek Yazilim][161]
Windows-based software to analyze NetFlow (and Cisco IP  
Accounting) statistics. I-ABA specifically analyzes AS-to-AS traffic  
streams. Trial versions can be downloaded.- [Quallaby][162]
Has a Netflow Application Pack for its _PROVISO_ system  
for network performance monitoring and service assurance. Quallaby  
was acquired by Micromuse, which was itself acquired by IBM. The  
Netflow Application Pack is maintained in the 4.4.1 release and  
supports Netflow versions up to v8.- [NetScout][163]
_nGenius Performance Manager_ “is a complete solution for  
proactive monitoring, troubleshooting, capacity planning, and Voice  
over IP (VoIP) monitoring”.- [Portal Software][164]
_Infranet_ real-time customer management and billing  
software.- [RODOPI][165]
Billing software for ISPs.- [XACCT][166]
Commercial vendor of accounting and billing solutions with the  
ability to process (among others) Netflow accounting data
* [Netflow software list][167]
* [Papers about NetFlow applications][168]
* [Stager][169]
* [NetFlow analysis tool: FlowScan][170]
* [Appunti su NetFlow][171]



[0]: http://nfdump.sourceforge.net/
[1]: http://nfsen.sourceforge.net/
[2]: http://como.intel-research.net/
[3]: http://aircert.sourceforge.net/yaf
[4]: http://www.switch.ch/tf-tant/floma/references.html#ipfix
[5]: http://vermont.berlios.de/
[6]: http://www.history-project.net/
[7]: http://www.diadem-firewall.org/
[8]: http://libipfix.sourceforge.net/
[9]: http://www.cert.org/netsa/tools/fixbuf/
[10]: http://aircert.sourceforge.net/naf
[11]: http://net.doit.wisc.edu/~plonka/FlowScan/
[12]: http://www.switch.ch/tf-tant/floma/software.html#flow-tools
[13]: http://www.switch.ch/tf-tant/floma/software.html#cflowd
[14]: http://net.doit.wisc.edu/~plonka/
[15]: http://wwwstats.net.wisc.edu/
[16]: http://net.doit.wisc.edu/~plonka/FlowScan/#Mailing_Lists
[17]: http://net.doit.wisc.edu/~plonka/list/flowscan/archive/
[18]: http://net.doit.wisc.edu/~plonka/Cflow/
[19]: http://carrierin.sourceforge.net/
[20]: http://www.columbia.edu/acis/networks/advanced/CUFlow/
[21]: http://www.dynamicnetworks.us/netflow/
[22]: http://www.columbia.edu/acis/networks/advanced/FlowMonitor/
[23]: http://users.telenet.be/jurgen.kobierczynski/jkflow/JKFlow.html
[24]: http://noc.kreonet2.re.kr/Measurement/
[25]: http://flowscan.kreonet2.net/
[26]: http://www.splintered.net/sw/flow-tools/
[27]: http://www.switch.ch/tf-tant/floma/references.html#osu-id
[28]: http://www.pairlist.net/mailman/listinfo/flow-tools
[29]: http://www.itec.oar.net/oartech/2002-06/oartech06122002.html
[30]: http://ensight.eos.nasa.gov/FlowViewer/
[31]: http://oss.oetiker.ch/rrdtool/
[32]: http://security.uchicago.edu/tools/net-forensics
[33]: http://cng.ateneo.net/cng/wyu/software/src/
[34]: http://www.icir.org/robin/flowtools
[35]: http://www.icir.org/robin/
[36]: http://lusars.net/~mhunter/flow-pairs/
[37]: http://www.net.berkeley.edu/flow
[38]: http://www.switch.ch/tf-tant/floma/software.html#mathe
[39]: http://www.net-track.ch/opensource/jflow/
[40]: http://ial.ucsd.edu/AutoFocus/
[41]: http://www.cs.ucsd.edu/users/cestan/papers/p0403-estan.pdf
[42]: http://www.cs.ucsd.edu/users/cestan/papers/TrafficClusters.ppt
[43]: http://wail.cs.wisc.edu/netpy/
[44]: http://stager.uninett.no/
[45]: http://www.internet2.edu/~shalunov/nfstat/
[46]: http://netflow.internet2.edu/weekly/
[47]: https://mail.internet2.edu/wws/info/nfstat-announce
[48]: https://mail.internet2.edu/wws/info/nfstat-users
[49]: http://www.caida.org/tools/measurement/cflowd/
[50]: http://www.caida.org/tools/measurement/cflowd/newfaq.xml
[51]: http://www.aflow.org/
[52]: http://www.rrdtool.org/
[53]: http://asflow.sourceforge.net/
[54]: http://www.nanog.org/mtg-0510/steenbergen.html
[55]: http://www.nanog.org/mtg-0510/agenda.html
[56]: http://www.switch.ch/network/stat/fluxoscope/
[57]: http://www.switch.ch/tf-tant/floma/sw/samplicator/
[58]: http://www.ics.forth.gr/dcs/Activities/Projects/anontool.html
[59]: http://security.ncsa.uiuc.edu/distribution/CanineDownLoad.html
[60]: http://www.switch.ch/tf-tant/floma/software.html#nfdump
[61]: http://www.switch.ch/tf-tant/floma/A%20NetFlows%20Conversion/Anonymization%20Tool%20forFormat%20Interoperability%20and%20Secure%20Sharing
[62]: http://panoptis.sourceforge.net/
[63]: http://flamingo.merit.edu/
[64]: http://www.merit.edu/
[65]: http://mhtg.the.net/mhtg.html
[66]: http://buckaroo.xo.com/CFLOWD/
[67]: http://formenos.org/flow/
[68]: http://ial.ucsd.edu/bitmaps/
[69]: http://www.cs.ucsd.edu/users/cestan/papers/p327-estan-bitmaps.pdf
[70]: http://www.cs.ucsd.edu/users/cestan/papers/FlowCountingBitmaps.ppt
[71]: http://www.nmops.org/
[72]: http://www.ntop.org/netflow.html
[73]: http://www.switch.ch/tf-tant/floma/references.html#sflow
[74]: http://silktools.sourceforge.net/
[75]: http://www.cert.org/
[76]: http://www.cert.org/flocon/2005/presentations/flocon2005-rintro2.pdf
[77]: http://www.r-project.org/
[78]: http://sourceforge.net/projects/jnca
[79]: http://www.tik.ee.ethz.ch/~ddosvax/upframe/
[80]: http://www.ntop.org/nProbe.html
[81]: http://sourceforge.net/projects/fprobe/
[82]: http://psi.home.ro/flow
[83]: http://www.mindrot.org/softflowd.html
[84]: http://www.mindrot.org/pfflowd.html
[85]: http://www.mindrot.org/flowd.html
[86]: http://www.qosient.com/argus/
[87]: http://www.switch.ch/tf-tant/floma/references.html#argus
[88]: http://pasillo.renater.fr/renetcol/
[89]: http://netacad.kiev.ua/flowc/
[90]: http://netflow.cesnet.cz/
[91]: http://cert.uni-stuttgart.de/projects/flows/
[92]: http://www.pmacct.net/
[93]: http://freshmeat.net/projects/neye
[94]: http://cluster19.aist-nara.ac.jp/public/#NetFlow2MySQL
[95]: http://cluster19.aist-nara.ac.jp/public/#NetFlow2XML
[96]: http://cluster19.aist-nara.ac.jp/public/#pcNetFlow
[97]: http://flavio.sourceforge.net/
[98]: http://freshmeat.net/projects/flavio/
[99]: http://www.auckland.ac.nz/net/NeTraMet/
[100]: http://www.ibh.de/~beck/stuff/nfa/
[101]: http://www.switch.ch/cgi-bin/info/whois?Query=ABP-RIPE&amp;Server=whois.ripe.net
[102]: http://ehnt.sourceforge.net/
[103]: ftp://hvs.envisage.co.za/pub/cflowd-hvt
[104]: http://www.switch.ch/tf-tant/floma/www.netmet-solutions.org
[105]: http://sawww.epfl.ch/SIC/SA/publications/FI98/fi-4-98/4-98-page5.html
[106]: http://www.epfl.ch/
[107]: http://bill.ja.net/
[108]: http://statto.ukerna.ac.uk/
[109]: http://www.inmon.com/sflowTools.htm
[110]: http://search.cpan.org/search?query=Net%3A%3AsFlow&amp;mode=all
[111]: http://www.switch.ch/tf-tant/floma/references.html#sflow-amsix
[112]: http://www.watch4net.com/apg/
[113]: http://www.apogeenet.com/
[114]: http://www.arbornetworks.com/
[115]: http://www.networksignature.com/
[116]: http://www.caligare.com/
[117]: http://www.netimonitor.com/
[118]: http://www.cisco.com/
[119]: http://www.cisco.com/univercd/cc/td/doc/product/rtrmgmt/nfc/index.htm
[120]: http://www.cisco.com/univercd/cc/td/doc/product/rtrmgmt/nda/index.htm
[121]: http://www.cisco.com/univercd/cc/td/doc/product/rtrmgmt/nfc/nfc_3_6/index.htm
[122]: http://www.cisco.com/pcgi-bin/tablebuild.pl/collector
[123]: http://www.cisco.com/pcgi-bin/tablebuild.pl/analyzer
[124]: http://www.cisco.com/warp/public/cc/pd/ifaa/6000nam/index.shtml
[125]: http://www.concord.com/
[126]: http://www.crannog-software.com/netflow.html
[127]: http://www.crannog-software.com/download.html
[128]: http://www.cyclades.com/products/29/nquirer
[129]: http://www.digiquant.com/
[130]: http://www.gadgets.co.nz/
[131]: http://www.gadgets.co.nz/products.shtml
[132]: http://www.gadgets.co.nz/ni_dl/bbnfc.shtml
[133]: http://www.hp.com/
[134]: http://www.infosim.net/
[135]: http://www.infovista.com/
[136]: http://www.inmon.com/products/trafficsentinel.php
[137]: http://www.isarflow.de/
[138]: http://www.ixiacom.com/
[139]: http://www.lancope.com/
[140]: http://www.loriotpro.com/
[141]: http://www.loriotpro.com/Products/Plugins/Plugins_EN.htm#Netflow
[142]: http://manageengine.adventnet.com/products/netflow/
[143]: http://www.mazunetworks.com/
[144]: http://www.mazunetworks.com/products/mazu-profiler.php
[145]: http://www.micromuse.com/
[146]: http://www.narus.com/
[147]: http://www.nazca-billing.com/index.htm
[148]: http://www.netqos.com/solutions/reporteranalyzer/index.html
[149]: http://netup.biz/
[150]: http://www.netup.biz/utm5.php
[151]: http://www.netup.biz/ndsad.php
[152]: http://www.netusage.net/
[153]: http://www.solarwinds.net/products/orion/netflowtrafficanalyzer.aspx
[154]: http://www.paessler.com/prtg/
[155]: http://www.paessler.com/
[156]: http://www.q1labs.com/
[157]: http://www.plixer.com/products/scrutinizer.php
[158]: http://www.plixer.com/products/free-netflow.php
[159]: http://www.tekyazilim.com/i-aba-en.htm
[160]: http://www.tekyazilim.com/mntm-tr.htm
[161]: http://www.tekyazilim.com/
[162]: http://www.quallaby.com/
[163]: http://www.netscout.com/
[164]: http://www.portal.com/
[165]: http://www.rodopi.com/
[166]: http://www.xacct.com/
[167]: http://www.tanasi.it/939-netflow-software-list.html
[168]: http://www.tanasi.it/1091-papers-about-netflow-applications.html
[169]: http://www.tanasi.it/184-stager.html
[170]: http://www.tanasi.it/158-netflow-analysis-tool-flowscan.html
[171]: http://www.tanasi.it/1114-appunti-su-netflow.html