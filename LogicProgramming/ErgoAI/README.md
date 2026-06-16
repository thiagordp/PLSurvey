# Running the GDPR Portability Example

This example is written in **ErgoAI**, a knowledge representation and reasoning language built on top of XSB Prolog.

## Prerequisites

Install ErgoAI from the official project:

* GitHub: https://github.com/ErgoAI
* Documentation: https://coherentknowledge.com/ergo-documentation/

ErgoAI can be used either through:

* **ErgoAI Studio** (recommended)
* **Ergo command-line shell**

## Project Structure

```text
ErgoAI/
│
├── ontology.ergo
├── facts.ergo
├── rights.ergo
├── exceptions.ergo
├── priorities.ergo
├── queries.ergo
└── main.ergo
```

The file `main.ergo` includes all other source files.

```prolog
#include "ontology.ergo"
#include "facts.ergo"
#include "rights.ergo"
#include "exceptions.ergo"
#include "priorities.ergo"
#include "queries.ergo"
```

## Start ErgoAI

Launch the Ergo shell:

```bash
ergo
```

or open the project in ErgoAI Studio.

## Load the Knowledge Base

From the Ergo prompt:

```prolog
[main].
```

or equivalently:

```prolog
['main.ergo'].
```

This compiles and loads the complete knowledge base into the default module.

Expected output:

```text
Compilation successful.
Knowledge base loaded.
```

## Run Queries

Check whether a portability right exists:

```prolog
?- ?R:PortabilityRight.
```

Find all portability rights for a specific person:

```prolog
?- portability_for(alice, ?R).
```

Check transmission rights:

```prolog
?- ?R:TransmissionRight.
```

## Explanation Facilities

ErgoAI provides built-in explanation support.

For any answer, use the Studio's:

* Why?
* Why Not?

tools to inspect the derivation tree and understand which rules, facts, and priorities were applied.

## Reloading After Changes

To reload the project:

```prolog
[main].
```

To incrementally add another file without replacing the existing knowledge base:

```prolog
[+new_rules].
```

Ergo distinguishes between:

* **load** (`[file].`) → replaces the module contents
* **add** (`[+file].`) → extends the existing module

## Exit

```prolog
\halt.
```

## Expected Results

### Alice

```prolog
?- portability_for(alice, ?R).
```

returns:

```text
?R = portability(acme,customer_data,alice)
```

### Bob

```prolog
?- portability_for(bob, ?R).
```

returns no answer because the Article 20(3) exception defeats the default portability rule through:

```prolog
\overrides(exception, defaultRule).
```

This demonstrates ErgoAI's defeasible reasoning and conflict-resolution capabilities.
