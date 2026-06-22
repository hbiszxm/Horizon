# Horizon 每日速递 - 2026-06-23

> 从 93 条内容中筛选出 34 条重要资讯。

---

1. [[#^item-1|libssh2 库发现严重远程代码执行漏洞]] ⭐️ 9.0/10
2. [[#^item-2|PixelSmash CVE-2026-8461：FFmpeg 严重远程代码执行漏洞]] ⭐️ 9.0/10
3. [[#^item-3|Netflix 实时绘制数千微服务拓扑图]] ⭐️ 8.0/10
4. [[#^item-4|吴恩达：AI 炒作过头，未来公司需 10 人团队+Agent]] ⭐️ 8.0/10
5. [[#^item-5|内核级真相：为什么 eBPF 正在取代用户空间 Agent 成为安全可观测性首选]] ⭐️ 8.0/10
6. [[#^item-6|英伟达 CEO 称轻视华为是天真，将向华为学习]] ⭐️ 8.0/10
7. [[#^item-7|OpenAI 推出 Daybreak 安全工具集]] ⭐️ 8.0/10
8. [[#^item-8|AI 安全超越网络安全：Kolter 与 Fredrikson 观点]] ⭐️ 8.0/10
9. [[#^item-9|Import AI 462：超级说服力、自我维持 AI 与 ASI 路径]] ⭐️ 8.0/10
10. [[#^item-10|DifyTap 漏洞可跨租户泄露 AI 对话]] ⭐️ 8.0/10
11. [[#^item-11|29 年历史的 Squid 代理漏洞 Squidbleed 可泄露 HTTP 请求]] ⭐️ 8.0/10
12. [[#^item-12|加拿大情报机构首次利用授权清除僵尸网络]] ⭐️ 8.0/10
13. [[#^item-13|AryStinger 恶意软件劫持 4300 台老旧路由器构建代理网络]] ⭐️ 8.0/10
14. [[#^item-14|自由线程 Python：过去、现在与未来]] ⭐️ 8.0/10
15. [[#^item-15|近半数 LG 智能电视应用含住宅代理 SDK]] ⭐️ 8.0/10
16. [[#^item-16|Linux 安全启动证书将于 2025 年过期]] ⭐️ 8.0/10
17. [[#^item-17|Claude Code 的扩展思考输出并非真实推理过程]] ⭐️ 8.0/10
18. [[#^item-18|xAI 发布 Grok Skills 并更新 Responses API 以增强工具调用]] ⭐️ 7.0/10
19. [[#^item-19|Discord 自动化管理超大规模 ScyllaDB 集群]] ⭐️ 7.0/10
20. [[#^item-20|AI 赋能的 Feature Flag 全生命周期治理]] ⭐️ 7.0/10
21. [[#^item-21|PP-OCRv6 登陆 Hugging Face：1.5M 到 34.5M 参数，支持 50 种语言]] ⭐️ 7.0/10
22. [[#^item-22|ShapedPlugin WordPress 专业版插件遭供应链攻击植入后门]] ⭐️ 7.0/10
23. [[#^item-23|OXLOADER 加载器利用恶意谷歌广告传播 CastleStealer]] ⭐️ 7.0/10
24. [[#^item-24|遗留基础设施劫持 AI 代理]] ⭐️ 7.0/10
25. [[#^item-25|每周安全回顾：浏览器漏洞、EDR 绕过工具、电视僵尸网络、OpenBSD 漏洞、安卓木马]] ⭐️ 7.0/10
26. [[#^item-26|国际刑警组织警告亚太地区钓鱼、勒索软件和 AI 诈骗激增]] ⭐️ 7.0/10
27. [[#^item-27|OSPM 2026 首日：Linux 调度与电源管理]] ⭐️ 7.0/10
28. [[#^item-28|网络安全市场是否已被 AI 产品过度饱和？]] ⭐️ 7.0/10
29. [[#^item-29|美光计划投资 2000 亿美元扩产应对 AI 存储芯片短缺]] ⭐️ 7.0/10
30. [[#^item-30|阿里巴巴发布 HappyHorse 1.1 视频生成模型]] ⭐️ 7.0/10
31. [[#^item-31|前美团产品经理批评三大组织问题]] ⭐️ 7.0/10
32. [[#^item-32|优步利用实时信号与 Listwise 排序优化餐厅推荐]] ⭐️ 6.0/10
33. [[#^item-33|复旦邱锡鹏教授将在 AICon 上海分享 MOSS 多模态模型]] ⭐️ 6.0/10
34. [[#^item-34|Java 新闻汇总：WildFly、Micronaut、Spring AI 等]] ⭐️ 5.0/10

---

<a id="item-1"></a>
^item-1
## [libssh2 库发现严重远程代码执行漏洞](https://www.reddit.com/r/cybersecurity/comments/1ucfvw4/massive_security_flaw_discovered_in_popular_ssh/) ⭐️ 9.0/10

在广泛使用的 SSH 库 libssh2 中发现了两个严重漏洞，攻击者可在无需权限和用户交互的情况下远程执行代码。 这些漏洞影响全球数百万嵌入式系统，对依赖 libssh2 进行安全通信的关键基础设施和物联网设备构成严重安全风险。 这些漏洞包括 userauth.c 中的整数溢出（CVE-2026-7598）和完整性校验值验证不当（CVE-2023-48795），CVSS 评分分别为 7.3 和 5.9。

reddit · r/cybersecurity · /u/sunychoudhary · 6月22日 09:32

**背景**: libssh2 是一个可移植的 SSH2 客户端库，被许多应用程序和嵌入式系统用于安全远程访问和文件传输。SSH（安全外壳）是一种加密网络协议，用于在不安全的网络上安全地运行网络服务。此类库中的漏洞可能允许攻击者在受影响的系统上执行任意代码。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://radicalnotion.ai/vendor/libssh2/libssh2">libssh2 Vulnerabilities: CVEs, CISA KEV & Security Advisories</a></li>
<li><a href="https://nvd.nist.gov/vuln/detail/cve-2023-48795">CVE-2023-48795 Detail - NVD</a></li>

</ul>
</details>

**标签**: `#libssh2`, `#SSH`, `#远程代码执行`, `#漏洞预警`, `#网络安全`

---

<a id="item-2"></a>
^item-2
## [PixelSmash CVE-2026-8461：FFmpeg 严重远程代码执行漏洞](https://www.reddit.com/r/cybersecurity/comments/1uczvl5/sharing_findings_on_pixelsmash_cve20268461/) ⭐️ 9.0/10

JFrog 披露了 CVE-2026-8461（PixelSmash），这是 FFmpeg 的 MagicYUV 解码器中的一个堆越界写入漏洞（CVSS 8.8），可通过单个 50 KB 媒体文件实现远程代码执行，补丁已发布。 FFmpeg 处理了互联网上超过 90% 的视频/音频，因此该漏洞影响无数应用，包括 Jellyfin、Nextcloud、mpv、Kodi、OBS 和 vLLM，在某些情况下无需用户交互即可实现完全远程代码执行。 该漏洞位于 libavcodec 的 MagicYUV 解码器中，它错误计算了色度平面缓冲区大小，导致一行溢出，覆盖 AVBuffer 函数指针以执行任意命令；漏洞利用在 AVI、MKV 和 MOV 容器中有效。

reddit · r/cybersecurity · /u/_JFrog · 6月22日 22:57

**背景**: FFmpeg 是使用最广泛的开源多媒体框架，libavcodec 是其核心编解码库。MagicYUV 是一种无损视频编解码器，在 FFmpeg 构建中默认启用。堆越界写入是指数据写入超出分配的堆缓冲区，可能破坏相邻的内存结构。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.magicyuv.com/">MagicYUV – Lossless video codec</a></li>
<li><a href="https://en.wikipedia.org/wiki/Libavcodec">Libavcodec</a></li>
<li><a href="https://cwe.mitre.org/data/definitions/787.html">CWE - CWE-787: Out-of-bounds Write (4.20)</a></li>

</ul>
</details>

**社区讨论**: Reddit 社区对广泛影响表示担忧，并称赞 JFrog 的详细披露；一些用户讨论了缓解策略以及立即更新 FFmpeg 的重要性。

**标签**: `#FFmpeg`, `#CVE-2026-8461`, `#远程代码执行`, `#漏洞预警`, `#安全`

---

<a id="item-3"></a>
^item-3
## [Netflix 实时绘制数千微服务拓扑图](https://www.infoq.cn/article/kp5s7thcxtELg8TpdQYY?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

Netflix 分享了其大规模微服务拓扑实时绘制系统的设计与实现，涵盖数据采集、图计算和可视化等关键技术。 作为业界标杆，Netflix 的方案对微服务架构、可观测性和 SRE 实践具有重要参考价值，有助于团队更有效地理解服务依赖和排查问题。 该系统可能利用分布式追踪数据（如 TraceID 和 SpanID）推断服务调用关系，并采用图算法近实时地计算和更新拓扑。

rss · InfoQ 中文 · 6月22日 19:07

**背景**: 微服务架构通常包含成百上千个服务，理解它们之间的交互变得困难。拓扑图可视化这些依赖关系，有助于调试、容量规划和影响分析。Netflix 规模庞大，需要一个能处理高吞吐量和动态变化的系统。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.infoq.cn/article/swnsmqwvbaazetl12xmg">全面解析Netflix的微服务架构设计 - InfoQ</a></li>
<li><a href="https://zhuanlan.zhihu.com/p/184942019">Netflix 微服务架构设计解析 - 知乎</a></li>
<li><a href="https://www.yunshan.net/blog/archives/35174.html">SkyWalking如何实现 服 务 拓 扑 图 ？ – 满足云时代IT...</a></li>

</ul>
</details>

**标签**: `#微服务`, `#Netflix`, `#拓扑图`, `#可观测性`, `#SRE`

---

<a id="item-4"></a>
^item-4
## [吴恩达：AI 炒作过头，未来公司需 10 人团队+Agent](https://www.infoq.cn/article/9ubrcrTRdxROBUo5igpy?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

吴恩达指出 AI 炒作过度，未来企业将由 10 人团队结合 Agent 技术重构数据架构。 作为 AI 领域权威，吴恩达的务实观点对抗不切实际的预期，为企业有效采用 AI 提供了具体、可扩展的路径。 吴恩达强调，配备 AI Agent 的小团队可以取代大型数据团队，并且必须重新思考数据架构以支持 Agent 驱动的工作流。

rss · InfoQ 中文 · 6月22日 16:55

**背景**: AI Agent 是自主软件实体，能感知环境并采取行动实现目标。Agent 架构定义了感知、推理和行动等组件的组织方式。吴恩达的提议与由 AI 赋能的小型敏捷团队趋势一致。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Agent_architecture">Agent architecture</a></li>
<li><a href="https://www.ibm.com/think/topics/ai-agents">What Are AI Agents ? | IBM</a></li>

</ul>
</details>

**标签**: `#AI趋势`, `#吴恩达`, `#Agent`, `#数据架构`, `#行业观察`

---

<a id="item-5"></a>
^item-5
## [内核级真相：为什么 eBPF 正在取代用户空间 Agent 成为安全可观测性首选](https://www.infoq.cn/article/spibFV8QPwbvac8LAluZ?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

本文阐述了 eBPF 技术凭借其内核级安全、低开销和高性能，正在逐步取代传统的用户空间 Agent，成为安全可观测性的首选方案。 这一转变意义重大，因为 eBPF 能够在不带来用户空间 Agent 的性能开销和安全风险的情况下，提供对系统行为更深入的可见性，从而在云原生环境中实现更有效的威胁检测和事件响应。 eBPF 允许开发人员在内核中运行沙盒化程序，而无需修改内核代码或加载内核模块，提供了安全高效的接口。它使用 CO-RE（一次编译，到处运行）技术来确保跨不同内核版本的可移植性。

rss · InfoQ 中文 · 6月22日 10:20

**背景**: eBPF（扩展的伯克利包过滤器）源于 1992 年提出的伯克利包过滤器（BPF），其目的是在不将不必要的数据包从内核空间复制到用户空间的情况下过滤数据包。传统的用户空间 Agent 在用户空间运行，通常需要上下文切换和数据复制，导致更高的开销和潜在的安全漏洞。eBPF 程序直接在内核中运行，能够以最小的性能影响实现事件驱动的监控。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://developer.aliyun.com/article/1223770">eBPF 核心 原 理 架构与观测网络安全应用-开发者社区-阿里云</a></li>
<li><a href="https://vc2004.github.io/learning/eBPF.html">eBPF 技 术 图解合集</a></li>
<li><a href="https://blog.yanjingang.com/?p=7946">eBPF —初探Linux内核扩展 | 闫金钢的Blog</a></li>

</ul>
</details>

**标签**: `#eBPF`, `#可观测性`, `#安全`, `#Agent`, `#内核`

---

<a id="item-6"></a>
^item-6
## [英伟达 CEO 称轻视华为是天真，将向华为学习](https://t.me/zaihuapd/42107) ⭐️ 8.0/10

7 月 16 日，英伟达 CEO 黄仁勋在北京媒体会上表示，任何轻视华为或中国制造能力的人都“极其天真”，并强调英伟达将向华为学习。 英伟达 CEO 的公开承认凸显了华为在 AI 芯片和系统方面日益增强的实力，标志着竞争格局的转变。这可能影响全球科技公司如何看待和与中国科技公司合作。 黄仁勋称赞华为的芯片设计能力“极为优秀”，并指出其在系统工程、网络工程和云服务方面的优势。他还提到，许多 AI 开发人员在使用华为时遇到困难，其生态系统尚未准备好取代英伟达。

telegram · zaihuapd · 6月22日 09:05

**背景**: 英伟达凭借其基于 GPU 的生态系统主导 AI 芯片市场，而华为在美国制裁下一直在开发自己的 AI 芯片，如昇腾系列。两家公司之间的竞争反映了更广泛的中美科技竞争，华为正努力构建英伟达平台的有竞争力的替代方案。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.zaobao.com.sg/news/china/story20250421-6221101">华 为 据报推出新晶 片 昇腾920 或取代英伟达H20 | 联合早报</a></li>
<li><a href="https://money.123.com.cn/show/b1237934.html">生 态 对决： 英 伟 达 的“飞轮效应”与中国 AI 的“矩阵协同”_投资者网_云掌财经</a></li>
<li><a href="https://www.tmtpost.com/6942660.html">一夜蒸发5600亿， 英 伟 达 真的危险了？｜钛媒体AGI深度-钛媒体官方网站</a></li>

</ul>
</details>

**标签**: `#英伟达`, `#华为`, `#AI芯片`, `#中美科技竞争`, `#黄仁勋`

---

<a id="item-7"></a>
^item-7
## [OpenAI 推出 Daybreak 安全工具集](https://openai.com/index/daybreak-securing-the-world) ⭐️ 8.0/10

OpenAI 推出了 Daybreak 计划，其中包括 Codex Security 和 GPT-5.5-Cyber，旨在帮助组织大规模发现、验证和修复漏洞。 这标志着将 AI 应用于网络安全的重要一步，可能自动化复杂的安全工作流程并缩短漏洞修复时间，从而惠及全球安全团队和开源维护者。 Codex Security 是一个由 AI 驱动的应用安全代理，可逐次提交扫描 GitHub 仓库；而 GPT-5.5-Cyber 是一个针对防御性网络安全任务（如恶意软件分析和补丁验证）进行微调的模型。

rss · OpenAI News · 6月22日 10:00

**背景**: OpenAI 的 Daybreak 计划旨在将 AI 安全能力直接嵌入软件开发工作流程。这些工具旨在利用 AI 增强人类专业知识，辅助漏洞发现和修复。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://openai.com/index/daybreak-securing-the-world/">Daybreak : Tools for securing every organization in the world | OpenAI</a></li>
<li><a href="https://www.helpnetsecurity.com/2026/05/08/openai-gpt-5-5-cyber-model/">OpenAI tunes GPT - 5 . 5 - Cyber for more permissive... - Help Net Security</a></li>
<li><a href="https://nextgendefense.com/openai-gpt-daybreak-initiative/">OpenAI Pushes GPT-5.5 Into Cyber Defense With ‘ Daybreak ’ Initiative</a></li>

</ul>
</details>

**标签**: `#AI安全`, `#漏洞修复`, `#OpenAI`, `#Codex Security`, `#GPT-5.5-Cyber`

---

<a id="item-8"></a>
^item-8
## [AI 安全超越网络安全：Kolter 与 Fredrikson 观点](https://www.latent.space/p/gray-swan) ⭐️ 8.0/10

OpenAI 董事会成员 Zico Kolter 与 Gray Swan CEO Matt Fredrikson 讨论了 AI 安全为何根本不同于传统网络安全，强调它不仅仅是“带 AI 的网络安全”。 这一区分至关重要，因为 AI 系统引入了对抗性攻击和意外行为等新型漏洞，传统网络安全措施无法应对，从而影响组织如何对待 AI 安全。 Kolter 担任 OpenAI 安全与安保委员会主席，有权阻止不安全的 AI 系统发布，而 Gray Swan 专注于 AI 红队测试和安全研究。

rss · Latent Space · 6月22日 21:06

**背景**: 红队测试起源于冷战模拟，后来成为标准网络安全实践。在 AI 安全中，红队测试涉及故意测试 AI 系统的漏洞、风险和意外行为。Kolter 是卡内基梅隆大学教授，也是 Gray Swan AI 的联合创始人，专注于 AI 安全研究。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Gray_Swan_AI">Gray Swan AI</a></li>
<li><a href="https://avahi.ai/glossary/red-teaming-ai-safety/">Red Teaming ( AI Safety ) - Avahi</a></li>
<li><a href="https://www.aol.com/articles/zico-kolter-professor-leads-openai-132149666.html">Who is Zico Kolter ? A professor leads OpenAI safety panel with...</a></li>

</ul>
</details>

**标签**: `#AI安全`, `#红队测试`, `#网络安全`, `#大模型`, `#行业洞察`

---

<a id="item-9"></a>
^item-9
## [Import AI 462：超级说服力、自我维持 AI 与 ASI 路径](https://jack-clark.net/2026/06/22/import-ai-462-superpersuasion-self-sustaining-ai-paths-to-asi/) ⭐️ 8.0/10

最新一期 Import AI 报道，AI 系统在说服力上可靠地超越了人类专家，讨论了能够自我管理资源的自我维持 AI 系统的发展，并概述了通向超级智能（ASI）的潜在路径。 这些发现凸显了 AI 影响人类行为的能力日益增强，引发了重大的安全和伦理担忧，而自我维持 AI 和 ASI 路径则指向一个 AI 系统能够自主运行并可能超越人类智能的未来。 超级说服力研究由牛津大学、英国 AI 安全研究所、斯坦福大学等机构的研究人员完成；自我维持 AI 涉及系统优化自身能源和计算资源；ASI 路径包括递归自我改进和大脑仿真。

rss · Import AI · 6月22日 12:31

**背景**: 超级说服力指 AI 说服人类的能力，可能导致有害后果。自我维持 AI 系统通过管理自身资源，无需持续人工干预即可运行。超级智能（ASI）是一种假设性 AI，远超人类智能，常被讨论为在通用人工智能（AGI）之后通过递归自我改进实现。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.lesswrong.com/posts/cGFBqg9SKsqbuzNHF/levels-of-superpersuasion">Levels of superpersuasion — LessWrong</a></li>
<li><a href="https://www.linkedin.com/pulse/self-sustained-ai-next-frontier-autonomous-power-nasr-ullah-uwmie">Self - Sustained AI : The Next Frontier of Autonomous Intelligence...</a></li>
<li><a href="https://www.timesofai.com/industry-insights/path-to-superintelligence/">The Path to Superintelligence: The Next Step After AGI</a></li>

</ul>
</details>

**标签**: `#AI前沿`, `#超级智能`, `#AI安全`, `#研究综述`

---

<a id="item-10"></a>
^item-10
## [DifyTap 漏洞可跨租户泄露 AI 对话](https://thehackernews.com/2026/06/researchers-detail-difytap-flaws-in.html) ⭐️ 8.0/10

研究人员披露了开源 AI 工作流平台 Dify 中的四个漏洞（统称 DifyTap），攻击者可无需认证读取其他租户的 AI 对话内容。 这些漏洞对多租户 AI 应用构成严重威胁，可能导致跨租户数据泄露，影响 Dify 的云服务及可能的其他部署。 其中两个漏洞为严重级别，两个无需认证，三个对 Dify 的多租户云服务具有跨租户影响。

rss · The Hacker News · 6月22日 16:13

**背景**: Dify 是一个开源智能体工作流平台，在 GitHub 上拥有超过 14.6 万星标，用于构建和部署 AI 应用。多租户云服务通过隔离机制保护客户数据，但跨租户漏洞可能打破这种隔离，导致敏感信息泄露。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://thehackernews.com/2026/06/researchers-detail-difytap-flaws-in.html">Researchers Detail DifyTap Flaws in Dify That Could Expose AI Chats Across Tenants</a></li>
<li><a href="https://github.com/langgenius/dify">GitHub - langgenius/dify: Production-ready platform for agentic workflow development. · GitHub</a></li>
<li><a href="https://owasp.org/www-project-cloud-tenant-isolation/">OWASP Cloud Tenant Isolation | OWASP Foundation</a></li>

</ul>
</details>

**标签**: `#Dify`, `#AI安全`, `#漏洞预警`, `#跨租户泄露`

---

<a id="item-11"></a>
^item-11
## [29 年历史的 Squid 代理漏洞 Squidbleed 可泄露 HTTP 请求](https://thehackernews.com/2026/06/29-year-old-squid-proxy-bug-squidbleed.html) ⭐️ 8.0/10

Squid 网络代理中被披露了一个名为 Squidbleed（CVE-2026-47729）的堆越读漏洞，攻击者可通过该漏洞泄露共享同一代理的其他用户的明文 HTTP 请求，包括凭证和会话令牌。 该漏洞影响默认配置下的所有 Squid 版本，构成广泛威胁，可能暴露数百万用户的敏感数据。它凸显了关键基础设施中遗留代码持续存在的风险。 该漏洞源于 1997 年的一次 FTP 解析更改，当 Squid 从攻击者控制的 FTP 服务器获取目录列表时触发。堆越读会泄露包含先前用户 HTTP 请求数据的陈旧内存。

rss · The Hacker News · 6月22日 14:29

**背景**: Squid 是一种广泛使用的缓存和转发 Web 代理。堆越读发生在程序从堆缓冲区读取超出预期内存时，可能暴露相邻数据。此漏洞让人联想到 OpenSSL 中的 Heartbleed 漏洞。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://thehackernews.com/2026/06/29-year-old-squid-proxy-bug-squidbleed.html">29-Year-Old Squid Proxy Bug 'Squidbleed' Can Leak Cleartext HTTP Requests</a></li>
<li><a href="https://blog.calif.io/p/squidbleed-cve-2026-47729">Squidbleed (CVE-2026-47729) - Calif</a></li>
<li><a href="https://www.securityweek.com/decades-old-squid-proxy-flaw-squidbleed-can-expose-user-data/">Decades-Old Squid Proxy Flaw 'Squidbleed' Can Expose User Data - SecurityWeek</a></li>

</ul>
</details>

**社区讨论**: 安全社区对该漏洞的年龄和默认激活表示担忧，许多人呼吁紧急修补。一些研究人员指出，利用需要特定条件，但由于可能泄露凭证，影响严重。

**标签**: `#Squid`, `#漏洞`, `#代理安全`, `#HTTP泄露`, `#Squidbleed`

---

<a id="item-12"></a>
^item-12
## [加拿大情报机构首次利用授权清除僵尸网络](https://thehackernews.com/2026/06/canadas-spy-agency-used-first-of-its.html) ⭐️ 8.0/10

加拿大安全情报局（CSIS）首次从联邦法院获得威胁减少授权，远程清除加拿大境内受两个外国控制僵尸网络感染的设备。 这标志着 CSIS 行动权力的重大扩展，并为情报机构直接干预国内网络安全威胁开创了法律先例，可能影响其他国家如何平衡安全与隐私。 该授权允许 CSIS 修改、删除或干扰受感染服务器、家用路由器和物联网设备上的数据。联邦法院于 2026 年 6 月 15 日发布了裁决的公开版本。

rss · The Hacker News · 6月22日 09:11

**背景**: 僵尸网络是由攻击者控制的受感染设备网络，常用于分布式拒绝服务攻击或数据窃取。CSIS 的威胁减少权力根据 2015 年《反恐法案》引入，允许其在司法批准下破坏国家安全威胁，但这是首次应用于僵尸网络清理。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.ctvnews.ca/politics/article/csis-failed-to-fully-consider-human-toll-when-disrupting-threats-watchdog-says/">CSIS failed to fully consider human toll when disrupting threats ...</a></li>
<li><a href="https://iclmg.ca/threat-reduction/">Threat Reduction - International Civil Liberties Monitoring Group</a></li>

</ul>
</details>

**标签**: `#僵尸网络`, `#网络安全`, `#CSIS`, `#威胁减少授权`

---

<a id="item-13"></a>
^item-13
## [AryStinger 恶意软件劫持 4300 台老旧路由器构建代理网络](https://thehackernews.com/2026/06/arystinger-malware-infects-4300-legacy.html) ⭐️ 8.0/10

奇安信 XLab 发现了一种名为 AryStinger 的新型恶意软件，已感染至少 4300 台老旧路由器（主要是 Realtek RTL819X 设备），用于构建分布式侦察和代理网络，而非传统的 DDoS 僵尸网络。 这标志着攻击者策略从 DDoS 转向隐蔽侦察，能够进行攻击前的情报收集和流量隧道传输。感染未打补丁的老旧路由器对网络安全构成持续威胁。 该恶意软件利用旧 CVE 漏洞入侵路由器，受感染设备用于扫描目标、隧道传输流量以及隐藏攻击者活动。受感染路由器数量仍在增长。

rss · The Hacker News · 6月22日 06:57

**背景**: 老旧路由器通常缺乏安全更新，容易成为恶意软件的目标。传统僵尸网络用于 DDoS 攻击，但 AryStinger 将受感染设备重新用于侦察，这是网络攻击中更隐蔽的准备阶段。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.malwarebytes.com/blog/news/2026/06/thousands-of-d-link-routers-under-control-of-arystinger-botnet">Thousands of D-Link routers under control of AryStinger botnet</a></li>
<li><a href="https://linuxsecurity.com/features/arystinger-linux-router-malware">AryStinger Botnet Exploits Thousands of Neglected Linux Routers</a></li>

</ul>
</details>

**社区讨论**: Reddit 讨论强调了使用路由器进行侦察而非 DDoS 的新颖性，用户对感染规模以及清理受感染设备的难度表示担忧。

**标签**: `#恶意软件`, `#路由器安全`, `#侦察代理网络`, `#QiAnXin`, `#网络安全`

---

<a id="item-14"></a>
^item-14
## [自由线程 Python：过去、现在与未来](https://lwn.net/Articles/1078367/) ⭐️ 8.0/10

在 PyCon US 2026 上，CPython 核心开发者 Thomas Wouters 回顾了自由线程 Python 解释器的动机、历史、现状及未来展望，该解释器移除了全局解释器锁（GIL）。 移除 GIL 是 Python 近年来最重大的语言级变革之一，它允许 Python 字节码在多个 CPU 核心上真正并行执行，对 AI 和多线程应用影响深远。 自由线程构建作为 PEP 703 的一部分在 Python 3.13 中实验性引入，它使用 mimalloc 分配器而非 pymalloc。开发者必须避免写入共享可变对象以确保线程安全。

rss · LWN Headlines · 6月22日 15:26

**背景**: 全局解释器锁（GIL）是一个保护 Python 对象访问的互斥锁，阻止多个线程同时执行 Python 字节码。这长期限制了 CPU 密集型多线程 Python 程序的性能。PEP 703 提出使 GIL 成为可选项，从而在 Python 3.13 中引入了实验性的自由线程构建。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://docs.python.org/3/howto/free-threading-python.html">Python support for free threading — Python 3.14.6 documentation</a></li>
<li><a href="https://en.wikipedia.org/wiki/Global_interpreter_lock">Global interpreter lock - Wikipedia</a></li>
<li><a href="https://peps.python.org/pep-0703/">PEP 703 – Making the Global Interpreter Lock Optional in CPython | peps.python.org</a></li>

</ul>
</details>

**标签**: `#Python`, `#GIL`, `#自由线程`, `#CPython`, `#多线程`

---

<a id="item-15"></a>
^item-15
## [近半数 LG 智能电视应用含住宅代理 SDK](https://spur.us/blog/smart-tv-apps-residential-proxy-sdks) ⭐️ 8.0/10

Spur 的一项研究发现，LG 智能电视上近半数的第三方应用嵌入了住宅代理 SDK，这些 SDK 可能被用于绕过地理限制或进行恶意活动。 这对数百万用户构成了严重的隐私风险，因为住宅代理可以在用户不知情的情况下通过其家庭网络路由流量，可能助长欺诈或监控行为。 这些 SDK 来自第三方开发者，而非 LG 本身，它们允许应用开发者通过出售住宅 IP 访问权限来获利。建议用户将智能电视隔离在单独的 VLAN 中。

hackernews · microcode · 6月22日 20:48 · [社区讨论](https://news.ycombinator.com/item?id=48635954)

**背景**: 住宅代理 SDK 允许应用通过用户的家庭 IP 地址路由互联网流量，使流量看起来像合法的住宅流量。这种技术常用于网络爬虫、广告欺诈或绕过地理封锁。智能电视尤其脆弱，因为它们运行具有网络访问权限的应用，但用户可见性有限。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.npmjs.com/search?q=keywords:residential">keywords: residential - npm search</a></li>
<li><a href="https://pypi.org/project/iploop-sdk/">Residential proxy SDK with full scraping capabilities — render JS...</a></li>

</ul>
</details>

**社区讨论**: 评论者对智能电视表示强烈不信任，许多人建议使用非智能电视配合外部流媒体设备。一些人建议 VLAN 隔离或防火墙黑名单，而另一些人指出问题仅限于第三方应用，而非 LG 内置应用。

**标签**: `#隐私安全`, `#智能电视`, `#住宅代理`, `#SDK风险`, `#网络安全`

---

<a id="item-16"></a>
^item-16
## [Linux 安全启动证书将于 2025 年过期](https://lwn.net/Articles/1029767/) ⭐️ 8.0/10

Linux 发行版用于签名引导加载程序的微软安全启动证书将于 2026 年过期，用户需手动更新证书以避免启动失败。 这影响数百万启用了安全启动的 Linux 机器；未更新可能导致系统无法启动，影响个人用户和企业部署。 证书过期并非单一事件；不同证书在不同时间过期，更新需要运行 `fwupdmgr` 或通过 MOK 注册新密钥等步骤。部分用户报告更新过程中出现 EFI 变量空间碎片化问题。

hackernews · weaksauce · 6月22日 18:24 · [社区讨论](https://news.ycombinator.com/item?id=48633941)

**背景**: 安全启动是一项 UEFI 功能，确保仅加载受信任的软件。Linux 发行版依赖微软签名的 shim 引导加载程序，该程序使用定期过期的证书链。当前证书于 2011 年签发，将于 2026 年过期。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://dev.to/isms-core-adm/the-certificate-nobody-checked-145c">The Certificate Nobody Checked - DEV Community</a></li>
<li><a href="https://blog.desdelinux.net/en/expiration-of-Microsoft-Secure-Boot-Linux-shim-certificate/">Microsoft Secure Boot certificate for Linux expires : What to do</a></li>
<li><a href="https://askubuntu.com/questions/1564968/how-to-update-secure-boot-certificates">24.04 - How to update Secure Boot certificates - Ask Ubuntu</a></li>

</ul>
</details>

**社区讨论**: 社区评论指出缺乏面向初学者的清晰更新指南，用户请求简单的检查和修复步骤。部分用户倾向于注册自己的密钥而非依赖微软证书，另一些用户则讨论涉及 shim 修改的变通方案。

**标签**: `#Linux`, `#安全启动`, `#证书过期`, `#系统运维`

---

<a id="item-17"></a>
^item-17
## [Claude Code 的扩展思考输出并非真实推理过程](https://patrickmccanna.net/the-text-in-claude-codes-extended-thinking-output-is-not-authentic/) ⭐️ 8.0/10

一项分析揭示，Claude Code 的“扩展思考”输出并非真实的推理过程，而是一个摘要，这引发了关于透明度和安全性的担忧。 这很重要，因为隐藏的推理链可能掩盖提示注入攻击和数据泄露，并使用户更难优化提示。这也突显了一个更广泛的行业趋势：主要 AI 公司隐藏内部推理以保护竞争优势。 文章指出，“扩展思考”输出是一个有损摘要，类似于将 JPEG 转换为 BMP 再转换回来，会丢失保真度。此外，在隐藏阶段交错进行推理和函数调用可能使攻击者能够在不被察觉的情况下窃取数据。

hackernews · 0o_MrPatrick_o0 · 6月22日 14:22 · [社区讨论](https://news.ycombinator.com/item?id=48630535)

**背景**: 扩展思考是 Claude Code 中的一个功能，允许模型使用更长的内部思维链来推理复杂问题。然而，展示给用户的输出是一个摘要，而非原始推理。提示注入攻击利用模型无法区分开发者指令和用户输入的弱点，可能导致意外行为。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://docs.anthropic.com/en/docs/build-with-claude/prompt-engineering/extended-thinking-tips">Extended thinking tips - Anthropic</a></li>
<li><a href="https://en.wikipedia.org/wiki/Prompt_injection_attack">Prompt injection attack</a></li>

</ul>
</details>

**社区讨论**: 评论者对隐藏推理表示强烈担忧，有些人因安全风险和提示优化困难而拒绝使用隐藏推理的模型。其他人指出，这是主要 AI 公司保护研发投入的常见做法，并且这个问题早已为人所知。

**标签**: `#AI透明度`, `#安全风险`, `#Claude Code`, `#推理链`, `#提示注入`

---

<a id="item-18"></a>
^item-18
## [xAI 发布 Grok Skills 并更新 Responses API 以增强工具调用](https://www.infoq.cn/article/hmME4JhKTJUYJy9DNEJ2?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

xAI 发布了 Grok Skills 功能，使 Grok 能够在对话中保留持久的自定义专业知识，并更新了 Grok 4.3 的 Responses API 以支持更强大的工具调用能力。 此次更新通过启用持久技能和高级工具集成，显著提升了 Grok 对开发者的实用性，可能加速 AI 驱动的工作流自动化和应用开发。 Grok Skills 允许用户生成文档、演示文稿和电子表格，并自动化工作流。更新的 Responses API 支持并行工具执行和复杂的多步骤工作流。

rss · InfoQ 中文 · 6月22日 16:49

**背景**: Grok 是 xAI 的对话式 AI 模型。工具调用使 AI 模型能够与外部 API 和服务交互，从而获取实时数据或执行操作。Responses API 是用于构建智能体应用的新接口。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://x.ai/news/grok-skills">Skills in web, iOS, and Android | xAI</a></li>
<li><a href="https://www.infoq.com/news/2026/05/xai-grok-skills/">xAI Releases Grok Skills and Updates Tool Calling Responses... - InfoQ</a></li>
<li><a href="https://openrouter.ai/docs/api/reference/responses/tool-calling">Responses API Beta Tool Calling | OpenRouter | Documentation</a></li>

</ul>
</details>

**标签**: `#xAI`, `#Grok`, `#API`, `#工具调用`, `#AI`

---

<a id="item-19"></a>
^item-19
## [Discord 自动化管理超大规模 ScyllaDB 集群](https://www.infoq.cn/article/hsg1FAk30lT5KVpIpDf1?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

Discord 通过自动化工具和流程重构了其 ScyllaDB 数据库运维，以管理超大规模集群。新方法减少了人工干预并提高了可靠性。 这展示了一个大型平台如何应对运行大规模 NoSQL 数据库（如 ScyllaDB）的运维挑战，为其他管理类似基础设施的公司提供了宝贵经验。它凸显了自动化在数据库管理中的日益重要性。 自动化涵盖了节点替换、集群扩展和故障恢复等任务。Discord 的方法可能利用了 ScyllaDB 的分片设计和 Seastar 框架来实现高性能。

rss · InfoQ 中文 · 6月22日 14:44

**背景**: ScyllaDB 是一个分布式 NoSQL 宽列数据库，与 Apache Cassandra 兼容，但用 C++ 重写以实现更高性能。它采用每核分片架构，在现代硬件上最大化吞吐量。Discord 使用 ScyllaDB 处理其庞大的消息和数据工作负载。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/ScyllaDB">ScyllaDB</a></li>
<li><a href="https://www.scylladb.com/">ScyllaDB For Real-Time AI</a></li>

</ul>
</details>

**标签**: `#数据库运维`, `#ScyllaDB`, `#自动化运维`, `#Discord`

---

<a id="item-20"></a>
^item-20
## [AI 赋能的 Feature Flag 全生命周期治理](https://www.infoq.cn/article/qAbbFlvzvDM2OZD9ulkE?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

快手资深架构师介绍了一种利用 AI 技术自动化 Feature Flag 全生命周期的方法，包括创建、评估和清理。 该方法减少了 DevOps 和 SRE 实践中的技术债务和运维开销，使团队能够更高效、更安全地管理 Feature Flag。 AI 系统分析 Flag 的使用模式，并自动建议或执行 Flag 的退役，减少生产环境中积累的过期 Flag。

rss · InfoQ 中文 · 6月22日 14:16

**背景**: Feature Flag 是一种配置开关，允许团队在不部署新代码的情况下启用或禁用功能。随着时间的推移，未使用的 Flag 会积累并成为技术债务。AI 可以通过监控 Flag 使用情况并自动清理来提供帮助。

**标签**: `#Feature Flag`, `#AI`, `#DevOps`, `#SRE`, `#快手`

---

<a id="item-21"></a>
^item-21
## [PP-OCRv6 登陆 Hugging Face：1.5M 到 34.5M 参数，支持 50 种语言](https://huggingface.co/blog/PaddlePaddle/pp-ocrv6) ⭐️ 7.0/10

百度飞桨团队在 Hugging Face 上发布了 PP-OCRv6，提供从 150 万到 3450 万参数的一系列 OCR 模型，支持 50 种语言的文字识别。 此次发布使最先进的多语言 OCR 技术更广泛地惠及社区，开发者可根据需求部署轻量级或高精度模型，对文档数字化、翻译和无障碍应用等领域尤其有价值。 PP-OCRv6 系列包含多种模型尺寸，最小 1.5M 参数适用于边缘设备，最大 34.5M 参数用于高精度场景。识别模块采用 LCNetV4 骨干网络、EncoderWithLightSVTR 颈部以及 CTC+NRTR 多头解码器，字典扩展了约 200 个变音符号字符，使单个模型可覆盖 50 种语言。

rss · Hugging Face Blog · 6月22日 13:18

**背景**: 光学字符识别（OCR）是从图像中提取文字的技术。PP-OCR 是百度飞桨团队开发的开源 OCR 系统，以速度和精度的实用平衡著称。前代版本 PP-OCRv5 确立了数据整理方法，而 PP-OCRv6 引入了根本性重新设计的架构，以提升多语言支持和效率。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.paddleocr.ai/main/en/version3.x/algorithm/PP-OCRv6/PP-OCRv6.html">PP - OCRv 6 Introduction - PaddleOCR Documentation</a></li>
<li><a href="https://arxiv.org/html/2606.13108">PP - OCRv 6 : From 1.5M to 34.5M Parameters, Surpassing Billion-Scale...</a></li>
<li><a href="https://huggingface.co/PaddlePaddle/PP-OCRv6_small_rec_safetensors/blob/main/README.md">README.md · PaddlePaddle/ PP - OCRv 6 _small_rec_safetensors at main</a></li>

</ul>
</details>

**标签**: `#OCR`, `#PP-OCRv6`, `#多语言`, `#开源AI`, `#Hugging Face`

---

<a id="item-22"></a>
^item-22
## [ShapedPlugin WordPress 专业版插件遭供应链攻击植入后门](https://thehackernews.com/2026/06/shapedplugin-wordpress-pro-plugins.html) ⭐️ 7.0/10

未知攻击者入侵了 ShapedPlugin 的构建和分发管道，在通过官方授权更新渠道分发的专业版插件版本中植入了后门代码。 此次供应链攻击影响超过 40 万个活跃的免费插件安装，并可能波及更多付费用户，对依赖 ShapedPlugin 插件的 WordPress 站点构成直接安全威胁。 后门代码由 Wordfence 威胁情报团队于 2026 年 6 月 11 日发现，被篡改的插件通过官方渠道分发，使用户难以察觉。

rss · The Hacker News · 6月22日 18:00

**背景**: 供应链攻击针对软件的开发和分发过程，使攻击者能够在软件到达用户之前篡改合法软件。WordPress 驱动着超过 29%的网站，因其庞大的用户基础和广泛的插件生态系统而成为常见攻击目标。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.wordfence.com/blog/2026/06/psa-supply-chain-compromise-targets-shapedplugin-backdoored-pro-plugins-distributed-via-official-channels/">PSA: Supply Chain Compromise Targets ShapedPlugin, Backdoored...</a></li>

</ul>
</details>

**标签**: `#供应链攻击`, `#WordPress`, `#后门`, `#安全漏洞`, `#插件安全`

---

<a id="item-23"></a>
^item-23
## [OXLOADER 加载器利用恶意谷歌广告传播 CastleStealer](https://thehackernews.com/2026/06/new-oxloader-loader-uses-malicious.html) ⭐️ 7.0/10

Elastic 安全实验室披露了一起新的恶意软件活动，利用恶意谷歌广告传播此前未报告的加载器 OXLOADER，最终投放 CastleStealer 信息窃取木马。 该活动凸显了恶意广告作为初始感染媒介日益增长的威胁，针对搜索 Node.js 等合法软件的用户，以及一种逃避检测的新型加载器投放凭证窃取恶意软件。 OXLOADER 伪装成合法工具 API Monitor，利用 Storj 托管的 BAT 文件、UAC 提示和内存加载来投放 CastleStealer，后者是 RedLine 窃密木马家族的一个变种。

rss · The Hacker News · 6月22日 13:20

**背景**: 恶意广告是网络犯罪分子在搜索引擎上投放恶意广告，诱骗用户下载恶意软件。加载器是初始阶段的恶意软件，用于下载和执行其他有效载荷，常能逃避安全软件检测。CastleStealer 是一种针对凭证和敏感数据的窃密木马。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://thehackernews.com/2026/06/new-oxloader-loader-uses-malicious.html">New OXLOADER Loader Uses Malicious Google Ads to Deliver...</a></li>
<li><a href="https://blog.gridinsoft.com/oxloader-castlestealer-fake-nodejs-ads/">OXLOADER Malware : Fake Node.js Ads and CastleStealer Risk</a></li>
<li><a href="https://www.elastic.co/security-labs/oxloader-malware-loader-infostealer">OXLOADER : new loader evading detection to... — Elastic Security Labs</a></li>

</ul>
</details>

**标签**: `#恶意软件`, `#威胁情报`, `#Google Ads`, `#窃密木马`, `#安全研究`

---

<a id="item-24"></a>
^item-24
## [遗留基础设施劫持 AI 代理](https://thehackernews.com/2026/06/stop-your-legacy-infrastructure-from.html) ⭐️ 7.0/10

Gartner 安全与风险管理峰会上的一次演讲揭示，攻击者正在利用遗留基础设施劫持 AI 代理，从而绕过针对 AI 的安全防护措施。 这揭示了 AI 安全中的一个关键盲点：71%正在试点 AI 代理的组织可能通过其现有的遗留系统（而非 AI 模型本身）遭受攻击。 攻击路径无需直接攻破 AI 模型；相反，攻击者瞄准 AI 代理所连接的遗留基础设施，例如数据库或 API。

rss · The Hacker News · 6月22日 11:58

**背景**: AI 代理劫持是指恶意行为者控制代表用户行动的 AI 系统。遗留基础设施指较旧的 IT 系统，通常安全性较低，且可能未被现代 AI 安全措施覆盖。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://thehackernews.com/2026/06/stop-your-legacy-infrastructure-from.html">Stop Your Legacy Infrastructure from Hijacking Your AI Agents</a></li>
<li><a href="https://medium.com/@brittneyaginther/whos-really-in-control-the-hidden-risk-of-ai-agent-hijacking-6c2d6f00cc57">Who’s Really in Control? The Hidden Risk of AI Agent Hijacking</a></li>
<li><a href="https://www.nist.gov/news-events/news/2025/01/technical-blog-strengthening-ai-agent-hijacking-evaluations">Technical Blog: Strengthening AI Agent Hijacking Evaluations | NIST</a></li>

</ul>
</details>

**标签**: `#AI安全`, `#遗留基础设施`, `#AI代理`, `#安全风险`

---

<a id="item-25"></a>
^item-25
## [每周安全回顾：浏览器漏洞、EDR 绕过工具、电视僵尸网络、OpenBSD 漏洞、安卓木马](https://thehackernews.com/2026/06/weekly-recap-browser-bugs-edr-killers.html) ⭐️ 7.0/10

The Hacker News 发布了一篇每周安全回顾，涵盖了浏览器漏洞、EDR 绕过工具、电视僵尸网络、OpenBSD 漏洞和安卓木马等多种安全威胁。 这篇回顾凸显了网络威胁的持续性和演变性，提醒安全从业者和系统管理员保持警惕，并针对常见攻击向量更新防御措施。 文章指出，许多威胁感觉重复，例如弱密码、恶意下载、权限过大的浏览器扩展和被入侵的 WordPress 网站，表明基本安全改进仍然不足。

rss · The Hacker News · 6月22日 10:55

**背景**: EDR（端点检测与响应）系统是监控端点恶意活动的安全工具。绕过 EDR 是攻击者避免检测的常见目标。像 BadBox 2.0 这样的僵尸网络已知会感染数百万台安卓电视设备，将其转化为恶意流量的代理。OpenBSD 是一个注重安全的操作系统，其漏洞受到安全社区的高度重视。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://news.google.com/stories/CAAqNggKIjBDQklTSGpvSmMzUnZjbmt0TXpZd1NoRUtEd2l6aTU3YURoRkVZcTNHVXZhcDJTZ0FQAQ?hl=en-US&gl=US&ceid=US:en">Google News - BadBox 2.0 botnet infects 10 million Android devices...</a></li>
<li><a href="https://vuldb.com/?vendor.openbsd">Openbsd Vulnerabilities</a></li>

</ul>
</details>

**标签**: `#安全周报`, `#漏洞`, `#EDR绕过`, `#僵尸网络`, `#安卓木马`

---

<a id="item-26"></a>
^item-26
## [国际刑警组织警告亚太地区钓鱼、勒索软件和 AI 诈骗激增](https://thehackernews.com/2026/06/interpol-warns-phishing-ransomware-and.html) ⭐️ 7.0/10

国际刑警组织发布的《2025/2026 年亚洲及南太平洋网络威胁评估报告》指出，该地区网络犯罪显著增加，其中钓鱼攻击、勒索软件和 AI 驱动的诈骗最为突出。 该报告凸显了在快速数字化的地区，网络威胁日益复杂，敦促政府和企业加强网络安全措施及公众意识。 报告将增长归因于快速数字化、互联网普及率提高、新技术应用、有组织犯罪网络以及各国网络安全成熟度不均。

rss · The Hacker News · 6月22日 06:06

**背景**: 钓鱼攻击是一种社会工程攻击，攻击者诱骗受害者泄露敏感信息。勒索软件会加密受害者数据并要求支付赎金以解密。AI 诈骗利用人工智能生成令人信服的虚假内容（如深度伪造）来欺骗目标。

**标签**: `#网络安全`, `#网络犯罪`, `#AI诈骗`, `#钓鱼攻击`, `#勒索软件`

---

<a id="item-27"></a>
^item-27
## [OSPM 2026 首日：Linux 调度与电源管理](https://lwn.net/Articles/1077759/) ⭐️ 7.0/10

在英国剑桥举行的 OSPM 2026 峰会上，讨论了 Linux 内核中的空闲状态选择、基于 sched_ext 的用户态调度器以及锁持有者抢占等议题。 这些讨论涉及影响所有 Linux 系统（从服务器到嵌入式设备）性能、延迟和能效的关键内核子系统（调度与电源管理）。 值得注意的议题包括 sched_ext 支持基于 Rust 的用户态调度器（如 scx_rustland），以及缓解虚拟化环境中锁持有者抢占（LHP）的技术。

rss · LWN Headlines · 6月22日 13:26

**背景**: OSPM（Linux 内核电源管理与调度峰会）是每年一次的内核开发者会议，专注于改进 Linux 的调度和电源管理。sched_ext 是一种内核机制，允许将调度策略实现为 eBPF 程序，从而支持用户态调度器的实验。锁持有者抢占是指持有自旋锁的线程被抢占，导致其他 CPU 空转等待，从而降低性能。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://deepwiki.com/sched-ext/scx/3.4-scx_rustland-user-space-policy-scheduler">scx_rustland - User - Space Policy Scheduler | sched - ext /scx | DeepWiki</a></li>
<li><a href="https://www.linuxquestions.org/questions/linux-virtualization-and-cloud-90/lock-holder-preemption-4175687915/">Lock Holder Preemption | Forum</a></li>

</ul>
</details>

**标签**: `#Linux内核`, `#调度`, `#电源管理`, `#sched_ext`, `#OSPM`

---

<a id="item-28"></a>
^item-28
## [网络安全市场是否已被 AI 产品过度饱和？](https://www.reddit.com/r/cybersecurity/comments/1ucdmoq/anyone_else_feels_like_the_cyber_security_space/) ⭐️ 7.0/10

一位 Reddit 用户引发讨论，质疑网络安全领域产品泛滥，许多产品只是贴上“AI”标签，而企业尽管使用数十种工具仍遭攻击。 这场辩论凸显了对安全产品有效性的日益怀疑，以及行业是否将营销置于实际保护之上，这可能影响采购决策和产品开发。 用户指出每几个月就会出现新的三字母类别，但运行 50 种工具的公司仍然遭到入侵，表明安全公司数量与实际威胁水平之间没有关联。

reddit · r/cybersecurity · /u/Square_Juggernaut298 · 6月22日 07:14

**背景**: 网络安全市场经历了爆炸性增长，许多供应商提供重叠的解决方案。“AI”一词常被用作差异化产品的流行词，但批评者认为缺乏真正的创新，攻击者仍在不断进化。

**社区讨论**: Reddit 帖子反映了普遍的挫败感，许多用户同意市场过度饱和，AI 往往只是营销噱头。一些人认为需要整合并关注基础，而另一些人则辩称，如果正确集成，新工具可以提供帮助。

**标签**: `#网络安全`, `#AI`, `#行业观察`, `#安全产品`

---

<a id="item-29"></a>
^item-29
## [美光计划投资 2000 亿美元扩产应对 AI 存储芯片短缺](https://t.me/zaihuapd/42101) ⭐️ 7.0/10

美光科技宣布了一项 2000 亿美元的投资计划，将在美国及全球新建晶圆厂，其中包括在爱达荷州投资 500 亿美元建设两座工厂，首座工厂预计 2027 年中投产，生产用于高带宽内存（HBM）的 DRAM 芯片。 这一巨额投资凸显了 AI 驱动的存储芯片严重短缺，随着 AI 工作负载激增，HBM 需求飙升；美光的 HBM3e 和 HBM4 产能已在 2026 年底前售罄，凸显了扩大生产的紧迫性。 受 AI 需求推动，DRAM 价格过去一年上涨超过 170%，美光毛利率已升至 56%。爱达荷州工厂将分两期建设，首座工厂将于 2027 年中投产。

telegram · zaihuapd · 6月22日 05:30

**背景**: 高带宽内存（HBM）是一种 3D 堆叠 DRAM 技术，为 AI 加速器和 GPU 提供高带宽。AI 热潮引发了全球 DRAM 芯片短缺，价格飙升超过 100%，SK 海力士也报告其 2026 年全部产能已售罄。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/High_Bandwidth_Memory">High Bandwidth Memory - Wikipedia</a></li>
<li><a href="https://fortune.com/2026/02/15/ai-demand-memory-chip-shortage-crisis-dram-hbm-micron-skhynix-samsung/">Rampant AI demand for memory is fueling a growing chip ... | Fortune</a></li>
<li><a href="https://www.linkedin.com/posts/asteris-ai_rampant-ai-demand-for-memory-is-fueling-a-activity-7431334168468500480-4TJ1">DRAM Chip Shortage Hits Global Industry Due to AI Demand | LinkedIn</a></li>

</ul>
</details>

**标签**: `#AI`, `#存储芯片`, `#HBM`, `#美光`, `#半导体`

---

<a id="item-30"></a>
^item-30
## [阿里巴巴发布 HappyHorse 1.1 视频生成模型](https://tech.ifeng.com/c/8uAHJ0kXXTD) ⭐️ 7.0/10

阿里巴巴发布了 HappyHorse 1.1，这是其视频生成模型的更新版本，在动态表现、主体一致性、指令遵循、视觉质量和音频同步方面有所提升。该模型现已上线 HappyHorse 官网、阿里云百炼和千问云。 作为中国头部科技公司，阿里巴巴对其视频生成模型的更新表明其在 AI 驱动内容创作领域的持续投入，可能影响 AI 视频工具的竞争格局。音频同步和主体一致性的改进解决了创作者的关键痛点，使该模型更适用于专业场景。 HappyHorse 1.1 保持与 1.0 相同的技术规格：单次生成时长 3 到 15 秒，支持 720p 和 1080p 分辨率以及自由宽高比。同日，阿里巴巴联合虎鲸文娱集团启动了“Horsepower”AI 影像大赛，优胜者将获得百万商单合作机会，评委包括导演张纪中。

telegram · zaihuapd · 6月22日 09:45

**背景**: HappyHorse 是阿里巴巴开发的视频生成模型，能够根据文本提示或首帧图片生成视频。该模型采用 150 亿参数的单 Transformer 架构，仅需 8 步推理即可生成同步的视频和音频。它可通过阿里巴巴的 AI 平台（包括百炼和千问云）使用，这些平台提供多种 AI 模型的访问。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://happyhorseapp.com/zh">Happy Horse 1.0 — 顶尖排名的 AI 视 频 模 型 | HappyHorse</a></li>
<li><a href="https://apixo.ai/zh/models/happyhorse">HappyHorse API — Happy Horse 视 频 生 成 与编辑 | APIXO</a></li>
<li><a href="https://www.creatok.ai/zh/happy-horse">HappyHorse Generator — AI 视 频 +音 频 生 成 | CreatOK | CreatOK</a></li>

</ul>
</details>

**标签**: `#视频生成`, `#阿里巴巴`, `#HappyHorse`, `#AI模型`

---

<a id="item-31"></a>
^item-31
## [前美团产品经理批评三大组织问题](https://t.me/zaihuapd/42110) ⭐️ 7.0/10

一位前美团到餐产品经理发文，详细阐述了三大组织问题：产品岗位沦为传话筒、数据资产未能有效利用、AI 项目被当作填坑工具而非变革性手段。 这份内部批评揭示了大型互联网公司的常见陷阱，为技术管理者和从业者在组织效率、数据驱动决策和 AI 战略方面提供了宝贵经验。 作者声称，产品经理被要求猜测上级意图而非独立判断，尽管拥有海量本地生活交易数据，业务决策仍依赖人肉和经验。AI 项目被包装成万能药，实际上只是用模型替代人肉填坑，没有重新定义问题。

telegram · zaihuapd · 6月22日 11:40

**背景**: 美团是中国最大的本地生活服务平台，以在百团大战中极致的执行力和成本控制而闻名。其到餐业务是核心垂直领域，处理着海量交易数据。该帖子反映了随着公司成熟，对创新停滞的日益担忧。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.tmtpost.com/1427250.html">美 团 早 餐 关闭，为何早 餐 O2O做不下去了？ -钛媒体官方网站</a></li>

</ul>
</details>

**标签**: `#组织管理`, `#数据资产`, `#AI应用`, `#互联网公司`, `#美团`

---

<a id="item-32"></a>
^item-32
## [优步利用实时信号与 Listwise 排序优化餐厅推荐](https://www.infoq.cn/article/yz1xWttyNqlIdBbF7GOR?utm_source=rss&utm_medium=article) ⭐️ 6.0/10

优步部署了一套新的推荐系统，该系统结合实时用户行为信号和 Listwise 排序算法，以优化餐厅推荐效果。 该方法通过提供更相关、更及时的餐厅推荐来提升用户体验，可能提高订单转化率和客户满意度。同时，它展示了先进排序技术在大规模生产环境中的实际应用。 该系统利用实时信号（如当前位置、一天中的时间和近期用户行为）动态调整排序。Listwise 算法一次性优化整个排序列表，而非逐对比较或独立评分。

rss · InfoQ 中文 · 6月22日 12:00

**背景**: 推荐系统通常使用 pointwise 或 pairwise 排序方法，这些方法可能无法有效捕捉项目的相对顺序。Listwise 排序将整个列表作为一个训练实例，直接优化 NDCG 等排序指标。实时信号使系统能够即时适应用户偏好和上下文的变化。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://blog.csdn.net/pearl8899/article/details/102920628">【推荐】 pairwise、pointwise 、 listwise ... -CSDN博客</a></li>
<li><a href="https://developer.volcengine.com/articles/7389181361661640745">推荐系统[四]：精 排 -详解 排 序 算 法 LTRpoitwise, pairwise, listwise ...</a></li>
<li><a href="https://blog.nowcoder.net/n/2245f4772e6348558ce830edda6e0c2d">千人千面，精准 实 时 推 荐 系 统 的核心原理_牛客博客</a></li>

</ul>
</details>

**标签**: `#推荐系统`, `#排序算法`, `#实时信号`, `#优步`

---

<a id="item-33"></a>
^item-33
## [复旦邱锡鹏教授将在 AICon 上海分享 MOSS 多模态模型](https://www.infoq.cn/article/Lp2yijsaRsNZNzlgCRCx?utm_source=rss&utm_medium=article) ⭐️ 6.0/10

复旦大学邱锡鹏教授确认出席 AICon 上海站，届时将分享 MOSS 多模态模型的创新与实践。 此次演讲提供了从 MOSS 主要开发者处了解前沿多模态模型的难得机会，可能影响中国开源多模态 AI 的发展方向。 AICon 上海站定于 2024 年 5 月 23-24 日举行，将有超过 60 位 AI 先锋出席。邱教授的演讲将聚焦 MOSS 系列开源大模型，结合学术研究与工程实践。

rss · InfoQ 中文 · 6月22日 10:00

**背景**: MOSS 是复旦大学开发的开源大语言模型，在 GitHub 上已获得超过 2300 颗星。多模态模型能够处理和整合多种类型的数据，如文本、图像和音频，从而实现更通用的 AI 应用。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://36kr.com/p/2227545469719431">复旦 MOSS 大 模 型 开源了，Github和Hugging Face同时上线-36氪</a></li>
<li><a href="https://www.infoq.cn/article/ruTj57meeSg8SMsXKdcQ">AICon ... - InfoQ</a></li>
<li><a href="https://blog.csdn.net/Protonbase/article/details/148116298">ProtonBase 与您相约 AICon 上 海 站 ！ -CSDN博客</a></li>

</ul>
</details>

**标签**: `#多模态模型`, `#MOSS`, `#AICon`, `#复旦大学`

---

<a id="item-34"></a>
^item-34
## [Java 新闻汇总：WildFly、Micronaut、Spring AI 等](https://www.infoq.cn/article/uxOetuGQdWIU0dzEG89v?utm_source=rss&utm_medium=article) ⭐️ 5.0/10

本文汇总了多个 Java 生态项目的最新动态，包括 WildFly、Micronaut、Spring AI、Apache Fory、GlassFish 插件和 Open Liberty。 这些更新反映了 Java 应用服务器、微服务框架和 AI 集成方面的持续改进，对于构建企业级应用的 Java 开发者至关重要。 文章涵盖多个项目：WildFly 是一个 Jakarta EE 应用服务器，Micronaut 是一个轻量级微服务框架，Spring AI 为 Spring 应用提供 AI 抽象。

rss · InfoQ 中文 · 6月22日 18:00

**背景**: WildFly（原名 JBoss AS）是一个流行的开源 Java EE/Jakarta EE 应用服务器。Micronaut 是一个基于 JVM 的现代框架，专为微服务设计，具有快速启动和低内存占用特点。Spring AI 是 Spring 团队的新项目，旨在简化 Spring 应用中的 AI 集成。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.wildfly.org/">WildFly</a></li>
<li><a href="https://micronaut.io/">Home - Micronaut Framework</a></li>
<li><a href="https://spring.io/projects/spring-ai/">Spring AI</a></li>

</ul>
</details>

**标签**: `#Java`, `#Spring AI`, `#WildFly`, `#Micronaut`, `#Open Liberty`

---

