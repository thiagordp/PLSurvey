# OpenFisca Example Implementation: Italian Tax Law (TUIR)

This repository builds upon the [OpenFisca Country Template](https://github.com/openfisca/country-template), which provides a structured foundation for modeling country-specific tax-benefit systems. We customized this template to implement an example based on **Italian Tax Law**, specifically **Article 11 of the Consolidated Law on Income Tax (TUIR)**.

---

## Overview

### Purpose

This example demonstrates how to use OpenFisca to model real-world tax legislation. It automates tax calculations based on income, employment status, and family composition, showcasing how complex legal rules can be encoded as logical operations.

---

## Key Files and Directories

### 1. **Parameters**

Defines the tax brackets and thresholds used in the income tax calculation.

- **File:** `openfisca_country_template/parameters/taxes/tuir_income_tax.yaml`  
- **Contents:** Specifies the progressive tax rates defined by TUIR Article 11:
  - **23%** up to €15,000  
  - **25%** between €15,000 and €28,000  
  - **35%** between €28,000 and €50,000  
  - **43%** above €50,000  

### 2. **Variables**

Defines the logic for calculating income tax, employment-related discounts, and exemptions.

- **File:** `openfisca_country_template/variables/taxes.py`  
  - **Class:** `tuir_income_tax`  
  - **Function:** `calculate()` — Contains the logic to apply tax rates based on income.  
- **Employment Discount:** Also included in the `income.py` file, where conditions for employment-related deductions are defined.  
- **Special Clause:** The exemption for individuals with more than six children is also modeled here.  

### 3. **Tests**

Comprehensive test cases ensure the accuracy of the implementation.

- **Directory:** `openfisca_country_template/tests`  
  - **File:** `tuir_income_tax.yaml` — Validates that tax calculations match expected results for different scenarios.  

---

## How to Run the Example

1. **Run Tests:**  
   Verify the implementation by running the predefined tests.

   ```bash
   openfisca test openfisca_country_template/tests/tuir_income_tax.yaml --country-package=openfisca_country_template
   ```

---

## Directory and File Structure

```bash
.
├── openfisca_country_template
│   ├── parameters
│   │   └── taxes
│   │       └── tuir_income_tax.yaml    # Defines tax brackets for TUIR
│   ├── variables
│   │   ├── taxes.py                     # Main income tax calculation logic
│   │   └── income.py                    # Employment discount and family-based exemptions
│   ├── tests
│   │   └── tuir_income_tax.yaml         # Test cases for TUIR implementation
│   └── situation_examples               # JSON files with example scenarios
├── pyproject.toml                       # Project metadata and dependencies
└── README.md                            # This file
```

---

## Learn More

For a deeper understanding of OpenFisca, explore the official documentation:  
- **OpenFisca Documentation:** [openfisca.org/doc](https://openfisca.org/doc)  
