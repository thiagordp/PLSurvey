# Programming Languages for the Law: A survey

A comprehensive survey and implementation repository exploring the application of various computational paradigms to legal formalization. This project compares how different families of programming languages represent legal rules, obligations, and reasoning processes.

## Overview

This repository contains formalizations of specific legal texts: the **GDPR Right to Data Portability** and **Italian Income Tax Law (TUIR)**. These are implemented across multiple computational frameworks. The goal is to evaluate these languages based on their expressiveness, transparency, and suitability for "Rules as Code" (RaC) initiatives.

## Case Studies

### 1. GDPR Article 20: Right to Data Portability
Focuses on modeling the conditions under which a data subject has the right to receive personal data or have it transmitted to another controller, including exceptions (e.g., Article 20(3) regarding public interest).
* **Key Formalisms:** Logic Programming (sCASP, ErgoAI), Action Languages (LPS, InstAL), CNLs (Logical English).

### 2. Italian Tax Law: TUIR Article 11
Focuses on the progressive calculation of personal income tax (IRPEF), including tax brackets, rates, and specific exemptions or discounts based on family composition and employment status.
* **Key Formalisms:** DSLs (OpenFisca, Catala).

## Repository Structure

The repository is organized by computational paradigm:

*   **[ActionLanguages/](./ActionLanguages/)**: Models legal rules as evolving states, events, and fluents.
    *   *Examples:* InstAL, LPS.
*   **[CNLs/](./CNLs/) (Controlled Natural Languages)**: Bridges the gap between legal prose and machine logic using restricted subsets of natural language.
    *   *Examples:* Logical English, DataLex/WithyScript, Blawx, L4.
*   **[DSLs/](./DSLs/) (Domain-Specific Languages)**: Languages specifically designed for legal or fiscal domains, often focusing on arithmetic precision or contract state.
    *   *Examples:* OpenFisca, Catala, Accord Project, Stipula.
*   **[LogicProgramming/](./LogicProgramming/)**: Declarative approaches that represent law as sets of logical facts and rules.
    *   *Examples:* Prolog, sCASP (ASP with constraints), ErgoAI (defeasible logic), Proleg.

---
*Developed as part of the ERC project Compulaw at the University of Bologna.*
