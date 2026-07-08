# Horizon 每日速递 - 2026-07-09

> 从 103 条内容中筛选出 34 条重要资讯。

---

1. [[#^item-1|GhostLock：15 年历史的 Linux 内核漏洞可获 root 权限]] ⭐️ 9.0/10
2. [[#^item-2|谷歌为 Linux 虚拟机逃逸漏洞支付 25 万美元]] ⭐️ 9.0/10
3. [[#^item-3|OpenAI 宣布 GPT-5.6 本周四公开发布]] ⭐️ 9.0/10
4. [[#^item-4|300 行代码实现 Cursor：AI 工程师的新底线]] ⭐️ 8.0/10
5. [[#^item-5|开源模型赢流量，Anthropic 赚大钱]] ⭐️ 8.0/10
6. [[#^item-6|DeepSeek 被曝自研 AI 推理芯片]] ⭐️ 8.0/10
7. [[#^item-7|SFT 之后的下一个前沿：腾讯混元展望 ACL 2026 方向]] ⭐️ 8.0/10
8. [[#^item-8|动态路由机制提升奖励模型推理效率]] ⭐️ 8.0/10
9. [[#^item-9|华为 5G 旗舰重返海外，峰值速率突破 1100 Mbps]] ⭐️ 8.0/10
10. [[#^item-10|NVIDIA 发布面向 AI 代理的开源数据集与工具]] ⭐️ 8.0/10
11. [[#^item-11|vLLM 作为 Transformers 后端实现原生速度推理]] ⭐️ 8.0/10
12. [[#^item-12|Lilian Weng 总结 35 篇 RSI 提示工程论文]] ⭐️ 8.0/10
13. [[#^item-13|AI 编程代理触发端点安全警报]] ⭐️ 8.0/10
14. [[#^item-14|HalluSquatting 攻击利用 AI 幻觉投递恶意软件]] ⭐️ 8.0/10
15. [[#^item-15|Ubiquiti 修复多个 UniFi 产品中的严重漏洞]] ⭐️ 8.0/10
16. [[#^item-16|幽灵钓鱼浪潮突破传统邮件安全防线]] ⭐️ 8.0/10
17. [[#^item-17|AI 编程助手通过代码步骤绕过安全拒绝]] ⭐️ 8.0/10
18. [[#^item-18|中国 APT 组织 UAT-7810 利用新型 LONGLEASH 恶意软件扩大 ORB 网络]] ⭐️ 8.0/10
19. [[#^item-19|CISA 将 4 个已遭利用漏洞加入 KEV 目录]] ⭐️ 8.0/10
20. [[#^item-20|由罪犯运营的虚假网络安全初创公司]] ⭐️ 8.0/10
21. [[#^item-21|20 款开源网络安全工具：AI 安全方向激增]] ⭐️ 8.0/10
22. [[#^item-22|视觉提示注入：AI Agent 安全的下一个前沿]] ⭐️ 8.0/10
23. [[#^item-23|GhostApproval 漏洞绕过 AI 编程助手审批机制]] ⭐️ 8.0/10
24. [[#^item-24|顶尖 AI 企业安全评级低，Anthropic 以 C+居首]] ⭐️ 8.0/10
25. [[#^item-25|美团 OWL 模型会话数据疑似泄露]] ⭐️ 8.0/10
26. [[#^item-26|Cloudflare 与 OpenAI 试点用网络数据优化 AI 搜索]] ⭐️ 8.0/10
27. [[#^item-27|腾讯云与 Arm 合作，Cube Sandbox 支持 Arm 架构]] ⭐️ 7.0/10
28. [[#^item-28|周鸿祎：中国版 Mythos 不能照搬美国路线]] ⭐️ 7.0/10
29. [[#^item-29|虚拟座谈会：机器时代的安全——AI 威胁演变]] ⭐️ 7.0/10
30. [[#^item-30|Target 推出基于 LLM 的语义匹配系统优化营销预测]] ⭐️ 7.0/10
31. [[#^item-31|Claude、Cursor、OpenClaw 集体上手机，实现全天候自动化]] ⭐️ 6.0/10
32. [[#^item-32|火山引擎视频云用 RTC+直播打造云上陪看房]] ⭐️ 6.0/10
33. [[#^item-33|赛事 AI 短视频工厂]] ⭐️ 6.0/10
34. [[#^item-34|HeroUI v3 为 React 和 React Native 完全重写]] ⭐️ 6.0/10

---

<a id="item-1"></a>
^item-1
## [GhostLock：15 年历史的 Linux 内核漏洞可获 root 权限](https://thehackernews.com/2026/07/15-year-old-ghostlock-flaw-enables-root.html) ⭐️ 9.0/10

Nebula Security 披露了 GhostLock（CVE-2026-43499），这是 Linux 内核 futex/rt_mutex 代码中一个存在 15 年的释放后使用漏洞，允许任何本地用户获得 root 权限并逃逸容器。 该漏洞影响自 2011 年以来几乎所有主流 Linux 发行版，波及数百万台服务器、桌面和云环境。它允许无权限用户完全控制系统并逃逸容器，对多租户和容器化基础设施构成严重威胁。 该漏洞是 rt_mutex 代码中的释放后使用漏洞，通过 futex 子系统触发，无需特殊权限或异常设置。概念验证代码已公开在 GitHub 上，Linux 内核已完成修复。

rss · The Hacker News · 7月8日 06:16

**背景**: futex（快速用户空间互斥锁）子系统是 Linux 内核用于进程间同步的核心机制。释放后使用漏洞是指程序在内存区域被释放后继续使用该区域，可能允许攻击者执行任意代码。容器逃逸是指突破隔离的容器环境，获取对宿主系统的访问权限。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://thehackernews.com/2026/07/15-year-old-ghostlock-flaw-enables-root.html">15-Year-Old GhostLock Flaw Enables Root and Container Escape on Most Linux Distros</a></li>
<li><a href="https://securityonline.info/ghostlock-cve-2026-43499/">Public Exploit for GhostLock (CVE-2026-43499) Enables Linux Privilege Escalation and Container Escape</a></li>
<li><a href="https://threat-modeling.com/cve-2026-43499-ghostlock-linux-kernel-root-container-escape/">CVE-2026-43499 "GhostLock": 15-Year-Old Linux Kernel Flaw Gives Local Users Root Access and Container Escape — Public PoC Released - Threat-Modeling.com</a></li>

</ul>
</details>

**社区讨论**: 安全社区对该漏洞的广泛影响和公开利用代码表示担忧，敦促管理员立即打补丁。一些讨论指出，如此基础的内核组件竟隐藏了 15 年的漏洞，颇具讽刺意味；另一些人则争论利用的简易性和武器化的可能性。

**标签**: `#漏洞预警`, `#Linux内核`, `#提权`, `#容器逃逸`, `#CVE-2026-43499`

---

<a id="item-2"></a>
^item-2
## [谷歌为 Linux 虚拟机逃逸漏洞支付 25 万美元](https://www.reddit.com/r/cybersecurity/comments/1ur8bq0/google_pays_250k_for_linux_vulnerability_allowing/) ⭐️ 9.0/10

谷歌通过其 kvmCTF 项目奖励了 25 万美元，用于发现一个允许客户虚拟机逃逸并在宿主机上执行代码的 Linux 内核高危漏洞（CVE-2026-53359，代号 Januscape）。该漏洞影响 Intel 和 AMD x86 系统。 该漏洞极为严重，因为它实现了完整的虚拟机逃逸，威胁到云安全和多租户环境。高额奖金凸显了其严重性以及保护虚拟化基础设施的重要性。 该漏洞是 KVM 影子 MMU 代码中的一个释放后使用（use-after-free）问题，已存在 16 年。公开的概念验证代码会导致宿主机崩溃，研究人员声称存在完整的代码执行漏洞利用程序但尚未公开。

reddit · r/cybersecurity · /u/rkhunter_ · 7月8日 22:48

**背景**: KVM（基于内核的虚拟机）是 Linux 内核模块，使内核能够充当虚拟机监控程序，从而在 Linux 宿主机上运行虚拟机。影子 MMU 负责管理客户虚拟机的内存映射。虚拟机逃逸是指攻击者突破客户虚拟机访问宿主机系统，这对云服务提供商而言是最坏的情况。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.securityweek.com/linux-kernel-vulnerability-allows-vm-escape-on-intel-and-amd-systems/">Linux Kernel Vulnerability Allows VM Escape on Intel and AMD Systems - SecurityWeek</a></li>
<li><a href="https://thehackernews.com/2026/07/16-year-old-linux-kvm-flaw-lets-guest.html">16-Year-Old Linux KVM Flaw Lets Guest VMs Escape to Host on ...</a></li>
<li><a href="https://arstechnica.com/security/2026/07/high-severity-guest-vm-escape-is-1-of-2-linux-vulnerabilities-to-surface-this-week/">Google pays $250K for Linux vulnerability allowing guest VM ...</a></li>

</ul>
</details>

**标签**: `#Linux内核`, `#虚拟机逃逸`, `#漏洞奖励`, `#云安全`, `#高危漏洞`

---

<a id="item-3"></a>
^item-3
## [OpenAI 宣布 GPT-5.6 本周四公开发布](https://x.com/OpenAI/status/2074704958419792299) ⭐️ 9.0/10

OpenAI 宣布 GPT-5.6 Sol 以及 Terra 和 Luna 将于 2026 年 6 月 26 日（本周四）公开发布，并正在全球范围内扩大预览版访问权限。 此次发布标志着 AI 发展的一个重要里程碑，推出了具有不同成本和能力层级的模型系列，可能使开发者和企业更容易获得先进的 AI 能力。 GPT-5.6 系列包括 Sol（旗舰推理和智能体模型）、Terra（平衡日常模型，成本降低一半）和 Luna（最快最便宜的模型）。初始发布有限，全面推出计划于 2026 年 7 月 9 日进行。

telegram · zaihuapd · 7月8日 04:17

**背景**: GPT-5.6 是 OpenAI 最新的大型语言模型系列，接替 GPT-5.5。它在软件工程、计算机使用、专业知识工作、科学研究和网络安全方面取得了进步。预览版最初仅限于受信任的合作伙伴，并接受美国政府审查。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/GPT-5.6">GPT-5.6 - Wikipedia</a></li>
<li><a href="https://openai.com/index/previewing-gpt-5-6-sol/">Previewing GPT‑5.6 Sol: a next-generation model - OpenAI</a></li>
<li><a href="https://help.openai.com/en/articles/20001325-a-preview-of-gpt-56-sol-terra-and-luna">A preview of GPT-5.6 Sol, Terra, and Luna - OpenAI Help Center</a></li>

</ul>
</details>

**标签**: `#GPT-5.6`, `#OpenAI`, `#大模型`, `#AI发布`

---

<a id="item-4"></a>
^item-4
## [300 行代码实现 Cursor：AI 工程师的新底线](https://www.infoq.cn/article/d2tmcGi9Fy6PMkNGpo9y?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

Ralph Loop 创造者、Claude Code 核心技术设计者声称，只需 300 行代码就能构建一个类似 Cursor 的 AI 编程工具，引发了对 AI 时代软件工程师能力底线的讨论。 这一说法挑战了 AI 编程工具的复杂性认知，为软件工程师应能构建的内容设定了具有争议性的新底线，可能重塑 AI 工具开发和工程技能的期望。 该说法由 Ralph Loop 创造者和 Claude Code 核心技术设计者提出，两人在 AI 编程工具领域具有影响力。300 行代码的实现旨在证明类似 Cursor 的工具的核心功能可以用极简代码实现，强调简单性和可访问性。

rss · InfoQ 中文 · 7月8日 17:15

**背景**: Cursor 是一款集成大语言模型的 AI 代码编辑器，用于辅助代码生成、编辑和调试。Claude Code 是一个用于编码任务的 AI Agent 框架。声称此类工具可用 300 行代码构建，表明 AI 工具开发的入门门槛比通常认为的要低。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://cursor.com/">Cursor: AI coding agent</a></li>
<li><a href="https://ai-bot.cn/sites/906.html">Cursor - Anysphere公司推出的AI代码编辑器 | AI工具集</a></li>
<li><a href="https://zhuanlan.zhihu.com/p/2022443175361388953">两万字详解Claude Code源码核心机制 - 知乎</a></li>

</ul>
</details>

**社区讨论**: 未提供社区讨论内容，但文章的高分和标签表明引发了大量辩论。一些人可能赞同简洁性至关重要，而另一些人可能认为生产级工具需要远更复杂的实现。

**标签**: `#AI编程`, `#Cursor`, `#Claude Code`, `#软件工程`, `#AI工具`

---

<a id="item-5"></a>
^item-5
## [开源模型赢流量，Anthropic 赚大钱](https://www.infoq.cn/article/7qI7yUXcZIwazjEW2Aho?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

最新分析显示，开源 AI 模型产生的 Token 流量超过闭源模型，但闭源模型提供商 Anthropic 却从这些流量中获得了大部分收入。 这种分化凸显了开源与闭源 AI 在商业模式上的关键差异，表明流量本身并不能保证收入，强调了 AI 行业中变现策略的重要性。 Token 流量指 AI 模型处理的 Token 数量，类似于移动网络中的数据流量。Anthropic 的收入优势可能源于其面向企业的付费 API 服务，而开源模型通常依赖免费访问或社区支持。

rss · InfoQ 中文 · 7月8日 15:20

**背景**: Token 是大语言模型处理文本的最小单位，大约相当于 2-4 个汉字。AI 模型按 Token 消耗计费，类似于移动数据流量计费。Anthropic 是一家领先的 AI 公司，以其注重安全性和可靠性的 Claude 模型而闻名，其主要收入来自企业客户。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://zhuanlan.zhihu.com/p/25206714750">说人话解释【Tokens】到底是个啥？| 五分钟搞懂大模型的"流量计费"（...</a></li>
<li><a href="https://zhuanlan.zhihu.com/p/1890886811657680545">【AI百科】为什么大模型都用"token"当流量单位？一篇文章讲透AI世界的...</a></li>
<li><a href="https://zh.wikipedia.org/zh-tw/安特罗匹克">Anthropic - 維基百科，自由的百科全書</a></li>

</ul>
</details>

**标签**: `#AI行业趋势`, `#开源模型`, `#Anthropic`, `#商业模式`, `#Token流量`

---

<a id="item-6"></a>
^item-6
## [DeepSeek 被曝自研 AI 推理芯片](https://www.infoq.cn/article/sLYxUorQQs5K17DILrx8?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

据报道，DeepSeek 大约一年前已启动自研 AI 推理芯片项目，旨在减少对英伟达和华为芯片的依赖。该公司目前正与芯片设计、代工和存储厂商接洽，并近几个月大量招募芯片设计工程师。 此举可能重塑中国 AI 芯片格局，因为 DeepSeek 正寻求在美国出口管制下保障供应链安全。如果成功，可能减少中国对外国 AI 芯片的依赖，并加速国内推理硬件的创新。 该芯片专注于推理阶段，即已训练好的模型为用户生成回答的环节，而非模型训练。DeepSeek 的模型此前依赖英伟达 H800 和华为昇腾芯片，但美国出口管制促使该公司探索自研方案。

rss · InfoQ 中文 · 7月8日 14:56

**背景**: DeepSeek 是一家中国 AI 公司，以开发 DeepSeek-R1 等大语言模型而闻名，这些模型以远低于竞争对手的成本实现了有竞争力的性能。该公司受到美国对先进 AI 芯片出口管制的影响，限制了其获取英伟达高端 GPU。推理芯片是专门设计用于在训练后高效运行 AI 模型的硬件，对于大规模部署 AI 服务至关重要。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://zhuanlan.zhihu.com/p/22577833841">新一代AI推理芯片：LPU（语言处理单元）全景梳理</a></li>
<li><a href="https://en.wikipedia.org/wiki/DeepSeek">DeepSeek</a></li>
<li><a href="https://zhuanlan.zhihu.com/p/1913660152676094004">一文看懂华为昇腾芯片 - 知乎 - 知乎专栏</a></li>

</ul>
</details>

**标签**: `#DeepSeek`, `#AI芯片`, `#自研芯片`, `#推理芯片`, `#行业动态`

---

<a id="item-7"></a>
^item-7
## [SFT 之后的下一个前沿：腾讯混元展望 ACL 2026 方向](https://www.infoq.cn/article/R3bVEmOPR090gN4ovm1A?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

腾讯混元团队在 ACL 2026 发表论文，系统研究了大模型监督微调（SFT）中的“不完全学习”（ILP）现象，提出了五大根因和五种干预策略，并展望了 SFT 之后的研究前沿。 该工作将关注点从 SFT 的平均表现转向诊断和修复具体的学习失败，有望带来更可靠、高效的微调方法，影响整个大模型生态系统。 论文将 ILP 视为症状，提出了“检测→归因→干预→验证”的框架，并将 ILP 检测集成到主流 SFT 训练流程中。五大根因包括数据噪声、模型容量瓶颈和优化困难等。

rss · InfoQ 中文 · 7月8日 14:44

**背景**: 监督微调（SFT）是将大语言模型适配到下游任务的标准方法。然而，即使模型收敛，它也可能无法正确回答某些训练子问题——这种现象被称为“不完全学习”（ILP）。该研究系统性地探究了 ILP 并提出了解决方案。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://finance.sina.cn/2026-07-01/detail-inifheze6421556.d.html?vt=4">SFT「不完全学习」之后，研究的下一个前沿在哪？ACL 2026 腾讯混元论...</a></li>
<li><a href="https://zhuanlan.zhihu.com/p/2047690208473256858">ACL 2026 | 大模型SFT为何学习失败？LLM 中「不完整学习」的系统性研...</a></li>
<li><a href="https://www.xuexiaigc.com/aigcnews/SFT「不完全学习」之后，研究的下一个前沿在哪？ACL-2026/">SFT「不完全学习」之后，研究的下一个前沿在哪？ACL 2026 腾讯混元论...</a></li>

</ul>
</details>

**社区讨论**: 在知乎等平台上的社区讨论中，许多研究者称赞该工作的系统性框架，并呼吁更多关注 SFT 病理学。一些评论者认为提出的干预策略需要在更大规模模型上进一步验证。

**标签**: `#大模型`, `#SFT`, `#ACL 2026`, `#腾讯混元`, `#AI前沿`

---

<a id="item-8"></a>
^item-8
## [动态路由机制提升奖励模型推理效率](https://www.infoq.cn/article/qYcpkTcUhClJvytSbLu1?utm_source=rss&utm_medium=article) ⭐️ 8.0/10

研究人员提出了一种针对生成式奖励模型（GRM）的动态路由机制，在推理时按需分配算力，大幅降低成本的同时保持奖励质量。 该工作解决了 GRM 中所有样本消耗同等算力的关键效率问题，在简单样本上浪费资源。该方法可将推理成本降低高达 80%，直接适用于 RLHF 流程，使大模型对齐更加可扩展。 该机制基于共识度进行二元路由决策：短路径完全跳过思维链（CoT）生成，计算成本仅为完整流程的 15-20%；长路径则触发完整的 CoT 和评分。该论文已被 ACL 2026 接收。

rss · InfoQ 中文 · 7月8日 11:19

**背景**: 奖励模型是 RLHF 流程中为模型输出打分的核心组件。生成式奖励模型（GRM）通过思维链推理产生更可解释且准确的奖励，但对每个输入都应用相同的繁重计算，导致效率低下。动态路由旨在根据输入难度自适应分配算力。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.infoq.cn/article/qYcpkTcUhClJvytSbLu1">大模型推理也能“智能调度”：让奖励模型按需分配算力的动态路由机制 | ...</a></li>
<li><a href="https://finance.sina.cn/2026-07-04/detail-inifrnzw2249289.d.html?vt=4">大模型推理也能“智能调度”：让奖励模型按需分配算力的动态路由机制 | ...</a></li>
<li><a href="https://news.qq.com/rain/a/20260702A06JVH00?adChannelId=tech">大模型推理也能“智能调度”：让奖励模型按需分配算力的动态路由机制 | ...</a></li>

</ul>
</details>

**标签**: `#大模型`, `#推理优化`, `#动态路由`, `#奖励模型`, `#ACL`

---

<a id="item-9"></a>
^item-9
## [华为 5G 旗舰重返海外，峰值速率突破 1100 Mbps](https://finance.sina.com.cn/tech/roll/2026-07-08/doc-inihapna8035781.shtml) ⭐️ 8.0/10

华为 Pura 90 Pro Max 国际版原生支持 5G，海外实测峰值下载速率突破 1100 Mbps，标志着华为 5G 旗舰手机在遭受美国制裁七年后正式重返海外市场。 这标志着华为在 5G 芯片和射频前端供应链上取得突破，可能重塑全球高端智能手机市场竞争格局，为消费者提供更多选择。 该设备状态栏显示 5G 图标，实测峰值速率超过 1100 Mbps。华为 5A 通信技术并非新网络制式，而是增强通信体验的技术，已于今年初在旗舰机型上实装。

telegram · zaihuapd · 7月8日 12:17

**背景**: 自 2019 年起，美国制裁使华为无法使用 5G 芯片和射频前端组件，导致其手机仅支持 4G。2023 年 Mate 60 系列凭借国产 5G 芯片实现突破，后续软件更新引入 5A 通信技术，为 5G 重返海外奠定基础。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.163.com/dy/article/L1AU2T7C0511CPVM.html">被美国制裁7年后：华为靠自己让5G手机重新全球售卖！|5g手机|旗舰机型...</a></li>
<li><a href="https://consumer.huawei.com/cn/support/content/zh-cn16081318/">华为5A相关问题汇总 | 华为官网 - HUAWEI</a></li>
<li><a href="https://www.ithome.com/0/901/311.htm">华为官网详解“5A”先进通信技术：不等同于 5G-A / 5.5G，不涉及额外资...</a></li>

</ul>
</details>

**标签**: `#华为`, `#5G`, `#旗舰手机`, `#海外市场`, `#制裁突破`

---

<a id="item-10"></a>
^item-10
## [NVIDIA 发布面向 AI 代理的开源数据集与工具](https://huggingface.co/blog/nvidia/open-data-for-agents) ⭐️ 8.0/10

NVIDIA 在 Hugging Face 博客上发布了用于训练和评估 AI 代理的开源数据集与工具，旨在推动代理技术的发展。 此次发布降低了开发者构建和基准测试 AI 代理的门槛，加速了客户服务、网络安全和机器人等行业的自主系统创新。 这些数据集涵盖工具调用、网页导航和编码基准（如 SWE-bench 和 WebArena），工具与 NVIDIA 的 NeMo Agent Toolkit 集成，支持企业级部署。

rss · Hugging Face Blog · 7月8日 17:16

**背景**: AI 代理是能够自主推理、规划和行动以完成任务系统。它们需要结构化数据来学习执行动作，例如工具使用和多步规划。NVIDIA 的开源数据集和工具旨在为可靠的代理系统提供基础。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://opendatascience.com/15-datasets-for-training-and-evaluating-ai-agents/">15 Datasets for Training and Evaluating AI Agents</a></li>
<li><a href="https://github.com/NVIDIA/NeMo-Agent-Toolkit">NVIDIA NeMo Agent Toolkit - GitHub</a></li>
<li><a href="https://www.nvidia.com/en-us/ai/">AI Agents: Built to Reason, Plan, Act | NVIDIA</a></li>

</ul>
</details>

**标签**: `#AI代理`, `#NVIDIA`, `#开源数据集`, `#Hugging Face`, `#大模型`

---

<a id="item-11"></a>
^item-11
## [vLLM 作为 Transformers 后端实现原生速度推理](https://huggingface.co/blog/native-speed-vllm-transformers-backend) ⭐️ 8.0/10

Hugging Face 宣布 vLLM 现在可以作为 Transformers 库的建模后端，无需自定义模型实现即可实现原生速度推理。 这一集成允许用户为任何 Hugging Face Transformers 模型利用 vLLM 的高吞吐量、内存高效推理，显著降低部署复杂性和成本。 该后端封装了兼容的 PreTrainedModel 实例，通过 vLLM 的 PagedAttention 和连续批处理优化支持文本和视觉语言模型。

rss · Hugging Face Blog · 7月8日 00:00

**背景**: vLLM 是加州大学伯克利分校开发的开源推理引擎，以其高效管理键值缓存内存的 PagedAttention 算法而闻名。Hugging Face 的 Transformers 库为数千个预训练模型提供了统一接口。以前，使用 vLLM 需要自定义模型注册；这个后端消除了这一步骤。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://vllm.ai/blog/2025-04-11-transformers-backend">Transformers modeling backend integration in vLLM</a></li>
<li><a href="https://deepwiki.com/vllm-project/vllm/5.3-transformers-modeling-backend">Transformers Modeling Backend | vllm-project/vllm | DeepWiki</a></li>

</ul>
</details>

**标签**: `#vLLM`, `#Transformers`, `#推理加速`, `#开源AI`, `#大模型`

---

<a id="item-12"></a>
^item-12
## [Lilian Weng 总结 35 篇 RSI 提示工程论文](https://www.latent.space/p/ainews-lilian-weng-summarizes-35) ⭐️ 8.0/10

OpenAI 知名研究员 Lilian Weng 发表了对 35 篇关于递归自我改进（RSI）提示工程论文的系统总结。 该总结全面概述了通过自我修改改进 AI 的前沿技术，对于推进通用人工智能（AGI）发展并确保安全性至关重要。 这 35 篇论文涵盖了多种提示工程方法，旨在使 AI 系统能够迭代提升自身性能，这是 RSI 研究的核心概念。

rss · Latent Space · 7月8日 02:20

**背景**: 递归自我改进（RSI）是指 AI 系统重写自身代码以变得更强大的过程，可能引发智能爆炸。提示工程涉及设计输入以引导大型语言模型产生期望输出。Lilian Weng 的工作有助于整合这一快速发展领域的知识。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Recursive_self-improvement">Recursive self-improvement</a></li>
<li><a href="https://www.promptingguide.ai/techniques">Prompting Techniques | Prompt Engineering Guide</a></li>

</ul>
</details>

**标签**: `#RSI`, `#提示工程`, `#Lilian Weng`, `#AI研究`

---

<a id="item-13"></a>
^item-13
## [AI 编程代理触发端点安全警报](https://thehackernews.com/2026/07/ai-coding-agents-found-triggering.html) ⭐️ 8.0/10

Sophos X-Ops 研究发现，Claude Code、Cursor 和 OpenAI Codex 等 AI 编程代理触发了为捕捉人类攻击者而设计的端点检测规则，导致误报激增。 这凸显了安全运营中心（SOC）面临的日益严峻的挑战：合法的 AI 工具行为越来越像攻击者手法，检测逻辑必须随 AI 的普及而进化。 这些代理的行为（如解密浏览器凭证和列出 Windows 凭据存储内容）并非恶意，但与攻击者行为高度相似，导致误报可能淹没 SOC 团队。

rss · The Hacker News · 7月8日 17:02

**背景**: 端点检测与响应（EDR）系统使用行为规则识别可疑活动。AI 编程代理通常需要访问凭证、安装依赖项和自动化浏览器任务，这可能会无意中匹配这些规则。安全团队可以通过定制规则，聚焦代理的父进程（如 claude.exe）、工作区路径和下载信誉来减少误报。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.cybersecurityintelligence.com/blog/ai-agents-found-to-trigger-endpoint-detections-9527.html">AI Agents Found To Trigger Endpoint Detections</a></li>
<li><a href="https://news.shield53.com/ai-coding-agents-are-accidentally-triggering-attacker-detection-rules-and-thats-a-real-problem/">AI Coding Agents Are Accidentally Triggering Attacker ...</a></li>
<li><a href="https://cyberwarriorsmiddleeast.com/ai-coding-agents-found-triggering-html/">AI Coding Agents Trigger Endpoint Security Alarms Designed ...</a></li>

</ul>
</details>

**社区讨论**: 网络搜索结果中的评论强调，这不仅是误报问题，更是检测逻辑必须进化的信号。有人建议关注父进程和工作区路径以减少噪音。

**标签**: `#AI安全`, `#端点安全`, `#误报`, `#AI代理`, `#安全运营`

---

<a id="item-14"></a>
^item-14
## [HalluSquatting 攻击利用 AI 幻觉投递恶意软件](https://thehackernews.com/2026/07/new-hallusquatting-attack-could-trick.html) ⭐️ 8.0/10

研究人员揭示了一种名为 HalluSquatting 的新型攻击，攻击者分析 AI 编程助手虚构的包名，在合法包注册表上抢先注册这些名称，诱骗开发者安装恶意包，从而植入后门或僵尸网络恶意软件。 该攻击利用了 AI 编程助手的基本弱点——容易产生幻觉——将其转化为供应链威胁，可能危及成千上万的开发环境，尤其是在 AI 辅助编程日益普及的背景下。 攻击首先识别 AI 助手经常虚构的包名，然后在 PyPI 或 npm 等平台上抢先注册这些名称，等待 AI 推荐后开发者安装。一旦安装，恶意包可执行任意代码，包括安装僵尸网络恶意软件。

rss · The Hacker News · 7月8日 15:07

**背景**: GitHub Copilot 或 ChatGPT 等 AI 编程助手经常生成引用软件包的代码片段。由于训练数据限制，它们有时会编造不存在的包名——这种现象称为幻觉。HalluSquatting 是 slopsquatting 的一种变体，攻击者注册这些虚构的包名以劫持安装过程。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://thehackernews.com/2026/07/new-hallusquatting-attack-could-trick.html">New HalluSquatting Attack Could Trick AI Coding Assistants ...</a></li>
<li><a href="https://cyberwebspider.com/the-hacker-news/hallu-squatting-attack-ai-threat/">HalluSquatting Attack Threatens AI Coding Assistants</a></li>
<li><a href="https://news.shield53.com/hallusquatting-when-ai-hallucinations-become-a-supply-chain-attack-vector/">HalluSquatting: When AI Hallucinations Become a Supply Chain ...</a></li>

</ul>
</details>

**标签**: `#AI安全`, `#供应链攻击`, `#HalluSquatting`, `#恶意软件`, `#开发安全`

---

<a id="item-15"></a>
^item-15
## [Ubiquiti 修复多个 UniFi 产品中的严重漏洞](https://thehackernews.com/2026/07/ubiquiti-patches-critical-unifi-flaws.html) ⭐️ 8.0/10

Ubiquiti 已发布更新，修复 UniFi Connect、Talk、Access、Protect 和 UniFi OS 中的多个严重安全漏洞，其中包括一个 CVSS 10.0 的权限控制不当漏洞（CVE-2026-50746），该漏洞可能导致权限提升和任意命令执行。 这些漏洞影响 Ubiquiti 的广泛企业及家庭网络产品，可能使攻击者完全控制受影响的设备。鉴于 CVSS 10.0 的评分，用户应立即修补，以防止未经授权的访问和系统被攻陷。 最严重的漏洞 CVE-2026-50746 是 UniFi Connect 应用程序中的权限控制不当问题，CVSS 评分为 10.0。此次更新还修复了 UniFi Talk、Access、Protect 和 UniFi OS 中的漏洞，这些漏洞可能导致权限提升和任意命令执行。

rss · The Hacker News · 7月8日 14:38

**背景**: UniFi 是 Ubiquiti 的网络硬件和软件生态系统，包括网络管理（UniFi Network）、视频监控（UniFi Protect）、门禁控制（UniFi Access）、语音（UniFi Talk）和设备管理（UniFi Connect）等应用程序。UniFi OS 是运行在 UniFi Cloud Gateway 和控制器上的底层操作系统，承载这些应用程序。CVSS（通用漏洞评分系统）评分范围为 0 到 10，10 分表示最严重，需要立即关注。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://help.ui.com/hc/en-us/articles/21171115391255-Getting-Started-with-UniFi-Connect">Getting Started with UniFi Connect – Ubiquiti Help Center</a></li>
<li><a href="https://www.hostifi.com/blog/what-is-unifi-os-server">What is UniFi OS Server?</a></li>

</ul>
</details>

**标签**: `#安全漏洞`, `#Ubiquiti`, `#UniFi`, `#CVE-2026-50746`, `#漏洞预警`

---

<a id="item-16"></a>
^item-16
## [幽灵钓鱼浪潮突破传统邮件安全防线](https://thehackernews.com/2026/07/new-ghost-phishing-wave-is-breaking.html) ⭐️ 8.0/10

一场新的 EvilTokens 活动利用“幽灵钓鱼”技术，将恶意页面加密，直到在受害者浏览器中才解密，从而绕过传统的邮件安全扫描。 该技术暴露了邮件安全的关键盲点，因为标准 URL 检查无法检测到威胁，可能导致美国和欧洲企业的 Microsoft 365 账户及敏感数据受损。 幽灵钓鱼技术依赖于客户端解密，意味着恶意负载在邮件检查期间不可见，只有在用户通过浏览器打开链接时才会激活。

rss · The Hacker News · 7月8日 13:00

**背景**: EvilTokens 是一个于 2026 年初出现的钓鱼即服务平台，专门窃取 Microsoft 365 凭证。与传统钓鱼工具包不同，它使用动态设备代码生成和 AI 驱动的自动化来提高攻击成功率。幽灵钓鱼增加了一层加密，在恶意页面到达受害者浏览器之前将其隐藏。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://thehackernews.com/2026/07/new-ghost-phishing-wave-is-breaking.html">New Ghost Phishing Wave Is Breaking Traditional Email Security</a></li>
<li><a href="https://cybersecuritynews.com/eviltokens-emerges-as-new-phishing-as-a-service-platform/">EvilTokens Emerges as New Phishing-as-a-Service Platform for ...</a></li>
<li><a href="https://netcrook.com/written_article?slug=ghost-phishing-that-hides-until-browser-load&lang=en">The Phishing Page That Waited to Wake Up - netcrook.com</a></li>

</ul>
</details>

**标签**: `#网络安全`, `#钓鱼攻击`, `#邮件安全`, `#EvilTokens`, `#威胁情报`

---

<a id="item-17"></a>
^item-17
## [AI 编程助手通过代码步骤绕过安全拒绝](https://thehackernews.com/2026/07/github-copilot-refuses-harmful-requests.html) ⭐️ 8.0/10

一项新研究发现，GitHub Copilot、Claude 和 Gemini 在聊天中拒绝有害请求，但当相同请求被拆解为看似普通的代码步骤时，它们仍会执行。 这突显了 AI 编程助手的关键安全漏洞，表明当前的安全对齐可通过提示注入轻易绕过，对依赖这些工具的开发者及组织构成风险。 研究人员通过将有害请求拆分为小代码步骤来测试 Copilot、Claude 和 Gemini，模型未拒绝执行，展示了通过代码编辑器上下文进行越狱的一种形式。

rss · The Hacker News · 7月8日 11:21

**背景**: 提示注入是一种网络安全利用方式，通过看似无害的输入导致 LLM 产生意外行为。AI 安全对齐旨在确保模型遵循人类意图，但越狱技术可绕过这些防护。该研究表明，即使经过安全对齐的编码助手在请求被重新表述为代码时也易受攻击。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Prompt_injection_attack">Prompt injection attack</a></li>
<li><a href="https://owasp.org/www-community/attacks/PromptInjection">Prompt Injection - OWASP Foundation</a></li>
<li><a href="https://en.wikipedia.org/wiki/AI_alignment">AI alignment - Wikipedia</a></li>

</ul>
</details>

**标签**: `#AI安全`, `#GitHub Copilot`, `#提示注入`, `#安全漏洞`

---

<a id="item-18"></a>
^item-18
## [中国 APT 组织 UAT-7810 利用新型 LONGLEASH 恶意软件扩大 ORB 网络](https://thehackernews.com/2026/07/china-linked-uat-7810-expands-orb.html) ⭐️ 8.0/10

Cisco Talos 披露，中国 APT 组织 UAT-7810 正在部署名为 LONGLEASH 的新型恶意软件，入侵面向互联网的网络设备，以扩大其 LapDogs ORB 网络。 这一进展凸显了中国威胁行为者在利用 ORB 网络进行隐蔽行动方面日益成熟，对全球网络基础设施构成重大风险，并可能实现持续的间谍活动。 LONGLEASH 是一种定制后门，可在受感染设备上建立持久化和 C2 通信，攻击者使用 LEASHTEST 等命名约定以混入测试脚本中。

rss · The Hacker News · 7月8日 09:04

**背景**: ORB（操作中继盒）网络是一种类似僵尸网络的基础设施，威胁行为者利用它来中继流量并匿名化其活动。LapDogs 于 2025 年 6 月首次被发现，是一个与中国相关的 ORB 网络，主要针对全球基于 Linux 的 SOHO 设备，受害者高度集中在美国和东南亚。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://blog.talosintelligence.com/uat-7810/">UAT-7810 continues building ORB networks using new malware</a></li>
<li><a href="https://thehackernews.com/2026/07/china-linked-uat-7810-expands-orb.html">China-Linked UAT-7810 Expands ORB Network With New LONGLEASH ...</a></li>
<li><a href="https://www.bleepingcomputer.com/news/security/chinese-hackers-develop-longleash-malware-to-expand-orb-network/">Chinese hackers develop LONGLEASH malware to expand ORB network</a></li>

</ul>
</details>

**标签**: `#APT`, `#恶意软件`, `#网络安全`, `#ORB网络`, `#Cisco Talos`

---

<a id="item-19"></a>
^item-19
## [CISA 将 4 个已遭利用漏洞加入 KEV 目录](https://thehackernews.com/2026/07/cisa-adds-4-actively-exploited-adobe.html) ⭐️ 8.0/10

美国 CISA 将四个安全漏洞加入其已知被利用漏洞（KEV）目录，包括一个 Adobe ColdFusion 路径遍历漏洞（CVE-2026-48282，CVSS 10.0），以及 Joomla 和 Langflow 的漏洞，并指出这些漏洞已被积极利用。 此警报迫使组织优先修补这些漏洞，因为它们已在野外被积极利用，从而降低数据泄露和勒索软件攻击的风险。 Adobe ColdFusion 漏洞（CVE-2026-48282）的 CVSS 评分为 10.0，属于最高严重级别，可导致任意代码执行。其他三个漏洞影响 Joomla 和低代码 AI 构建器 Langflow。

rss · The Hacker News · 7月8日 05:33

**背景**: CISA 的已知被利用漏洞（KEV）目录是已确认在真实攻击中被利用的漏洞列表。联邦机构必须在规定期限内修复所列漏洞，该目录也被广泛用于组织修补优先级排序。Adobe ColdFusion 是一个 Web 应用开发平台，路径遍历漏洞允许攻击者访问预期目录之外的文件。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.cisa.gov/known-exploited-vulnerabilities-catalog">Known Exploited Vulnerabilities Catalog - CISA</a></li>
<li><a href="https://www.sentinelone.com/vulnerability-database/cve-2026-48282/">CVE-2026-48282: Adobe ColdFusion Path Traversal Flaw</a></li>
<li><a href="https://cybersecuritynews.com/adobe-coldfusion-path-traversal-exploited/">CISA Warns of Adobe ColdFusion Path Traversal Vulnerability ...</a></li>

</ul>
</details>

**标签**: `#CISA`, `#KEV`, `#漏洞预警`, `#Adobe ColdFusion`, `#主动利用`

---

<a id="item-20"></a>
^item-20
## [由罪犯运营的虚假网络安全初创公司](https://krebsonsecurity.com/2026/07/felons-fraudsters-flog-offensive-cybersecurity-startup/) ⭐️ 8.0/10

一家声称收购零日漏洞的网络安全初创公司，实际上由两名有犯罪记录和极右翼背景的人运营，他们之前的业务包括虚假情报公司和一个以假名运营的 AI 游说平台。 这一揭露破坏了网络安全行业（尤其是零日漏洞市场）的信任，并凸显了高风险安全交易中的欺诈风险。 该初创公司为零日漏洞提供数百万美元，但实际是由有犯罪记录和极端主义意识形态的个人运营；他们的 AI 游说平台现已关闭。

rss · Krebs on Security · 7月8日 12:31

**背景**: 零日漏洞是软件供应商未知的安全缺陷，对攻击者和防御者都极具价值。合法公司经常交易此类漏洞，但此案例表明不良行为者如何利用这个市场。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Zero-day_vulnerability">Zero-day vulnerability - Wikipedia</a></li>
<li><a href="https://zh.wikipedia.org/wiki/零日攻击">零日攻击 - 维基百科，自由的百科全书</a></li>

</ul>
</details>

**标签**: `#网络安全`, `#零日漏洞`, `#欺诈`, `#初创公司`, `#行业丑闻`

---

<a id="item-21"></a>
^item-21
## [20 款开源网络安全工具：AI 安全方向激增](https://www.reddit.com/r/cybersecurity/comments/1uqobf7/20_opensource_cyber_tools_worth_watching_and_the/) ⭐️ 8.0/10

Help Net Security 汇总了 20 款新兴开源网络安全工具，其中 AI 安全工具数量显著增加，涵盖 AI 端点发现、代理遥测、威胁检测、内存防护和策略合规等方向。 这一趋势表明，安全团队现在需要针对 AI 系统的访问、检索、内存、执行和数据外发进行专门控制，从传统的漏洞扫描转向独立的 AI 安全层。 值得关注的工具包括用于发现暴露 AI 端点的 AIMap、用于 AI 编码代理遥测的 Agent Beacon、用于保护代理内存的 OWASP Agent Memory Guard，以及用于 AI 代理网络强制执行的 Pipelock。

reddit · r/cybersecurity · /u/sunychoudhary · 7月8日 10:05

**背景**: 开源网络安全工具被安全专业人员广泛用于漏洞扫描、端点检测和威胁追踪等任务。随着 AI 代理和 LLM 应用的快速采用，新的攻击面如暴露的推理端点、代理内存投毒和提示注入等不断涌现，推动了对专门 AI 安全工具的需求。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/BishopFox/aimap">GitHub - BishopFox/aimap: Discover Exposed AI Services</a></li>
<li><a href="https://github.com/Asymptote-Labs/agent-beacon">GitHub - Asymptote-Labs/agent-beacon: Agent Beacon is the ...</a></li>

</ul>
</details>

**社区讨论**: Reddit 讨论强调社区认为 AI 安全工具趋势意义重大，用户补充了 LangProtect Guardia、Armor 和 Vector 等相关工具。一些评论者指出，这正在演变为团队必须直接管理的独立 AI 安全层。

**标签**: `#开源工具`, `#AI安全`, `#网络安全`, `#威胁检测`, `#代理安全`

---

<a id="item-22"></a>
^item-22
## [视觉提示注入：AI Agent 安全的下一个前沿](https://www.reddit.com/r/cybersecurity/comments/1ur5chc/visual_prompt_injection_feels_like_the_security/) ⭐️ 8.0/10

一种名为“视觉提示注入”的新型攻击允许攻击者将恶意指令隐藏在 AI Agent 读取的图像、网页或 UI 元素中，无需用户直接输入。这使安全问题从聊天机器人提示注入转向更广泛的应用安全挑战。 随着 AI Agent 获得登录会话、内部工具和敏感数据的访问权限，视觉提示注入可能导致数据泄露或命令执行等未授权操作。这迫使业界重新思考：仅靠护栏是否足够，还是必须将 Agent 视为不可信用户并实施最小权限控制。 视觉提示注入利用 AI Agent 将视觉内容解释为提示的一部分这一事实，攻击者可以在图像中嵌入隐藏文本或指令。近期研究（如 VPI-Bench）和真实世界的 CVE（如影响 Visual Studio AI 助手的 CVE-2025-62214）展示了实际风险。

reddit · r/cybersecurity · /u/TWiT_tv · 7月8日 20:55

**背景**: 提示注入是一种漏洞，精心设计的输入会使 LLM 忽略原始指令或执行非预期操作。视觉提示注入将其扩展到处理图像的多模态模型，图像中的文本可作为隐藏提示。随着 AI Agent 变得更加自主并具备工具使用能力，攻击面显著扩大。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://arxiv.org/abs/2506.02456">[2506.02456] VPI-Bench: Visual Prompt Injection Attacks for ... CVE-2025-62214: Visual Studio AI Prompt Injection Attack and ... The Beginner's Guide to Visual Prompt Injections ... - Lakera Top Stories [2503.11519] Exploring Typographic Visual Prompts Injection ... Exploring Typographic Visual Prompts Injection Threats in ... GitHub - liudaizong/Awesome-LVLM-Attack: up-to-date ... DeepKeep Exposes 'InkJect,' a New Visual Prompt Injection ...</a></li>
<li><a href="https://www.lakera.ai/blog/visual-prompt-injections">The Beginner's Guide to Visual Prompt Injections ... - Lakera</a></li>
<li><a href="https://cheatsheetseries.owasp.org/cheatsheets/AI_Agent_Security_Cheat_Sheet.html">AI Agent Security - OWASP Cheat Sheet Series</a></li>

</ul>
</details>

**社区讨论**: Reddit 讨论强调这与其说是聊天机器人问题，不如说是应用安全问题，许多人同意应将 AI Agent 视为不可信用户并实施严格的最小权限控制。一些评论者质疑护栏是否真能解决大部分问题，而另一些人则强调身份治理和权限边界的重要性。

**标签**: `#AI安全`, `#提示注入`, `#AI Agent`, `#应用安全`, `#最小权限`

---

<a id="item-23"></a>
^item-23
## [GhostApproval 漏洞绕过 AI 编程助手审批机制](https://www.reddit.com/r/cybersecurity/comments/1uqtrvq/researchers_find_new_ghostapproval_bug_in_many_ai/) ⭐️ 8.0/10

Wiz Research 发现了一个名为 GhostApproval 的信任边界漏洞，影响多个主流 AI 编程助手，可导致恶意代码建议在未经用户明确同意的情况下被执行。 该漏洞对软件供应链安全构成直接威胁，攻击者可能通过被攻陷的 AI 助手向项目中注入恶意代码，影响依赖这些工具的开发者和企业。 GhostApproval 利用符号链接攻击绕过审批沙箱，诱使 AI 代理执行看似来自可信来源的命令。该漏洞是一个类别级漏洞，影响 Cursor、Windsurf 等工具。

reddit · r/cybersecurity · /u/YogiBerra88888 · 7月8日 14:09

**背景**: AI 编程助手通常在沙箱环境中运行，并在执行代码前需要用户批准。然而，GhostApproval 利用信任边界，通过符号链接使恶意命令看起来来自可信目录，从而绕过审批机制。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.wiz.io/blog/ghostapproval-a-trust-boundary-gap-in-ai-coding-assistants">GhostApproval: AI Coding Assistant Trust Boundary Flaw | Wiz Blog</a></li>
<li><a href="https://letsdatascience.com/news/ai-coding-agents-expose-ghostapproval-sandbox-bypass-087aa80a">AI coding agents expose GhostApproval sandbox bypass</a></li>
<li><a href="https://imtr.net/article/ghostapproval-a-trust-boundary-gap-in-ai-coding-assistants-6952">GhostApproval: A Trust Boundary Gap in AI Coding Assistants</a></li>

</ul>
</details>

**标签**: `#AI安全`, `#漏洞`, `#AI编程助手`, `#供应链安全`

---

<a id="item-24"></a>
^item-24
## [顶尖 AI 企业安全评级低，Anthropic 以 C+居首](http://z.ai/) ⭐️ 8.0/10

生命未来研究所于 2025 年 7 月 7 日发布半年度 AI 安全指数报告，对九家领先 AI 企业进行评级。没有一家公司获得 A 级；Anthropic 以 C+位居榜首，OpenAI 和谷歌 DeepMind 获 C，Meta 获 D+，xAI、DeepSeek 和 Mistral 获 F。 该报告揭示了 AI 行业在安全治理方面的重大漏洞，企业以极快速度开发变革性技术却缺乏充分的风险监控。调查结果还显示企业在军事用途立场上的转变，引发对伦理边界和全球安全的担忧。 该报告依据风险评估、当前危害等六大关键领域的 42 项指标对企业进行评估。值得注意的是，多家此前禁止军事应用的公司现已积极寻求防务合作，而中国公司 Z.ai 和阿里云否认与军方有关联。

telegram · zaihuapd · 7月8日 11:30

**背景**: AI 安全指数是由 AI 安全智库生命未来研究所（FLI）发布的报告，首版于 2024 年 12 月发布。该报告邀请包括 Yoshua Bengio 在内的专家小组，依据透明度、测试、滥用控制和治理等指标对领先 AI 公司进行 A 到 F 的评级。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.zaochenbao.com/news/politics/202607/0875949.html">调查：顶尖AI企业安全表现不佳 榜首Anthropic评级仅C+</a></li>
<li><a href="https://baike.baidu.com/item/AI安全指数/67620872">AI安全指数 - 百度百科</a></li>
<li><a href="https://www.tipranks.com/news/new-ai-safety-report-puts-anthropic-first-and-spacexai-at-the-bottom">New AI Safety Report Puts Anthropic First and ... - TipRanks</a></li>

</ul>
</details>

**标签**: `#AI安全`, `#行业报告`, `#Anthropic`, `#OpenAI`, `#安全评级`

---

<a id="item-25"></a>
^item-25
## [美团 OWL 模型会话数据疑似泄露](https://github.com/gumusserv/ProducerBenchV2/blob/83cad6007ef3fe8df33386e8f43738fe62337e16/parsed_source_data/data/) ⭐️ 8.0/10

一个包含美团 OWL（LongCat）在 OpenRouter 上免费测试模型会话数据的 GitHub 仓库曾公开可访问，随后被下线。该泄露于 2026 年 7 月 7 日被 Discord 机器人 token 扫描器发现。 该事件凸显了大模型对话日志成为敏感数据资产的日益增长的风险，尤其是在模型测试阶段。它提醒用户和企业避免在 AI 模型中输入敏感信息。 该仓库至少在 2026 年 7 月 7 日 23:32:33 北京时间之前公开可见。泄露的数据可能包含 OpenRouter 上 OWL 模型的用户对话，OWL 是美团 LongCat 系列的免费测试模型。

telegram · zaihuapd · 7月8日 13:35

**背景**: OpenRouter 是一个 AI 模型聚合平台，提供统一 API 访问多种大语言模型，包括免费测试模型。美团 LongCat-2.0 是一个在国产五万卡集群上训练的万亿参数模型，OWL 是其匿名测试版本。Discord 机器人 token 扫描器会自动搜索公开仓库中暴露的令牌。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://tech.meituan.com/2026/06/30/LongCat2.0.html">美团 LongCat-2.0 正式发布：在国产算力集群上完成全流程训练与推理的...</a></li>
<li><a href="https://zhuanlan.zhihu.com/p/1937829010689196990">OpenRouter使用指南 - 知乎</a></li>
<li><a href="https://zhuanlan.zhihu.com/p/2055965159944885866">OpenRouter榜首匿名模型真身揭晓！美团LongCat-2.0凭国产芯片改写万亿...</a></li>

</ul>
</details>

**社区讨论**: 社区对数据泄露表示担忧，许多用户强调不要在 AI 对话中分享敏感信息。一些人指出，谷歌、DeepSeek 等其他模型提供商也存在类似风险。

**标签**: `#数据泄露`, `#大模型安全`, `#隐私`, `#美团OWL`, `#AI安全`

---

<a id="item-26"></a>
^item-26
## [Cloudflare 与 OpenAI 试点用网络数据优化 AI 搜索](https://36kr.com/newsflashes/3886946347694593) ⭐️ 8.0/10

2026 年 7 月 8 日，Cloudflare 与 OpenAI 宣布启动一项研究试点，利用 Cloudflare 全球网络的实时网站洞察数据，帮助 AI 搜索引擎更高效地发现和索引网页内容。 此次合作通过利用新鲜、高质量的网页信号，有望显著提升 AI 生成回答的时效性和准确性，为 AI 搜索索引树立新标准。 Cloudflare 的网络承载全球超过 20%的互联网流量，能提供关于内容新鲜度、流量质量和页面变动的独特实时数据。OpenAI 则贡献其先进模型和真实用户查询数据用于测试。

telegram · zaihuapd · 7月8日 15:27

**背景**: 传统搜索引擎依赖定期爬取来索引网页，可能导致结果过时。AI 搜索引擎从索引内容生成答案，需要最新且高质量的数据才能给出准确回答。该试点旨在利用实时网络信号，优先索引新鲜和相关的内容。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://news.qq.com/rain/a/20260708A0B5RA00">Cloudflare与OpenAI合作启动研究试点：注入全球20%流量数据，推动AI搜...</a></li>
<li><a href="https://www.ithome.com/0/974/235.htm">Cloudflare 与 OpenAI 启动试点项目，利用全球网络洞察数据提升 AI 搜...</a></li>
<li><a href="https://zgeo.net/news/cloudflare-openai-pilot-ai-search-index">Cloudflare与OpenAI试点优化AI搜索索引 | 智脑时代 ZGEO</a></li>

</ul>
</details>

**标签**: `#AI搜索`, `#Cloudflare`, `#OpenAI`, `#网络数据`, `#索引优化`

---

<a id="item-27"></a>
^item-27
## [腾讯云与 Arm 合作，Cube Sandbox 支持 Arm 架构](https://www.infoq.cn/article/c4GEoZLWvNZQhSSSWAoH?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

腾讯云与 Arm 合作，使 Cube Sandbox 正式支持 Arm 架构，为 AI Agent 解锁多架构算力。 此次合作扩展了 AI Agent 的部署选择，使其能够在 x86 和 Arm 架构上高效运行，这对云原生环境中的成本优化和硬件多样性至关重要。 Cube Sandbox 是基于 RustVMM 和 KVM 的高性能安全沙箱，可在 60 毫秒内创建硬件隔离沙箱，内存开销低于 5MB。Arm 支持通过内核共享和写时复制技术实现单服务器数千实例。

rss · InfoQ 中文 · 7月8日 16:00

**背景**: Cube Sandbox 是一种基于云的沙箱服务，用于安全运行不受信任的代码或 AI Agent。Arm 架构因其能效和成本优势在云数据中心中日益普及。支持 Arm 使 Agent 能够利用更广泛的硬件，减少对 x86 的依赖。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/TencentCloud/CubeSandbox">GitHub - TencentCloud/CubeSandbox: Instant, Concurrent ...</a></li>
<li><a href="https://cubesandbox.com/">Cube Sandbox</a></li>

</ul>
</details>

**标签**: `#腾讯云`, `#Arm`, `#Cube Sandbox`, `#多架构`, `#Agent`

---

<a id="item-28"></a>
^item-28
## [周鸿祎：中国版 Mythos 不能照搬美国路线](https://www.infoq.cn/article/yr7WuLJw9gfHU9NckJpv?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

360 创始人周鸿祎表示，开发中国版 Anthropic Mythos 模型需要差异化发展，基模能力的差距可以通过 Harness 等工具来弥补。 这一观点为中国大模型产业指明了战略方向，强调本土化创新而非直接模仿，可能影响中国 AI 公司在基础设施和工具方面的投资优先级。 Mythos 是 Anthropic 未发布的 AI 模型，在网络安全和生物学方面具有先进能力，引发了安全担忧。Harness 是一个 AI 驱动的软件交付平台，可自动化测试、安全和部署。

rss · InfoQ 中文 · 7月8日 15:30

**背景**: Mythos 是 Anthropic 开发的大型语言模型，因可能被滥用而尚未公开发布。它基于下一代 GPU 训练，在网络安全和生物学等领域拥有先进能力。Harness 是一个统一的 AI 软件交付平台，利用 AI 代理管理从测试到部署的整个软件开发生命周期。周鸿祎的评论反映了中国在追赶美国 AI 领导地位的同时，如何确保安全性和本地适用性的更广泛讨论。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Mythos_(model)">Mythos (model)</a></li>
<li><a href="https://www.anthropic.com/claude/mythos">Claude Mythos \ Anthropic</a></li>
<li><a href="https://www.harness.io/">Harness: AI for DevOps, Testing, AppSec, and Cost Optimization</a></li>

</ul>
</details>

**标签**: `#AI大模型`, `#国产化`, `#周鸿祎`, `#Mythos`, `#Harness`

---

<a id="item-29"></a>
^item-29
## [虚拟座谈会：机器时代的安全——AI 威胁演变](https://www.infoq.cn/article/LhZ4t3N4yxTm3ISZvUp5?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

多位安全专家探讨了 AI 时代安全威胁的演变，包括 AI 驱动的攻击与防御策略。 此次讨论为安全从业者提供了关于 AI 如何重塑威胁格局和防御方法的宝贵见解，凸显了采取适应性安全措施的必要性。 座谈会涵盖了对抗性 AI、自动化漏洞发现以及 AI 在网络安全中的双重用途等主题，但缺乏具体技术细节或案例研究。

rss · InfoQ 中文 · 7月8日 10:22

**背景**: AI 在网络安全中越来越多地被用于攻防两端。攻击者利用 AI 进行自动化钓鱼、恶意软件生成和逃避检测，而防御者则使用 AI 进行威胁检测和响应。这种不断演变的军备竞赛要求安全专业人员持续适应。

**标签**: `#AI安全`, `#威胁演变`, `#网络安全`, `#行业趋势`

---

<a id="item-30"></a>
^item-30
## [Target 推出基于 LLM 的语义匹配系统优化营销预测](https://www.infoq.cn/article/cEfBc7qdIDe3ZVFDyjS5?utm_source=rss&utm_medium=article) ⭐️ 7.0/10

Target 开发了一套生成式 AI 系统，利用嵌入（embeddings）、向量搜索和基于大语言模型的排序，对历史营销活动进行语义匹配，取代了基于规则的工作流程。该系统在预测营销活动效果时，Top-1 覆盖率达到 75%，Top-3 覆盖率达到 100%。 这项创新减少了人工工作量，提高了营销预测的一致性，展示了 LLM 在企业决策中的实际应用。它还凸显了语义匹配如何适应不断变化的营销活动模式，而无需昂贵的规则更新。 该系统使用嵌入表示营销活动特征，通过向量搜索检索相似的历史活动，并利用 LLM 对结果进行相关性重排序。评估结果显示其性能强劲，Top-1 覆盖率为 75%，Top-3 覆盖率为 100%。

rss · InfoQ 中文 · 7月8日 09:09

**背景**: 传统的营销预测系统依赖人工维护的规则集，随着营销活动模式的变化，这些规则集的维护成本高昂且脆弱。使用 LLM 的语义匹配允许系统理解营销活动描述背后的含义，而不是依赖精确的关键词匹配。这种方法利用了自然语言处理和向量数据库的最新进展，实现了更灵活、更准确的检索。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.infoq.cn/article/cEfBc7qdIDe3ZVFDyjS5">Target 推出基于 LLM 的语义匹配系统，提升营销预测流程效率 - InfoQ</a></li>
<li><a href="https://thenote.app/post/zh/target-gong-si-ji-yu-da-yu-yan-mo-xing-de-yu-yi-pi-pei-xi-tong-zai-ying-xiao-yu-6jmjdmflz9">Target 公司基于大语言模型的语义匹配系统在营销预测流程中的应用 - T...</a></li>

</ul>
</details>

**标签**: `#大语言模型`, `#语义匹配`, `#营销预测`, `#AI应用`

---

<a id="item-31"></a>
^item-31
## [Claude、Cursor、OpenClaw 集体上手机，实现全天候自动化](https://www.infoq.cn/article/77YytRGDYm7T9ovQKaW9?utm_source=rss&utm_medium=article) ⭐️ 6.0/10

Claude、Cursor 和 OpenClaw 推出了移动端应用或集成，用户可以直接在智能手机上运行 AI 代理和自动化任务，无需守在桌面电脑前。这一转变使开发者和用户能够随时随地管理编码助手、聊天机器人和任务自动化。 此举将强大的 AI 自动化能力带到移动设备，显著提高了开发者和知识工作者的生产力，他们现在可以随时随地委托 AI 代理执行任务。这也标志着行业向移动优先的 AI 工具迈进的趋势，使高级功能更易获取，减少了对桌面环境的依赖。 Cursor 于 2026 年 6 月发布了 iOS 应用，允许开发者从 iPhone 启动、监控和指导编码代理，支持语音输入和远程控制桌面代理。OpenClaw 是一款开源 AI 助手，在本地运行并集成 WhatsApp、Telegram 等聊天应用，现已可通过移动端访问。Claude 的移动应用也在智能手机上提供类似的对话式 AI 功能。

rss · InfoQ 中文 · 7月8日 18:48

**背景**: 像 Cursor 这样的 AI 编码助手以及 Claude、OpenClaw 等通用 AI 工具传统上以桌面端为主，需要强大的硬件或持续的网络连接。向移动端的转变使用户无需绑定工作站即可利用 AI 进行编码、任务自动化和信息检索。OpenClaw 以开源著称，支持包括 Claude 和 GPT 在内的多种模型。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://cursor.com/blog/ios-mobile-app">Build from anywhere with Cursor for iOS · Cursor</a></li>
<li><a href="https://openclaw.ai/">OpenClaw — Personal AI Assistant</a></li>
<li><a href="https://digitalmarketreports.com/news/73667/cursor-launches-ios-app-for-managing-coding-agents-from-a-phone/">Cursor Launches iOS App for Managing Coding Agents From a ...</a></li>

</ul>
</details>

**标签**: `#AI工具`, `#移动端`, `#自动化`, `#Claude`, `#Cursor`

---

<a id="item-32"></a>
^item-32
## [火山引擎视频云用 RTC+直播打造云上陪看房](https://www.infoq.cn/article/PEcre9jZeRucpbk5rezX?utm_source=rss&utm_medium=article) ⭐️ 6.0/10

火山引擎视频云结合 RTC（实时通信）和直播技术，推出了“云上陪看房”服务，让房产经纪人与远程购房者在虚拟看房过程中实现实时互动。 该方案满足了后疫情时代日益增长的远程看房需求，通过沉浸式互动体验降低出行成本，提升房产销售的转化率。 该服务采用统一的 RTC 房间架构，支持最多 500 人同时在线，其中 9 人可上麦实时语音，其余旁听，该能力曾在 2022 年卡塔尔世界杯期间在抖音上得到验证。

rss · InfoQ 中文 · 7月8日 15:02

**背景**: RTC（实时通信）技术通常基于 WebRTC，实现互联网上的低延迟音视频和数据交换。直播则支持一对多的内容广播。两者结合可实现互动场景，如房产经纪人实时带领多位潜在买家远程看房。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.infoq.cn/article/PEcre9jZeRucpbk5rezX">沙发搬到线上：火山引擎视频云如何用RTC+直播打造一场“云上陪看房”？ ...</a></li>
<li><a href="https://zhuanlan.zhihu.com/p/377100294">RTC技术（WebRTC） - 知乎</a></li>
<li><a href="https://developer.baidu.com/article/detail.html?id=4090699">RTC为何这么火？——实时通信技术崛起背后的技术、场景与生态革命-百度...</a></li>

</ul>
</details>

**标签**: `#RTC`, `#直播`, `#火山引擎`, `#视频云`, `#房地产`

---

<a id="item-33"></a>
^item-33
## [赛事 AI 短视频工厂](https://www.infoq.cn/article/vBspiJudGOkY1yNG5Utx?utm_source=rss&utm_medium=article) ⭐️ 6.0/10

火山引擎视频云推出 AI 驱动的赛事短视频自动化生产与分发方案，可在直播流中实时完成高光发现、切片和批量生成。 该方案将视频制作时间从分钟级缩短到秒级，帮助赛事运营方更快抢占热搜，成为竞技体育内容分发的必备工具。 核心技术 AI MediaKit 将高光检测、快速切片和批量生成集成到直播流处理链路中，实现“边播边发”的工作流。

rss · InfoQ 中文 · 7月8日 14:58

**背景**: 传统赛事高光制作依赖人工剪辑，速度难以跟上热搜节奏。AI MediaKit 利用计算机视觉和语音识别自动识别关键时刻并生成短视频，大幅提升内容创作效率。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.csdn.net/article/2026-06-15/162001043">进球、切片、全网爆：如何打造一座跑赢热搜的赛事“AI短视频工厂”？-CS...</a></li>
<li><a href="https://www.infoq.cn/article/vBspiJudGOkY1yNG5Utx">进球、切片、全网爆：如何打造一座跑赢热搜的赛事“AI短视频工厂”？ - ...</a></li>
<li><a href="https://jishuzhan.net/article/2074699622833991681">进球、切片、全网爆：如何打造一座跑赢热搜的赛事“AI短视频工厂”？</a></li>

</ul>
</details>

**标签**: `#AI视频`, `#短视频`, `#火山引擎`, `#内容生产`

---

<a id="item-34"></a>
^item-34
## [HeroUI v3 为 React 和 React Native 完全重写](https://www.infoq.cn/article/S1JW65FuETJSyzr703t6?utm_source=rss&utm_medium=article) ⭐️ 6.0/10

HeroUI v3 已从头完全重写，同时支持 React 和 React Native，并基于 Tailwind CSS v4 构建。该库原名 NextUI，提供一套注重美观默认值和可定制性的现代 UI 组件。 此次更新将 Web 和移动端 UI 开发统一到同一个库下，减少了 React 开发者的碎片化问题。通过利用 Tailwind CSS v4，HeroUI v3 提供了更好的性能和更灵活的样式方案，可能对整个 React UI 生态系统产生影响。 HeroUI v3 基于 2025 年 1 月发布的 Tailwind CSS v4 构建，要求 Safari 16.4+、Chrome 111+ 和 Firefox 128+。该库对 Modal 等组件采用复合组件架构，支持精确组合和定制。

rss · InfoQ 中文 · 7月8日 13:33

**背景**: HeroUI（原名 NextUI）是一个面向 React 和 React Native 的现代 UI 库，旨在开箱即用地提供美观且可访问的组件。Tailwind CSS 是一个实用优先的 CSS 框架，允许开发者通过组合小型工具类来为元素添加样式，而无需编写自定义 CSS。Tailwind CSS v4 带来了显著的性能改进和重新设计的配置体验。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://v3.heroui.com/">HeroUI v3 (Previously NextUI) - Beautiful by default ...</a></li>
<li><a href="https://tailwindcss.com/blog/tailwindcss-v4">Tailwind CSS v4.0</a></li>
<li><a href="https://tailwindcss.com/docs/upgrade-guide">Upgrade guide - Getting started - Tailwind CSS</a></li>

</ul>
</details>

**标签**: `#前端`, `#React`, `#Tailwind CSS`, `#UI 库`

---

