# Tanzania NHIF → ZHSF Claim Submission

## FHIR® R5 Implementation Guide

---

This repository contains a **FHIR® R5 Implementation Guide (IG)** that defines the interoperability contract for **health insurance claim submission from NHIF-accredited facilities to the Zanzibar Health Services Fund (ZHSF)**.

The IG is authored using **FHIR Shorthand (FSH)** and **SUSHI**, and is based on the **Jembi Starter FHIR IG template**.
It is automatically built and published using the **FHIR® IG Auto-Builder**.

This repository **only contains the IG artifacts**.
A separate repository implements the **FHIR Facade** that consumes and validates against this IG.

---

## Scope (MVP)

The scope of this IG is intentionally reduced to support an MVP / case-study use case.

### In Scope

* Claim submission only
* NHIF → ZHSF flow
* Definition of FHIR profiles, terminology bindings, examples, and conformance rules
* Validation contract for facade-based integration

### Out of Scope

* Claim response, adjudication, or payment
* EMR interoperability
* Clinical data exchange beyond what is required for claim submission
* Infrastructure, server deployment, or runtime configuration

---

## FHIR® IG Auto-Builder (Continuous Build)

This repository uses the **FHIR® IG Auto-Builder** to automatically generate and publish the Implementation Guide whenever changes are pushed to the `master` branch.

### Enable Auto-Builder

Install the GitHub App for this repository:

👉 [https://github.com/apps/fhir-ig-builder](https://github.com/apps/fhir-ig-builder)

Once installed:

* Each push triggers an automatic IG build
* Build results and logs are available via GitHub
* The rendered IG is published publicly

---

## Published IG

After a successful build (usually within **3–5 minutes**), the IG will be available at:

```
https://build.fhir.org/ig/<github-org>/tanzania-nhif-zhsf-claims-ig/
```

Branch-specific builds can be accessed at:

```
https://build.fhir.org/ig/speedykom/tanzania-nhif-zhsf-claims-ig/branches/master/
```

> **Note**
> For details on the auto-builder process, see:
> [https://github.com/fhir/auto-ig-builder?tab=readme-ov-file#quick-start-guide](https://github.com/fhir/auto-ig-builder?tab=readme-ov-file#quick-start-guide)

---

## Repository Structure

```
input/
├── fsh/
│   ├── profiles/        # FHIR profiles (Claim, Patient, Organization, etc.)
│   ├── extensions/      # Custom extensions required by the use case
│   ├── code-systems/    # Local code systems
│   ├── value-sets/      # Value set bindings
│   └── examples/        # Required example instances
├── pagecontent/
│   ├── index.md         # IG landing page
│   └── usecase.md       # Claim submission use case
```

---

## Design Principles

* FHIR R5–compliant
* Minimal, use-case-driven profiling
* Explicit cardinalities and terminology bindings
* Designed to act as a **formal interoperability contract**
* Optimized for validation by an external **FHIR Facade**

---

## Status

**Draft – MVP / Case Study**

This IG will evolve as:

* The NHIF and ZHSF data dictionaries are finalized
* Cardinalities and terminology are confirmed
* Additional workflows are brought into scope