Logical: TZClaimSubmissionErrorResponse
Id: tz-claim-submission-error-response
Title: "TZ Claim Submission Error Response (ZHSF JSON)"
Description: """
Logical model representing an error response returned by ZHSF
when a claim submission fails validation or processing.
"""

* status 1..1 string "Status" "Submission status (e.g. ERROR)"
* errorCode 1..1 string "Error code" "ZHSF-defined error code"
* errorMessage 1..1 string "Error message" "Human-readable error description"
* rejectedAt 1..1 dateTime "Rejected at" "Timestamp when the claim was rejected"
