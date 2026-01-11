Profile: TZClaim
Parent: Claim
Id: tz-claim
Title: "TZ NHIF → ZHSF Claim"
Description: """
FHIR Claim resource representing a claim submitted from NHIF facilities
to ZHSF. Used as the primary target of the facade transformation.
"""

* status 1..1
* type 1..1
* use 1..1
* patient 1..1
* provider 1..1
* created 1..1
* item 1..*

* item.sequence 1..1
* item.productOrService 1..1
* item.quantity 1..1
