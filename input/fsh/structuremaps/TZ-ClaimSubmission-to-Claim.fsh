Mapping: TZClaimSubmissionToClaim
Id: tz-claim-submission-to-claim
Title: "TZ Claim Submission → FHIR Claim"
Description: """
Transforms a ZHSF Claim Submission request logical model
into a FHIR R5 Claim resource.
"""

Source: TZClaimSubmissionRequest
Target: TZClaim

* -> claim.status = 'active'
* -> claim.use = 'claim'

* mrn -> claim.patient.identifier.value
* facilityCode -> claim.provider.identifier.value

* claimsItems as srcItem -> claim.item as tgtItem
  * srcItem.itemCode -> tgtItem.productOrService.coding.code
  * srcItem.itemQuantity -> tgtItem.quantity.value
