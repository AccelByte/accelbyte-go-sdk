## Go Extend SDK CLI Sample App Operation Index for Legal service.

### Operation `change_preference_consent`
```sh
$ samples/cli/sample-apps Legal changePreferenceConsent \
    --namespace 'string' \
    --userId 'string' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "string", "policyId": "string", "policyVersionId": "string"}]' \
    > result.txt
```

### Operation `old_retrieve_accepted_agreements`
```sh
$ samples/cli/sample-apps Legal oldRetrieveAcceptedAgreements \
    --userId 'string' \
    > result.txt
```

### Operation `old_retrieve_all_users_by_policy_version`
```sh
$ samples/cli/sample-apps Legal oldRetrieveAllUsersByPolicyVersion \
    --keyword 'string' \
    --limit 1 \
    --offset 1 \
    --policyVersionId 'string' \
    > result.txt
```

### Operation `retrieve_all_legal_policies`
```sh
$ samples/cli/sample-apps Legal retrieveAllLegalPolicies \
    --visibleOnly false \
    > result.txt
```

### Operation `old_create_policy`
```sh
$ samples/cli/sample-apps Legal oldCreatePolicy \
    --body '{"affectedClientIds": ["string"], "affectedCountries": ["string"], "basePolicyName": "string", "countryGroupName": "string", "countryType": "COUNTRY", "description": "string", "isHidden": false, "isHiddenPublic": false, "namespace": "string", "tags": ["string"], "typeId": "string"}' \
    > result.txt
```

### Operation `old_retrieve_single_policy`
```sh
$ samples/cli/sample-apps Legal oldRetrieveSinglePolicy \
    --basePolicyId 'string' \
    > result.txt
```

### Operation `old_partial_update_policy`
```sh
$ samples/cli/sample-apps Legal oldPartialUpdatePolicy \
    --basePolicyId 'string' \
    --body '{"affectedClientIds": ["string"], "affectedCountries": ["string"], "basePolicyName": "string", "countryGroupName": "string", "countryType": "COUNTRY", "description": "string", "isHidden": false, "isHiddenPublic": false, "namespace": "string", "tags": ["string"]}' \
    > result.txt
```

### Operation `old_retrieve_policy_country`
```sh
$ samples/cli/sample-apps Legal oldRetrievePolicyCountry \
    --basePolicyId 'string' \
    --countryCode 'string' \
    > result.txt
```

### Operation `old_retrieve_localized_policy_versions`
```sh
$ samples/cli/sample-apps Legal oldRetrieveLocalizedPolicyVersions \
    --policyVersionId 'string' \
    > result.txt
```

### Operation `old_create_localized_policy_version`
```sh
$ samples/cli/sample-apps Legal oldCreateLocalizedPolicyVersion \
    --policyVersionId 'string' \
    --body '{"contentType": "string", "description": "string", "localeCode": "string"}' \
    > result.txt
```

### Operation `old_retrieve_single_localized_policy_version`
```sh
$ samples/cli/sample-apps Legal oldRetrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'string' \
    > result.txt
```

### Operation `old_update_localized_policy_version`
```sh
$ samples/cli/sample-apps Legal oldUpdateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'string' \
    --body '{"attachmentChecksum": "string", "attachmentLocation": "string", "attachmentVersionIdentifier": "string", "contentType": "string", "description": "string"}' \
    > result.txt
```

### Operation `old_request_presigned_url`
```sh
$ samples/cli/sample-apps Legal oldRequestPresignedURL \
    --localizedPolicyVersionId 'string' \
    --body '{"contentMD5": "string", "contentType": "string"}' \
    > result.txt
```

### Operation `old_set_default_localized_policy`
```sh
$ samples/cli/sample-apps Legal oldSetDefaultLocalizedPolicy \
    --localizedPolicyVersionId 'string' \
    > result.txt
```

### Operation `retrieve_accepted_agreements_for_multi_users`
```sh
$ samples/cli/sample-apps Legal retrieveAcceptedAgreementsForMultiUsers \
    --namespace 'string' \
    --body '{"currentPublishedOnly": false, "userIds": ["string"]}' \
    > result.txt
```

### Operation `retrieve_accepted_agreements`
```sh
$ samples/cli/sample-apps Legal retrieveAcceptedAgreements \
    --namespace 'string' \
    --userId 'string' \
    --excludeOtherNamespacesPolicies false \
    > result.txt
```

### Operation `retrieve_all_users_by_policy_version`
```sh
$ samples/cli/sample-apps Legal retrieveAllUsersByPolicyVersion \
    --namespace 'string' \
    --convertGameUserId false \
    --keyword 'string' \
    --limit 1 \
    --offset 1 \
    --policyVersionId 'string' \
    > result.txt
```

### Operation `download_exported_agreements_in_csv`
```sh
$ samples/cli/sample-apps Legal downloadExportedAgreementsInCSV \
    --namespace 'string' \
    --exportId 'string' \
    > result.txt
```

### Operation `initiate_export_agreements_to_csv`
```sh
$ samples/cli/sample-apps Legal initiateExportAgreementsToCSV \
    --namespace 'string' \
    --end 'string' \
    --policyVersionId 'string' \
    --start 'string' \
    > result.txt
```

### Operation `retrieve_all_legal_policies_by_namespace`
```sh
$ samples/cli/sample-apps Legal retrieveAllLegalPoliciesByNamespace \
    --namespace 'string' \
    --visibleOnly false \
    > result.txt
```

### Operation `create_policy`
```sh
$ samples/cli/sample-apps Legal createPolicy \
    --namespace 'string' \
    --body '{"affectedClientIds": ["string"], "affectedCountries": ["string"], "basePolicyName": "string", "countryGroupName": "string", "countryType": "COUNTRY", "description": "string", "isHidden": false, "isHiddenPublic": false, "tags": ["string"], "typeId": "string"}' \
    > result.txt
```

### Operation `retrieve_single_policy`
```sh
$ samples/cli/sample-apps Legal retrieveSinglePolicy \
    --basePolicyId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `delete_base_policy`
```sh
$ samples/cli/sample-apps Legal deleteBasePolicy \
    --basePolicyId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `partial_update_policy`
```sh
$ samples/cli/sample-apps Legal partialUpdatePolicy \
    --basePolicyId 'string' \
    --namespace 'string' \
    --body '{"affectedClientIds": ["string"], "affectedCountries": ["string"], "basePolicyName": "string", "countryGroupName": "string", "countryType": "COUNTRY", "description": "string", "isHidden": false, "isHiddenPublic": false, "tags": ["string"]}' \
    > result.txt
```

### Operation `retrieve_policy_country`
```sh
$ samples/cli/sample-apps Legal retrievePolicyCountry \
    --basePolicyId 'string' \
    --countryCode 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `retrieve_all_policies_from_base_policy`
```sh
$ samples/cli/sample-apps Legal retrieveAllPoliciesFromBasePolicy \
    --basePolicyId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `create_policy_under_base_policy`
```sh
$ samples/cli/sample-apps Legal createPolicyUnderBasePolicy \
    --basePolicyId 'string' \
    --namespace 'string' \
    --body '{"countries": ["string"], "countryCode": "string", "countryGroupName": "string", "countryType": "COUNTRY", "description": "string", "isDefaultSelection": false, "isMandatory": false, "policyName": "string", "shouldNotifyOnUpdate": false}' \
    > result.txt
```

### Operation `delete_localized_policy`
```sh
$ samples/cli/sample-apps Legal deleteLocalizedPolicy \
    --localizedPolicyVersionId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `retrieve_localized_policy_versions`
```sh
$ samples/cli/sample-apps Legal retrieveLocalizedPolicyVersions \
    --namespace 'string' \
    --policyVersionId 'string' \
    > result.txt
```

### Operation `create_localized_policy_version`
```sh
$ samples/cli/sample-apps Legal createLocalizedPolicyVersion \
    --namespace 'string' \
    --policyVersionId 'string' \
    --body '{"contentType": "string", "description": "string", "localeCode": "string"}' \
    > result.txt
```

### Operation `retrieve_single_localized_policy_version`
```sh
$ samples/cli/sample-apps Legal retrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `update_localized_policy_version`
```sh
$ samples/cli/sample-apps Legal updateLocalizedPolicyVersion \
    --localizedPolicyVersionId 'string' \
    --namespace 'string' \
    --body '{"attachmentChecksum": "string", "attachmentLocation": "string", "attachmentVersionIdentifier": "string", "contentType": "string", "description": "string"}' \
    > result.txt
```

### Operation `request_presigned_url`
```sh
$ samples/cli/sample-apps Legal requestPresignedURL \
    --localizedPolicyVersionId 'string' \
    --namespace 'string' \
    --body '{"contentMD5": "string", "contentType": "string"}' \
    > result.txt
```

### Operation `set_default_localized_policy`
```sh
$ samples/cli/sample-apps Legal setDefaultLocalizedPolicy \
    --localizedPolicyVersionId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `delete_policy_version`
```sh
$ samples/cli/sample-apps Legal deletePolicyVersion \
    --namespace 'string' \
    --policyVersionId 'string' \
    > result.txt
```

### Operation `update_policy_version`
```sh
$ samples/cli/sample-apps Legal updatePolicyVersion \
    --namespace 'string' \
    --policyVersionId 'string' \
    --body '{"description": "string", "displayVersion": "string", "isCommitted": false}' \
    > result.txt
```

### Operation `publish_policy_version`
```sh
$ samples/cli/sample-apps Legal publishPolicyVersion \
    --namespace 'string' \
    --policyVersionId 'string' \
    --shouldNotify false \
    > result.txt
```

### Operation `unpublish_policy_version`
```sh
$ samples/cli/sample-apps Legal unpublishPolicyVersion \
    --namespace 'string' \
    --policyVersionId 'string' \
    > result.txt
```

### Operation `delete_policy`
```sh
$ samples/cli/sample-apps Legal deletePolicy \
    --namespace 'string' \
    --policyId 'string' \
    > result.txt
```

### Operation `update_policy`
```sh
$ samples/cli/sample-apps Legal updatePolicy \
    --namespace 'string' \
    --policyId 'string' \
    --body '{"countries": ["string"], "countryGroupName": "string", "description": "string", "isDefaultOpted": false, "isMandatory": false, "policyName": "string", "readableId": "string", "shouldNotifyOnUpdate": false}' \
    > result.txt
```

### Operation `set_default_policy`
```sh
$ samples/cli/sample-apps Legal setDefaultPolicy \
    --namespace 'string' \
    --policyId 'string' \
    > result.txt
```

### Operation `retrieve_single_policy_version`
```sh
$ samples/cli/sample-apps Legal retrieveSinglePolicyVersion \
    --namespace 'string' \
    --policyId 'string' \
    --versionId 'string' \
    > result.txt
```

### Operation `create_policy_version`
```sh
$ samples/cli/sample-apps Legal createPolicyVersion \
    --namespace 'string' \
    --policyId 'string' \
    --body '{"description": "string", "displayVersion": "string", "isCommitted": false}' \
    > result.txt
```

### Operation `retrieve_all_policy_types`
```sh
$ samples/cli/sample-apps Legal retrieveAllPolicyTypes \
    --namespace 'string' \
    --offset 1 \
    --limit 1 \
    > result.txt
```

### Operation `indirect_bulk_accept_versioned_policy`
```sh
$ samples/cli/sample-apps Legal indirectBulkAcceptVersionedPolicy \
    --namespace 'string' \
    --userId 'string' \
    --publisherUserId 'string' \
    --clientId 'string' \
    --countryCode 'string' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "string", "policyId": "string", "policyVersionId": "string"}]' \
    > result.txt
```

### Operation `admin_retrieve_eligibilities`
```sh
$ samples/cli/sample-apps Legal adminRetrieveEligibilities \
    --namespace 'string' \
    --userId 'string' \
    --publisherUserId 'string' \
    --clientId 'string' \
    --countryCode 'string' \
    > result.txt
```

### Operation `retrieve_policies`
```sh
$ samples/cli/sample-apps Legal retrievePolicies \
    --countryCode 'string' \
    > result.txt
```

### Operation `old_update_policy_version`
```sh
$ samples/cli/sample-apps Legal oldUpdatePolicyVersion \
    --policyVersionId 'string' \
    --body '{"description": "string", "displayVersion": "string", "isCommitted": false}' \
    > result.txt
```

### Operation `old_publish_policy_version`
```sh
$ samples/cli/sample-apps Legal oldPublishPolicyVersion \
    --policyVersionId 'string' \
    --shouldNotify false \
    > result.txt
```

### Operation `old_update_policy`
```sh
$ samples/cli/sample-apps Legal oldUpdatePolicy \
    --policyId 'string' \
    --body '{"countries": ["string"], "countryGroupName": "string", "description": "string", "isDefaultOpted": false, "isMandatory": false, "policyName": "string", "readableId": "string", "shouldNotifyOnUpdate": false}' \
    > result.txt
```

### Operation `old_set_default_policy`
```sh
$ samples/cli/sample-apps Legal oldSetDefaultPolicy \
    --policyId 'string' \
    > result.txt
```

### Operation `old_retrieve_single_policy_version`
```sh
$ samples/cli/sample-apps Legal oldRetrieveSinglePolicyVersion \
    --policyId 'string' \
    --versionId 'string' \
    > result.txt
```

### Operation `old_create_policy_version`
```sh
$ samples/cli/sample-apps Legal oldCreatePolicyVersion \
    --policyId 'string' \
    --body '{"description": "string", "displayVersion": "string", "isCommitted": false}' \
    > result.txt
```

### Operation `old_retrieve_all_policy_types`
```sh
$ samples/cli/sample-apps Legal oldRetrieveAllPolicyTypes \
    --offset 1 \
    --limit 1 \
    > result.txt
```

### Operation `get_user_info_status`
```sh
$ samples/cli/sample-apps Legal getUserInfoStatus \
    --namespaces 'string' \
    > result.txt
```

### Operation `anonymize_user_agreement`
```sh
$ samples/cli/sample-apps Legal anonymizeUserAgreement \
    --userId 'string' \
    > result.txt
```

### Operation `public_change_preference_consent`
```sh
$ samples/cli/sample-apps Legal publicChangePreferenceConsent \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "string", "policyId": "string", "policyVersionId": "string"}]' \
    > result.txt
```

### Operation `accept_versioned_policy`
```sh
$ samples/cli/sample-apps Legal acceptVersionedPolicy \
    --localizedPolicyVersionId 'string' \
    > result.txt
```

### Operation `retrieve_agreements_public`
```sh
$ samples/cli/sample-apps Legal retrieveAgreementsPublic \
    > result.txt
```

### Operation `bulk_accept_versioned_policy`
```sh
$ samples/cli/sample-apps Legal bulkAcceptVersionedPolicy \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "string", "policyId": "string", "policyVersionId": "string"}]' \
    > result.txt
```

### Operation `retrieve_eligibilities_public`
```sh
$ samples/cli/sample-apps Legal retrieveEligibilitiesPublic \
    --namespace 'string' \
    > result.txt
```

### Operation `retrieve_eligibilities_public_indirect`
```sh
$ samples/cli/sample-apps Legal retrieveEligibilitiesPublicIndirect \
    --clientId 'string' \
    --countryCode 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `old_public_retrieve_single_localized_policy_version`
```sh
$ samples/cli/sample-apps Legal oldPublicRetrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'string' \
    > result.txt
```

### Operation `public_retrieve_single_localized_policy_version`
```sh
$ samples/cli/sample-apps Legal publicRetrieveSingleLocalizedPolicyVersion \
    --localizedPolicyVersionId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `retrieve_country_list_with_policies`
```sh
$ samples/cli/sample-apps Legal retrieveCountryListWithPolicies \
    > result.txt
```

### Operation `retrieve_latest_policies`
```sh
$ samples/cli/sample-apps Legal retrieveLatestPolicies \
    --countryCode 'string' \
    --defaultOnEmpty false \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'string' \
    --visibleOnly false \
    > result.txt
```

### Operation `retrieve_latest_policies_public`
```sh
$ samples/cli/sample-apps Legal retrieveLatestPoliciesPublic \
    --namespace 'string' \
    --alwaysIncludeDefault false \
    --defaultOnEmpty false \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'string' \
    --visibleOnly false \
    > result.txt
```

### Operation `old_retrieve_latest_policies_by_namespace_and_country_public`
```sh
$ samples/cli/sample-apps Legal oldRetrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'string' \
    --namespace 'string' \
    --alwaysIncludeDefault false \
    --defaultOnEmpty false \
    --policyType 'LEGAL_DOCUMENT_TYPE' \
    --tags 'string' \
    --visibleOnly false \
    > result.txt
```

### Operation `check_readiness`
```sh
$ samples/cli/sample-apps Legal checkReadiness \
    > result.txt
```

### Operation `retrieve_latest_policies_by_namespace_and_country_public`
```sh
$ samples/cli/sample-apps Legal retrieveLatestPoliciesByNamespaceAndCountryPublic \
    --countryCode 'string' \
    --namespace 'string' \
    --clientId 'string' \
    > result.txt
```

