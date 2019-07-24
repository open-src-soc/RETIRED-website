<style>
H2 { color: blue}
</style>

# Keynotes

## It’s the Instruction Fetch Front-End, Stupid!

By [André Seznec](https://team.inria.fr/pacap/members/andre-seznec)
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

# Presentations

## Open source GPUs: How can RISC-V play a role?

By [Nima Taherinejad](https://www.ict.tuwien.ac.at/staff/taherinejad)
([TU Wien](https://www.ict.tuwien.ac.at)).

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

By [Fabien Chouteau](https://twitter.com/deschips)
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

By Rafail Psiakis &
[Sylvain Guilley](https://perso.telecom-paristech.fr/guilley)
([Secure IC](http://www.secure-ic.com)).

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

## Open Source Processor IP for High Volume Production SoCs : CORE-V Family of RISC-V cores

By Rick O'Connor ([OpenHW Group](https://www.openhwgroup.org))

*Abstract and bio. TBA.*

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

<p align="center">
<a href="http://www.cea-tech.fr"><img src="./media/logo_CEA.png" alt="Logo CEA" title="CEA" data-align="center" height="100"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="http://www.irtnanoelec.fr/fr/"><img src="./media/IRT-nanoelec.png" alt="Logo IRT Nanoelec" title="IRT" data-align="center" height="100"/></a>
</p>
