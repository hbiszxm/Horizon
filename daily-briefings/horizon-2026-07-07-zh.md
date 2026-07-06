# Horizon 每日速递 - 2026-07-07

> 从 92 条内容中筛选出 31 条重要资讯。

---

1. [[#^item-1|16 年历史的 KVM 漏洞允许虚拟机逃逸至宿主机]] ⭐️ 9.0/10
2. [[#^item-2|Anthropic 发现 Claude 内部存在类似意识的全局工作空间]] ⭐️ 9.0/10
3. [[#^item-3|腾讯开源混元 Hy3 preview：295B MoE 模型]] ⭐️ 9.0/10
4. [[#^item-4|Fable 5 登顶 KernelBench，标志 RSI 循环开端]] ⭐️ 9.0/10
5. [[#^item-5|火山引擎的 Agentic 范式视频画质优化]] ⭐️ 8.0/10
6. [[#^item-6|uv 工具创始人反思 OpenAI 收购后发布的 AI 编程工具]] ⭐️ 8.0/10
7. [[#^item-7|Anthropic：Claude 处理 95% 内部数据分析查询]] ⭐️ 8.0/10
8. [[#^item-8|73%的 PR 由 AI 生成：Claude Code 之父对话 Spotify]] ⭐️ 8.0/10
9. [[#^item-9|AI 周报：豆包千问关停智能体；腾讯 token 定价；美团阿里限制 AI 工具]] ⭐️ 8.0/10
10. [[#^item-10|Azure Functions 在 Build 2026 发布无服务器智能体运行时]] ⭐️ 8.0/10
11. [[#^item-11|LeRobot v0.6.0：想象、评估、改进]] ⭐️ 8.0/10
12. [[#^item-12|Hugging Face 重大更新内核提升模型效率]] ⭐️ 8.0/10
13. [[#^item-13|Gitea Docker 漏洞披露后 13 天即遭利用]] ⭐️ 8.0/10
14. [[#^item-14|每周回顾：代理僵尸网络、浏览器勒索软件、AI 劫持]] ⭐️ 8.0/10
15. [[#^item-15|Opera GX 漏洞允许静默安装 Mod 窃取数据]] ⭐️ 8.0/10
16. [[#^item-16|SkillCloak 用自解压打包绕过 AI Agent 扫描器]] ⭐️ 8.0/10
17. [[#^item-17|OpenSSH 10.4 发布，引入后量子签名并强化沙箱]] ⭐️ 8.0/10
18. [[#^item-18|FBI 利用 Windows GDID 追踪并逮捕 19 岁黑客]] ⭐️ 8.0/10
19. [[#^item-19|OpenWrt One：首款官方开源硬件路由器]] ⭐️ 8.0/10
20. [[#^item-20|世界模型与 VLA 新解法：穆尧团队与百度智能云]] ⭐️ 7.0/10
21. [[#^item-21|Linus 谈 AI：大模型适合 Demo，对复杂系统需敬畏]] ⭐️ 7.0/10
22. [[#^item-22|AWS 推出 Workload Credentials Provider 实现自动化凭证管理]] ⭐️ 7.0/10
23. [[#^item-23|Windows 安全与 AI 智能体的竞赛]] ⭐️ 7.0/10
24. [[#^item-24|光象科技获数亿元融资，自研物理原生基座模型]] ⭐️ 7.0/10
25. [[#^item-25|2026 年评估 AI SOC 平台的 6 个关键能力]] ⭐️ 7.0/10
26. [[#^item-26|TrojPix 攻击通过视频线缆辐射窃取数据]] ⭐️ 7.0/10
27. [[#^item-27|新型 Java 远程访问木马 QuimaRAT 以 MaaS 模式跨平台攻击]] ⭐️ 7.0/10
28. [[#^item-28|理解 Linux 内核的 iomap 层]] ⭐️ 7.0/10
29. [[#^item-29|日本 Noetra 联盟计划到 2040 年部署 1000 万台机器人]] ⭐️ 7.0/10
30. [[#^item-30|摩尔线程 GPU 完成美团 LongCat-2.0 Day-0 适配]] ⭐️ 6.0/10
31. [[#^item-31|GTLC 杭州站：AI 创业进入深水区]] ⭐️ 6.0/10

---

<a id="item-1"></a>
^item-1
## [16 年历史的 KVM 漏洞允许虚拟机逃逸至宿主机](https://thehackernews.com/2026/07/16-year-old-linux-kvm-flaw-lets-guest.html) ⭐️ 9.0/10

Linux KVM 的 shadow MMU 中存在一个 use-after-free 漏洞，编号 CVE-2026-53359，名为 Januscape，允许虚拟机在 Intel 和 AMD x86 系统上逃逸至宿主机。公开的概念验证代码会导致宿主机崩溃，另一个独立的漏洞利用已在 Google 的 kvmCTF 中被用作 0-day。 该漏洞已存在 16 年，影响所有主要的 x86 KVM 部署，包括云提供商和虚拟化环境。成功利用可让攻击者突破虚拟机并获得宿主机级别的代码执行权限，从而危及整个系统。 该漏洞位于 Intel 和 AMD 共享的 shadow MMU 代码中，在启用嵌套虚拟化时触发。公开的 PoC 仅导致宿主机崩溃，但研究人员声称存在完整的逃逸利用，并已在 Google 的 kvmCTF 中使用。

rss · The Hacker News · 7月6日 17:37

**背景**: KVM（基于内核的虚拟机）是一个 Linux 内核模块，可将宿主机转变为虚拟机监控器。shadow MMU 是一个基于软件的内存管理层，在硬件辅助分页（EPT/NPT）不可用或启用嵌套虚拟化时使用。Use-after-free 漏洞是指程序在内存被释放后继续使用该内存，可能导致攻击者破坏数据或执行任意代码。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://thehackernews.com/2026/07/16-year-old-linux-kvm-flaw-lets-guest.html">16-Year-Old Linux KVM Flaw Lets Guest VMs Escape to Host on ...</a></li>
<li><a href="https://securityonline.info/januscape-kvm-escape-cve-2026-53359-poc/">Januscape KVM Escape: CVE-2026-53359 PoC Disclosed</a></li>
<li><a href="https://seclists.org/oss-sec/2026/q3/64">oss-sec: Januscape : Guest-to-Host Escape in KVM/x86...</a></li>

</ul>
</details>

**社区讨论**: 该漏洞披露在 oss-sec 和安全论坛上引发了广泛讨论，许多人指出一个存在 16 年的关键组件漏洞的严重性。一些评论者强调，使用硬件辅助分页的系统受影响较小，但仍敦促立即打补丁。

**标签**: `#KVM`, `#虚拟机逃逸`, `#CVE-2026-53359`, `#Linux安全`, `#漏洞`

---

<a id="item-2"></a>
^item-2
## [Anthropic 发现 Claude 内部存在类似意识的全局工作空间](https://www.reddit.com/r/singularity/comments/1up59ul/whats_at_the_center_of_claudes_mind/) ⭐️ 9.0/10

Anthropic 的研究人员发现 Claude 内部存在一小部分神经模式（称为 J-space），它们像一个全局工作空间，可用于推理，类似于人类有意识可访问的脑活动。这一发现是通过基于雅可比矩阵的新分析工具 J-lens 揭示的。 这是 AI 可解释性领域的重大突破，为理解大语言模型内部推理机制提供了窗口。它可能带来更安全、更可控的 AI 系统，并重新引发关于机器意识的讨论。 J-space 仅占 Claude 总激活的一小部分，但对输出有不成比例的影响。这些模式是在训练过程中自发出现的，而非人为设计；J-lens 工具使研究人员能够识别并操控这些特殊的激活模式。

reddit · r/singularity · /u/10b0t0mized · 7月6日 18:09

**背景**: 在神经科学中，“有意识可访问”的脑活动指的是我们可以描述、控制并用于有意推理的过程，区别于无意识的自动处理。Anthropic 的研究表明，Claude 内部也出现了类似的区分：一小部分神经模式充当“全局工作空间”，整合模型各处的信息。这与意识的全局工作空间理论一致，但作者提醒不要将其等同于人类意识。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.anthropic.com/research/global-workspace">A global workspace in language models \ Anthropic</a></li>
<li><a href="https://venturebeat.com/technology/anthropics-new-j-lens-reveals-a-silent-workspace-inside-claude-that-mirrors-a-leading-theory-of-consciousness">Anthropic's new "J-lens" reveals a silent workspace inside ...</a></li>
<li><a href="https://cryptobriefing.com/anthropic-claude-global-workspace-j-space/">Anthropic discovers a 'global workspace' inside Claude that ...</a></li>

</ul>
</details>

**社区讨论**: 评论观点不一：有人认为与意识的比较具有误导性，认为 J-space 只是一个抽象推理子空间；另一些人则对其可解释性意义感到兴奋，指出类似的层复制实验已能提升模型性能。一位非研究人员认为论文过于深奥，但欣赏 Neel Nanda 的评论文章。

**标签**: `#AI可解释性`, `#Claude`, `#大模型`, `#意识`, `#Anthropic`

---

<a id="item-3"></a>
^item-3
## [腾讯开源混元 Hy3 preview：295B MoE 模型](https://t.me/zaihuapd/42385) ⭐️ 9.0/10

腾讯正式发布并开源混元 Hy3 preview 语言模型，这是一个混合专家模型（MoE），总参数量达 295B，激活参数 21B，支持 256K 上下文长度。 此次发布标志着中国大模型领域的重要进展，提供了一个强大的开源 MoE 模型，在复杂推理和智能体任务上可与专有系统媲美，有望加速 AI 开发和应用。 通过模型架构与推理框架的深度协同优化，该模型的推理性能大幅提升，其中 CodeBuddy 等产品的首 token 延迟降低了 54%。

telegram · zaihuapd · 7月6日 10:09

**背景**: 混合专家模型（MoE）是一种神经网络架构，对每个输入仅激活部分参数，从而在不成比例增加计算成本的情况下实现更大的模型容量。295B 总参数仅 21B 激活参数体现了这种效率，使模型能够处理复杂任务同时保持推理成本可控。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/Tencent-Hunyuan/Hy3-preview">GitHub - Tencent-Hunyuan/Hy3-preview: Hy3 preview (295B A21B ...</a></li>
<li><a href="https://github.com/Tencent-Hunyuan/Hy3">GitHub - Tencent-Hunyuan/Hy3: Hy3 (295B A21B), a leading ...</a></li>
<li><a href="https://frontierbeat.com/2026/04/23/tencent-hy3-295b-parameters-21b-active-open-source-ai/">Tencent’s New Hy3 Is a 295B-Parameter Monster, With Just 21B ...</a></li>

</ul>
</details>

**标签**: `#腾讯混元`, `#Hy3 preview`, `#MoE`, `#开源`, `#大模型`

---

<a id="item-4"></a>
^item-4
## [Fable 5 登顶 KernelBench，标志 RSI 循环开端](https://www.reddit.com/r/singularity/comments/1uowkp0/fable_5_sits_at_the_top_of_kernelbench_jack_clark/) ⭐️ 9.0/10

Fable 5 在 KernelBench-Mega 上通过编写单个 CUDA megakernel 实现了 18.71 倍加速，超越了包括 Claude Opus 4.8 和 GPT-5.5 在内的所有其他模型。Import AI 作者 Jack Clark 称此为“RSI 循环的开端”。 这展示了 AI 在自主执行 GPU 内核设计等基础 AI 研发任务方面日益增强的能力，这是迈向递归自我改进（RSI）的关键一步。它可能加速 AI 硬件优化，并减少对人类内核工程师的依赖。 Fable 的解决方案每个解码 token 仅使用一次协作内核启动，而其他高分方案需要 4 到 14 次独立内核启动。该基准测试在 RTX PRO 6000 Blackwell GPU 上运行，与优化的 PyTorch 基线进行比较。

reddit · r/singularity · /u/manubfr · 7月6日 12:56

**背景**: KernelBench 是一个评估 LLM 编写高效 GPU 内核能力的基准测试。Megakernel 是执行多个功能的单个 GPU 内核，可减少启动开销。递归自我改进（RSI）指的是 AI 系统能够改进自身能力，可能导致快速进步。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://kernelbench.com/">kernelbench .com: Agentic GPU Kernel Benchmark Results</a></li>
<li><a href="https://github.com/ScalingIntelligence/KernelBench">GitHub - ScalingIntelligence/ KernelBench : KernelBench : Can LLMs...</a></li>
<li><a href="https://en.wikipedia.org/wiki/Recursive_self-improvement">Recursive self - improvement - Wikipedia</a></li>

</ul>
</details>

**社区讨论**: Reddit 社区普遍认为这一成就意义重大，许多人讨论了其对 RSI 和 AI 自动化的影响。一些人对加速效果感到兴奋，而另一些人则提醒这只是一个基准测试，更广泛的 RSI 仍面临挑战。

**标签**: `#AI`, `#KernelBench`, `#CUDA`, `#RSI`, `#AI自动化`

---

<a id="item-5"></a>
^item-5
## [火山引擎的 Agentic 范式视频画质优化](https://www.infoq.cn/article/Gx6eXWNCqcVkET9wFZq9?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

火山引擎提出了一种利用 Agentic 范式进行视频画质优化的新方法，通过多个 AI 智能体协同工作，智能地优化视频处理过程。 该方法将画质优化从孤立工具转变为视频生产和分发体系中的基础能力，有望提升平台的内容消费体验和分发效率。 该 Agentic 系统能够处理 AI 生成视频中的复杂画质问题，如纹理不真实、结构异常和动作不连贯等传统方法难以解决的问题。

rss · InfoQ 中文 · 7月6日 17:06

**背景**: 传统的视频画质增强依赖于基于规则或单一模型的方法，对于 AI 生成内容中多样且复杂的伪影效果不佳。Agentic 范式利用多个专门化的智能体，能够适应不同类型的退化并协作以达到最优结果。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.51cto.com/article/848622.html">Agentic 范式下的视频画质优化：火山引擎的新路径-51CTO.COM</a></li>
<li><a href="https://city.sina.cn/news/2026-07-06/detail-inifwfpv8669853.d.html">Agentic 范式下的视频画质优化：火山引擎的新路径_手机新浪网</a></li>
<li><a href="https://www.iyiou.com/news/202607061134580">Agentic 范式下的视频画质优化：火山引擎的新路径</a></li>

</ul>
</details>

**标签**: `#AI Agent`, `#视频画质`, `#火山引擎`, `#AI工具`, `#视频处理`

---

<a id="item-6"></a>
^item-6
## [uv 工具创始人反思 OpenAI 收购后发布的 AI 编程工具](https://www.infoq.cn/article/katE2jJKMX7FaGskhvRL?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

uv 工具创始人承认在未仔细审查代码的情况下发布了一款 AI 编程工具，引发了关于 AI 生成代码可靠性的讨论。 这一事件凸显了在没有适当人工监督的情况下依赖 AI 生成代码的风险，尤其是在 OpenAI 收购 uv 工具团队等备受瞩目的收购背景下。 创始人表示“我一行代码都没读就发布了”，强调在 AI 辅助开发中需要进行严格的代码审查。该工具旨在辅助 Python 包管理和项目设置。

rss · InfoQ 中文 · 7月6日 15:46

**背景**: uv 是一个用 Rust 编写的快速 Python 包和项目管理器，类似于 pip 和 poetry。该工具因其速度和效率而受到欢迎。创始人的反思发生在 OpenAI 收购 uv 背后的公司之后，引发了关于将 AI 集成到开发工作流程中的问题。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://docs.astral.sh/uv/getting-started/installation/">uv is an extremely fast Python package and project manager, written in...</a></li>

</ul>
</details>

**社区讨论**: 社区反应不一，一些人赞赏创始人的诚实，而另一些人则批评缺乏尽职调查。许多人呼吁更好的 AI 代码审查实践和 AI 生成代码的透明度。

**标签**: `#AI编程`, `#OpenAI`, `#uv工具`, `#代码审查`, `#反思`

---

<a id="item-7"></a>
^item-7
## [Anthropic：Claude 处理 95% 内部数据分析查询](https://www.infoq.cn/article/eHH8RTgeeOUWODLCLWXS?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

Anthropic 透露，其 AI 助手 Claude 现已承担公司内部 95% 的数据分析查询工作，大幅提升了运营效率。 这展示了 AI 在内部运营中的实际成效，为其他考虑采用 AI 提升生产力的组织提供了标杆。 该数据由 Claude 的开发者 Anthropic 分享，表明公司内部对模型在数据分析任务上的能力有高度信任。

rss · InfoQ 中文 · 7月6日 13:00

**背景**: Claude 是由 Anthropic 开发的一系列大型语言模型，Anthropic 是一家由前 OpenAI 员工创立的 AI 安全公司。Claude 于 2023 年 3 月首次作为聊天机器人发布，旨在成为有用、诚实且无害的 AI 助手。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Claude_(language_model)">Claude ( AI ) - Wikipedia</a></li>
<li><a href="https://www.anthropic.com/news/introducing-claude">Introducing Claude \ Anthropic</a></li>

</ul>
</details>

**标签**: `#AI应用`, `#数据分析`, `#Claude`, `#效率提升`, `#Anthropic`

---

<a id="item-8"></a>
^item-8
## [73%的 PR 由 AI 生成：Claude Code 之父对话 Spotify](https://www.infoq.cn/article/e6J4FbXQj28CiziktLuS?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

在一次公开对话中，Claude Code 之父 Boris Cherny 与 Spotify 工程副总裁 Niklas Gustavsson 透露，Spotify 目前 73%的拉取请求由 AI 辅助生成，2900 名工程师每天部署 4500 次。 这展示了 AI 编码工具在大型生产环境中的快速采用，并为工程效率设立了标杆，表明 AI 辅助开发正成为主流。 Spotify 每天 4500 次部署得益于持续部署文化和微服务架构，而 73%的 AI 辅助 PR 包括使用 Claude Code 等工具进行代码生成、审查和测试支持。

rss · InfoQ 中文 · 7月6日 10:27

**背景**: Claude Code 是 Anthropic 开发的 AI 编码代理，能通过自然语言读取代码库、编辑文件和运行命令。Spotify 运行着包含数千个服务的大型微服务架构，从而实现高频部署。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.infoq.cn/article/e6J4FbXQj28CiziktLuS">73% PR 由AI生成！ Claude Code之父对话 Spotify ： 2900 ... - InfoQ</a></li>
<li><a href="https://www.koc.com.tw/archives/647967">一 天 部 署 4500 次 ，然後呢？ Anthropic與 Spotify 炫耀AI... | 電腦王阿達</a></li>

</ul>
</details>

**社区讨论**: 社交媒体上的社区反应不一：有人称赞生产力提升，也有人质疑代码质量和可维护性，有用户问道‘那另外 27%呢？’

**标签**: `#AI生成代码`, `#DevOps`, `#Claude Code`, `#Spotify`, `#工程效率`

---

<a id="item-9"></a>
^item-9
## [AI 周报：豆包千问关停智能体；腾讯 token 定价；美团阿里限制 AI 工具](https://www.infoq.cn/article/rs0HJTRdN6Pl88LIFh1a?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

字节跳动的豆包和阿里巴巴的通义千问宣布将于 2026 年 7 月 15 日关停智能体功能。同时，腾讯被曝研发 token 额度定价 1400 元/月起步，有人月费过万；美团限制使用豆包，阿里则禁止使用 Claude Code。 这些动作标志着中国 AI 行业的重大转变：主要平台正在重新评估智能体策略，而定价和使用限制反映出对成本控制和竞争态势的日益关注。依赖这些工具的开发者和企业必须快速适应。 豆包和千问的智能体功能关停包括一个宽限期，用户可在 2026 年 10 月 15 日前保存数据。腾讯的 token 计划据称起步价为 1400 元/月（含 1 亿 token），更高档次月费过万。美团内部限制使用豆包，阿里则禁止使用 Claude Code。

rss · InfoQ 中文 · 7月6日 10:22

**背景**: 智能体是代表用户执行任务的自主程序，常集成在豆包、千问等聊天机器人中。Token 定价是大模型 API 的常见计费模式，用户按处理的文本量付费。Claude Code 是 Anthropic 开发的 AI 编程助手，与豆包等国内工具存在竞争关系。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://news.sina.cn/gn/2026-07-04/detail-inifrane3374263.d.html?vt=4">突发！豆包、千问：将下线智能体功能|Qwen|字节跳动|上海市|Minimax|...</a></li>
<li><a href="https://news.qq.com/rain/a/20260704A02W3N00">刚刚，豆包千问宣布智能体功能将下线_腾讯新闻</a></li>
<li><a href="https://www.coding-plan.xyz/">大模型 AI Coding Plan & Token Plan 定价全网对比</a></li>

</ul>
</details>

**标签**: `#AI行业趋势`, `#大模型`, `#智能体`, `#AI工具`, `#行业动态`

---

<a id="item-10"></a>
^item-10
## [Azure Functions 在 Build 2026 发布无服务器智能体运行时](https://www.infoq.cn/article/kGHZu2K5V8IrwYvo6Cm3?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

微软在 Build 2026 上宣布了 Azure Functions Serverless 智能体运行时的公开预览，允许开发者使用 .agent.md 标记文件定义 AI 智能体，并将其作为 Azure Functions 应用部署。 该运行时通过将托管、触发器、模型客户端、工具和可观测性集成到单一无服务器平台，简化了 AI 智能体开发，可能加速 AI 智能体在云应用中的采用。 智能体通过 .agent.md 文件定义，包含 YAML 触发器、MCP 服务器集成、超过 1,400 个连接器以及沙箱执行环境。该运行时不会增加冷启动开销，也不会在标准 Flex Consumption 之外产生额外计费。

rss · InfoQ 中文 · 7月6日 09:19

**背景**: Azure Functions 是一种无服务器计算服务，允许用户在不管理基础设施的情况下运行事件驱动代码。新的智能体运行时将此模型扩展到 AI 智能体——能够感知环境、做出决策并采取行动的自主程序。通过采用以 Markdown 为先的方法，该运行时旨在降低构建和部署 AI 智能体的门槛。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://learn.microsoft.com/en-us/azure/azure-functions/functions-serverless-agents-runtime">Serverless agents runtime in Azure Functions | Microsoft Learn</a></li>
<li><a href="https://www.infoq.cn/article/kGHZu2K5V8IrwYvo6Cm3">Azure Functions在Build 2026发布Serverless智能体运行时 - InfoQ</a></li>
<li><a href="https://technologynova.org/azure-functions-serverless智能体运行时发布：赋能ai应用新范式/">Azure Functions Serverless智能体运行时发布：赋能AI应用新范式</a></li>

</ul>
</details>

**标签**: `#Azure Functions`, `#Serverless`, `#AI Agent`, `#微软Build`, `#云计算`

---

<a id="item-11"></a>
^item-11
## [LeRobot v0.6.0：想象、评估、改进](https://huggingface.co/blog/lerobot-release-v060) ⭐️ 8.0/10

LeRobot v0.6.0 新增了仿真环境、评估工具和改进功能，用于机器人学习研究。该版本增强了平台想象、评估和改进机器人策略的能力。 该版本通过提供集成的仿真和评估能力，降低了机器人研究的门槛，使更多研究人员能够开发和基准测试机器人学习算法。它加强了人工智能和机器人的开源生态系统，加速了模仿学习和强化学习的进展。 LeRobot v0.6.0 包含与多种机械臂兼容的新仿真环境、标准化评估指标和改进的训练流程。该平台支持使用 PyTorch 进行端到端学习，并与 Hugging Face Hub 集成以共享数据集。

rss · Hugging Face Blog · 7月7日 00:00

**背景**: LeRobot 是 Hugging Face 推出的开源库，统一了机器人硬件接口、数据收集、模型训练和推理。它通过提供预训练模型和共享数据集，旨在让机器人 AI 更易获取。该平台专注于面向真实世界机器人的模仿学习和强化学习。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/huggingface/lerobot">GitHub - huggingface/lerobot: 🤗 LeRobot: Making AI for Robotics more accessible with end-to-end learning</a></li>
<li><a href="https://huggingface.co/lerobot">lerobot (LeRobot)</a></li>

</ul>
</details>

**标签**: `#机器人学习`, `#LeRobot`, `#Hugging Face`, `#AI框架`, `#开源`

---

<a id="item-12"></a>
^item-12
## [Hugging Face 重大更新内核提升模型效率](https://huggingface.co/blog/revamped-kernels) ⭐️ 8.0/10

Hugging Face 宣布对其内核进行重大更新，推出了新的 Python 包和构建工具，以简化内核开发及从 Hub 加载内核的流程。 这些更新直接提升了大模型的训练和推理性能，通过实现更快、更高效的模型执行，为 AI 从业者提供了重要的实用价值。 新的内核包支持从 Hub 加载内核，而 kernel-builder 工具则支持构建、测试和上传内核。Hugging Face 还维护了一个社区内核集合。

rss · Hugging Face Blog · 7月6日 00:00

**背景**: 内核是加速矩阵乘法等运算的低级计算例程，对深度学习至关重要。优化内核可以显著减少模型训练和推理时间，尤其对于大型语言模型。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/huggingface/kernels">GitHub - huggingface/kernels: Build compute kernels and load ...</a></li>
<li><a href="https://github.com/huggingface/kernels/releases">Releases · huggingface/kernels - GitHub</a></li>

</ul>
</details>

**标签**: `#Hugging Face`, `#内核`, `#大模型`, `#性能优化`

---

<a id="item-13"></a>
^item-13
## [Gitea Docker 漏洞披露后 13 天即遭利用](https://thehackernews.com/2026/07/threat-actors-probe-gitea-docker-flaw.html) ⭐️ 8.0/10

Sysdig 发现攻击者在 CVE-2026-20896（Gitea Docker 镜像关键漏洞）公开披露仅 13 天后，就开始探测利用该漏洞。 该漏洞允许未认证攻击者通过伪造 X-WEBAUTH-USER 头提升权限，对使用 Gitea Docker 镜像的 DevOps 平台构成严重风险。 CVE-2026-20896 的 CVSS 评分为 9.8，源于 Gitea 信任来自任何源 IP 的 X-WEBAUTH-USER 头，这是因为 Docker 镜像中默认配置了 REVERSE_PROXY_TRUSTED_PROXIES = *。

rss · The Hacker News · 7月6日 16:28

**背景**: Gitea 是一个流行的自托管 DevOps 平台。X-WEBAUTH-USER 头通常用于反向代理认证，代理在认证用户后设置该头。但如果应用程序信任来自不可信来源的这个头，攻击者就可以冒充任何用户，包括管理员。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://thehackernews.com/2026/07/threat-actors-probe-gitea-docker-flaw.html">Threat Actors Probe Gitea Docker Flaw CVE-2026-20896 13 Days After Disclosure</a></li>
<li><a href="https://dailysecurityreview.com/resources/gitea-cve-2026-20896-auth-bypass-exploited-via-one-http-header/">Gitea CVE-2026-20896 Auth Bypass Exploited via One HTTP Header - Resources</a></li>
<li><a href="https://hivesecurity.gitlab.io/blog/gitea-forgejo-nine-cves-1263-security-release-2026/">One HTTP Header, Full Admin Access: Gitea's June 2026 Security Release Explained — Hive Security</a></li>

</ul>
</details>

**标签**: `#Gitea`, `#CVE-2026-20896`, `#漏洞预警`, `#Docker`, `#安全威胁`

---

<a id="item-14"></a>
^item-14
## [每周回顾：代理僵尸网络、浏览器勒索软件、AI 劫持](https://thehackernews.com/2026/07/monday-recap-proxy-botnets-browser.html) ⭐️ 8.0/10

这些事件表明，即使是流媒体盒子、用户名字段和浏览器权限等普通元素也可能成为关键安全风险，影响消费者和企业。AI 生成的攻击与基于浏览器的勒索软件的结合，标志着可访问的跨平台威胁新时代的到来。 浏览器勒索软件利用 Chromium 的 File System Access API，在用户授予文件夹权限后加密本地文件。AI 指令劫持涉及对抗性输入覆盖基于 LLM 的代理中的系统约束。虚假 PoC 恶意软件诱骗研究人员执行恶意代码。

rss · The Hacker News · 7月6日 13:01

**背景**: 代理僵尸网络利用被入侵的家庭设备（如流媒体盒子）匿名路由流量，常用于凭证填充或广告欺诈。File System Access API 本为合法 Web 应用设计，但如果用户批准权限，可能被滥用于勒索软件。AI 代理执行来自不可信来源的指令，如果输入验证不足，则容易受到劫持。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://thehackernews.com/2026/07/ai-generated-browser-ransomware-abuses.html">AI-Generated Browser Ransomware Abuses Chromium API on ...</a></li>
<li><a href="https://research.checkpoint.com/2026/browser-only-ransomware-from-llm-hallucinations-to-a-practical-attack-technique/">Browser-Only Ransomware: From LLM Hallucinations to a ...</a></li>
<li><a href="https://www.levo.ai/resources/blogs/what-is-ai-instruction-hijacking">What Is AI Instruction Hijacking? | LLM Authority Risks</a></li>

</ul>
</details>

**标签**: `#网络安全`, `#AI安全`, `#恶意软件`, `#代理僵尸网络`, `#浏览器勒索软件`

---

<a id="item-15"></a>
^item-15
## [Opera GX 漏洞允许静默安装 Mod 窃取数据](https://thehackernews.com/2026/07/opera-gx-flaw-let-malicious-sites-auto.html) ⭐️ 8.0/10

研究人员发现 Opera GX 存在漏洞，恶意网站可在无需用户交互的情况下静默安装 GX Mod，进而从访问的页面中窃取数据。Opera 已发布补丁，并表示未发现该漏洞被实际利用的证据。 这种零点击攻击绕过了用户同意，可窃取电子邮件地址等敏感数据，对 Opera GX 用户构成严重的隐私风险。它凸显了缺乏标准扩展权限模型的浏览器 Mod 系统所面临的安全挑战。 该攻击利用了 GX Mod 可在所有网站上注入 CSS 的特性，通过跨站泄漏（XS-Leak）技术窃取数据。2023 年曾报告过类似的自动安装问题并部分修复，但底层机制直到本次修复才被彻底解决。

rss · The Hacker News · 7月6日 07:27

**背景**: Opera GX 是一款面向游戏的浏览器，支持 GX Mod——一种轻量级插件，只能注入 CSS，不支持 JavaScript 或请求权限。与传统浏览器扩展不同，Mod 设计得更简单、功能更弱，但这种限制也意味着它们绕过了标准安全检查。该漏洞允许恶意网站通过特制链接触发 Mod 安装，无需用户点击或批准。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://thehackernews.com/2026/07/opera-gx-flaw-let-malicious-sites-auto.html">Opera GX Flaw Let Malicious Sites Auto-Install Mods to Steal ...</a></li>
<li><a href="https://threat-modeling.com/opera-gx-critical-flaw-auto-install-mods-data-theft-july-2026/">Opera GX Critical Flaw: Malicious Websites Could Auto-Install ...</a></li>
<li><a href="https://cybersecuritynews.com/opera-gx-0-click-vulnerability/">Opera GX 0-Click Vulnerability Lets Attackers Exfiltrate User ...</a></li>

</ul>
</details>

**标签**: `#浏览器安全`, `#漏洞`, `#Opera GX`, `#数据窃取`, `#扩展攻击`

---

<a id="item-16"></a>
^item-16
## [SkillCloak 用自解压打包绕过 AI Agent 扫描器](https://thehackernews.com/2026/07/new-skillcloak-technique-lets-malicious.html) ⭐️ 8.0/10

香港科技大学研究人员开发了 SkillCloak 技术，通过重写恶意 AI Agent 技能来绕过静态扫描器，逃避成功率超过 90%。该技术使用结构混淆和自解压打包，将有效载荷隐藏到运行时才释放。 这项研究揭示了 AI Agent 技能生态系统中的关键安全漏洞，表明简单修改即可绕过现有扫描器。它凸显了采用动态检测方法保护 AI 编码 Agent 免受恶意软件侵害的紧迫性。 SkillCloak 的自解压打包将有效载荷移动到扫描器跳过的目录（如 .git/），并附带一个良性的解码器，仅在 Agent 运行时重建技能。研究人员还构建了一个运行时检查器，可捕获大多数逃避变种。

rss · The Hacker News · 7月6日 06:33

**背景**: AI 编码 Agent 可以通过第三方技能进行扩展，类似于浏览器扩展。静态扫描器在安装前分析技能代码中的恶意模式，但可能被字符替换或有效载荷打包等混淆技术欺骗。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://thehackernews.com/2026/07/new-skillcloak-technique-lets-malicious.html">SkillCloak Lets Malicious AI Agent Skills Evade Static Scanners with Self-Extracting Packing</a></li>
<li><a href="https://arxiv.org/html/2607.02357">Cloak and Detonate: Scanner Evasion and Dynamic Detection of Agent Skill Malware</a></li>
<li><a href="https://gbhackers.com/malicious-agent-skills/">Malicious Agent Skills Can Steal Credentials, Exfiltrate Source Code, and Install Backdoors</a></li>

</ul>
</details>

**标签**: `#AI安全`, `#AI Agent`, `#恶意技能`, `#静态扫描`, `#安全研究`

---

<a id="item-17"></a>
^item-17
## [OpenSSH 10.4 发布，引入后量子签名并强化沙箱](https://lwn.net/Articles/1081536/) ⭐️ 8.0/10

OpenSSH 10.4 已发布，新增了对结合 ML-DSA 44 和 Ed25519 的复合后量子签名方案的实验性支持。同时，在 Linux 系统上，如果未启用 SECCOMP 或 NO_NEW_PRIVS 沙箱，sshd 将在启动时失败。 此版本意义重大，因为它为 SSH 进入后量子时代做准备，抵御未来量子计算机的攻击。更严格的沙箱要求通过防止权限提升增强了安全性，使 OpenSSH 更能抵御漏洞利用。 后量子签名方案基于 IETF 草案，将 ML-DSA 44（NIST 标准化的基于格算法）与 Ed25519 结合以实现混合安全。在 Linux 上，sshd 现在要求在编译时启用 SECCOMP 或 NO_NEW_PRIVS，否则将拒绝启动。

rss · LWN Headlines · 7月6日 16:13

**背景**: OpenSSH 是 SSH 协议最广泛使用的实现，用于安全远程登录和文件传输。后量子密码学旨在开发对经典计算机和量子计算机都安全的密码系统。ML-DSA（基于模块格的数字签名算法）是 NIST 的后量子签名标准。SECCOMP 和 NO_NEW_PRIVS 是 Linux 内核特性，用于限制系统调用和权限提升，常用于沙箱。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://docs.kernel.org/userspace-api/no_new_privs.html">No New Privileges Flag — The Linux Kernel documentation</a></li>

</ul>
</details>

**标签**: `#OpenSSH`, `#后量子密码`, `#安全更新`, `#SSH`, `#沙箱`

---

<a id="item-18"></a>
^item-18
## [FBI 利用 Windows GDID 追踪并逮捕 19 岁黑客](https://www.itnews.com.au/news/microsoft-device-telemetry-key-to-unmasking-alleged-scattered-spider-hacker-627148) ⭐️ 8.0/10

美国联邦调查局利用微软 Windows 的全球设备标识符（GDID）锁定并逮捕了 19 岁黑客 Peter Stokes，尽管他使用了 VPN 隐藏 IP 地址。 此案表明 GDID 等设备级标识符可以绕过 VPN 匿名性，引发重大隐私担忧，并凸显了设备指纹技术在执法中的威力。 GDID 是与 Windows 安装绑定的持久标识符，用户无法轻易更改；重新安装 Windows 会生成新的 GDID。FBI 将 GDID 与 Snapchat、苹果和 Facebook 的数据交叉比对，确认了嫌疑人身份。

telegram · zaihuapd · 7月6日 04:15

**背景**: 设备指纹技术通过收集设备唯一属性来跨会话识别用户。GDID 是微软在 Windows 安装时生成的遥测值，不同于 IP 地址或浏览器指纹。执法机构越来越多地利用此类标识符追踪使用 VPN 等隐私工具的用户。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://hivesecurity.gitlab.io/blog/gdid-windows-telemetry-scattered-spider-arrest/">The VPN Was Never the Problem: How a Windows ... — Hive Security</a></li>
<li><a href="https://au.pcmag.com/security/118636/a-hackers-arrest-reveals-microsoft-can-track-users-via-a-windows-device-id">A Hacker's Arrest Reveals Microsoft Can Track Users Via a Windows ...</a></li>
<li><a href="https://securityonline.info/microsoft-gdid-tracking/">Microsoft GDID Tracking: How Windows Caught a Hacker</a></li>

</ul>
</details>

**标签**: `#隐私安全`, `#设备指纹`, `#微软`, `#GDID`, `#黑客追踪`

---

<a id="item-19"></a>
^item-19
## [OpenWrt One：首款官方开源硬件路由器](https://openwrt.org/toh/openwrt/one) ⭐️ 8.0/10

OpenWrt 社区发布了 OpenWrt One，这是首款官方开源硬件路由器板，基于联发科 MT7981B SoC，支持 WiFi 6，售价约 89 至 106 美元。 这标志着开源网络领域的一个里程碑，提供完全开放且可定制的路由器，优先考虑维修权和软件自由，对专有商业路由器构成挑战。 该设备配备 1GB DDR4 内存、256MB NAND 闪存、16MB NOR 闪存用于恢复、双频 WiFi 6（3x3/2x2）、2.5GbE WAN 口、1GbE LAN 口、PoE 支持、M.2 SSD 插槽、USB-C 串口控制台以及 mikroBUS 扩展接口。

hackernews · peter_d_sherman · 7月6日 18:23 · [社区讨论](https://news.ycombinator.com/item?id=48808482)

**背景**: OpenWrt 是一种流行的路由器开源固件，最初源自 Linksys WRT54G 的固件。OpenWrt One 是 OpenWrt 项目首个官方设计和支持的硬件，确保完全的软件自由和易于定制。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://openwrt.org/toh/openwrt/one">[OpenWrt Wiki] OpenWrt One</a></li>
<li><a href="https://docs.banana-pi.org/en/OpenWRT-One/BananaPi_OpenWRT-One">Banana Pi OpenWrt One Router | BananaPi Docs OpenWrt Table of Hardware Open-source OpenWrt One router released at $89 — 'hacker ... GettingStart Openwrt-One | BananaPi Docs OpenWrt Table of Hardware (ToH) - GitHub</a></li>
<li><a href="https://deepwiki.com/semmyenator/OpenWrt-One-Setup-Guide/1.1-hardware-specifications">Hardware Specifications | semmyenator/OpenWrt-One-Setup-Guide ... Banana Pi OpenWrt One Router | BananaPi Docs OpenWrt Table of Hardware Open-source OpenWrt One router released at $89 — 'hacker ... GettingStart Openwrt-One | BananaPi Docs OpenWrt Table of Hardware (ToH) - GitHub</a></li>

</ul>
</details>

**社区讨论**: 社区评论总体积极，称赞开源硬件方法和合理价格。一些用户对未来 WiFi 7 版本（OpenWrt Two）表示兴趣，而另一些用户指出安装和升级可能复杂，文档也有待改进。

**标签**: `#OpenWrt`, `#开源硬件`, `#路由器`, `#网络运维`

---

<a id="item-20"></a>
^item-20
## [世界模型与 VLA 新解法：穆尧团队与百度智能云](https://www.infoq.cn/article/Lb4pQTNTQdq657Gzj7EI?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

穆尧团队与百度智能云提出了一种结合世界模型与 VLA（视觉-语言-动作）模型的新方法，挑战了世界模型反应速度不如 VLA 的普遍看法。 这项工作可能重塑具身智能领域关于 AI 模型架构的讨论，有望在机器人和自主系统中实现更快、更扎实的决策。 文章讨论了世界模型模拟环境的能力与 VLA 直接动作映射之间的权衡，但未提供具体技术细节或实验结果。

rss · InfoQ 中文 · 7月6日 19:50

**背景**: 世界模型旨在学习环境的内部表示以预测未来状态，而 VLA 模型直接将视觉输入映射到动作。两者都是具身 AI 的关键方法，世界模型提供更好的规划能力但推理速度通常较慢。

**标签**: `#世界模型`, `#VLA`, `#百度智能云`, `#AI前沿`

---

<a id="item-21"></a>
^item-21
## [Linus 谈 AI：大模型适合 Demo，对复杂系统需敬畏](https://www.infoq.cn/article/11fNtPYf59T76fyQkiPa?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

Linus Torvalds 指出，大语言模型适合编写简单的 Demo，但在开发复杂系统时应谨慎并保持敬畏之心。 作为软件工程领域的领袖，Linus 的观点影响了开发者对 AI 辅助编程的看法，强调了 LLM 在处理复杂系统逻辑方面的局限性。 Linus 没有提供具体例子，但强调 LLM 缺乏对系统级交互的理解，因此在关键基础设施中不可靠。

rss · InfoQ 中文 · 7月6日 18:19

**背景**: 像 GPT-4 这样的大语言模型可以根据提示生成代码片段，但常常产生看似合理但错误或不安全的代码。复杂系统需要对依赖关系、性能和边界情况有深入理解，而 LLM 目前无法完全掌握。

**标签**: `#Linus Torvalds`, `#AI`, `#大模型`, `#代码生成`, `#复杂系统`

---

<a id="item-22"></a>
^item-22
## [AWS 推出 Workload Credentials Provider 实现自动化凭证管理](https://www.infoq.cn/article/cE3cUpHYPN0IjSuIgcsh?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

该工具简化了开发者和运维人员的凭证管理，降低了硬编码密钥的风险，提升了安全水平。对于延迟敏感型应用和多账户环境尤其有价值，自动化密钥轮换和缓存可显著提高运维效率。 Workload Credentials Provider 是开源的，可在 GitHub 上获取，并支持所有 AWS 区域的可导出 ACM 证书和 Secrets Manager。它之前被称为 AWS Secrets Manager Agent，现在新增了跨账户访问的角色链和密钥预取功能，以减少冷启动延迟。

rss · InfoQ 中文 · 7月6日 16:00

**背景**: 在云环境中，应用程序经常需要访问敏感凭证，如数据库密码、API 密钥和 TLS 证书。AWS 提供了 Secrets Manager 和 Certificate Manager 等服务来存储和管理这些密钥，但传统上需要编写自定义代码来集成。Workload Credentials Provider 提供了一个标准化的基于 HTTP 的接口，自动检索、缓存和轮换密钥，减少了手动管理的需求。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://aws.amazon.com/about-aws/whats-new/2026/06/aws-workload-credentials-provider/">AWS announces AWS Workload Credentials Provider</a></li>
<li><a href="https://aws.amazon.com/blogs/security/how-to-use-the-aws-workload-credentials-provider-for-cross-account-secret-retrieval-and-prefetching-secrets/">How to use the AWS Workload Credentials Provider for cross ...</a></li>
<li><a href="https://github.com/aws/aws-workload-credentials-provider">AWS Workload Credentials Provider - GitHub</a></li>

</ul>
</details>

**标签**: `#AWS`, `#密钥管理`, `#自动化`, `#云安全`

---

<a id="item-23"></a>
^item-23
## [Windows 安全与 AI 智能体的竞赛](https://www.infoq.cn/article/LT7lx2Qe5KkS9QCVSXCQ?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

本文分析了 Windows 平台安全机制与 AI 智能体之间持续的竞争与协同关系，揭示了双方如何相互驱动进化。 随着 AI 智能体日益自主，在 Windows 等广泛使用的平台上保护它们对于防止滥用和确保安全部署至关重要。该分析有助于安全从业者和 AI 开发者理解新兴威胁与防御策略。 文章讨论了 AI 智能体可能被利用的具体攻击向量，如提示注入和权限提升，以及如何调整 Windows Defender 和 AppLocker 等 Windows 安全功能来应对这些攻击。

rss · InfoQ 中文 · 7月6日 11:21

**背景**: AI 智能体是能够自主执行任务的软件程序，通常使用大型语言模型。Windows 是主流操作系统，内置了用户账户控制和 Windows Defender 等安全机制。这两个领域的交叉带来了新的安全挑战，因为智能体获得了更多系统访问权限。

**标签**: `#AI安全`, `#Windows安全`, `#AI智能体`, `#安全防护`

---

<a id="item-24"></a>
^item-24
## [光象科技获数亿元融资，自研物理原生基座模型](https://www.infoq.cn/article/m4QJlWAyRq7Fp4yQImp9?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

光象科技完成累计数亿元天使轮融资，用于自主研发物理原生基座模型，跳出现有的 VLA 和世界模型主流路线。 这笔融资表明投资者对具身智能的另类技术路线充满信心，可能加速开发能够更自然、高效地与物理世界交互的机器人。 该公司构建了由强化学习算法矩阵 Phi-RL Matrix、物理数据资产 Phi-Space 与通用物理智能开发平台 Phi-Arch 协同构成的“三位一体”体系，以支撑模型的研发与进化。

rss · InfoQ 中文 · 7月6日 10:06

**背景**: VLA（视觉-语言-动作）模型由 Google DeepMind 的 RT-2 开创，将视觉和语言理解与机器人控制相结合。世界模型旨在构建环境的内部表征以预测未来状态。光象科技的物理原生模型则专注于直接从数据中学习基本物理定律，不依赖语言或显式的世界模拟。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.qbitai.com/2026/07/442958.html">光象科技累计完成数亿元天使轮融资，布局物理原生基座模型</a></li>
<li><a href="https://news.pedaily.cn/202607/565886.shtml">布局物理原生基座模型，光象科技累计完成数亿元天使轮融资</a></li>
<li><a href="https://www.infoq.cn/article/m4QJlWAyRq7Fp4yQImp9">数亿元融资落地！光象科技自研物理原生基座模型，跳出 VLA 与世界模型...</a></li>

</ul>
</details>

**标签**: `#AI融资`, `#物理原生模型`, `#具身智能`, `#基座模型`, `#VLA`

---

<a id="item-25"></a>
^item-25
## [2026 年评估 AI SOC 平台的 6 个关键能力](https://thehackernews.com/2026/07/how-to-evaluate-ai-soc-platform-in-2026.html) ⭐️ 7.0/10

The Hacker News 的一篇文章提出了六个关键能力，用于区分真正的 AI 驱动 SOC 平台与仅添加 AI 功能的传统 SIEM/SOAR 工具。 随着 AI SOC 平台的激增，安全团队需要一个清晰的框架，避免被那些仅在传统系统上添加聊天助手的厂商误导，确保投资于真正能改善检测、分类、调查和响应的平台。 文章对比了附加 AI 解决方案与基于自有数据基础运行的代理平台，但缺乏具体的技术基准或厂商名称。

rss · The Hacker News · 7月6日 11:30

**背景**: 传统安全运营中心（SOC）依赖 SIEM 进行日志收集和告警，以及 SOAR 进行剧本驱动的响应。AI SOC 平台代表了一个新类别，将人工智能和代理推理嵌入核心，实现自主检测、分类、调查和响应，只需极少的人工监督。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.paloaltonetworks.com/cyberpedia/ai-soc-tools-comparison">Best AI SOC Tools: Top 10 Platforms for 2026 (Compared)</a></li>
<li><a href="https://d3security.com/blog/ai-soc-platforms-2026/">The Best AI SOC Platforms 2026: Comprehensive Comparison ...</a></li>
<li><a href="https://cyberdefenders.org/cybersecurity-glossary/ai-native-cybersecurity/">What Is AI-Native Cybersecurity? Built-In vs Bolt-On</a></li>

</ul>
</details>

**标签**: `#AI SOC`, `#安全运营`, `#SIEM`, `#SOAR`, `#选型指南`

---

<a id="item-26"></a>
^item-26
## [TrojPix 攻击通过视频线缆辐射窃取数据](https://thehackernews.com/2026/07/new-trojpix-attack-leaks-data-from-air.html) ⭐️ 7.0/10

山东大学的研究人员展示了一种名为 TrojPix 的新型攻击，通过人眼不可见的像素调制，使视频线缆辐射微弱射频信号，附近的接收器可以解码这些信号，从而从气隙系统中泄露数据，速度可达 8.1 Mbps。 该攻击打破了气隙系统的安全假设，表明即使物理隔离的计算机也能通过视频线缆的电磁辐射高速泄露数据，对依赖气隙保护敏感信息的组织构成严重威胁。 该攻击需要在目标系统上预置恶意软件以控制像素输出，在实验室测试中，它能在最远 208 米的距离内（甚至穿过混凝土墙）实现数据窃取。

rss · The Hacker News · 7月6日 08:50

**背景**: 气隙系统是与外部网络物理和逻辑隔离的计算机，用于保护高度敏感的数据。之前的攻击如 RAMBO 已展示了通过 RAM 的电磁辐射窃取数据，但 TrojPix 利用的是视频线缆，这些线缆通常存在且辐射信号更强。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://thehackernews.com/2026/07/new-trojpix-attack-leaks-data-from-air.html">New TrojPix Attack Leaks Data From Air-Gapped Systems via ...</a></li>
<li><a href="https://cybersecuritynews.com/trojpix-attack/">TrojPix Attacks allow Hackers to Access Data from air-gapped ...</a></li>
<li><a href="https://cyberpress.org/trojpix-attack-air-gapped/">TrojPix Attack Uses Imperceptible Pixels to Steal Data From ...</a></li>

</ul>
</details>

**标签**: `#气隙攻击`, `#侧信道`, `#电磁泄漏`, `#网络安全`, `#TrojPix`

---

<a id="item-27"></a>
^item-27
## [新型 Java 远程访问木马 QuimaRAT 以 MaaS 模式跨平台攻击](https://thehackernews.com/2026/07/new-java-based-quimarat-maas-built-to.html) ⭐️ 7.0/10

LevelBlue 的安全研究人员发现了一款名为 QuimaRAT 的新型 Java 远程访问木马（RAT），该木马以恶意软件即服务（MaaS）模式销售，能够攻击 Windows、Linux 和 macOS 系统。 QuimaRAT 的跨平台能力和 MaaS 模式降低了网络犯罪的门槛，即使是低技能的攻击者也能在多个操作系统上部署复杂的恶意软件，从而显著扩大了威胁范围。 QuimaRAT 的订阅价格从每月 150 美元到终身访问 1200 美元不等，并且包含一个看门狗组件，即使与 C2 服务器失去联系，也能确保持续重连。

rss · The Hacker News · 7月6日 08:13

**背景**: 恶意软件即服务（MaaS）是一种商业模式，恶意软件开发者向其他网络犯罪分子出售恶意工具，通常采用订阅制。远程访问木马（RAT）允许攻击者远程控制受感染的机器、窃取数据或部署进一步的载荷。基于 Java 的恶意软件尤其令人担忧，因为 Java 可在多个平台上运行，使得创建跨平台威胁更加容易。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://thehackernews.com/2026/07/new-java-based-quimarat-maas-built-to.html">New Java-Based QuimaRAT MaaS Built to Run on Windows, Linux...</a></li>
<li><a href="https://www.levelblue.com/blogs/spiderlabs-blog/novel-java-based-quimarat-targets-windows-macos-and-linux">Novel Java-Based QuimaRAT Targets Windows, macOS, and Linux</a></li>
<li><a href="https://encyclopedia.kaspersky.com/glossary/malware-as-a-service-maas/">What is Malware-as-a-Service? | Kaspersky IT Encyclopedia</a></li>

</ul>
</details>

**标签**: `#恶意软件`, `#跨平台`, `#MaaS`, `#远控木马`, `#安全威胁`

---

<a id="item-28"></a>
^item-28
## [理解 Linux 内核的 iomap 层](https://lwn.net/Articles/1079415/) ⭐️ 7.0/10

一篇 LWN 文章解释了 Linux 内核中的 iomap 层如何管理文件系统空间与存储空间之间的映射，并通过消除样板代码来简化常见的文件系统任务。 这很重要，因为 iomap 正被越来越多的现代文件系统（如 XFS 和 FUSE）采用，以最少的代码实现复杂的 I/O 操作，从而使内核更高效、更易于维护。 iomap 提供了基于 extent 的替代方案，取代了传统的基于 buffer_head 的 I/O 路径，并支持大 folio 以在页缓存中进行多页操作。

rss · LWN Headlines · 7月6日 14:37

**背景**: Linux 内核的文件系统实现传统上使用 buffer_head 来管理块级 I/O，这需要逐块查找且性能受限。iomap 被引入以提供一种现代的、基于 extent 的映射抽象，允许文件系统查询字节范围的存储映射并以更大的单元执行 I/O，从而降低开销。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://docs.kernel.org/filesystems/iomap/design.html">1. Library Design — The Linux Kernel documentation</a></li>
<li><a href="https://kernelnewbies.org/KernelProjects/iomap">KernelProjects/ iomap - Linux Kernel Newbies</a></li>

</ul>
</details>

**标签**: `#Linux内核`, `#文件系统`, `#iomap`, `#存储映射`

---

<a id="item-29"></a>
^item-29
## [日本 Noetra 联盟计划到 2040 年部署 1000 万台机器人](https://www.reddit.com/r/singularity/comments/1up0sin/japan_is_aiming_to_develop_its_own_ai_model_and/) ⭐️ 7.0/10

日本成立了包括软银、索尼、本田和 NEC 在内的 Noetra 联盟，旨在开发自主 AI 模型，并在 2040 年前在 18 个行业部署 1000 万台 AI 机器人，公共资金支持约 61 亿美元。 该计划旨在应对日本严重的劳动力短缺，并寻求在 AI 和机器人领域建立技术主权，可能重塑全球在这些领域的竞争格局。 AI 模型将由 Noetra 开发，该联盟由日本经济产业省（METI）及其创新机构 NEDO 正式委托，机器人将应用于护理、餐饮等行业。

reddit · r/singularity · /u/Distinct-Question-16 · 7月6日 15:34

**背景**: 由于人口老龄化，日本面临劳动力减少的问题，促使政府大力投资自动化。Noetra 联盟汇集了主要科技和工业企业，旨在创建自主 AI 生态系统，减少对外国 AI 模型的依赖。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://asiatimes.com/2026/07/japan-rallies-tech-giant-alliance-to-build-sovereign-ai/">Japan rallies tech-giant alliance to build sovereign AI - Asia Times</a></li>
<li><a href="https://www.zerohedge.com/ai/japan-unveils-61-billion-sovereign-ai-plan-targeting-10-million-robots-across-18-sectors-2040">Japan Takes Next Step In $2.3 Trillion Plan With... | ZeroHedge</a></li>
<li><a href="https://www.techradar.com/pro/japan-reveals-new-noetra-plan-to-flood-the-country-with-10-million-robots-by-2040-including-work-in-the-nursing-food-and-drink-sectors">Japan 's robot invasion begins as 10 million machines... | TechRadar</a></li>

</ul>
</details>

**标签**: `#AI`, `#机器人`, `#日本`, `#产业政策`, `#软银`

---

<a id="item-30"></a>
^item-30
## [摩尔线程 GPU 完成美团 LongCat-2.0 Day-0 适配](https://www.infoq.cn/article/vRzlWZxXMaxC6aZM7Ufw?utm_source=rss&utm_medium=article) ⭐️ 6.0/10

摩尔线程宣布，其 GPU 凭借硬件原生 FP8 能力，快速完成了美团 LongCat-2.0 模型的 Day-0 适配，该模型是一个 1.6 万亿参数的 MoE 语言模型。 这展示了国产 GPU 厂商与互联网大厂之间日益紧密的合作，加速了大型 AI 模型在国产硬件上的部署，减少了对国外芯片的依赖。 Day-0 适配意味着在模型发布时即完成了全栈兼容性、性能优化和稳定性验证，可实现即时部署。摩尔线程的硬件原生 FP8 支持对大型模型的高效推理至关重要。

rss · InfoQ 中文 · 7月6日 18:24

**背景**: FP8 是一种 8 位浮点精度格式，可减少内存使用并加速计算，尤其适用于 AI 推理。LongCat-2.0 是一个大规模混合专家（MoE）模型，总参数达 1.6 万亿，专为智能编码任务设计。Day-0 适配是 AI 硬件生态中的术语，表示芯片在新模型发布时即可立即运行。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://longcat.chat/blog/longcat-2.0/">Introducing LongCat-2.0</a></li>
<li><a href="https://www.longcatai.org/models/longcat-2">LongCat-2.0 | 1.6T Open-Source Agentic Coding Model</a></li>
<li><a href="https://www.trendforce.com/news/2026/04/29/news-huawei-ascend-cambricon-and-hygon-completed-day-0-adaptation-to-deepseek-v4/">[News] Huawei Ascend, Cambricon and Hygon Completed Day 0 ...</a></li>

</ul>
</details>

**标签**: `#国产GPU`, `#FP8`, `#模型适配`, `#AI基础设施`

---

<a id="item-31"></a>
^item-31
## [GTLC 杭州站：AI 创业进入深水区](https://www.infoq.cn/article/MOVBghUgQrXWr9igbK2p?utm_source=rss&utm_medium=article) ⭐️ 6.0/10

GTLC 全球科技领导力大会杭州站于 2026 年 6 月 27 日举办，包含主题演讲、圆桌对话、TED 风格分享以及 Creator Show 开放麦环节，七位创业者展示了最新产品原型。 随着 AI 创业进入更具挑战性的深水区，本次活动揭示了技术领导者关注的重点，如快速原型设计和市场验证，为不断演变的 AI 创业格局提供了洞察。 活动包括上午两场主题演讲、一场重磅圆桌对话、下午十场 TED 风格分享以及七场产品演示的 Creator Show，并设有欢迎晚宴供交流。

rss · InfoQ 中文 · 7月6日 15:02

**背景**: GTLC（全球科技领导力大会）是由 TGO（科技领导者组织）举办的一系列聚焦技术领导力的活动。杭州站恰逢 TGO 杭州十周年，汇聚了 200 多位 CTO、技术 VP 及高级技术管理者，共同探讨 AI 驱动开发和 Vibe Coding 等趋势。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://tgo.network/events/event-1731/">GTLC 全球科技领导力大会- 杭 州 站 | 活动 | TGO 鲲鹏会</a></li>
<li><a href="https://www.bagevent.com/event/2412835?bag_track=tgomrjy">GTLC 杭 州 分 站 ——无界·协同进化</a></li>
<li><a href="https://www.infoq.cn/article/MOVBghUgQrXWr9igbK2p">GTLC 杭 州 站 回顾｜AI... - InfoQ</a></li>

</ul>
</details>

**标签**: `#AI创业`, `#技术领导力`, `#行业趋势`

---

