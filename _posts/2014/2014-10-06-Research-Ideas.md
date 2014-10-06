---
layout: post
Title: Research Ideas
categories:
- Other
tags:
- Other
---

Title: Research Ideas

 -2. VM placement a. 在动态的borrow resource 时，提供resource的一方的residual resource是一直不停的变化的 

b. 对于vector bin packing, fitness的函数可用此物品放入后，其bin normalised vector, or sqrt（width^2 + length^2）

c. dynamic VM migration, should you consider loop, transit link overflow…..?

d. in sport markets, VMs are kicked out so we only need to deal with the migration cost.

e. Initial placement, consider an existing initial placement, after the new devices are introduced into the DC, how to adapt to the new objectives? (new objectives are changing because of dynamic electricity price, climate, available green energy, …..)

-1. if each Rack is equipped with a management server, how to schedule tens of thousand VM requests? How to distribute the load?

0. Given the available twitter data collected during the Olympics period, come up with some interesting questions/queries (e.g. most popular athlete, association between athletes, sports, brands...). The implementation should be completed by using Amazon Web Services (EC2, Elastic MapReduce, S3, etc.). 

1. Given the stock data collected from Goolge/Yahoo Financial API, come up with some interesting questions/queeries (e.g. fastest growing company, association between companies, section, industry, etc.) The implementation should be based on Google/Yahoo Financial API and Amazon Web Services (EC2, Elastic MapReduce, S3, etc.).

2. Given a computer with 1GB memory and 100GB hard disk and a 20GB text file with multiple duplicate lines. How to keep the last line of the duplicate lines and remove the rest? The order of lines in the file should not be changed. How to solve the same problem with the change of hardware resources by using Amazon Elastic MapReduce platform)?

3. This project focuses on the implementation of an approximation algorithm of multiple-choice vector bin packing problem. We are given a set of n items, where each item can be selected in one of several D-dimensional incarnations. We are also given T bin types, each with its own cost and D-dimensional size. Our goal is to pack the items in a set of bins of minimum overall cost. This problem is movtivated by scheduling in networks with guaranteed quality of service (QoS), but due to its general formulateion it has many other applications as well. This work is based on the theoretical foundation of &quot;vector bin packing with multiple-choice&quot;, a journal paper by Shamir and Rawitz that's going to be published. 

4. In a data center, the mapping of virtual machines (VM) to physical machines (PM) are devised under situations where tradeoffs are needed among power conservation, SLAs, revenue maximization, reliability and so on. With the change of external situations over time, for example the electricity price is lower in night, the current placement plan for VM-to-PM mapping will transform according to the objectives. The project will focus on the algorithm design on how to have a smooth transition between different placement plans generated from the changing tradeooffs among multiple objectives considering the VM migration cost and dynamics of the VM requests.

5. The project centers around the comparison of a number of Opensource cloud management software packages, including Eucalyptus, OpenNebula, Nimbus, and Openstack. Recently, such software has gained interest among researchers due to its low cost of ownership, as well as due to the possibility to customize the software according to one's needs. However, a thorough comparison of the various offerings (opensource as well as commercial products) and their advantages/disadvantages is currently lacking. This thesis work consists of three parts: (1) a framework development part where the student creates a framework for comparing the feature sets and the performance of the cloud management software; (2) a hands-on part where the student performs a performance comparison of the software on an actual cloud testbed; (3) a part where the students models the performance of a selected software package software in a large cloud.

6. In the maintenance of communication networks, nodes often need to be rebooted or brought off line for software updates, configuration updates or hardware maintenance. ISPs often run the same protocols and use equipment from the same vendor network-wide, increasing the probability that a maintenance window will be network wide. Some of the updates can be critical where we have to update fast, for example, updates against network viruses. In a wireless network with nodes on a 2D map, and each node has a coverage area, how to balance the update time of all base stations and the service disruption. You have mobile users located in this 2D map according to some &quot;famous&quot; distribution. The problem could be you have like 5 maintenance teams to update the nodes (software, hardware updates, etc) and you want to minimize the service disruption during the update process. Of couse you have to study base stations' location, capcity, coverage, and mobile user's demands etc.

7. The aim of the project is to develop a MapReduce based traffic analysis system by implementing divide and conquer algorithms, fast matching algorithms and/or frequency computing algorithms for analyzing network data, and applying these algorithms into the MapReduce framework. The interested student will have Amazon EC2 cloud computing resources for project development.

Background: Understanding the traffic dynamics and distributions provides important information for traffic engineering and capability planning, and so on. Advanced analysis of the application traffic will generate actionable information for the service providers to maximize business avenue. Nowadays traffic data volume can be easily collected in terms of gigabyte due to the usage of high-speed networks. These huge datasets bring in scalability issue to the data analyst, for example the computational time of analysis is unacceptablely long or the entire dataset cannot fit in the memory of a single computer. MapReduce framework, a new parallel computing paradigm introduced by google, is the ideal approach to address the scalability issue on analyzing tremendous network traffic data.

8. Any project ideas that you would like to work on.

