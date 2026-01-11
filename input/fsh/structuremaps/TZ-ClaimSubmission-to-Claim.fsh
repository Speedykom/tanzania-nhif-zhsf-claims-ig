Mapping: TZClaimSubmissionToClaim
Id: tz-claim-submission-to-claim
Title: "TZ Claim Submission → FHIR Claim"
Description: """
Transforms a ZHSF Claim Submission request logical model
into a FHIR R5 Claim resource.
"""

Source: TZClaimSubmissionRequest
Target: Claim

* mrn -> patient.identifier.value
* facilityCode -> provider.identifier.value

* claimsItems.itemCode -> item.productOrService.coding.code
* claimsItems.itemQuantity -> item.quantity.value
