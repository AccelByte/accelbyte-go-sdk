## Go Extend SDK CLI Sample App Operation Index for Iam service.

### Operation `admin_get_bans_type_v3`
```sh
$ samples/cli/sample-apps Iam adminGetBansTypeV3 \
    > result.txt
```

### Operation `admin_get_list_ban_reason_v3`
```sh
$ samples/cli/sample-apps Iam adminGetListBanReasonV3 \
    > result.txt
```

### Operation `admin_list_client_available_permissions`
```sh
$ samples/cli/sample-apps Iam adminListClientAvailablePermissions \
    --excludePermissions false \
    > result.txt
```

### Operation `admin_update_available_permissions_by_module`
```sh
$ samples/cli/sample-apps Iam adminUpdateAvailablePermissionsByModule \
    --forceDelete false \
    --body '{"modules": [{}]}' \
    > result.txt
```

### Operation `admin_delete_config_permissions_by_group`
```sh
$ samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete false \
    --body '{"groupId": "string", "moduleId": "string"}' \
    > result.txt
```

### Operation `admin_list_client_templates`
```sh
$ samples/cli/sample-apps Iam adminListClientTemplates \
    > result.txt
```

### Operation `admin_get_input_validations`
```sh
$ samples/cli/sample-apps Iam adminGetInputValidations \
    > result.txt
```

### Operation `admin_update_input_validations`
```sh
$ samples/cli/sample-apps Iam adminUpdateInputValidations \
    --body '[{"field": "string", "validation": {}}]' \
    > result.txt
```

### Operation `admin_reset_input_validations`
```sh
$ samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'string' \
    > result.txt
```

### Operation `list_admins_v3`
```sh
$ samples/cli/sample-apps Iam listAdminsV3 \
    --namespace 'string' \
    --after 'string' \
    --before 'string' \
    --endDate 'string' \
    --limit 1 \
    --query 'string' \
    --roleId 'string' \
    --startDate 'string' \
    > result.txt
```

### Operation `admin_get_age_restriction_status_v3`
```sh
$ samples/cli/sample-apps Iam adminGetAgeRestrictionStatusV3 \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_update_age_restriction_config_v3`
```sh
$ samples/cli/sample-apps Iam adminUpdateAgeRestrictionConfigV3 \
    --namespace 'string' \
    --body '{"ageRestriction": 1, "enable": false}' \
    > result.txt
```

### Operation `admin_get_list_country_age_restriction_v3`
```sh
$ samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_update_country_age_restriction_v3`
```sh
$ samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'string' \
    --namespace 'string' \
    --body '{"ageRestriction": 1}' \
    > result.txt
```

### Operation `admin_get_banned_users_v3`
```sh
$ samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace 'string' \
    --activeOnly false \
    --banType 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_ban_user_bulk_v3`
```sh
$ samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace 'string' \
    --body '{"ban": "string", "comment": "string", "endDate": "string", "reason": "string", "skipNotif": false, "userIds": ["string"]}' \
    > result.txt
```

### Operation `admin_unban_user_bulk_v3`
```sh
$ samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace 'string' \
    --body '{"bans": [{}]}' \
    > result.txt
```

### Operation `admin_get_bans_type_with_namespace_v3`
```sh
$ samples/cli/sample-apps Iam adminGetBansTypeWithNamespaceV3 \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_get_clients_by_namespace_v3`
```sh
$ samples/cli/sample-apps Iam adminGetClientsByNamespaceV3 \
    --namespace 'string' \
    --clientId 'string' \
    --clientName 'string' \
    --clientType 'string' \
    --limit 1 \
    --offset 1 \
    --skipLoginQueue false \
    > result.txt
```

### Operation `admin_bulk_update_clients_v3`
```sh
$ samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace 'string' \
    --body '{"clientIds": ["string"], "clientUpdateRequest": {}}' \
    > result.txt
```

### Operation `admin_create_client_v3`
```sh
$ samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace 'string' \
    --body '{"audiences": ["string"], "baseUri": "string", "clientId": "string", "clientName": "string", "clientPermissions": [{}], "clientPlatform": "string", "deletable": false, "description": "string", "modulePermissions": [{}], "namespace": "string", "oauthAccessTokenExpiration": 1, "oauthAccessTokenExpirationTimeUnit": "string", "oauthClientType": "string", "oauthRefreshTokenExpiration": 1, "oauthRefreshTokenExpirationTimeUnit": "string", "parentNamespace": "string", "redirectUri": "string", "scopes": ["string"], "secret": "string", "skipLoginQueue": false, "twoFactorEnabled": false}' \
    > result.txt
```

### Operation `admin_get_clientsby_namespaceby_idv3`
```sh
$ samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_delete_client_v3`
```sh
$ samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_update_client_v3`
```sh
$ samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'string' \
    --namespace 'string' \
    --body '{"audiences": ["string"], "baseUri": "string", "clientName": "string", "clientPermissions": [{}], "clientPlatform": "string", "deletable": false, "description": "string", "modulePermissions": [{}], "namespace": "string", "oauthAccessTokenExpiration": 1, "oauthAccessTokenExpirationTimeUnit": "string", "oauthRefreshTokenExpiration": 1, "oauthRefreshTokenExpirationTimeUnit": "string", "redirectUri": "string", "scopes": ["string"], "skipLoginQueue": false, "twoFactorEnabled": false}' \
    > result.txt
```

### Operation `admin_update_client_permission_v3`
```sh
$ samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'string' \
    --namespace 'string' \
    --body '{"permissions": [{}]}' \
    > result.txt
```

### Operation `admin_add_client_permissions_v3`
```sh
$ samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'string' \
    --namespace 'string' \
    --body '{"permissions": [{}]}' \
    > result.txt
```

### Operation `admin_delete_client_permission_v3`
```sh
$ samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action 1 \
    --clientId 'string' \
    --namespace 'string' \
    --resource 'string' \
    > result.txt
```

### Operation `admin_get_config_value_v3`
```sh
$ samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_get_country_list_v3`
```sh
$ samples/cli/sample-apps Iam adminGetCountryListV3 \
    --namespace 'string' \
    --filterBlacklist false \
    > result.txt
```

### Operation `admin_get_country_blacklist_v3`
```sh
$ samples/cli/sample-apps Iam adminGetCountryBlacklistV3 \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_add_country_blacklist_v3`
```sh
$ samples/cli/sample-apps Iam adminAddCountryBlacklistV3 \
    --namespace 'string' \
    --body '{"blacklist": ["string"]}' \
    > result.txt
```

### Operation `admin_get_login_allowlist_v3`
```sh
$ samples/cli/sample-apps Iam adminGetLoginAllowlistV3 \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_update_login_allowlist_v3`
```sh
$ samples/cli/sample-apps Iam adminUpdateLoginAllowlistV3 \
    --namespace 'string' \
    --body '{"active": false, "roleIds": ["string"]}' \
    > result.txt
```

### Operation `retrieve_all_third_party_login_platform_credential_v3`
```sh
$ samples/cli/sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 \
    --namespace 'string' \
    > result.txt
```

### Operation `retrieve_all_active_third_party_login_platform_credential_v3`
```sh
$ samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 \
    --namespace 'string' \
    > result.txt
```

### Operation `retrieve_all_sso_login_platform_credential_v3`
```sh
$ samples/cli/sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `retrieve_third_party_login_platform_credential_v3`
```sh
$ samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace 'string' \
    --platformId 'string' \
    > result.txt
```

### Operation `add_third_party_login_platform_credential_v3`
```sh
$ samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace 'string' \
    --platformId 'string' \
    --body '{"ACSURL": "string", "AWSCognitoRegion": "string", "AWSCognitoUserPool": "string", "AllowedClients": ["string"], "AppId": "string", "AuthorizationEndpoint": "string", "ClientId": "string", "EmptyStrFieldList": ["string"], "EnableServerLicenseValidation": false, "Environment": "string", "FederationMetadataURL": "string", "GenericOauthFlow": false, "IncludePUID": false, "IsActive": false, "Issuer": "string", "JWKSEndpoint": "string", "KeyID": "string", "LogoURL": "string", "NetflixCertificates": {}, "OrganizationId": "string", "PlatformName": "string", "PrivateKey": "string", "RedirectUri": "string", "RegisteredDomains": [{}], "RelyingParty": "string", "SandboxId": "string", "Secret": "string", "TeamID": "string", "TokenAuthenticationType": "string", "TokenClaimsMapping": {"string": "string"}, "TokenEndpoint": "string", "UserInfoEndpoint": "string", "UserInfoHTTPMethod": "string", "googleAdminConsoleKey": "string", "scopes": ["string"]}' \
    > result.txt
```

### Operation `delete_third_party_login_platform_credential_v3`
```sh
$ samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace 'string' \
    --platformId 'string' \
    > result.txt
```

### Operation `update_third_party_login_platform_credential_v3`
```sh
$ samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace 'string' \
    --platformId 'string' \
    --body '{"ACSURL": "string", "AWSCognitoRegion": "string", "AWSCognitoUserPool": "string", "AllowedClients": ["string"], "AppId": "string", "AuthorizationEndpoint": "string", "ClientId": "string", "EmptyStrFieldList": ["string"], "EnableServerLicenseValidation": false, "Environment": "string", "FederationMetadataURL": "string", "GenericOauthFlow": false, "IncludePUID": false, "IsActive": false, "Issuer": "string", "JWKSEndpoint": "string", "KeyID": "string", "LogoURL": "string", "NetflixCertificates": {}, "OrganizationId": "string", "PlatformName": "string", "PrivateKey": "string", "RedirectUri": "string", "RegisteredDomains": [{}], "RelyingParty": "string", "SandboxId": "string", "Secret": "string", "TeamID": "string", "TokenAuthenticationType": "string", "TokenClaimsMapping": {"string": "string"}, "TokenEndpoint": "string", "UserInfoEndpoint": "string", "UserInfoHTTPMethod": "string", "googleAdminConsoleKey": "string", "scopes": ["string"]}' \
    > result.txt
```

### Operation `update_third_party_login_platform_domain_v3`
```sh
$ samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace 'string' \
    --platformId 'string' \
    --body '{"affectedClientIDs": ["string"], "assignedNamespaces": ["string"], "domain": "string", "roleId": "string", "ssoCfg": {}}' \
    > result.txt
```

### Operation `delete_third_party_login_platform_domain_v3`
```sh
$ samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace 'string' \
    --platformId 'string' \
    --body '{"domain": "string", "ssoGroups": ["string"]}' \
    > result.txt
```

### Operation `partial_update_third_party_login_platform_domain_v3`
```sh
$ samples/cli/sample-apps Iam partialUpdateThirdPartyLoginPlatformDomainV3 \
    --namespace 'string' \
    --platformId 'string' \
    --body '{"affectedClientIDs": ["string"], "assignedNamespaces": ["string"], "domain": "string", "roleId": "string", "ssoCfg": {}}' \
    > result.txt
```

### Operation `retrieve_sso_login_platform_credential`
```sh
$ samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace 'string' \
    --platformId 'string' \
    > result.txt
```

### Operation `add_sso_login_platform_credential`
```sh
$ samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace 'string' \
    --platformId 'string' \
    --body '{"acsUrl": "string", "apiKey": "string", "appId": "string", "federationMetadataUrl": "string", "isActive": false, "redirectUri": "string", "secret": "string", "ssoUrl": "string"}' \
    > result.txt
```

### Operation `delete_sso_login_platform_credential_v3`
```sh
$ samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace 'string' \
    --platformId 'string' \
    > result.txt
```

### Operation `update_sso_platform_credential`
```sh
$ samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace 'string' \
    --platformId 'string' \
    --body '{"acsUrl": "string", "apiKey": "string", "appId": "string", "federationMetadataUrl": "string", "isActive": false, "redirectUri": "string", "secret": "string", "ssoUrl": "string"}' \
    > result.txt
```

### Operation `admin_list_user_id_by_platform_user_i_ds_v3`
```sh
$ samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace 'string' \
    --platformId 'string' \
    --rawPID false \
    --rawPUID false \
    --body '{"platformUserIds": ["string"]}' \
    > result.txt
```

### Operation `admin_get_user_by_platform_user_idv3`
```sh
$ samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace 'string' \
    --platformId 'string' \
    --platformUserId 'string' \
    --pidType 'string' \
    > result.txt
```

### Operation `admin_get_profile_update_strategy_v3`
```sh
$ samples/cli/sample-apps Iam adminGetProfileUpdateStrategyV3 \
    --namespace 'string' \
    --field 'country' \
    > result.txt
```

### Operation `admin_update_profile_update_strategy_v3`
```sh
$ samples/cli/sample-apps Iam adminUpdateProfileUpdateStrategyV3 \
    --namespace 'string' \
    --field 'country' \
    --body '{"config": {}, "type": "string"}' \
    > result.txt
```

### Operation `admin_get_role_override_config_v3`
```sh
$ samples/cli/sample-apps Iam adminGetRoleOverrideConfigV3 \
    --namespace 'string' \
    --identity 'GAME_ADMIN' \
    > result.txt
```

### Operation `admin_update_role_override_config_v3`
```sh
$ samples/cli/sample-apps Iam adminUpdateRoleOverrideConfigV3 \
    --namespace 'string' \
    --identity 'GAME_ADMIN' \
    --body '{"additions": [{}], "exclusions": [{}], "overrides": [{}], "replacements": [{}]}' \
    > result.txt
```

### Operation `admin_get_role_source_v3`
```sh
$ samples/cli/sample-apps Iam adminGetRoleSourceV3 \
    --namespace 'string' \
    --identity 'GAME_ADMIN' \
    > result.txt
```

### Operation `admin_change_role_override_config_status_v3`
```sh
$ samples/cli/sample-apps Iam adminChangeRoleOverrideConfigStatusV3 \
    --namespace 'string' \
    --identity 'GAME_ADMIN' \
    --body '{"active": false}' \
    > result.txt
```

### Operation `admin_get_role_namespace_permission_v3`
```sh
$ samples/cli/sample-apps Iam adminGetRoleNamespacePermissionV3 \
    --namespace 'string' \
    --roleId 'string' \
    > result.txt
```

### Operation `get_admin_users_by_role_id_v3`
```sh
$ samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace 'string' \
    --roleId 'string' \
    --after 1 \
    --before 1 \
    --limit 1 \
    > result.txt
```

### Operation `admin_query_tag_v3`
```sh
$ samples/cli/sample-apps Iam adminQueryTagV3 \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --tagName 'string' \
    > result.txt
```

### Operation `admin_create_tag_v3`
```sh
$ samples/cli/sample-apps Iam adminCreateTagV3 \
    --namespace 'string' \
    --body '{"tagName": "string"}' \
    > result.txt
```

### Operation `admin_update_tag_v3`
```sh
$ samples/cli/sample-apps Iam adminUpdateTagV3 \
    --namespace 'string' \
    --tagId 'string' \
    --body '{"tagName": "string"}' \
    > result.txt
```

### Operation `admin_delete_tag_v3`
```sh
$ samples/cli/sample-apps Iam adminDeleteTagV3 \
    --namespace 'string' \
    --tagId 'string' \
    > result.txt
```

### Operation `admin_get_user_by_email_address_v3`
```sh
$ samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace 'string' \
    --emailAddress 'string' \
    > result.txt
```

### Operation `admin_bulk_update_users_v3`
```sh
$ samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace 'string' \
    --body '{"updateRequest": {}, "userIds": ["string"]}' \
    > result.txt
```

### Operation `admin_get_bulk_user_ban_v3`
```sh
$ samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace 'string' \
    --activeOnly false \
    --banType 'string' \
    --body '{"bulkUserId": ["string"]}' \
    > result.txt
```

### Operation `admin_list_user_id_by_user_i_ds_v3`
```sh
$ samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace 'string' \
    --body '{"findByPublisherNamespace": false, "userIds": ["string"]}' \
    > result.txt
```

### Operation `admin_bulk_get_users_platform`
```sh
$ samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace 'string' \
    --body '{"userIds": ["string"]}' \
    > result.txt
```

### Operation `admin_cursor_get_user_v3`
```sh
$ samples/cli/sample-apps Iam adminCursorGetUserV3 \
    --namespace 'string' \
    --body '{"cursor": {}, "fields": ["string"], "limit": 1}' \
    > result.txt
```

### Operation `admin_invite_user_v3`
```sh
$ samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace 'string' \
    --body '{"emailAddresses": ["string"], "isAdmin": false, "languageTag": "string", "namespace": "string", "roles": ["string"]}' \
    > result.txt
```

### Operation `admin_query_third_platform_link_history_v3`
```sh
$ samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --platformUserId 'string' \
    --platformId 'string' \
    > result.txt
```

### Operation `admin_list_users_v3`
```sh
$ samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_search_user_v3`
```sh
$ samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace 'string' \
    --by 'string' \
    --endDate 'string' \
    --includeTotal false \
    --limit 1 \
    --offset 1 \
    --platformBy 'string' \
    --platformId 'string' \
    --query 'string' \
    --roleIds 'string' \
    --selectedFields 'string' \
    --skipLoginQueue false \
    --startDate 'string' \
    --tagIds 'string' \
    --testAccount false \
    > result.txt
```

### Operation `admin_get_bulk_user_by_email_address_v3`
```sh
$ samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace 'string' \
    --body '{"listEmailAddressRequest": ["string"]}' \
    > result.txt
```

### Operation `admin_get_user_by_user_id_v3`
```sh
$ samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_update_user_v3`
```sh
$ samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace 'string' \
    --userId 'string' \
    --body '{"avatarUrl": "string", "country": "string", "dateOfBirth": "string", "displayName": "string", "languageTag": "string", "skipLoginQueue": false, "tags": ["string"], "uniqueDisplayName": "string", "userName": "string"}' \
    > result.txt
```

### Operation `admin_get_user_ban_v3`
```sh
$ samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace 'string' \
    --userId 'string' \
    --activeOnly false \
    --after 'string' \
    --before 'string' \
    --limit 1 \
    > result.txt
```

### Operation `admin_ban_user_v3`
```sh
$ samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace 'string' \
    --userId 'string' \
    --body '{"ban": "string", "comment": "string", "endDate": "string", "reason": "string", "skipNotif": false}' \
    > result.txt
```

### Operation `admin_get_user_ban_summary_v3`
```sh
$ samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_update_user_ban_v3`
```sh
$ samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"enabled": false, "skipNotif": false}' \
    > result.txt
```

### Operation `admin_send_verification_code_v3`
```sh
$ samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace 'string' \
    --userId 'string' \
    --body '{"context": "string", "emailAddress": "string", "languageTag": "string", "upgradeToken": "string"}' \
    > result.txt
```

### Operation `admin_verify_account_v3`
```sh
$ samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace 'string' \
    --userId 'string' \
    --body '{"Code": "string", "ContactType": "string", "LanguageTag": "string", "validateOnly": false}' \
    > result.txt
```

### Operation `get_user_verification_code`
```sh
$ samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_get_user_deletion_status_v3`
```sh
$ samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_update_user_deletion_status_v3`
```sh
$ samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace 'string' \
    --userId 'string' \
    --body '{"deletionDate": 1, "enabled": false}' \
    > result.txt
```

### Operation `admin_list_user_all_platform_accounts_distinct_v3`
```sh
$ samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_upgrade_headless_account_v3`
```sh
$ samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace 'string' \
    --userId 'string' \
    --body '{"code": "string", "country": "string", "dateOfBirth": "string", "displayName": "string", "emailAddress": "string", "password": "string", "uniqueDisplayName": "string", "validateOnly": false}' \
    > result.txt
```

### Operation `admin_delete_user_information_v3`
```sh
$ samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_get_user_login_histories_v3`
```sh
$ samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace 'string' \
    --userId 'string' \
    --after 3.14 \
    --before 3.14 \
    --limit 1 \
    > result.txt
```

### Operation `admin_reset_password_v3`
```sh
$ samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace 'string' \
    --userId 'string' \
    --body '{"languageTag": "string", "mfaToken": "string", "newPassword": "string", "oldPassword": "string"}' \
    > result.txt
```

### Operation `admin_update_user_permission_v3`
```sh
$ samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace 'string' \
    --userId 'string' \
    --body '{"Permissions": [{}]}' \
    > result.txt
```

### Operation `admin_add_user_permissions_v3`
```sh
$ samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace 'string' \
    --userId 'string' \
    --body '{"Permissions": [{}]}' \
    > result.txt
```

### Operation `admin_delete_user_permission_bulk_v3`
```sh
$ samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace 'string' \
    --userId 'string' \
    --body '[{"Action": 1, "Resource": "string"}]' \
    > result.txt
```

### Operation `admin_delete_user_permission_v3`
```sh
$ samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action 1 \
    --namespace 'string' \
    --resource 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_get_user_platform_accounts_v3`
```sh
$ samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace 'string' \
    --userId 'string' \
    --after 'string' \
    --before 'string' \
    --limit 1 \
    --platformId 'string' \
    --targetNamespace 'string' \
    > result.txt
```

### Operation `admin_list_all_distinct_platform_accounts_v3`
```sh
$ samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace 'string' \
    --userId 'string' \
    --status 'string' \
    > result.txt
```

### Operation `admin_get_list_justice_platform_accounts`
```sh
$ samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_get_user_mapping`
```sh
$ samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace 'string' \
    --targetNamespace 'string' \
    --userId 'string' \
    --createIfNotFound false \
    > result.txt
```

### Operation `admin_create_justice_user`
```sh
$ samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace 'string' \
    --targetNamespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_link_platform_account`
```sh
$ samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace 'string' \
    --userId 'string' \
    --skipConflict false \
    --body '{"platformId": "string", "platformUserId": "string"}' \
    > result.txt
```

### Operation `admin_get_user_link_histories_v3`
```sh
$ samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace 'string' \
    --userId 'string' \
    --platformId 'string' \
    > result.txt
```

### Operation `admin_platform_unlink_all_v3`
```sh
$ samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace 'string' \
    --platformId 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_platform_link_v3`
```sh
$ samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace 'string' \
    --platformId 'string' \
    --userId 'string' \
    --ticket 'string' \
    > result.txt
```

### Operation `admin_delete_user_linking_restriction_by_platform_idv3`
```sh
$ samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace 'string' \
    --platformId 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_get_third_party_platform_token_link_status_v3`
```sh
$ samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace 'string' \
    --platformId 'string' \
    --userId 'string' \
    --platformToken 'string' \
    > result.txt
```

### Operation `admin_get_user_single_platform_account`
```sh
$ samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace 'string' \
    --platformId 'string' \
    --userId 'string' \
    --crossNamespace false \
    > result.txt
```

### Operation `admin_delete_user_roles_v3`
```sh
$ samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace 'string' \
    --userId 'string' \
    --body '["string"]' \
    > result.txt
```

### Operation `admin_save_user_role_v3`
```sh
$ samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace 'string' \
    --userId 'string' \
    --body '[{"namespace": "string", "roleId": "string"}]' \
    > result.txt
```

### Operation `admin_add_user_role_v3`
```sh
$ samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace 'string' \
    --roleId 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_delete_user_role_v3`
```sh
$ samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace 'string' \
    --roleId 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_get_user_state_by_user_id_v3`
```sh
$ samples/cli/sample-apps Iam adminGetUserStateByUserIdV3 \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_update_user_status_v3`
```sh
$ samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace 'string' \
    --userId 'string' \
    --body '{"enabled": false, "reason": "string"}' \
    > result.txt
```

### Operation `admin_trustly_update_user_identity`
```sh
$ samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace 'string' \
    --userId 'string' \
    --body '{"emailAddress": "string", "password": "string"}' \
    > result.txt
```

### Operation `admin_verify_user_without_verification_code_v3`
```sh
$ samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_update_client_secret_v3`
```sh
$ samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'string' \
    --namespace 'string' \
    --body '{"newSecret": "string"}' \
    > result.txt
```

### Operation `admin_check_third_party_login_platform_availability_v3`
```sh
$ samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'string' \
    > result.txt
```

### Operation `admin_get_roles_v3`
```sh
$ samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'string' \
    --before 'string' \
    --isWildcard false \
    --limit 1 \
    > result.txt
```

### Operation `admin_create_role_v3`
```sh
$ samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "managers": [{}], "members": [{}], "permissions": [{}], "roleName": "string"}' \
    > result.txt
```

### Operation `admin_get_role_v3`
```sh
$ samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'string' \
    > result.txt
```

### Operation `admin_delete_role_v3`
```sh
$ samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'string' \
    > result.txt
```

### Operation `admin_update_role_v3`
```sh
$ samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'string' \
    --body '{"deletable": false, "isWildcard": false, "roleName": "string"}' \
    > result.txt
```

### Operation `admin_get_role_admin_status_v3`
```sh
$ samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'string' \
    > result.txt
```

### Operation `admin_update_admin_role_status_v3`
```sh
$ samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'string' \
    > result.txt
```

### Operation `admin_remove_role_admin_v3`
```sh
$ samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'string' \
    > result.txt
```

### Operation `admin_get_role_managers_v3`
```sh
$ samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'string' \
    --after 'string' \
    --before 'string' \
    --limit 1 \
    > result.txt
```

### Operation `admin_add_role_managers_v3`
```sh
$ samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'string' \
    --body '{"managers": [{}]}' \
    > result.txt
```

### Operation `admin_remove_role_managers_v3`
```sh
$ samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'string' \
    --body '{"managers": [{}]}' \
    > result.txt
```

### Operation `admin_get_role_members_v3`
```sh
$ samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'string' \
    --after 'string' \
    --before 'string' \
    --limit 1 \
    > result.txt
```

### Operation `admin_add_role_members_v3`
```sh
$ samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'string' \
    --body '{"members": [{}]}' \
    > result.txt
```

### Operation `admin_update_role_permissions_v3`
```sh
$ samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'string' \
    --body '{"permissions": [{}]}' \
    > result.txt
```

### Operation `admin_add_role_permissions_v3`
```sh
$ samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'string' \
    --body '{"permissions": [{}]}' \
    > result.txt
```

### Operation `admin_delete_role_permissions_v3`
```sh
$ samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'string' \
    --body '["string"]' \
    > result.txt
```

### Operation `admin_delete_role_permission_v3`
```sh
$ samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action 1 \
    --resource 'string' \
    --roleId 'string' \
    > result.txt
```

### Operation `admin_get_my_user_v3`
```sh
$ samples/cli/sample-apps Iam adminGetMyUserV3 \
    > result.txt
```

### Operation `user_authentication_v3`
```sh
$ samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'string' \
    --extendExp false \
    --redirectUri 'string' \
    --password 'string' \
    --requestId 'string' \
    --userName 'string' \
    > result.txt
```

### Operation `authentication_with_platform_link_v3`
```sh
$ samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp false \
    --clientId 'string' \
    --linkingToken 'string' \
    --password 'string' \
    --username 'string' \
    > result.txt
```

### Operation `authenticate_and_link_forward_v3`
```sh
$ samples/cli/sample-apps Iam authenticateAndLinkForwardV3 \
    --extendExp false \
    --clientId 'string' \
    --linkingToken 'string' \
    --password 'string' \
    --username 'string' \
    > result.txt
```

### Operation `public_get_system_config_v3`
```sh
$ samples/cli/sample-apps Iam publicGetSystemConfigV3 \
    > result.txt
```

### Operation `generate_token_by_new_headless_account_v3`
```sh
$ samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'string' \
    --extendExp false \
    --linkingToken 'string' \
    > result.txt
```

### Operation `request_one_time_linking_code_v3`
```sh
$ samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --redirectUri 'string' \
    --state 'string' \
    --platformId 'string' \
    > result.txt
```

### Operation `validate_one_time_linking_code_v3`
```sh
$ samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'string' \
    > result.txt
```

### Operation `request_token_by_one_time_link_code_response_v3`
```sh
$ samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'string' \
    --isTransient false \
    --clientId 'string' \
    --oneTimeLinkCode 'string' \
    > result.txt
```

### Operation `get_country_location_v3`
```sh
$ samples/cli/sample-apps Iam getCountryLocationV3 \
    > result.txt
```

### Operation `logout`
```sh
$ samples/cli/sample-apps Iam logout \
    > result.txt
```

### Operation `request_token_exchange_code_v3`
```sh
$ samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace 'string' \
    --codeChallenge 'string' \
    --codeChallengeMethod 'S256' \
    --clientId 'string' \
    > result.txt
```

### Operation `admin_retrieve_user_third_party_platform_token_v3`
```sh
$ samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace 'string' \
    --platformId 'string' \
    --userId 'string' \
    --platformUserId 'string' \
    > result.txt
```

### Operation `revoke_user_v3`
```sh
$ samples/cli/sample-apps Iam revokeUserV3 \
    --namespace 'string' \
    --userId 'string' \
    --includeGameNamespace false \
    > result.txt
```

### Operation `authorize_v3`
```sh
$ samples/cli/sample-apps Iam authorizeV3 \
    --blockedPlatformId 'string' \
    --codeChallenge 'string' \
    --codeChallengeMethod 'S256' \
    --createHeadless false \
    --loginWebBased false \
    --nonce 'string' \
    --oneTimeLinkCode 'string' \
    --redirectUri 'string' \
    --scope 'string' \
    --state 'string' \
    --targetAuthPage 'string' \
    --useRedirectUriAsLoginUrlWhenLocked false \
    --clientId 'string' \
    --responseType 'code' \
    > result.txt
```

### Operation `token_introspection_v3`
```sh
$ samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'string' \
    > result.txt
```

### Operation `get_jwksv3`
```sh
$ samples/cli/sample-apps Iam getJWKSV3 \
    > result.txt
```

### Operation `send_mfa_authentication_code`
```sh
$ samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'string' \
    --factor 'string' \
    --mfaToken 'string' \
    > result.txt
```

### Operation `change2fa_method`
```sh
$ samples/cli/sample-apps Iam change2faMethod \
    --factor 'string' \
    --mfaToken 'string' \
    > result.txt
```

### Operation `verify2fa_code`
```sh
$ samples/cli/sample-apps Iam verify2faCode \
    --code 'string' \
    --factor 'string' \
    --mfaToken 'string' \
    --rememberDevice false \
    > result.txt
```

### Operation `verify2fa_code_forward`
```sh
$ samples/cli/sample-apps Iam verify2faCodeForward \
    --defaultFactor 'string' \
    --factors 'string' \
    --rememberDevice false \
    --clientId 'string' \
    --code 'string' \
    --factor 'string' \
    --mfaToken 'string' \
    > result.txt
```

### Operation `retrieve_user_third_party_platform_token_v3`
```sh
$ samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace 'string' \
    --platformId 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `auth_code_request_v3`
```sh
$ samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'string' \
    --clientId 'string' \
    --redirectUri 'string' \
    --requestId 'string' \
    > result.txt
```

### Operation `platform_token_grant_v3`
```sh
$ samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'string' \
    --additionalData 'string' \
    --clientId 'string' \
    --createHeadless false \
    --deviceId 'string' \
    --macAddress 'string' \
    --platformToken 'string' \
    --serviceLabel 3.14 \
    --skipSetCookie false \
    > result.txt
```

### Operation `get_revocation_list_v3`
```sh
$ samples/cli/sample-apps Iam getRevocationListV3 \
    > result.txt
```

### Operation `token_revocation_v3`
```sh
$ samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'string' \
    > result.txt
```

### Operation `simultaneous_login_v3`
```sh
$ samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'string' \
    --simultaneousTicket 'string' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket 'string' \
    > result.txt
```

### Operation `token_grant_v3`
```sh
$ samples/cli/sample-apps Iam tokenGrantV3 \
    --authTrustId 'string' \
    --deviceId 'string' \
    --additionalData 'string' \
    --clientId 'string' \
    --clientSecret 'string' \
    --code 'string' \
    --codeVerifier 'string' \
    --extendNamespace 'string' \
    --extendExp false \
    --password 'string' \
    --redirectUri 'string' \
    --refreshToken 'string' \
    --scope 'string' \
    --username 'string' \
    --grantType 'authorization_code' \
    > result.txt
```

### Operation `verify_token_v3`
```sh
$ samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'string' \
    > result.txt
```

### Operation `platform_authentication_v3`
```sh
$ samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'string' \
    --code 'string' \
    --error 'string' \
    --openidAssocHandle 'string' \
    --openidClaimedId 'string' \
    --openidIdentity 'string' \
    --openidMode 'string' \
    --openidNs 'string' \
    --openidOpEndpoint 'string' \
    --openidResponseNonce 'string' \
    --openidReturnTo 'string' \
    --openidSig 'string' \
    --openidSigned 'string' \
    --state 'string' \
    > result.txt
```

### Operation `platform_token_refresh_v3`
```sh
$ samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'string' \
    --platformToken 'string' \
    > result.txt
```

### Operation `public_get_input_validations`
```sh
$ samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty false \
    --languageCode 'string' \
    > result.txt
```

### Operation `public_get_input_validation_by_field`
```sh
$ samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'string' \
    > result.txt
```

### Operation `public_get_country_age_restriction_v3`
```sh
$ samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `public_get_config_value_v3`
```sh
$ samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `public_get_country_list_v3`
```sh
$ samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace 'string' \
    > result.txt
```

### Operation `retrieve_all_active_third_party_login_platform_credential_public_v3`
```sh
$ samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace 'string' \
    > result.txt
```

### Operation `retrieve_active_oidc_clients_public_v3`
```sh
$ samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace 'string' \
    --clientId 'string' \
    > result.txt
```

### Operation `public_get_profile_update_strategy_v3`
```sh
$ samples/cli/sample-apps Iam publicGetProfileUpdateStrategyV3 \
    --namespace 'string' \
    --field 'country' \
    > result.txt
```

### Operation `public_get_async_status`
```sh
$ samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace 'string' \
    --requestId 'string' \
    > result.txt
```

### Operation `public_search_user_v3`
```sh
$ samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace 'string' \
    --by 'string' \
    --limit 1 \
    --offset 1 \
    --platformBy 'string' \
    --platformId 'string' \
    --query 'string' \
    > result.txt
```

### Operation `public_create_user_v3`
```sh
$ samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace 'string' \
    --body '{"PasswordMD5Sum": "string", "acceptedPolicies": [{}], "authType": "string", "code": "string", "country": "string", "dateOfBirth": "string", "displayName": "string", "emailAddress": "string", "password": "string", "reachMinimumAge": false, "uniqueDisplayName": "string"}' \
    > result.txt
```

### Operation `check_user_availability`
```sh
$ samples/cli/sample-apps Iam checkUserAvailability \
    --namespace 'string' \
    --field 'string' \
    --query 'string' \
    > result.txt
```

### Operation `public_send_registration_code`
```sh
$ samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace 'string' \
    --body '{"emailAddress": "string", "languageTag": "string"}' \
    > result.txt
```

### Operation `public_verify_registration_code`
```sh
$ samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace 'string' \
    --body '{"code": "string", "emailAddress": "string"}' \
    > result.txt
```

### Operation `public_forgot_password_v3`
```sh
$ samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace 'string' \
    --body '{"emailAddress": "string", "languageTag": "string"}' \
    > result.txt
```

### Operation `public_validate_user_input`
```sh
$ samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace 'string' \
    --body '{"displayName": "string", "password": "string", "uniqueDisplayName": "string", "username": "string"}' \
    > result.txt
```

### Operation `get_admin_invitation_v3`
```sh
$ samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `create_user_from_invitation_v3`
```sh
$ samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'string' \
    --namespace 'string' \
    --body '{"PasswordMD5Sum": "string", "acceptedPolicies": [{}], "authType": "string", "code": "string", "country": "string", "dateOfBirth": "string", "displayName": "string", "emailAddress": "string", "password": "string", "reachMinimumAge": false, "uniqueDisplayName": "string"}' \
    > result.txt
```

### Operation `update_user_v3`
```sh
$ samples/cli/sample-apps Iam updateUserV3 \
    --namespace 'string' \
    --body '{"avatarUrl": "string", "country": "string", "dateOfBirth": "string", "displayName": "string", "languageTag": "string", "uniqueDisplayName": "string", "userName": "string"}' \
    > result.txt
```

### Operation `public_partial_update_user_v3`
```sh
$ samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace 'string' \
    --body '{"avatarUrl": "string", "country": "string", "dateOfBirth": "string", "displayName": "string", "languageTag": "string", "uniqueDisplayName": "string", "userName": "string"}' \
    > result.txt
```

### Operation `public_send_verification_code_v3`
```sh
$ samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace 'string' \
    --body '{"context": "string", "emailAddress": "string", "languageTag": "string", "upgradeToken": "string"}' \
    > result.txt
```

### Operation `public_user_verification_v3`
```sh
$ samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace 'string' \
    --body '{"code": "string", "contactType": "string", "languageTag": "string", "validateOnly": false}' \
    > result.txt
```

### Operation `public_upgrade_headless_account_v3`
```sh
$ samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace 'string' \
    --body '{"code": "string", "country": "string", "dateOfBirth": "string", "displayName": "string", "emailAddress": "string", "password": "string", "uniqueDisplayName": "string", "validateOnly": false}' \
    > result.txt
```

### Operation `public_verify_headless_account_v3`
```sh
$ samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace 'string' \
    --needVerificationCode false \
    --body '{"emailAddress": "string", "password": "string"}' \
    > result.txt
```

### Operation `public_update_password_v3`
```sh
$ samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace 'string' \
    --body '{"languageTag": "string", "mfaToken": "string", "newPassword": "string", "oldPassword": "string"}' \
    > result.txt
```

### Operation `public_create_justice_user`
```sh
$ samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace 'string' \
    --targetNamespace 'string' \
    > result.txt
```

### Operation `public_platform_link_v3`
```sh
$ samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace 'string' \
    --platformId 'string' \
    --redirectUri 'string' \
    --ticket 'string' \
    > result.txt
```

### Operation `public_platform_unlink_all_v3`
```sh
$ samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace 'string' \
    --platformId 'string' \
    > result.txt
```

### Operation `public_force_platform_link_v3`
```sh
$ samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace 'string' \
    --platformId 'string' \
    --ticket 'string' \
    > result.txt
```

### Operation `public_web_link_platform`
```sh
$ samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace 'string' \
    --platformId 'string' \
    --clientId 'string' \
    --redirectUri 'string' \
    > result.txt
```

### Operation `public_web_link_platform_establish`
```sh
$ samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace 'string' \
    --platformId 'string' \
    --code 'string' \
    --state 'string' \
    > result.txt
```

### Operation `public_process_web_link_platform_v3`
```sh
$ samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace 'string' \
    --platformId 'string' \
    --code 'string' \
    --state 'string' \
    > result.txt
```

### Operation `public_get_users_platform_infos_v3`
```sh
$ samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace 'string' \
    --body '{"platformId": "string", "userIds": ["string"]}' \
    > result.txt
```

### Operation `reset_password_v3`
```sh
$ samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace 'string' \
    --body '{"clientId": "string", "code": "string", "emailAddress": "string", "languageTag": "string", "newPassword": "string"}' \
    > result.txt
```

### Operation `public_get_user_ban_history_v3`
```sh
$ samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace 'string' \
    --userId 'string' \
    --activeOnly false \
    --after 'string' \
    --before 'string' \
    --limit 1 \
    > result.txt
```

### Operation `public_list_user_all_platform_accounts_distinct_v3`
```sh
$ samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_get_user_information_v3`
```sh
$ samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_get_user_login_histories_v3`
```sh
$ samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace 'string' \
    --userId 'string' \
    --after 3.14 \
    --before 3.14 \
    --limit 1 \
    > result.txt
```

### Operation `public_get_user_platform_accounts_v3`
```sh
$ samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace 'string' \
    --userId 'string' \
    --after 'string' \
    --before 'string' \
    --limit 1 \
    --platformId 'string' \
    > result.txt
```

### Operation `public_list_justice_platform_accounts_v3`
```sh
$ samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_link_platform_account`
```sh
$ samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace 'string' \
    --userId 'string' \
    --body '{"platformId": "string", "platformUserId": "string"}' \
    > result.txt
```

### Operation `public_force_link_platform_with_progression`
```sh
$ samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace 'string' \
    --userId 'string' \
    --body '{"chosenNamespaces": ["string"], "requestId": "string"}' \
    > result.txt
```

### Operation `public_get_publisher_user_v3`
```sh
$ samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_validate_user_by_user_id_and_password_v3`
```sh
$ samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace 'string' \
    --userId 'string' \
    --password 'string' \
    > result.txt
```

### Operation `public_get_roles_v3`
```sh
$ samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'string' \
    --before 'string' \
    --isWildcard false \
    --limit 1 \
    > result.txt
```

### Operation `public_get_role_v3`
```sh
$ samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'string' \
    > result.txt
```

### Operation `public_forgot_password_without_namespace_v3`
```sh
$ samples/cli/sample-apps Iam publicForgotPasswordWithoutNamespaceV3 \
    --body '{"clientId": "string", "emailAddress": "string", "languageTag": "string"}' \
    > result.txt
```

### Operation `public_get_my_user_v3`
```sh
$ samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms false \
    > result.txt
```

### Operation `public_send_code_forward_v3`
```sh
$ samples/cli/sample-apps Iam publicSendCodeForwardV3 \
    --body '{"context": "string", "emailAddress": "string", "languageTag": "string", "upgradeToken": "string"}' \
    > result.txt
```

### Operation `public_get_link_headless_account_to_my_account_conflict_v3`
```sh
$ samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'string' \
    > result.txt
```

### Operation `link_headless_account_to_my_account_v3`
```sh
$ samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["string"], "oneTimeLinkCode": "string"}' \
    > result.txt
```

### Operation `public_get_my_redirection_after_link_v3`
```sh
$ samples/cli/sample-apps Iam publicGetMyRedirectionAfterLinkV3 \
    --oneTimeLinkCode 'string' \
    > result.txt
```

### Operation `public_get_my_profile_allow_update_status_v3`
```sh
$ samples/cli/sample-apps Iam publicGetMyProfileAllowUpdateStatusV3 \
    > result.txt
```

### Operation `public_send_verification_link_v3`
```sh
$ samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "string"}' \
    > result.txt
```

### Operation `public_get_openid_user_info_v3`
```sh
$ samples/cli/sample-apps Iam publicGetOpenidUserInfoV3 \
    > result.txt
```

### Operation `public_verify_user_by_link_v3`
```sh
$ samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'string' \
    > result.txt
```

### Operation `platform_authenticate_samlv3_handler`
```sh
$ samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'string' \
    --code 'string' \
    --error 'string' \
    --state 'string' \
    > result.txt
```

### Operation `login_sso_client`
```sh
$ samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'string' \
    --payload 'string' \
    > result.txt
```

### Operation `logout_sso_client`
```sh
$ samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'string' \
    > result.txt
```

### Operation `request_target_token_response_v3`
```sh
$ samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'string' \
    --code 'string' \
    > result.txt
```

### Operation `upgrade_and_authenticate_forward_v3`
```sh
$ samples/cli/sample-apps Iam upgradeAndAuthenticateForwardV3 \
    --clientId 'string' \
    --upgradeSuccessToken 'string' \
    > result.txt
```

### Operation `admin_list_invitation_histories_v4`
```sh
$ samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit 1 \
    --namespace 'string' \
    --offset 1 \
    > result.txt
```

### Operation `admin_get_devices_by_user_v4`
```sh
$ samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_get_banned_devices_v4`
```sh
$ samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace 'string' \
    --deviceType 'string' \
    --endDate 'string' \
    --limit 1 \
    --offset 1 \
    --startDate 'string' \
    > result.txt
```

### Operation `admin_get_user_device_bans_v4`
```sh
$ samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_ban_device_v4`
```sh
$ samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace 'string' \
    --body '{"comment": "string", "deviceId": "string", "deviceType": "string", "enabled": false, "endDate": "string", "ext": {"string": {}}, "reason": "string"}' \
    > result.txt
```

### Operation `admin_get_device_ban_v4`
```sh
$ samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_update_device_ban_v4`
```sh
$ samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'string' \
    --namespace 'string' \
    --body '{"enabled": false}' \
    > result.txt
```

### Operation `admin_generate_report_v4`
```sh
$ samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace 'string' \
    --endDate 'string' \
    --startDate 'string' \
    --deviceType 'string' \
    > result.txt
```

### Operation `admin_get_device_types_v4`
```sh
$ samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_get_device_bans_v4`
```sh
$ samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_unban_device_v4`
```sh
$ samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_get_users_by_device_v4`
```sh
$ samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_get_namespace_invitation_history_v4`
```sh
$ samples/cli/sample-apps Iam adminGetNamespaceInvitationHistoryV4 \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_get_namespace_user_invitation_history_v4`
```sh
$ samples/cli/sample-apps Iam adminGetNamespaceUserInvitationHistoryV4 \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_create_test_users_v4`
```sh
$ samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace 'string' \
    --body '{"count": 1, "userInfo": {}}' \
    > result.txt
```

### Operation `admin_create_user_v4`
```sh
$ samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace 'string' \
    --body '{"acceptedPolicies": [{}], "authType": "EMAILPASSWD", "code": "string", "country": "string", "dateOfBirth": "string", "displayName": "string", "emailAddress": "string", "password": "string", "passwordMD5Sum": "string", "reachMinimumAge": false, "uniqueDisplayName": "string", "username": "string"}' \
    > result.txt
```

### Operation `admin_bulk_update_user_account_type_v4`
```sh
$ samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace 'string' \
    --body '{"testAccount": false, "userIds": ["string"]}' \
    > result.txt
```

### Operation `admin_bulk_check_valid_user_idv4`
```sh
$ samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace 'string' \
    --body '{"userIds": ["string"]}' \
    > result.txt
```

### Operation `admin_update_user_v4`
```sh
$ samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace 'string' \
    --userId 'string' \
    --body '{"avatarUrl": "string", "country": "string", "dateOfBirth": "string", "displayName": "string", "languageTag": "string", "skipLoginQueue": false, "tags": ["string"], "uniqueDisplayName": "string", "userName": "string"}' \
    > result.txt
```

### Operation `admin_update_user_email_address_v4`
```sh
$ samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace 'string' \
    --userId 'string' \
    --body '{"code": "string", "emailAddress": "string"}' \
    > result.txt
```

### Operation `admin_disable_user_mfav4`
```sh
$ samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace 'string' \
    --userId 'string' \
    --body '{"factor": "string", "mfaToken": "string"}' \
    > result.txt
```

### Operation `admin_get_user_mfa_status_v4`
```sh
$ samples/cli/sample-apps Iam adminGetUserMFAStatusV4 \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_list_user_roles_v4`
```sh
$ samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_update_user_role_v4`
```sh
$ samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace 'string' \
    --userId 'string' \
    --body '{"assignedNamespaces": ["string"], "roleId": "string"}' \
    > result.txt
```

### Operation `admin_add_user_role_v4`
```sh
$ samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace 'string' \
    --userId 'string' \
    --body '{"assignedNamespaces": ["string"], "roleId": "string"}' \
    > result.txt
```

### Operation `admin_remove_user_role_v4`
```sh
$ samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace 'string' \
    --userId 'string' \
    --body '{"assignedNamespaces": ["string"], "roleId": "string"}' \
    > result.txt
```

### Operation `admin_get_roles_v4`
```sh
$ samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole false \
    --isWildcard false \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_create_role_v4`
```sh
$ samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "string"}' \
    > result.txt
```

### Operation `admin_get_role_v4`
```sh
$ samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'string' \
    > result.txt
```

### Operation `admin_delete_role_v4`
```sh
$ samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'string' \
    > result.txt
```

### Operation `admin_update_role_v4`
```sh
$ samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'string' \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "string"}' \
    > result.txt
```

### Operation `admin_update_role_permissions_v4`
```sh
$ samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'string' \
    --body '{"permissions": [{}]}' \
    > result.txt
```

### Operation `admin_add_role_permissions_v4`
```sh
$ samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'string' \
    --body '{"permissions": [{}]}' \
    > result.txt
```

### Operation `admin_delete_role_permissions_v4`
```sh
$ samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'string' \
    --body '["string"]' \
    > result.txt
```

### Operation `admin_list_assigned_users_v4`
```sh
$ samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'string' \
    --after 'string' \
    --before 'string' \
    --limit 1 \
    > result.txt
```

### Operation `admin_assign_user_to_role_v4`
```sh
$ samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'string' \
    --body '{"assignedNamespaces": ["string"], "namespace": "string", "userId": "string"}' \
    > result.txt
```

### Operation `admin_revoke_user_from_role_v4`
```sh
$ samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'string' \
    --body '{"namespace": "string", "userId": "string"}' \
    > result.txt
```

### Operation `admin_invite_user_new_v4`
```sh
$ samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["string"], "emailAddresses": ["string"], "isAdmin": false, "isNewStudio": false, "languageTag": "string", "namespace": "string", "roleId": "string"}' \
    > result.txt
```

### Operation `admin_update_my_user_v4`
```sh
$ samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "string", "country": "string", "dateOfBirth": "string", "displayName": "string", "languageTag": "string", "skipLoginQueue": false, "tags": ["string"], "uniqueDisplayName": "string", "userName": "string"}' \
    > result.txt
```

### Operation `admin_disable_my_authenticator_v4`
```sh
$ samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"factor": "string", "mfaToken": "string"}' \
    > result.txt
```

### Operation `admin_enable_my_authenticator_v4`
```sh
$ samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'string' \
    > result.txt
```

### Operation `admin_generate_my_authenticator_key_v4`
```sh
$ samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > result.txt
```

### Operation `admin_disable_my_backup_codes_v4`
```sh
$ samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    --body '{"factor": "string", "mfaToken": "string"}' \
    > result.txt
```

### Operation `admin_get_backup_codes_v4`
```sh
$ samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag 'string' \
    > result.txt
```

### Operation `admin_generate_backup_codes_v4`
```sh
$ samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag 'string' \
    > result.txt
```

### Operation `admin_enable_backup_codes_v4`
```sh
$ samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag 'string' \
    > result.txt
```

### Operation `admin_challenge_my_mfav4`
```sh
$ samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code 'string' \
    --factor 'string' \
    > result.txt
```

### Operation `admin_send_my_mfa_email_code_v4`
```sh
$ samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action 'string' \
    --languageTag 'string' \
    > result.txt
```

### Operation `admin_disable_my_email_v4`
```sh
$ samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"factor": "string", "mfaToken": "string"}' \
    > result.txt
```

### Operation `admin_enable_my_email_v4`
```sh
$ samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'string' \
    > result.txt
```

### Operation `admin_get_my_enabled_factors_v4`
```sh
$ samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > result.txt
```

### Operation `admin_make_factor_my_default_v4`
```sh
$ samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'string' \
    > result.txt
```

### Operation `admin_get_my_own_mfa_status_v4`
```sh
$ samples/cli/sample-apps Iam adminGetMyOwnMFAStatusV4 \
    > result.txt
```

### Operation `authentication_with_platform_link_v4`
```sh
$ samples/cli/sample-apps Iam authenticationWithPlatformLinkV4 \
    --extendExp false \
    --clientId 'string' \
    --linkingToken 'string' \
    --password 'string' \
    --username 'string' \
    > result.txt
```

### Operation `generate_token_by_new_headless_account_v4`
```sh
$ samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'string' \
    --extendExp false \
    --linkingToken 'string' \
    > result.txt
```

### Operation `verify2fa_code_v4`
```sh
$ samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'string' \
    --factor 'string' \
    --mfaToken 'string' \
    --rememberDevice false \
    > result.txt
```

### Operation `platform_token_grant_v4`
```sh
$ samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'string' \
    --codeChallenge 'string' \
    --codeChallengeMethod 'S256' \
    --additionalData 'string' \
    --clientId 'string' \
    --createHeadless false \
    --deviceId 'string' \
    --macAddress 'string' \
    --platformToken 'string' \
    --serviceLabel 3.14 \
    --skipSetCookie false \
    > result.txt
```

### Operation `simultaneous_login_v4`
```sh
$ samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'string' \
    --codeChallengeMethod 'S256' \
    --simultaneousPlatform 'string' \
    --simultaneousTicket 'string' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket 'string' \
    > result.txt
```

### Operation `token_grant_v4`
```sh
$ samples/cli/sample-apps Iam tokenGrantV4 \
    --authTrustId 'string' \
    --deviceId 'string' \
    --codeChallenge 'string' \
    --codeChallengeMethod 'S256' \
    --additionalData 'string' \
    --clientId 'string' \
    --clientSecret 'string' \
    --code 'string' \
    --codeVerifier 'string' \
    --extendNamespace 'string' \
    --extendExp false \
    --loginQueueTicket 'string' \
    --password 'string' \
    --redirectUri 'string' \
    --refreshToken 'string' \
    --scope 'string' \
    --username 'string' \
    --grantType 'authorization_code' \
    > result.txt
```

### Operation `request_target_token_response_v4`
```sh
$ samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'string' \
    --code 'string' \
    > result.txt
```

### Operation `public_list_user_id_by_platform_user_i_ds_v4`
```sh
$ samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace 'string' \
    --platformId 'string' \
    --rawPUID false \
    --body '{"pidType": "string", "platformUserIds": ["string"]}' \
    > result.txt
```

### Operation `public_get_user_by_platform_user_idv4`
```sh
$ samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV4 \
    --namespace 'string' \
    --platformId 'string' \
    --platformUserId 'string' \
    > result.txt
```

### Operation `public_create_test_user_v4`
```sh
$ samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace 'string' \
    --body '{"acceptedPolicies": [{}], "authType": "EMAILPASSWD", "country": "string", "dateOfBirth": "string", "displayName": "string", "emailAddress": "string", "password": "string", "passwordMD5Sum": "string", "uniqueDisplayName": "string", "username": "string", "verified": false}' \
    > result.txt
```

### Operation `public_create_user_v4`
```sh
$ samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace 'string' \
    --body '{"acceptedPolicies": [{}], "authType": "EMAILPASSWD", "code": "string", "country": "string", "dateOfBirth": "string", "displayName": "string", "emailAddress": "string", "password": "string", "passwordMD5Sum": "string", "reachMinimumAge": false, "uniqueDisplayName": "string", "username": "string"}' \
    > result.txt
```

### Operation `create_user_from_invitation_v4`
```sh
$ samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'string' \
    --namespace 'string' \
    --body '{"acceptedPolicies": [{}], "authType": "EMAILPASSWD", "code": "string", "country": "string", "dateOfBirth": "string", "displayName": "string", "emailAddress": "string", "password": "string", "passwordMD5Sum": "string", "reachMinimumAge": false, "uniqueDisplayName": "string", "username": "string"}' \
    > result.txt
```

### Operation `public_update_user_v4`
```sh
$ samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace 'string' \
    --body '{"avatarUrl": "string", "country": "string", "dateOfBirth": "string", "displayName": "string", "languageTag": "string", "uniqueDisplayName": "string", "userName": "string"}' \
    > result.txt
```

### Operation `public_update_user_email_address_v4`
```sh
$ samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace 'string' \
    --body '{"code": "string", "emailAddress": "string"}' \
    > result.txt
```

### Operation `public_upgrade_headless_account_with_verification_code_v4`
```sh
$ samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace 'string' \
    --body '{"code": "string", "country": "string", "dateOfBirth": "string", "displayName": "string", "emailAddress": "string", "password": "string", "reachMinimumAge": false, "uniqueDisplayName": "string", "username": "string", "validateOnly": false}' \
    > result.txt
```

### Operation `public_upgrade_headless_account_v4`
```sh
$ samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace 'string' \
    --body '{"dateOfBirth": "string", "displayName": "string", "emailAddress": "string", "password": "string", "uniqueDisplayName": "string", "username": "string"}' \
    > result.txt
```

### Operation `public_disable_my_authenticator_v4`
```sh
$ samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace 'string' \
    --body '{"factor": "string", "mfaToken": "string"}' \
    > result.txt
```

### Operation `public_enable_my_authenticator_v4`
```sh
$ samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace 'string' \
    --code 'string' \
    > result.txt
```

### Operation `public_generate_my_authenticator_key_v4`
```sh
$ samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace 'string' \
    > result.txt
```

### Operation `public_disable_my_backup_codes_v4`
```sh
$ samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace 'string' \
    --body '{"factor": "string", "mfaToken": "string"}' \
    > result.txt
```

### Operation `public_get_backup_codes_v4`
```sh
$ samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace 'string' \
    --languageTag 'string' \
    > result.txt
```

### Operation `public_generate_backup_codes_v4`
```sh
$ samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace 'string' \
    --languageTag 'string' \
    > result.txt
```

### Operation `public_enable_backup_codes_v4`
```sh
$ samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace 'string' \
    --languageTag 'string' \
    > result.txt
```

### Operation `public_challenge_my_mfav4`
```sh
$ samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace 'string' \
    --code 'string' \
    --factor 'string' \
    > result.txt
```

### Operation `public_remove_trusted_device_v4`
```sh
$ samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --cookie 'string' \
    --namespace 'string' \
    --cookie 'device_token=string' \
    > result.txt
```

### Operation `public_send_my_mfa_email_code_v4`
```sh
$ samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace 'string' \
    --action 'string' \
    --languageTag 'string' \
    > result.txt
```

### Operation `public_disable_my_email_v4`
```sh
$ samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace 'string' \
    --body '{"factor": "string", "mfaToken": "string"}' \
    > result.txt
```

### Operation `public_enable_my_email_v4`
```sh
$ samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace 'string' \
    --code 'string' \
    > result.txt
```

### Operation `public_get_my_enabled_factors_v4`
```sh
$ samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace 'string' \
    > result.txt
```

### Operation `public_make_factor_my_default_v4`
```sh
$ samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace 'string' \
    --factor 'string' \
    > result.txt
```

### Operation `public_get_my_own_mfa_status_v4`
```sh
$ samples/cli/sample-apps Iam publicGetMyOwnMFAStatusV4 \
    --namespace 'string' \
    > result.txt
```

### Operation `public_get_user_public_info_by_user_id_v4`
```sh
$ samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_invite_user_v4`
```sh
$ samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "string", "emailAddress": "string", "languageTag": "string", "namespace": "string", "namespaceDisplayName": "string"}' \
    > result.txt
```

### Operation `public_upgrade_headless_with_code_v4_forward`
```sh
$ samples/cli/sample-apps Iam publicUpgradeHeadlessWithCodeV4Forward \
    --body '{"acceptedPolicies": [{}], "code": "string", "country": "string", "dateOfBirth": "string", "displayName": "string", "emailAddress": "string", "password": "string", "reachMinimumAge": false, "uniqueDisplayName": "string", "username": "string", "validateOnly": false}' \
    > result.txt
```

