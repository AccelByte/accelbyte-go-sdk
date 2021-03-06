# Legal Service Index

&nbsp;

## Operations

### Agreement Wrapper:  [Agreement](../services-api/pkg/service/legal/agreement.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/agreement/admin/agreements/localized-policy-versions/preferences/namespaces/{namespace}/userId/{userId}` | PATCH | ChangePreferenceConsentShort | [ChangePreferenceConsentShort](../legal-sdk/pkg/legalclient/agreement/agreement_client.go) | [ChangePreferenceConsentShort](../services-api/pkg/service/legal/agreement.go) | [ChangePreferenceConsentShort](../samples/cli/cmd/legal/agreement/changePreferenceConsent.go) |
| `/agreement/admin/agreements/policies/users/{userId}` | GET | RetrieveAcceptedAgreementsShort | [RetrieveAcceptedAgreementsShort](../legal-sdk/pkg/legalclient/agreement/agreement_client.go) | [RetrieveAcceptedAgreementsShort](../services-api/pkg/service/legal/agreement.go) | [RetrieveAcceptedAgreementsShort](../samples/cli/cmd/legal/agreement/retrieveAcceptedAgreements.go) |
| `/agreement/admin/agreements/policy-versions/users` | GET | RetrieveAllUsersByPolicyVersionShort | [RetrieveAllUsersByPolicyVersionShort](../legal-sdk/pkg/legalclient/agreement/agreement_client.go) | [RetrieveAllUsersByPolicyVersionShort](../services-api/pkg/service/legal/agreement.go) | [RetrieveAllUsersByPolicyVersionShort](../samples/cli/cmd/legal/agreement/retrieveAllUsersByPolicyVersion.go) |
| `/agreement/public/agreements/localized-policy-versions/preferences` | PATCH | ChangePreferenceConsent1Short | [ChangePreferenceConsent1Short](../legal-sdk/pkg/legalclient/agreement/agreement_client.go) | [ChangePreferenceConsent1Short](../services-api/pkg/service/legal/agreement.go) | [ChangePreferenceConsent1Short](../samples/cli/cmd/legal/agreement/changePreferenceConsent1.go) |
| `/agreement/public/agreements/localized-policy-versions/{localizedPolicyVersionId}` | POST | AcceptVersionedPolicyShort | [AcceptVersionedPolicyShort](../legal-sdk/pkg/legalclient/agreement/agreement_client.go) | [AcceptVersionedPolicyShort](../services-api/pkg/service/legal/agreement.go) | [AcceptVersionedPolicyShort](../samples/cli/cmd/legal/agreement/acceptVersionedPolicy.go) |
| `/agreement/public/agreements/policies` | GET | RetrieveAgreementsPublicShort | [RetrieveAgreementsPublicShort](../legal-sdk/pkg/legalclient/agreement/agreement_client.go) | [RetrieveAgreementsPublicShort](../services-api/pkg/service/legal/agreement.go) | [RetrieveAgreementsPublicShort](../samples/cli/cmd/legal/agreement/retrieveAgreementsPublic.go) |
| `/agreement/public/agreements/policies` | POST | BulkAcceptVersionedPolicyShort | [BulkAcceptVersionedPolicyShort](../legal-sdk/pkg/legalclient/agreement/agreement_client.go) | [BulkAcceptVersionedPolicyShort](../services-api/pkg/service/legal/agreement.go) | [BulkAcceptVersionedPolicyShort](../samples/cli/cmd/legal/agreement/bulkAcceptVersionedPolicy.go) |
| `/agreement/public/agreements/policies/namespaces/{namespace}/countries/{countryCode}/clients/{clientId}/users/{userId}` | POST | IndirectBulkAcceptVersionedPolicyV2Short | [IndirectBulkAcceptVersionedPolicyV2Short](../legal-sdk/pkg/legalclient/agreement/agreement_client.go) | [IndirectBulkAcceptVersionedPolicyV2Short](../services-api/pkg/service/legal/agreement.go) | [IndirectBulkAcceptVersionedPolicyV2Short](../samples/cli/cmd/legal/agreement/indirectBulkAcceptVersionedPolicyV2.go) |
| `/agreement/public/agreements/policies/users/{userId}` | POST | IndirectBulkAcceptVersionedPolicy1Short | [IndirectBulkAcceptVersionedPolicy1Short](../legal-sdk/pkg/legalclient/agreement/agreement_client.go) | [IndirectBulkAcceptVersionedPolicy1Short](../services-api/pkg/service/legal/agreement.go) | [IndirectBulkAcceptVersionedPolicy1Short](../samples/cli/cmd/legal/agreement/indirectBulkAcceptVersionedPolicy1.go) |

### Base Legal Policies Wrapper:  [BaseLegalPolicies](../services-api/pkg/service/legal/baseLegalPolicies.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/agreement/admin/base-policies` | GET | RetrieveAllLegalPoliciesShort | [RetrieveAllLegalPoliciesShort](../legal-sdk/pkg/legalclient/base_legal_policies/base_legal_policies_client.go) | [RetrieveAllLegalPoliciesShort](../services-api/pkg/service/legal/baseLegalPolicies.go) | [RetrieveAllLegalPoliciesShort](../samples/cli/cmd/legal/baseLegalPolicies/retrieveAllLegalPolicies.go) |
| `/agreement/admin/base-policies` | POST | CreatePolicyShort | [CreatePolicyShort](../legal-sdk/pkg/legalclient/base_legal_policies/base_legal_policies_client.go) | [CreatePolicyShort](../services-api/pkg/service/legal/baseLegalPolicies.go) | [CreatePolicyShort](../samples/cli/cmd/legal/baseLegalPolicies/createPolicy.go) |
| `/agreement/admin/base-policies/{basePolicyId}` | GET | RetrieveSinglePolicyShort | [RetrieveSinglePolicyShort](../legal-sdk/pkg/legalclient/base_legal_policies/base_legal_policies_client.go) | [RetrieveSinglePolicyShort](../services-api/pkg/service/legal/baseLegalPolicies.go) | [RetrieveSinglePolicyShort](../samples/cli/cmd/legal/baseLegalPolicies/retrieveSinglePolicy.go) |
| `/agreement/admin/base-policies/{basePolicyId}` | PATCH | PartialUpdatePolicyShort | [PartialUpdatePolicyShort](../legal-sdk/pkg/legalclient/base_legal_policies/base_legal_policies_client.go) | [PartialUpdatePolicyShort](../services-api/pkg/service/legal/baseLegalPolicies.go) | [PartialUpdatePolicyShort](../samples/cli/cmd/legal/baseLegalPolicies/partialUpdatePolicy.go) |
| `/agreement/admin/base-policies/{basePolicyId}/countries/{countryCode}` | GET | RetrievePolicyCountryShort | [RetrievePolicyCountryShort](../legal-sdk/pkg/legalclient/base_legal_policies/base_legal_policies_client.go) | [RetrievePolicyCountryShort](../services-api/pkg/service/legal/baseLegalPolicies.go) | [RetrievePolicyCountryShort](../samples/cli/cmd/legal/baseLegalPolicies/retrievePolicyCountry.go) |
| `/agreement/admin/policy-types` | GET | RetrieveAllPolicyTypesShort | [RetrieveAllPolicyTypesShort](../legal-sdk/pkg/legalclient/base_legal_policies/base_legal_policies_client.go) | [RetrieveAllPolicyTypesShort](../services-api/pkg/service/legal/baseLegalPolicies.go) | [RetrieveAllPolicyTypesShort](../samples/cli/cmd/legal/baseLegalPolicies/retrieveAllPolicyTypes.go) |

### Localized Policy Versions Wrapper:  [LocalizedPolicyVersions](../services-api/pkg/service/legal/localizedPolicyVersions.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/agreement/admin/localized-policy-versions/versions/{policyVersionId}` | GET | RetrieveLocalizedPolicyVersionsShort | [RetrieveLocalizedPolicyVersionsShort](../legal-sdk/pkg/legalclient/localized_policy_versions/localized_policy_versions_client.go) | [RetrieveLocalizedPolicyVersionsShort](../services-api/pkg/service/legal/localizedPolicyVersions.go) | [RetrieveLocalizedPolicyVersionsShort](../samples/cli/cmd/legal/localizedPolicyVersions/retrieveLocalizedPolicyVersions.go) |
| `/agreement/admin/localized-policy-versions/versions/{policyVersionId}` | POST | CreateLocalizedPolicyVersionShort | [CreateLocalizedPolicyVersionShort](../legal-sdk/pkg/legalclient/localized_policy_versions/localized_policy_versions_client.go) | [CreateLocalizedPolicyVersionShort](../services-api/pkg/service/legal/localizedPolicyVersions.go) | [CreateLocalizedPolicyVersionShort](../samples/cli/cmd/legal/localizedPolicyVersions/createLocalizedPolicyVersion.go) |
| `/agreement/admin/localized-policy-versions/{localizedPolicyVersionId}` | GET | RetrieveSingleLocalizedPolicyVersionShort | [RetrieveSingleLocalizedPolicyVersionShort](../legal-sdk/pkg/legalclient/localized_policy_versions/localized_policy_versions_client.go) | [RetrieveSingleLocalizedPolicyVersionShort](../services-api/pkg/service/legal/localizedPolicyVersions.go) | [RetrieveSingleLocalizedPolicyVersionShort](../samples/cli/cmd/legal/localizedPolicyVersions/retrieveSingleLocalizedPolicyVersion.go) |
| `/agreement/admin/localized-policy-versions/{localizedPolicyVersionId}` | PUT | UpdateLocalizedPolicyVersionShort | [UpdateLocalizedPolicyVersionShort](../legal-sdk/pkg/legalclient/localized_policy_versions/localized_policy_versions_client.go) | [UpdateLocalizedPolicyVersionShort](../services-api/pkg/service/legal/localizedPolicyVersions.go) | [UpdateLocalizedPolicyVersionShort](../samples/cli/cmd/legal/localizedPolicyVersions/updateLocalizedPolicyVersion.go) |
| `/agreement/admin/localized-policy-versions/{localizedPolicyVersionId}/attachments` | POST | RequestPresignedURLShort | [RequestPresignedURLShort](../legal-sdk/pkg/legalclient/localized_policy_versions/localized_policy_versions_client.go) | [RequestPresignedURLShort](../services-api/pkg/service/legal/localizedPolicyVersions.go) | [RequestPresignedURLShort](../samples/cli/cmd/legal/localizedPolicyVersions/requestPresignedURL.go) |
| `/agreement/admin/localized-policy-versions/{localizedPolicyVersionId}/default` | PATCH | SetDefaultPolicyShort | [SetDefaultPolicyShort](../legal-sdk/pkg/legalclient/localized_policy_versions/localized_policy_versions_client.go) | [SetDefaultPolicyShort](../services-api/pkg/service/legal/localizedPolicyVersions.go) | [SetDefaultPolicyShort](../samples/cli/cmd/legal/localizedPolicyVersions/setDefaultPolicy.go) |
| `/agreement/public/localized-policy-versions/{localizedPolicyVersionId}` | GET | RetrieveSingleLocalizedPolicyVersion1Short | [RetrieveSingleLocalizedPolicyVersion1Short](../legal-sdk/pkg/legalclient/localized_policy_versions/localized_policy_versions_client.go) | [RetrieveSingleLocalizedPolicyVersion1Short](../services-api/pkg/service/legal/localizedPolicyVersions.go) | [RetrieveSingleLocalizedPolicyVersion1Short](../samples/cli/cmd/legal/localizedPolicyVersions/retrieveSingleLocalizedPolicyVersion1.go) |

### Admin User Agreement Wrapper:  [AdminUserAgreement](../services-api/pkg/service/legal/adminUserAgreement.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/agreement/admin/namespaces/{namespace}/users/{userId}/agreements/policies` | POST | IndirectBulkAcceptVersionedPolicyShort | [IndirectBulkAcceptVersionedPolicyShort](../legal-sdk/pkg/legalclient/admin_user_agreement/admin_user_agreement_client.go) | [IndirectBulkAcceptVersionedPolicyShort](../services-api/pkg/service/legal/adminUserAgreement.go) | [IndirectBulkAcceptVersionedPolicyShort](../samples/cli/cmd/legal/adminUserAgreement/indirectBulkAcceptVersionedPolicy.go) |

### Admin User Eligibilities Wrapper:  [AdminUserEligibilities](../services-api/pkg/service/legal/adminUserEligibilities.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/agreement/admin/namespaces/{namespace}/users/{userId}/eligibilities` | GET | AdminRetrieveEligibilitiesShort | [AdminRetrieveEligibilitiesShort](../legal-sdk/pkg/legalclient/admin_user_eligibilities/admin_user_eligibilities_client.go) | [AdminRetrieveEligibilitiesShort](../services-api/pkg/service/legal/adminUserEligibilities.go) | [AdminRetrieveEligibilitiesShort](../samples/cli/cmd/legal/adminUserEligibilities/adminRetrieveEligibilities.go) |

### Policies Wrapper:  [Policies](../services-api/pkg/service/legal/policies.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/agreement/admin/policies/countries/{countryCode}` | GET | RetrievePoliciesShort | [RetrievePoliciesShort](../legal-sdk/pkg/legalclient/policies/policies_client.go) | [RetrievePoliciesShort](../services-api/pkg/service/legal/policies.go) | [RetrievePoliciesShort](../samples/cli/cmd/legal/policies/retrievePolicies.go) |
| `/agreement/admin/policies/{policyId}` | PATCH | UpdatePolicyShort | [UpdatePolicyShort](../legal-sdk/pkg/legalclient/policies/policies_client.go) | [UpdatePolicyShort](../services-api/pkg/service/legal/policies.go) | [UpdatePolicyShort](../samples/cli/cmd/legal/policies/updatePolicy.go) |
| `/agreement/admin/policies/{policyId}/default` | PATCH | SetDefaultPolicy1Short | [SetDefaultPolicy1Short](../legal-sdk/pkg/legalclient/policies/policies_client.go) | [SetDefaultPolicy1Short](../services-api/pkg/service/legal/policies.go) | [SetDefaultPolicy1Short](../samples/cli/cmd/legal/policies/setDefaultPolicy1.go) |
| `/agreement/public/policies/countries/{countryCode}` | GET | RetrieveLatestPoliciesShort | [RetrieveLatestPoliciesShort](../legal-sdk/pkg/legalclient/policies/policies_client.go) | [RetrieveLatestPoliciesShort](../services-api/pkg/service/legal/policies.go) | [RetrieveLatestPoliciesShort](../samples/cli/cmd/legal/policies/retrieveLatestPolicies.go) |
| `/agreement/public/policies/namespaces/{namespace}` | GET | RetrieveLatestPoliciesPublicShort | [RetrieveLatestPoliciesPublicShort](../legal-sdk/pkg/legalclient/policies/policies_client.go) | [RetrieveLatestPoliciesPublicShort](../services-api/pkg/service/legal/policies.go) | [RetrieveLatestPoliciesPublicShort](../samples/cli/cmd/legal/policies/retrieveLatestPoliciesPublic.go) |
| `/agreement/public/policies/namespaces/{namespace}/countries/{countryCode}` | GET | RetrieveLatestPoliciesByNamespaceAndCountryPublicShort | [RetrieveLatestPoliciesByNamespaceAndCountryPublicShort](../legal-sdk/pkg/legalclient/policies/policies_client.go) | [RetrieveLatestPoliciesByNamespaceAndCountryPublicShort](../services-api/pkg/service/legal/policies.go) | [RetrieveLatestPoliciesByNamespaceAndCountryPublicShort](../samples/cli/cmd/legal/policies/retrieveLatestPoliciesByNamespaceAndCountryPublic.go) |

### Policy Versions Wrapper:  [PolicyVersions](../services-api/pkg/service/legal/policyVersions.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/agreement/admin/policies/versions/{policyVersionId}` | PATCH | UpdatePolicyVersionShort | [UpdatePolicyVersionShort](../legal-sdk/pkg/legalclient/policy_versions/policy_versions_client.go) | [UpdatePolicyVersionShort](../services-api/pkg/service/legal/policyVersions.go) | [UpdatePolicyVersionShort](../samples/cli/cmd/legal/policyVersions/updatePolicyVersion.go) |
| `/agreement/admin/policies/versions/{policyVersionId}/latest` | PATCH | PublishPolicyVersionShort | [PublishPolicyVersionShort](../legal-sdk/pkg/legalclient/policy_versions/policy_versions_client.go) | [PublishPolicyVersionShort](../services-api/pkg/service/legal/policyVersions.go) | [PublishPolicyVersionShort](../samples/cli/cmd/legal/policyVersions/publishPolicyVersion.go) |
| `/agreement/admin/policies/{policyId}/versions` | GET | RetrieveSinglePolicyVersionShort | [RetrieveSinglePolicyVersionShort](../legal-sdk/pkg/legalclient/policy_versions/policy_versions_client.go) | [RetrieveSinglePolicyVersionShort](../services-api/pkg/service/legal/policyVersions.go) | [RetrieveSinglePolicyVersionShort](../samples/cli/cmd/legal/policyVersions/retrieveSinglePolicyVersion.go) |
| `/agreement/admin/policies/{policyId}/versions` | POST | CreatePolicyVersionShort | [CreatePolicyVersionShort](../legal-sdk/pkg/legalclient/policy_versions/policy_versions_client.go) | [CreatePolicyVersionShort](../services-api/pkg/service/legal/policyVersions.go) | [CreatePolicyVersionShort](../samples/cli/cmd/legal/policyVersions/createPolicyVersion.go) |

### UserInfo Wrapper:  [UserInfo](../services-api/pkg/service/legal/userInfo.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/agreement/admin/userInfo` | GET | GetUserInfoStatusShort | [GetUserInfoStatusShort](../legal-sdk/pkg/legalclient/user_info/user_info_client.go) | [GetUserInfoStatusShort](../services-api/pkg/service/legal/userInfo.go) | [GetUserInfoStatusShort](../samples/cli/cmd/legal/userInfo/getUserInfoStatus.go) |
| `/agreement/admin/userInfo` | PUT | SyncUserInfoShort | [SyncUserInfoShort](../legal-sdk/pkg/legalclient/user_info/user_info_client.go) | [SyncUserInfoShort](../services-api/pkg/service/legal/userInfo.go) | [SyncUserInfoShort](../samples/cli/cmd/legal/userInfo/syncUserInfo.go) |
| `/agreement/admin/userInfo` | DELETE | InvalidateUserInfoCacheShort | [InvalidateUserInfoCacheShort](../legal-sdk/pkg/legalclient/user_info/user_info_client.go) | [InvalidateUserInfoCacheShort](../services-api/pkg/service/legal/userInfo.go) | [InvalidateUserInfoCacheShort](../samples/cli/cmd/legal/userInfo/invalidateUserInfoCache.go) |

### Anonymization Wrapper:  [Anonymization](../services-api/pkg/service/legal/anonymization.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/agreement/admin/users/{userId}/anonymization/agreements` | DELETE | AnonymizeUserAgreementShort | [AnonymizeUserAgreementShort](../legal-sdk/pkg/legalclient/anonymization/anonymization_client.go) | [AnonymizeUserAgreementShort](../services-api/pkg/service/legal/anonymization.go) | [AnonymizeUserAgreementShort](../samples/cli/cmd/legal/anonymization/anonymizeUserAgreement.go) |

### Eligibilities Wrapper:  [Eligibilities](../services-api/pkg/service/legal/eligibilities.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/agreement/public/eligibilities/namespaces/{namespace}` | GET | RetrieveEligibilitiesPublicShort | [RetrieveEligibilitiesPublicShort](../legal-sdk/pkg/legalclient/eligibilities/eligibilities_client.go) | [RetrieveEligibilitiesPublicShort](../services-api/pkg/service/legal/eligibilities.go) | [RetrieveEligibilitiesPublicShort](../samples/cli/cmd/legal/eligibilities/retrieveEligibilitiesPublic.go) |
| `/agreement/public/eligibilities/namespaces/{namespace}/countries/{countryCode}/clients/{clientId}/users/{userId}` | GET | RetrieveEligibilitiesPublicIndirectShort | [RetrieveEligibilitiesPublicIndirectShort](../legal-sdk/pkg/legalclient/eligibilities/eligibilities_client.go) | [RetrieveEligibilitiesPublicIndirectShort](../services-api/pkg/service/legal/eligibilities.go) | [RetrieveEligibilitiesPublicIndirectShort](../samples/cli/cmd/legal/eligibilities/retrieveEligibilitiesPublicIndirect.go) |

### Utility Wrapper:  [Utility](../services-api/pkg/service/legal/utility.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/agreement/public/readiness` | GET | CheckReadinessShort | [CheckReadinessShort](../legal-sdk/pkg/legalclient/utility/utility_client.go) | [CheckReadinessShort](../services-api/pkg/service/legal/utility.go) | [CheckReadinessShort](../samples/cli/cmd/legal/utility/checkReadiness.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `AcceptAgreementRequest` | [AcceptAgreementRequest ](../legal-sdk/pkg/legalclientmodels/accept_agreement_request.go) |
| `AcceptAgreementResponse` | [AcceptAgreementResponse ](../legal-sdk/pkg/legalclientmodels/accept_agreement_response.go) |
| `CreateBasePolicyRequest` | [CreateBasePolicyRequest ](../legal-sdk/pkg/legalclientmodels/create_base_policy_request.go) |
| `CreateBasePolicyResponse` | [CreateBasePolicyResponse ](../legal-sdk/pkg/legalclientmodels/create_base_policy_response.go) |
| `CreateLocalizedPolicyVersionRequest` | [CreateLocalizedPolicyVersionRequest ](../legal-sdk/pkg/legalclientmodels/create_localized_policy_version_request.go) |
| `CreateLocalizedPolicyVersionResponse` | [CreateLocalizedPolicyVersionResponse ](../legal-sdk/pkg/legalclientmodels/create_localized_policy_version_response.go) |
| `CreatePolicyVersionRequest` | [CreatePolicyVersionRequest ](../legal-sdk/pkg/legalclientmodels/create_policy_version_request.go) |
| `CreatePolicyVersionResponse` | [CreatePolicyVersionResponse ](../legal-sdk/pkg/legalclientmodels/create_policy_version_response.go) |
| `ErrorEntity` | [ErrorEntity ](../legal-sdk/pkg/legalclientmodels/error_entity.go) |
| `FieldValidationError` | [FieldValidationError ](../legal-sdk/pkg/legalclientmodels/field_validation_error.go) |
| `LegalReadinessStatusResponse` | [LegalReadinessStatusResponse ](../legal-sdk/pkg/legalclientmodels/legal_readiness_status_response.go) |
| `LocalizedPolicyVersionObject` | [LocalizedPolicyVersionObject ](../legal-sdk/pkg/legalclientmodels/localized_policy_version_object.go) |
| `PagedRetrieveUserAcceptedAgreementResponse` | [PagedRetrieveUserAcceptedAgreementResponse ](../legal-sdk/pkg/legalclientmodels/paged_retrieve_user_accepted_agreement_response.go) |
| `Paging` | [Paging ](../legal-sdk/pkg/legalclientmodels/paging.go) |
| `PolicyObject` | [PolicyObject ](../legal-sdk/pkg/legalclientmodels/policy_object.go) |
| `PolicyVersionObject` | [PolicyVersionObject ](../legal-sdk/pkg/legalclientmodels/policy_version_object.go) |
| `PolicyVersionWithLocalizedVersionObject` | [PolicyVersionWithLocalizedVersionObject ](../legal-sdk/pkg/legalclientmodels/policy_version_with_localized_version_object.go) |
| `RetrieveAcceptedAgreementResponse` | [RetrieveAcceptedAgreementResponse ](../legal-sdk/pkg/legalclientmodels/retrieve_accepted_agreement_response.go) |
| `RetrieveBasePolicyResponse` | [RetrieveBasePolicyResponse ](../legal-sdk/pkg/legalclientmodels/retrieve_base_policy_response.go) |
| `RetrieveLocalizedPolicyVersionPublicResponse` | [RetrieveLocalizedPolicyVersionPublicResponse ](../legal-sdk/pkg/legalclientmodels/retrieve_localized_policy_version_public_response.go) |
| `RetrieveLocalizedPolicyVersionResponse` | [RetrieveLocalizedPolicyVersionResponse ](../legal-sdk/pkg/legalclientmodels/retrieve_localized_policy_version_response.go) |
| `RetrievePolicyPublicResponse` | [RetrievePolicyPublicResponse ](../legal-sdk/pkg/legalclientmodels/retrieve_policy_public_response.go) |
| `RetrievePolicyResponse` | [RetrievePolicyResponse ](../legal-sdk/pkg/legalclientmodels/retrieve_policy_response.go) |
| `RetrievePolicyTypeResponse` | [RetrievePolicyTypeResponse ](../legal-sdk/pkg/legalclientmodels/retrieve_policy_type_response.go) |
| `RetrievePolicyVersionResponse` | [RetrievePolicyVersionResponse ](../legal-sdk/pkg/legalclientmodels/retrieve_policy_version_response.go) |
| `RetrieveUserAcceptedAgreementResponse` | [RetrieveUserAcceptedAgreementResponse ](../legal-sdk/pkg/legalclientmodels/retrieve_user_accepted_agreement_response.go) |
| `RetrieveUserEligibilitiesIndirectResponse` | [RetrieveUserEligibilitiesIndirectResponse ](../legal-sdk/pkg/legalclientmodels/retrieve_user_eligibilities_indirect_response.go) |
| `RetrieveUserEligibilitiesResponse` | [RetrieveUserEligibilitiesResponse ](../legal-sdk/pkg/legalclientmodels/retrieve_user_eligibilities_response.go) |
| `RetrieveUserInfoCacheStatusResponse` | [RetrieveUserInfoCacheStatusResponse ](../legal-sdk/pkg/legalclientmodels/retrieve_user_info_cache_status_response.go) |
| `UpdateBasePolicyRequest` | [UpdateBasePolicyRequest ](../legal-sdk/pkg/legalclientmodels/update_base_policy_request.go) |
| `UpdateBasePolicyResponse` | [UpdateBasePolicyResponse ](../legal-sdk/pkg/legalclientmodels/update_base_policy_response.go) |
| `UpdateLocalizedPolicyVersionRequest` | [UpdateLocalizedPolicyVersionRequest ](../legal-sdk/pkg/legalclientmodels/update_localized_policy_version_request.go) |
| `UpdateLocalizedPolicyVersionResponse` | [UpdateLocalizedPolicyVersionResponse ](../legal-sdk/pkg/legalclientmodels/update_localized_policy_version_response.go) |
| `UpdatePolicyRequest` | [UpdatePolicyRequest ](../legal-sdk/pkg/legalclientmodels/update_policy_request.go) |
| `UpdatePolicyVersionRequest` | [UpdatePolicyVersionRequest ](../legal-sdk/pkg/legalclientmodels/update_policy_version_request.go) |
| `UpdatePolicyVersionResponse` | [UpdatePolicyVersionResponse ](../legal-sdk/pkg/legalclientmodels/update_policy_version_response.go) |
| `UploadLocalizedPolicyVersionAttachmentResponse` | [UploadLocalizedPolicyVersionAttachmentResponse ](../legal-sdk/pkg/legalclientmodels/upload_localized_policy_version_attachment_response.go) |
| `UploadPolicyVersionAttachmentRequest` | [UploadPolicyVersionAttachmentRequest ](../legal-sdk/pkg/legalclientmodels/upload_policy_version_attachment_request.go) |
| `ValidationErrorEntity` | [ValidationErrorEntity ](../legal-sdk/pkg/legalclientmodels/validation_error_entity.go) |
