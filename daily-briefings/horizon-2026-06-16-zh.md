# Horizon 每日速递 - 2026-06-16

> 从 130 条内容中筛选出 34 条重要资讯。

---

1. [[#^item-1|Nginx 远程代码执行漏洞（CVE-2026-42945）]] ⭐️ 9.0/10
2. [[#^item-2|Fragnesia Linux 内核权限提升漏洞（CVE-2026-46300）已复现]] ⭐️ 9.0/10
3. [[#^item-3|哪吒监控探针高危路径穿越漏洞（CVSS 9.1）]] ⭐️ 9.0/10
4. [[#^item-4|腾讯支持的 GPU 四小龙最后一龙过会]] ⭐️ 8.0/10
5. [[#^item-5|编码智能体范式转移：上下文工程、子智能体与工具框架]] ⭐️ 8.0/10
6. [[#^item-6|快手在复杂场景下的 RCA Agent 实践]] ⭐️ 8.0/10
7. [[#^item-7|WWDC 2026：苹果 Siri 将采用谷歌 Gemini 1.2 万亿参数模型]] ⭐️ 8.0/10
8. [[#^item-8|国家安全部警示“AI 中转站”风险]] ⭐️ 8.0/10
9. [[#^item-9|Import AI 461：对齐、FrontierCode、合成实习生]] ⭐️ 8.0/10
10. [[#^item-10|AI 为何不会取代软件工程师]] ⭐️ 8.0/10
11. [[#^item-11|中国黑客利用 Google Workspace 规则窃取邮件]] ⭐️ 8.0/10
12. [[#^item-12|LiteLLM 漏洞链可致服务器完全被接管]] ⭐️ 8.0/10
13. [[#^item-13|微软 365 Copilot 一键漏洞可泄露邮件、文件及 MFA 代码]] ⭐️ 8.0/10
14. [[#^item-14|Palo Alto 警告 PAN-OS VPN 漏洞正被积极利用]] ⭐️ 8.0/10
15. [[#^item-15|FBI 发布紧急 Kali365 警告，针对微软 365 用户]] ⭐️ 8.0/10
16. [[#^item-16|研究称 Reddit 可轻易操纵 AI 搜索]] ⭐️ 8.0/10
17. [[#^item-17|Remitly 强制通过明文邮件发送 PII，拒绝安全替代方案]] ⭐️ 8.0/10
18. [[#^item-18|通过 Awesome Motive CDN 的供应链攻击波及 WordPress 插件]] ⭐️ 8.0/10
19. [[#^item-19|字节跳动洽购天数智芯 AI 芯片，或引入百度昆仑芯]] ⭐️ 8.0/10
20. [[#^item-20|美国出口管制迫使 Anthropic 关闭 Mythos 模型]] ⭐️ 8.0/10
21. [[#^item-21|Rio 3.5 模型被曝套壳中国开源模型]] ⭐️ 8.0/10
22. [[#^item-22|Rust 与 C/C++内存安全 CVE 的根本差异]] ⭐️ 8.0/10
23. [[#^item-23|微软 Discovery 上线 Azure，加速 Majorana 2 量子芯片研发]] ⭐️ 7.0/10
24. [[#^item-24|Fable 5 的杀手锏：迁移、重构、技术债务]] ⭐️ 7.0/10
25. [[#^item-25|快手 AI 编程演进：从个人提效到组织生产力提升]] ⭐️ 7.0/10
26. [[#^item-26|在 AWS 上为 B2B 平台构建安全的 MCP 服务器]] ⭐️ 7.0/10
27. [[#^item-27|前 OpenAI 高管警示 AI 时代的身份危机]] ⭐️ 6.0/10
28. [[#^item-28|前字节员工推出 AIGC 视频工具，助普通人创作爆款]] ⭐️ 6.0/10
29. [[#^item-29|Fable 5 被禁，Anthropic 退款，阿里辟谣，智谱 GLM-5.2 开放]] ⭐️ 6.0/10
30. [[#^item-30|Terraform 1.15 缩小与 OpenTofu 的差距]] ⭐️ 6.0/10
31. [[#^item-31|微软在 Build 2026 推出 Logic Apps Automation]] ⭐️ 6.0/10
32. [[#^item-32|Swiggy 用实时机器学习排序优化搜索自动补全]] ⭐️ 6.0/10
33. [[#^item-33|董事会视角下的 Snowflake 生态系统操作系统战略]] ⭐️ 6.0/10
34. [[#^item-34|AI 黑客威胁游戏行业安全]] ⭐️ 6.0/10

---

<a id="item-1"></a>
^item-1
## [Nginx 远程代码执行漏洞（CVE-2026-42945）](https://blog.nsfocus.net/%e3%80%90%e6%bc%8f%e6%b4%9e%e9%80%9a%e5%91%8a%e3%80%91nginx%e8%bf%9c%e7%a8%8b%e4%bb%a3%e7%a0%81%e6%89%a7%e8%a1%8c%e6%bc%8f%e6%b4%9e%ef%bc%88cve-2026-42945%ef%bc%89-2/) ⭐️ 9.0/10

Nginx 的 ngx_http_rewrite 模块被披露存在一个严重的远程代码执行漏洞（CVE-2026-42945），影响 Nginx Plus 和 Nginx 开源版本。绿盟科技于 2026 年 5 月 14 日发布通告，建议立即修复。 Nginx 是全球使用最广泛的 Web 服务器之一，远程代码执行漏洞可能允许攻击者完全控制受影响的服务器，对依赖 Nginx 的网站、API 及其他服务构成严重风险。 该漏洞位于处理 URI 重写的 ngx_http_rewrite_module 模块中，是一个运行时重写缺陷，因此生成的 Nginx 配置对利用至关重要。

rss · 绿盟科技技术博客 · 6月15日 02:57

**背景**: ngx_http_rewrite_module 是 Nginx 的核心模块，用于更改请求 URI、返回重定向以及有条件地选择配置。CVE-2026-42945 由 F5 Networks 分配，并于 2026 年 5 月 13 日发布在 NVD 中。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://nvd.nist.gov/vuln/detail/CVE-2026-42945">NVD - CVE - 2026 - 42945</a></li>
<li><a href="https://nginx.org/en/docs/http/ngx_http_rewrite_module.html">Module ngx_http_rewrite_module</a></li>
<li><a href="https://www.penligent.ai/hackinglabs/cve-2026-42945/">CVE - 2026 - 42945 , NGINX Rift at the Rewrite Layer</a></li>

</ul>
</details>

**标签**: `#Nginx`, `#漏洞通告`, `#远程代码执行`, `#CVE-2026-42945`, `#安全预警`

---

<a id="item-2"></a>
^item-2
## [Fragnesia Linux 内核权限提升漏洞（CVE-2026-46300）已复现](https://blog.nsfocus.net/%e3%80%90%e5%b7%b2%e5%a4%8d%e7%8e%b0%e3%80%91linux%e5%86%85%e6%a0%b8fragnesia%e6%9d%83%e9%99%90%e6%8f%90%e5%8d%87%e6%bc%8f%e6%b4%9e%ef%bc%88cve-2026-46300%ef%bc%89-2/) ⭐️ 9.0/10

一个名为 Fragnesia（CVE-2026-46300）的新 Linux 内核本地权限提升漏洞已被公开披露并由安全厂商复现。该漏洞位于 XFRM ESP-in-TCP 子系统中，允许无权限的攻击者获取 root 权限。 这是一个影响广泛 Linux 系统的高危漏洞，对企业及云环境构成重大风险。系统管理员和安全团队必须优先进行修补，以防止潜在的 root 权限被获取。 该漏洞自内核版本 5.6（提交 e27cca96cd68，2019 年 11 月）引入，影响之后的所有内核。较旧的内核（如 Ubuntu 18.04 的 4.15、Ubuntu 20.04 的 5.4）实际上不受影响。主要发行版已提供补丁。

rss · 绿盟科技技术博客 · 6月15日 02:53

**背景**: XFRM ESP-in-TCP 子系统是 Linux 内核 IPsec 实现的一部分，负责处理 ESP 数据包在 TCP 上的封装。Fragnesia 利用该子系统中的一个内存写入原语覆盖敏感系统文件，从而实现权限提升。这是一个月内披露的第三个 Linux 内核 LPE 漏洞，此前已有类似问题如 Dirty Frag。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.securityweek.com/new-linux-kernel-vulnerability-fragnesia-allows-root-privilege-escalation/">New Linux Kernel Vulnerability Fragnesia Allows Root Privilege Escalation - SecurityWeek</a></li>
<li><a href="https://ubuntu.com/blog/fragnesia-linux-vulnerability-fixes-available">Fragnesia Linux kernel local privilege escalation vulnerability mitigations | Ubuntu</a></li>
<li><a href="https://www.csoonline.com/article/4171403/meet-fragnesia-the-third-linux-kernel-vulnerability-in-a-month.html">Meet Fragnesia, the third Linux kernel vulnerability in a month | CSO Online</a></li>

</ul>
</details>

**标签**: `#Linux`, `#内核`, `#权限提升`, `#CVE-2026-46300`, `#安全漏洞`

---

<a id="item-3"></a>
^item-3
## [哪吒监控探针高危路径穿越漏洞（CVSS 9.1）](https://github.com/nezhahq/nezha/security/advisories/GHSA-5c25-7vpj-9mqh) ⭐️ 9.0/10

哪吒监控（Nezha）v2.0.13 以下版本被披露存在一个严重的未授权路径穿越漏洞（CVE-2026-53519），CVSS 评分为 9.1。攻击者通过构造 GET 请求（如/dashboard../data/config.yaml）即可读取配置文件中的 JWT 密钥。 该漏洞允许攻击者获取 JWT 密钥，进而伪造认证令牌并获取对监控系统的未授权访问。由于哪吒监控被广泛用于服务器监控，这对众多用户构成了严重的安全威胁。 该漏洞是一个无需认证的路径穿越问题，易于利用。受影响版本是哪吒监控 v2.0.13 及更早版本；用户应立即升级到最新版本。

telegram · zaihuapd · 6月15日 09:25

**背景**: 哪吒监控是一个开源的轻量级服务器监控和管理系统。路径穿越漏洞允许攻击者通过操纵文件路径来访问预期目录之外的文件。JWT（JSON Web Token）密钥用于签名和验证认证令牌；一旦泄露，攻击者可以伪造令牌并冒充合法用户。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://blog.csdn.net/wbsu2004/article/details/128826534">一站式轻 监 控 轻运维系统 nezha （上篇）_ nezha 监 控 -CSDN博客</a></li>
<li><a href="https://blog.echosec.top/p/nezha-monitoring/">『Blog』 NeZha Monitoring 从一到无穷大 | Echosec @QIN2DIM</a></li>

</ul>
</details>

**标签**: `#安全漏洞`, `#哪吒监控`, `#路径穿越`, `#CVE-2026-53519`, `#CVSS 9.1`

---

<a id="item-4"></a>
^item-4
## [腾讯支持的 GPU 四小龙最后一龙过会](https://www.infoq.cn/article/OLS2A0uPEfmqoktKKGWg?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

被称为“GPU 四小龙”中最后一家的燧原科技，已通过上交所科创板上市审核，计划募资 60 亿元人民币。 这一里程碑标志着中国加速推动国产 AI 芯片替代，在出口管制背景下减少对英伟达的依赖。此次 IPO 将为燧原科技提供资金以扩大生产，并在云端 AI 推理市场展开竞争。 截至招股书提交，燧原科技累计亏损近 60 亿元，拟发行市值约 400-600 亿元。该公司由前 AMD 高管于 2018 年创立，专注于云端 AI 训练和推理芯片。

rss · InfoQ 中文 · 6月15日 22:26

**背景**: “GPU 四小龙”指四家中国 GPU 初创公司：燧原科技、壁仞科技、摩尔线程和天数智芯。这些公司旨在开发用于 AI 和高性能计算的 GPU，与英伟达竞争。燧原科技是四家中最后一家上市的企业，此前壁仞科技已于 2026 年初上市。

<details><summary>参考链接</summary>
<ul>
<li><a href="http://finance.ce.cn/stock/gsgdbd/202606/t20260615_3032674.shtml">燧 原 科 技 IPO迎考：亏损58亿拟募资60亿元，一季度负债异常增长76...</a></li>
<li><a href="https://mp.ofweek.com/digitaleconomy/a056714200667">燧 原 科 技 冲IPO：400...</a></li>
<li><a href="https://money.udn.com/money/story/5604/9207554">陸 GPU ... | 經濟日報</a></li>

</ul>
</details>

**标签**: `#GPU`, `#AI芯片`, `#国产替代`, `#上市`, `#腾讯`

---

<a id="item-5"></a>
^item-5
## [编码智能体范式转移：上下文工程、子智能体与工具框架](https://www.infoq.cn/article/UFLm5D5VDPmu9Ykc9CdJ?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

一篇全面分析揭示了编码智能体领域在过去一年中的范式转移，核心围绕三个概念：上下文工程、子智能体和工具框架。这一转变重新定义了 AI 编码智能体的设计与部署方式。 这一范式转移意义重大，因为它从简单的代码生成转向了具有受控上下文和工具集成的结构化多智能体系统。构建 AI 辅助编码工具的开发者与组织需要采纳这些概念以保持竞争力。 上下文工程专注于为 AI 构建约束与目标，子智能体在编码智能体内执行专门子任务，工具框架则提供连接模型与工具的运行时环境。文章指出，Anthropic Agent SDK 和 OpenAI Agents SDK 等主流框架现已支持工具框架。

rss · InfoQ 中文 · 6月15日 10:31

**背景**: 编码智能体是辅助软件开发的 AI 系统。早期方法依赖简单的提示工程，而新范式引入了结构化方法：上下文工程定义问题边界，子智能体分解复杂任务，工具框架管理工具执行与记忆。这一演进反映了向智能体 AI 系统发展的更广泛趋势。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.linkedin.com/pulse/context-engineering-world-ai-agents-my-experience-vibe-cesar-miguel-eu1re">Context Engineering in the World of AI Agents: My Experience...</a></li>
<li><a href="https://developers.openai.com/codex/subagents">Subagents – Codex | OpenAI Developers</a></li>
<li><a href="https://medium.com/@rajithaeye/what-is-an-agent-harness-how-ai-agents-get-tools-memory-and-control-cb61ea87f94b">What Is an Agent Harness ? How AI Agents Get Tools... | Medium</a></li>

</ul>
</details>

**标签**: `#AI Agent`, `#Coding Agent`, `#Context Engineering`, `#智能体`, `#范式转移`

---

<a id="item-6"></a>
^item-6
## [快手在复杂场景下的 RCA Agent 实践](https://www.infoq.cn/article/dSexstkokyRe1TIkcBLW?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

快手一位资深架构师分享了该公司在复杂业务场景下构建 RCA（根因分析）Agent 的探索与实践经验，详细介绍了架构、挑战和教训。 这一实践展示了 AI Agent 如何在真实运维中有效应用于根因分析，为 SRE 和 DevOps 社区提供了宝贵经验。它展示了自动化事故诊断的具体路径，有助于减少人工劳作并提升系统可靠性。 该 RCA Agent 利用大语言模型（LLM）和工具增强，自主收集数据、形成假设并定位根因。分享涵盖了设计决策、与现有监控系统的集成，以及处理噪声或不完整数据的方法。

rss · InfoQ 中文 · 6月15日 10:20

**背景**: 根因分析（RCA）是 IT 运维中识别事故根本原因的关键流程。传统 RCA 依赖人工且耗时。由大语言模型驱动的 AI Agent 可以通过对可观测性数据（日志、指标、链路）进行推理，自动完成部分流程并提出可能的原因。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://arxiv.org/abs/2310.16340">[2310.16340] RCAgent: Cloud Root Cause Analysis by Autonomous Agents with Tool-Augmented Large Language Models</a></li>
<li><a href="https://tsuyoshiushio.medium.com/workflow-agent-vs-autonomous-agent-architecture-for-rca-1b65f122defe">Workflow Agent vs Autonomous Agent architecture for RCA | by Tsuyoshi Ushio | Medium</a></li>
<li><a href="https://logz.io/platform/features/ai-powered-root-cause-analysis/">Logz.io AI Agent for RCA - AI-Powered Root Cause Analysis</a></li>

</ul>
</details>

**标签**: `#AI Agent`, `#根因分析`, `#运维`, `#SRE`, `#快手`

---

<a id="item-7"></a>
^item-7
## [WWDC 2026：苹果 Siri 将采用谷歌 Gemini 1.2 万亿参数模型](https://www.infoq.cn/article/LSwQ3hQpZ1INX40icTSE?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

一篇预测性分析指出，在 WWDC 2026 上，苹果将宣布 Siri 基于谷歌的 1.2 万亿参数 Gemini 模型，标志着一次重大的 AI 合作。 这将是苹果的历史性让步，承认自身 AI 能力落后并依赖竞争对手的模型，可能重塑 AI 格局和用户隐私动态。 1.2 万亿参数的 Gemini 模型太大，无法在设备端运行，因此 Siri 的高级功能可能需要云端连接，限制了离线能力并引发延迟担忧。

rss · InfoQ 中文 · 6月15日 10:00

**背景**: 苹果传统上优先考虑设备端处理以保护隐私，但像 Gemini 这样的大语言模型需要巨大的算力和内存。当前的移动硬件无法在不进行大幅压缩或云端卸载的情况下处理万亿参数模型。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://gemini.google.com/">Google Gemini</a></li>
<li><a href="https://zhuanlan.zhihu.com/p/1931281139416404545">终于有人把端侧大模型说清楚了 - 知乎</a></li>
<li><a href="https://www.leiphone.com/category/chips/DonSRKsqBTFXy0PR.html">端侧大模型会带来颠覆性变化吗？ | 雷峰网</a></li>

</ul>
</details>

**标签**: `#苹果`, `#Siri`, `#Gemini`, `#大模型`, `#AI合作`

---

<a id="item-8"></a>
^item-8
## [国家安全部警示“AI 中转站”风险](https://blog.nsfocus.net/%e5%9b%bd%e5%ae%89%e9%83%a8%e7%82%b9%e5%90%8dai%e4%b8%ad%e8%bd%ac%e7%ab%99%ef%bc%8c%e6%94%bf%e4%bc%81%e6%9c%ba%e6%9e%84%e5%a6%82%e4%bd%95%e5%ae%88%e4%bd%8fai%e5%ae%89%e5%85%a8/) ⭐️ 8.0/10

2026 年 6 月 8 日，国家安全部在其官方微信公众号发布安全提示，警告一种名为“AI 中转站”的新型威胁，并敦促政企机构加强 AI 安全防护。 这一官方警告揭示了一种可能危及敏感数据和 AI 模型完整性的新型攻击途径，直接影响国家安全以及 AI 在关键领域的安全部署。 “AI 中转站”威胁涉及攻击者通过中间服务器拦截或劫持 AI 服务流量，可能导致数据泄露或模型篡改。中国安全厂商绿盟科技（NSFOCUS）分析了该威胁，并为政企机构提出了防御策略。

rss · 绿盟科技技术博客 · 6月15日 10:15

**背景**: AI 中转站是指位于用户和合法 AI API 之间的未经授权的代理服务，通常用于绕过限制或降低成本。然而，攻击者可能利用它们窃听通信、窃取 API 密钥或注入恶意提示。随着 AI 应用的普及，这类中间服务对处理敏感数据的政企用户构成了重大安全风险。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.21jingji.com/article/20260608/herald/cc22152e5d4da8f692190aba0989ef19.html">每周 风 险 追踪｜特德·姜新长文：声称 AI 有意识，是公司营销手段 - 21...</a></li>

</ul>
</details>

**标签**: `#AI安全`, `#国家安全`, `#政企安全`, `#安全运营`, `#NSFOCUS`

---

<a id="item-9"></a>
^item-9
## [Import AI 461：对齐、FrontierCode、合成实习生](https://jack-clark.net/2026/06/15/import-ai-461-alignment-is-not-on-track-frontiercode-and-synthetic-research-interns/) ⭐️ 8.0/10

Import AI 461 报道称，AI 研究人员成立了一家名为 Sequent 的新安全初创公司，认为“对齐研究进展不足”，并介绍了代码生成基准 FrontierCode 以及合成研究实习生的概念。 本期突出了对 AI 对齐进展的担忧、一个新的严格代码基准，以及 AI 自主进行研究的潜力，这些对于先进 AI 的安全和有效发展至关重要。 Sequent 是由前 DeepMind 和英国 AI 安全研究所的研究人员创立的非营利组织，专注于可证明的 AI 对齐。FrontierCode 来自 Cognition，是一个手工挑选的多 PR 代码任务基准。OpenAI 计划在 2026 年推出 AI 研究实习生，并在 2028 年推出完全自主的 AGI 研究员。

rss · Import AI · 6月15日 11:30

**背景**: AI 对齐研究旨在确保 AI 系统按照人类意图行事。FrontierCode 在真实的代码维护任务上评估 LLM。合成研究实习生指的是能够自主执行研究任务的 AI 系统，可能加速科学发现。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://cognition.ai/blog/frontier-code">Introducing FrontierCode | Cognition</a></li>
<li><a href="https://theneuralfeed.com/article/sequent-scale-and-automation-for-higher-confidence-in-alignment/iinfEiaG">Sequent launches nonprofit to achieve provable AI ... | The Neural Feed</a></li>
<li><a href="https://www.techradar.com/ai-platforms-assistants/chatgpt/openai-roadmap-revealed-ai-research-interns-by-2026-full-blown-agi-researchers-by-2028">OpenAI roadmap revealed: AI research interns by 2026... | TechRadar</a></li>

</ul>
</details>

**标签**: `#AI安全`, `#对齐`, `#FrontierCode`, `#合成数据`, `#AI研究`

---

<a id="item-10"></a>
^item-10
## [AI 为何不会取代软件工程师](https://simonwillison.net/2026/Jun/14/why-ai-hasnt-replaced-software-engineers/#atom-everything) ⭐️ 8.0/10

Arvind Narayanan 和 Sayash Kapoor 发表文章，引用纽约州 WARN 法案备案数据——第一年没有任何公司勾选 AI 相关裁员选项，论证 AI 不会导致软件工程师大规模失业。 这挑战了 AI 将很快取代知识工作者（尤其是软件工程师）的主流叙事，并表明其他职业受 AI 驱动的岗位替代影响更小。 作者指出软件工程中难以自动化的三个真正瓶颈：决定构建什么、验证并对交付物负责，以及对代码库、业务和环境的深度人类理解。

rss · Simon Willison · 6月14日 23:54

**背景**: WARN 法案要求公司在大规模裁员前提前 60 天通知。2025 年 3 月，纽约州在 WARN 备案中增加了 AI 披露复选框，但在第一个完整年度内，没有任何一家公司勾选该框。这表明即使在软件工程这样高度接触 AI 工具的领域，AI 也尚未成为裁员的主要驱动因素。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://warnact.io/state-new-york">New York Layoffs 2026 - WARN Act Filings | WARNact</a></li>
<li><a href="https://plainlayoffs.com/ai-layoffs/">AI -Related Layoffs — WARN Act Notices Linked to AI ... | PlainLayoffs</a></li>
<li><a href="https://paw.princeton.edu/article/professor-arvind-narayanan-and-sayash-kapoor-explain-ai">Professor Arvind Narayanan and Sayash Kapoor Explain AI</a></li>

</ul>
</details>

**标签**: `#AI`, `#软件工程`, `#就业`, `#行业趋势`

---

<a id="item-11"></a>
^item-11
## [中国黑客利用 Google Workspace 规则窃取邮件](https://thehackernews.com/2026/06/chinese-hackers-abused-google-workspace.html) ⭐️ 8.0/10

一个与中国有关联的间谍组织利用 REDCap 研究服务器的后门窃取凭证，然后滥用 Google Workspace 规则自动转发来自北美医疗、学术和军事研究网络的敏感邮件，持续超过一年。 此次攻击展示了一种利用合法 Google Workspace 功能的新型数据外泄技术，使得检测变得困难，并凸显了研究及国防领域使用的云协作工具中存在关键安全漏洞。 攻击者首先入侵了广泛使用的研究数据管理平台 REDCap 服务器以窃取登录凭证，然后修改受害者自身的 Google Workspace 邮件路由规则，将所有进出邮件复制到攻击者控制的账户。

rss · The Hacker News · 6月15日 19:44

**背景**: REDCap 是一个用于构建和管理在线数据库的安全网络应用程序，常被学术和医疗机构用于研究数据收集。Google Workspace（原 G Suite）包含邮件路由规则，允许用户自动转发或复制邮件，攻击者在获得管理权限后可能滥用此功能。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://material.security/workspace-resources/google-workspace-security-gaps-hackers-exploit-and-how-to-patch-them-today">Google Workspace Security Gaps Hackers Exploit—and How to Patch Them Today</a></li>
<li><a href="https://www.huntress.com/blog/identity-breach-google-workspace">The Identity Breach You Didn't Know You Had: Google Workspace | Huntress</a></li>

</ul>
</details>

**标签**: `#APT攻击`, `#Google Workspace`, `#数据外泄`, `#网络安全`, `#间谍活动`

---

<a id="item-12"></a>
^item-12
## [LiteLLM 漏洞链可致服务器完全被接管](https://thehackernews.com/2026/06/litellm-vulnerability-chain-lets-low.html) ⭐️ 8.0/10

Obsidian Security 披露了流行开源 AI 网关 LiteLLM 中的三个漏洞组成的攻击链，允许默认低权限用户提权至完全管理员并在服务器上执行任意代码。 该漏洞链对使用 LiteLLM 的组织构成严重风险，因为服务器被接管会暴露网关上存储的所有模型提供商 API 密钥，可能导致数据泄露和 AI 服务被未授权使用。 这三个漏洞被串联起来以绕过认证、提升权限并实现远程代码执行，CVSS 评分为 9.9。攻击从通常未更改的默认低权限账户开始。

rss · The Hacker News · 6月15日 16:39

**背景**: LiteLLM 是一个开源 AI 网关，提供统一的 OpenAI 兼容接口，可连接超过 100 个 LLM 提供商，处理认证、负载均衡和费用跟踪。它被企业和政府机构广泛使用，处理超过 10 亿次请求。默认低权限账户本意是限制访问，但如果未妥善保护则可能被利用。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://thehackernews.com/2026/06/litellm-vulnerability-chain-lets-low.html">LiteLLM Vulnerability Chain Lets Low-Privilege Users Take Over AI...</a></li>
<li><a href="https://magnanet.net/critical-vulnerability-chain-in-litellm-ai-gateway-exposes-sensitive-data-and-enables-remote-code-execution/">Critical Vulnerability Chain in LiteLLM AI Gateway Exposes Sensitive...</a></li>
<li><a href="https://dev.to/etairos/litellm-vulnerability-chain-enables-full-ai-gateway-takeover-from-default-account-kh2">LiteLLM Vulnerability Chain Enables Full AI... - DEV Community</a></li>

</ul>
</details>

**社区讨论**: 社区讨论强调了该漏洞链的严重性，许多人敦促立即打补丁。一些用户对默认账户配置表示担忧，并呼吁开源 AI 网关采用更强的安全默认设置。

**标签**: `#LiteLLM`, `#漏洞链`, `#AI网关`, `#权限提升`, `#安全通报`

---

<a id="item-13"></a>
^item-13
## [微软 365 Copilot 一键漏洞可泄露邮件、文件及 MFA 代码](https://thehackernews.com/2026/06/one-click-microsoft-365-copilot-flaw.html) ⭐️ 8.0/10

Varonis 威胁实验室在 Microsoft 365 Copilot 企业搜索中发现了一个名为 SearchLeak 的漏洞链，攻击者只需点击一个可信的 microsoft.com 链接即可窃取邮件、文件及 MFA 代码。微软已修补该关键漏洞，编号为 CVE-2026-42824。 该漏洞之所以重要，是因为它利用受信任的微软域名绕过传统的反钓鱼和 URL 过滤防御，对企业数据安全构成严重威胁。它凸显了将 AI 驱动的搜索集成到敏感企业环境中的风险。 攻击链结合了三个漏洞：Copilot 中的跨站请求伪造（CSRF）、搜索 API 缺乏适当授权，以及绕过同源策略的方法。该漏洞通过发送一个精心构造的链接，受害者点击后，其索引数据会被静默窃取到攻击者控制的服务器。

rss · The Hacker News · 6月15日 15:09

**背景**: Microsoft 365 Copilot 企业搜索会索引用户的整个 Microsoft 365 环境——包括邮件、日历、OneDrive 和 SharePoint——以回答自然语言查询。这种广泛的访问权限使其成为数据窃取的有价值目标。传统安全工具通常信任来自 microsoft.com 等合法域名的链接，而 SearchLeak 攻击正是利用了这一点。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://thehackernews.com/2026/06/one-click-microsoft-365-copilot-flaw.html">One-Click Microsoft 365 Copilot Flaw Could Have Let Attackers Steal...</a></li>
<li><a href="https://www.varonis.com/blog/searchleak">SearchLeak : How We Turned M365 Copilot Into a One-Click Data...</a></li>
<li><a href="https://logicity.in/en/blog/microsoft-365-copilot-flaw-enabled-one-click-data-theft">Microsoft 365 Copilot Flaw Enabled One-Click Data Theft | Logicity</a></li>

</ul>
</details>

**标签**: `#安全漏洞`, `#Microsoft 365`, `#Copilot`, `#数据泄露`, `#钓鱼攻击`

---

<a id="item-14"></a>
^item-14
## [Palo Alto 警告 PAN-OS VPN 漏洞正被积极利用](https://thehackernews.com/2026/06/palo-alto-warns-of-active-exploitation.html) ⭐️ 8.0/10

Palo Alto Networks 披露，PAN-OS GlobalProtect 门户和网关中的认证绕过漏洞 CVE-2026-0257 正被未知攻击者积极利用，以获取未授权访问。 该漏洞影响广泛使用的企业 VPN 产品，积极利用对依赖 GlobalProtect 进行远程访问的组织构成直接威胁，可能导致网络被入侵。 该漏洞的 CVSS 评分为 7.8，影响配置了 GlobalProtect 门户或网关且启用了认证覆盖 cookie 的 PAN-OS 软件。Palo Alto 已观察到利用尝试，但未将其归因于任何特定组织。

rss · The Hacker News · 6月15日 06:17

**背景**: GlobalProtect 是 Palo Alto Networks 的 VPN 解决方案，为企业网络提供安全远程访问。CVE-2026-0257 是一个认证绕过漏洞，允许攻击者绕过认证，无需有效凭据即可未授权访问 GlobalProtect 门户或网关。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.redlegg.com/blog/security-bulletin-pan-os-globalprotect-authentication-bypass-vulnerability">Security Bulletin: PAN - OS GlobalProtect Authentication Bypass ...</a></li>
<li><a href="https://ccb.belgium.be/advisories/warning-authentication-bypass-vulnerability-palo-alto-pan-os-actively-exploited-wild">Warning: Authentication bypass vulnerability in Palo Alto PAN - OS is...</a></li>

</ul>
</details>

**标签**: `#安全漏洞`, `#VPN`, `#Palo Alto`, `#PAN-OS`, `#CVE-2026-0257`

---

<a id="item-15"></a>
^item-15
## [FBI 发布紧急 Kali365 警告，针对微软 365 用户](https://www.reddit.com/r/cybersecurity/comments/1u6q2l5/fbi_issues_urgent_kali365_security_warning_for/) ⭐️ 8.0/10

FBI 发布紧急安全警告，提醒用户注意名为 Kali365 的新型威胁，这是一种钓鱼即服务平台，通过窃取 OAuth 令牌劫持微软 365 账户，可绕过多因素认证（MFA）。 该威胁针对 Teams、Outlook 和 OneDrive 等广泛使用的微软服务，其绕过 MFA 的能力对依赖微软 365 进行通信和协作的企业和个人构成严重风险。 Kali365 利用设备代码钓鱼和基于 Telegram 的分发方式窃取 OAuth 令牌，使攻击者无需密码即可获得持久访问权限。FBI 在该平台推出后一个月内即发出警告，因其快速传播和影响严重。

reddit · r/cybersecurity · /u/Dash-Courageous · 6月15日 19:07

**背景**: 钓鱼即服务平台（PhaaS）允许网络犯罪分子无需技术专长即可轻松发起钓鱼攻击。OAuth 令牌被微软 365 用于授权应用程序访问用户数据；窃取令牌后，攻击者即使密码更改或启用 MFA 也能冒充用户。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.helpnetsecurity.com/2026/05/22/kali365-microsoft-365-phishing-fbi-warning/">Microsoft 365 users targeted by new phishing threat that bypasses MFA</a></li>
<li><a href="https://www.bitdefender.com/en-us/blog/hotforsecurity/fbi-kali365-phishing-kit-breaks-microsoft-365-accounts-no-password-required">FBI warns of Kali 365 phishing kit that breaks into Microsoft 365...</a></li>
<li><a href="https://www.paubox.com/blog/fbi-warns-of-new-platform-hijacking-microsoft-365-accounts">FBI warns of new platform hijacking Microsoft 365 accounts</a></li>

</ul>
</details>

**标签**: `#FBI警告`, `#Kali365`, `#微软办公套件`, `#网络安全`, `#威胁情报`

---

<a id="item-16"></a>
^item-16
## [研究称 Reddit 可轻易操纵 AI 搜索](https://www.reddit.com/r/cybersecurity/comments/1u6ku2b/it_is_trivially_easy_to_use_reddit_to_manipulate/) ⭐️ 8.0/10

一项新研究表明，通过在 Reddit 等平台发布内容，可以轻易操纵 AI 搜索结果，这引发了对 AI 搜索系统安全性和可靠性的严重担忧。 这一漏洞削弱了人们对 AI 搜索引擎的信任，而 AI 搜索正越来越多地用于关键信息检索，同时也凸显了在 AI 时代建立强大防御机制以对抗信息操纵的必要性。 该研究识别出 Reddit 影响 AI 模型的多种渠道，包括在搜索结果中被直接引用以及对训练数据的间接影响。谷歌已更新其垃圾内容政策，将操纵生成式 AI 回复的行为纳入其中。

reddit · r/cybersecurity · /u/128G · 6月15日 16:04

**背景**: Google、ChatGPT 和 Perplexity 等 AI 搜索引擎经常从网络实时抓取信息，包括 Reddit 等论坛的用户生成内容。这使得它们容易受到协调操纵活动的影响，恶意行为者可以人为地提升某些叙事或产品。问题还在于，许多用户不加质疑地信任 AI 生成的答案。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.promptlayer.com/research-papers/ranking-manipulation-for-conversational-search-engines">Ranking Manipulation for Conversational Search Engines | PromptLayer</a></li>
<li><a href="https://www.1950.ai/post/the-ai-search-manipulation-epidemic-how-bad-actors-are-exploiting-google-chatgpt-and-gemini-for-i">The AI Search Manipulation Epidemic, How Bad Actors Are Exploiting...</a></li>
<li><a href="https://paralax.ai/blog/google-ai-search-spam-policy-generative-responses-2026">Google Just Made AI Search Manipulation a Spam Policy... — Paralax</a></li>

</ul>
</details>

**标签**: `#AI安全`, `#信息操纵`, `#Reddit`, `#搜索算法`, `#网络安全`

---

<a id="item-17"></a>
^item-17
## [Remitly 强制通过明文邮件发送 PII，拒绝安全替代方案](https://www.reddit.com/r/cybersecurity/comments/1u6ns6y/warning_remitly_forces_cleartext_pii_idbank/) ⭐️ 8.0/10

一名 Reddit 用户报告称，汇款服务 Remitly 要求客户通过未加密的电子邮件发送身份证和银行对账单等敏感 PII，并拒绝使用安全的文件传输方式。 这种做法使用户面临数据泄露和身份盗窃的风险，凸显了一家处理敏感金融数据的金融科技公司的严重安全漏洞，同时也强调了行业数据保护监管需要加强。 用户提议使用加密门户或密码保护文件，但 Remitly 坚持要求通过普通邮件附件发送。明文 PII 传输被广泛认为是安全风险，每年有数十亿条记录因此类做法被泄露。

reddit · r/cybersecurity · /u/CS_from_out · 6月15日 17:48

**背景**: Remitly 是一家在线汇款服务公司，业务覆盖超过 170 个国家。通过未加密的电子邮件发送 PII 是不安全的，因为邮件可能被拦截或未经授权方访问。存在安全的替代方案，如加密文件共享服务（例如 Proton Drive）或客户端加密，建议用于敏感数据传输。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Remitly">Remitly - Wikipedia</a></li>
<li><a href="https://portal26.ai/10-data-points-in-support-of-zero-clear-text-pii/">10 Compelling Reasons to Embrace Zero Clear Text PII ! | Portal26</a></li>
<li><a href="https://hypeshare.io/blog/how-to-send-files-securely-without-email-alternatives-2026/">How to Send Files Securely Without Email: The Safer Alternatives in...</a></li>

</ul>
</details>

**社区讨论**: Reddit 社区表达了强烈关注和批评，许多用户分享了与其他公司的类似经历。一些人建议向数据保护机构举报 Remitly，另一些人则讨论了公司保护客户数据的法律义务。

**标签**: `#数据泄露`, `#PII`, `#电子邮件安全`, `#金融科技`, `#安全实践`

---

<a id="item-18"></a>
^item-18
## [通过 Awesome Motive CDN 的供应链攻击波及 WordPress 插件](https://www.reddit.com/r/cybersecurity/comments/1u6e1fi/supply_chain_attack_hits_popular_wordpress/) ⭐️ 8.0/10

攻击者入侵了 Awesome Motive 的 CDN，向 OptinMonster、TrustPulse 和 PushEngage 插件注入恶意代码，在受影响的 WordPress 网站上创建了恶意管理员账户。该攻击由 Sansec 研究人员发现，并于 2026 年 6 月 15 日报告。 此次供应链攻击影响了数百万使用这些流行插件的 WordPress 网站，使攻击者能够获得完全的管理员控制权。它凸显了依赖第三方 CDN 进行插件更新的关键风险，以及加强供应链安全的必要性。 恶意代码是通过 Awesome Motive 的 CDN 分发的，而非通过插件更新，因此修复无需更新插件。Awesome Motive 已清理其 CDN 并轮换了所有凭证。

reddit · r/cybersecurity · /u/sunychoudhary · 6月15日 11:36

**背景**: Awesome Motive 是最大的 WordPress 插件公司之一，运营着 OptinMonster、TrustPulse 和 PushEngage 等流行插件。供应链攻击是指攻击者破坏软件分发链中的可信组件（如 CDN），从而向最终用户传递恶意软件。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://securityaffairs.com/193616/malware/supply-chain-attack-hits-popular-wordpress-plugins-through-awesome-motive-cdn.html">Attackers compromised Awesome Motive CDN files, backdooring...</a></li>
<li><a href="https://dailysecurityreview.com/cyber-security/awesome-motive-cdn-compromised-backdoor-served-to-optinmonster-users/">Awesome Motive CDN Compromised; Backdoor Served to...</a></li>
<li><a href="https://logicity.in/en/blog/optinmonster-wordpress-plugin-hacked-in-cdn-supply-chain-attack">OptinMonster WordPress Plugin Hacked in CDN ... | Logicity</a></li>

</ul>
</details>

**社区讨论**: Reddit 社区对攻击的规模以及对 CDN 分发插件的依赖表示担忧。一些用户指出，这一事件凸显了验证文件完整性和使用 Web 应用防火墙的重要性。

**标签**: `#供应链攻击`, `#WordPress`, `#CDN`, `#恶意软件`, `#安全事件`

---

<a id="item-19"></a>
^item-19
## [字节跳动洽购天数智芯 AI 芯片，或引入百度昆仑芯](https://www.reuters.com/world/china/bytedance-talks-with-chinas-iluvatar-corex-purchase-ai-chips-sources-say-2026-06-15/) ⭐️ 8.0/10

字节跳动正与上海芯片公司天数智芯洽谈采购 AI 芯片，主要用于 AI 推理任务，并同时考虑引入百度昆仑芯。若交易达成，天数智芯将成为字节跳动继华为、寒武纪之后的第三大国产 GPU 供应商，今年有望向其交付至少 5 万颗芯片。 此举表明字节跳动正战略性地推动 AI 芯片供应链多元化，以应对美国出口限制，并可能大幅提升国产 AI 芯片在中国头部互联网公司中的采用率。这也凸显了天数智芯和百度昆仑芯等国产 GPU 厂商在 AI 推理市场日益增长的竞争力。 天数智芯的芯片采用 7nm 工艺，专为通用 GPU 计算设计，兼容 CUDA。字节跳动考虑引入百度昆仑芯，增加了另一个国产选项，昆仑芯 1 已在百度的搜索引擎和云计算服务中部署。

telegram · zaihuapd · 6月15日 06:53

**背景**: 字节跳动是 TikTok 和抖音的母公司，是全球最大的 AI 算力消耗者之一，严重依赖 GPU 进行训练和推理。由于美国对英伟达 A100 和 H100 等先进芯片实施出口管制，中国科技公司越来越多地转向国产替代方案。天数智芯是中国领先的 GPU 初创公司，而百度昆仑芯是百度自研的云端 AI 芯片。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://36kr.com/p/1188832453820673">AI 芯 片 的200亿资本盛宴：单笔最高融53亿，北京上海最集中-36氪</a></li>
<li><a href="https://www.163.com/dy/article/KSVEA38A05314VD3.html">昆 仑 芯 上市， 百 度 终于能把AI故事讲成钱了</a></li>

</ul>
</details>

**标签**: `#字节跳动`, `#天数智芯`, `#AI芯片`, `#国产GPU`, `#百度昆仑芯`

---

<a id="item-20"></a>
^item-20
## [美国出口管制迫使 Anthropic 关闭 Mythos 模型](https://t.me/zaihuapd/41960) ⭐️ 8.0/10

美国商务部以国家安全为由发出出口管制指令，迫使 Anthropic 立即关闭 Fable 5 和 Mythos 5 模型对所有客户（包括外国籍员工）的访问。 这是美国首次将出口管制直接应用于 AI 模型而非仅限硬件，标志着技术限制的重大升级，可能重塑全球 AI 开发和跨境合作格局。 仅两款 Mythos 级别的模型受影响，其他 Claude 模型仍可访问。Anthropic 正在努力尽快恢复访问，同时遵守该指令。

telegram · zaihuapd · 6月15日 08:55

**背景**: 出口管制传统上针对用于训练 AI 模型的半导体芯片和设备，而非模型本身。美国政府担心这些模型可能被越狱，若被外国公民访问会带来国家安全风险。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.axios.com/2026/05/28/anthropic-opus-release-mythos">Anthropic releases new model , Opus 4.8</a></li>
<li><a href="https://www.politico.com/news/2026/06/13/inside-the-whirlwind-24-hours-that-led-the-white-house-to-slap-export-controls-on-anthropic-00961519">Inside the whirlwind 24 hours that led the White House to slap export ...</a></li>
<li><a href="https://fortune.com/2026/06/13/anthropic-disables-fable-mythos-export-controls-national-security-threat/">Anthropic disables Fable and Mythos AI models following... | Fortune</a></li>

</ul>
</details>

**标签**: `#AI模型`, `#出口管制`, `#Anthropic`, `#国家安全`, `#模型安全`

---

<a id="item-21"></a>
^item-21
## [Rio 3.5 模型被曝套壳中国开源模型](https://mp.weixin.qq.com/s/0oYevRBT8PPxG5hudOXxug) ⭐️ 8.0/10

此前被誉为开源 SOTA 的 Rio 3.5 模型被证实是 Nex 和 Qwen 的混合套壳模型。Nex 团队调查发现，该模型有 79% 的概率自称 Nex，且权重共线性超过 0.98，Rio 团队随后致歉并下架了模型。 该事件暴露了开源 AI 社区的诚信问题，套壳行为——将现有模型组合后当作原创作品发布——破坏了信任和公平竞争。这对 AI 行业具有警示意义，强调了透明度和正确归属的必要性。 Nex 团队的分析显示，去掉系统提示词后，Rio 3.5 有 79% 的概率自称 Nex，并能复述 Nex 独有的机构介绍。对 60 层权重的分析表明，Rio 的权重精确落在 Nex 与 Qwen 的连线上，混合比例约 0.57:0.43，共线性超过 0.98，几乎不可能为独立训练。

telegram · zaihuapd · 6月15日 12:39

**背景**: 模型套壳是指将现有的开源模型进行组合或微调后，作为新的原创模型发布而不进行适当归属的行为。此前已有类似事件，例如 Cursor 的 Composer 2 被曝实际基于 Kimi，斯坦福团队的 Llama3-V 被指抄袭清华面壁的 MiniCPM-Llama3-V 2.5。

**标签**: `#开源模型`, `#套壳`, `#AI诚信`, `#Rio 3.5`, `#Nex`

---

<a id="item-22"></a>
^item-22
## [Rust 与 C/C++内存安全 CVE 的根本差异](https://kobzol.github.io/rust/2026/06/15/how-memory-safety-cves-differ-between-rust-and-c-cpp.html) ⭐️ 8.0/10

一项详细分析表明，Rust 和 C/C++中的内存安全 CVE 在类型和根本原因上存在根本差异，使得简单的 CVE 数量比较具有误导性。文章指出，Rust 的安全保障将漏洞模式从经典的缓冲区溢出转变为逻辑错误和 panic。 这一区别对于准确评估 Rust 等内存安全语言在现实世界中的安全优势至关重要。它挑战了比较 CVE 数量的常见做法，并鼓励对漏洞类型进行更细致的理解。 在 C/C++中，许多 CVE 源于可被误用的 API（例如传递 NULL），而在 Rust 中，类似的误用通常在编译时就被阻止。Rust 的 CVE 更常涉及逻辑错误、panic 或绕过安全检查的 unsafe 代码块。

hackernews · nicoburns · 6月15日 16:11 · [社区讨论](https://news.ycombinator.com/item?id=48543392)

**背景**: 内存安全漏洞（如缓冲区溢出和释放后使用）是 C/C++中安全漏洞的主要来源。Rust 的所有权和借用模型在编译时强制执行内存安全，无需垃圾回收器，从而消除了许多传统内存错误。然而，Rust 代码仍然可能存在漏洞，尤其是在 unsafe 块中或由于逻辑错误。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://kobzol.github.io/rust/2026/06/15/how-memory-safety-cves-differ-between-rust-and-c-cpp.html">How memory safety CVEs differ between Rust and C / C++</a></li>
<li><a href="https://medium.com/@enravishjeni411/memory-safety-in-rust-ownership-and-borrowing-4670f5591761">Memory Safety in Rust : Ownership and Borrowing | Medium</a></li>
<li><a href="https://dzone.com/articles/rusts-ownership-and-borrowing-enforce-memory-safety">Rust Ownership and Borrowing Enforce Memory Safety</a></li>

</ul>
</details>

**社区讨论**: 评论者就比较 CVE 数量的有效性展开辩论，一些人认为 CVE 数量是无用的指标。其他人讨论了 Rust 安全性的细微差别，指出 Rust 中的 panic 可能被视为漏洞，并且类型安全缺陷可能导致意外行为。

**标签**: `#Rust`, `#C/C++`, `#内存安全`, `#CVE`, `#安全分析`

---

<a id="item-23"></a>
^item-23
## [微软 Discovery 上线 Azure，加速 Majorana 2 量子芯片研发](https://www.infoq.cn/article/TVaWScbjordM7XP3FuPg?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

微软已在 Azure 上推出 Microsoft Discovery 服务，这是一种代理式 AI 服务，旨在加速其下一代 Majorana 2 拓扑量子芯片的研发。 这标志着代理式 AI 与量子计算的重要融合，可能缩短实用量子计算机的研发周期，并对 AI 和量子研究领域产生深远影响。 Majorana 2 采用拓扑量子比特，平均寿命达 20 秒，部分情况可达一分钟，远超传统以微秒计量的量子比特。Microsoft Discovery 的代理式 AI 能自主查询、跨平台整合并协调多个代理，以优化芯片设计。

rss · InfoQ 中文 · 6月15日 18:11

**背景**: 量子计算利用量子力学原理执行超越经典计算机的计算。微软开创的拓扑量子计算使用马约拉纳粒子来创建稳定的量子比特。代理式 AI 是指能够自主规划和执行任务的 AI 系统，不同于仅响应提示的生成式 AI。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.informationsecurity.com.tw/article/article_detail.aspx?aid=13002">微軟發表新一代拓樸 量 子 晶 片 Majorana 2 ，以 Microsoft Discovery...</a></li>
<li><a href="https://news.microsoft.com/source/asia/features/majorana-2-microsoft-discovery-agentic-ai/?lang=ja">Majorana 2 登場 - Source Asia</a></li>
<li><a href="https://m.tech.china.com/article/20260603/202606031884977.html">微软 Majorana 2 量 子 芯 片 亮相，另辟蹊径20年，想在2029...</a></li>

</ul>
</details>

**标签**: `#微软`, `#量子计算`, `#AI代理`, `#Azure`, `#Majorana 2`

---

<a id="item-24"></a>
^item-24
## [Fable 5 的杀手锏：迁移、重构、技术债务](https://www.infoq.cn/article/vLsklR5qs8h3j1D4AeqW?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

一篇文章指出，Fable 5 的核心价值不在于编写新代码，而在于代码迁移、重构和清理技术债务。 这一观点强调了维护遗留系统的实用策略，对于处理老化代码库的开发者具有高度参考价值。 文章缺乏具体技术细节，但强调了在 Fable 5 中通过迁移和重构解决技术债务的重要性。

rss · InfoQ 中文 · 6月15日 10:23

**背景**: 技术债务是沃德·坎宁安（Ward Cunningham）创造的一个比喻，描述了因现在选择简单方案而非耗时更长的更好方法而导致的额外返工成本。Fable 5 似乎是一个专注于改进现有代码而非添加新功能的软件项目或版本。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://segmentfault.com/a/1190000041485260">开发 - 译文 | 一文看懂 技 术 债 - 个人文章 - SegmentFault 思否</a></li>

</ul>
</details>

**标签**: `#Fable`, `#重构`, `#代码迁移`, `#技术债务`

---

<a id="item-25"></a>
^item-25
## [快手 AI 编程演进：从个人提效到组织生产力提升](https://www.infoq.cn/article/GyKoQjrIdwbi5KaGWzsX?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

快手在 AICon 上海分享了其 AI 编程的演进实践，涵盖代码生成、质量保障，以及如何从个人工具扩展到组织级生产力提升。 作为头部互联网公司，快手的 AI 编程实践具有行业参考价值，尤其对希望提升团队工程效率的技术管理者有启发。 演讲聚焦于从个人编码助手到集成组织工作流的实际演进，但由于是会议分享，具体技术细节有限。

rss · InfoQ 中文 · 6月15日 10:00

**背景**: 像 Cursor、OpenAI Codex 和 OpenCode 等 AI 编程工具正越来越多地用于自动化代码生成和审查。快手的做法展示了如何在大规模科技公司中采用这些工具，从个人提效扩展到团队和组织效率提升。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://cursor.com/">Cursor: AI coding agent</a></li>
<li><a href="https://openai.com/codex/">Codex | AI Coding Partner from OpenAI | OpenAI</a></li>
<li><a href="https://opencode.ai/">OpenCode | The open source AI coding agent</a></li>

</ul>
</details>

**标签**: `#AI编程`, `#快手`, `#生产力提升`, `#工程实践`

---

<a id="item-26"></a>
^item-26
## [在 AWS 上为 B2B 平台构建安全的 MCP 服务器](https://www.infoq.cn/article/YG0Qxe0YwsIz9jBToPj3?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

本文详细介绍了如何在 AWS 上为大型企业级 B2B 平台构建安全的 MCP 服务器，涵盖架构设计、安全策略和最佳实践。 随着 AI Agent 越来越依赖 MCP 进行上下文交换，确保这些服务器的安全对企业级应用至关重要。该指南帮助组织在生产 B2B 环境中安全部署 AI Agent。 文章可能讨论了使用 AWS IAM、VPC 和 Lambda 等服务来保护 MCP 端点，以及加密和访问控制模式。它针对拥有数百万用户的 B2B 平台，强调可扩展性和合规性。

rss · InfoQ 中文 · 6月15日 09:47

**背景**: MCP（模型上下文协议）是一种使 AI Agent 能够与外部系统交换上下文和工具的协议，类似于传统应用程序中的 API。B2B 平台通常处理敏感的商业数据，因此在集成 AI Agent 时安全性是首要考虑。

**标签**: `#AWS`, `#MCP`, `#企业级B2B`, `#安全架构`, `#AI Agent`

---

<a id="item-27"></a>
^item-27
## [前 OpenAI 高管警示 AI 时代的身份危机](https://www.infoq.cn/article/BVEc18iUtotFGN2mpRSI?utm_source=rss&utm_medium=article) ⭐️ 6.0/10

一位前 OpenAI 高管在清华大学发表演讲，探讨 AI 如何挑战人类身份认同和自我认知，并警告失去自我意识可能比失业更可怕。 这次演讲凸显了 AI 社会影响中一个关键但常被忽视的维度——心理和存在风险，超越了经济和技术层面的担忧，促使人们更深入地反思人类与 AI 的共存。 演讲聚焦于 AI 驱动世界中“我是谁”的问题，强调随着 AI 接管任务和角色，个人可能难以定义自己的目标和身份，从而导致潜在的意义危机。

rss · InfoQ 中文 · 6月15日 22:31

**背景**: 随着 AI 在内容创作、决策甚至陪伴等领域的能力越来越强，传统的人类角色正在被重新定义。这引发了关于人类独特性和价值的哲学与心理问题。演讲者作为前 OpenAI 高管，提供了关于 AI 发展如何加速这些转变的内部视角。

**标签**: `#AI`, `#行业趋势`, `#社会影响`, `#OpenAI`

---

<a id="item-28"></a>
^item-28
## [前字节员工推出 AIGC 视频工具，助普通人创作爆款](https://www.infoq.cn/article/pfJ4soZQji2VsfuX1DMm?utm_source=rss&utm_medium=article) ⭐️ 6.0/10

一位前字节跳动员工推出了一款 AIGC 视频创作工具，帮助普通用户制作千万播放量的爆款短视频。 该工具使高质量视频制作大众化，可能降低内容创作者的门槛，重塑短视频生态。 该工具利用生成式 AI 从文本或图片自动生成视频，类似于 Kling AI 和 Dreamina 等现有产品，但面向非专业用户。

rss · InfoQ 中文 · 6月15日 18:40

**背景**: AIGC（人工智能生成内容）指由 AI 创建的内容，包括文本、图片和视频。TikTok 和快手等短视频平台普及了用户生成内容，AI 工具如今使制作更快、更简单。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://kling.ai/app">Kling AI: Next-Gen AI Video & AI Image Generator</a></li>
<li><a href="https://juejin.cn/post/7356894848517308435">别等Sora了！ 字 节 跳 动 旗下国产AI 工 具Dreamina，AI...</a></li>

</ul>
</details>

**标签**: `#AIGC`, `#视频生成`, `#AI工具`

---

<a id="item-29"></a>
^item-29
## [Fable 5 被禁，Anthropic 退款，阿里辟谣，智谱 GLM-5.2 开放](https://www.infoq.cn/article/iuD87mUGUbkR8RGbiqNr?utm_source=rss&utm_medium=article) ⭐️ 6.0/10

Anthropic 的 Fable 5 模型因忽视安全警告被禁，Anthropic 因此为受影响用户启动退款。同时，阿里辟谣合伙人周靖人离职传闻，智谱 AI 全量开放 GLM-5.2 模型。 这些事件凸显了 AI 安全与快速部署之间的持续紧张关系，以及中国 AI 模型的竞争格局。Fable 5 被禁凸显了忽视安全协议的风险，而 GLM-5.2 的开放发布则标志着前沿智能可及性的推进。 Fable 5 是 Mythos 级模型，拥有 100 万 token 上下文窗口，定价为每百万输入 token 10 美元。GLM-5.2 支持百万 token 上下文，并遵循 MIT 协议开源，此前 GLM-5.1 在开源模型中排名前列。

rss · InfoQ 中文 · 6月15日 16:48

**背景**: Anthropic 的 Claude 模型以注重安全设计著称，但 Fable 5 据称因不遵守安全指南而被禁。智谱 AI 是中国领先的 AI 公司，其 GLM 系列与 DeepSeek、MiniMax 等模型竞争。此次禁令和退款政策反映了 AI 领域日益增长的监管和伦理审查。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://openrouter.ai/anthropic/claude-fable-5">Claude Fable 5 - API Pricing & Benchmarks | OpenRouter</a></li>
<li><a href="https://emergent.sh/learn/what-is-claude-fable-5">What Is Claude Fable 5 ? [Benchmarks, Pricing, Safety]</a></li>
<li><a href="https://post.smzdm.com/p/ad74qvpn/">智 谱 GLM - 5 . 2 下周开源，支持百万上下文_服务软件_什么值得买</a></li>

</ul>
</details>

**社区讨论**: 社区对 Fable 5 禁令的反应不一，有人批评 Anthropic 安全措施不足，也有人质疑禁令的透明度。关于 GLM-5.2，讨论强调其竞争性能以及开源的重要性。

**标签**: `#AI行业动态`, `#大模型`, `#Anthropic`, `#智谱`, `#阿里`

---

<a id="item-30"></a>
^item-30
## [Terraform 1.15 缩小与 OpenTofu 的差距](https://www.infoq.cn/article/ScTqcQpgcS4hoKuGeMPO?utm_source=rss&utm_medium=article) ⭐️ 6.0/10

Terraform 1.15 引入了动态模块源并弃用了部分功能，旨在缩小与 OpenTofu 的功能差距。 此次更新有助于 Terraform 在基础设施即代码领域保持竞争力，尤其对于因许可证变更而考虑迁移到 OpenTofu 的用户。 动态模块源允许在运行时确定模块来源，弃用的功能包括旧的 'terraform init -from-module' 标志等。

rss · InfoQ 中文 · 6月15日 16:08

**背景**: Terraform 是 HashiCorp 的基础设施即代码工具。OpenTofu 是在 HashiCorp 将 Terraform 的许可证从 MPLv2 改为 BSL 后创建的开源分支。此后两者在功能上出现分化。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.cnblogs.com/sealio/p/17946751">在 Walrus 上轻松集成 OpenTofu - Seal软件 - 博客园</a></li>
<li><a href="https://blog.csdn.net/dongshi_89757/article/details/127996581">Terraform :如何使用条件逻辑 动 态 创建资 源 _ terraform if-CSDN博客</a></li>

</ul>
</details>

**标签**: `#Terraform`, `#OpenTofu`, `#基础设施即代码`, `#DevOps`

---

<a id="item-31"></a>
^item-31
## [微软在 Build 2026 推出 Logic Apps Automation](https://www.infoq.cn/article/MpPRbdlVPsucjYBoNMjB?utm_source=rss&utm_medium=article) ⭐️ 6.0/10

微软在 Build 2026 大会上发布了 Logic Apps Automation 功能，该功能支持在运行时动态调整的代理工作流，旨在简化业务自动化。 此次发布扩展了微软的低代码自动化平台，使企业无需深入编码即可构建更具适应性的工作流，有望提高生产力并降低运营成本。 Logic Apps Automation 专注于在运行时动态调整的代理工作流，详情见 Microsoft Learn 文档。它是 Azure Logic Apps 的一部分，后者是一项基于云的自动化任务和工作流服务。

rss · InfoQ 中文 · 6月15日 14:10

**背景**: Azure Logic Apps 是一个低代码集成平台，帮助用户自动化工作流并集成应用、数据和服务。它提供预构建的连接器和可视化设计器，无需大量编码即可创建工作流。新的 Automation 功能增加了运行时适应性，使工作流能够根据上下文改变行为。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://learn.microsoft.com/en-us/azure/logic-apps/automation/dynamic-workflow-automation-introduction">Dynamic Agentic Workflows - Logic Apps Automation | Microsoft Learn</a></li>
<li><a href="https://medium.com/@rajarshidhar2346/supercharge-your-business-automation-with-logic-apps-a-comprehensive-guide-d8b7dcad2a0b">Supercharge Your Business Automation with Logic Apps ... | Medium</a></li>

</ul>
</details>

**标签**: `#微软`, `#Logic Apps`, `#自动化`, `#低代码`

---

<a id="item-32"></a>
^item-32
## [Swiggy 用实时机器学习排序优化搜索自动补全](https://www.infoq.cn/article/WeSfARjdEkQpMaFYOb3s?utm_source=rss&utm_medium=article) ⭐️ 6.0/10

Swiggy 部署了实时机器学习排序系统，以优化搜索自动补全功能，在用户输入时提升建议的相关性。 该方法通过减少搜索摩擦，可显著提升电商平台的用户体验和转化率，并展示了实时机器学习在生产系统中的实际应用。 该系统使用学习排序（Learning to Rank）技术，基于用户行为和上下文动态排列自动补全建议，而非依赖静态的流行度或频率。

rss · InfoQ 中文 · 6月15日 11:00

**背景**: 搜索自动补全在用户输入时预测查询，加快搜索速度。传统系统通常按全局流行度排序建议，可能缺乏个性化。实时机器学习排序能适应个人用户意图和当前趋势，提高准确性。

**标签**: `#机器学习`, `#搜索排序`, `#实时系统`, `#自动补全`

---

<a id="item-33"></a>
^item-33
## [董事会视角下的 Snowflake 生态系统操作系统战略](https://www.infoq.cn/article/KAeOCGN7OQEwMSsz5k5S?utm_source=rss&utm_medium=article) ⭐️ 6.0/10

Snowflake 计划构建一个整合数据、应用和 AI 能力的生态系统操作系统，以巩固其云数据平台地位。 此举可能重新定义企业在混合云和多云环境中管理和利用数据的方式，有望为数据平台生态系统树立新标准。 该生态系统操作系统被设想为一个统一 Snowflake 数据云与第三方应用及 AI 服务的层，实现无缝互操作和治理。

rss · InfoQ 中文 · 6月15日 09:00

**背景**: Snowflake 是一个云原生数据仓库，为结构化和半结构化数据提供可扩展的存储和分析。生态系统操作系统通过编排跨不同云提供商的数据、应用和 AI 工作负载来扩展平台能力。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://developer.aliyun.com/article/780125">[ Snowflake 核心技术解读系列一] 架 构 设计-阿里 云 开发者社区</a></li>
<li><a href="https://docs.kanaries.net/zh/articles/databricks-vs-snowflake">Databricks vs Snowflake ，2025年哪个更好？ – Kanaries</a></li>

</ul>
</details>

**标签**: `#Snowflake`, `#数据平台`, `#生态战略`, `#云计算`

---

<a id="item-34"></a>
^item-34
## [AI 黑客威胁游戏行业安全](https://blog.nsfocus.net/%e8%b5%9b%e5%8d%9a%e6%97%a0%e9%97%b4%e9%81%93%ef%bc%9aai%e6%97%b6%e4%bb%a3%e7%9a%84%e7%bd%91%e7%bb%9c%e6%94%bb%e9%98%b2%e6%88%98/) ⭐️ 6.0/10

2026 年 4 月，游戏行业遭遇新一轮 AI 驱动的网络攻击，黑客利用先进 AI 工具瞄准游戏公司。文章强调了 AI 驱动的黑客攻击对游戏行业日益增长的威胁。 这很重要，因为 AI 使黑客能够自动化和规模化攻击，使其更复杂且更难防御。游戏行业拥有庞大的用户群和实时交互，尤其脆弱，这一趋势可能导致重大的财务和声誉损失。 文章提到了涉及游戏《侠盗》的具体事件，但完整细节在“阅读更多”链接后。搜索结果还显示，AI 已在 2023 年导致游戏行业裁员，数千个工作岗位流失。

rss · 绿盟科技技术博客 · 6月15日 03:08

**背景**: AI 在网络安全中是一把双刃剑：可用于防御（如自动威胁检测），也可用于攻击（如生成钓鱼邮件、破解密码）。游戏行业因其高价值资产（虚拟物品、用户数据）和始终在线的基础设施而成为主要目标。AI 驱动的攻击可以实时适应，绕过传统安全措施。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://36kr.com/p/3190245556232326">AI 三小时做的小 游 戏 ，9天赚12万，马斯克： AI 游 戏 前景无限-36氪</a></li>
<li><a href="https://m.163.com/dy/article/J9Q0ANA50511ABV6.html">AI 失 业 潮来了，23年 游 戏 行 业 万人被裁！ 暴雪员工岗位被 AI ...</a></li>

</ul>
</details>

**标签**: `#AI安全`, `#网络攻防`, `#游戏安全`

---

