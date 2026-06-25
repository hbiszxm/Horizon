# Horizon 每日速递 - 2026-06-26

> 从 106 条内容中筛选出 35 条重要资讯。

---

1. [[#^item-1|NVIDIA 发布扩散语言模型 Nemotron-TwoTower-30B]] ⭐️ 9.0/10
2. [[#^item-2|Anthropic 指控阿里巴巴对 Claude 发动大规模蒸馏攻击]] ⭐️ 9.0/10
3. [[#^item-3|联合国通过首个自动驾驶全球技术法规]] ⭐️ 9.0/10
4. [[#^item-4|AI 首次完整解读赫库兰尼姆古卷]] ⭐️ 9.0/10
5. [[#^item-5|JetSpec：通过并行树草稿实现高达 9.64 倍 LLM 加速]] ⭐️ 9.0/10
6. [[#^item-6|IBM 发布全球首个亚 1 纳米芯片技术]] ⭐️ 9.0/10
7. [[#^item-7|GitHub 推出 Copilot 桌面应用，支持并行 Agent 工作流]] ⭐️ 8.0/10
8. [[#^item-8|AI 智能体身份与权限：Uber 和 Auth0 重新思考访问控制]] ⭐️ 8.0/10
9. [[#^item-9|Claude Code 负责人为 AI Agent 热潮降温：ROI 优先于烧 Token]] ⭐️ 8.0/10
10. [[#^item-10|清华系 AI Infra 独角兽破解算力成本难题]] ⭐️ 8.0/10
11. [[#^item-11|编码 Agent 进入团队基础设施时代]] ⭐️ 8.0/10
12. [[#^item-12|一家 Agent 公司从 Claude 切到 DeepSeek v4，年省数百万美元]] ⭐️ 8.0/10
13. [[#^item-13|PostgreSQL 19 Beta 引入 SQL 图查询与并发表重新打包]] ⭐️ 8.0/10
14. [[#^item-14|OpenAI 研究揭示 AI 代理如何提升生产力]] ⭐️ 8.0/10
15. [[#^item-15|德国法院裁定谷歌对 AI 概述错误负责]] ⭐️ 8.0/10
16. [[#^item-16|Gaslight macOS 恶意软件利用提示注入对抗 AI 分析]] ⭐️ 8.0/10
17. [[#^item-17|Cisco SD-WAN 零日漏洞被利用获取 root 权限]] ⭐️ 8.0/10
18. [[#^item-18|MinIO 替代方案：Ceph 与 Garage 对比]] ⭐️ 8.0/10
19. [[#^item-19|Podman 6.0 发布，带来重大新特性与破坏性变更]] ⭐️ 8.0/10
20. [[#^item-20|Linux 内核 7.2 将引入分配令牌和启动时结构布局随机化]] ⭐️ 8.0/10
21. [[#^item-21|美国政府将对 GPT-5.6 访问实施逐案审批]] ⭐️ 8.0/10
22. [[#^item-22|LFM2.5 230M 在浏览器中以 1400 tok/s 速度运行，使用自定义 WebGPU 内核]] ⭐️ 8.0/10
23. [[#^item-23|GLM 5.2 在双 RTX 5090 消费级硬件上运行]] ⭐️ 8.0/10
24. [[#^item-24|Bash + jq + curl：极简 LLM 代理 REPL]] ⭐️ 8.0/10
25. [[#^item-25|开源权重模型低价冲击 AI 定价]] ⭐️ 8.0/10
26. [[#^item-26|EgoLive：最大开源第一视角数据集发布]] ⭐️ 7.0/10
27. [[#^item-27|AI 编程代理拥有了自己的 Stack Overflow]] ⭐️ 7.0/10
28. [[#^item-28|Coinbase 事后分析：AWS 局部故障导致交易中断数小时]] ⭐️ 7.0/10
29. [[#^item-29|一行命令在 HF Jobs 上部署 vLLM 服务器]] ⭐️ 7.0/10
30. [[#^item-30|混合模型 token 预测分析]] ⭐️ 7.0/10
31. [[#^item-31|MDN 浏览器兼容数据转为 SQLite 数据库]] ⭐️ 7.0/10
32. [[#^item-32|Richard Bejtlich 为神话时代的 NDR 辩护]] ⭐️ 7.0/10
33. [[#^item-33|新型 Mistic 后门与 KongTuke 初始访问经纪人关联]] ⭐️ 7.0/10
34. [[#^item-34|从告警疲劳到 AI 时代的自动化补丁修复]] ⭐️ 7.0/10
35. [[#^item-35|途虎养车基于 Apache Doris 构建统一 OLAP 数据底座]] ⭐️ 6.0/10

---

<a id="item-1"></a>
^item-1
## [NVIDIA 发布扩散语言模型 Nemotron-TwoTower-30B](https://www.reddit.com/r/LocalLLaMA/comments/1uf4azy/nvidia_has_released/) ⭐️ 9.0/10

NVIDIA 发布了 Nemotron-TwoTower-30B-A3B-Base-BF16，这是一个基于 Nemotron 3 Nano 30B-A3B 骨干网络的扩散语言模型，它通过并行迭代填充 token 块来生成文本，而非逐个 token 生成。 该模型在保持自回归基线 98.7% 基准质量的同时，实现了 2.42 倍的生成吞吐量，标志着语言模型生成范式的重大突破，可为 AI 应用带来更快、更高效的文本生成能力。 该模型使用一个冻结的自回归上下文塔和一个扩散去噪塔，通过掩码扩散设置并行填充 token 块。它基于 Nemotron 3 Nano 30B-A3B 骨干网络构建，这是一个总参数量 30B、激活参数量 3B 的小型 MoE 模型。

reddit · r/LocalLLaMA · /u/nikhilprasanth · 6月25日 08:34

**背景**: 传统大语言模型以自回归方式逐个预测 token 生成文本，限制了吞吐量。扩散语言模型受图像扩散模型启发，通过逐步去噪 token 序列来生成文本，允许并行生成多个 token。NVIDIA 的 Nemotron-TwoTower 结合了两种方法：冻结的自回归塔提供上下文，扩散塔并行去噪 token 块。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://arxiv.org/abs/2502.09992">[2502.09992] Large Language Diffusion Models - arXiv.org</a></li>
<li><a href="https://huggingface.co/blog/ProCreations/diffusion-language-model">Diffusion Language Models: The New Paradigm - Hugging Face</a></li>
<li><a href="https://huggingface.co/unsloth/Nemotron-3-Nano-30B-A3B">unsloth/ Nemotron - 3 - Nano - 30 B - A 3 B · Hugging Face</a></li>

</ul>
</details>

**标签**: `#NVIDIA`, `#扩散模型`, `#语言模型`, `#AI架构`, `#开源`

---

<a id="item-2"></a>
^item-2
## [Anthropic 指控阿里巴巴对 Claude 发动大规模蒸馏攻击](https://www.cnbc.com/2026/06/24/anthropic-alibaba-distillation-campaign.html) ⭐️ 9.0/10

Anthropic 指控阿里巴巴策划了一场大规模模型蒸馏攻击，在 2026 年 4 月 22 日至 6 月 5 日期间，利用近 2.5 万个欺诈账户与 Claude 模型进行了超过 2880 万次交互，非法提取模型能力。 这一事件加剧了中美 AI 紧张局势，凸显了知识产权盗窃担忧和潜在的国家安全影响，可能导致更严格的出口管制和法律行动，影响全球 AI 行业。 攻击针对 Anthropic 先进的 Mythos Preview 模型，信件在 AI 听证会前发送给美国参议院银行委员会。阿里巴巴尚未回应这些指控。

telegram · zaihuapd · 6月25日 01:36

**背景**: 模型蒸馏是一种技术，较弱的模型通过学习较强模型的输出来复制其能力。Anthropic 此前在 2026 年 2 月曾指控中国 AI 实验室进行类似攻击。美国政府近期以国家安全为由限制了 Anthropic 的 Mythos 和 Fable 模型出口。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://news.qq.com/rain/a/20260625A02CHX00?adChannelId=tech">Anthropic指控阿里巴巴发动大规模“模型蒸馏攻击”，涉2880万次非法交互...</a></li>
<li><a href="https://red.anthropic.com/2026/mythos-preview/?utm_source=tldrai">Assessing Claude Mythos Preview's cybersecurity capabilities \ Anthropic</a></li>

</ul>
</details>

**标签**: `#AI安全`, `#模型蒸馏`, `#中美AI竞争`, `#Anthropic`, `#阿里巴巴`

---

<a id="item-3"></a>
^item-3
## [联合国通过首个自动驾驶全球技术法规](https://global.chinadaily.com.cn/a/202606/25/WS6a3cf7e7a310986e2b461ebc.html) ⭐️ 9.0/10

联合国世界车辆法规协调论坛（WP.29）投票通过了首个自动驾驶系统全球技术法规（ADS GTR），该法规由中国、欧盟、英国、美国、加拿大和日本共同牵头制定。 该法规为自动驾驶汽车建立了统一的全球安全框架，覆盖产品全生命周期，将促进国际贸易并加速安全自动驾驶技术在全球的部署。 ADS GTR 明确了核心技术指标，并要求制造商实施安全管理、维护安全档案、进行试验验证并确保部署后安全。中国针对 L3/L4 级自动驾驶的强制性国家标准与 ADS GTR 保持一致，并进一步细化了安全基线和测试要求。

telegram · zaihuapd · 6月25日 16:03

**背景**: WP.29 是联合国欧洲经济委员会下属的论坛，负责制定协调统一的车辆法规。ADS GTR 是首个专门针对自动驾驶系统的全球法规，建立在先前高级驾驶辅助系统的工作基础上。中国在法规起草中发挥了牵头作用，贡献了技术提案和测试数据。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/WP.29">WP.29</a></li>
<li><a href="https://unece.org/wp29-introduction">WP.29 - Introduction | UNECE</a></li>
<li><a href="https://news.qq.com/rain/a/20260624A0AFDS00">从“证明能开”到“证明安全” 首部L3/L4级自动驾驶强制性国标结束公示</a></li>

</ul>
</details>

**标签**: `#自动驾驶`, `#国际法规`, `#AI行业趋势`, `#智能网联汽车`, `#标准制定`

---

<a id="item-4"></a>
^item-4
## [AI 首次完整解读赫库兰尼姆古卷](https://scrollprize.org/firstscroll) ⭐️ 9.0/10

维苏威挑战赛宣布，利用 AI 和计算机视觉技术首次完整解读了一卷赫库兰尼姆古卷，揭示了古希腊哲学文本。这一突破由一组学生研究人员实现，他们开发了机器学习算法，从微 CT 扫描中检测墨迹。 这一成就为解读来自唯一保存完好的古代图书馆的数百卷碳化古卷打开了大门，有可能恢复失传的希腊和罗马文学作品。它展示了 AI 在考古学和文化遗产领域的变革力量。 该古卷在公元 79 年维苏威火山爆发中被碳化，发现于赫库兰尼姆的纸莎草别墅。AI 方法使用 X 射线微计算机断层扫描（micro-CT）和机器学习来检测碳化纸莎草上的碳基墨水，这些墨水肉眼不可见。

hackernews · verditelabs · 6月25日 15:48 · [社区讨论](https://news.ycombinator.com/item?id=48675179)

**背景**: 赫库兰尼姆纸莎草卷是 18 世纪发现的 1800 多卷古卷，在维苏威火山喷发中被碳化。以往试图展开它们的尝试常常损坏脆弱的古卷，而且碳基墨水在碳化纸莎草上不可见。维苏威挑战赛于 2023 年启动，提供了超过 180 万美元的奖金，以激励使用 AI 和计算机视觉开发非侵入式阅读技术。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://scrollprize.org/">Vesuvius Challenge — Reading the Herculaneum Scrolls with AI</a></li>
<li><a href="https://en.wikipedia.org/wiki/Herculaneum_papyri">Herculaneum papyri - Wikipedia</a></li>
<li><a href="https://en.wikipedia.org/wiki/Vesuvius_Challenge">Vesuvius Challenge</a></li>

</ul>
</details>

**社区讨论**: 社区成员对这一成就表示惊叹，有人指出古卷的作者永远无法想象它在 2000 年后被解读。一位维苏威挑战赛的团队成员主动回答问题，其他人则强调了在赫库兰尼姆未发掘部分发现更多古卷的潜力。

**标签**: `#AI`, `#考古`, `#计算机视觉`, `#古卷`, `#突破`

---

<a id="item-5"></a>
^item-5
## [JetSpec：通过并行树草稿实现高达 9.64 倍 LLM 加速](https://www.reddit.com/r/LocalLLaMA/comments/1ufntl5/research_jetspec_speculative_decoding_with/) ⭐️ 9.0/10

JetSpec 提出了因果保持的并行树草稿方法，在 MATH-500 上实现最高 9.64 倍端到端加速，在开放式对话上实现 4.58 倍加速，且保持无损精度。结合 CUDA graph 和内核优化，单张 B200 GPU 可达约 1000 tokens/s。 这一突破解决了推测解码中草稿成本与质量之间的根本矛盾，大幅降低了 LLM 推理延迟。它直接惠及聊天机器人和代码助手等实时应用，开源发布也便于广泛采用和进一步优化。 JetSpec 在单次前向传播中生成因果保持的树结构，避免了块扩散方法中深层路径的相互不一致问题。该项目提供了开源代码、包含演示的项目页面以及详细的技术博客文章。

reddit · r/LocalLLaMA · /u/No_Yogurtcloset_7050 · 6月25日 21:55

**背景**: 推测解码通过并行预测和验证多个 token 来加速 LLM 推理，且不牺牲输出质量。此前的方法面临两难：自回归草稿头保持因果性但随树深度成本增加，而块扩散草稿头成本低但深层路径不一致。JetSpec 的并行树草稿通过单次生成因果保持的树结构克服了这一问题。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://developer.nvidia.com/blog/an-introduction-to-speculative-decoding-for-reducing-latency-in-ai-inference/">An Introduction to Speculative Decoding for Reducing Latency ...</a></li>
<li><a href="https://research.google/blog/looking-back-at-speculative-decoding/">Looking back at speculative decoding - Google Research</a></li>
<li><a href="https://developer.nvidia.com/blog/cuda-graphs/">Getting Started with CUDA Graphs | NVIDIA Technical Blog</a></li>

</ul>
</details>

**标签**: `#推测解码`, `#LLM推理加速`, `#并行树草稿`, `#CUDA优化`, `#开源`

---

<a id="item-6"></a>
^item-6
## [IBM 发布全球首个亚 1 纳米芯片技术](https://www.reuters.com/business/ibm-unveils-tech-chip-smaller-than-1-nanometer-ai-computing-push-2026-06-25/) ⭐️ 9.0/10

IBM 于 2026 年 6 月 25 日发布了全球首个亚 1 纳米芯片技术，采用 0.7 纳米晶体管架构和全新的 NanoStack 三维堆叠设计。该芯片在指甲盖大小的面积上集成了近 1000 亿个晶体管，密度是其 2021 年 2 纳米芯片的两倍。 这一突破将摩尔定律推向新极限，通过提供高达 50% 的性能提升或 70% 的能效提升，可能彻底改变 AI 计算、高性能计算和移动设备领域。同时，它也巩固了 IBM 在半导体创新和授权方面的地位。 该技术采用 IBM 专有的 NanoStack 架构，将晶体管垂直堆叠而非平铺，并结合了新材料和结构创新。IBM 预计生产将在五年内启动，但尚未公布该节点的制造合作伙伴。

telegram · zaihuapd · 6月25日 15:39

**背景**: 半导体制造历来遵循摩尔定律，大约每两年晶体管密度翻倍。随着节点缩小到 5 纳米以下，传统的平面缩放变得越来越困难，需要像三维堆叠这样的新架构。IBM 一直是先进芯片研究的关键参与者，此前曾展示过 2 纳米和 5 纳米技术，并将其设计授权给三星和 Rapidus 等合作伙伴。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.ithome.com/0/968/648.htm">半导体行业重大突破！IBM 推出全球首个亚 1 纳米芯片技术 - IT之家</a></li>
<li><a href="https://www.weste.net/2026/06-25/Sub-1nm-node-chip.html">IBM推出全球首个亚1纳米芯片技术，Nanostack架构实现晶体管密度翻倍_I...</a></li>
<li><a href="https://www.163.com/dy/article/L0A0H4QA0511B8LM.html">IBM推出全球首款亚1纳米芯片技术|ibm|晶体管|知名企业_网易订阅</a></li>

</ul>
</details>

**社区讨论**: 未提供社区评论。

**标签**: `#芯片`, `#半导体`, `#IBM`, `#纳米工艺`, `#AI计算`

---

<a id="item-7"></a>
^item-7
## [GitHub 推出 Copilot 桌面应用，支持并行 Agent 工作流](https://www.infoq.cn/article/GaAsWkrJQW2NFf06kgyG?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

GitHub 发布了 Copilot 桌面应用，新增并行 Agent 开发工作流功能，允许多个 AI Agent 同时处理不同任务。每个会话拥有独立的分支、文件和任务状态，开发者可以并行运行多个 Agent。 这一更新通过支持并发 AI 辅助编码任务（如调试和功能开发）且互不干扰，大幅提升了开发者效率。它标志着从单 Agent 辅助向多 Agent 协作的转变，可能重塑开发者日常工作中与 AI 工具的交互方式。 并行 Agent 工作流基于 Git Worktree 实现，每个 Agent 会话在隔离环境中运行。开发者可以指派一个 Agent 修复生产问题，另一个处理需求列表中的任务，所有操作都在同一项目内完成。

rss · InfoQ 中文 · 6月25日 19:06

**背景**: GitHub Copilot 是一款 AI 驱动的代码补全工具，可实时建议代码片段和函数。新的桌面应用将 Copilot 的能力从 IDE 插件扩展到独立界面，用于管理 AI Agent。并行 Agent 工作流代表了从单 Agent 辅助到多 Agent 协作的演进，多个 AI Agent 可以同时处理项目的不同方面。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.infoq.cn/article/GaAsWkrJQW2NFf06kgyG">GitHub 推出 Copilot 桌面应用，支持并行 Agent 开发工作流 - InfoQ</a></li>
<li><a href="https://zhuanlan.zhihu.com/p/1910640897772742437">再写一行代码算我输！GitHub Copilot Agent 让程序员告别“搬砖” - 知乎</a></li>
<li><a href="https://blog.csdn.net/MicrosoftReactor/article/details/153272924">技术速递｜将 GitHub Copilot 编码 Agent 集成到工作流的 5 种方法_copilot怎样结合agent使用-CSDN博客</a></li>

</ul>
</details>

**标签**: `#GitHub Copilot`, `#AI 工具`, `#开发工作流`, `#Agent`

---

<a id="item-8"></a>
^item-8
## [AI 智能体身份与权限：Uber 和 Auth0 重新思考访问控制](https://www.infoq.cn/article/tDY9pS7LlrVIBq1pPotd?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

Uber 和 Auth0 正在开发针对 AI 智能体的身份与访问管理新方法，解决非人类身份治理和细粒度权限控制等挑战。 随着 AI 智能体变得更加自主，传统的访问控制模型无法区分人类与智能体的行为，带来安全与合规风险。这项工作对于在企业中安全部署智能体 AI 至关重要。 文章讨论了 Uber 和 Auth0 如何实施零信任原则并使用 RBAC/ABAC 混合模型来管理 AI 智能体权限，还强调了需要能够清晰区分智能体与人类行为的审计追踪。

rss · InfoQ 中文 · 6月25日 18:00

**背景**: AI 智能体是能够代表用户自主执行任务的软件实体，通常需要访问各种系统和数据。传统的身份与访问管理系统是为人类用户设计的，难以处理 AI 智能体等非人类身份。这催生了专门针对智能体 AI 的智能体身份服务和零信任架构等解决方案。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.ai-indeed.com/encyclopedia/18584.html">AI智能体的权限怎么管理？能适配企业多层级权限体系吗？</a></li>
<li><a href="https://www.ibm.com/cn-zh/solutions/agentic-ai-identity-management">智能体式 AI 身份管理 - IBM</a></li>
<li><a href="https://help.aliyun.com/zh/agentidentity/what-is-agent-identity">智能体身份凭证管理-智能体身份-阿里云</a></li>

</ul>
</details>

**标签**: `#AI安全`, `#身份管理`, `#访问控制`, `#零信任`, `#AI智能体`

---

<a id="item-9"></a>
^item-9
## [Claude Code 负责人为 AI Agent 热潮降温：ROI 优先于烧 Token](https://www.infoq.cn/article/XebV3B8Vy3Yx0A4HZX4b?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

Claude Code 的工程负责人发表文章，呼吁 AI Agent 社区停止盲目消耗 Token，转而关注投资回报率（ROI）。 这标志着 AI Agent 领域从炒作驱动转向成本意识部署，可能影响企业评估和构建 Agent 系统的方式。 文章指出，Agent 任务消耗的 Token 可能比代码推理或聊天多出 1000 倍，且失败的运行仍会产生成本而不带来价值。

rss · InfoQ 中文 · 6月25日 16:54

**背景**: AI Agent 是使用大语言模型执行多步骤任务的自主系统。Token 消耗直接转化为 API 成本，近期研究表明 Agent 工作负载异常昂贵，常在循环和错误上浪费 Token。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://digitaleconomy.stanford.edu/news/how-are-ai-agents-spending-your-tokens/">How are AI agents spending your tokens? - Stanford Digital Economy Lab</a></li>
<li><a href="https://www.forbes.com/sites/josipamajic/2026/06/04/token-billing-exposes-ais-missing-roi-and-puts-billion-dollar-bets-at-risk/">Token Billing Exposes AI's Missing ROI And Puts Billion-Dollar Bets At Risk</a></li>

</ul>
</details>

**标签**: `#AI Agent`, `#Claude Code`, `#ROI`, `#大模型`, `#行业趋势`

---

<a id="item-10"></a>
^item-10
## [清华系 AI Infra 独角兽破解算力成本难题](https://www.infoq.cn/article/szKShGMPxfQMVbOU4IbX?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

一家清华系的 AI 基础设施独角兽公司开发了技术方案，大幅降低 AI 工作负载的算力成本，解决了 GPU 集群和能源消耗高昂的问题。 这一突破可能使 AI 更加普及，让大规模模型训练和推理更经济，惠及那些因算力成本飙升而挣扎的初创企业和公司。 该方案可能涉及智能资源调度、软硬件协同优化以及高效内存管理，以最大化 GPU 利用率并减少浪费。

rss · InfoQ 中文 · 6月25日 16:50

**背景**: AI 基础设施（AI Infra）是指支撑 AI 工作负载的硬件和软件系统，包括 GPU、存储、网络和编排工具。算力成本是 AI 应用的主要瓶颈，源于昂贵的硬件和高能耗。许多公司通过实例选择、算法调优和资源调度等优化策略来降低成本。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://zhuanlan.zhihu.com/p/1993991457946764571">AI Infra行业深度：行业概述、市场现状及空间、产业链及相关公司深度...</a></li>
<li><a href="https://cloud.tencent.com/developer/article/2665266">腾讯云代理商：腾讯云 AI 算力成本全解析 从技术原理到价格优化策略-...</a></li>
<li><a href="https://developer.baidu.com/article/detail.html?id=6709554">算力成本全解析：从硬件采购到资源优化的降本策略-百度开发者中心</a></li>

</ul>
</details>

**标签**: `#AI Infra`, `#算力成本`, `#清华系`, `#独角兽`

---

<a id="item-11"></a>
^item-11
## [编码 Agent 进入团队基础设施时代](https://www.infoq.cn/article/w4sl1mazwewiJ6Th2XqV?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

一周之内，三家公司将编码 Agent 纳入团队基础设施，标志着 AI 编码工具从实验性使用进入规模化部署阶段。 这一趋势表明，AI 编码 Agent 正成为软件团队的基础设施，可能加速开发周期并重塑代码编写与维护方式。 这些公司将编码 Agent 作为核心开发流程的一部分，利用 TRAE AI IDE 和 MonkeyCode AI 等工具，支持自然语言生成代码和自动调试。

rss · InfoQ 中文 · 6月25日 12:50

**背景**: 编码 Agent 是能够自主生成、审查和调试代码的 AI 工具。它们超越简单的代码补全，能够理解项目上下文并执行多步骤任务。近期被纳入团队基础设施意味着这些 Agent 现在被视为开发工作流的关键组件，类似于版本控制或 CI/CD 系统。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.trae.cn/">TRAE - The Real AI Engineer | TRAE - The Real AI Engineer</a></li>
<li><a href="https://juejin.cn/post/7591942733365805090">重复 编 码 省一半时间！ MonkeyCode AI ...</a></li>

</ul>
</details>

**标签**: `#AI Agent`, `#编码工具`, `#AI基础设施`, `#行业趋势`

---

<a id="item-12"></a>
^item-12
## [一家 Agent 公司从 Claude 切到 DeepSeek v4，年省数百万美元](https://www.infoq.cn/article/KfCaAKEXqDsmrDCxr4P1?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

一家人工智能 Agent 公司从 Anthropic 的 Claude 迁移到 DeepSeek v4，每年节省数百万美元，但迁移工作量是预期的 100 倍。 这一案例揭示了在大型语言模型之间切换时现实中的成本效益权衡和隐藏的工程挑战，为优化 AI Agent 成本的企业提供了宝贵经验。 该公司报告称，虽然 API 成本大幅下降，但迁移需要对 Agent 工作流进行大量重新工程、提示调优和集成测试，远超计划工作量。

rss · InfoQ 中文 · 6月25日 12:43

**背景**: DeepSeek v4 是中国 AI 公司 DeepSeek 开发的开源权重大型语言模型，以低训练成本和有竞争力的性能著称。Claude 是 Anthropic 的一系列模型，常用于安全可靠的 AI 助手。在模型之间迁移 AI Agent 不仅涉及更换 API，还需要适应行为、延迟和工具使用能力上的差异。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/DeepSeek">DeepSeek</a></li>
<li><a href="https://en.wikipedia.org/wiki/Claude_(language_model)">Claude ( AI ) - Wikipedia</a></li>
<li><a href="https://blog.margrop.net/en/post/ai-agent-complete-migration-guide-from-scratch/">The Complete AI Agent Migration Guide... - Margrop Blog</a></li>

</ul>
</details>

**标签**: `#AI Agent`, `#大模型`, `#DeepSeek`, `#Claude`, `#成本优化`

---

<a id="item-13"></a>
^item-13
## [PostgreSQL 19 Beta 引入 SQL 图查询与并发表重新打包](https://www.infoq.cn/article/HOFzjxIov0SxEpmZccYT?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

PostgreSQL 19 Beta 版新增原生 SQL 图查询支持以及并发表重新打包功能，提升了查询灵活性和性能。 此次发布标志着 PostgreSQL 无需外部扩展即可处理图工作负载的重要一步，同时并发表重新打包功能减少了表维护的停机时间，有利于大规模生产部署。 SQL 图查询支持使用标准 SQL 语法对图结构数据进行模式匹配和遍历，而并发表重新打包功能允许在最小锁定下进行表重组，提高了可用性。

rss · InfoQ 中文 · 6月25日 11:03

**背景**: PostgreSQL 是领先的开源关系型数据库，以其可扩展性和标准合规性著称。图查询通常由专门的数据库或扩展（如 Apache AGE）处理，而表重新打包通常需要停机或复杂操作。新功能旨在简化这些任务。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.infoq.cn/article/HOFzjxIov0SxEpmZccYT">PostgreSQL 19 Beta 版引入 SQL 图查询和并发表重新打包功能 - InfoQ</a></li>

</ul>
</details>

**标签**: `#PostgreSQL`, `#数据库`, `#图查询`, `#并发`

---

<a id="item-14"></a>
^item-14
## [OpenAI 研究揭示 AI 代理如何提升生产力](https://openai.com/index/how-agents-are-transforming-work) ⭐️ 8.0/10

OpenAI 发布了一篇新研究论文，展示了 AI 代理如何处理更长时间、更复杂的任务，从而扩展各角色的生产力。 这项研究标志着向更自主的 AI 系统转变，这些系统可以执行多步骤工作流，可能改变企业运营方式并提高效率。 论文详细介绍了 AI 代理如何通过利用可用工具设计工作流来自主执行任务，从而处理以前需要人工干预的复杂任务。

rss · OpenAI News · 6月25日 02:00

**背景**: AI 代理是通过利用可用工具设计工作流来自主执行任务的系统，常被称为数字员工或数字工人。这项研究建立在 OpenAI 在代理 AI 方面的持续工作之上，旨在创建更强大、更可靠的代理。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://openai.com/index/how-agents-are-transforming-work/">How agents are transforming work - OpenAI</a></li>
<li><a href="https://www.ibm.com/think/topics/ai-agents">What Are AI Agents ? | IBM</a></li>

</ul>
</details>

**标签**: `#AI代理`, `#OpenAI`, `#生产力`, `#AI研究`

---

<a id="item-15"></a>
^item-15
## [德国法院裁定谷歌对 AI 概述错误负责](https://simonwillison.net/2026/Jun/25/ai-and-liability/#atom-everything) ⭐️ 8.0/10

德国慕尼黑地区法院裁定，谷歌需对其 AI 概述中的虚假信息直接承担法律责任，将 AI 生成的摘要视为谷歌自身言论而非受保护的搜索结果。谷歌已宣布将提起上诉。 这一里程碑式的裁决开创了先例，表明部署 AI 代理的公司不能通过将错误归咎于 AI 来逃避责任，可能重塑全球 AI 问责的法律框架。它直接影响科技公司如何管理 AI 生成内容的风险与合规。 法院将 AI 概述与传统搜索结果区分开来，裁定搜索引擎之前的有限责任保护不适用，因为 AI 摘要是由谷歌自身系统生成的。Bruce Schneier 认为，允许企业以 AI 故障为借口会为企业不当行为创造灾难性激励。

rss · Simon Willison · 6月25日 22:28

**背景**: AI 概述是谷歌的一项功能，利用大语言模型从搜索结果中生成简洁摘要。与其他生成式 AI 系统一样，它们可能产生“幻觉”——自信但错误的陈述。此前，根据《电子商务指令》，德国的搜索引擎对第三方内容享有有限责任，但此次裁决将 AI 生成的内容视为第一方言论。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://the-decoder.com/landmark-german-ruling-declares-googles-ai-overviews-are-googles-own-words-and-makes-it-liable-for-false-answers/">Landmark German ruling declares Google's AI Overviews are ...</a></li>
<li><a href="https://www.technology.org/2026/06/12/german-court-google-ai-overviews-liable/">German Court Holds Google Liable for AI Lies - Technology Org</a></li>
<li><a href="https://nerova.ai/news/google-ai-overviews-liability-german-court-appeal-june-12-2026">Google Appeals German AI Overviews Liability Ruling on June ...</a></li>

</ul>
</details>

**标签**: `#AI责任`, `#法律`, `#谷歌`, `#AI概述`, `#合规`

---

<a id="item-16"></a>
^item-16
## [Gaslight macOS 恶意软件利用提示注入对抗 AI 分析](https://thehackernews.com/2026/06/new-gaslight-macos-malware-uses-prompt.html) ⭐️ 8.0/10

SentinelOne 的安全研究人员发现了一种名为 Gaslight 的新型 Rust 编写的 macOS 后门，它利用提示注入技术欺骗 AI 辅助恶意软件分析工具，使其中止或拒绝分析。 这标志着恶意软件策略的新演变，攻击者利用 AI 漏洞逃避检测，对日益依赖 AI 工具进行分诊的安全分析师构成了重大挑战。 Gaslight 是一个信息窃取器，通过 Telegram 窃取数据，并使用加密流量的交互式 shell。评估高度确信其与朝鲜相关的威胁行为者有关联。

rss · The Hacker News · 6月25日 09:23

**背景**: 提示注入是一种攻击技术，攻击者在输入数据中嵌入隐藏指令以操纵 AI 模型的输出。在此案例中，恶意软件包含一个载荷，导致 AI 分析工具拒绝或中止分析，从而有效致盲自动化防御。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://thehackernews.com/2026/06/new-gaslight-macos-malware-uses-prompt.html">New Gaslight macOS Malware Uses Prompt Injection to Disrupt...</a></li>
<li><a href="https://overcentral.com/en/macos-gaslight-rust-backdoor/">macOS Gaslight Rust Backdoor Steals Data via Telegram</a></li>
<li><a href="https://decipher.sc/2026/06/24/macos-gaslight-backdoor-weaponizes-prompt-injection-against-security-analysts/">macOS Gaslight Backdoor Weaponizes Prompt Injection... - Decipher</a></li>

</ul>
</details>

**标签**: `#macOS`, `#恶意软件`, `#提示注入`, `#AI安全`, `#Rust`

---

<a id="item-17"></a>
^item-17
## [Cisco SD-WAN 零日漏洞被利用获取 root 权限](https://thehackernews.com/2026/06/cisco-catalyst-sd-wan-zero-day-cve-2026.html) ⭐️ 8.0/10

Mandiant 发现，Cisco Catalyst SD-WAN 中的一个高严重性零日漏洞（CVE-2026-20245，CVSS 7.8）在公开披露前至少两个月已被未知威胁行为者利用，允许本地攻击者获取 root 权限。 此零日漏洞在披露前已被积极利用，凸显了广泛部署的 SD-WAN 基础设施中未修补漏洞的风险，可能使攻击者完全入侵企业网络。 该漏洞需要经过身份验证的本地访问才能利用，意味着攻击者必须首先在设备上获得立足点。Cisco 已发布安全公告和补丁，敦促用户立即应用更新。

rss · The Hacker News · 6月25日 05:46

**背景**: Cisco Catalyst SD-WAN 是一种软件定义网络解决方案，用于简化分支机构连接和管理。Mandiant 是谷歌旗下的网络安全公司，专注于威胁情报和事件响应。零日漏洞是指供应商在利用时未知的缺陷，因此特别危险。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Mandiant">Mandiant</a></li>

</ul>
</details>

**标签**: `#Cisco`, `#SD-WAN`, `#零日漏洞`, `#CVE-2026-20245`, `#安全预警`

---

<a id="item-18"></a>
^item-18
## [MinIO 替代方案：Ceph 与 Garage 对比](https://lwn.net/Articles/1077739/) ⭐️ 8.0/10

流行的 S3 兼容对象存储服务器 MinIO 于 2025 年 12 月进入维护模式，并在 2026 年 2 月完全归档。LWN.net 上的一篇文章分析了 Ceph 和 Garage 这两个有吸引力的替代方案，供用户寻找替代品。 MinIO 的归档使许多用户失去了一个积极开发的 S3 兼容存储解决方案，因此这一对比对于选择可靠的替代方案至关重要。Ceph 和 Garage 在可扩展性、复杂性和用例方面代表了不同的权衡，影响从小型部署到大规模基础设施的选择。 Ceph 是一个成熟、功能丰富的分布式存储系统，支持对象、块和文件存储，但部署和管理复杂。Garage 是一个轻量级、自托管的 S3 兼容存储，专为中小规模设计，使用 Rust 编写，更易于设置。

rss · LWN Headlines · 6月25日 17:40

**背景**: MinIO 是一个开源对象存储服务器，提供与 Amazon S3 兼容的 API，广泛用于私有云和混合云存储。在其归档后，用户需要同样支持 S3 API 的替代方案。Ceph 使用 RADOS 网关（ceph-rgw）提供 S3 兼容的对象存储，而 Garage 是一个较新、更简单的选择，专注于中小规模的自托管。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/MinIO">MinIO - Wikipedia</a></li>
<li><a href="https://en.wikipedia.org/wiki/Ceph_(software)">Ceph (software) - Wikipedia</a></li>
<li><a href="https://howtomgr.github.io/object-storage/garage/">garage Installation Guide Installation Guide - HowToMgr</a></li>

</ul>
</details>

**标签**: `#对象存储`, `#MinIO`, `#Ceph`, `#Garage`, `#S3`

---

<a id="item-19"></a>
^item-19
## [Podman 6.0 发布，带来重大新特性与破坏性变更](https://lwn.net/Articles/1079600/) ⭐️ 8.0/10

Podman 6.0.0 已发布，新增为容器设置多个静态 IP 地址、改进网络隔离以增强与 Docker 的兼容性、更改 Quadlet 命令行为，并完全重写了配置文件处理。 作为 Docker 的重要替代品，Podman 的大版本更新显著影响了容器管理工作流程，提供了增强的网络功能和更好的 Docker 兼容性，同时要求用户适应破坏性变更。 该版本为现有 podman 命令增加了许多新选项，破坏性变更的完整列表可在发布说明中找到。配置文件重写改变了 Podman 读取和处理配置的方式，可能影响现有部署。

rss · LWN Headlines · 6月25日 16:33

**背景**: Podman 是一个无守护进程的容器引擎，提供与 Docker 兼容的命令行界面。Quadlet 是一个工具，通过从简单的配置文件生成 systemd 单元文件，允许将 Podman 容器作为 systemd 服务运行。配置文件重写旨在简化和整合 Podman 的配置处理。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://docs.podman.io/en/latest/markdown/podman-systemd.unit.5.html">podman -systemd.unit — Podman documentation</a></li>
<li><a href="https://www.redhat.com/en/blog/quadlet-podman">Make systemd better for Podman with Quadlet</a></li>
<li><a href="https://docs.podman.io/en/latest/Commands.html">Commands — Podman documentation</a></li>

</ul>
</details>

**标签**: `#Podman`, `#容器`, `#版本发布`, `#运维`

---

<a id="item-20"></a>
^item-20
## [Linux 内核 7.2 将引入分配令牌和启动时结构布局随机化](https://lwn.net/Articles/1078699/) ⭐️ 8.0/10

即将发布的 Linux 内核 7.2 版本将引入分配令牌机制，动态分配结构体内存位置以增加覆盖难度；同时，名为 bootpatch-SLR 的项目旨在启动时随机化内核结构布局。 这些加固技术使现有内核漏洞更难被利用，在不要求无缺陷代码的情况下提升整体系统安全性。 分配令牌为分配调用分配令牌 ID，实现分配器级别的堆组织策略；bootpatch-SLR 目前专注于在 v6.12 内核中随机化 task_struct，工具仅适用于 x86_64。

rss · LWN Headlines · 6月25日 14:02

**背景**: 内核加固旨在即使无法消除漏洞，也使其更难被利用。分配令牌是 Clang 的一个特性，有助于组织堆内存以防止覆盖。启动时结构布局随机化（bootpatch-SLR）将地址空间布局随机化（ASLR）的概念扩展到结构级别，在启动时打乱字段顺序。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://clang.llvm.org/docs/AllocToken.html">Allocation Tokens — Clang 23.0.0git documentation</a></li>
<li><a href="https://lwn.net/Articles/722293/">Randomizing structure layout [LWN.net]</a></li>
<li><a href="https://lwn.net/Articles/1076762/">Bootpatch-SLR: Randomizing Linux Kernel Structure Layouts at Boot</a></li>

</ul>
</details>

**标签**: `#Linux内核`, `#安全加固`, `#内核安全`, `#漏洞缓解`, `#结构布局随机化`

---

<a id="item-21"></a>
^item-21
## [美国政府将对 GPT-5.6 访问实施逐案审批](https://www.reddit.com/r/LocalLLaMA/comments/1ufo0un/us_govt_to_individually_approve_who_gets_gpt_56/) ⭐️ 8.0/10

美国政府计划对 OpenAI 的 GPT-5.6 模型访问实施逐案审批，这是一项新的 AI 出口管制措施。 该政策可能严重限制全球对尖端 AI 模型的访问，影响世界各地的开发者、研究人员和企业，并可能加速对开源替代方案的推动。 审批流程适用于 GPT-5.6，该模型据称拥有 150 万 token 的上下文窗口和泄露的基准测试结果。审批的具体范围和标准尚不明确。

reddit · r/LocalLLaMA · /u/AtlanticHM · 6月25日 22:02

**背景**: 美国政府越来越多地使用出口管制来限制先进 AI 技术的流动，特别是针对中国等国家。GPT-5.6 是 OpenAI GPT 系列的最新版本，接替了 2025 年 8 月发布的 GPT-5。逐案审批是一种比全面禁令更精细的控制机制。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/GPT-5">GPT-5</a></li>
<li><a href="https://www.youtube.com/watch?v=aQGdtRmg6zs">GPT - 5 . 6 Explained: 1.5 MILLION Tokens?! - YouTube</a></li>
<li><a href="https://bccci.xn--e1ago8a.org/china-imposes-stringent-export-controls-on-core-rare-earth-technologies/">China imposes stringent export controls on core rare earth... - BCCCI</a></li>

</ul>
</details>

**社区讨论**: Reddit 社区反应不一，一些人批评该政策越界，扼杀创新，而另一些人则认为出于国家安全考虑是必要的。许多用户指出这可能推动 LLaMA 等开源模型的发展。

**标签**: `#AI监管`, `#GPT-5.6`, `#出口管制`, `#开源AI`, `#政策影响`

---

<a id="item-22"></a>
^item-22
## [LFM2.5 230M 在浏览器中以 1400 tok/s 速度运行，使用自定义 WebGPU 内核](https://www.reddit.com/r/LocalLLaMA/comments/1ufii9b/lfm25_230m_running_inbrowser_at_1400_toks_using/) ⭐️ 8.0/10

LiquidAI 的 LFM2.5-230M 模型（量化至 GGUF 格式）通过由 Fable 5 和 Opus 4.8 编写的自定义 WebGPU 内核，在浏览器中完全本地运行，速度达到每秒 1400 个 token。 这表明小模型可以通过 WebGPU 在消费级硬件上实现极高的推理速度，从而在浏览器中直接实现实时、保护隐私的 AI 应用，无需服务器端处理。 该演示在 M4 Max Mac 上运行，使用自定义 WGSL 计算着色器实现 WebGPU。模型权重在首次加载后本地缓存，所有数据均保留在设备上。

reddit · r/LocalLLaMA · /u/xenovatech · 6月25日 18:35

**背景**: WebGPU 是一种现代 Web 标准，允许 Web 应用程序访问 GPU 进行通用计算。GGUF 是一种文件格式，针对在本地硬件上快速加载和推理 LLM 进行了优化。LFM2.5 是一系列专为设备端部署设计的混合模型，其中 230M 变体是一个小巧高效的模型。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://huggingface.co/unsloth/LFM2.5-230M-GGUF">unsloth/ LFM 2 . 5 - 230 M -GGUF · Hugging Face</a></li>
<li><a href="https://en.wikipedia.org/wiki/GGUF">GGUF - Wikipedia</a></li>

</ul>
</details>

**社区讨论**: 社区对该速度和技术成就印象深刻，许多人注意到其在浏览器中实现实时 AI 应用的潜力。一些人讨论了这对边缘计算和隐私的影响。

**标签**: `#WebGPU`, `#浏览器推理`, `#小模型`, `#AI工具`, `#边缘计算`

---

<a id="item-23"></a>
^item-23
## [GLM 5.2 在双 RTX 5090 消费级硬件上运行](https://www.reddit.com/r/LocalLLaMA/comments/1ufd4g8/glm_52_on_consumer_hardware/) ⭐️ 8.0/10

一位用户在配备 Threadripper Pro 9975WX、512GB 内存和双 RTX 5090 的消费级工作站上成功运行了 744B 参数的 GLM 5.2 模型，使用 Unsloth 的 UD-Q5_K_S 量化 GGUF 格式，实现了每秒 12 个 token 的生成速度。 这表明即使是超大规模的开源模型（744B 参数）也可以在高端消费级硬件上本地运行，从而支持隐私保护的 AI 应用，并减少在高级推理和编程任务中对云端 API 的依赖。 用户使用自定义 CUDA 编译选项（GGML_CUDA_FA_ALL_QUANTS、GGML_CUDA_FORCE_MMQ 等）编译了 llama.cpp，并在两张 RTX 5090 上采用 split-mode layer。量化后的模型文件大小为 492GB，需要 512GB 系统内存和每张 32GB 显存的双 GPU。

reddit · r/LocalLLaMA · /u/phwlarxoc · 6月25日 15:22

**背景**: GLM 5.2 是 Z.ai 开发的 744B 参数混合专家（MoE）模型，其中 40B 参数被激活。它支持 100 万 token 的上下文窗口，擅长长上下文推理、编程和智能体任务。Unsloth 提供了动态 GGUF 量化方法，减小模型体积以便本地部署。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://unsloth.ai/docs/models/glm-5.2">GLM-5.2 - How to Run Locally | Unsloth Documentation</a></li>
<li><a href="https://insiderllm.com/guides/run-glm-5-2-locally/">How to Run GLM 5.2 Locally: GPU, VRAM & Quant Guide</a></li>
<li><a href="https://github.com/ggml-org/llama.cpp">GitHub - ggml-org/llama.cpp: LLM inference in C/C++</a></li>

</ul>
</details>

**社区讨论**: Reddit 社区称赞了详细的配置和性能数据，多位用户讨论了替代量化级别和硬件配置。有人指出 512GB 内存仍远非典型消费级硬件，但这一成果令人印象深刻。

**标签**: `#GLM 5.2`, `#本地大模型`, `#消费级硬件`, `#模型量化`, `#llama.cpp`

---

<a id="item-24"></a>
^item-24
## [Bash + jq + curl：极简 LLM 代理 REPL](https://www.reddit.com/r/LocalLLaMA/comments/1ufc5ca/it_turns_out_bash_is_all_you_need_to_write_a/) ⭐️ 8.0/10

一位开发者仅用 Bash、jq 和 curl 构建了一个语言模型代理 REPL，无需 Python 或 Node.js 依赖。该项目名为 llayer，已在 GitHub 上开源。 这表明经典 Unix 工具能有效对接现代 LLM API，降低了系统管理员和开发者构建 AI 代理的门槛。它强化了 Unix 哲学中“小而可组合的程序协同工作”的理念。 代理将上下文存储在仅追加的历史文件中，便于检查和回退。模型后端被抽象为单个命令行工具，使其可移植到不同提供商。

reddit · r/LocalLLaMA · /u/cloud_kj · 6月25日 14:47

**背景**: REPL（读取-求值-输出循环）是一种交互式编程环境，逐行处理用户输入。jq 是一个命令行 JSON 处理器，常被称为“JSON 界的 sed”，curl 用于发起 HTTP 请求。Unix 哲学强调小而专注的工具，通过文本流和管道进行通信。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/jqlang/jq">GitHub - jqlang/ jq : Command - line JSON processor · GitHub</a></li>
<li><a href="https://practicaldev-herokuapp-com.global.ssl.fastly.net/harshbanthiya/always-revisit-this-page-when-in-doubt-the-basics-of-unix-philosophy-45k9">Always revisit this page when in doubt; The Basics of UNIX philosophy .</a></li>

</ul>
</details>

**社区讨论**: Reddit 社区称赞该项目优雅且极简，许多人指出这是 Unix 哲学应用于 AI 的绝佳范例。部分用户讨论了可能的改进，如增加流式支持或集成更多后端。

**标签**: `#Bash`, `#LLM`, `#REPL`, `#Unix哲学`, `#AI代理`

---

<a id="item-25"></a>
^item-25
## [开源权重模型低价冲击 AI 定价](https://jamesoclaire.com/2026/06/25/the-unbearable-cheapness-of-open-weight-models/) ⭐️ 8.0/10

像 DeepSeek 这样的开源权重模型变得极其便宜，迫使 OpenAI 和 Anthropic 等闭源 AI 公司重新思考定价和商业模式。文章认为，未来可能只有前沿能力和应用层能维持溢价。 这一趋势可能通过将许多 AI 任务商品化来重塑 AI 行业，削弱专有模型的竞争优势。它可能导致定价的逐底竞争，并迫使闭源实验室通过独特能力或应用层服务实现差异化。 文章指出，开源权重模型并非完全开源，但仍允许免费使用和修改，从而降低成本。社区评论强调，闭源公司定价高，但不一定成本高，如果需求下降，它们可以降价。

hackernews · ddxv · 6月25日 02:51 · [社区讨论](https://news.ycombinator.com/item?id=48668255)

**背景**: 开源权重模型在宽松许可下发布训练好的神经网络权重，允许任何人运行和微调，这与包含训练代码和数据的完全开源不同。中国 AI 实验室 DeepSeek 发布了多个具有竞争力的开源权重模型，API 价格极低，加剧了价格竞争。过去一年，AI 行业的 token 定价大幅下降，许多模型现在以接近零利润的价格提供。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://neysa.ai/blog/open-weights-open-source/">Open Weights vs Open Source: What’s the Real Difference?</a></li>
<li><a href="https://en.wikipedia.org/wiki/DeepSeek">DeepSeek - Wikipedia</a></li>
<li><a href="https://lmmarketcap.com/reports/ai-pricing-race-to-bottom">AI Pricing Trends: Race to the Bottom | LM Market Cap</a></li>

</ul>
</details>

**社区讨论**: 评论者就开源权重模型是否会扼杀前沿实验室展开辩论，一些人认为专有模型在前沿能力和企业信任方面仍有市场。其他人认为，95%的 AI 任务很快将由开源模型处理，实验室只能专注于前沿研究或应用层服务。少数人指出，闭源公司必要时总是可以降价。

**标签**: `#开源模型`, `#AI行业趋势`, `#DeepSeek`, `#闭源AI`, `#成本竞争`

---

<a id="item-26"></a>
^item-26
## [EgoLive：最大开源第一视角数据集发布](https://www.infoq.cn/article/3HqTDUKziZE3ukwbwHyC?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

EgoLive 是目前最大的开源第一视角数据集，由多所名校联合发布，包含 1,680 小时高分辨率立体视频以及来自 65,866 个真实世界任务片段的多模态标注。 该数据集解决了机器人学习和具身智能领域缺乏大规模高质量数据的瓶颈，为开发通用机器人模型和推进自动驾驶研究提供了可扩展的基础。 数据集包含 6 自由度运动跟踪、语义分割、3D 场景重建和分层语言描述，通过定制头戴式设备 JoyEgoCam 在无约束真实场景中采集。

rss · InfoQ 中文 · 6月25日 17:04

**背景**: 第一人称视角（自我中心）视频数据集从佩戴者视角捕捉人类活动，为机器人学习提供丰富的行为先验。现有数据集通常在规模、标注质量或真实世界多样性方面存在局限。EgoLive 旨在通过其大规模、高质量标注和持续增长能力克服这些限制。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://arxiv.org/abs/2604.23570">[2604.23570] EgoLive: A Large-Scale Egocentric Dataset from ... EgoLive: A Large-Scale Egocentric Dataset from Real-World ... EgoLive：1680小时真实任务第一视角数据集 - 知乎 lmms-lab/EgoLife · Datasets at Hugging Face EgoLive：面向机器人操作学习的超大规模第一视角数据集_egolive数据-C... EgoLive：源自真实世界人类任务的大规模第一人称视角数据集 EgoLive：一个来自真实世界人类任务的大规模第一人称数据集 | alphaXi...</a></li>
<li><a href="https://zhuanlan.zhihu.com/p/2032440515615011207">EgoLive：1680小时真实任务第一视角数据集 - 知乎</a></li>
<li><a href="https://blog.csdn.net/sdlcjx/article/details/161631466">EgoLive：面向机器人操作学习的超大规模第一视角数据集_egolive数据-C...</a></li>

</ul>
</details>

**标签**: `#开源数据集`, `#第一视角`, `#AI`, `#具身智能`, `#自动驾驶`

---

<a id="item-27"></a>
^item-27
## [AI 编程代理拥有了自己的 Stack Overflow](https://www.infoq.cn/article/hqc2uU1TPpbMyyz2pFy8?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

AI 编程代理（如 OpenCode）开始拥有类似 Stack Overflow 的社区支持平台，开发者可以分享使用这些代理的解决方案和最佳实践。这标志着从个人工具使用向协作生态的转变。 这一发展可能显著改变开发者获取编程帮助的方式，减少对传统问答网站的依赖，并实现针对 AI 辅助工作流的更高效问题解决。它还围绕 AI 编程代理培育了社区，加速了它们的采用和改进。 OpenCode 是一个拥有超过 16 万 GitHub 星标的开源 AI 编程代理，是受益于社区支持的代理之一。这些社区平台为 AI 代理提供精选知识、故障排除技巧和自定义技能共享。

rss · InfoQ 中文 · 6月25日 16:00

**背景**: AI 编程代理是使用大语言模型自主编写、调试和重构代码的工具。Stack Overflow 是一个流行的问答平台，开发者在此提问和回答编程问题。AI 代理与社区支持的结合为协作编程辅助创造了新范式。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.heyuan110.com/zh/posts/ai/2026-03-13-opencode-ai-coding-agent-review/">OpenCode 深度评测：这款开源AI编程代理能替代Claude Code吗？</a></li>
<li><a href="https://opencode.ai/zh">OpenCode | 开源 AI 编程代理</a></li>
<li><a href="https://stackoverflow.com/">Stack Overflow | The World’s Largest Online Community for Developers</a></li>

</ul>
</details>

**标签**: `#AI编程代理`, `#Stack Overflow`, `#开发者社区`, `#AI工具`

---

<a id="item-28"></a>
^item-28
## [Coinbase 事后分析：AWS 局部故障导致交易中断数小时](https://www.infoq.cn/article/tNJCNG5TP8JoZcY9A3MZ?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

Coinbase 发布了一份事后分析报告，详细解释了 AWS us-east-1 区域的局部故障如何导致其交易系统中断数小时，并总结了经验教训和改进措施。 这一事件凸显了主要加密货币平台对云基础设施的关键依赖，以及即使是局部云故障也可能产生的级联影响。它为 SRE 和运维团队改进故障隔离和容灾设计提供了重要的案例参考。 根本原因是 DynamoDB 自动化 DNS 管理系统中的缺陷导致 DynamoDB 服务端点的 IP 地址解析失败。中断持续了数小时，影响了 Coinbase 处理交易的能力。

rss · InfoQ 中文 · 6月25日 13:35

**背景**: 站点可靠性工程（SRE）是一门使用软件工具自动化 IT 基础设施任务以确保系统可靠性的学科。AWS 的 us-east-1 区域是关键区域，托管着许多服务，DNS 故障可能级联影响众多依赖服务，正如本次事件所示。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://health.aws.amazon.com/health/status">Service health - Jun 24, 2026 | AWS Health Dashboard | Global</a></li>
<li><a href="https://blog.vonng.com/cloud/aws-postmotem/">AWS 故障官方复盘报告 · 老冯云数</a></li>
<li><a href="https://zhuanlan.zhihu.com/p/81644436114">一次AWS DNS故障如何级联瘫痪半个互联网 - 知乎</a></li>

</ul>
</details>

**标签**: `#AWS`, `#故障分析`, `#SRE`, `#云服务`, `#事后复盘`

---

<a id="item-29"></a>
^item-29
## [一行命令在 HF Jobs 上部署 vLLM 服务器](https://huggingface.co/blog/vllm-jobs) ⭐️ 7.0/10

Hugging Face 推出新功能，用户只需一行命令即可在 HF Jobs 上启动 vLLM 推理服务器，简化了大语言模型的部署流程。 这一集成使 AI 工程师和运维人员能够更轻松地在云端部署高吞吐量的 LLM 推理，减少了设置时间和运维成本。 vLLM 服务器运行在 Hugging Face 托管的 GPU 基础设施上，利用 vLLM 的 PagedAttention 算法实现高效内存管理和高吞吐量。

rss · Hugging Face Blog · 6月26日 00:00

**背景**: vLLM 是一个开源的高吞吐量 LLM 推理引擎，通过 PagedAttention 优化 GPU 内存使用。Hugging Face Jobs 是一个计算平台，允许用户在 Hugging Face 的基础设施上以类似 Docker 的界面运行 AI 工作负载。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://huggingface.co/docs/hub/jobs">Jobs · Hugging Face</a></li>
<li><a href="https://github.com/vllm-project/vllm">GitHub - vllm-project/vllm: A high-throughput and memory ... vLLM — Fast, Memory-Efficient LLM Inference & Serving What is vLLM? - redhat.com vllm | A high-throughput and memory-efficient inference and ... How vLLM accelerates AI inference: 3 enterprise use cases Install vLLM on Linux for Production LLM Serving (2026 Guide)</a></li>

</ul>
</details>

**标签**: `#vLLM`, `#大模型推理`, `#Hugging Face`, `#AI部署`, `#推理优化`

---

<a id="item-30"></a>
^item-30
## [混合模型 token 预测分析](https://huggingface.co/blog/allenai/hybrid-token-prediction) ⭐️ 7.0/10

Hugging Face 上的一篇新博客分析了混合模型（如 Mamba+Transformer）在哪些 token 上预测得更好，揭示了在不同语言单元上的性能差异。 这项分析有助于研究人员理解混合架构的优势，指导模型设计以提高语言建模的效率和准确性。 该研究可能比较了在常见词、稀有 token 或句法结构等类别上的 token 级预测准确性，使用了特定的混合模型如 OLMo Hybrid。

rss · Hugging Face Blog · 6月25日 16:11

**背景**: 混合模型将状态空间模型（如 Mamba）与 Transformer 层结合，以利用 SSM 的高效性和注意力的上下文能力。Token 预测是语言模型的基本任务，了解哪些 token 受益于混合架构可以为未来的模型开发提供参考。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.youtube.com/watch?v=IjxToEtdHS4">Olmo Hybrid 架构拆解：模型在Token上的能力边界 - YouTube DeepSeek-V3破局：MoE+GRPO+MLA架构下的Multi-Token预测革命 【字节面试官】讲一讲多Token预测（MTP）_大模型 mtp-CSDN博客</a></li>

</ul>
</details>

**标签**: `#混合模型`, `#token预测`, `#AI架构`, `#Hugging Face`

---

<a id="item-31"></a>
^item-31
## [MDN 浏览器兼容数据转为 SQLite 数据库](https://simonwillison.net/2026/Jun/24/browser-compat-db/#atom-everything) ⭐️ 7.0/10

Simon Willison 使用 Claude Code 和 sqlite-utils 将 MDN 的 browser-compat-data 仓库转换为约 66MB 的 SQLite 数据库，并通过 GitHub 托管，开放 CORS 头以便直接访问。 这使得 MDN 全面的浏览器兼容性数据可以离线查询，并通过 Datasette Lite 等网络工具访问，惠及前端开发者和工具链构建者。 该数据库通过 GitHub Actions 工作流构建，并强制推送到一个孤立分支，从而利用 GitHub CDN 提供开放 CORS 头。构建脚本由 Claude Code for web (Opus 4.8) 生成。

rss · Simon Willison · 6月24日 23:59

**背景**: MDN 的 browser-compat-data 是一个大型 JSON 仓库，记录各浏览器版本对 Web 特性的支持情况。sqlite-utils 是一个用于创建和操作 SQLite 数据库的 Python 库。CORS 头允许 Web 应用从不同源获取资源，这对于 Datasette Lite 等工具直接加载数据库至关重要。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://developer.mozilla.org/en-US/blog/introducing-mdn-mcp-server/">Introducing the MDN MCP server</a></li>
<li><a href="https://sqlite-utils.datasette.io/">sqlite - utils</a></li>
<li><a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Guides/CORS">Cross-Origin Resource Sharing (CORS) - HTTP | MDN</a></li>

</ul>
</details>

**标签**: `#浏览器兼容性`, `#SQLite`, `#MDN`, `#数据转换`, `#AI辅助编程`

---

<a id="item-32"></a>
^item-32
## [Richard Bejtlich 为神话时代的 NDR 辩护](https://thehackernews.com/2026/06/surviving-mythos-era-richard-bejtlich.html) ⭐️ 7.0/10

Richard Bejtlich 认为，网络检测与响应（NDR）能帮助安全团队超越告警，回答事件调查中的关键问题，例如发生了什么、有哪些证据以及是否捕获了完整上下文。 这一观点意义重大，因为许多安全运营中心团队尽管拥有丰富的遥测数据，仍难以回答基本的调查问题，而 NDR 提供了一种方法来提供有效事件响应所需的上下文和证据。 Bejtlich 在 The Hacker News 上发表的文章提到了他与 Corelight 合作出版的《NDR 要点：网络检测与响应实用指南》一书，并强调使用基于机器学习的非签名分析技术来检测可疑网络活动。

rss · The Hacker News · 6月25日 11:17

**背景**: 网络检测与响应（NDR）是一种网络安全类别，通过对网络流量数据应用行为分析和机器学习来检测异常行为。与基于签名的工具不同，NDR 能够识别新型威胁。Richard Bejtlich 是知名的网络安全专家，曾在 Mandiant、FireEye 和 Corelight 任职，并撰写了多本关于事件响应和网络安全的书籍。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://thehackernews.com/2026/06/surviving-mythos-era-richard-bejtlich.html">Surviving the Mythos Era: Richard Bejtlich on the Case for NDR</a></li>
<li><a href="https://www.cisco.com/site/us/en/learn/topics/security/what-is-network-detection-response.html">What Is Network Detection and Response - NDR - Cisco</a></li>
<li><a href="https://www.fortinet.com/products/network-detection-and-response">Network Detection and Response (NDR) - FortiNDR</a></li>

</ul>
</details>

**标签**: `#NDR`, `#安全运营`, `#事件调查`, `#Richard Bejtlich`

---

<a id="item-33"></a>
^item-33
## [新型 Mistic 后门与 KongTuke 初始访问经纪人关联](https://thehackernews.com/2026/06/new-mistic-backdoor-linked-to-kongtuke.html) ⭐️ 7.0/10

自 2026 年 4 月起，一种名为 Mistic（也被追踪为 MLTBackdoor）的新型隐蔽后门被用于针对保险、教育、IT 和专业服务行业的财务动机攻击，该后门与初始访问经纪人 KongTuke 有关。 这一发现凸显了 KongTuke 等初始访问经纪人不断演变的战术，他们现在在已知的 ClickFix 和 ModeloRAT 活动中部署复杂的后门，增加了对多个行业的威胁。 Mistic 通过 DLL 侧加载技术启动，并具备窃取凭据的能力；它与 KongTuke 有关，该 IAB 此前曾使用 ClickFix 诱饵和 Microsoft Teams 社交工程来传播 ModeloRAT。

rss · The Hacker News · 6月25日 08:54

**背景**: 初始访问经纪人（IAB）专门入侵企业网络并将访问权限出售给勒索软件团伙。KongTuke，也被称为 Woodgnat，是一个自 2025 年 5 月以来活跃的财务动机 IAB，以使用 ClickFix 虚假验证码页面以及最近使用 Microsoft Teams 聊天来传播 ModeloRAT 后门而闻名。Mistic 后门代表了其武器库中的新工具。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.csoonline.com/article/4189132/be-on-the-lookout-for-mistic-a-new-backdoor-used-by-ransomware-broker.html">Be on the lookout for Mistic , a new backdoor used by... | CSO Online</a></li>
<li><a href="https://www.security.com/threat-intelligence/new-mistic-backdoor-modelorat">Backdoor . Mistic : New Backdoor May be Linked to... | SECURITY.COM</a></li>
<li><a href="https://www.helpnetsecurity.com/2026/06/25/mistic-backdoor-woodgnat-attacks/">Stealthy new backdoor surfaces in attacks on... - Help Net Security</a></li>

</ul>
</details>

**标签**: `#Mistic后门`, `#KongTuke`, `#安全威胁`, `#后门分析`, `#攻击活动`

---

<a id="item-34"></a>
^item-34
## [从告警疲劳到 AI 时代的自动化补丁修复](https://www.redhat.com/en/blog/alert-fatigue-automated-action-automated-patching-ai-era) ⭐️ 7.0/10

Red Hat 的博客文章指出，AI 驱动的漏洞发现速度已超过人类响应能力，解决方案不是更多智能，而是自动化补丁修复。 从告警疲劳转向自动化行动，对于被告警淹没的安全团队至关重要，可实现机器速度的修复并降低风险暴露。 文章强调瓶颈在于响应而非智能，并倡导更智能的修复和风险管理方法。

rss · Red Hat Blog · 6月25日 00:00

**背景**: 告警疲劳是指安全分析师被过多告警淹没，其中许多是误报，导致麻木并错过真实威胁。自动化补丁管理利用软件自动识别、测试和部署补丁，减少人工工作量并加快响应速度。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://heimdalsecurity.com/blog/automated-patch-management-process/">Automated Patch Management Explained: Process, Benefits, Best ... Automated Patch Management vs Manual: Benefits & Why It ... What is patch management? A complete guide | Tenable® AI-Powered Vulnerability Detection and Patch Management in ... Patch Management Automation for Vulnerability Mitigation What is Automated Patching and Why It Matters - gigenet.com</a></li>
<li><a href="https://www.ibm.com/think/topics/alert-fatigue">What is alert fatigue? - IBM</a></li>
<li><a href="https://www.gigenet.com/blog/what-is-automated-patching-complete-guide/">What is Automated Patching and Why It Matters - gigenet.com</a></li>

</ul>
</details>

**标签**: `#自动化补丁`, `#告警疲劳`, `#AI安全`, `#安全运维`, `#Red Hat`

---

<a id="item-35"></a>
^item-35
## [途虎养车基于 Apache Doris 构建统一 OLAP 数据底座](https://www.infoq.cn/article/QULg64hlN1FKcHNmb1wJ?utm_source=rss&utm_medium=article) ⭐️ 6.0/10

途虎养车采用 Apache Doris 作为统一 OLAP 数据底座，支撑用户画像与 BI 多维分析，取代了此前分散的系统。 该案例展示了 Apache Doris 如何大规模统一实时与批量分析，为其他希望简化数据架构并提升查询性能的公司提供了参考。 该平台首先在用户标签系统中验证，随后扩展到 BI 报表、多维分析和实时数据应用，利用了 Doris 的 MPP 架构和高并发 OLAP 能力。

rss · InfoQ 中文 · 6月25日 16:37

**背景**: Apache Doris 是一个基于 MPP 架构的开源实时分析数据库，能够在单一引擎中处理 PB 级 OLAP 查询、湖仓分析和混合搜索。用户画像涉及构建数据驱动的标签体系来建模目标用户，而 BI 多维分析则支持对业务指标进行交互式探索。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://doris.apache.org/">Apache Doris: Open Source, Real-Time Analytics and Search ...</a></li>
<li><a href="https://www.modb.pro/db/2069937295097163776">1.26 亿车主背后的 数 据 底 座 ：途虎养车基于 Apache Doris...</a></li>

</ul>
</details>

**标签**: `#Apache Doris`, `#OLAP`, `#数据底座`, `#用户画像`, `#BI分析`

---

