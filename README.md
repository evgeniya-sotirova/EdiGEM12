EdiGEM12
========

Introduction
------------
EdiGEM12 is the team from Edinburgh University taking part in the synthetic biology competition iGEM 2012. Part of EdiGEM's project is to implement the MtrCAB electron transfer system from *Shewanella* oneidensis in *E. coli*.

We model the electron transfer system in *E.coli* by using the stochastic, agent-based language Kappa and its implementation KaSim 3.0 (*). The whole process is divided into sub-processes which we try to model separately at first and combine at the end. The sub-processes can roughly be described in the following way:

1_TCA.ka
# Glucose -> TCA cycle -> Quinol

2_NapC.ka
# Quinol -> NapC 

3_MtrABC.ka
# NapC -> MtrA-> MtrB or Fe soluble

4_UFe.ka
# MtrC -> Flavins -> Fe insoluble

5.ka
# Combines 3. and 4.

The file "Electron Transfer - Process Description.pdf" contains a detailed description of the used information and assutions in the modelling.

- - -
(*) More about Kappa and rule-based modelling can be found at http://kappalanguage.org/.
