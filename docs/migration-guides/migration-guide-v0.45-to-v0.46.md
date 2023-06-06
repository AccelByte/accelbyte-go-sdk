<a name="v0.46.0"></a>

## [v0.46.0] - 2023-06-06

### BREAKING CHANGE

#### Following changes in OpenAPI spec:

1. **Legal Service**
    - Type changed in `legal-sdk/pkg/legalclient/agreement_with_namespace/retrieve_all_users_by_policy_version_1_responses.go` from array to non-array
        before:
        ```go
        type RetrieveAllUsersByPolicyVersion1OK struct {
            Payload []*legalclientmodels.PagedRetrieveUserAcceptedAgreementResponse
        }
        ```
        after:
        ```go
        type RetrieveAllUsersByPolicyVersion1OK struct {
           Payload *legalclientmodels.PagedRetrieveUserAcceptedAgreementResponse
		}
        ```