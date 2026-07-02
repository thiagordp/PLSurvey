# Accord Project +- Adjusted Implementation

This directory contains an adjusted implementation of a smart legal contract using the [Accord Project](https://github.com/accordproject) framework.

## Overview
Unlike a standard, unmodified Accord Project template, this implementation has been specifically tailored to model the example.

## Structure
The implementation is composed of three main parts, following the standard Accord Project architecture:

1. **Text (`text/grammar.tem.md`)**: The natural language template of the contract, containing binding variables (e.g., `{{user}}`, `{{dataHolder}}`, and `{{deadlineDays}}`).
2. **Model (`model/model.cto`)**: The Concerto data model defining the assets (the contract itself), participants, and transactions (e.g., `DataRequest`, `DataDelivery`, `shareRequest`).
3. **Logic (`logic/logic.ergo`)**: The executable business logic written in Ergo. It handles:
   - Emitting an obligation when data is requested.
   - Enforcing deadlines for data delivery.
   - Checking permitted uses (e.g., blocking unauthorized sharing with a Gatekeeper).

## Note on the Implementation
This is an "adjusted" implementation, meaning it serves as a custom proof-of-concept for data usage tracking rather than a generic template.

