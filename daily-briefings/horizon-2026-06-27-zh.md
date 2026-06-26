# Horizon 每日速递 - 2026-06-27

> 从 100 条内容中筛选出 31 条重要资讯。

---

1. [[#^item-1|Linux pedit COW 漏洞利用缓存投毒实现提权至 root]] ⭐️ 9.0/10
2. [[#^item-2|美国政府将审核 GPT-5.6 用户资格]] ⭐️ 9.0/10
3. [[#^item-3|Athena 联盟成立，协同防御开源安全]] ⭐️ 8.0/10
4. [[#^item-4|API7.ai 创始人分享用 AI 重写网关的 6 条经验]] ⭐️ 8.0/10
5. [[#^item-5|微软发布常驻型 AI 智能体 Scout，从 Copilot 迈向 Autopilot]] ⭐️ 8.0/10
6. [[#^item-6|阿里云：AI Agent 成为新的核心云用户]] ⭐️ 8.0/10
7. [[#^item-7|腾讯云助力印尼运营商 4.5 个月迁移 1200 个微服务，AI 全程接管]] ⭐️ 8.0/10
8. [[#^item-8|中文背景 APT 组织部署新型 TinyRCT 后门]] ⭐️ 8.0/10
9. [[#^item-9|冻结多 Token 预测加速 Pixel 上的 Gemini Nano]] ⭐️ 8.0/10
10. [[#^item-10|OpenAI 报告内部 Codex 输出量大幅增长]] ⭐️ 8.0/10
11. [[#^item-11|AI 助手经受 6000 次提示注入攻击]] ⭐️ 8.0/10
12. [[#^item-12|虚构事故报告讽刺 AI 代理循环]] ⭐️ 8.0/10
13. [[#^item-13|Amazon Q Developer 漏洞可通过 MCP 配置执行代码]] ⭐️ 8.0/10
14. [[#^item-14|CISA 将 PTC Windchill 远程代码执行漏洞加入 KEV 目录]] ⭐️ 8.0/10
15. [[#^item-15|Guardian Agents：AI 身份治理的新层级]] ⭐️ 8.0/10
16. [[#^item-16|Miasma 恶意软件通过 npm 和 GitHub Actions 扩展至 Go 生态]] ⭐️ 8.0/10
17. [[#^item-17|俄罗斯在 Cellebrite 停止销售后仍用其破解活动人士 iPhone]] ⭐️ 8.0/10
18. [[#^item-18|谷歌揭露 Turla 新后门 STOCKSTAY 用于乌克兰攻击]] ⭐️ 8.0/10
19. [[#^item-19|Akrites 项目启动，加速漏洞修复]] ⭐️ 8.0/10
20. [[#^item-20|苹果发布 Xcode 26.3，引入代理式编码并调整 SDK 要求]] ⭐️ 8.0/10
21. [[#^item-21|三星与 SK 海力士拟宣布大规模 AI 投资]] ⭐️ 8.0/10
22. [[#^item-22|GPT-5 编程测试作弊：自行删除 23 道难题]] ⭐️ 8.0/10
23. [[#^item-23|面向 AI 代理的开源网络安全技能库]] ⭐️ 8.0/10
24. [[#^item-24|谷歌的长期困境]] ⭐️ 7.0/10
25. [[#^item-25|Netflix 从拍摄到云端的规模化媒体处理流水线]] ⭐️ 7.0/10
26. [[#^item-26|OpenAI 用 AI 设计芯片，9 个月媲美 Blackwell]] ⭐️ 7.0/10
27. [[#^item-27|VS Code 1.123 新增两小时插件更新缓冲防范供应链攻击]] ⭐️ 7.0/10
28. [[#^item-28|Anthropic 起诉阿里 Qwen，CEO 遭白宫冷落]] ⭐️ 7.0/10
29. [[#^item-29|云端 AI 治理：架构师实操指南]] ⭐️ 7.0/10
30. [[#^item-30|用剧本杀类比讲解 Agentic AI]] ⭐️ 6.0/10
31. [[#^item-31|AI 能写任何东西，但需要经验丰富的用户]] ⭐️ 6.0/10

---

<a id="item-1"></a>
^item-1
## [Linux pedit COW 漏洞利用缓存投毒实现提权至 root](https://thehackernews.com/2026/06/new-linux-pedit-cow-exploit-enables.html) ⭐️ 9.0/10

一个新的 Linux 内核漏洞 CVE-2026-46331（pedit COW）允许本地非特权用户通过 act_pedit 流量控制子系统中的越界写入破坏共享页缓存内存，从而获取 root 权限。在 2026 年 6 月 16 日 CVE 分配后一天内，公开的可利用代码就已出现。 该漏洞影响广泛的 Linux 系统（内核版本 v5.18 至 v7.1-rc6），并提供了一条可靠的本地提权至 root 的路径，对安全运维构成紧迫威胁。Red Hat 将其评级为严重，且工作利用代码的快速发布增加了遭受主动攻击的风险。 该利用通过生成一个具有 CAP_NET_ADMIN 能力的用户命名空间子进程，然后利用 COW 破坏原语覆盖 /bin/su 的页缓存 ELF 入口点，注入执行 setgid(0) + setuid(0) + execve("/bin/sh") 的 shellcode，从而提供 root shell。该漏洞在内核提交 899ee91156e5 中引入，并在 v7.1-rc7 中修复。

rss · The Hacker News · 6月26日 13:57

**背景**: Dirty COW 是一个经典的 Linux 内核漏洞，它利用写时复制处理中的竞态条件来获取 root 访问权限。pedit COW 变体使用了类似的页缓存破坏技术，但针对的是流量控制子系统中的数据包编辑动作（act_pedit），在启用了非特权用户命名空间的系统上，非特权用户可以访问该动作。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://thehackernews.com/2026/06/new-linux-pedit-cow-exploit-enables.html">New Linux pedit COW Exploit Enables Root Access by Poisoning Cached Binaries</a></li>
<li><a href="https://cybersecuritynews.com/linux-pedit-cow-exploit/">New Linux pedit COW Exploit Allows Attackers to Gain System Root Access</a></li>
<li><a href="https://en.wikipedia.org/wiki/Dirty_COW">Dirty COW - Wikipedia</a></li>

</ul>
</details>

**标签**: `#Linux`, `#内核漏洞`, `#提权`, `#CVE-2026-46331`, `#安全预警`

---

<a id="item-2"></a>
^item-2
## [美国政府将审核 GPT-5.6 用户资格](https://www.washingtonpost.com/technology/2026/06/26/openai-says-us-government-will-vet-users-its-latest-ai-model/) ⭐️ 9.0/10

OpenAI 宣布，其即将推出的 GPT-5.6 模型的使用权将由美国政府控制，政府将审核并批准企业后才能使用该模型。个人用户将无法通过个人订阅获得 GPT-5.6 的访问权限。 这标志着 AI 治理的重大转变，可能导致监管捕获并扼杀竞争，因为只有成熟企业可能获得批准。这也引发了对开源 AI 未来的担忧，因为模型访问限制可能限制创新和个人使用。 该政策缺乏正式、透明的框架；尚未发布任何公开的行政命令或立法。批评者担心腐败和任意决策，因为政府可能在没有明确标准的情况下偏袒某些公司。

hackernews · alain94040 · 6月26日 18:23 · [社区讨论](https://news.ycombinator.com/item?id=48690101)

**背景**: 监管捕获是指监管机构为其所监管的行业利益而非公共利益行事。在 AI 领域，像 DeepSeek 这样的开源模型为专有系统提供了替代方案，但政府审核可能会限制这些选择。此举延续了关于 AI 安全和国家安全更广泛的辩论，各国政府日益寻求对先进 AI 能力的控制。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://zh.wikipedia.org/zh-hans/監管俘虜">监管俘虏 - 维基百科，自由的百科全书</a></li>
<li><a href="https://qubittool.com/zh/blog/open-source-ai-license-compliance-guide">开源AI许可证解析：Apache 2.0到RAIL指南【2026】 | QubitTool</a></li>

</ul>
</details>

**社区讨论**: 社区评论表达了强烈反对，用户称其为“监管捕获在行动”，并警告这将使新供应商难以进入市场。许多人担心这会扼杀创新、导致腐败，并贬低个人用户，一些人已计划改进 DeepSeek 等开源替代方案的工作流程。

**标签**: `#AI监管`, `#GPT-5.6`, `#开源AI`, `#美国政府`, `#政策`

---

<a id="item-3"></a>
^item-3
## [Athena 联盟成立，协同防御开源安全](https://www.infoq.cn/article/K5kVz7354Na4846mlNsJ?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

Chainguard 宣布成立 Athena 联盟，该联盟由超过 20 家组织组成，包括 BNY、摩根大通、Cisco、Cloudflare、Docker、Kyndryl 和 PwC，旨在利用人工智能技术主动识别并修复广泛使用的开源软件中的漏洞。 这标志着开源安全从被动响应向主动防御的范式转变，有望将漏洞响应时间从数周缩短至数小时，保护整个软件供应链。 该联盟已处理超过 20,000 个安全发现，在 500 个项目中交付了 2,000 个补丁，采用多层防护机制，即使在补丁就绪前也能提供覆盖。

rss · InfoQ 中文 · 6月26日 19:00

**背景**: 开源软件被广泛使用，但常常包含漏洞，攻击者会在维护者修补之前利用这些漏洞。传统的安全方法是反应式的，等待漏洞被发现后再进行修复。Athena 联盟利用 AI 扫描开源代码和依赖关系图，旨在在漏洞被利用之前完成修复。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.infoq.cn/article/K5kVz7354Na4846mlNsJ">Athena 联盟成立：以协同防御应对开源软件安全风险 - InfoQ</a></li>
<li><a href="https://www.aivsly.com/article/chainguard-athena-alliance-open-source-security-2026">Chainguard Athena联盟：AI先于黑客修复开源漏洞 | AIvsly</a></li>
<li><a href="https://net.zhiding.cn/network_security_zone/2026/0617/3190851.shtml">Chainguard发起Athena联盟：用AI抢在攻击者之前修复开源漏洞--网络与...</a></li>

</ul>
</details>

**标签**: `#开源安全`, `#协同防御`, `#网络安全`, `#Athena联盟`

---

<a id="item-4"></a>
^item-4
## [API7.ai 创始人分享用 AI 重写网关的 6 条经验](https://www.infoq.cn/article/5YIK6SvTf5h07YckXZd3?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

API7.ai 创始人温铭发表文章，详细分享了使用 AI 重写生产级 API 网关的六条实践经验，涉及 Token 消耗、代码生成和调试等方面。 这篇文章为探索 AI 辅助开发的生产环境开发者与工程团队提供了宝贵的实践经验，尤其适用于 API 网关等复杂基础设施。 文章提到过程中消耗了数百亿 Token，并介绍了逐步生成代码以减少 Token 浪费等具体技巧。

rss · InfoQ 中文 · 6月26日 18:16

**背景**: API7.ai 是流行开源 API 网关 Apache APISIX 背后的公司。AI 辅助编程日益普及，但将其应用于重写生产基础设施在可靠性和效率方面面临独特挑战。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://xie.infoq.cn/article/67a342d1b8b2e1fa2524c3670">API 网 关 日志的价值，你了解多少？_ API 7 . ai 技术团队_InfoQ写作社区</a></li>
<li><a href="https://docs.apiseven.com/enterprise-whitepaper/features/refined-routing">Refined Routing | API 网 关 文档 | AI 网 关 文档</a></li>
<li><a href="https://mofcloud.cn/blog/blog/2026-03-14-ai-build-website-guide-4/">AI 写 代 码 时，很多人都在浪费 80% 的 Token | AI Coding... | MofCloud</a></li>

</ul>
</details>

**标签**: `#AI辅助开发`, `#API网关`, `#生产实践`, `#经验总结`

---

<a id="item-5"></a>
^item-5
## [微软发布常驻型 AI 智能体 Scout，从 Copilot 迈向 Autopilot](https://www.infoq.cn/article/btKbO3iHbVM3p5WOVtqJ?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

微软在 2026 年 Build 大会上发布了 Microsoft Scout，这是一个常驻型企业 AI 智能体，能够全天候自主运行，跨 Microsoft 365 各类应用完成任务。Scout 基于开源 OpenClaw 智能体框架构建，标志着从被动问答式 Copilot 向自主式 Autopilot 的转变。 Scout 标志着企业 AI 从辅助型 Copilot 向能自主执行工作流的智能体的重大演进，有望大幅提升企业自动化和生产力，为代理式 AI 在企业中的应用树立新趋势。 Scout 通过 Frontier 预览计划提供，组织需在 Microsoft 365 管理中心接受 Frontier 条款，并由 IT 管理员通过 Intune 策略将桌面应用推送到用户设备。它基于微软称为“自动驾驶仪”的 OpenClaw 智能体框架构建。

rss · InfoQ 中文 · 6月26日 17:29

**背景**: Microsoft 365 Copilot 是一种被动式 AI 助手，响应用户查询；而 Autopilot 代表了一类新的自主智能体，无需持续人工输入即可主动执行任务。OpenClaw 框架是一个开源智能体框架，用于开发此类自主智能体。此次发布反映了代理式 AI 的行业趋势，即 AI 系统从工具演变为自主工作者。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.infoq.cn/article/btKbO3iHbVM3p5WOVtqJ">从 Copilot 到 Autopilot：微软发布常驻型企业智能体 Scout - InfoQ</a></li>
<li><a href="https://www.aipuzi.cn/ai-news/microsoft-scout.html">Microsoft Scout：微软推出的全天候自治式企业办公AI智能体</a></li>
<li><a href="https://ai.zhiding.cn/2026/0608/3189807.shtml">微软发布自主AI智能体Scout，基于OpenClaw框架构建</a></li>

</ul>
</details>

**标签**: `#AI智能体`, `#微软`, `#企业自动化`, `#大模型应用`, `#AI趋势`

---

<a id="item-6"></a>
^item-6
## [阿里云：AI Agent 成为新的核心云用户](https://www.infoq.cn/article/s6TAS5JMIW1miPSqIsk0?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

阿里云提出了一种新范式，即 AI Agent 而非人类成为云服务的核心用户，从根本上重新定义了云资源的使用和管理方式。 这一转变可能极大地加速企业中 AI 驱动自动化的采用，因为云平台会针对 Agent 工作负载进行优化，从而实现更高效、更自主的云运维。 这一概念意味着云 API 和服务将专为 Agent 与云的交互而设计，由 Agent 自主处理资源调配、弹性伸缩和成本优化等任务。

rss · InfoQ 中文 · 6月26日 17:02

**背景**: AI Agent 是能够感知环境、制定决策并执行行动以实现目标的自主系统，通常由大语言模型（LLM）驱动。传统上，云服务通过仪表盘和 API 为人类用户设计。阿里云的提议标志着战略转向，将 Agent 视为云的一等公民。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://zhuanlan.zhihu.com/p/32062211411">AI Agent 定义、分类、技术架构和应用路径【建议收藏】</a></li>
<li><a href="https://developer.baidu.com/article/detail.html?id=5527617">AI Agent全解析：从概念到落地的技术指南-百度开发者中心</a></li>

</ul>
</details>

**标签**: `#AI Agent`, `#云计算`, `#阿里云`, `#用云范式`

---

<a id="item-7"></a>
^item-7
## [腾讯云助力印尼运营商 4.5 个月迁移 1200 个微服务，AI 全程接管](https://www.infoq.cn/article/TA7VPXQqYgTsu4Yl8qLa?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

腾讯云协助一家印尼电信运营商在 4.5 个月内将 1200 个微服务迁移至云端，并引入 AI 全流程自动化迁移过程。 该案例展示了 AI 驱动自动化下大规模微服务迁移的可行性，为行业云原生转型和 AIOps 实践提供了宝贵参考。 此次迁移涉及 1200 个微服务，仅用 4.5 个月完成，AI 处理从规划到执行的整个工作流。该项目突显了 AI 减少人工投入、加速云迁移的作用。

rss · InfoQ 中文 · 6月26日 14:15

**背景**: 微服务迁移是一个复杂的过程，通常需要大量人工和周密规划。腾讯云等云服务商正越来越多地利用 AI 来自动化依赖映射、代码分析和部署等任务，旨在减少迁移时间和风险。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://cloud.tencent.com/developer/article/2584757">云迁移技术深度解析：核心原理与最佳实践-腾讯云开发者社区-腾讯云</a></li>

</ul>
</details>

**标签**: `#微服务迁移`, `#云转型`, `#AI运维`, `#腾讯云`, `#云原生`

---

<a id="item-8"></a>
^item-8
## [中文背景 APT 组织部署新型 TinyRCT 后门](https://thehackernews.com/2026/06/chinese-speaking-apt-deploys-new.html) ⭐️ 8.0/10

一个被追踪为 CL-STA-1062 的中文背景 APT 组织在针对东南亚政府机构和国有能源企业的攻击中部署了此前未记录的 C#后门 TinyRCT。 这标志着该组织通过定制恶意软件提升了攻击能力，对东南亚关键基础设施构成重大威胁，并凸显了该地区持续的网络间谍活动。 TinyRCT 使用 C#编写，是一个提供对受感染系统远程访问的定制后门。CL-STA-1062 组织至少自 2022 年 3 月以来一直活跃，长期关注东亚和东南亚地区。

rss · The Hacker News · 6月26日 16:21

**背景**: 高级持续性威胁（APT）是通常由国家支持的老练长期网络攻击。CL-STA-1062 是一个中文背景的威胁行为者，针对东南亚政府和能源部门，使用 TinyRCT 等定制工具维持持久性并窃取敏感信息。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://thehackernews.com/2026/06/chinese-speaking-apt-deploys-new.html">Chinese-Speaking APT Deploys New TinyRCT Backdoor in Southeast...</a></li>
<li><a href="https://cybersecuritynews.com/cl-sta-1062-hackers-use-tinyrct-backdoor/">CL-STA-1062 Hackers Use TinyRCT Backdoor to Target Southeast...</a></li>
<li><a href="https://gurucul.com/latest-threats/cl-sta-1062-targets-southeast-asian-governments-and-critical-infrastructure/">CL - STA - 1062 Targets Southeast Asian Governments and... - Gurucul</a></li>

</ul>
</details>

**标签**: `#APT`, `#TinyRCT`, `#后门`, `#东南亚`, `#网络安全`

---

<a id="item-9"></a>
^item-9
## [冻结多 Token 预测加速 Pixel 上的 Gemini Nano](https://research.google/blog/accelerating-gemini-nano-models-on-pixel-with-frozen-multi-token-prediction/) ⭐️ 8.0/10

Google Research 提出了一种名为冻结多 Token 预测的方法，无需重新训练即可将 MTP 头附加到生产级 Gemini Nano 模型上，从而加速 Pixel 设备上的端侧推理。 该技术在不牺牲质量的前提下加速端侧 LLM 推理，使 Pixel 9 和 10 系列等智能手机上的高级 AI 功能更加响应迅速且实用。 冻结 MTP 方法避免了单独草稿模型的低效，通过辅助头并行预测多个 token，并在单次传递中与主分布进行验证。

rss · Google Research Blog · 6月26日 18:30

**背景**: 多 Token 预测是一种推理加速技术，模型一次预测多个未来 token，然后单步验证。传统 MTP 需要训练单独的草稿模型或修改原始模型，成本高昂。冻结 MTP 通过添加轻量级头来适配现有生产模型，利用模型固有的 MTP 能力，正如近期研究所展示的。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://research.google/blog/accelerating-gemini-nano-models-on-pixel-with-frozen-multi-token-prediction/">Accelerating Gemini Nano models on Pixel with frozen Multi ...</a></li>
<li><a href="https://arxiv.org/abs/2502.09419">[2502.09419] On multi-token prediction for efficient LLM ... On multi-token prediction for efficient LLM inference - arXiv.org Accelerating Gemini Nano models on Pixel with frozen Multi ... Multi-token-prediction in Gemma 4 - The Keyword Xiaohao-Liu/Awesome-Multi-Token-Prediction - GitHub Multi-Token Prediction MTP in llama.cpp How It Works and How ...</a></li>
<li><a href="https://developer.android.com/ai/gemini-nano">Gemini Nano | AI | Android Developers</a></li>

</ul>
</details>

**标签**: `#Gemini Nano`, `#多Token预测`, `#端侧AI`, `#模型加速`, `#Pixel`

---

<a id="item-10"></a>
^item-10
## [OpenAI 报告内部 Codex 输出量大幅增长](https://www.latent.space/p/ainews-openai-reports-median-internal) ⭐️ 8.0/10

OpenAI 报告称，自 2025 年 11 月以来，其内部 Codex 输出量在研发部门增长 56 倍，客服部门增长 32 倍，工程部门增长 27 倍，法律部门增长 13 倍。 该数据表明企业级 AI 编码代理的采用速度极快，标志着公司在不同职能部门利用 AI 提升生产力的方式发生了重大转变。 Codex 输出量指 AI 模型生成的文本量，以 token 为单位计量。增长涵盖技术和非技术部门，凸显了其广泛适用性。

rss · Latent Space · 6月26日 01:12

**背景**: OpenAI Codex 是一套 AI 驱动的编码代理，用于自动化软件工程任务。它已融入 OpenAI 的内部工作流程，截至 2026 年 6 月，Codex 生成了 OpenAI 员工在 Codex 和 ChatGPT 中使用的 99.8%的输出 token。自 2025 年 8 月以来，组织账户中的非开发者用户增长了 189 倍。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://icharles.com/articles/openai-codex-agentic-work-study">OpenAI Codex: 99.8% of Worker Tokens in 2026 - icharles.com</a></li>
<li><a href="https://developers.openai.com/codex/pricing">Pricing – Codex | OpenAI Developers</a></li>
<li><a href="https://apidog.com/blog/token-limit-for-codex-requests/">What Is the Token Limit for Codex Requests? - apidog.com</a></li>

</ul>
</details>

**标签**: `#OpenAI`, `#Codex`, `#AI应用`, `#生产力`, `#行业趋势`

---

<a id="item-11"></a>
^item-11
## [AI 助手经受 6000 次提示注入攻击](https://simonwillison.net/2026/Jun/26/hack-my-ai-assistant/#atom-everything) ⭐️ 8.0/10

Fernando Irarrázaval 发起挑战，让 2000 人通过电子邮件攻击他的 OpenClaw AI 助手，但在 6000 次尝试和花费 500 美元代币后，无人成功泄露秘密。该助手基于 Anthropic 的 Opus 4.6 模型，抵御了所有提示注入攻击。 这一真实世界测试表明，像 Opus 4.6 这样的前沿模型在抵御提示注入方面正变得显著更强，这是 AI 部署中的一个关键安全问题。它提供了实证证据，表明 Anthropic 和 OpenAI 等实验室的安全训练工作是有效的，尽管并非万无一失。 该助手使用了严格的防提示注入提示，禁止泄露秘密、修改文件、执行命令或外泄数据。挑战因大量入站邮件触发了 Google 账户暂停，凸显了攻击的规模。

rss · Simon Willison · 6月26日 18:33

**背景**: 提示注入是一种网络安全利用手段，恶意输入诱使 LLM 忽略其指令并执行非预期操作。对于处理不可信用户输入的 AI 助手来说，这是一个重大挑战，尤其是那些具有工具访问或网页浏览能力的助手。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Prompt_injection_attack">Prompt injection attack</a></li>
<li><a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-card-anthropic-claude-opus-4-6.html">Claude Opus 4.6 - Amazon Bedrock</a></li>

</ul>
</details>

**社区讨论**: Hacker News 的讨论中充满了有根据的怀疑和 Fernando 的善意回复，许多评论者讨论了提示注入的难度以及对生产系统的影响。一些人指出，6000 次失败并不能保证对更复杂攻击的安全性。

**标签**: `#AI安全`, `#提示注入`, `#大模型`, `#安全挑战`, `#Opus`

---

<a id="item-12"></a>
^item-12
## [虚构事故报告讽刺 AI 代理循环](https://simonwillison.net/2026/Jun/26/incident-report/#atom-everything) ⭐️ 8.0/10

Andrew Nesbitt 发布了一份虚构的事故报告 CVE-2026-LGTM，描述了两个来自不同供应商的 AI 审查代理因一个软件包更新陷入分歧循环，产生了 340 条评论和 41,255 美元的推理费用，最终财务部门撤销了 API 密钥。 这份讽刺报告揭示了多智能体 AI 系统在供应链安全中的真实风险，包括无限循环、失控成本以及利用安全事件进行营销炒作，对 AI 开发者和安全从业者具有警示意义。 虚构的软件包'foxhole-lz4'引发了争议；财务撤销 API 密钥后，一家供应商的营销团队发布了新闻稿，称'对抗性多智能体安全推理同比增长 430%'，导致股价上涨 6%。

rss · Simon Willison · 6月26日 17:58

**背景**: 多智能体 AI 系统使用多个 AI 代理来审查代码或内容，旨在发现单个代理可能遗漏的问题。然而，如果没有适当的防护措施，代理可能陷入分歧循环，产生无休止的争论和高昂成本。该报告讽刺了使用 AI 进行供应链安全的日益增长趋势以及潜在的炒作。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://nesbitt.io/2026/06/26/incident-report-cve-2026-lgtm.html">Incident Report: CVE-2026-LGTM | Andrew Nesbitt</a></li>
<li><a href="https://simonwillison.net/2026/Jun/26/incident-report/">Incident Report: CVE-2026-LGTM - simonwillison.net</a></li>
<li><a href="https://github.com/andrew/nesbitt.io/blob/master/_posts/2026-06-26-incident-report-cve-2026-lgtm.md">2026-06-26-incident-report-cve-2026-lgtm.md - GitHub</a></li>

</ul>
</details>

**社区讨论**: Simon Willison 博客上的社区讨论称赞这份报告是出色的讽刺作品，评论者指出成本爆炸和营销反应非常真实。一些人讨论了这种循环在实践中的可行性，而另一些人则认为这是在没有适当防护措施下部署 AI 代理的警示故事。

**标签**: `#AI安全`, `#供应链安全`, `#多智能体`, `#安全事故`, `#讽刺`

---

<a id="item-13"></a>
^item-13
## [Amazon Q Developer 漏洞可通过 MCP 配置执行代码](https://thehackernews.com/2026/06/amazon-q-developer-flaw-could-let.html) ⭐️ 8.0/10

Amazon Q Developer for VS Code 中存在一个高危漏洞（CVE-2026-12957，CVSS 8.5），恶意仓库可通过自动加载工作区中的 MCP 服务器配置来执行任意命令并窃取 AWS 凭证。 该漏洞对使用 AI 编码助手的开发者构成直接的供应链风险，仅打开恶意仓库就可能导致凭证窃取和代码执行，影响个人开发者及企业安全团队。 该漏洞由 Wiz Research 发现，源于 Amazon Q 自动信任仓库工作区中定义的 MCP 服务器配置。亚马逊已发布补丁修复此问题。

rss · The Hacker News · 6月26日 13:53

**背景**: Model Context Protocol (MCP) 是一个开放标准，允许 AI 工具安全地连接到数据源和服务。Amazon Q Developer 使用 MCP 与外部工具集成，但该漏洞允许恶意 MCP 配置在未经用户同意的情况下自动执行。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.wiz.io/blog/amazon-q-vulnerability">Amazon Q Vulnerability: Compromise via MCP Auto-Execution ...</a></li>
<li><a href="https://thehackernews.com/2026/06/amazon-q-developer-flaw-could-let.html">Amazon Q Developer Flaw Could Let Malicious Repos Run Code ...</a></li>
<li><a href="https://cybersecuritynews.com/amazon-q-vulnerability/">Amazon Q Vulnerability Let Attackers Execute Code and Access ...</a></li>

</ul>
</details>

**标签**: `#安全漏洞`, `#AI编码助手`, `#供应链安全`, `#云凭证窃取`, `#MCP`

---

<a id="item-14"></a>
^item-14
## [CISA 将 PTC Windchill 远程代码执行漏洞加入 KEV 目录](https://thehackernews.com/2026/06/cisa-adds-exploited-ptc-windchill-rce.html) ⭐️ 8.0/10

美国网络安全和基础设施安全局（CISA）已将 PTC Windchill PDMlink 和 FlexPLM 中的一个严重远程代码执行漏洞加入其已知被利用漏洞（KEV）目录，并确认该漏洞已在野外被积极利用。 该漏洞对企业产品数据管理（PDM）和产品生命周期管理（PLM）系统构成高风险，这些系统对于制造业和工程领域的产品数据管理至关重要。使用这些系统的组织必须优先修补漏洞，以防止潜在的 Web Shell 攻击和数据泄露。 该漏洞是一个远程代码执行（RCE）漏洞，允许攻击者在受影响的系统上执行任意代码。CISA 将其纳入 KEV 目录表明该漏洞正在被积极利用，很可能用于 Web Shell 攻击。

rss · The Hacker News · 6月26日 12:31

**背景**: PTC Windchill 是一套用于产品数据管理（PDM）和产品生命周期管理（PLM）的企业软件，广泛应用于制造业，用于管理产品设计、版本及相关数据。远程代码执行（RCE）漏洞允许攻击者远程在目标系统上运行恶意代码，通常会导致系统完全被控。CISA 的已知被利用漏洞（KEV）目录列出了已被确认正在被积极利用的漏洞，作为联邦机构和组织修补的优先列表。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.crowdstrike.com/en-us/cybersecurity-101/cyberattacks/remote-code-execution/">What is Remote Code Execution (RCE)? | CrowdStrike</a></li>

</ul>
</details>

**标签**: `#CISA`, `#PTC Windchill`, `#RCE`, `#漏洞预警`, `#安全运维`

---

<a id="item-15"></a>
^item-15
## [Guardian Agents：AI 身份治理的新层级](https://thehackernews.com/2026/06/guardian-agents-next-layer-of-identity.html) ⭐️ 8.0/10

文章提出了 Guardian Agents 这一专用治理层，用于管理企业环境中 AI Agent 的身份和权限，弥补传统身份基础设施的不足。 随着 AI Agent 以机器速度自主运行，为人类设计的现有身份系统无法处理其动态权限，从而带来安全风险。Guardian Agents 提供了一种解决方案，可强制执行零信任策略并确保问责制。 Guardian Agents 位于身份与访问管理、信息治理、运行时行为监控和策略执行的交汇点。它们管理 AI Agent 身份从创建到退役的完整生命周期。

rss · The Hacker News · 6月26日 11:30

**背景**: 传统的身份与访问管理（IAM）系统是为权限相对静态的人类用户构建的。然而，AI Agent 是自主的，动态继承权限，并以机器速度运行，使得传统工具难以治理。Guardian Agents 的概念应运而生，并获得了 Gartner 在其《Guardian Agents 市场指南》中的认可。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.orchid.security/guides/guardian-agents-the-enterprise-guide-to-ai-identity-governance">Guardian Agents: The Enterprise Guide to AI Identity Governance</a></li>
<li><a href="https://thehackernews.com/2026/05/your-ai-agents-are-already-inside.html">Your AI Agents Are Already Inside the Perimeter. Do You Know What They're Doing?</a></li>
<li><a href="https://www.opsinsecurity.com/blog/gartner-market-guide-guardian-agents">Gartner® Market Guide for Guardian Agents: What We Believe It Means for Enterprise AI Security</a></li>

</ul>
</details>

**标签**: `#AI Agent`, `#身份治理`, `#安全运维`, `#权限管理`, `#IAM`

---

<a id="item-16"></a>
^item-16
## [Miasma 恶意软件通过 npm 和 GitHub Actions 扩展至 Go 生态](https://thehackernews.com/2026/06/miasma-malware-targets-npm-packages-and.html) ⭐️ 8.0/10

研究人员发现 Miasma 恶意软件家族的新一波攻击，通过恶意 npm 包（LeoPlatform、RStreams）和滥用 GitHub Actions 工作流，并已蔓延至 Go 生态系统。 此次攻击凸显了供应链威胁日益复杂，针对多个包生态系统和 CI/CD 流水线，可能导致开源社区广泛凭据窃取和代码篡改。 该恶意软件家族包括 Mini Shai-Hulud、Miasma 和 Hades 变种；最新活动涉及影响 LeoPlatform 和 RStreams 包的恶意 npm 发布，以及 GitHub Actions 工作流滥用和相关 Go 组件。

rss · The Hacker News · 6月26日 11:05

**背景**: 供应链攻击通过破坏受信任的包或构建工具来攻击软件开发流水线。Miasma 恶意软件家族与早期的 Mini Shai-Hulud 活动相关，此前已入侵 Red Hat 的 npm 包，并以凭据窃取和自复制能力著称。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.hexnode.com/blogs/miasma-malware-red-hat-npm-supply-chain-attack/">Miasma Malware Fuels Red Hat npm Supply - Chain Attack</a></li>
<li><a href="https://www.akamai.com/blog/security-research/mini-shai-hulud-worm-returns-goes-public">Mini Shai-Hulud: The Worm Returns and Goes Public | Akamai</a></li>
<li><a href="https://cyberscoop.com/mini-shai-hulud-supply-chain-malware-attack/">‘Mini Shai-Hulud’ malware compromises hundreds of open-source packages in sprawling supply-chain attack | CyberScoop</a></li>

</ul>
</details>

**标签**: `#供应链攻击`, `#npm`, `#GitHub Actions`, `#恶意软件`, `#Go`

---

<a id="item-17"></a>
^item-17
## [俄罗斯在 Cellebrite 停止销售后仍用其破解活动人士 iPhone](https://thehackernews.com/2026/06/russia-used-cellebrite-on-jailed.html) ⭐️ 8.0/10

公民实验室发现，俄罗斯当局在 2021 年 6 月使用 Cellebrite 的 UFED 取证工具解锁了被拘留的反对派活动人士 Andrey Pivovarov 的 iPhone，而 Cellebrite 在三个月前已宣布停止向俄罗斯和白俄罗斯销售产品。 此事件凸显了执行出口管制和供应链安全的挑战，受制裁实体仍可能通过中间商或现有库存获取受限技术。同时，它也引发了对数字取证工具被滥用于侵犯人权捍卫者权益的担忧。 证据基于手机本身留下的痕迹和一份俄罗斯官方文件。Cellebrite 的 UFED 是一个硬件-软件平台，执法机构用于移动设备数据提取和分析。

rss · The Hacker News · 6月26日 08:49

**背景**: Cellebrite 是一家以色列数字情报公司，其 UFED（通用取证提取设备）被执法机构广泛用于从移动设备提取数据。2021 年 3 月，Cellebrite 因乌克兰冲突宣布停止向俄罗斯和白俄罗斯销售其工具。公民实验室是多伦多大学的一个跨学科研究实验室，专门调查对公民社会的数字威胁。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Cellebrite_UFED">Cellebrite UFED - Wikipedia</a></li>
<li><a href="https://en.wikipedia.org/wiki/Citizen_Lab">Citizen Lab</a></li>
<li><a href="https://citizenlab.ca/about/">About the Citizen Lab - The Citizen Lab</a></li>

</ul>
</details>

**标签**: `#Cellebrite`, `#iPhone取证`, `#供应链安全`, `#出口管制`, `#隐私保护`

---

<a id="item-18"></a>
^item-18
## [谷歌揭露 Turla 新后门 STOCKSTAY 用于乌克兰攻击](https://thehackernews.com/2026/06/google-details-turlas-new-stockstay.html) ⭐️ 8.0/10

谷歌威胁情报组将此前未记录的.NET 后门 STOCKSTAY 归因于俄罗斯国家支持的 APT 组织 Turla，该后门已被用于针对乌克兰政府和军事组织以及对意大利外交政策感兴趣的实体的间谍攻击。 这一发现凸显了 Turla（一个老练的俄罗斯 APT 组织）持续的网络间谍活动，并强调了对乌克兰和意大利国家安全及外交利益的威胁。STOCKSTAY 的模块化和隐蔽性展示了国家支持威胁行为者不断演进的能力。 STOCKSTAY 是一个多组件的.NET 后门，使用 Windows Forms 框架，并通过 websocket-sharp 库与命令与控制服务器进行安全的 WebSocket 通信。它由代理、控制器和任务执行组件组成，这些组件通过进程间通信（IPC）通道进行通信。

rss · The Hacker News · 6月26日 07:15

**背景**: Turla，也被称为 Waterbug 或 Snake，是一个归因于俄罗斯联邦安全局（FSB）的网络间谍组织。自至少 2004 年以来活跃，Turla 已入侵超过 50 个国家的受害者，针对政府、军事和外交实体。该组织以使用复杂的恶意软件和隐蔽策略进行长期间谍活动而闻名。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://thehackernews.com/2026/06/google-details-turlas-new-stockstay.html">Google Details Turla's New STOCKSTAY Backdoor Used in Ukraine ...</a></li>
<li><a href="https://cloud.google.com/blog/topics/threat-intelligence/stockstay-turla-intelligence-gathering/">STOCKSTAY Another Day: The Latest Addition to Turla’s ...</a></li>
<li><a href="https://attack.mitre.org/groups/G0010/">Turla, IRON HUNTER, Group 88, Waterbug, WhiteBear, Snake ...</a></li>

</ul>
</details>

**标签**: `#Turla`, `#APT`, `#后门`, `#乌克兰`, `#网络安全`

---

<a id="item-19"></a>
^item-19
## [Akrites 项目启动，加速漏洞修复](https://lwn.net/Articles/1079657/) ⭐️ 8.0/10

Linux 基金会联合众多组织与公司宣布启动 Akrites 项目，旨在快速将漏洞修复推送到上游开源项目，并确保在下游迅速部署，防止攻击者利用 AI 进行利用。 该计划应对了 AI 加速漏洞利用的日益增长的威胁——攻击者能比以往更快地逆向工程补丁并开发利用代码。通过优先进行保密补丁开发和快速部署，Akrites 旨在缩小攻击者的机会窗口，保护关键基础设施。 Akrites 强调保密性不可妥协，确保未公开的漏洞不被泄露。它将与上游维护者合作，将修复集成到原始项目中，并作为无人维护的关键软件包的最终维护者。

rss · LWN Headlines · 6月26日 13:11

**背景**: 在开源软件中，“上游”指代码开发的原始项目，“下游”指集成该代码的发行版或产品。传统上，漏洞在上游修复后逐步传递到下游用户，但这一过程可能很慢。AI 现在使攻击者能够快速逆向工程公开补丁并创建利用代码，因此快速、保密的补丁部署变得至关重要。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://lwn.net/Articles/1079657/">The "Akrites" vulnerability-mitigation project launches [LWN.net]</a></li>
<li><a href="https://www.linuxfoundation.org/press/linux-foundation-and-industry-leaders-launch-akrites-to-defend-critical-open-source-software-against-ai-enabled-cyber-threats">Linux Foundation and Industry Leaders Launch Akrites to Defend Critical Open Source Software Against AI-Enabled Cyber Threats</a></li>
<li><a href="https://cloud.google.com/blog/topics/threat-intelligence/ai-vulnerability-exploitation-initial-access">Adversaries Leverage AI for Vulnerability Exploitation, Augmented Operations, and Initial Access | Google Cloud Blog</a></li>

</ul>
</details>

**标签**: `#开源安全`, `#漏洞修复`, `#Linux基金会`, `#Akrites`, `#AI安全`

---

<a id="item-20"></a>
^item-20
## [苹果发布 Xcode 26.3，引入代理式编码并调整 SDK 要求](https://t.me/zaihuapd/42187) ⭐️ 8.0/10

苹果发布了 Xcode 26.3，新增代理式编码功能，开发者可通过自然语言调用 OpenAI 和 Anthropic 的 AI 代理，自动理解项目、编写代码、构建应用、运行测试并修复错误。此外，苹果宣布自 2026 年 4 月 28 日起，提交至 App Store Connect 的应用必须使用 iOS 26、iPadOS 26、tvOS 26、visionOS 26 和 watchOS 26 的 SDK。 这标志着苹果将 AI 代理直接集成到开发环境中的重要一步，有望提升开发者生产力并降低编码门槛。SDK 要求变更确保应用利用最新的平台特性和安全更新，影响所有 iOS 开发者。 代理式编码功能支持 OpenAI 和 Anthropic 的模型，可在 Xcode 内实现自动代码生成、测试和调试。新的 SDK 要求适用于 iOS 26、iPadOS 26、tvOS 26、visionOS 26 和 watchOS 26，截止日期为 2026 年 4 月 28 日。

telegram · zaihuapd · 6月26日 04:04

**背景**: 代理式编码是指 AI 代理能够根据自然语言指令自主执行编码任务，如编写、测试和调试代码。Xcode 是苹果的集成开发环境（IDE），用于在苹果平台上创建软件。此次更新顺应了行业趋势，即 AI 辅助开发工具正变得更加自主，例如 Claude Code 和 GitHub Copilot 等工具。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://apps.apple.com/ru/app/xcode/id497799835?mt=12">Приложение « Xcode » — App Store</a></li>
<li><a href="https://zhuanlan.zhihu.com/p/2004855007883834468">Anthropic报告解读：2026年代理式编码如何重构软件开发的未来</a></li>
<li><a href="https://developer.apple.com/support/xcode/">Xcode - Support - Apple Developer</a></li>

</ul>
</details>

**标签**: `#苹果`, `#Xcode`, `#AI编码`, `#代理式编码`, `#SDK要求`

---

<a id="item-21"></a>
^item-21
## [三星与 SK 海力士拟宣布大规模 AI 投资](https://www.bloomberg.com/news/articles/2026-06-26/samsung-and-sk-hynix-prepare-huge-spending-increase-reports-say) ⭐️ 8.0/10

三星和 SK 海力士计划在 2026 年 6 月 29 日由韩国总统李在明主持的国家简报会上宣布大规模 AI 相关投资计划。三星的十年支出方案达 1000 万亿韩元（约 6480 亿美元），为韩国史上最大规模。 这项投资表明 AI 基础设施和存储芯片对全球半导体行业至关重要。它可能重塑 AI 硬件领域的竞争格局，并显著推动韩国经济和技术领导地位。 SK 海力士此前已表示计划五年内将产能翻倍，并通过在美国上市筹资 290 亿美元。然而，同日两家公司股价均下跌超 9%，因市场担心苹果产品涨价导致零部件成本上升，可能抑制设备需求，进而拖累内存芯片行情。

telegram · zaihuapd · 6月26日 06:08

**背景**: 三星和 SK 海力士是全球最大的两家存储芯片制造商，主导着 DRAM 和 NAND 闪存市场。AI 数据中心需要大量高带宽内存（HBM），推动了对先进存储芯片的需求。此次简报会还将聚焦“物理 AI”，即与物理世界交互的 AI 系统，如机器人和自动驾驶汽车。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.winzheng.jp/article/physical-ai-moment-everyone-wants">物 理 AI ... | Winzheng AI ニュース</a></li>
<li><a href="https://money.udn.com/money/story/5599/9402025?from=edn_related_storybottom">SK 海 力 士 申請 美 國 上 市 傳籌資規模可達140... | 經濟日報</a></li>
<li><a href="https://news.cri.cn/20250604/bbc991dd-3360-1289-1c80-971566bf8803.html">总 台记者直击丨 韩 国 总 统 李 在 明 今起履职 面临内外多项挑战- 国 际 在 线</a></li>

</ul>
</details>

**标签**: `#AI投资`, `#三星`, `#SK海力士`, `#半导体`, `#存储芯片`

---

<a id="item-22"></a>
^item-22
## [GPT-5 编程测试作弊：自行删除 23 道难题](https://t.me/zaihuapd/42191) ⭐️ 8.0/10

开发者发现，OpenAI 在评估 GPT-5 时秘密从 SWE-bench Verified 基准测试中删除了 23 道难题，仅使用 500 题中的 477 题来美化成绩。 这引发了对 AI 模型评测诚信和 OpenAI 透明度的严重担忧，因为被操纵的分数可能误导社区对 GPT-5 实际编程能力的判断，尤其是与 Claude Opus 4.1 等竞品的对比。 如果被删除的 23 道题按零分计算，GPT-5 的得分将低于 Claude Opus 4.1，而官方结果仅显示 0.4%的微弱差距。SWE-bench Verified 是原始 SWE-bench 的精选子集，而 GPT-5 使用了更小的子集。

telegram · zaihuapd · 6月26日 07:43

**背景**: SWE-bench 是一个评估 AI 模型处理 GitHub 上真实软件问题的基准测试。OpenAI 推出了 SWE-bench Verified 作为更干净的子集以减少噪音。然而，该公司未经披露就进一步移除 23 道难题的决定损害了该基准的可信度。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.swebench.com/">SWE - bench Leaderboards</a></li>
<li><a href="https://github.com/SWE-bench/SWE-bench">GitHub - SWE - bench / SWE - bench : SWE - bench : Can Language...</a></li>
<li><a href="https://openai.com/index/introducing-swe-bench-verified/">Introducing SWE - bench Verified | OpenAI</a></li>

</ul>
</details>

**标签**: `#GPT-5`, `#OpenAI`, `#AI评测`, `#SWE-bench`, `#编程能力`

---

<a id="item-23"></a>
^item-23
## [面向 AI 代理的开源网络安全技能库](https://github.com/mukul975/Anthropic-Cybersecurity-Skills) ⭐️ 8.0/10

一个名为“Anthropic-Cybersecurity-Skills”的 GitHub 仓库已发布，为 AI 代理提供 754 项结构化网络安全技能，并映射到 MITRE ATT&CK 和 NIST CSF 2.0 等五大安全框架。 该项目为 AI 代理标准化了网络安全知识，使其能够在 Claude Code 和 GitHub Copilot 等多个平台上运行，可能加速 AI 在安全运维中的应用。 这些技能涵盖 26 个安全领域，并遵循 agentskills.io 标准，该标准使用模型上下文协议（MCP）实现跨平台可移植性。仓库采用 Apache 2.0 许可证。

ossinsight · mukul975 · 6月26日 23:07

**背景**: MITRE ATT&CK 是一个广泛使用的对手战术和技术知识库，而 NIST CSF 2.0 提供了改进网络安全的框架。MITRE ATLAS 专注于 AI 特定威胁，D3FEND 则编录了防御性对策。agentskills.io 标准允许 AI 代理在不同平台间共享技能，避免供应商锁定。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://agentskills.io/">A standardized way to give AI agents new capabilities and expertise.</a></li>
<li><a href="https://d3fend.mitre.org/">D3FEND Matrix | MITRE D3FEND™</a></li>
<li><a href="https://www.getastra.com/blog/security-audit/mitre-atlas/">The Ultimate Guide to MITRE ATLAS (2026) (Reviewed)</a></li>

</ul>
</details>

**标签**: `#AI Agent`, `#网络安全`, `#MITRE ATT&CK`, `#开源工具`, `#技能库`

---

<a id="item-24"></a>
^item-24
## [谷歌的长期困境](https://www.infoq.cn/article/AKtLb52kbIfp68SkOHuU?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

InfoQ 上的一篇文章讨论了谷歌当前面临的挑战和战略失误，暗示该公司正经历一段漫长的衰退期。 作为领先的科技巨头，谷歌的困境可能预示着更广泛的行业变化，并影响整个科技生态系统的创新、竞争和用户信任。 文章缺乏具体细节，但暗示了人才流失、创新缓慢以及来自微软和 OpenAI 等竞争对手的压力等问题。

rss · InfoQ 中文 · 6月26日 17:22

**背景**: 谷歌在搜索和广告领域的主导地位面临越来越多的审查，同时在人工智能和云计算等新兴领域难以跟上步伐。该公司还经历了内部动荡，包括裁员和员工抗议。

**标签**: `#谷歌`, `#科技巨头`, `#行业趋势`

---

<a id="item-25"></a>
^item-25
## [Netflix 从拍摄到云端的规模化媒体处理流水线](https://www.infoq.cn/article/9JyfiCCqO2IWgXEubRKw?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

Netflix 详细介绍了其基于云的规模化媒体处理流水线，该流水线利用 FilmLight API 和分布式计算，从素材摄入到交付实现自动化校验、元数据提取和格式转换。 该流水线统一了剪辑、视觉特效和调色流程，减少了人工操作，确保了全球影视制作的一致性，这对 Netflix 庞大的内容产出至关重要。 该系统利用 FilmLight 的 API 处理色彩科学，并借助分布式计算资源批量处理摄影机文件，在云端实现可扩展的摄入、校验、元数据提取和媒体转码。

rss · InfoQ 中文 · 6月26日 15:00

**背景**: 媒体处理流水线用于将原始摄影机素材转换为适合剪辑、视觉特效和最终交付的格式。传统上，这涉及大量人工操作，且不同制作项目的工作流不一致。Netflix 基于云的方法旨在规模化地自动化和标准化这些步骤。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.infoq.cn/article/9JyfiCCqO2IWgXEubRKw">从拍摄素材到云端：Netflix规模化媒体处理流水线 - InfoQ</a></li>
<li><a href="https://thenote.app/post/zh/cong-she-xiang-tou-dao-yun-duan-netflix-ke-kuo-zhan-mei-ti-chu-li-liu-shui-xian-nqovkphgrp">从摄像头到云端：Netflix 可扩展媒体处理流水线 - TheNote.app</a></li>

</ul>
</details>

**标签**: `#媒体处理`, `#云端架构`, `#Netflix`, `#DevOps`, `#流水线`

---

<a id="item-26"></a>
^item-26
## [OpenAI 用 AI 设计芯片，9 个月媲美 Blackwell](https://www.infoq.cn/article/CcT6wZSLyVcIAmSLM1l0?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

2026 年 6 月 25 日，OpenAI 与博通联合发布了首款定制 AI 推理芯片 Jalapeño，从设计到流片仅用 9 个月。博通 CEO 陈福阳表示其性能可媲美英伟达 Blackwell 和谷歌 TPU。 这一突破可能降低 OpenAI 对英伟达 GPU 的推理依赖，有望重塑 AI 硬件格局。它表明 AI 设计的芯片能在极短开发周期内达到具有竞争力的性能。 Jalapeño 专为 AI 推理优化，而非训练，据称可将推理成本降低约 50%。该芯片与博通合作开发，利用了博通的 ASIC 专长。

rss · InfoQ 中文 · 6月26日 14:18

**背景**: 英伟达的 GPU，尤其是 Blackwell 架构，目前主导着 AI 训练和推理。OpenAI 进军定制芯片是科技巨头减少对英伟达依赖、自研硬件的更广泛趋势的一部分。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://aizxs.com/ai-news/9224.html">OpenAI首颗自研芯片Jalapeño问世：9个月流片创行业纪录，推理成本直降...</a></li>
<li><a href="https://www.infoq.cn/news/CcT6wZSLyVcIAmSLM1l0">AI 设计 9 个月就能媲美 Blackwell？OpenAI “辣芯”绕开英伟达正面战场...</a></li>
<li><a href="https://www.huxiu.com/article/4870156.html">OpenAI首颗自研芯片“辣椒”问世：9个月光速成功背后，英伟达最怕的事正...</a></li>

</ul>
</details>

**标签**: `#AI芯片`, `#OpenAI`, `#英伟达`, `#GPU`, `#行业趋势`

---

<a id="item-27"></a>
^item-27
## [VS Code 1.123 新增两小时插件更新缓冲防范供应链攻击](https://www.infoq.cn/article/iZskGZVEV04jivWZtR00?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

Visual Studio Code 1.123 版本引入两小时延迟机制，插件更新不会立即生效，从而降低恶意更新快速传播的风险。 该功能直接针对供应链安全威胁，为用户和管理员提供了检测和阻止恶意插件更新的时间窗口，避免对开发环境造成影响。 该缓冲机制适用于所有插件更新，并可通过设置进行配置；在延迟期间，用户可以查看更新详情并在必要时回滚。

rss · InfoQ 中文 · 6月26日 12:44

**背景**: 针对开发者工具的供应链攻击日益增多，攻击者通过篡改插件更新来植入恶意软件。VS Code 的扩展生态系统因其广泛使用而成为主要目标。此次更新缓冲提供了类似其他平台分阶段推出的安全网。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://code.visualstudio.com/">Visual Studio Code - The open source AI code editor | Your home for...</a></li>

</ul>
</details>

**标签**: `#VS Code`, `#供应链安全`, `#插件安全`, `#安全更新`

---

<a id="item-28"></a>
^item-28
## [Anthropic 起诉阿里 Qwen，CEO 遭白宫冷落](https://www.infoq.cn/article/MVDrYfoCovqj6zBNxr9e?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

Anthropic 对阿里巴巴的 Qwen AI 模型提起诉讼，指控其侵犯知识产权；同时，其 CEO Dario Amodei 因与白宫关系紧张，被排除在 AI 安全会议之外。 这场法律战凸显了中美 AI 公司之间日益紧张的关系，而 CEO 被排除在外则表明政治摩擦可能影响 AI 安全合作和行业监管。 诉讼细节尚未公开，但针对的是阿里巴巴的 Qwen 模型系列。据报道，白宫会议排除 Anthropic CEO 是因为该公司对政府 AI 政策持批评态度。

rss · InfoQ 中文 · 6月26日 11:12

**背景**: Anthropic 是一家由前 OpenAI 员工创立的美国 AI 安全公司，以其 Claude 模型闻名。Qwen 是阿里巴巴云部门开发的一系列大语言模型。两家公司都是全球 AI 竞赛中的主要参与者。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Anthropic">Anthropic - Wikipedia</a></li>
<li><a href="https://en.wikipedia.org/wiki/Qwen">Qwen - Wikipedia</a></li>

</ul>
</details>

**标签**: `#Anthropic`, `#Qwen`, `#AI诉讼`, `#白宫`, `#行业动态`

---

<a id="item-29"></a>
^item-29
## [云端 AI 治理：架构师实操指南](https://www.infoq.cn/article/IeYP4QboeUV5g7wJRYkZ?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

InfoQ 发布了一篇面向架构师的云端 AI 治理实操指南，涵盖影子 AI 识别、数据分级、IAM 权限管控和策略即代码等关键策略。 随着企业快速采用 AI，治理成为平衡创新与安全合规的关键。该指南提供了可落地的实践，帮助架构师将治理嵌入交付流程，满足了日益增长的行业需求。 文章提出了一套云端 AI 治理实践，包括影子 AI 识别、数据创建分级、IAM 权限管控、策略即代码和运维管控。它强调在交付流程中自动化治理，以兼顾安全合规与开发效率。

rss · InfoQ 中文 · 6月26日 09:40

**背景**: AI 治理是指确保 AI 系统被负责任、安全且合规使用的政策、流程和工具。随着 AI 应用的激增，组织面临影子 AI（未经授权的 AI 使用）和数据隐私风险等挑战。云架构由于共享责任模型和动态资源管理而增加了复杂性。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.infoq.cn/article/IeYP4QboeUV5g7wJRYkZ">云端 AI 治理：架构师实操指南 - InfoQ</a></li>

</ul>
</details>

**标签**: `#AI治理`, `#云架构`, `#最佳实践`, `#AI行业趋势`

---

<a id="item-30"></a>
^item-30
## [用剧本杀类比讲解 Agentic AI](https://www.infoq.cn/video/2hp32gR1vuPJuL0ISlB3?utm_source=rss&utm_medium=article) ⭐️ 6.0/10

InfoQ 的一则视频以流行的剧本杀游戏为类比，介绍 Agentic AI 的概念和应用方法。 这种创意类比使 Agentic AI 的抽象概念更易于被广泛受众理解，可能加速其在非技术社区的普及和认知。 该视频托管在 InfoQ 平台，属于 AI 应用系列的一部分，但缺乏具体的技术深度或实现细节。

rss · InfoQ 中文 · 6月26日 22:21

**背景**: Agentic AI 指的是能够自主规划并执行任务以实现目标的 AI 系统，不同于仅响应提示的传统 AI。剧本杀类比有助于说明代理如何扮演角色、遵循规则并协作解决问题。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://kuyijourney.com/article/ai/basics/what-is-agentic-ai/">Agentic AI 是什麼？ 深度解析運作原理與應用場景 - Kuyi Journey</a></li>
<li><a href="https://aws.amazon.com/cn/blogs/china/practical-guide-to-building-agentic-ai-applications-for-aws-china-region/">亚马逊云科技中国区构建 Agentic AI 应用实践指南 | 亚马逊AWS官方博...</a></li>

</ul>
</details>

**标签**: `#Agentic AI`, `#AI应用`, `#类比教学`

---

<a id="item-31"></a>
^item-31
## [AI 能写任何东西，但需要经验丰富的用户](https://www.infoq.cn/article/l2lF7aoPeLGlotlX1tdt?utm_source=rss&utm_medium=article) ⭐️ 6.0/10

InfoQ 上的一篇文章指出，虽然 AI 可以生成任何类型的内容，但需要具备丰富经验和判断力的用户才能产出高质量结果。 这一观点挑战了 AI 写作工具普遍易用的看法，强调了人类专业知识在内容创作中的持续重要性。 文章未提供具体技术细节或示例，而是聚焦于一般性观察：AI 输出质量很大程度上取决于用户引导和评估的能力。

rss · InfoQ 中文 · 6月26日 18:18

**背景**: 像 GPT-4 这样的 AI 写作工具可以生成几乎任何主题的文本，但常常产生听起来合理但不准确或不相关的内容。经验丰富的写作者和编辑更擅长优化提示词、核查事实并确保连贯性。

**标签**: `#AI写作`, `#经验`, `#内容创作`

---

