EdiGEM12
========

Introduction
------------
EdiGEM12 is the team from Edinburgh University taking part in the synthetic biology competition iGEM 2012. Part of EdiGEM's project is to implement the MtrCAB electron transfer system from *Shewanella* oneidensis in *E. coli*.

We model the electron transfer system in E.coli by using the stochastic, agent-based language Kappa and its implementation KaSim 3.0 (*). The whole process is divided into sub-processes which we try to model separately at first and combine at the end. The sub-processes can roughly be described in the following way:

1_TCA.ka
// Glucose -> TCA cycle -> Quinol 

2_NapC.ka
// Quinol -> NapC

3_MtrA.ka
// Electron transfer between NapC, NapAB, NrfA and MtrA	3_MtrA.ka

4_MtrABC.ka
// 4A. MtrA -> Fe soluble &
// 4B. MtrA -> MtrB -> MtrC

5_UFe.ka
// MtrC -> Unsoluble Iron (including the Flavins)


- - -
(*) More about Kappa and rule-based modelling can be found at http://kappalanguage.org/.
