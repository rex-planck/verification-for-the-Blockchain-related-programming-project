
# 新兴网络技术与实践 - 实验报告合集 (SDU)

本仓库包含了在**山东大学**（Shandong University）计算机科学与技术学院修读“新兴网络技术与实践”课程期间完成的全部实验报告 。



## 实验概览

本系列实验通过使用 **Wireshark** 抓包分析工具，深入研究了计算机网络协议栈中各层核心协议的工作机制 。

### 1. Wireshark 入门 (Lab 1)

* **内容**：熟悉 Wireshark 的基本操作与捕获步骤 。


* **关键发现**：识别并分析了 TCP、TLSv1.2 和 TLSv1.3 等不同协议的流量 。



### 2. HTTP 协议分析 (Lab 2)

* **内容**：了解 HTTP GET/Response 交互、条件 GET 以及处理长文档时的 TCP 分段 。


* **核心知识**：
* 分析了 HTTP 1.1 版本的运行机制 。


* 研究了带有嵌入式对象的 HTML 文档如何激发多个 GET 请求 。





### 3. DNS 协议分析 (Lab 3)

* **内容**：使用 `nslookup` 获取全球不同地区服务器（如日本软银、德国慕尼黑大学）的 IP 地址及权威服务器信息 。


* **技术细节**：
* 分析了 DNS 查询类型，如 **Type A** (IPv4) 和 **Type AAAA** (IPv6) 。


* 实验观察到 DNS 流量通常通过 **UDP** 传输，但在某些特定配置下也使用 **TCP** 。





### 4. UDP 协议分析 (Lab 4)

* **内容**：学习 UDP 报文段结构及其无连接特性 。


* **关键参数**：
* UDP 首部包含 4 个字段：源端口、目的端口、长度和校验和，每个字段各占 2 字节 。


* UDP 的协议号（Protocol Number）在 IP 数据报中标记为 **17**（十六进制 0x11） 。





### 5. TCP 协议分析 (Lab 5)

* **内容**：分析 TCP 三次握手（SYN/ACK）及可靠数据传输机制 。


* **分析重点**：
* 计算并绘制定时图表，研究 **RTT**（往返时间）与 **EstimatedRTT** 。


* 探讨了流量控制（Receiver Buffer Space）对发送速率的影响 。


* 识别了 TCP 的慢启动（Slow Start）阶段特征 。





### 6. DHCP 协议分析 (Lab 6)

* **内容**：通过抓包观察 DHCP 交互的四个阶段：**Discover、Offer、Request、ACK** 。


* **重要机制**：
* **Transaction-ID**：用于唯一标识单个 DHCP 会话 。


* **租约时间 (Lease Time)**：实验中设定的租约时长为 4 小时 。


* **ARP 验证**：服务器在提供 IP 前会发送 ARP 请求，以防止地址冲突 。





### 7. NAT 技术分析 (Lab 7)

* **内容**：对比 NAT 路由器的家庭侧（Home Side）与 ISP 侧流量，分析地址转换过程 。


* **观察结果**：
* NAT 路由器会修改 IP 报文的源 IP 地址、生存时间（TTL）及校验和 。


* 详细记录了 HTTP 连接在 NAT 转换表中的对应条目 。





### 8. ICMP 协议分析 (Lab 8)

* **内容**：研究 Ping 工具（ICMP Echo）和 Tracert 工具的工作原理 。


* **报文类型**：
* ICMP Type **8**：请求报文 。


* ICMP Type **0**：响应报文 。




* **发现**：ICMP 作为网络层协议，不包含传输层端口号 。



---

## 实验环境

* **抓包工具**：Wireshark 



* **终端工具**：nslookup, ipconfig, ping, tracert 

