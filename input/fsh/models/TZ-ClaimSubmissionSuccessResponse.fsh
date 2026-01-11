Logical: TZClaimSubmissionSuccessResponse
Id: tz-claim-submission-success-response
Title: "TZ Claim Submission Success Response (ZHSF JSON)"
Description: """
Logical model representing a successful ZHSF claim submission response.
Returned when a claim is accepted and registered by ZHSF.
"""

* status 1..1 string "Status" "Submission status (e.g. SUCCESS)"
* claimReference 1..1 string "Claim reference" "ZHSF-generated claim reference number"
* message 0..1 string "Message" "Optional informational message"
* processedAt 1..1 dateTime "Processed at" "Timestamp when the claim was processed by ZHSF"
