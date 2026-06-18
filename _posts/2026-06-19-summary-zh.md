---
layout: default
title: "Horizon Summary: 2026-06-19 (ZH)"
date: 2026-06-19
lang: zh
---

> 从 136 条内容中筛选出 35 条重要资讯。

---

1. [[#^item-1|GLM-5.2：753B 参数开源模型登顶]] ⭐️ 9.0/10
2. [[#^item-2|开源模型市场份额超越闭源模型]] ⭐️ 9.0/10
3. [[#^item-3|发现约 1 万个 GitHub 仓库分发木马]] ⭐️ 9.0/10
4. [[#^item-4|Transformer 共同发明人 Noam Shazeer 加入 OpenAI]] ⭐️ 9.0/10
5. [[#^item-5|CISA 紧急要求加固 Fortinet 设备以应对凭据泄露]] ⭐️ 9.0/10
6. [[#^item-6|Anthropic 的 Claude Fable 5 上线三天后被下架]] ⭐️ 8.0/10
7. [[#^item-7|AI Agent 效率鸿沟：个人 10 倍提升，组织不足 20%]] ⭐️ 8.0/10
8. [[#^item-8|数据库集成：自主 AI 智能体的最大障碍]] ⭐️ 8.0/10
9. [[#^item-9|JetBrains 开源 Mellum2，瞄准 Claude Code 未覆盖的领域]] ⭐️ 8.0/10
10. [[#^item-10|Netflix 开源工具削减 90%词元，节省 70 万美元]] ⭐️ 8.0/10
11. [[#^item-11|Google 欲为 AI Agent 打造 Kubernetes 式标准]] ⭐️ 8.0/10
12. [[#^item-12|Subquadratic 打破上下文窗口限制，推出 1200 万 Token]] ⭐️ 8.0/10
13. [[#^item-13|Cursor 放弃 Kimi 基座，马斯克 600 亿美元收购，挑战 GitHub]] ⭐️ 8.0/10
14. [[#^item-14|Chrome 提出 WebMCP 标准，为 AI 智能体提供原生网页操作能力]] ⭐️ 8.0/10
15. [[#^item-15|MosaicLeaks：AI 研究智能体可能泄露机密]] ⭐️ 8.0/10
16. [[#^item-16|超越 LoRA：能否击败最流行的微调技术？]] ⭐️ 8.0/10
17. [[#^item-17|F5 修复 NGINX 严重漏洞，可致远程代码执行]] ⭐️ 8.0/10
18. [[#^item-18|被遗弃的 AI 代理：网络中的隐藏访问风险]] ⭐️ 8.0/10
19. [[#^item-19|Popa 僵尸网络与以色列上市公司 Alarum 关联]] ⭐️ 8.0/10
20. [[#^item-20|AVer PTC 摄像头存在严重远程代码执行漏洞]] ⭐️ 8.0/10
21. [[#^item-21|红帽与 IBM 启动 50 亿美元 Project Lightwell 开源安全计划]] ⭐️ 8.0/10
22. [[#^item-22|Poolside 发布 Laguna M.1：225B MoE 模型专为智能体编程]] ⭐️ 8.0/10
23. [[#^item-23|Liquid AI 发布 LFM2.5 嵌入与 ColBERT 模型]] ⭐️ 8.0/10
24. [[#^item-24|泄露文件：OpenAI 每年亏损数十亿美元]] ⭐️ 8.0/10
25. [[#^item-25|Token 商品化重塑 AI 基础设施]] ⭐️ 7.0/10
26. [[#^item-26|谷歌为 Android 开发者测试大模型：GPT-5.5 暂时领先]] ⭐️ 7.0/10
27. [[#^item-27|Vercel Labs 开源 Zero-Native：基于 Zig 的跨平台原生应用框架]] ⭐️ 7.0/10
28. [[#^item-28|具身智能商业化三阶段，终局是卖 Token]] ⭐️ 7.0/10
29. [[#^item-29|Terraform MCP 服务器发布，助力 AI 管理基础设施]] ⭐️ 7.0/10
30. [[#^item-30|Slack 将 700+ EMR 作业从 SSH 迁移至 REST]] ⭐️ 7.0/10
31. [[#^item-31|OpenAI 推理模型助力诊断罕见儿童疾病]] ⭐️ 7.0/10
32. [[#^item-32|开源模型 Agent 能力基准测试]] ⭐️ 7.0/10
33. [[#^item-33|创业一年，机器人打入头部车企]] ⭐️ 6.0/10
34. [[#^item-34|Agentic AI 破解金融反欺诈深层困局]] ⭐️ 6.0/10
35. [[#^item-35|TDSQL 从独立版到一体化架构的演进]] ⭐️ 6.0/10

---

<a id="item-1"></a>
^item-1
## [GLM-5.2：753B 参数开源模型登顶](https://simonwillison.net/2026/Jun/17/glm-52/#atom-everything) ⭐️ 9.0/10

中国 AI 实验室智谱 AI 于 2026 年 6 月 16 日发布了 GLM-5.2，这是一个 753B 参数的混合专家模型，拥有 40B 激活参数和百万 token 上下文窗口，采用 MIT 许可证开源。 GLM-5.2 在 Artificial Analysis Intelligence Index 上成为领先的开源模型，超越了 MiniMax-M3、DeepSeek V4 Pro 和 Kimi K2.6，标志着开源 AI 的重要里程碑。 该模型每个任务使用的输出 token 更多（43k），且仅支持文本输入，视觉模型 GLM-5V-Turbo 未开源。它在 Code Arena WebDev 排行榜上排名第二，仅次于 Claude Fable 5。

rss · Simon Willison · 6月17日 23:58

**背景**: 混合专家模型是一种神经网络架构，每个 token 仅激活部分参数，从而在总参数量巨大的情况下保持可管理的推理成本。GLM-5.2 的 753B 总参数中仅有 40B 激活参数，正是这一方法的体现。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://artificialanalysis.ai/models/glm-5-2">GLM - 5 . 2 (max) - Intelligence, Performance & Price Analysis</a></li>
<li><a href="https://apidog.com/blog/glm-5-2-what-is/">What Is GLM - 5 . 2 ?</a></li>
<li><a href="https://www.aimadetools.com/blog/glm-5-2-complete-guide">GLM-5.2 Complete Guide — 1M Context, MIT License, Setup (2026)</a></li>

</ul>
</details>

**社区讨论**: 社区对 GLM-5.2 的顶尖基准分数和 MIT 许可证反响热烈，但也有评论指出其 token 消耗较高且缺乏视觉输入能力。

**标签**: `#大模型`, `#开源`, `#GLM-5.2`, `#智谱AI`, `#MoE`

---

<a id="item-2"></a>
^item-2
## [开源模型市场份额超越闭源模型](https://www.reddit.com/r/LocalLLaMA/comments/1u96545/oss_models_decisively_overtook_proprietary_models/) ⭐️ 9.0/10

根据 OpenRouter 最近三个月的使用数据，开源 AI 模型在市场份额上已决定性地超越闭源模型，标志着 AI 开源生态的一个重要里程碑。 这一转变标志着 AI 行业的根本性变化，开源模型成为开发者的首选，可能加速创新并减少对闭源供应商的依赖。 数据来自 OpenRouter，这是一个统一 API 平台，提供超过 400 个 AI 模型的访问，反映了真实世界中的模型使用趋势。过去三个月内，开源模型取得了决定性的领先优势。

reddit · r/LocalLLaMA · /u/Comfortable-Rock-498 · 6月18日 13:21

**背景**: OpenRouter 是一个将众多 AI 模型聚合在单一 API 下的平台，使开发者能够轻松比较和使用开源及闭源模型。其在 OpenRouter 上的市场份额反映了开发者的实际使用情况，是衡量真实采用率的可靠指标。历史上，GPT-4 等闭源模型占据主导地位，但近期开源模型（如 Llama、DeepSeek）的进步缩小了差距。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://openrouter.ai/about">About - The Unified Interface For LLMs | OpenRouter</a></li>
<li><a href="https://lmmarketcap.com/trackers/open-source">Open vs Proprietary AI Models (2026) | LM Market Cap</a></li>
<li><a href="https://whatllm.org/blog/open-source-vs-proprietary-llms-2025">Open Source vs Proprietary LLMs: Complete 2025 Benchmark ...</a></li>

</ul>
</details>

**社区讨论**: Reddit 社区普遍庆祝这一里程碑，许多用户指出开源模型现在以更低成本提供了有竞争力的性能。一些评论者质疑数据的代表性，认为 OpenRouter 可能未覆盖所有使用场景，但总体情绪是积极的。

**标签**: `#开源模型`, `#市场份额`, `#AI趋势`, `#OpenRouter`, `#大模型`

---

<a id="item-3"></a>
^item-3
## [发现约 1 万个 GitHub 仓库分发木马](https://orchidfiles.com/github-repositories-distributing-malware/) ⭐️ 9.0/10

一名研究人员发现约 1 万个 GitHub 仓库通过频繁更新和伪装成合法项目来分发木马，这些仓库来自不同账户且非分支。 该活动针对 AI 代理和自动化依赖系统，代表了一种新的供应链攻击向量，可能危及大量开发者和组织。 这些恶意仓库共享共同模式，使得自动化检测成为可能；它们旨在出现在代理搜索中并感染依赖管道。

hackernews · theorchid · 6月18日 11:45 · [社区讨论](https://news.ycombinator.com/item?id=48583928)

**背景**: 针对 GitHub 等开源平台的供应链攻击有所增加，攻击者将恶意软件注入看似合法的仓库。自动获取依赖的 AI 代理尤其脆弱，因为它们可能不验证仓库的真实性。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://orchidfiles.com/github-repositories-distributing-malware/">How I found 10,000 GitHub repositories distributing Trojan malware</a></li>
<li><a href="https://thehackernews.com/2025/06/67-trojanized-github-repositories-found.html">200+ Trojanized GitHub Repositories Found in Campaign Targeting Gamers and Developers</a></li>
<li><a href="https://deepwiki.com/precize/Agentic-AI-Top10-Vulnerability/5.2-aai009:-agent-supply-chain-and-dependency-attacks">AAI009: Agent Supply Chain and Dependency Attacks</a></li>

</ul>
</details>

**社区讨论**: 社区成员确认了类似经历，有人发现自己的名字被附加到未知项目上。一位评论者指出该攻击针对的是代理而非人类，并强调了与重大选举的时间关联。

**标签**: `#供应链攻击`, `#GitHub`, `#恶意软件`, `#AI安全`, `#开源安全`

---

<a id="item-4"></a>
^item-4
## [Transformer 共同发明人 Noam Shazeer 加入 OpenAI](https://twitter.com/NoamShazeer/status/2067400851438932297) ⭐️ 9.0/10

Transformer 架构共同发明人、前 Google Gemini 联合负责人 Noam Shazeer 宣布加入 OpenAI。此举标志着人才从 Google 向竞争对手的重大流动。 鉴于 Shazeer 在 Transformer 技术中的奠基性作用，他的加入可能加速 OpenAI 下一代模型的开发。这也凸显了主要 AI 实验室之间对顶尖人才的激烈争夺。 Shazeer 是 Google 长期研究员，共同撰写了开创性论文《Attention Is All You Need》，后离职联合创立 Character.AI，并于 2024 年通过授权协议重返 Google。如今他再次离开 Google 加入 OpenAI。

hackernews · lukasgross · 6月18日 00:26 · [社区讨论](https://news.ycombinator.com/item?id=48578913)

**背景**: Transformer 架构于 2017 年在论文《Attention Is All You Need》中提出，是现代大型语言模型（如 GPT-4 和 Gemini）的基础。Shazeer 是八位共同作者之一，也是自注意力机制的关键实现者。Gemini 是 Google 的多模态 AI 模型系列，与 OpenAI 的 GPT 系列直接竞争。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Transformer_(deep_learning)">Transformer (deep learning) - Wikipedia</a></li>
<li><a href="https://en.wikipedia.org/wiki/Gemini_(AI_model)">Gemini (AI model)</a></li>

</ul>
</details>

**社区讨论**: 社区对此感到兴奋，但也对 Shazeer 重返 Google 后迅速离职感到困惑。一些人猜测是政治或文化原因，另一些人则强调他在 Transformer 论文中的关键作用以及对 OpenAI 的潜在影响。

**标签**: `#OpenAI`, `#Noam Shazeer`, `#Transformer`, `#AI人才`, `#Google`

---

<a id="item-5"></a>
^item-5
## [CISA 紧急要求加固 Fortinet 设备以应对凭据泄露](https://www.cisa.gov/news-events/alerts/2026/06/18/cisa-urges-hardening-fortinet-devices-after-reports-credential-exposure) ⭐️ 9.0/10

CISA 于 2026 年 6 月 18 日发布紧急警报，要求各组织加固 Fortinet 设备，此前有报告称恶意攻击者利用泄露的凭据攻陷了约 7.4 万台 FortiGate 防火墙和 VPN 网关，该活动被称为 FortiBleed。 此事件影响全球大量政府和私营部门网络，立即采取补救措施对于防止攻击者进一步利用和横向移动至关重要。 CISA 建议终止所有活跃的 SSL VPN 和管理会话、重置凭据、强制使用 PBKDF2 存储密码、审查日志以发现可疑活动、启用抗钓鱼多因素认证，并将管理接口限制在内部网络中。

rss · CISA Cybersecurity Advisories · 6月18日 12:00

**背景**: Fortinet FortiGate 设备广泛用于企业和政府网络的防火墙和 VPN 网关。FortiBleed 活动涉及攻击者使用泄露的凭据（可能来自之前的泄露或撞库攻击）获得未授权访问。PBKDF2 是一种 NIST 批准的密钥派生函数，可增强密码存储以抵御暴力破解攻击。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://arcticwolf.com/resources/blog/active-fortibleed-campaign-impacting-fortinet-devices-across-194-countries/">Active FortiBleed Campaign Impacting Fortinet Devices... | Arctic Wolf</a></li>
<li><a href="https://thecybersecguru.com/news/fortibleed-fortinet-firewall-credential-leak/">FortiBleed : How 75,000 Fortinet Firewalls Were... | The CyberSec Guru</a></li>
<li><a href="https://torchlight.io/blog/fortibleed-fortinet-vpn-credential-leak/">FortiBleed : 73,000 Fortinet Firewalls Exposed, Act Now</a></li>

</ul>
</details>

**标签**: `#CISA`, `#Fortinet`, `#凭据泄露`, `#VPN安全`, `#安全警报`

---

<a id="item-6"></a>
^item-6
## [Anthropic 的 Claude Fable 5 上线三天后被下架](https://www.infoq.cn/article/UXghld6fuzYxJNuU6L47?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

Anthropic 在其新发布的 Claude Fable 5 模型上线仅三天后，因未知原因将其临时下架，引发了业界的广泛猜测。 这次突然下架凸显了快速部署 AI 与安全担忧之间的紧张关系，可能影响用户信任和大语言模型的竞争格局。 据报道，Claude Fable 5 是 Anthropic 迄今为止最强大的公开模型，内置了悄悄停止某些输出的安全机制。下架的具体原因尚未披露。

rss · InfoQ 中文 · 6月18日 18:14

**背景**: Anthropic 是一家由前 OpenAI 员工创立的 AI 安全公司，以其 Claude 系列大语言模型而闻名。Claude Fable 5（也称为 Mythos）旨在发现软件漏洞，但出于安全和滥用担忧，公司尚未正式公开发布该模型。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Claude_Fable_5">Claude Fable 5</a></li>
<li><a href="https://www.theneurondaily.com/p/claude-fable-five-is-anthropic-s-most-controversial-model-yet">Claude Fable Five is Anthropic's Most Controversial Model Yet</a></li>
<li><a href="https://www.youtube.com/watch?v=16JX7Qb1qAM">Claude Fable - 5 (Mythos) Is So Dangerous They Had To... - YouTube</a></li>

</ul>
</details>

**社区讨论**: 社区反应不一，有人称赞该模型的能力，也有人对其潜在的滥用表示担忧。缺乏官方解释引发了猜测，下架是由于安全缺陷还是监管压力。

**标签**: `#Anthropic`, `#Claude`, `#大模型`, `#AI新闻`, `#模型下架`

---

<a id="item-7"></a>
^item-7
## [AI Agent 效率鸿沟：个人 10 倍提升，组织不足 20%](https://www.infoq.cn/article/Xbol4ryW7wkczQsumUY9?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

一项分析显示，AI Agent 虽能使个人效率提升高达 10 倍，但组织效率提升却不足 20%，凸显了企业落地中的巨大鸿沟。 这一差距凸显了将 AI Agent 从个人工具扩展到企业级系统的关键挑战，影响企业 AI 投资的回报率和战略规划。 超过 66%的企业因结果不可靠而放弃 AI Agent 试点，当前产品多依赖模板化、单点式应答，而非整体集成。

rss · InfoQ 中文 · 6月18日 17:58

**背景**: AI Agent 是代表用户执行任务的自主系统，如数据分析或代码生成。虽然个人能快速受益，但组织面临集成复杂性、可靠性问题以及多 Agent 协调等挑战。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://zhuanlan.zhihu.com/p/1969433865039898472">企业落地 AI Agent 的四大关键实践，少走90%弯路! - 知乎</a></li>
<li><a href="https://blog.csdn.net/qq_56999332/article/details/161201121">2026 AI Agent 企业落地实战：从选型到部署，避开我们踩过的 5 个坑_...</a></li>
<li><a href="https://cloud.tencent.com/developer/article/2554557">一文读懂 AI Agent 的企业级落地逻辑丨科普扫盲-腾讯云开发者社区-腾...</a></li>

</ul>
</details>

**社区讨论**: 社区评论指出了 Agent 的“交互悖论”：指令越宽泛效率越低，指令越精确则失去 Agent 意义。有人认为当前产品只是优化后的互联网时代工具，而非真正的 Agent。

**标签**: `#AI Agent`, `#企业落地`, `#效率提升`, `#行业趋势`

---

<a id="item-8"></a>
^item-8
## [数据库集成：自主 AI 智能体的最大障碍](https://www.infoq.cn/article/BtWV3huF3ZydPc501mAO?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

近期分析指出，数据库交互是自主 AI 智能体的主要瓶颈，现有智能体在处理复杂数据库模式和优化任务时面临困难。 克服这一挑战对于在企业系统中部署 AI 智能体至关重要，因为数据库是数据管理和决策的核心。 文章指出，尽管编码智能体能处理标准数据结构，但数据库因其复杂性和优化需求，仍是自动化中最困难的部分。

rss · InfoQ 中文 · 6月18日 17:54

**背景**: 自主 AI 智能体是能够独立执行任务（如编写代码或查询数据库）的系统。然而，数据库通常具有复杂的模式、需要性能调优，并涉及复杂的 SQL 查询，这给 AI 智能体带来了巨大挑战。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.infoq.cn/article/BtWV3huF3ZydPc501mAO">自主智能体遇阻：数据库成最大挑战 - InfoQ</a></li>
<li><a href="https://www.sohu.com/a/1036356250_355140">自主智能体遇阻：数据库成最大挑战_Pavlo_系统_模型</a></li>

</ul>
</details>

**标签**: `#AI智能体`, `#数据库`, `#大模型`, `#AI工具`

---

<a id="item-9"></a>
^item-9
## [JetBrains 开源 Mellum2，瞄准 Claude Code 未覆盖的领域](https://www.infoq.cn/article/QQVa7HhtdoDzLFB7ewVQ?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

JetBrains 开源了 Mellum2，这是一个 12B 参数的混合专家模型，用于 AI 辅助编码，采用 Apache 2.0 许可证发布。 Mellum2 为 Claude Code 等专有工具提供了高性能、低成本的替代方案，可能使 AI 编码辅助更加普及。 Mellum2 从头开始训练，基于自然语言和代码，旨在解决生产环境中 AI 工作流的延迟、吞吐量和成本挑战。

rss · InfoQ 中文 · 6月18日 17:48

**背景**: 像 Claude Code 这样的 AI 编码助手使用大语言模型帮助开发者编写、调试和重构代码。然而，许多此类工具是专有的，可能昂贵或缓慢。以 IDE 闻名的 JetBrains 旨在提供一个快速且经济实惠的开源替代方案。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://blog.jetbrains.com/ai/2026/06/mellum2-goes-open-source-a-fast-model-for-ai-workflows/">Mellum2 Goes Open Source: A Fast Model for AI Workflows</a></li>
<li><a href="https://codersera.com/blog/introducing-mellum2-a-12b-mixture-of-experts-model-by-jetbra-2026/">Mellum2: JetBrains 12B MoE Code Model Guide - codersera.com</a></li>

</ul>
</details>

**标签**: `#AI编码`, `#开源`, `#JetBrains`, `#Mellum2`, `#Claude Code`

---

<a id="item-10"></a>
^item-10
## [Netflix 开源工具削减 90%词元，节省 70 万美元](https://www.infoq.cn/article/SdkcGqZQ2coEqM04xsQG?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

Netflix 高级工程师 Chopra 开源了工具 Headroom，可将 LLM 提示词元压缩高达 90%，据称已为用户节省约 70 万美元，并累计释放了 2000 亿词元。 这解决了 AI 推理日益增长的成本负担，使大型语言模型的使用对企业及开发者更加经济实惠。 Headroom 在数据到达 LLM 之前压缩工具输出、日志、RAG 块、文件和对话历史，无需修改代码且本地运行。一个示例中，它将 10,144 个词元减少到 1,260 个，同时保持答案不变。

rss · InfoQ 中文 · 6月18日 17:42

**背景**: 大型语言模型按词元数量收费，因此减少词元可直接降低成本。Headroom 是一个开源上下文优化工具，可在不影响输出质量的前提下修剪提示中的冗余信息。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/chopratejas/headroom">GitHub - chopratejas/headroom: Compress tool outputs, logs ...</a></li>
<li><a href="https://letsdatascience.com/news/netflix-engineer-open-sources-headroom-to-cut-ai-token-costs-8f10c68d">Netflix engineer open-sources Headroom to cut AI token costs</a></li>
<li><a href="https://headroomlabs.ai/">Headroom - Context Optimization for LLM Tooling & Agents</a></li>

</ul>
</details>

**标签**: `#Netflix`, `#开源工具`, `#AI成本`, `#token优化`

---

<a id="item-11"></a>
^item-11
## [Google 欲为 AI Agent 打造 Kubernetes 式标准](https://www.infoq.cn/article/jNsfjJuAJjDzGYS51jHC?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

Google 正推动一种类似 Kubernetes 的标准化框架来管理 AI Agent，这可能改变 AI 应用的部署方式。 这一举措可能为 AI Agent 建立通用的基础设施层，实现跨平台的互操作性、可扩展性和更简便的管理，就像 Kubernetes 对容器化应用所做的那样。 该框架旨在标准化 Agent 的生命周期管理，包括部署、扩缩容和通信，直接借鉴了 Kubernetes 的 Pod 和 Service 抽象。

rss · InfoQ 中文 · 6月18日 17:27

**背景**: AI Agent 是能够感知环境、自主决策并执行动作以完成复杂任务的智能实体。Kubernetes 是一个容器编排平台，可自动部署、扩缩和管理容器化应用。Google 的提议旨在将类似的编排原则应用于 AI Agent。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://zhuanlan.zhihu.com/p/1895877953453265781">什么是AI Agent？AI Agent综述，看这一篇就够了！ - 知乎</a></li>
<li><a href="https://kubernetes.io/zh-cn/docs/concepts/architecture/">Kubernetes 架构 | Kubernetes Kubernetes 架构：权威指南（2025） - 知乎 Kubernetes（K8s）从入门到精通：一篇彻底搞懂云原生核心 Kubernetes核心架构与各关键子系统深度解析-开发者社区-阿里云 10 张图，说透 Kubernetes 架构和数据流，这回算是真懂了 - 个人文章 ...</a></li>

</ul>
</details>

**标签**: `#AI Agent`, `#Kubernetes`, `#Google`, `#基础设施`, `#开源`

---

<a id="item-12"></a>
^item-12
## [Subquadratic 打破上下文窗口限制，推出 1200 万 Token](https://www.infoq.cn/article/0zbyxse0IZs690HL9Jev?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

Subquadratic 发布了一款支持 1200 万 Token 上下文窗口的大语言模型，通过 API 提供，并附带编码代理（SubQ Code）和深度研究工具（SubQ Search）。 这一突破极大扩展了大语言模型的上下文长度，使 AI 代理能够一次性处理整个代码库、长对话历史或大量文档，可能改变编程、研究和分析等领域的应用方式。 该模型采用完全次二次稀疏注意力架构，在 100 万 Token 下比 FlashAttention 快 52 倍，成本不到 Claude Opus 的 5%。5000 万 Token 的上下文窗口计划在第四季度推出。

rss · InfoQ 中文 · 6月18日 17:18

**背景**: 传统 Transformer 模型的计算复杂度随上下文长度呈二次增长，导致长上下文成本极高。次二次架构将复杂度降低为线性增长，从而高效支持更长的上下文。Subquadratic 是一家专注于构建此类架构的前沿 AI 研究公司。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.infoq.cn/article/0zbyxse0IZs690HL9Jev">上 下 文 窗 口 限制被打破： Subquadratic 推出了一个 1200 万 Token 的 窗 口</a></li>
<li><a href="https://subq.ai/">Subquadratic — Efficiency is Intelligence</a></li>
<li><a href="https://subq.ai/introducing-subq">Introducing SubQ: The First Fully Subquadratic LLM</a></li>

</ul>
</details>

**社区讨论**: 该公告引发了人们对长上下文 AI 潜力的兴奋，但一些专家对声称的性能和成本基准表示怀疑，呼吁进行独立验证。

**标签**: `#大模型`, `#上下文窗口`, `#AI技术突破`, `#Subquadratic`

---

<a id="item-13"></a>
^item-13
## [Cursor 放弃 Kimi 基座，马斯克 600 亿美元收购，挑战 GitHub](https://www.infoq.cn/article/pl4x24FzEJDfhBRgiWAc?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

Cursor 推出了 1.5T 参数的新模型，并放弃了 Kimi K2.5 基座模型。埃隆·马斯克以 600 亿美元股票收购 Cursor 后，立即向微软的 GitHub Copilot 发起挑战。 这重塑了 AI 编程工具格局，Cursor 的模型切换和马斯克的入主可能加剧与 GitHub Copilot 的竞争。同时也凸显了专有基座模型在 AI 辅助开发中的重要性。 新 1.5T 参数模型不再基于之前使用的 Kimi K2.5。马斯克以 600 亿美元股票收购 Cursor 后获得控制权，其第一步就是挑战微软的关键资产 GitHub。

rss · InfoQ 中文 · 6月18日 12:02

**背景**: Cursor 是一款 AI 驱动的代码编辑器，与 GitHub Copilot 竞争。Kimi K2.5 是月之暗面（Moonshot AI）开发的大语言模型，此前被 Cursor 用作基座模型。马斯克的收购标志着重大战略转变。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://h5.ifeng.com/c/vivoArticle/v002XjXZZAIF1ixERO7F-_XVf2fINV20jUCoMk5qxiJmj2Qc__?vivoBusiness=hiboardnews">美国自研AI光速塌房，扒开底层模型全是中国 kimi</a></li>
<li><a href="https://www.msn.com/zh-cn/news/other/硅谷500亿巨头翻车现场-cursor被扒套壳kimi/ar-AA1Z6fng">硅谷500亿巨头翻车现场!Cursor被扒套壳 Kimi</a></li>

</ul>
</details>

**标签**: `#Cursor`, `#AI编程`, `#马斯克`, `#GitHub`, `#大模型`

---

<a id="item-14"></a>
^item-14
## [Chrome 提出 WebMCP 标准，为 AI 智能体提供原生网页操作能力](https://www.infoq.cn/article/wCUdx4sZt94siodQI7u0?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

Google Chrome 提出了 WebMCP（Web Machine Control Protocol）标准，目前以 Origin Trial 形式提供，该标准为 AI 智能体提供了原生 JavaScript API，使其能够直接与网页交互，将 Web 应用功能作为带有自然语言描述的结构化工具进行调用。 该标准可能从根本上改变 AI 智能体与浏览器的集成方式，实现更可靠、更高效的 Web 自动化，而无需依赖脆弱的 DOM 抓取或基于截图的方法。它对 AI 行业和整个 Web 生态具有重要影响，有望成为 Web 上智能体 AI 的基础层。 WebMCP 提供了两个仅与浏览器内置智能体交互的 API，开发者可以使用 JavaScript 或 HTML 属性实现它们。Origin Trial 允许开发者在 Chrome 中测试该功能并提供反馈，之后才会成为永久标准。

rss · InfoQ 中文 · 6月18日 11:35

**背景**: 像 OpenAI Operator 和 Perplexity Comet 这样的 AI 智能体可以代表用户浏览网页并执行操作，但它们通常依赖非标准方法，如 DOM 解析或截图分析。WebMCP 旨在为智能体与 Web 应用交互提供标准化的原生接口，类似于 MCP（模型上下文协议）为 AI 模型标准化工具访问。该提案是 Chrome 将 AI 能力直接集成到浏览器中的更广泛努力的一部分。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://webmachinelearning.github.io/webmcp/">WebMCP</a></li>
<li><a href="https://developer.chrome.com/blog/webmcp-mcp-usage">When to use WebMCP and MCP | AI on Chrome | Chrome for Developers</a></li>
<li><a href="https://developer.chrome.com/docs/web-platform/origin-trials">Get started with origin trials | Web Platform | Chrome for ... Running an Origin Trial - The Chromium Projects GitHub - GoogleChrome/OriginTrials: Enabling safe ... Origin Trials | OriginTrials Origin Trials - The Chromium Projects Origin Trials Guide for Web Developers - GitHub</a></li>

</ul>
</details>

**标签**: `#AI智能体`, `#WebMCP`, `#Chrome`, `#标准提案`, `#AI工具`

---

<a id="item-15"></a>
^item-15
## [MosaicLeaks：AI 研究智能体可能泄露机密](https://huggingface.co/blog/ServiceNow/mosaicleaks) ⭐️ 8.0/10

MosaicLeaks 研究指出，当前的 AI 研究智能体在执行任务时可能无意中泄露敏感信息，揭示了关键的安全漏洞。 这一发现意义重大，因为 AI 智能体越来越多地用于研发，数据泄露可能暴露专有代码、商业机密或个人数据，削弱对 AI 系统的信任。 该研究证明，智能体工具和 API 调用可以直接或通过行为模式暴露数据，而基于云的智能体可能绕过 IDE 级别的安全扫描，加剧风险。

rss · Hugging Face Blog · 6月18日 18:13

**背景**: AI 研究智能体是执行代码生成、漏洞研究和数据分析等任务的自主系统。它们通常拥有对仓库和敏感数据的广泛访问权限，如果安全措施不当，可能成为数据泄露的渠道。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.crowdstrike.com/en-us/blog/data-leakage-ai-plumbing-problem/">Data Leakage: AI's Plumbing Problem | CrowdStrike</a></li>
<li><a href="https://witness.ai/blog/ai-data-leaks/">What Are AI Data Leaks? Causes, Risks, and Prevention</a></li>
<li><a href="https://www.protecto.ai/blog/ai-data-leakage-risks-and-prevention/">AI Data Leakage Prevention: Risks & AI Agent Security</a></li>

</ul>
</details>

**标签**: `#AI安全`, `#数据泄露`, `#智能体`, `#隐私保护`

---

<a id="item-16"></a>
^item-16
## [超越 LoRA：能否击败最流行的微调技术？](https://huggingface.co/blog/peft-beyond-lora) ⭐️ 8.0/10

Hugging Face 的博客文章探讨了超越 LoRA 的微调方法，介绍了 PEFT 库中的新技术，并对比了它们与 LoRA 的性能。 这很重要，因为 LoRA 是目前最流行的参数高效微调技术，找到超越它的方法可以显著提升模型适配的效率和性能。 该博客可能涵盖 AdaLoRA、IA3 或其他 PEFT 方法，并提供在语言理解或生成等任务上的基准测试结果。

rss · Hugging Face Blog · 6月18日 00:00

**背景**: LoRA（低秩适应）是一种参数高效微调技术，仅更新少量低秩矩阵，降低内存和计算成本，同时通常能达到与全参数微调相当的性能。Hugging Face 的 PEFT 库实现了 LoRA 及其他方法，以实现高效的模型适配。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://huggingface.co/docs/peft/main/en/conceptual_guides/lora">LoRA · Hugging Face</a></li>
<li><a href="https://huggingface.co/docs/peft/index">PEFT · Hugging Face</a></li>

</ul>
</details>

**标签**: `#LoRA`, `#微调`, `#PEFT`, `#大模型`, `#Hugging Face`

---

<a id="item-17"></a>
^item-17
## [F5 修复 NGINX 严重漏洞，可致远程代码执行](https://thehackernews.com/2026/06/f5-patches-two-critical-nginx-open.html) ⭐️ 8.0/10

F5 发布了 NGINX 开源版的安全更新，修复了两个严重漏洞 CVE-2026-42530 和 CVE-2026-42055，这些漏洞可能导致远程代码执行。 NGINX 是最广泛使用的 Web 服务器和反向代理之一；这些 CVSS 9.2 的漏洞对无数组织构成高风险，因此立即修补至关重要。 CVE-2026-42530 是 ngx_http_v3_module 中的释放后使用漏洞，通过 HTTP/3 QUIC 触发；CVE-2026-42055 影响 HTTP/2 模块；两者均可导致远程代码执行或拒绝服务。

rss · The Hacker News · 6月18日 17:32

**背景**: NGINX 是一种流行的开源 Web 服务器、反向代理和负载均衡器。HTTP/3（QUIC）和 HTTP/2 是提升性能的现代协议。释放后使用漏洞发生在内存被释放后仍被访问时，可能允许攻击者执行任意代码。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://thehackernews.com/2026/06/f5-patches-two-critical-nginx-open.html">F5 Patches Two Critical NGINX Open Source Flaws Enabling ...</a></li>
<li><a href="https://gbhackers.com/f5-patches-nginx-vulnerability/">F5 Patches NGINX Vulnerability Enabling Code Execution and DoS...</a></li>
<li><a href="https://my.f5.com/manage/s/article/K000161616">NGINX ngx_http_v3_module vulnerability CVE-2026-42530</a></li>

</ul>
</details>

**标签**: `#NGINX`, `#漏洞预警`, `#远程代码执行`, `#F5`, `#安全更新`

---

<a id="item-18"></a>
^item-18
## [被遗弃的 AI 代理：网络中的隐藏访问风险](https://thehackernews.com/2026/06/orphaned-ai-agents-how-to-find-hidden.html) ⭐️ 8.0/10

一篇新文章指出，许多企业存在被遗弃的 AI 代理和常驻权限，导致对敏感数据的访问失控，形成严重安全隐患。 这很重要，因为被遗弃的 AI 代理可能被攻击者利用来访问知识产权，而对 AI 工具权限缺乏治理正对企业安全构成日益严重的威胁。 被遗弃的代理是指创建者离开公司后仍在运行的 AI 工具，而常驻权限则授予永久、不受限制的访问权限。文章建议清点所有非人类身份并实施零常驻权限（ZSP）。

rss · The Hacker News · 6月18日 15:33

**背景**: AI 代理是自主执行任务的软件程序，通常可以访问公司系统。随着企业快速采用内部 AI 工具，许多企业未能跟踪或停用这些代理，导致留下具有残留权限的被遗弃实例。零常驻权限（ZSP）是一种安全模型，其中任何身份都不保留持久访问权限；权限按需即时授予并自动撤销。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://thehackernews.com/2026/06/orphaned-ai-agents-how-to-find-hidden.html">Orphaned AI Agents: How to Find Hidden Access Risks Inside Your Network</a></li>
<li><a href="https://saviynt.com/blog/ai-agent-zero-standing-privileges">Why AI Agents Should Never Have Standing Privileges | Saviynt</a></li>
<li><a href="https://www.akeyless.io/blog/zsp-and-jit-access-for-ai-security/">Zero Standing Privileges & JIT Access for AI Security</a></li>

</ul>
</details>

**标签**: `#AI安全`, `#权限管理`, `#企业安全`, `#AI代理`

---

<a id="item-19"></a>
^item-19
## [Popa 僵尸网络与以色列上市公司 Alarum 关联](https://krebsonsecurity.com/2026/06/popa-botnet-linked-to-publicly-traded-israeli-firm/) ⭐️ 8.0/10

安全研究人员将运行了四年的 Popa Android 僵尸网络与以色列上市公司 Alarum Technologies Ltd 旗下的住宅代理服务 NetNut 关联起来。 这一发现揭示了一家合法的上市公司可能从一个用于广告欺诈、账户接管和数据抓取的大型僵尸网络中获利，引发了关于代理行业企业监管和道德实践的严重担忧。 Popa 僵尸网络已感染数百万台 Android 电视盒，用于中继互联网流量，创建持久的加密通信通道，而非进行 DDoS 攻击等破坏性活动。

rss · Krebs on Security · 6月18日 17:37

**背景**: 僵尸网络是由攻击者远程控制的受感染设备网络。像 NetNut 这样的住宅代理服务通过真实家庭 IP 地址路由流量以避免检测，通常用于合法的网络抓取，但也可能被滥用于恶意活动。Alarum Technologies 在纳斯达克上市，股票代码为 ALAR。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://krebsonsecurity.com/2026/06/popa-botnet-linked-to-publicly-traded-israeli-firm/">‘Popa’ Botnet Linked to Publicly-Traded Israeli Firm</a></li>
<li><a href="https://netnut.io/">NetNut - High Quality Proxies Network For Web Data Collection</a></li>
<li><a href="https://alarum.io/about-alarum/">About Alarum Technologies - Alarum Group</a></li>

</ul>
</details>

**标签**: `#僵尸网络`, `#Android`, `#安全研究`, `#广告欺诈`, `#代理服务`

---

<a id="item-20"></a>
^item-20
## [AVer PTC 摄像头存在严重远程代码执行漏洞](https://www.cisa.gov/news-events/ics-advisories/icsa-26-169-01) ⭐️ 8.0/10

CISA 于 2026 年 6 月 18 日发布公告 ICSA-26-169-01，警告多款 AVer PTC 摄像头型号（PTC500S、PTC115、PTC500+、PTC115+）存在 CVE-2026-40624 严重漏洞，该漏洞源于不当输入验证，允许远程未认证攻击者实现任意代码执行。 该漏洞 CVSS 评分 9.8（严重），影响全球政府、商业和医疗设施中部署的摄像头，对关键基础设施构成高风险。成功利用可使攻击者完全控制受影响设备，并可能横向移动至内部网络。 该漏洞（CWE-552：外部可访问的文件或目录）通过特制 Web 请求触发。AVer 已发布固件修复程序，用户应立即应用。

rss · CISA Cybersecurity Advisories · 6月18日 12:00

**背景**: AVer PTC 摄像头是 PTZ（云台变焦）摄像头，常用于教育、企业和政府机构的视频会议和监控。CISA 的公告是其保护工业控制系统（ICS）和操作技术（OT）设备的持续努力的一部分，通常以 CSAF（通用安全咨询框架）机器可读格式发布。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://windowsforum.com/threads/cisa-warns-aver-ptc-cameras-cve-2026-40624-cvss-9-8-can-enable-code-execution.427802/">CISA Warns: AVer PTC Cameras CVE-2026-40624 (CVSS 9.8) Can ...</a></li>
<li><a href="https://feedly.com/cve/CVE-2026-40624">CVE-2026-40624 - Exploits & Severity - Feedly</a></li>

</ul>
</details>

**标签**: `#安全漏洞`, `#摄像头`, `#CISA`, `#CVE-2026-40624`, `#ICS`

---

<a id="item-21"></a>
^item-21
## [红帽与 IBM 启动 50 亿美元 Project Lightwell 开源安全计划](https://www.redhat.com/en/blog/friday-five-june-19-2026-red-hat) ⭐️ 8.0/10

红帽与 IBM 宣布启动 Project Lightwell 计划，投入 50 亿美元和 2 万名工程师，旨在建立企业级开源软件供应链安全清算中心。 该计划解决了开源软件供应链安全的关键挑战，影响金融和关键基础设施领域，并可能为漏洞管理树立新的行业标准。 Project Lightwell 将作为 AI 驱动的安全协调层，为特定开源版本提供经过验证的修复，无需访问企业源代码。

rss · Red Hat Blog · 6月19日 00:00

**背景**: 软件供应链安全在 SolarWinds 等重大攻击后成为主要关注点。开源软件被广泛使用，但往往缺乏协调的漏洞响应。Project Lightwell 旨在通过充当报告、验证和修补漏洞的中央清算中心来填补这一空白。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.ibm.com/products/lightwell">Project Lightwell - IBM</a></li>
<li><a href="https://www.redhat.com/en/lightwell">Project Lightwell - redhat.com</a></li>
<li><a href="https://www.infoworld.com/article/4178451/ibm-and-red-hat-want-to-become-the-security-clearinghouse-for-open-source-applications-in-the-enterprise.html">IBM and Red Hat want to become the ‘ security clearinghouse ’ for...</a></li>

</ul>
</details>

**标签**: `#开源安全`, `#软件供应链`, `#红帽`, `#IBM`, `#Project Lightwell`

---

<a id="item-22"></a>
^item-22
## [Poolside 发布 Laguna M.1：225B MoE 模型专为智能体编程](https://www.reddit.com/r/LocalLLaMA/comments/1u9b2i3/poolsidelagunam1_hugging_face_225ba23b/) ⭐️ 8.0/10

Poolside 发布了 Laguna M.1，这是一个总参数 225B、每 token 激活参数 23B 的混合专家模型，专为智能体编程和长周期任务设计。它在 SWE-bench Verified（74.6%）和 Terminal-Bench 2.0（45.8%）等基准上取得了有竞争力的结果，并采用 Apache 2.0 许可。 该模型推动了开源智能体编程模型的发展，为专有系统提供了强有力的替代方案。其 Apache 2.0 许可允许广泛的商业和研究用途，可能加速 AI 辅助软件开发。 Laguna M.1 采用 70 层全局注意力、256 个专家（top-k=16 路由）和无辅助损失负载均衡。它支持 262,144 token 的上下文窗口，并在工具调用之间支持交错推理。

reddit · r/LocalLLaMA · /u/pmttyji · 6月18日 16:30

**背景**: 混合专家（MoE）是一种将模型划分为多个专门子网络（专家）的技术，每个输入仅激活部分专家以提高效率。无辅助损失负载均衡由 DeepSeek 首创，通过调整路由偏置而不污染训练目标。SwiGLU 是一种门控激活函数，常用于现代大语言模型以获得更好性能。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Mixture_of_experts">Mixture of experts - Wikipedia</a></li>
<li><a href="https://huggingface.co/blog/moe">Mixture of Experts Explained</a></li>
<li><a href="https://arxiv.org/abs/2408.15664">Auxiliary - Loss - Free Load Balancing Strategy for Mixture-of-Experts</a></li>

</ul>
</details>

**社区讨论**: Reddit 社区对该模型强大的基准性能和 Apache 2.0 许可表示兴奋，但一些人质疑其相对于现有模型（如 DeepSeek-V4 和 Qwen3.5）的实际优势。还有关于高总参数数量和高效推理需求的讨论。

**标签**: `#大模型`, `#MoE`, `#智能体编程`, `#开源`, `#AI工具`

---

<a id="item-23"></a>
^item-23
## [Liquid AI 发布 LFM2.5 嵌入与 ColBERT 模型](https://www.reddit.com/r/LocalLLaMA/comments/1u9ddft/lfm25embedding350m_lfm25colbert350m/) ⭐️ 8.0/10

Liquid AI 发布了 LFM2.5-Embedding-350M（密集双编码器）和 LFM2.5-ColBERT-350M（后期交互检索器），两者均支持 11 种语言的多语言检索，推理速度与更小模型相当。 这些模型在同类尺寸中达到了最佳多语言精度，并且可以作为现有 RAG 管道的即插即用替代品，显著提升构建多语言 AI 应用的开发者的检索质量。 LFM2.5-Embedding-350M 为每个文档生成单个向量以实现快速索引，而 ColBERT 变体为每个 token 存储一个向量并使用 MaxSim 进行细粒度匹配。两个模型均采用高效的 LFM2 骨干网络，并在 Hugging Face 上以 GGUF 格式提供。

reddit · r/LocalLLaMA · /u/pmttyji · 6月18日 17:55

**背景**: 密集双编码器将文档编码为单个向量以实现高效检索，而像 ColBERT 这样的后期交互模型保留 token 级信息以获得更高精度。RAG（检索增强生成）管道将检索与语言模型结合，生成基于外部知识的答案。Liquid AI 的 LFM2.5 模型旨在为设备端和服务器部署提供最先进的多语言检索能力。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.liquid.ai/blog/introducing-lfm2-5-the-next-generation-of-on-device-ai">Introducing LFM2.5: The Next Generation of On-Device AI</a></li>
<li><a href="https://arxiv.org/html/2511.23404v1">LFM2 Technical Report - arXiv.org</a></li>
<li><a href="https://jina.ai/news/what-is-colbert-and-late-interaction-and-why-they-matter-in-search/">What is ColBERT and Late Interaction and Why They Matter in Search?</a></li>

</ul>
</details>

**社区讨论**: Reddit 社区反应积极，称赞模型的多语言能力和实用的即插即用兼容性。一些用户讨论了密集模型与 ColBERT 模型在不同用例中的权衡，并表示希望看到与其他流行嵌入模型的基准对比。

**标签**: `#嵌入模型`, `#多语言检索`, `#RAG`, `#LFM2.5`, `#开源AI`

---

<a id="item-24"></a>
^item-24
## [泄露文件：OpenAI 每年亏损数十亿美元](https://www.reddit.com/r/LocalLLaMA/comments/1u8tcob/leaked_financial_docs_show_openai_is_losing/) ⭐️ 8.0/10

泄露的财务文件显示，OpenAI 每年亏损数十亿美元，引发对其商业模式可持续性的严重质疑。 这一消息凸显了训练和运行大型 AI 模型的巨大成本，可能影响投资者信心以及整个 AI 行业的盈利策略。 泄露文件据称详细列出了 OpenAI 的收入和支出，显示尽管收入大幅增长，但成本（尤其是计算和人才成本）远超收入。

reddit · r/LocalLLaMA · /u/johnnyApplePRNG · 6月18日 01:55

**背景**: OpenAI 是领先的 AI 研究机构，以开发 GPT 模型和 ChatGPT 而闻名。与许多 AI 初创公司一样，它依赖大量投资来覆盖高昂的运营成本，同时寻求长期盈利。

**社区讨论**: Reddit 社区对 OpenAI 的财务状况表示担忧，一些用户质疑当前 AI 商业模式的可行性，另一些用户则指出此类亏损在高增长科技公司中很常见。

**标签**: `#OpenAI`, `#财务亏损`, `#AI行业`, `#商业模式`

---

<a id="item-25"></a>
^item-25
## [Token 商品化重塑 AI 基础设施](https://www.infoq.cn/article/VXD37NcfxyXjXFLk2hyd?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

文章分析了 Token 商品化如何从根本上改变 AI 基础设施的架构、成本模型和商业模式，从 GPU 租赁转向基于 Token 的定价。 这一转变标志着 AI 行业进入新阶段，Token 成为主要价值单位，使 AI 服务更灵活、更易获取，同时迫使传统云服务商做出调整。 AWS Bedrock 等平台现在按 Token 收费而非 GPU 小时，中国运营商也推出包含 DeepSeek-V4-Flash、GLM-5 等模型的 Token 套餐，凸显 Token 经济的快速商业化。

rss · InfoQ 中文 · 6月18日 19:17

**背景**: Token 是大语言模型中输入和输出的基本单位，代表计算成本。传统上，AI 基础设施按 GPU 小时等计算资源定价，但模型即服务（MaaS）的兴起使基于 Token 的定价普及，用户按处理的 Token 数量付费。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.stcn.com/article/detail/3905001.html">1元钱285万Token的陷阱！起底“AI中转站”：封号跑路，模型降智，倒卖用户数据</a></li>
<li><a href="https://www.36kr.com/p/3807785308659463">阿里AI迎来商业化转折点，正式进化到Token经济了 - 36 36kr</a></li>
<li><a href="https://zhuanlan.zhihu.com/p/2044216645124673722">AI 云服务市场分析，算力租赁厂商该如何卖 token？ - 知乎</a></li>

</ul>
</details>

**标签**: `#AI基础设施`, `#Token经济`, `#大模型`, `#商业模式`

---

<a id="item-26"></a>
^item-26
## [谷歌为 Android 开发者测试大模型：GPT-5.5 暂时领先](https://www.infoq.cn/article/76b4Q6i80w8MFHpuFFWA?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

谷歌正在 Android 开发者中评估大语言模型，OpenAI 的 GPT-5.5 目前表现暂时领先。 这项评估可能影响哪些 AI 模型被集成到 Android 开发工具中，从而塑造开发者体验，并可能为移动生态中的模型选择树立先例。 GPT-5.5 由 OpenAI 于 2026 年 4 月 23 日发布，是一款面向复杂专业工作负载的前沿模型，基准测试成绩包括 Terminal-Bench 2.0 上 82.7%和 FrontierMath Tier 1–3 上 51.7%。

rss · InfoQ 中文 · 6月18日 17:33

**背景**: 像 GPT-5.5 这样的大语言模型（LLM）是在海量文本数据上训练的人工智能系统，能够生成类似人类的文本并协助编码、推理等任务。谷歌的 Android 开发生态包括 Android Studio 等工具，AI 驱动的功能可以帮助开发者更高效地编写代码。此次测试比较了多个模型，以找到最适合开发者需求的模型。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/GPT-5.5">GPT-5.5</a></li>
<li><a href="https://openrouter.ai/openai/gpt-5.5">GPT - 5 . 5 - API Pricing & Benchmarks | OpenRouter</a></li>

</ul>
</details>

**标签**: `#AI`, `#大模型`, `#Android`, `#GPT`, `#谷歌`

---

<a id="item-27"></a>
^item-27
## [Vercel Labs 开源 Zero-Native：基于 Zig 的跨平台原生应用框架](https://www.infoq.cn/article/PHO4u00H2hgWgkVzg3H4?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

Zero-Native 提供了 Electron 的替代方案，生成体积小、内存占用低的二进制文件，并支持即时重建，有望显著改善跨平台应用的开发者体验和最终用户性能。同时，它也展示了 Zig 作为面向 Web 开发者的系统级语言的潜力。 该框架使用 WebView 作为 UI 层，原生层用 Zig 编写，避免了打包整个浏览器运行时的开销。Zero-Native 在 Vercel Labs 的 GitHub 上开源，支持通过 'zig build run' 等命令快速开发。

rss · InfoQ 中文 · 6月18日 16:42

**背景**: Zig 是一种通用系统编程语言，旨在改进 C 语言，具有编译时泛型和手动内存管理等特性，但不使用宏或预处理器。像 Electron 这样的跨平台框架通常捆绑完整的 Chromium 实例，导致应用体积大、内存消耗高。Zero-Native 旨在通过保持原生层最小化并使用系统 WebView 进行渲染来解决这一问题。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/vercel-labs/zero-native">GitHub - vercel-labs/zero-native: Build desktop + mobile apps with Zig and web UI · GitHub</a></li>
<li><a href="https://zero-native.dev/">zero-native | Desktop Apps with Zig + WebView</a></li>
<li><a href="https://www.infoq.com/news/2026/06/zero-native-zig-xplatform-vercel/">Vercel Labs Open-Sources Zero-Native: a Zig-Based Cross-Platform Native Application Framework - InfoQ</a></li>

</ul>
</details>

**标签**: `#Vercel`, `#Zig`, `#跨平台`, `#开源`, `#原生应用`

---

<a id="item-28"></a>
^item-28
## [具身智能商业化三阶段，终局是卖 Token](https://www.infoq.cn/article/0KPTbaiUC9HwkeA9tf5F?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

星海图创始人在访谈中提出，具身智能商业化将经历三个阶段，最终商业模式是出售 Token。 这一观点为理解具身智能公司如何创收提供了新颖框架，可能影响机器人及 AI 行业的投资与战略。 三个阶段的具体内容在摘要中未详细说明，但终局是出售 Token，类似于大语言模型按 Token 收费。这意味着从销售硬件转向将智能作为服务出售。

rss · InfoQ 中文 · 6月18日 16:00

**背景**: 具身智能指通过物理实体与环境交互的智能系统，如机器人。基于 Token 的定价在 AI 服务中很常见，用户按计算或输出单位付费。将这一模式应用于机器人，意味着未来机器人可能不是被出售，而是作为服务被租赁或访问。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://news.qq.com/rain/a/20260325A05FAG00">“未来机器人按Token收费”——百度沈抖在博鳌绘出新图景</a></li>
<li><a href="https://finance.cnr.cn/ycbd/20260516/t20260516_527622708.shtml">Token经济火了 AI商业化如何走完“最后一公里”？_央广网</a></li>

</ul>
</details>

**标签**: `#具身智能`, `#商业化`, `#AI趋势`, `#机器人`

---

<a id="item-29"></a>
^item-29
## [Terraform MCP 服务器发布，助力 AI 管理基础设施](https://www.infoq.cn/article/ftrYiDYaJmOeZcexSUMc?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

HashiCorp 发布了 Terraform MCP 服务器，这是一个模型上下文协议（MCP）服务器，允许 AI 助手通过 Terraform Registry API 和 HCP Terraform 工作区进行基础设施自动化管理。 该集成将 AI 代理与基础设施即代码（IaC）连接起来，使 DevOps 和 SRE 团队能够通过自然语言查询和管理 Terraform 资源，有望减少手动操作并加速运维流程。 该服务器提供对 Terraform Registry 中提供商文档、模块和策略的实时访问，并可连接到 HCP Terraform 或 Terraform Enterprise，用于查询工作区，例如列出长期未更新的工作区或管理大量资源的工作区。

rss · InfoQ 中文 · 6月18日 14:18

**背景**: Terraform 是 HashiCorp 推出的一款流行的基础设施即代码工具，允许用户通过声明式配置文件定义和配置基础设施。模型上下文协议（MCP）是一种开放协议，标准化了 AI 模型与外部工具和数据源的交互方式，使 AI 助手能够执行文本生成之外的操作。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://developer.hashicorp.com/terraform/mcp-server">Terraform MCP server overview | Terraform | HashiCorp Developer</a></li>
<li><a href="https://github.com/hashicorp/terraform-mcp-server">GitHub - hashicorp/terraform-mcp-server: The Terraform MCP Server provides seamless integration with Terraform ecosystem, enabling advanced automation and interaction capabilities for Infrastructure as Code (IaC) development. · GitHub</a></li>
<li><a href="https://www.hashicorp.com/en/blog/terraform-mcp-server-is-now-generally-available">Terraform MCP server is now generally available</a></li>

</ul>
</details>

**标签**: `#Terraform`, `#MCP`, `#AI Agent`, `#DevOps`, `#基础设施即代码`

---

<a id="item-30"></a>
^item-30
## [Slack 将 700+ EMR 作业从 SSH 迁移至 REST](https://www.infoq.cn/article/2tlRd4jkgZwYWmzLA5Kt?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

Slack 将 Amazon EMR 上基于 SSH 的作业执行方式替换为 RESTful 调度架构，将 700 多个 Airflow Operator 迁移到集中式作业提交系统，并移除了对生产集群的直接 SSH 访问。 此次迁移提升了 Slack 数据平台的安全性、可靠性和可观测性，为其他拥有基于 SSH 的传统工作流的组织进行大规模基础设施现代化改造树立了典范。 新架构使用 REST API 层来抽象 EMR 作业提交，与之前基于 SSH 的方法相比，实现了更好的监控、日志记录和错误处理。

rss · InfoQ 中文 · 6月18日 09:00

**背景**: Amazon EMR 是一个用于运行 Apache Spark 和 Hadoop 等框架的云大数据平台。传统上，Slack 使用 SSH 直接连接到 EMR 集群并提交作业，这带来了安全风险和运维挑战。RESTful 架构使用 HTTP 请求与服务交互，提供标准化接口和更简单的自动化能力。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.infoq.cn/article/2tlRd4jkgZwYWmzLA5Kt">Slack 淘汰 SSH：700+ EMR 作业迁移至基于 REST 的调度架构</a></li>
<li><a href="https://www.sysdesai.com/news/bmKUVIJ8zubS">Slack's Migration from SSH to REST-Based Architecture for EMR ...</a></li>
<li><a href="https://docs.aws.amazon.com/emr/latest/APIReference/Welcome.html">Welcome - Amazon EMR</a></li>

</ul>
</details>

**标签**: `#架构迁移`, `#EMR`, `#REST`, `#运维实践`, `#Slack`

---

<a id="item-31"></a>
^item-31
## [OpenAI 推理模型助力诊断罕见儿童疾病](https://openai.com/index/diagnose-rare-childhood-diseases) ⭐️ 7.0/10

研究人员使用 OpenAI 推理模型重新分析未确诊的罕见病病例，在之前未解决的病例中发现了 18 例新诊断。 这展示了 AI 加速罕见遗传病诊断的潜力，这些疾病往往多年无法确诊，可能改善受影响儿童的预后。 该研究使用了 OpenAI 的 o1 推理模型，该模型在回答前会花时间“思考”，使其更擅长基因组分析等复杂推理任务。

rss · OpenAI News · 6月18日 08:00

**背景**: 许多罕见遗传病是由单个基因突变引起的孟德尔疾病。诊断它们通常需要随着新证据的出现对基因组数据进行劳动密集型重新分析。AI 推理模型可以帮助自动化并改进这一过程。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://openai.com/index/diagnose-rare-childhood-diseases/">Using AI to help physicians diagnose rare genetic diseases ... | OpenAI</a></li>
<li><a href="https://en.wikipedia.org/wiki/OpenAI_o1">OpenAI o1 - Wikipedia</a></li>
<li><a href="https://www.linkedin.com/pulse/speeding-diagnosis-rare-genetic-disorders-help-monica-bertagnolli-x0sme">Speeding the Diagnosis of Rare Genetic Disorders with the Help of...</a></li>

</ul>
</details>

**标签**: `#AI医疗`, `#大模型`, `#罕见病`, `#OpenAI`

---

<a id="item-32"></a>
^item-32
## [开源模型 Agent 能力基准测试](https://huggingface.co/blog/is-it-agentic-enough) ⭐️ 7.0/10

Hugging Face 发布了一篇博客，介绍如何利用自有工具集对开源模型的 Agent 能力进行基准测试。该博客提供了评估工具调用和自主任务完成的实用指南。 随着开源模型在 Agent 任务上日益与闭源模型竞争，标准化的评测框架有助于开发者根据自身工具需求选择合适的模型。这赋能社区做出明智决策，并推动开源 AI Agent 的进步。 该博客可能涵盖如何设计反映真实工具使用场景的自定义基准，包括任务完成度、工具选择准确性和错误处理等指标。它强调了在自有工具集上评估模型的重要性，而非仅依赖通用基准。

rss · Hugging Face Blog · 6月18日 00:00

**背景**: Agentic AI 指能够自主规划和执行任务的系统，通常通过调用外部工具或 API 实现。对这些能力进行基准测试具有挑战性，因为性能高度依赖于具体工具和环境。像 Kimi K2 和 MiniMax M3 这样的开源模型最近展现出强大的 Agent 性能，使得标准化评估变得越来越重要。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://h5.ifeng.com/c/vivoArticle/v002beoz--RO-_up3GWX26HbyTzUkDiTyYL--O4HG7MD5CKrQA__?isNews=1&showComments=0">杨植麟交卷，Kimi 万亿参数K2 开 源 ： Agent 能 力 紧逼Anthropic...</a></li>
<li><a href="https://blog.csdn.net/gitblog_01067/article/details/152035181">突破工具使用瓶颈：JARVIS ToolBench集成与大规模基准测试全指南-CSDN...</a></li>

</ul>
</details>

**标签**: `#AI Agent`, `#开源模型`, `#基准测试`, `#工具调用`

---

<a id="item-33"></a>
^item-33
## [创业一年，机器人打入头部车企](https://www.infoq.cn/article/GYBZkeGxGry11oCu0c1A?utm_source=rss&utm_medium=article) ⭐️ 6.0/10

光象科技 CEO 张涛分享了创业一年内，如何将工业级具身智能机器人部署到头部车企工厂的实践与经验。 这一案例表明，具身智能机器人正从实验室走向真实的工业生产线，尤其是在高精度的汽车制造领域，预示着行业新一轮自动化浪潮的到来。 光象科技是清华相关学院孵化的企业，于 2026 年 6 月发布了工业级自进化具身智能机器人 Phi-Bot X1，搭载自研物理原生智能模型，并构建了 Phi-Arch 物理智能开发平台以实现规模化部署。

rss · InfoQ 中文 · 6月18日 19:27

**背景**: 具身智能是指能够感知、推理并在物理世界中行动的机器人。比亚迪、特斯拉等车企正大力投资此类机器人用于工厂自动化。光象科技的机器人专为高精度、多工位、高节拍的工业场景设计。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.163.com/dy/article/KVFD8P6M0514R9OJ.html">环球问策｜光象科技张涛：具身智能并非泡沫，工业场景将走向人机设备...</a></li>
<li><a href="https://www.163.com/dy/article/KV4GU1UU0534A4SC.html">光象科技发布工业级自进化具身智能机器人Phi-Bot X1</a></li>
<li><a href="https://www.36kr.com/p/3390831555008899">【光象科技】完成数千万元种子轮融资，清华系工业具身智能新锐引领场...</a></li>

</ul>
</details>

**标签**: `#机器人`, `#车企`, `#创业`, `#行业应用`

---

<a id="item-34"></a>
^item-34
## [Agentic AI 破解金融反欺诈深层困局](https://www.infoq.cn/article/by1X8kCw2mUUUGpajgJI?utm_source=rss&utm_medium=article) ⭐️ 6.0/10

在 AICon 上海大会上，一场演讲探讨了 Agentic AI 如何解决传统金融反欺诈系统的深层局限，并提出了一种端到端闭环解决方案。 金融欺诈手段日益复杂，传统的规则系统难以应对。Agentic AI 提供了更自适应、更自主的方法，有望显著提升欺诈检测能力，降低金融机构的损失。 演讲指出了三个痛点：交易事前风险渗透、交易事中粗暴拦截、交易事后洞察不足。提出的 Agentic AI 解决方案旨在构建一个自驱式、端到端闭环的欺诈风控体系。

rss · InfoQ 中文 · 6月18日 10:00

**背景**: Agentic AI 是指能够在既定约束下自主追求目标、使用工具并采取行动的 AI 系统。在金融反欺诈中，传统系统依赖静态规则和人工审核，往往过于缓慢或僵化，难以捕捉新型欺诈模式。Agentic AI 可以通过从数据中学习并主动采取措施，动态适应新威胁。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.infoq.cn/article/by1X8kCw2mUUUGpajgJI">Agentic AI 如何破解金融反欺诈的深层困局｜AICon上海 - InfoQ</a></li>
<li><a href="https://en.wikipedia.org/wiki/Agentic_AI">Agentic AI</a></li>
<li><a href="https://www.sohu.com/a/778896123_120815556">中国金融反欺诈行业报告：以确保反欺诈系统的有效性和及时性</a></li>

</ul>
</details>

**标签**: `#AI`, `#金融反欺诈`, `#Agentic AI`, `#行业趋势`

---

<a id="item-35"></a>
^item-35
## [TDSQL 从独立版到一体化架构的演进](https://www.infoq.cn/video/Zt9VFw53woH6vsa9cBTR?utm_source=rss&utm_medium=article) ⭐️ 6.0/10

腾讯云 TDSQL 数据库从独立版演进到一体化架构，金融机构可通过一次部署自由切换多种实例模式，实现资源的统一管理。 这一演进简化了企业（尤其是金融行业）的数据库管理，降低了系统复杂性并提高了成本效益，同时支持高并发事务和复杂分析查询。 该一体化版本于 2025 年 5 月发布，支持 HTAP（混合事务/分析处理），一次部署即可覆盖多种引擎模式，包括 TDSQL for MySQL 和 TDSQL for PostgreSQL。

rss · InfoQ 中文 · 6月18日 09:00

**背景**: TDSQL（腾讯分布式 SQL）是腾讯云自研的金融级分布式数据库，最初有面向 MySQL 和 PostgreSQL 的独立版本，需要分别部署。新的一体化架构将这些整合到一个平台，提供灵活性和集中管理。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.infoq.cn/video/Zt9VFw53woH6vsa9cBTR">从 独 立 版 到 一 体 化 ： TDSQL ...</a></li>
<li><a href="https://www.news.cn/tech/20250724/abbdf9b24aeb41bb884b348071349e64/c.html">腾讯云 TDSQL 蝉联中国金融与银行分布式数据库市场“双料冠军”-新华网</a></li>
<li><a href="https://www.tencentcloud.com/zh/products/tctdsql">TDSQL - tencentcloud.com</a></li>

</ul>
</details>

**标签**: `#TDSQL`, `#数据库`, `#腾讯云`, `#企业级实践`

---