# Keynotes

## It’s the Instruction Fetch Front-End, Stupid!

By **[André Seznec](https://team.inria.fr/pacap/members/andre-seznec)**
([INRIA](https://www.inria.fr)).

Achieving high single-thread performance remains a major challenge
even in the multicore era.  To achieve ultimate single-thread
performance, a uniprocessor needs a very efficient memory hierarchy,
an aggressive out-of-order execution core and a highly efficient
instruction fetch front-end engine.

In this talk, I will focus on the challenges for the design of the
instruction fetch frond-end in a very wide-issue processor.

*André Seznec is a Fellow Research Director (DR0) at IRISA/INRIA in
 Rennes.  His main research activity has ported on the architecture of
 microprocessors, including caches, pipeline, branch predictors,
 speculative execution, multithreading and multicores. His research
 has influenced the design of many high-end industrial
 microprocessors, particularly the caches and the branch predictors.*

*André Seznec is member of the hall of fame of the 3 major conferences
 in computer architecture, ACM/IEEE ISCA, IEEE HPCA and ACM/ IEEE
 Micro. He received the first Intel Research Impact Medal in 2012 for
 his « _exemplary work on high-performance computer
 micro-architecture, branch prediction and cache architecture._ » He
 is a IEEE fellow (2013) and an ACM fellow (2016).*

## European Processor Initiative: challenges & opportunities for RISC-V accelerators in an HPC platform

By **[Romain Dolbeau](https://fr.linkedin.com/in/romaindolbeau)**
([EPI](https://www.european-processor-initiative.eu/), [ATOS](https://atos.net)).

Summary TBA.

*Short bio. TBA.*

# Tutorials

## Teaching basic computer architecture, assembly language programming, and operating system design using risc-v

By Liliana Andrare, Mounir Benabdendi, Olivier Muller, Frédéric
Rousseau, **[Frédéric
Pétrot](http://tima.imag.fr/sls/people/petrot/)**
([Grenoble-IPN](http://www.grenoble-inp.fr)).

This talk presents the work done by the team teaching computer
architecture and assembler level programming at the Institute of
Engineering of Univ. Grenoble Alpes ([Grenoble INP
Ensimag](http://ensimag.grenoble-inp.fr), [Grenoble INP
Phelma](http://phelma.grenoble-inp.fr) and
[Polytech'Grenoble](https://www.polytech-grenoble.fr)).

We will in particular detail what are the goals of these classes and
how we mapped them on the RISC-V architecture. We will also have demos
at hand for those interested in the putative use of this material, as
teachers or hobbyists.

*Starting in 1994, Frédéric Pétrot was assistant professor at
 Université Pierre et Marie Curie in Paris, where he was primary
 teaching VLSI design, CAD algorithms for VLSI design, bases of
 operating systems, and practical use of parser generators (but also
 C, ADA, UNIX, ...). He was one of the main contributor of the
 open-source Alliance CAD system, still in use today. He also started
 working on ESL tools, building the ancestor of the SoCLib SystemC
 library.  He moved to Grenoble INP ENSIMAG in 2004, taking the
 responsibility of all classes related to logic circuit design and
 computer architecture.  He still teaches UNIX, bases of OS design and
 knows no other editor than vim.*

# Presentations

## Open source GPUs: How can RISC-V play a role?

By **[Nima
Taherinejad](https://www.ict.tuwien.ac.at/staff/taherinejad)** ([TU
Wien](https://www.ict.tuwien.ac.at)).

In this talk, first, I briefly review existing open source GPUs and
their status. Given its merit and the work we have done in group on
the award-winning Nyuzi GPGPU, I will pay a closer attention to that
work. Next, I will discuss some of the challenges they face as well as
the importance of investing more into research and development of such
architectures and potential direction of such research and
development. At the end, I position RISC-V with respect to the open
source GPUs and present some ideas on how RISC-V and its community can
play a role in a potentially joint future.

*Nima Taherinejad is a PhD graduate of the University of British
 Columbia (UBC), Vancouver, Canada. He is currently at the
 [TU Wien](https://www.ict.tuwien.ac.at) (formerly known also as
 Vienna University of Technology), Vienna, Austria, where he leads the
 system-on-chip (SoC) educational MSc module and works on
 self-awareness in resource-constrained cyber-physical systems,
 embedded systems, memristor-based circuit and systems, health-care,
 and robotics. In the field of computer architecture his activities
 revolve mainly around GPU architectures and resource management in
 multi-processor SoCs.*

## Alternative languages for safe and secure RISC-V programming

By **[Fabien Chouteau](https://twitter.com/deschips)**
([Ada Core](https://www.adacore.com)).

In this talk I want to open a window into the wonderful world of
"alternative" programming languages for RISC-V. What can you get by
looking beyond C/C++.

So I will start with a quick introduction to the Ada and SPARK
languages, the benefits, the hurdles. I will also present an overview
of the applications and domains where they shine, when failure is not
an option.

At the end of the talk, I will give my view of the RISC-V architecture
and community from the perspective of an alternative languages
developer. I will cover the good points, the risks, and provide some
ideas on how the RISC-V can keep the door open.

*Fabien joined AdaCore in 2010 after his master's degree in computer
 science at the EPITA (Paris). He is involved in real-time, embedded
 and hardware simulation technology. Maker/DIYer in his spare time,
 his projects include electronics, music and woodworking.*

## RISC-V ISA: Secure-IC’s Trojan Horse to Conquer Security

By Rafail Psiakis & **[Sylvain
Guilley](https://perso.telecom-paristech.fr/guilley)** ([Secure
IC](http://www.secure-ic.com)).

RISC-V is an emerging instruction-set architecture widely used inside
plenty of modern embedded SoCs. As the number of commercial vendors
adopting this architecture in their products increases, security
becomes a priority. In Secure-IC we use RISC-V implementations in many
of our products (e.g. PULPino in Securyzr HSM, PicoSoC in Cyber Escort
Unit, etc.). The advantage is that they are natively protected against
a lot of modern vulnerability exploits (e.g. Specter, Meltdow,
ZombieLoad and so on) due to the simplicity of their architecture.
For the rest of the vulnerability exploits, Secure-IC crypto-IPs have
been implemented around the cores to ensure the authenticity and the
confidentiality of the executed code. Due to the fact that RISCV ISA
is open-source, new verification methods can be proposed and evaluated
both at the architectural and the micro-architectural level.
Secure-IC with its solution named Cyber Escort Unit, verifies the
control flow of the code executed on a PicoRV32 core of the PicoSoC
system. The community also uses the open-source RISC-V ISA in order to
evaluate and test new attacks. In Secure-IC, RISC-V allows us to
penetrate into the architecture itself and test new attacks
(e.g. sidechannel attacks, Trojan injection, etc.) making it our
Trojan horse to conquer security.

## A RISC-V ISA Extension for Ultra-Low Power IoT Wireless Signal Processing

By Hela Belhadj Amor, **Carolynn Bernier**
([CEA LETI](http://www.leti-cea.fr)), Zdeněk Přikryl
([Codasip GmbH](http://www.codasip.com)).

We present an instruction-set extension to the open-source RISC-V ISA
(RV32IM) dedicated to ultra-low power (ULP) software-defined wireless
IoT transceivers. The custom instructions are tailored to the needs of
8/16/32-bit integer complex arithmetic typically required by
quadrature modulations. The proposed extension occupies only 3 major
opcodes and most instructions are designed to come at a near-zero
hardware and energy cost. A functional model of the new architecture
is used to evaluate four IoT baseband processing test benches: FSK
demodulation, LoRa preamble detection, 32-bit FFT and CORDIC
algorithm. Results show an average energy efficiency improvement of
more than 35% with up to 50% obtained for the LoRa preamble detection
algorithm.

*Carolynn Bernier is a wireless systems designer and architect
 specialized in IoT communications. She has been involved in RF and
 analog design activities at CEA, LETI since 2004, always with a focus
 on ultra-low power design methodologies. Her recent interests are in
 low complexity algorithms for machine learning applied to deeply
 embedded systems.*

## An Out-of-Order RISCV Core Developed with HLS

By
**[Bernard Goossens](https://perso.univ-perp.fr/bernard.goossens/)**
& David Parello ([UPVD](https://webdali.univ-perp.fr)).

I will introduce the out-of-order RISC-V core (4-stage pipeline:
fetch + decode + rename; issue; writeback; commit) that we
developed. Everything is written entirely in C under Vivado HLS. The
code has been successfully tested on a Pynq card (free development
board provided to teacher-researchers upon request to Xilinx, as part
of the XUP initiative). This RISC-V core should be understood as a
basic kit on which users are invited to add extensions. The RISC-V
core does not contain any traditional accelerator for filling the
pipeline (eg branch predictor, caches) or floating operators (only the
set of 32-bit integer instructions has been implemented). It can serve
as a nutshell to add units and measure their effects, for example in
the context of educational projects. This RISC-V core is the core
brick of the LBP processor, a 64-cores manycore parallelizing
processor, under development.

*Bernard Goossens is Professor Emeritus at the
[University of Perpignan (UPVD)](https://webdali.univ-perp.fr).  He is
a member of the [Dali](http://www.lirmm.fr/recherche/equipes/dali)
team at [LIRMM](http://www.lirmm.fr). His research is on the capture
of very distant ILP.*

## Nanvix: An Operating System for Lightweight Manycores

By **[Pedro Henrique Penna](http://www.sites.google.com/view/ppenna)**
([PUC Minas](https://www.pucminas.br),
[UGA](https://www.univ-grenoble-alpes.fr)), Marcio Castro
([UFSC](http://ufsc.br), Brésil), François Broquedis
([INPG](http://www.grenoble-inp.fr)), Henrique Cota de Freitas
([PUC Minas](https://www.pucminas.br), Brésil), Jean-François Méhaut
([UGA](https://www.univ-grenoble-alpes.fr)).

Lightweight manycores differ from other high core count architectures
in two major architectural points: they feature a distributed memory
memory architecture; and they have their cores grouped into clusters
with small amounts of local memory available. Nanvix is general
purpose operating system (OS) that we designed from scratch to address
this next generation of processors. Our OS features a distributed
structure, in which traditional OS functionalities are implemented as
system servers; and it aims at a novel distributed paging system to
overcome architectural challenges of lightweight manycores. So far, a
great effort was made to make Nanvix portable and performant across
multiple targets, including industrial processors, such as MPPA
(Kalray), and academic lightweight manycores, like those based in
OpenRISC (OpTiMSoC) and RISC-V (PULP). Nanvix delivers these features
through a rich hardware abstraction layer (HAL), which we shall cover
in this talk. Nanvix source tree:
[``https://github.com/nanvix``](https://github.com/nanvix)

*Pedro Henrique Penna is a PhD Candidate in Informatics at Université
 Grenoble Alpes ([UGA](https://www.univ-grenoble-alpes.fr), France) in
 a cotutelle regime with Pontifícia Universidade Católica de Minas
 Gerais ([PUC Minas](https://www.pucminas.br), Brazil). In his thesis,
 Pedro is focused on the design of operating systems for lightweight
 manycore processors, and he works in collaboration with Kalray and
 Technical University of Munich (TUM, Germany) in this subject.  Pedro
 earned his Master Degree in Computer Science from Universidade
 Federal de Santa Catarina ([UFSC](http://ufsc.br), Brazil) in 2017,
 and he is the main designer of Nanvix.*

## Fast and Accurate Vulnerability Analysis of a RISC-V Processor

By Joseph Paturel, Simon Rokicki, Davide Pala,
**[Olivier Sentieys](http://people.rennes.inria.fr/Olivier.Sentieys/)**
([INRIA](https://www.inria.fr)).

As the RISC-V ISA gains traction in the safety-critical embedded
system domain, the development of hardened cores becomes
crucial. During this presentation, we present a vulnerability analysis
framework that allows for a fast and accurate estimation of processor
errors due to transient faults. The proposed set of tools is based on
the 32-bit RISC-V core Comet supporting the M extension. The generated
hardware's reaction to particle hits is characterized at the
gate-level using logic transient pulse width based on physical
transistor models. The Comet core being designed at the C level with
high-level synthesis tools, a fast, cycle- and bit-accurate simulator
can be derived from the core specifications. The previously extracted
error patterns are hence re-injected in the core during the execution
of applications and the system response is evaluated. This enables the
estimation of various vulnerability related metrics and can swiftly
drive the core-hardening design process. Results show that the
combinational logic needed to implement the M extension plays a
non-negligible role in the overall core vulnerability and that
multiple-bit upset patterns need to be considered.

*Olivier Sentieys is a Professor at the University of Rennes holding
 an INRIA Research Chair on Energy-Efficient Computing Systems. He is
 leading the [Cairn](https://team.inria.fr/cairn/) team common to
 Inria and IRISA Laboratory. He is also the head of the “Computer
 Architecture” department of IRISA. His research interests include
 system-level design, energy-efficiency, reconfigurable systems,
 hardware acceleration, approximate computing, fault tolerance, and
 energy harvesting sensor networks.*

## Challenges to Adoption of Open-Source RISC-V Processors

By **Zdeněk Přikryl** & Chris Jones
([Codasip GmbH](http://www.codasip.com)).

The RISC-V movement offers the greatest potential for innovation in
SoC design in a decade as a global ecosystem of contributors has
emerged. This movement offers unprecedented choice for both research
and for commercial consumers of processor technology. However, going
from open source RISC-V implementation to deployment in a real
production design requires cooperation of commercial IP and tools
suppliers. Codasip endeavours to bridge the gap between open source
and proprietary ISAs by offering professional grade RISC-V
implementations and development tools for end-users to modify and
optimize the architecture.  This presentation will discuss many of the
challenges of commercial use of RISC-V and Codasip’s approach to
addressing them in a manner that benefits the entire RISC-V community.

*Dr Zdeněk Přikryl is the co-founder and chief technology officer of
 [Codasip GmbH](http://www.codasip.com). He has over 10 years of
 experience in processor design from small MCUs to complex DSPs/VLIWs,
 along with embedded systems design, HLS, and simulation. Previously
 he was a Researcher at the Technical University of Brno and a
 software engineer at Red Hat.*

## Formal Proof of RISC-V Cores

By Alexandre Alves, Jimmy Le Rhun, Delphine Longuet, **Romain Soulat**
([Thales R&T](https://www.thalesgroup.com/en/global/innovation/research-and-technology)).

*Abstract and bio. TBA.*

## Development of a RV64GC IP core for the GRLIB IP Library

By **Jan Andersson** ([Cobham Gaisler](https://www.gaisler.com/)).

Cobham Gaisler is a world leader for space computing solutions where
the company provides radiation tolerant system-on-chip devices based
around the LEON processors. The building blocks for these devices are
also available as IP cores from the company in an IP library named
GRLIB. Cobham Gaisler is currently developing a RV64GC core that will
be provided as part of GRLIB. The presentation will cover why we see
RISC-V as a good fit for us after SPARC32 and what we see missing in
the ecosystem features

*Mr Jan Andersson's key competencies are in Management of projects
 developing complex digital systems, microprocessor architecture,
 fault-tolerance concepts, use of programmable logic, Field
 Programmable Gate Arrays for applications both in consumer
 electronics and harsh environments. Background: Master of Science
 degree in Computer Engineering focused on digital design and embedded
 systems. Working at Cobham Gaisler as Director of Engineering,
 overseeing hardware and software development efforts.*

## Open Source Processor IP for High Volume Production SoCs: CORE-V Family of RISC-V cores

By **Rick O’Connor** ([OpenHW Group](https://openhwgroup.org)).

This talk will provide a brief overview of the RISC-V instruction set
architecture and describe the CORE-V family of open-source cores that
implement the RISC-V ISA.  RISC-V (pronounced “risk-five”) is an open,
free ISA enabling a new era of processor innovation through open
standard collaboration. Born in academia and research, RISC-V ISA
delivers a new level of free, extensible software and hardware freedom
on architecture, paving the way for the next 50 years of computing
design and innovation.

CORE-V is a series of RISC-V based open-source processor cores with
associated processor subsystem IP, tools and software for electronic
system designers. The CORE-V family provides quality core IP in line
with industry best practices in both silicon and FPGA optimized
implementations. These cores can be used to facilitate rapid design
innovation and ensure effective manufacturability of production SoCs.

The session will describe barriers to adoption of open-source IP and
opportunities to overcome these barriers.

*Rick O'Connor is Founder and serves as President & CEO of the OpenHW
 Group a not-for-profit, global organization driven by its members and
 individual contributors where hardware and software designers
 collaborate on open source cores, related IP, tools and software
 projects.  The OpenHW Group Core-V Family is a series of RISC-V based
 open-source cores with associated processor subsystem IP, tools and
 software for electronic system designers.*

*Previously Rick was Executive Director of the RISC-V Foundation.
 RISC-V (pronounced “risk-five”) is a free and open ISA enabling a new
 era of processor innovation through open standard
 collaboration. Founded by Rick in 2015 with the support of over 40
 Founding Members, the RISC-V Foundation currently comprises more than
 235 members building an open, collaborative community of software and
 hardware innovators powering processor innovation. Born in academia
 and research, the RISC-V ISA delivers a new level of free, extensible
 software and hardware freedom on architecture, paving the way for the
 next 50 years of computing design and innovation.*

*Throughout his career, Rick has continued to be at the leading-edge
 of technology and corporate strategy and has held executive positions
 in many industry standards bodies.  Also, with many years of
 Executive level management experience in semiconductor and systems
 companies, Rick possesses a unique combination of business and
 technical skills and was responsible for the development of dozens of
 products accounting for over $750 million in revenue.  With very
 strong interpersonal skills, Rick is a regular speaker at key
 industry forums and has built a very strong professional network of
 key executives at many of the largest global technology firms
 including: Altera (now part of Intel), AMD, ARM, Cadence, Dell,
 Ericsson, Facebook, Google, Huawei, HP, IBM, IDT, Intel, Microsoft,
 Nokia, NXP, RedHat, Synopsys, Texas Instruments, Western Digital,
 Xilinx and many more.*

*Rick holds an Executive MBA degree from the University of Ottawa and
 is an honors graduate of the faculty of Electronics Engineering
 Technology at Algonquin College.*

## Ecological transition in ICT:  A role for open hardware ?

By **[David Bol](https://perso.uclouvain.be/david.bol)** ([ECS,
ICTEAM, UC
Louvain](https://uclouvain.be/en/research-institutes/icteam/ecs.html)).

Technological innovation has been fueling our financial economic
system focused on growth. It allowed the prosperity of developed
countries but also lead to technical obsolescence, accumulation of
technologies and life activity acceleration as by-products. Pursuing
the exponential economic growth on a finite planet lead us to an
environmental crisis whose climate change is the most visible
symptom. The emergency we are facing calls for an ecological
transition towards more sustainable society and economy based on
resource efficiency, sobriety and resilience. In this context, it is
important for engineers to critically analyze our technological
innovation habits.

This talk gives a provocative personal point of view of innovation
habits in the field of information and communication technologies
(ICT), where exponential trends (Moore’s law, Cooper’s law, Koomey’s
law) define the R&D roadmaps. We will discuss the potential role of
open(-source) hardware towards a more sustainable innovation Bio:

*David Bol is an assistant professor at the [Electronic Circuits and
 Systems
 (ECS)](https://uclouvain.be/en/research-institutes/icteam/ecs.html)
 group, ICTEAM Institute of UC Louvain (UCL). He received the Ph.D
 degree in Engineering Science from UCLouvain in 2008 in the field of
 ultra-low power digital nanoelectronics. In 2005, he was a visiting
 Ph.D student at the CNM, Sevilla, Spain, and in 2009, a postdoctoral
 researcher at intoPIX, Louvain-la-Neuve, Belgium. In 2010, he was a
 visiting postdoctoral researcher at the UC Berkeley Lab for
 Manufacturing and Sustainability, Berkeley, CA. In 2015, he
 participated to the creation of e-peas semiconductors spin-off
 company, Louvain-la-Neuve, Belgium. He leads the Electronic Circuits
 and Systems (ECS) research group focused on ultra-low-power design of
 smart-sensor integrated circuits for the IoT and biomedical
 applications with a specific focus on environmental
 sustainability. His personal IC interests include computing, power
 management, sensing and wireless communications.  Prof. Bol has
 authored more than 100 papers and conference contributions and holds
 three delivered patents. He (co-)received three Best
 Paper/Poster/Design Awards in IEEE conferences (ICCD 2008, SOI
 Conf. 2008, FTFC 2014). He serves as a reviewer for various IEEE
 journals/conferences and presented several keynotes in international
 conferences. On the private side, he pioneered the parental leave for
 male professors in his institute to spend time connecting to nature
 with his family.*

## Ara: design and implementation of a 1GHz+ 64-bit RISC-V Vector Processor in 22 nm FD-SOI

**[Matheus Cavalcante](mailto:matheusd@iis.ee.ethz.ch)**, [Fabian
Schuiki](mailto:fschuiki@iis.ee.ethz.ch), [Florian
Zaruba](mailto:zarubaf@iis.ee.ethz.ch), [Michael
Schaffner](mailto:mschaffner@iis.ee.ethz.ch) ([ETH
Zurich](https://iis.ee.ethz.ch)), [Luca
Benini](mailto:lbenini@iis.ee.ethz.ch) ([ETH
Zurich](https://iis.ee.ethz.ch) & [Universitá di
Bologna](http://www.dei.unibo.it)).

In this presentation, we will discuss about our design and
implementation experience with Ara, a vector processor based on
RISC-V's Vector Extension. Ara is implemented in GlobalFoundries 22FDX
FD-SOI technology. Its latest instance runs at up to 1.2 GHz in
nominal conditions, achieving a peak performance of up to 34 DP-GFLOPS
and an energy efficiency of up to 67 DP-GFLOPS/W. We will discuss the
performance and scalability of Ara, including its limitations under
different work loads, and show that the vector processor achieves a
high utilization of its functional units, up to 97%, when running a
256x256 matrix multiplication on sixteen lanes. Ara will be released
as part of the PULP platform using the same permissive Solderpad
license.

*Matheus Cavalcante received the M.Sc. degree in Integrated Electronic
 Systems from the Grenoble Institute of Technology (Phelma) in 2018
 and is currently pursuing his Ph.D. degree with the Digital Circuits
 and Systems group of Luca Benini at ETH Zurich. His research
 interests encompass high-performance computing (namely vector
 processing) and interconnection networks.*

## Coarse-grained power modelling and estimation using the Hardware Performance Monitors (HPM) of the RISC-V Rocket core

By [Caaliph Andriamisaina](mailto:caaliph.andriamisaina@cea.fr) ([CEA
LIST](http://www-list.cea.fr)), **[Pierre-Guillaume Le
Guay](pierre-guillaume.leguay@cea.fr)**, ([CEA
LIST](http://www-list.cea.fr)).

Power consumption monitoring of a processor is important for power
management to reduce power usage. Performance counters have been
widely used as proxies to estimate processor power online. This work
focus on the dynamic power modelling at register-transfer level (RTL)
of the RISC-V Rocket core, developed at the University of California,
Berkeley. By creating our power model at RTL level, we aim at
providing a coarse-grained estimation of power consumption, intended
at the early stage of development and for software developers.

The proposed power modelling methodology is based on the Hardware
Performance Monitors (HPM) defined in the RISC-V ISA and implemented
in the rocket-chip. These HPM monitor different events that take place
during instructions execution and reveal several amount of information
about power consumption. These events can be the number of cycles, the
number of instructions retired, caches misses, etc.

*Pierre-Guillaume Le Guay is a research engineer at CEA List,
 computing and design environment laboratory. He received the MSc
 degree in electrical engineering from Université Paris-Sud, Orsay, in
 2017. His current research topics focus on the power consumption
 estimation and modelling applied to embedded systems and multicore
 architectures.*

## Open-source processor IP in the SCRx family of the RISC-V compatible cores by Syntacore

By **[Ekaterina Berezina](https://www.linkedin.com/in/kate-berezina)**, Dmitry Gusev, Alexander Redkin ([Syntacore](https://syntacore.com)).

We describe family of the state-of-the-art RISC-V compatible processor
IP developed by Syntacore with a specific focus on the open-source
part of the product line.

As of 2019, SCRx family of RISC-V compatible cores includes eight
industry-grade cores with comprehensive features, targeted at
different applications: from compact microcontroller-class SCR1 core
to the high-performance 64bit Linux-capable multicore SCR7. The SCRx
cores deliver competitive performance at low power already in baseline
configurations. On the top, Syntacore provides one-stop
workload-specific customization service to enable customer designs
differentiation via significant performance and efficiency
boost. Industry-standard interfacing options support enables seamless
integration with existing designs.

We detail IP features, benchmarks, and collateral availability, with a
specific focus on the open-source SCR1 core. Initially introduced in
2017, SCR1 is one of the first fully open and free to use
industry-grade RISC-V compatible cores, which, since its introduction,
found extensive use both in the industry and in
academia. [``https://github.com/syntacore/scr1``](https://github.com/syntacore/scr1).

*Ekaterina Berezina is a Senior HW Engineer at Syntacore, where she
 contributes to the SCRx core family development and
 maintenance. Ekaterina has more than 6 years of experience in CPU IP
 development including architecture and microarchitecture definition,
 RTL design, testing and verification, area/timing/power optimization
 for ASIC and FPGA. She received her Master’s degree in Computer
 Science at Saint-Petersburg ITMO University and teaches Computer
 Architecture classes there.*

## Extending the CompCert certified compiler with instruction scheduling and control-flow integrity

By **[Sylvain Boulmé](http://www-verimag.imag.fr/~boulme)**
([ENSIMAG](http://ensimag.grenoble-inp.fr),
[Verimag](http://www-verimag.imag.fr), [Université
Grenoble-Alpes](https://www.univ-grenoble-alpes.fr)).

The CompCert certified compiler -- developed by [Xavier Leroy et
al. 2006-2018] at Inria -- is the first optimizing C compiler with a
formal proof of correctness.  In particular, it does not have the
middle-end bugs usually found in compilers [Yang et al. 2011].  It is
now used in real-time safety-critical industry [Bedin França et
al. 2012; Kästner et al. 2018]. It produces assembly code for several
processors including RISC-V (32 bit and 64 bit).

This talk will present two backends of CompCert developed at the
Verimag Laboratory of Grenoble.  The first one -- jointly developed
with Cyril Six (Kalray-Verimag) and David Monniaux (Verimag) --
targets the K1c processor of Kalray.  This backend features a
(certified) postpass scheduling which optimizes running-times of the
produced program by exploiting the instruction-level-parallelism of
this VLIW processor.

Our second (more experimental) backend targets the intrinSec processor
designed by Olivier Savry et al at LETI.  This secure cryptoprocessor
extends the RISC-V Instruction Set with instructions and registers for
protecting Control-Flow Integrity (CFI). With Paolo Torrini (Verimag),
we have modified the RISC-V backend of CompCert in order to include
these CFI protections. We are formally proving the functional
correctness of this backend.

*Sylvain Boulmé is Maître de conférences (assistant professor) at
 ENSIMAG (Engineering school in Information Technology).  His research
 applies the Coq proof assistant and the OCaml typechecker the
 verification of software in toolchains (in particular static
 analyzers and compilers).*

<p align="center">
<a href="http://www.cea-tech.fr"><img src="./media/logo_CEA.png" alt="Logo CEA" title="CEA" data-align="center" height="100"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="http://www.irtnanoelec.fr/fr/"><img src="./media/IRT-nanoelec.png" alt="Logo IRT Nanoelec" title="IRT" data-align="center" height="100"/></a>
</p>
