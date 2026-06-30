# Horizon 每日速递 - 2026-07-01

> 从 98 条内容中筛选出 34 条重要资讯。

---

1. [[#^item-1|华为开源盘古 2.0，剑指全球第一]] ⭐️ 9.0/10
2. [[#^item-2|LoadMaster 严重漏洞允许未认证执行 root 命令]] ⭐️ 9.0/10
3. [[#^item-3|AI 接入企业后 API 安全成为新盲区]] ⭐️ 8.0/10
4. [[#^item-4|AI Agent 高 Token 消耗暴露能源博弈]] ⭐️ 8.0/10
5. [[#^item-5|OpenAI 发布 Genebench-Pro 案例研究]] ⭐️ 8.0/10
6. [[#^item-6|Google Research 发布 TabFM：表格数据的零样本基础模型]] ⭐️ 8.0/10
7. [[#^item-7|ScarfBench：评估 AI Agent 的 Java 框架迁移基准]] ⭐️ 8.0/10
8. [[#^item-8|Claude Sonnet 5 发布，性能接近 Opus]] ⭐️ 8.0/10
9. [[#^item-9|微软警告：被投毒的 MCP 工具描述可导致数据泄露]] ⭐️ 8.0/10
10. [[#^item-10|RustDuck 僵尸网络用 Rust 重构，劫持路由器发动 DDoS 攻击]] ⭐️ 8.0/10
11. [[#^item-11|Langflow RCE 漏洞被利用部署门罗币挖矿程序]] ⭐️ 8.0/10
12. [[#^item-12|GuardFall 绕过技术暴露 AI 编码代理的 Shell 注入风险]] ⭐️ 8.0/10
13. [[#^item-13|282 款 iOS AI 应用泄露 API 密钥]] ⭐️ 8.0/10
14. [[#^item-14|SimpleHelp 漏洞 CVE-2026-48558 被利用，部署 TaskWeaver 和 Djinn Stealer]] ⭐️ 8.0/10
15. [[#^item-15|AirDrop 和 Quick Share 漏洞可导致远程崩溃]] ⭐️ 8.0/10
16. [[#^item-16|BioShocking 攻击诱骗 AI 浏览器泄露凭证]] ⭐️ 8.0/10
17. [[#^item-17|Oracle EBS 漏洞 CVE-2026-46817 遭在野利用]] ⭐️ 8.0/10
18. [[#^item-18|英伟达发布 Qwen3.6-27B-NVFP4 量化模型]] ⭐️ 8.0/10
19. [[#^item-19|Qwen 3.6 27B 在 RTX 3090 上通过投机解码达到约 100 TPS]] ⭐️ 8.0/10
20. [[#^item-20|微软从 Hugging Face 和 GitHub 移除 FastContext 模型]] ⭐️ 8.0/10
21. [[#^item-21|Qwen3.6-35B-A3B 的规范保持消融术实现零拒绝率]] ⭐️ 8.0/10
22. [[#^item-22|TurboOCR v3：RTX 5090 上每秒 520 张图片，采用 PP-OCRv6]] ⭐️ 8.0/10
23. [[#^item-23|8 人初创公司自研大模型年入上亿美元]] ⭐️ 7.0/10
24. [[#^item-24|物理 AI：从受控实验室走向真实世界]] ⭐️ 7.0/10
25. [[#^item-25|语音编程时代来临：Cursor 与 OpenClaw 实现动嘴编程]] ⭐️ 7.0/10
26. [[#^item-26|Anthropic 负责人：HTML 比 Markdown 更适合智能体协作]] ⭐️ 7.0/10
27. [[#^item-27|Google OpenRL：用于 LLM 后训练的实验性自托管 API]] ⭐️ 7.0/10
28. [[#^item-28|中国团队用 3000 元将 ChatGPT 秘密用于机器人训练]] ⭐️ 7.0/10
29. [[#^item-29|火山引擎提出 Agentic VCloud 演进]] ⭐️ 7.0/10
30. [[#^item-30|Atlassian 揭秘 Forge 大规模计费架构]] ⭐️ 7.0/10
31. [[#^item-31|AI 从代码审查向上游延伸至 PRD 治理]] ⭐️ 7.0/10
32. [[#^item-32|网易有道 CEO：Harness 即产品]] ⭐️ 6.0/10
33. [[#^item-33|联想基于 Arm 的车计算推动 L4 自动驾驶出租车落地]] ⭐️ 6.0/10
34. [[#^item-34|AWS Cognito 增加多区域故障切换]] ⭐️ 6.0/10

---

<a id="item-1"></a>
^item-1
## [华为开源盘古 2.0，剑指全球第一](https://t.me/zaihuapd/42259) ⭐️ 9.0/10

在 2026 年华为开发者大会上，华为宣布开源盘古 openPangu 2.0 模型，包含 505B 参数的 Pro 版和 92B 参数的 Flash 版，均支持 512K 上下文。公司计划从 6 月 30 日起陆续开源 7 大组件。 此举使华为成为开源大语言模型领域的重要参与者，挑战 Meta 的 Llama 等现有领导者。通过开源针对其昇腾 AI 芯片和鸿蒙系统优化的模型，华为旨在构建一个可能减少中国对英伟达 GPU 依赖的生态系统。 Pro 版总参数量 505B，激活参数量 18B；Flash 版总参数量 92B，激活参数量 6B，采用混合专家架构。模型更亲和昇腾算力，单卡吞吐率可达其他业界主流开源模型的 2 倍。

telegram · zaihuapd · 6月30日 06:01

**背景**: 大语言模型（如 GPT-4、Llama）已成为 AI 应用的核心。上下文窗口长度决定了模型一次能处理的文本量；512K tokens 被视为长上下文，可分析整份文档或代码库。华为的昇腾芯片是英伟达 GPU 的国产替代方案，开源针对其优化的模型可加速中国 AI 应用落地。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.ithome.com/0/963/480.htm">华为发布开源盘古 2.0 模型：最高 505B 参数，余承东坦言自己留的算力很有限 - IT之家</a></li>
<li><a href="https://e.huawei.com/cn/products/computing/ascend">昇腾计算-华为Ascend-AI计算-华为企业业务</a></li>
<li><a href="https://zhuanlan.zhihu.com/p/1993792709828288631">长上下文（Long-Context LLM）相关技术 - 知乎</a></li>

</ul>
</details>

**社区讨论**: Reddit 讨论强调了模型的混合专家架构和计划开源组件，用户指出华为此举对中国 AI 生态的重要性。一些人对与领先模型相比的实际性能表示怀疑，而另一些人则认为这是开源 AI 的积极一步。

**标签**: `#华为`, `#盘古大模型`, `#开源`, `#昇腾`, `#AI大模型`

---

<a id="item-2"></a>
^item-2
## [LoadMaster 严重漏洞允许未认证执行 root 命令](https://thehackernews.com/2026/06/progress-kemp-loadmaster-flaw-could-let.html) ⭐️ 9.0/10

该漏洞极其危险，因为无需认证即可获得 root 权限，攻击者可能完全控制受影响的 LoadMaster 设备。启用 API 的 LoadMaster 用户应立即安装补丁，防止远程接管。 漏洞位于 LoadMaster API 中，通过发送特制请求即可触发。Progress 已发布安全公告，建议更新至最新版本。未提及临时缓解措施，因此打补丁至关重要。

rss · The Hacker News · 6月30日 07:38

**背景**: Progress Kemp LoadMaster 是一款负载均衡和应用交付控制器，用于在服务器间分配流量。API 是可选功能，允许编程管理。CVE-2026-8037 是一个未认证命令注入漏洞，攻击者无需任何凭证即可利用。

**标签**: `#漏洞预警`, `#CVE-2026-8037`, `#LoadMaster`, `#远程代码执行`, `#安全更新`

---

<a id="item-3"></a>
^item-3
## [AI 接入企业后 API 安全成为新盲区](https://www.infoq.cn/article/QODhrm0I3LSV0uGhFdWt?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

InfoQ 上的一篇文章指出，随着企业集成 AI 系统，API 安全已成为一个关键但常被忽视的盲区，需要新的防护策略。 这很重要，因为 AI 集成通过 API 扩大了攻击面，未能保护它们可能导致数据泄露或系统受损，影响各行各业的 IT 和安全从业者。 文章讨论了 API 滥用、数据泄露和未授权访问等威胁，并建议采用零信任原则和持续监控来降低风险。

rss · InfoQ 中文 · 6月30日 14:15

**背景**: API（应用程序编程接口）是允许不同软件系统通信的连接器。随着公司将 AI 模型集成到运营中，API 成为数据交换的主要接口，使其成为攻击者的诱人目标。传统安全措施往往无法覆盖 API 特有的漏洞。

**标签**: `#API安全`, `#AI安全`, `#企业安全`, `#零信任`

---

<a id="item-4"></a>
^item-4
## [AI Agent 高 Token 消耗暴露能源博弈](https://www.infoq.cn/article/5sAu5pdOatCpxaIU4vOw?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

一项分析揭示，AI Agent 大量消耗 Token 的现象背后，不仅是模型之争，本质上是能源与电力基础设施的博弈。 这一洞察将焦点从算法效率转向能源供应的物理限制，这将决定 AI 系统的可扩展性和成本。 文章指出，随着 AI Agent 变得更加复杂，其 Token 消耗呈指数级增长，从而推高了对算力和电力的需求。

rss · InfoQ 中文 · 6月30日 11:02

**背景**: AI Agent 是自主执行任务的软件程序，通常使用大型语言模型（LLM）处理 Token（文本单元）。每个 Token 都需要计算资源和能源。AI 模型之间的竞争越来越受到电力可用性和成本的制约，使得能源基础设施成为关键战略因素。

**标签**: `#AI Agent`, `#Token消耗`, `#能源博弈`, `#AI基础设施`, `#行业分析`

---

<a id="item-5"></a>
^item-5
## [OpenAI 发布 Genebench-Pro 案例研究](https://openai.com/index/genebench-pro/case-studies) ⭐️ 8.0/10

OpenAI 发布了 Genebench-Pro 的案例研究，这是一个用于评估 AI 模型在基因相关任务上表现的基准测试，展示了 AI 应用于基因组学的最新进展。 该基准测试为衡量 AI 在基因组学中的表现提供了标准化方法，是加速药物发现和个性化医疗的关键一步。 Genebench-Pro 可能包括基因扰动效应预测和替代多聚腺苷酸化识别等任务，建立在 Genome in a Bottle 联盟等先前工作的基础上。

rss · OpenAI News · 6月30日 00:00

**背景**: 像 Genebench-Pro 这样的基因组基准测试帮助研究人员在具有生物学意义的任务上比较 AI 模型。最近的研究（例如《自然·方法》上的一篇）表明，用于基因扰动预测的深度学习模型尚未超越简单基线，凸显了严格基准测试的必要性。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.nature.com/articles/s41592-025-02772-6">Deep-learning-based gene perturbation effect prediction does not yet outperform simple linear baselines | Nature Methods</a></li>
<li><a href="https://www.nist.gov/programs-projects/genome-bottle">Genome in a Bottle | NIST - National Institute of Standards and Technology</a></li>

</ul>
</details>

**标签**: `#AI`, `#基因基准测试`, `#OpenAI`, `#前沿技术`

---

<a id="item-6"></a>
^item-6
## [Google Research 发布 TabFM：表格数据的零样本基础模型](https://research.google/blog/introducing-tabfm-a-zero-shot-foundation-model-for-tabular-data/) ⭐️ 8.0/10

Google Research 推出了 TabFM，这是首个针对表格数据的零样本基础模型，无需微调即可处理多种表格任务。 TabFM 代表了表格数据 AI 领域的重大突破，可能减少对特定任务模型训练的需求，并在数据管理和分析中实现更广泛的应用。 TabFM 利用 Transformer 架构，在大量表格数据语料上进行预训练，从而实现对不同表格模式和任务的零样本泛化。

rss · Google Research Blog · 6月30日 10:26

**背景**: 传统的表格数据机器学习模型通常需要针对特定任务进行微调或特征工程。像 GPT-4 这样的基础模型在文本和图像领域表现出色，但表格数据此前一直缺乏类似的通用模型。

**标签**: `#基础模型`, `#表格数据`, `#零样本学习`, `#Google Research`

---

<a id="item-7"></a>
^item-7
## [ScarfBench：评估 AI Agent 的 Java 框架迁移基准](https://huggingface.co/blog/ibm-research/scarfbench) ⭐️ 8.0/10

IBM Research 发布了 ScarfBench，这是一个专门用于评估 AI Agent 在企业 Java 框架迁移任务中表现的基准测试。 该基准测试针对企业软件现代化中的关键痛点，为衡量 AI Agent 在自动化复杂迁移任务中的能力提供了标准化方法。 ScarfBench 专注于 Java 框架之间的迁移（例如从遗留框架迁移到现代框架），并包含多种场景以测试 Agent 的规划、代码转换和错误处理能力。

rss · Hugging Face Blog · 6月30日 18:32

**背景**: 企业级 Java 应用通常依赖 Struts、Spring 或 Jakarta EE 等框架。框架之间的迁移工作劳动密集且容易出错，因此成为 AI 自动化的理想目标。ScarfBench 提供了一个受控环境，用于评估 AI Agent 执行此类迁移的能力。

**标签**: `#AI Agent`, `#Java`, `#框架迁移`, `#基准测试`, `#企业级`

---

<a id="item-8"></a>
^item-8
## [Claude Sonnet 5 发布，性能接近 Opus](https://simonwillison.net/2026/Jun/30/claude-sonnet-5/#atom-everything) ⭐️ 8.0/10

Anthropic 发布了 Claude Sonnet 5，该模型性能接近 Opus 4.8 但价格更低。系统卡显示其网络能力显著低于 Mythos 5，因此未受美国政府限制。 此次更新为开发者提供了比旗舰 Opus 模型更具成本效益的替代方案，可能加速 Claude 在生产环境中的采用。新分词器使英文文本的有效价格增加约 30%，可能影响预算规划。 Sonnet 5 拥有 100 万 token 的上下文窗口和 12.8 万 token 的最大输出，不再支持 temperature、top_p 和 top_k 采样参数。自适应思考默认开启，定价与 Sonnet 4.6 相同，每百万 token 输入 3 美元、输出 15 美元，8 月 31 日前有折扣。

rss · Simon Willison · 6月30日 21:23

**背景**: Claude 是 Anthropic 开发的一系列大语言模型，通常按能力分为 Haiku、Sonnet 和 Opus 三个版本。Mythos 是另一个更强大的模型，专注于网络安全，因安全担忧未公开发布。美国政府此前曾以国家安全为由限制某些 AI 模型。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Claude_Sonnet">Claude Sonnet</a></li>
<li><a href="https://en.wikipedia.org/wiki/Mythos_5">Mythos 5</a></li>

</ul>
</details>

**社区讨论**: Hacker News 上的讨论可能聚焦于分词器变化和价格影响，部分用户对移除采样参数提出质疑。整体情绪复杂，在性能提升和实际成本增加之间权衡。

**标签**: `#Claude`, `#大模型`, `#AI`, `#Anthropic`

---

<a id="item-9"></a>
^item-9
## [微软警告：被投毒的 MCP 工具描述可导致数据泄露](https://thehackernews.com/2026/06/microsoft-warns-poisoned-mcp-tool.html) ⭐️ 8.0/10

微软研究发现，攻击者可通过篡改 MCP 工具描述，在不触发任何安全规则的情况下，诱导 AI 代理泄露企业敏感数据。 这种攻击方式绕过了传统安全监控，因为每次工具调用看起来都合法，对部署了具有工具访问权限的 AI 代理的企业构成重大威胁。 被投毒的描述对用户不可见，但对 AI 模型可见，从而通过间接提示注入，在常规批准的调用中泄露数据。

rss · The Hacker News · 6月30日 17:46

**背景**: MCP（模型上下文协议）是一种允许 AI 代理与外部工具交互的协议。工具描述为模型提供如何使用每个工具的指令。攻击者可以在这些描述中嵌入恶意指令，导致代理执行意外操作，例如将数据发送到外部服务器。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://mcpmanager.ai/blog/tool-poisoning/">MCP Tool Poisoning: How It Works and How To Prevent It</a></li>
<li><a href="https://invariantlabs.ai/blog/mcp-security-notification-tool-poisoning-attacks">MCP Security Notification: Tool Poisoning Attacks - Invariant Labs</a></li>

</ul>
</details>

**标签**: `#AI安全`, `#MCP`, `#数据泄露`, `#AI Agent`, `#微软`

---

<a id="item-10"></a>
^item-10
## [RustDuck 僵尸网络用 Rust 重构，劫持路由器发动 DDoS 攻击](https://thehackernews.com/2026/06/rustduck-botnet-rebuilds-in-rust-to.html) ⭐️ 8.0/10

奇安信 XLab 自 2026 年 2 月起追踪到一个名为 RustDuck 的新型两阶段恶意软件家族，该恶意软件劫持家用路由器、IP 摄像头、安卓盒子及防护薄弱的服务器，构建 DDoS 僵尸网络。该僵尸网络的核心已用 Rust 编程语言重写，标志着其演化方向的转变。 RustDuck 使用 Rust 语言使其恶意软件更具可移植性、更难检测且更难被逆向工程，对互联网基础设施构成日益严重的威胁。其快速演化及针对多种 IoT 设备的特点，可能导致大规模 DDoS 攻击，影响网站和在线服务。 RustDuck 是一种两阶段恶意软件，利用弱 Telnet/SSH 凭据、暴露的 Android Debug Bridge (ADB) 以及旧漏洞获取初始访问权限。该僵尸网络目前规模不大，但研究人员强调其快速演化而非当前规模。

rss · The Hacker News · 6月30日 17:45

**背景**: 僵尸网络是由攻击者控制的受感染设备组成的网络，用于发起协调攻击，例如 DDoS（分布式拒绝服务），通过大量流量淹没目标。两阶段恶意软件使用一个小的初始载荷下载并执行更大的恶意组件，以逃避检测。Rust 是一种现代系统编程语言，以内存安全和性能著称，越来越多地被恶意软件使用以规避检测并提高跨平台兼容性。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://thehackernews.com/2026/06/rustduck-botnet-rebuilds-in-rust-to.html">RustDuck Botnet Rebuilds in Rust to Hijack Routers and Servers for DDoS</a></li>
<li><a href="https://en.wikipedia.org/wiki/Rustock_botnet">Rustock botnet</a></li>
<li><a href="https://blog.xlab.qianxin.com/about/">About XLab</a></li>

</ul>
</details>

**标签**: `#RustDuck`, `#僵尸网络`, `#DDoS`, `#路由器安全`, `#恶意软件`

---

<a id="item-11"></a>
^item-11
## [Langflow RCE 漏洞被利用部署门罗币挖矿程序](https://thehackernews.com/2026/06/langflow-rce-exploited-to-deploy-monero.html) ⭐️ 8.0/10

攻击者正在积极利用 Langflow 中的未认证远程代码执行漏洞 CVE-2026-33017（CVSS 9.3），在暴露的 AI 应用端点上部署门罗币加密货币挖矿程序。 这标志着 AI 工具漏洞被实际武器化以牟取经济利益，凸显了保护 AI 基础设施免受自动化攻击的紧迫性。 该漏洞允许未认证的远程代码执行，且已在野外观察到利用行为，载荷为门罗币挖矿程序。Langflow 是一个开源低代码工具，用于可视化构建 LLM 链和智能体。

rss · The Hacker News · 6月30日 15:47

**背景**: Langflow 是一个开源低代码平台，允许开发者可视化构建由大语言模型（LLM）驱动的应用。CVE-2026-33017 是一个严重的未认证 RCE 漏洞，CVSS 评分为 9.3，意味着无需认证即可利用，并可能导致系统完全受损。门罗币是一种注重隐私的加密货币，因其不可追踪的特性常被攻击者用于挖矿。

**标签**: `#Langflow`, `#RCE`, `#挖矿`, `#AI安全`, `#漏洞利用`

---

<a id="item-12"></a>
^item-12
## [GuardFall 绕过技术暴露 AI 编码代理的 Shell 注入风险](https://thehackernews.com/2026/06/guardfall-exposes-open-source-ai-coding.html) ⭐️ 8.0/10

Adversa AI 发现了一种名为 GuardFall 的绕过技术，利用数十年历史的 Shell 注入技巧，成功绕过了 11 个流行开源 AI 编码代理中 10 个的安全检查。 这项研究揭示了 AI 编码代理安全机制中的严重缺陷，攻击者可能借此执行任意命令，对依赖这些工具的开发者和组织构成重大安全风险。 只有名为'Continue'的代理能够抵御 GuardFall 绕过。该技术利用了已公开数十年的经典 Shell 注入模式，凸显了现代 AI 系统仍然容易受到旧有攻击向量的影响。

rss · The Hacker News · 6月30日 14:26

**背景**: AI 编码代理是使用大语言模型根据用户提示生成并执行代码的工具。它们通常包含安全检查以防止运行危险命令，但如果设计不当，这些检查可能被绕过。Shell 注入是一种众所周知的攻击方式，攻击者将恶意命令插入 Shell 解释器，数十年来一直是软件中的常见漏洞。

**标签**: `#AI安全`, `#Shell注入`, `#AI编码代理`, `#漏洞分析`, `#开源安全`

---

<a id="item-13"></a>
^item-13
## [282 款 iOS AI 应用泄露 API 密钥](https://thehackernews.com/2026/06/282-ios-apps-found-leaking-llm-api-keys.html) ⭐️ 8.0/10

一项对 444 款 iOS AI 聊天应用的研究发现，其中 282 款应用通过网络流量以明文 API 密钥、可重用令牌或无需认证的后端服务器泄露了付费 AI 访问权限。 此漏洞使攻击者能够滥用开发者的付费 AI 服务，导致经济损失和潜在的数据泄露，影响开发者和最终用户。 泄露的凭证包括明文 API 密钥和可重用令牌，部分应用甚至无需任何认证即可接受请求，使得利用变得轻而易举。

rss · The Hacker News · 6月30日 13:49

**背景**: API 密钥用于向 OpenAI 等 AI 服务验证请求，一旦泄露，任何人都可以代表应用开发者发起请求。iOS 应用通常与后端服务器通信，不安全的实现可能导致这些密钥在网络流量中泄露。

**标签**: `#API密钥泄露`, `#iOS安全`, `#AI应用`, `#网络安全`, `#漏洞研究`

---

<a id="item-14"></a>
^item-14
## [SimpleHelp 漏洞 CVE-2026-48558 被利用，部署 TaskWeaver 和 Djinn Stealer](https://thehackernews.com/2026/06/attackers-exploit-simplehelp-cve-2026.html) ⭐️ 8.0/10

未知攻击者正在利用 SimpleHelp 中的严重认证绕过漏洞 CVE-2026-48558（CVSS 评分 10.0）来投放两种新型恶意软件家族：TaskWeaver 和 Djinn Stealer。 这很重要，因为 CVE-2026-48558 是一个最高严重级别的漏洞，允许未经身份验证的攻击者绕过认证，并且其与新型恶意软件的结合利用对使用 SimpleHelp 的组织构成严重威胁。 该漏洞影响 SimpleHelp 的 OpenID Connect（OIDC）流程，可实现未经身份验证的远程代码执行。TaskWeaver 和 Djinn Stealer 是此前未报告的恶意软件家族，其中 TaskWeaver 可能充当加载器，而 Djinn Stealer 专注于数据窃取。

rss · The Hacker News · 6月30日 11:18

**背景**: SimpleHelp 是一种广泛用于 IT 团队的远程支持和访问软件。CVE-2026-48558 是 OIDC 实现中的认证绕过漏洞，允许未经身份验证的攻击者冒充任何用户并获得完全访问权限。该漏洞最近被披露，CVSS 评分为 10.0，表明其严重性为最高级别。

**标签**: `#漏洞利用`, `#CVE-2026-48558`, `#恶意软件`, `#SimpleHelp`, `#安全威胁`

---

<a id="item-15"></a>
^item-15
## [AirDrop 和 Quick Share 漏洞可导致远程崩溃](https://thehackernews.com/2026/06/airdrop-and-quick-share-flaws-let.html) ⭐️ 8.0/10

研究人员在苹果 AirDrop 和谷歌 Quick Share 中发现了六个安全漏洞，附近攻击者仅凭一台笔记本电脑即可在无需用户交互的情况下使 Mac 或 iPhone 上的共享服务崩溃。 这些漏洞对用户隐私和设备安全构成直接威胁，因为它们可以在无线范围内远程利用而无需预先连接，影响全球数十亿苹果和安卓设备。 攻击无需受害者点击或确认，攻击者只需在无线范围内携带一台笔记本电脑即可。这些漏洞还允许绕过 Quick Share 的安全检查。

rss · The Hacker News · 6月30日 09:27

**背景**: AirDrop 和 Quick Share 是基于邻近性的文件传输服务，利用蓝牙和 Wi-Fi 在附近设备之间发现和传输文件。它们的设计注重便利性，允许用户无需线缆或网络配置即可共享文件。然而，它们对无线发现协议的依赖引入了攻击面，可能被范围内的恶意行为者利用。

**标签**: `#安全漏洞`, `#AirDrop`, `#Quick Share`, `#无线攻击`, `#漏洞预警`

---

<a id="item-16"></a>
^item-16
## [BioShocking 攻击诱骗 AI 浏览器泄露凭证](https://thehackernews.com/2026/06/new-bioshocking-attack-tricks-ai.html) ⭐️ 8.0/10

安全公司 LayerX 发现一种名为 BioShocking 的新型攻击技术，通过让 AI 浏览器误以为自己在玩游戏，诱使其复制并发送用户登录凭证给攻击者。 该攻击针对 ChatGPT Atlas、Perplexity Comet 和 Claude 等广泛使用的 AI 浏览器，揭示了 AI 助手中的关键安全漏洞，可能导致大规模凭证窃取。 BioShocking 技术成功诱骗了六种不同的 AI 浏览器和助手泄露凭证。该攻击利用了 AI 理解用户意图的能力，操纵其将凭证输入视为游戏的一部分。

rss · The Hacker News · 6月30日 08:37

**背景**: AI 浏览器是使用大语言模型帮助用户完成网页任务（如填写表单或总结页面）的扩展或工具。它们通常可以访问敏感用户数据（包括凭证），以代表用户执行操作。BioShocking 攻击利用了 AI 在游戏式交互和真实操作之间缺乏强健安全边界的特点。

**标签**: `#AI安全`, `#凭证泄露`, `#BioShocking`, `#AI浏览器`, `#攻击技术`

---

<a id="item-17"></a>
^item-17
## [Oracle EBS 漏洞 CVE-2026-46817 遭在野利用](https://thehackernews.com/2026/06/oracle-e-business-suite-flaw-cve-2026.html) ⭐️ 8.0/10

据 Defused Cyber 报告，Oracle E-Business Suite 中的一个严重漏洞 CVE-2026-46817（CVSS 9.8）正在被在野积极利用。 该漏洞允许攻击者在无需认证的情况下接管易受攻击的 Oracle EBS 实例，对企业运营和数据安全构成严重威胁。 该漏洞是 Oracle Payments 组件中的权限管理与认证缺陷，CVSS 评分为 9.8，属于严重级别。

rss · The Hacker News · 6月30日 05:04

**背景**: Oracle E-Business Suite (EBS) 是一套全面的企业资源规划 (ERP) 软件套件，被全球大型组织广泛使用。Oracle Payments 组件负责处理金融交易和支付处理。CVE-2026-46817 是一个易于利用的远程漏洞，无需用户交互。

**标签**: `#Oracle`, `#CVE-2026-46817`, `#漏洞预警`, `#在野利用`, `#企业安全`

---

<a id="item-18"></a>
^item-18
## [英伟达发布 Qwen3.6-27B-NVFP4 量化模型](https://www.reddit.com/r/LocalLLaMA/comments/1ujlltn/nvidiaqwen3627bnvfp4_just_dropped/) ⭐️ 8.0/10

英伟达在 Hugging Face 上发布了 Qwen3.6-27B-NVFP4 模型，这是基于 Qwen3.6 的 270 亿参数量化版本，采用 NVFP4 格式以实现高效推理。 该模型将高质量的 270 亿参数级性能带到本地部署和边缘计算，大幅降低内存和计算需求，同时保持准确性。 NVFP4 是英伟达开发的 4 位浮点量化格式，针对其 GPU 进行了优化。该模型在 Hugging Face 上以宽松许可证提供。

reddit · r/LocalLLaMA · /u/vanbukin · 6月30日 10:39

**背景**: 模型量化将权重精度降低到更低位宽（如 4 位），以缩小模型大小并加速推理。Qwen3.6 是阿里巴巴 Qwen 团队的大语言模型，英伟达的 NVFP4 格式旨在英伟达硬件上平衡效率与准确性。

**标签**: `#大模型`, `#模型量化`, `#英伟达`, `#开源AI`, `#本地部署`

---

<a id="item-19"></a>
^item-19
## [Qwen 3.6 27B 在 RTX 3090 上通过投机解码达到约 100 TPS](https://www.reddit.com/r/LocalLLaMA/comments/1ujo46r/qwen_36_27b_speculative_decoding_bench_pushing/) ⭐️ 8.0/10

一位 Reddit 用户在单张 RTX 3090 上对 Qwen 3.6 27B 模型进行了投机解码基准测试，在五种不同的推理引擎上实现了最高 96.8 解码令牌/秒（TPS）的代码生成速度和 63.9 TPS 的叙事文本速度。 这表明在消费级硬件上实现高吞吐量的本地大模型推理是可行的，从而无需依赖云端即可支持编码助手和互动故事等实时应用。 该基准测试比较了五个引擎（ik_llama、mainline llama.cpp、Spiritbuun、beellama、LUCEBOX）和两种量化级别（IQ4_KS 和 Q4_K_M），测量了解码 TPS、首令牌时间（TTFT）、显存使用量以及从 72k 到 128k 令牌的上下文退化情况。

reddit · r/LocalLLaMA · /u/old-mike · 6月30日 12:40

**背景**: 投机解码通过使用一个小型草稿模型预测多个令牌，然后由大模型并行验证，从而加速大模型推理。该技术对于 GPU 显存有限的本地部署尤其有价值。Qwen 3.6 27B 是一个 270 亿参数的语言模型，针对效率进行了优化。

**社区讨论**: Reddit 社区（r/LocalLLaMA）积极讨论了这些结果，许多人称赞详细的基准测试，并分享了自己在“3090 俱乐部”中的配置。一些用户注意到原始速度与上下文一致性之间的权衡，因为主线 llama.cpp 显示零退化但峰值 TPS 较低。

**标签**: `#Qwen`, `#投机解码`, `#RTX 3090`, `#本地推理`, `#性能基准`

---

<a id="item-20"></a>
^item-20
## [微软从 Hugging Face 和 GitHub 移除 FastContext 模型](https://www.reddit.com/r/LocalLLaMA/comments/1ujjk9s/microsoft_has_taken_down_fastcontext_model_from/) ⭐️ 8.0/10

微软在没有公开解释的情况下，从 Hugging Face 和 GitHub 上删除了 FastContext-1.0-4B-SFT 模型及其相关仓库。 这一突然移除引发了对大型企业托管开源 AI 模型的可靠性及其决策透明度的担忧，可能影响依赖这些资源的开发者和研究人员。 该模型的 Hugging Face 页面现已为空，GitHub 仓库返回 404 错误。该模型此前以 MIT 许可证发布，并因其长上下文能力引起了社区关注。

reddit · r/LocalLLaMA · /u/robert896r1 · 6月30日 08:39

**背景**: FastContext 是一个 40 亿参数的模型，旨在高效处理长输入上下文，基于微软在高效注意力机制方面的研究。该模型以开源形式发布，允许开发者自由微调和部署。

**社区讨论**: Reddit 社区表达了困惑和沮丧，许多人猜测可能的原因包括许可问题、安全担忧或内部政策变化。一些用户指出微软缺乏沟通尤其令人担忧。

**标签**: `#微软`, `#FastContext`, `#模型下架`, `#开源AI`, `#Hugging Face`

---

<a id="item-21"></a>
^item-21
## [Qwen3.6-35B-A3B 的规范保持消融术实现零拒绝率](https://www.reddit.com/r/LocalLLaMA/comments/1ujktg5/normpreserving_abliteration_on_qwen3635ba3b_0/) ⭐️ 8.0/10

一种规范保持双投影技术被应用于 Qwen3.6-35B-A3B 混合 MoE 模型，在保留数学和代码基准测试性能的同时，实现了对保留测试集的零拒绝率。作者还发布了一个包含 7356 条提示、覆盖 35 个类别和 10 种提示风格的丰富有害数据集。 这项工作解决了传统消融术导致的基准测试性能下降问题，使得在不牺牲性能的情况下对大型 MoE 模型进行拒绝机制移除变得可行。同时，开源资源为 AI 安全和对齐的进一步研究提供了支持。 该技术处理了两个容易被忽视的陷阱：混合注意力层（部分使用 self_attn.o_proj，部分使用 linear_attn.out_proj）以及需要 einsum 操作来逐专家应用投影的 3D 专家张量。模型和 GGUF 量化版本已在 Hugging Face 上发布。

reddit · r/LocalLLaMA · /u/BriefCardiologist656 · 6月30日 09:54

**背景**: 消融术是一种通过从权重矩阵中投影出拒绝方向来移除语言模型拒绝行为的技术。传统消融术通常会因缩小权重范数而导致模型性能下降。规范保持双投影在正交化后重新缩放每个权重行以保持原始 L2 范数，从而防止性能损失。

**标签**: `#大模型`, `#AI安全`, `#消融术`, `#开源`, `#Qwen`

---

<a id="item-22"></a>
^item-22
## [TurboOCR v3：RTX 5090 上每秒 520 张图片，采用 PP-OCRv6](https://www.reddit.com/r/LocalLLaMA/comments/1ujqi9a/turboocr_v3_highspeed_document_ocr_server_ccuda/) ⭐️ 8.0/10

TurboOCR v3 是一款自托管的高速文档 OCR 服务器，在 RTX 5090 上使用 PP-OCRv6 模型达到约每秒 520 张图片，相比 v2 的约 270 img/s 有显著提升。它还新增了结构化解析功能，包括表格转 HTML、公式转 LaTeX 以及按阅读顺序输出的 Markdown。 此版本显著提升了自托管 OCR 的性能，使其能够胜任大规模实时文档处理。新增的结构化解析（表格、公式、Markdown）弥合了原始 OCR 与可用文档格式之间的差距，有利于开发基于 AI 的文档工作流的开发者。 速度提升得益于升级到 PP-OCRv6 模型，并采用 C++/CUDA 结合 TensorRT FP16 和多流处理。结构化解析按请求可选，用户仅在需要时付出计算成本。服务器支持 HTTP 和 gRPC 端点，并可直接处理 PDF 文件。

reddit · r/LocalLLaMA · /u/Civil-Image5411 · 6月30日 14:17

**背景**: OCR（光学字符识别）将文本图像转换为机器可读的文本。自托管 OCR 服务器运行在用户自己的硬件上，确保数据隐私和低延迟。PP-OCRv6 是 PaddleOCR 的最新一代 OCR 模型，针对速度和精度进行了优化。TurboOCR 利用 CUDA 和 TensorRT 在 NVIDIA GPU 上加速推理。

**标签**: `#OCR`, `#C++/CUDA`, `#自托管`, `#PP-OCRv6`, `#AI工具`

---

<a id="item-23"></a>
^item-23
## [8 人初创公司自研大模型年入上亿美元](https://www.infoq.cn/article/lgKWA0PHN4zsOkB4C4Pv?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

一家仅 8 人的初创公司通过自研代码生成大模型实现年收入超过 1 亿美元，直接与 Cursor、Claude Code 等成熟工具竞争。 这表明小团队仍能颠覆由资金雄厚玩家主导的 AI 编程助手市场，并验证了专用自研模型的商业可行性。 该公司的模型专为代码生成和理解而构建，可能在延迟、成本或定制化方面比竞争对手使用的通用模型更具优势。

rss · InfoQ 中文 · 6月30日 18:29

**背景**: GitHub Copilot、Cursor、Claude Code 等 AI 编程助手利用大语言模型帮助开发者更快地编写代码。大多数此类工具依赖第三方模型（如 GPT-4、Claude）或微调开源模型。从头构建专有模型资源密集，但可提供差异化和成本控制。

**标签**: `#AI工具`, `#大模型`, `#创业`, `#编程助手`, `#Cursor`

---

<a id="item-24"></a>
^item-24
## [物理 AI：从受控实验室走向真实世界](https://www.infoq.cn/article/erU6ZuSI5qowMlIGSr8i?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

本文分析了物理 AI 从受控环境向真实世界应用过渡时的技术挑战与演进方向，涵盖机器人和自动驾驶等领域。 理解这一过渡对于推动物理系统中的 AI 至关重要，将影响制造、物流和运输等行业。 文章可能讨论了从实验室环境转向实际部署时出现的传感器噪声、环境变化和安全性约束等挑战。

rss · InfoQ 中文 · 6月30日 17:56

**背景**: 物理 AI 指与物理世界交互的 AI 系统，如机器人和自动驾驶汽车。这些系统通常在受控环境中开发，然后部署到不可预测的真实场景中。

**标签**: `#物理AI`, `#机器人`, `#自动驾驶`, `#AI趋势`

---

<a id="item-25"></a>
^item-25
## [语音编程时代来临：Cursor 与 OpenClaw 实现动嘴编程](https://www.infoq.cn/article/6WCaAMdgSR8r46j3OZd4?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

Cursor 与 OpenClaw 合作推出了语音编程功能，开发者可以通过语音指令编写代码。 这一创新可能从根本上改变开发者与代码编辑器的交互方式，使编程更加便捷和免手动，有望提升许多开发者的生产力。 该功能将语音识别与 AI 驱动的代码生成相结合，使开发者能够口述代码片段、命令甚至复杂逻辑。它设计在现有的 Cursor 编辑器环境中运行。

rss · InfoQ 中文 · 6月30日 17:46

**背景**: Cursor 是一个 AI 驱动的代码编辑器，集成了大型语言模型来辅助代码编写和编辑。OpenClaw 是一个专注于语音交互技术的平台。他们的合作旨在通过将语音输入与 AI 代码生成相结合，创造更自然、高效的编码体验。

**标签**: `#AI编程`, `#Cursor`, `#OpenClaw`, `#语音编程`, `#开发者工具`

---

<a id="item-26"></a>
^item-26
## [Anthropic 负责人：HTML 比 Markdown 更适合智能体协作](https://www.infoq.cn/article/i3eauD7F8KF9gVY3SD18?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

Anthropic 的一位负责人表示，在 AI 智能体协作流程中，HTML 比 Markdown 更便于人类跟踪和理解。 这一观点凸显了 AI 智能体工作流中文档格式选择的重要性，可能影响 AI 行业的工具设计和团队协作实践。 该建议基于 HTML 更丰富的结构和视觉提示，可以使智能体的操作和状态变化对人类观察者更加透明。

rss · InfoQ 中文 · 6月30日 17:00

**背景**: Markdown 是一种常用于文档的轻量级标记语言，而 HTML 提供更多的格式和交互能力。在 AI 智能体协作中，多个智能体可能生成和共享文档，人类监督对于调试和信任至关重要。

**标签**: `#AI智能体`, `#协作流程`, `#HTML`, `#Markdown`, `#Anthropic`

---

<a id="item-27"></a>
^item-27
## [Google OpenRL：用于 LLM 后训练的实验性自托管 API](https://www.infoq.cn/article/d5MOPSyGi5XPi1erhUW3?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

Google 发布了实验性开源项目 OpenRL，提供用于大型语言模型（LLM）后训练微调的自托管 API。 OpenRL 为开发者提供了 LLM 微调的自托管方案，可能减少对云服务的依赖并增强数据隐私，从而加速模型定制方面的实验。 OpenRL 仍处于实验阶段，未达到生产就绪；它专注于后训练技术，如基于人类反馈的强化学习（RLHF）。该项目是开源的，允许社区贡献。

rss · InfoQ 中文 · 6月30日 15:21

**背景**: 像 GPT-4 这样的大型语言模型通常在大规模数据集上预训练，然后针对特定任务进行微调。后训练微调（通常使用 RLHF）使模型与人类偏好对齐。自托管 API 让组织对数据和模型定制有更多控制。

**标签**: `#LLM`, `#微调`, `#开源`, `#Google`, `#OpenRL`

---

<a id="item-28"></a>
^item-28
## [中国团队用 3000 元将 ChatGPT 秘密用于机器人训练](https://www.infoq.cn/article/t78dBsMM5KZabshzEMuo?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

一支中国团队开发了一种方法，以仅 3000 元的成本将 ChatGPT 背后的核心技术应用于机器人训练。这种方法展示了以极低成本实现智能机器人的新路径。 这一突破大大降低了将大语言模型集成到机器人领域的门槛，可能加速经济型智能机器人的发展。它可能激发更多行业中的低成本 AI 应用。 该团队使用了人类反馈强化学习（RLHF）——ChatGPT 背后的关键技术，以仅 3000 元的预算训练机器人。该方法专注于高效的数据收集和模型微调，无需昂贵硬件即可实现实用性能。

rss · InfoQ 中文 · 6月30日 15:07

**背景**: 像 ChatGPT 这样的大语言模型依赖巨大的计算资源和数据，部署成本高昂。将类似技术应用于机器人传统上需要高端传感器和计算硬件。这项工作表明，通过巧妙的工程设计，核心思想可以适配到低成本平台。

**标签**: `#机器人训练`, `#大模型`, `#低成本AI`, `#ChatGPT`, `#中国团队`

---

<a id="item-29"></a>
^item-29
## [火山引擎提出 Agentic VCloud 演进](https://www.infoq.cn/article/4S4eBkKoq9Btx37VdTMW?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

火山引擎视频云提出从传统 VCloud 向 Agentic VCloud 的范式转变，以满足 AI Agent 时代的视频处理需求。 这一演进标志着将 AI Agent 与云服务整合的战略举措，可能重塑在 Agent 驱动的生态系统中视频内容的处理和交付方式。 该概念侧重于使自主 Agent 能够与视频云基础设施交互以实现实时处理，但缺乏具体的技术实现或案例研究。

rss · InfoQ 中文 · 6月30日 13:30

**背景**: 传统 VCloud 通过云基础设施提供视频处理和分发服务。AI Agent（自主执行任务的程序）的兴起要求更动态、更智能的云服务。Agentic VCloud 旨在通过将 Agent 能力嵌入视频云来弥合这一差距。

**标签**: `#AI Agent`, `#视频云`, `#范式重构`, `#火山引擎`

---

<a id="item-30"></a>
^item-30
## [Atlassian 揭秘 Forge 大规模计费架构](https://www.infoq.cn/article/5a8OTMYRHj6XZIpOTVoo?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

Atlassian 分享了其 Forge 平台在分布式环境下实现大规模用量计费的架构设计经验。 这为构建可扩展计费系统的 SRE 和 DevOps 从业者提供了宝贵经验，解决了分布式计量中的准确性、延迟和成本等挑战。 该架构可能采用事件驱动模式和异步处理，将计量与计费解耦，以确保高吞吐量和容错性。

rss · InfoQ 中文 · 6月30日 10:50

**背景**: Forge 是 Atlassian 的云平台，用于构建与 Jira 和 Confluence 等产品集成的应用。基于用量的计费需要跨分布式服务准确、实时地跟踪客户消耗，这在技术上具有挑战性。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://theitzy.net/glang-kafka-build-distributed-system-real-time-app/">用 Go语言和Kafka... | TheItzy</a></li>

</ul>
</details>

**标签**: `#分布式系统`, `#计费架构`, `#SRE`, `#DevOps`, `#Atlassian`

---

<a id="item-31"></a>
^item-31
## [AI 从代码审查向上游延伸至 PRD 治理](https://www.infoq.cn/article/30O5wT7GIPEtIpiXeAS0?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

文章分析了 AI 从代码审查向产品需求文档（PRD）治理等上游环节延伸的趋势。 这一转变可能改变软件团队处理需求和设计的方式，有望在开发早期提升质量并减少返工。 文章讨论了 AI 在 PRD 治理中的作用，但缺乏具体案例或深度技术细节，因此评分为 7/10。

rss · InfoQ 中文 · 6月30日 09:00

**背景**: 传统上，AI 在软件开发中专注于代码级任务，如代码审查和缺陷检测。向上游延伸至 PRD 治理意味着 AI 在编码开始前帮助验证和管理需求。

**标签**: `#AI`, `#软件生命周期`, `#PRD`, `#开发流程`

---

<a id="item-32"></a>
^item-32
## [网易有道 CEO：Harness 即产品](https://www.infoq.cn/article/3X8E2FVCllu24XYVoPeK?utm_source=rss&utm_medium=article) ⭐️ 6.0/10

网易有道 CEO 周枫提出“Harness 即产品”的观点，强调产品应聚焦于解决用户的实际问题，而非单纯增加功能。 这一观点挑战了功能驱动的开发模式，鼓励产品团队优先考虑用户价值，可能影响整个科技行业的产品策略。 文章缺乏具体案例或技术细节，更像是一种理念陈述而非实践指南。“Harness”一词可能指有效利用用户需求。

rss · InfoQ 中文 · 6月30日 18:23

**背景**: 产品思维是一种以识别和解决用户需求为核心的问题解决方法。周枫的言论与以用户为中心的设计趋势一致，产品的成功取决于其解决实际问题的能力。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.aiyingli.com/63744.html">运 用 产 品 思 维 ， 解 决 实 际 问 题 |爱盈利</a></li>
<li><a href="https://www.53ai.com/news/neirongchuangzuo/2024112134597.html">产 品 经理的内功： 用 产 品 思 维 解 决 复杂 问 题 的三大步骤 - 53AI-AI...</a></li>

</ul>
</details>

**标签**: `#产品思维`, `#行业观点`, `#网易有道`

---

<a id="item-33"></a>
^item-33
## [联想基于 Arm 的车计算推动 L4 自动驾驶出租车落地](https://www.infoq.cn/article/Ny7RygQpB3cbBUvU57GW?utm_source=rss&utm_medium=article) ⭐️ 6.0/10

联想车计算部门宣布，将基于 Arm 计算平台推动 L4 级自动驾驶出租车的规模化量产与落地部署。 这标志着 Arm 架构进入汽车高性能计算领域的重要一步，有望降低自动驾驶系统的成本和功耗。 该方案面向 L4 级自动驾驶，需要强大的实时处理能力和安全冗余。联想利用其在计算硬件方面的专长，集成基于 Arm 的 SoC 用于车辆控制和感知。

rss · InfoQ 中文 · 6月30日 18:03

**背景**: L4 级自动驾驶意味着车辆在特定条件下无需人类干预即可完成所有驾驶任务。Arm 架构以能效著称，在功耗和散热要求严苛的汽车应用中具有吸引力。

**标签**: `#自动驾驶`, `#Arm`, `#联想`, `#车计算`, `#L4`

---

<a id="item-34"></a>
^item-34
## [AWS Cognito 增加多区域故障切换](https://www.infoq.cn/article/5GF5hkjpFZqR7EMGkSvR?utm_source=rss&utm_medium=article) ⭐️ 6.0/10

AWS 为 Amazon Cognito 引入了多区域故障切换能力，当主区域不可用时，认证流量可自动切换到备用区域。 这一增强显著提升了 Cognito 的高可用性和弹性，对于依赖 AWS 进行用户认证和身份管理的应用至关重要。 该故障切换针对用户池设计，支持将认证请求自动路由到预先配置的备用区域，无需人工干预。

rss · InfoQ 中文 · 6月30日 13:00

**背景**: Amazon Cognito 是一项托管身份服务，为 Web 和移动应用提供注册、登录和访问控制。多区域故障切换是通过跨地理区域复制数据和服务来实现高可用的常见模式。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.infoq.cn/article/5GF5hkjpFZqR7EMGkSvR">AWS 为 Cognito 增加 多 区 域 故 障 切 换 能力 - InfoQ</a></li>
<li><a href="https://aws.amazon.com/cognito/">Amazon Cognito - Customer Identity and Access Management...</a></li>

</ul>
</details>

**标签**: `#AWS`, `#Cognito`, `#高可用`, `#故障切换`

---

