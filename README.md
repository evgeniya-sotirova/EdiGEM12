EdiGEM12
========

Introduction
------------
EdiGEM12 is the team from Edinburgh University taking part in the synthetic biology competition iGEM 2012. Part of EdiGEM's project is to implement the MtrCAB electron transfer system from *Shewanella* oneidensis in *E. coli*.

We model the electron transfer system in E.coli by using the stochastic, agent-based language Kappa and its implementation KaSim 3(*). The whole process is divided into sub-processes which we try to model separately at first and combine at the end. The sub-processes can roughly be described in the following way:

Sub-process:							Corresponding Kappa File:
1. Glucose -> TCA cycle -> Quinol				1_TCA.ka
2. Quinol -> NapC						2_NapC.ka
3. Electron transfer between NapC, NapAB, NrfA and MtrA		3_MtrA.ka
4. MtrA -> MtrB -> MtrC						4_MtrABC.ka
5. MtrC -> Unsoluble Iron (including the Flavins)		5_UFe.ka

How to Run the Files
--------------------
(The following is mainly intended for the biologists in EdiGEM.)







- - -
(*) More about Kappa and rule-based modelling can be found at http://kappalanguage.org/.
