## Go Extend SDK CLI Sample App Operation Index for Gdpr service.

### Operation `admin_get_list_deletion_data_request`
```sh
$ samples/cli/sample-apps Gdpr adminGetListDeletionDataRequest \
    --namespace 'string' \
    --after 'string' \
    --before 'string' \
    --limit 1 \
    --offset 1 \
    --requestDate 'string' \
    > result.txt
```

### Operation `get_admin_email_configuration`
```sh
$ samples/cli/sample-apps Gdpr getAdminEmailConfiguration \
    --namespace 'string' \
    > result.txt
```

### Operation `update_admin_email_configuration`
```sh
$ samples/cli/sample-apps Gdpr updateAdminEmailConfiguration \
    --namespace 'string' \
    --body '["string"]' \
    > result.txt
```

### Operation `save_admin_email_configuration`
```sh
$ samples/cli/sample-apps Gdpr saveAdminEmailConfiguration \
    --namespace 'string' \
    --body '["string"]' \
    > result.txt
```

### Operation `delete_admin_email_configuration`
```sh
$ samples/cli/sample-apps Gdpr deleteAdminEmailConfiguration \
    --namespace 'string' \
    --emails '["string"]' \
    > result.txt
```

### Operation `admin_get_platform_account_closure_clients`
```sh
$ samples/cli/sample-apps Gdpr adminGetPlatformAccountClosureClients \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_validate_xbox_bp_cert_file`
```sh
$ samples/cli/sample-apps Gdpr adminValidateXboxBPCertFile \
    --namespace 'string' \
    --body '{"bpCert": "string", "password": "string"}' \
    > result.txt
```

### Operation `admin_get_platform_account_closure_client`
```sh
$ samples/cli/sample-apps Gdpr adminGetPlatformAccountClosureClient \
    --namespace 'string' \
    --platform 'string' \
    > result.txt
```

### Operation `admin_update_platform_account_closure_client`
```sh
$ samples/cli/sample-apps Gdpr adminUpdatePlatformAccountClosureClient \
    --namespace 'string' \
    --platform 'string' \
    --body '{"bpCert": "string", "bpCertFileName": "string", "clientId": "string", "password": "string", "publisherKey": "string", "sandboxId": "string", "secret": "string"}' \
    > result.txt
```

### Operation `admin_delete_platform_account_closure_client`
```sh
$ samples/cli/sample-apps Gdpr adminDeletePlatformAccountClosureClient \
    --namespace 'string' \
    --platform 'string' \
    > result.txt
```

### Operation `admin_mock_platform_account_closure_data`
```sh
$ samples/cli/sample-apps Gdpr adminMockPlatformAccountClosureData \
    --namespace 'string' \
    --platform 'string' \
    --body '{"platformUserId": "string", "sandbox": "string", "startImmediately": false}' \
    > result.txt
```

### Operation `admin_get_list_personal_data_request`
```sh
$ samples/cli/sample-apps Gdpr adminGetListPersonalDataRequest \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --requestDate 'string' \
    > result.txt
```

### Operation `admin_get_services_configuration`
```sh
$ samples/cli/sample-apps Gdpr adminGetServicesConfiguration \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_update_services_configuration`
```sh
$ samples/cli/sample-apps Gdpr adminUpdateServicesConfiguration \
    --namespace 'string' \
    --body '{"services": [{}]}' \
    > result.txt
```

### Operation `admin_reset_services_configuration`
```sh
$ samples/cli/sample-apps Gdpr adminResetServicesConfiguration \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_get_platform_account_closure_services_configuration`
```sh
$ samples/cli/sample-apps Gdpr adminGetPlatformAccountClosureServicesConfiguration \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_update_platform_account_closure_services_configuration`
```sh
$ samples/cli/sample-apps Gdpr adminUpdatePlatformAccountClosureServicesConfiguration \
    --namespace 'string' \
    --body '{"services": [{}]}' \
    > result.txt
```

### Operation `admin_reset_platform_account_closure_services_configuration`
```sh
$ samples/cli/sample-apps Gdpr adminResetPlatformAccountClosureServicesConfiguration \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_get_user_platform_account_closure_histories`
```sh
$ samples/cli/sample-apps Gdpr adminGetUserPlatformAccountClosureHistories \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --platform 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_get_user_account_deletion_request`
```sh
$ samples/cli/sample-apps Gdpr adminGetUserAccountDeletionRequest \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_submit_user_account_deletion_request`
```sh
$ samples/cli/sample-apps Gdpr adminSubmitUserAccountDeletionRequest \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_cancel_user_account_deletion_request`
```sh
$ samples/cli/sample-apps Gdpr adminCancelUserAccountDeletionRequest \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_get_user_personal_data_requests`
```sh
$ samples/cli/sample-apps Gdpr adminGetUserPersonalDataRequests \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_request_data_retrieval`
```sh
$ samples/cli/sample-apps Gdpr adminRequestDataRetrieval \
    --namespace 'string' \
    --userId 'string' \
    --password 'string' \
    > result.txt
```

### Operation `admin_cancel_user_personal_data_request`
```sh
$ samples/cli/sample-apps Gdpr adminCancelUserPersonalDataRequest \
    --namespace 'string' \
    --requestDate 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_generate_personal_data_url`
```sh
$ samples/cli/sample-apps Gdpr adminGeneratePersonalDataURL \
    --namespace 'string' \
    --requestDate 'string' \
    --userId 'string' \
    --password 'string' \
    > result.txt
```

### Operation `public_submit_user_account_deletion_request`
```sh
$ samples/cli/sample-apps Gdpr publicSubmitUserAccountDeletionRequest \
    --namespace 'string' \
    --userId 'string' \
    --languageTag 'string' \
    --password 'string' \
    > result.txt
```

### Operation `public_cancel_user_account_deletion_request`
```sh
$ samples/cli/sample-apps Gdpr publicCancelUserAccountDeletionRequest \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_get_user_account_deletion_status`
```sh
$ samples/cli/sample-apps Gdpr publicGetUserAccountDeletionStatus \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_get_user_personal_data_requests`
```sh
$ samples/cli/sample-apps Gdpr publicGetUserPersonalDataRequests \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `public_request_data_retrieval`
```sh
$ samples/cli/sample-apps Gdpr publicRequestDataRetrieval \
    --namespace 'string' \
    --userId 'string' \
    --languageTag 'string' \
    --password 'string' \
    > result.txt
```

### Operation `public_cancel_user_personal_data_request`
```sh
$ samples/cli/sample-apps Gdpr publicCancelUserPersonalDataRequest \
    --namespace 'string' \
    --requestDate 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_generate_personal_data_url`
```sh
$ samples/cli/sample-apps Gdpr publicGeneratePersonalDataURL \
    --namespace 'string' \
    --requestDate 'string' \
    --userId 'string' \
    --password 'string' \
    > result.txt
```

### Operation `public_submit_my_account_deletion_request`
```sh
$ samples/cli/sample-apps Gdpr publicSubmitMyAccountDeletionRequest \
    --platformId 'string' \
    --platformToken 'string' \
    > result.txt
```

### Operation `public_cancel_my_account_deletion_request`
```sh
$ samples/cli/sample-apps Gdpr publicCancelMyAccountDeletionRequest \
    > result.txt
```

### Operation `public_get_my_account_deletion_status`
```sh
$ samples/cli/sample-apps Gdpr publicGetMyAccountDeletionStatus \
    > result.txt
```

### Operation `s2s_get_list_finished_account_deletion_request`
```sh
$ samples/cli/sample-apps Gdpr s2sGetListFinishedAccountDeletionRequest \
    --namespace 'string' \
    --end 'string' \
    --start 'string' \
    > result.txt
```

### Operation `s2s_get_list_finished_personal_data_request`
```sh
$ samples/cli/sample-apps Gdpr s2sGetListFinishedPersonalDataRequest \
    --namespace 'string' \
    --end 'string' \
    --start 'string' \
    > result.txt
```

### Operation `s2s_get_data_request_by_request_id`
```sh
$ samples/cli/sample-apps Gdpr s2sGetDataRequestByRequestID \
    --namespace 'string' \
    --requestId 'string' \
    > result.txt
```

### Operation `s2s_submit_user_account_deletion_request`
```sh
$ samples/cli/sample-apps Gdpr s2sSubmitUserAccountDeletionRequest \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `s2s_request_data_retrieval`
```sh
$ samples/cli/sample-apps Gdpr s2sRequestDataRetrieval \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `s2s_generate_personal_data_url`
```sh
$ samples/cli/sample-apps Gdpr s2sGeneratePersonalDataURL \
    --namespace 'string' \
    --requestDate 'string' \
    --userId 'string' \
    > result.txt
```

