Instance: TZClaimExample
InstanceOf: TZClaim
Usage: #example
Title: "Example TZ Claim"

* status = #active
* use = #claim

* type.coding[0].system = "http://terminology.hl7.org/CodeSystem/claim-type"
* type.coding[0].code = #professional

* created = "2026-01-11"

* patient.reference = "Patient/example"
* provider.reference = "Organization/example"

* item[0].sequence = 1
* item[0].productOrService.coding[0].code = #HP156
* item[0].quantity.value = 1
