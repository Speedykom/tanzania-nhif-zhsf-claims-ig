# Tanzania NHIF → ZHSF Claim Submission (FHIR R5 IG)

This Implementation Guide defines the **interoperability contract** for the **NHIF → ZHSF claim submission** use case.

## Contract style (Facade Contract)
This IG does **not** require external systems to natively speak FHIR.

Instead:
- External systems submit **ZHSF JSON API payloads**
- The facade validates them against **FHIR Logical Models**
- The facade transforms them into **FHIR R5 resources** using **StructureMaps**

## MVP scope
In scope:
- Claim submission request/response payloads
- Mapping to FHIR R5 `Claim` (+ supporting resources as needed)
- Conformance rules required to validate and test the facade

Out of scope:
- Claim response/adjudication/payment workflows
- EMR interoperability beyond what is required for claim submission
