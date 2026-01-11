Logical: TZClaimSubmissionRequest
Id: tz-claim-submission-request
Title: "TZ Claim Submission Request (ZHSF JSON)"
Description: """
Logical model representing the ZHSF Claim Submission JSON request payload.
This model defines the facade contract and is validated before transformation
to FHIR R5 resources.
"""

* facilityCode 1..1 string "Facility code" "ZHSF facility identifier code"
* practitionerRegistrationNo 1..1 string "Practitioner registration number" "Registered practitioner identifier"
* authorizationNumber 1..1 string "Authorization number" "Authorization number issued during eligibility/approval"
* clinicalNotes 0..1 string "Clinical notes" "Optional free-text clinical notes"
* referralNo 0..1 integer "Referral number" "Referral number if applicable (often 0)"
* isAdmited 1..1 boolean "Is admitted" "Admission flag (true if inpatient)"
* mrn 1..1 string "Medical Record Number" "Facility medical record number"

* claimsItems 1..* BackboneElement "Claim items" "List of claim line items"
  * claimsItems.itemCode 1..1 string "Item code" "Service, medication, or procedure code"
  * claimsItems.itemQuantity 1..1 integer "Item quantity" "Quantity for the claim item"
  * claimsItems.frequency 0..1 string "Frequency" "Optional frequency information"
  * claimsItems.issuedNo 0..1 integer "Issued number" "Issued number when pre-approval is required"

* preliminaryDiagnosisCode 0..* string "Preliminary diagnosis codes" "Diagnosis codes captured during encounter"
* finalDiagnosisCode 0..* string "Final diagnosis codes" "Diagnosis codes confirmed after encounter"
