## Use case: Claim Submission (NHIF Facility → ZHSF)

### Description
A facility submits a claim to ZHSF using the ZHSF integration API (mediated by ZHIL in the reference architecture).

### Endpoint (logical)
This IG constrains the **payload structure** for Claim Submission, based on the client-provided ZHSF API documentation.

### Request payload (ZHSF JSON)
The request is represented in this IG as a **Logical Model**:
- `TZClaimSubmissionRequest`

### Response payloads (ZHSF JSON)
The success and error responses are represented as Logical Models:
- `TZClaimSubmissionSuccessResponse`
- `TZClaimSubmissionErrorResponse`

### Transformation to FHIR
A `StructureMap` is provided to transform:
`TZClaimSubmissionRequest` → `Claim` (and referenced resources if required)
