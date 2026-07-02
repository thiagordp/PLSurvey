# Programming the Law: A survey

This repository contains the examples developed for *Programming the Law: a Survey*. It collects implementations of legal rules in different computational frameworks and supports the comparison presented in the paper.

The main shared example is Article 20 of the General Data Protection Regulation (GDPR), which concerns the right to data portability. This provision is used to compare how general-purpose legal programming languages represent legal preconditions, exceptions, requests, and obligations. Some domain-specific languages use different examples that better match their intended legal domain, such as tax law, benefits law, contract law, or property law.

The repository is intended as a companion resource for researchers and developers who want to inspect, reproduce, or extend the examples discussed in the survey.

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

## Contents

The repository is organised by programming paradigm:

* `LogicProgramming/` contains examples based on logic programming and related reasoning systems.
* `ActionLanguages/` contains examples that model legal rules through events, states, and transitions.
* `CNLs/` contains examples written in controlled natural languages or accessibility-oriented frameworks.
* `DSLs/` contains examples written in domain-specific languages for areas such as tax, benefits, contracts, and property law.

## Running the Examples

Each framework has its own syntax, runtime, and execution model. Where execution is available, the relevant files and commands are provided inside the corresponding subdirectory.

Some examples require external tools, such as SWI-Prolog, s(CASP), Clingo, ErgoAI, OpenFisca, Catala, or framework-specific environments. Please consult the documentation of each tool before running the examples.

## Relation to the Paper

The repository complements *Programming the Law: a Survey* by making the examples used in the analysis available for inspection and reuse. The paper provides the conceptual background, methodology, and comparison criteria; this repository provides the corresponding code examples.

## Citation

If you use this repository, please cite the accompanying paper:

> [CITATION]

## License

[LICENSE]