# Programming Languages for the Law: A survey

This repository contains the examples developed for *Programming the Law: a Survey*. 
It collects implementations of legal rules in different computational frameworks and supports the comparison presented in the paper.

## Overview

This repository contains formalisations of specific legal texts: the **GDPR Right to Data Portability** and **Italian Income Tax Law (TUIR)**. These are implemented across multiple computational frameworks. The goal is to evaluate these languages based on their expressiveness, transparency, and suitability for "Rules as Code" (RaC) initiatives.

## Case Studies

### 1. GDPR Article 20: Right to Data Portability
Focuses on modelling the conditions under which a data subject has the right to receive personal data or have it transmitted to another controller, including exceptions (e.g., Article 20(3) regarding public interest).
* **Key Formalisms:** Logic Programming, Action Languages, CNLs.

### 2. Italian Tax Law: TUIR Article 11
Focuses on the progressive calculation of personal income tax (IRPEF), including tax brackets, rates, and specific exemptions or discounts based on family composition and employment status.
* **Key Formalisms:** DSLs.

## Repository Structure

```text
.
├── ActionLanguages/
│   ├── InstAL/
│   └── LPS/
├── CNLs/
│   ├── Blawx/
│   ├── DataLexWithyScript/
│   ├── L4/
│   └── LogicalEnglish/
├── DSLs/
│   ├── AccordProject/
│   ├── Catala/
│   ├── LittleTon/
│   ├── OpenFisca/
│   └── Stipula/
├── LogicProgramming/
│   ├── Arg2Prolog/
│   ├── DefeasibleDeonticLogic_ASP/
│   ├── Epilog/
│   ├── ErgoAI/
│   ├── Proleg/
│   ├── Prolog/
│   └── sCASP/
└── README.md
````

## Running the Examples

Each framework has its own syntax, runtime, and execution model. Where execution is available, the relevant files and commands are provided inside the corresponding subdirectory.

Some examples require external tools, such as SWI-Prolog, s(CASP), Clingo, ErgoAI, OpenFisca, Catala, or framework-specific environments. Please consult each tool's documentation before running the examples.

## Relation to the Paper

The repository complements *Programming the Law: a Survey* by making the examples used in the analysis available for inspection and reuse. The paper provides the conceptual background, methodology, and comparison criteria; this repository provides the corresponding code examples.

## Citation

If you use this repository, please cite the accompanying paper:

> [CITATION]

## License

[LICENSE]

---
*Developed as part of the ERC project Compulaw at the University of Bologna.*
