
# Keynotes

## It’s the Instruction Fetch Front-End, Stupid!

By [André Seznec](https://team.inria.fr/pacap/members/andre-seznec).

Achieving high single-thread performance remains a major challenge
even in the multicore era.  To achieve ultimate single-thread
performance, a uniprocessor needs a very efficient memory hierarchy,
an aggressive out-of-order execution core and a highly efficient
instruction fetch front-end engine.

In this talk, I will focus on the challenges for the design of the
instruction fetch frond-end in a very wide-issue processor.

*André Seznec is a Fellow Research Director (DR0) at IRISA/INRIA in
 Rennes.*

*His main research activity has ported on the architecture of
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

By [Nima Taherinejad](https://www.ict.tuwien.ac.at/staff/taherinejad).

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

By [Fabien Chouteau](https://twitter.com/deschips).

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

By Hela Belhadj Amor, **Carolynn Bernier**, Zdeněk Přikryl.

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

## Un cœur RISC-V OoO en HLS

By
**[Bernard Goossens](https://perso.univ-perp.fr/bernard.goossens/)**
et David Parello.

Je présenterai le cœur RISC-V out-of-order (pipeline à 4 étages :
fetch+decode+rename ; issue ; writeback ; commit) que j'ai
développé. Tout est entièrement écrit en C sous Vivado HLS. Le code a
été testé avec succès sur une carte Pynq (carte de développement
fournie gratuitement aux enseignants-chercheurs sur demande à Xilinx,
dans le cadre de l'initiative XUP). Ce cœur RISC-V doit être compris
comme un kit de base sur lequel les utilisateurs sont invités à
greffer des extensions. Le cœur RISC-V ne contient aucun accélérateur
classique pour remplir le pipeline (p.ex. prédicteur de sauts, caches)
ni d'opérateurs flottants (seul le jeu des instructions entières 32
bits a été implémenté). Il peut servir de noyau pour ajouter des
unités et mesurer leurs effets, par exemple dans le cadre de projets
pédagogiques. Ce cœur RISC-V est la brique de base du processeur LBP,
manycore parallélisant à 64 cœurs, en cours de développement.

Bernard Goossens est professeur émérite à l'Université de Perpignan
([UPVD](https://webdali.univ-perp.fr)). Il est membre de l'équipe Dali
du [LIRMM](http://www.lirmm.fr).

<p align="center">
<a href="http://www.cea-tech.fr"><img src="./media/logo_CEA.png" alt="Logo CEA" title="CEA" data-align="center" height="100"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="http://www.irtnanoelec.fr/fr/"><img src="./media/IRT-nanoelec.png" alt="Logo IRT Nanoelec" title="IRT" data-align="center" height="100"/></a>
</p>
