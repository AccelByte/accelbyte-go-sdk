#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: cli_test.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

EXIT_CODE=0

eval_tap() {
  if [ $1 -eq 0 ]; then
    echo "ok $2 - $3"
  else
    EXIT_CODE=1
    echo "not ok $2 - $3"
    sed 's/^/# /g' $4
  fi
  rm -f $4
}

echo "TAP version 13"
echo "1..347"

#- 1 Login
samples/cli/sample-apps login \
    -u 'admin' \
    -p 'admin' \
    > test.out 2>&1
eval_tap $? 1 'Login' test.out

if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

touch "tmp.dat"

#- 2 GetBansType
eval_tap 0 2 'GetBansType # SKIP deprecated' test.out

#- 3 GetListBanReason
eval_tap 0 3 'GetListBanReason # SKIP deprecated' test.out

#- 4 GetClients
eval_tap 0 4 'GetClients # SKIP deprecated' test.out

#- 5 CreateClient
eval_tap 0 5 'CreateClient # SKIP deprecated' test.out

#- 6 GetClient
eval_tap 0 6 'GetClient # SKIP deprecated' test.out

#- 7 UpdateClient
eval_tap 0 7 'UpdateClient # SKIP deprecated' test.out

#- 8 DeleteClient
eval_tap 0 8 'DeleteClient # SKIP deprecated' test.out

#- 9 UpdateClientPermission
eval_tap 0 9 'UpdateClientPermission # SKIP deprecated' test.out

#- 10 AddClientPermission
eval_tap 0 10 'AddClientPermission # SKIP deprecated' test.out

#- 11 DeleteClientPermission
eval_tap 0 11 'DeleteClientPermission # SKIP deprecated' test.out

#- 12 UpdateClientSecret
eval_tap 0 12 'UpdateClientSecret # SKIP deprecated' test.out

#- 13 GetClientsbyNamespace
eval_tap 0 13 'GetClientsbyNamespace # SKIP deprecated' test.out

#- 14 CreateClientByNamespace
eval_tap 0 14 'CreateClientByNamespace # SKIP deprecated' test.out

#- 15 DeleteClientByNamespace
eval_tap 0 15 'DeleteClientByNamespace # SKIP deprecated' test.out

#- 16 CreateUser
eval_tap 0 16 'CreateUser # SKIP deprecated' test.out

#- 17 GetAdminUsersByRoleID
eval_tap 0 17 'GetAdminUsersByRoleID # SKIP deprecated' test.out

#- 18 GetUserByLoginID
eval_tap 0 18 'GetUserByLoginID # SKIP deprecated' test.out

#- 19 GetUserByPlatformUserID
eval_tap 0 19 'GetUserByPlatformUserID # SKIP deprecated' test.out

#- 20 ForgotPassword
eval_tap 0 20 'ForgotPassword # SKIP deprecated' test.out

#- 21 GetUsersByLoginIds
eval_tap 0 21 'GetUsersByLoginIds # SKIP deprecated' test.out

#- 22 ResetPassword
eval_tap 0 22 'ResetPassword # SKIP deprecated' test.out

#- 23 SearchUser
eval_tap 0 23 'SearchUser # SKIP deprecated' test.out

#- 24 GetUserByUserID
eval_tap 0 24 'GetUserByUserID # SKIP deprecated' test.out

#- 25 UpdateUser
eval_tap 0 25 'UpdateUser # SKIP deprecated' test.out

#- 26 DeleteUser
eval_tap 0 26 'DeleteUser # SKIP deprecated' test.out

#- 27 BanUser
eval_tap 0 27 'BanUser # SKIP deprecated' test.out

#- 28 GetUserBanHistory
eval_tap 0 28 'GetUserBanHistory # SKIP deprecated' test.out

#- 29 DisableUserBan
eval_tap 0 29 'DisableUserBan # SKIP deprecated' test.out

#- 30 EnableUserBan
eval_tap 0 30 'EnableUserBan # SKIP deprecated' test.out

#- 31 ListCrossNamespaceAccountLink
eval_tap 0 31 'ListCrossNamespaceAccountLink # SKIP deprecated' test.out

#- 32 DisableUser
eval_tap 0 32 'DisableUser # SKIP deprecated' test.out

#- 33 EnableUser
eval_tap 0 33 'EnableUser # SKIP deprecated' test.out

#- 34 GetUserInformation
eval_tap 0 34 'GetUserInformation # SKIP deprecated' test.out

#- 35 DeleteUserInformation
eval_tap 0 35 'DeleteUserInformation # SKIP deprecated' test.out

#- 36 GetUserLoginHistories
eval_tap 0 36 'GetUserLoginHistories # SKIP deprecated' test.out

#- 37 UpdatePassword
eval_tap 0 37 'UpdatePassword # SKIP deprecated' test.out

#- 38 SaveUserPermission
eval_tap 0 38 'SaveUserPermission # SKIP deprecated' test.out

#- 39 AddUserPermission
eval_tap 0 39 'AddUserPermission # SKIP deprecated' test.out

#- 40 DeleteUserPermission
eval_tap 0 40 'DeleteUserPermission # SKIP deprecated' test.out

#- 41 GetUserPlatformAccounts
eval_tap 0 41 'GetUserPlatformAccounts # SKIP deprecated' test.out

#- 42 GetUserMapping
eval_tap 0 42 'GetUserMapping # SKIP deprecated' test.out

#- 43 GetUserJusticePlatformAccount
eval_tap 0 43 'GetUserJusticePlatformAccount # SKIP deprecated' test.out

#- 44 PlatformLink
eval_tap 0 44 'PlatformLink # SKIP deprecated' test.out

#- 45 PlatformUnlink
eval_tap 0 45 'PlatformUnlink # SKIP deprecated' test.out

#- 46 GetPublisherUser
eval_tap 0 46 'GetPublisherUser # SKIP deprecated' test.out

#- 47 SaveUserRoles
eval_tap 0 47 'SaveUserRoles # SKIP deprecated' test.out

#- 48 AddUserRole
eval_tap 0 48 'AddUserRole # SKIP deprecated' test.out

#- 49 DeleteUserRole
eval_tap 0 49 'DeleteUserRole # SKIP deprecated' test.out

#- 50 UpgradeHeadlessAccount
eval_tap 0 50 'UpgradeHeadlessAccount # SKIP deprecated' test.out

#- 51 UpgradeHeadlessAccountWithVerificationCode
eval_tap 0 51 'UpgradeHeadlessAccountWithVerificationCode # SKIP deprecated' test.out

#- 52 UserVerification
eval_tap 0 52 'UserVerification # SKIP deprecated' test.out

#- 53 SendVerificationCode
eval_tap 0 53 'SendVerificationCode # SKIP deprecated' test.out

#- 54 Authorization
eval_tap 0 54 'Authorization # SKIP deprecated' test.out

#- 55 GetJWKS
eval_tap 0 55 'GetJWKS # SKIP deprecated' test.out

#- 56 PlatformTokenRequestHandler
eval_tap 0 56 'PlatformTokenRequestHandler # SKIP deprecated' test.out

#- 57 RevokeUser
eval_tap 0 57 'RevokeUser # SKIP deprecated' test.out

#- 58 GetRevocationList
eval_tap 0 58 'GetRevocationList # SKIP deprecated' test.out

#- 59 RevokeToken
eval_tap 0 59 'RevokeToken # SKIP deprecated' test.out

#- 60 RevokeAUser
eval_tap 0 60 'RevokeAUser # SKIP deprecated' test.out

#- 61 TokenGrant
eval_tap 0 61 'TokenGrant # SKIP deprecated' test.out

#- 62 VerifyToken
eval_tap 0 62 'VerifyToken # SKIP deprecated' test.out

#- 63 GetRoles
eval_tap 0 63 'GetRoles # SKIP deprecated' test.out

#- 64 CreateRole
eval_tap 0 64 'CreateRole # SKIP deprecated' test.out

#- 65 GetRole
eval_tap 0 65 'GetRole # SKIP deprecated' test.out

#- 66 UpdateRole
eval_tap 0 66 'UpdateRole # SKIP deprecated' test.out

#- 67 DeleteRole
eval_tap 0 67 'DeleteRole # SKIP deprecated' test.out

#- 68 GetRoleAdminStatus
eval_tap 0 68 'GetRoleAdminStatus # SKIP deprecated' test.out

#- 69 SetRoleAsAdmin
eval_tap 0 69 'SetRoleAsAdmin # SKIP deprecated' test.out

#- 70 RemoveRoleAdmin
eval_tap 0 70 'RemoveRoleAdmin # SKIP deprecated' test.out

#- 71 GetRoleManagers
eval_tap 0 71 'GetRoleManagers # SKIP deprecated' test.out

#- 72 AddRoleManagers
eval_tap 0 72 'AddRoleManagers # SKIP deprecated' test.out

#- 73 RemoveRoleManagers
eval_tap 0 73 'RemoveRoleManagers # SKIP deprecated' test.out

#- 74 GetRoleMembers
eval_tap 0 74 'GetRoleMembers # SKIP deprecated' test.out

#- 75 AddRoleMembers
eval_tap 0 75 'AddRoleMembers # SKIP deprecated' test.out

#- 76 RemoveRoleMembers
eval_tap 0 76 'RemoveRoleMembers # SKIP deprecated' test.out

#- 77 UpdateRolePermissions
eval_tap 0 77 'UpdateRolePermissions # SKIP deprecated' test.out

#- 78 AddRolePermission
eval_tap 0 78 'AddRolePermission # SKIP deprecated' test.out

#- 79 DeleteRolePermission
eval_tap 0 79 'DeleteRolePermission # SKIP deprecated' test.out

#- 80 AdminGetAgeRestrictionStatusV2
eval_tap 0 80 'AdminGetAgeRestrictionStatusV2 # SKIP deprecated' test.out

#- 81 AdminUpdateAgeRestrictionConfigV2
eval_tap 0 81 'AdminUpdateAgeRestrictionConfigV2 # SKIP deprecated' test.out

#- 82 GetListCountryAgeRestriction
eval_tap 0 82 'GetListCountryAgeRestriction # SKIP deprecated' test.out

#- 83 UpdateCountryAgeRestriction
eval_tap 0 83 'UpdateCountryAgeRestriction # SKIP deprecated' test.out

#- 84 AdminSearchUsersV2
eval_tap 0 84 'AdminSearchUsersV2 # SKIP deprecated' test.out

#- 85 AdminGetUserByUserIdV2
eval_tap 0 85 'AdminGetUserByUserIdV2 # SKIP deprecated' test.out

#- 86 AdminUpdateUserV2
eval_tap 0 86 'AdminUpdateUserV2 # SKIP deprecated' test.out

#- 87 AdminBanUserV2
eval_tap 0 87 'AdminBanUserV2 # SKIP deprecated' test.out

#- 88 AdminGetUserBanV2
eval_tap 0 88 'AdminGetUserBanV2 # SKIP deprecated' test.out

#- 89 AdminDisableUserV2
eval_tap 0 89 'AdminDisableUserV2 # SKIP deprecated' test.out

#- 90 AdminEnableUserV2
eval_tap 0 90 'AdminEnableUserV2 # SKIP deprecated' test.out

#- 91 AdminResetPasswordV2
eval_tap 0 91 'AdminResetPasswordV2 # SKIP deprecated' test.out

#- 92 AdminDeletePlatformLinkV2
eval_tap 0 92 'AdminDeletePlatformLinkV2 # SKIP deprecated' test.out

#- 93 AdminPutUserRolesV2
eval_tap 0 93 'AdminPutUserRolesV2 # SKIP deprecated' test.out

#- 94 AdminCreateUserRolesV2
eval_tap 0 94 'AdminCreateUserRolesV2 # SKIP deprecated' test.out

#- 95 PublicGetCountryAgeRestriction
eval_tap 0 95 'PublicGetCountryAgeRestriction # SKIP deprecated' test.out

#- 96 PublicCreateUserV2
eval_tap 0 96 'PublicCreateUserV2 # SKIP deprecated' test.out

#- 97 PublicForgotPasswordV2
eval_tap 0 97 'PublicForgotPasswordV2 # SKIP deprecated' test.out

#- 98 PublicResetPasswordV2
eval_tap 0 98 'PublicResetPasswordV2 # SKIP deprecated' test.out

#- 99 PublicGetUserByUserIDV2
eval_tap 0 99 'PublicGetUserByUserIDV2 # SKIP deprecated' test.out

#- 100 PublicUpdateUserV2
eval_tap 0 100 'PublicUpdateUserV2 # SKIP deprecated' test.out

#- 101 PublicGetUserBan
eval_tap 0 101 'PublicGetUserBan # SKIP deprecated' test.out

#- 102 PublicUpdatePasswordV2
eval_tap 0 102 'PublicUpdatePasswordV2 # SKIP deprecated' test.out

#- 103 GetListJusticePlatformAccounts
eval_tap 0 103 'GetListJusticePlatformAccounts # SKIP deprecated' test.out

#- 104 PublicPlatformLinkV2
eval_tap 0 104 'PublicPlatformLinkV2 # SKIP deprecated' test.out

#- 105 PublicDeletePlatformLinkV2
eval_tap 0 105 'PublicDeletePlatformLinkV2 # SKIP deprecated' test.out

#- 106 AdminGetBansTypeV3
samples/cli/sample-apps Iam adminGetBansTypeV3 \
    > test.out 2>&1
eval_tap $? 106 'AdminGetBansTypeV3' test.out

#- 107 AdminGetListBanReasonV3
samples/cli/sample-apps Iam adminGetListBanReasonV3 \
    > test.out 2>&1
eval_tap $? 107 'AdminGetListBanReasonV3' test.out

#- 108 AdminGetInputValidations
samples/cli/sample-apps Iam adminGetInputValidations \
    > test.out 2>&1
eval_tap $? 108 'AdminGetInputValidations' test.out

#- 109 AdminUpdateInputValidations
samples/cli/sample-apps Iam adminUpdateInputValidations \
    --body '[{"field": "7utPGWtM", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "blockedWord": ["dumndHhZ", "yRqVSTax", "DMi6zES2"], "description": [{"language": "1m97D4Wr", "message": ["HlVsyurn", "YMQQKAWJ", "gsIy5iF4"]}, {"language": "PcNxFQO5", "message": ["CWbcA4L3", "rEkXLBPP", "erAWXSQI"]}, {"language": "391rrW95", "message": ["4S3C9G34", "0MOqMkD1", "jqllLL9l"]}], "isCustomRegex": false, "letterCase": "GGCxjlX3", "maxLength": 6, "maxRepeatingAlphaNum": 5, "maxRepeatingSpecialCharacter": 9, "minCharType": 35, "minLength": 87, "regex": "t2fhKswd", "specialCharacterLocation": "vOSzuR1K", "specialCharacters": ["T7XzEyWz", "s5Yax7Tr", "YQlBOUxM"]}}, {"field": "kSo6vIoq", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "blockedWord": ["qvJZW9vG", "xCHuud4O", "nNxPuTXa"], "description": [{"language": "KSIJHfna", "message": ["8vKmQ2rD", "kZX3SMPY", "MJLlJV6d"]}, {"language": "LxJrA7yQ", "message": ["z7pFRwpW", "LZ9OTko9", "dSZ43PFN"]}, {"language": "QSD8kpBP", "message": ["T0LVxnmx", "2hvRfPH1", "ETkwCSew"]}], "isCustomRegex": false, "letterCase": "fqlWsVwz", "maxLength": 38, "maxRepeatingAlphaNum": 88, "maxRepeatingSpecialCharacter": 51, "minCharType": 19, "minLength": 93, "regex": "4me3g0WN", "specialCharacterLocation": "VW8i7UBm", "specialCharacters": ["c58KIsuG", "XWuHqGHL", "kb3p15iB"]}}, {"field": "AdXYlSMH", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "blockedWord": ["dps4R9rg", "ou35Uqou", "GCazYEaa"], "description": [{"language": "4O8gs5vb", "message": ["NdvErNWX", "aXZtWUFg", "bKssNCsS"]}, {"language": "VgkIcxto", "message": ["0tvhRhHm", "H48jUFYy", "T490vlsL"]}, {"language": "mKN90rnr", "message": ["39b3QvRj", "nKwB2HTN", "8VuMpc3n"]}], "isCustomRegex": false, "letterCase": "PauOCGon", "maxLength": 69, "maxRepeatingAlphaNum": 12, "maxRepeatingSpecialCharacter": 15, "minCharType": 61, "minLength": 19, "regex": "QEKOBajB", "specialCharacterLocation": "VNe7L8I7", "specialCharacters": ["AYHXHxU3", "eohA9yId", "UMn2oNn2"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'V76IG47F' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'WBX4zGWn' \
    --before 'qIOs0ZoO' \
    --limit '57' \
    > test.out 2>&1
eval_tap $? 111 'ListAdminsV3' test.out

#- 112 AdminGetAgeRestrictionStatusV3
samples/cli/sample-apps Iam adminGetAgeRestrictionStatusV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 112 'AdminGetAgeRestrictionStatusV3' test.out

#- 113 AdminUpdateAgeRestrictionConfigV3
samples/cli/sample-apps Iam adminUpdateAgeRestrictionConfigV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 72, "enable": false}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'yVaeUHvt' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 67}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'os5JcNRq' \
    --limit '40' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "gtLKUncR", "comment": "ZVca9d31", "endDate": "EkNEaw75", "reason": "QH11s0Di", "skipNotif": true, "userIds": ["PLDSjQod", "UJhdl0z0", "b7k5B0sn"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "Lx4LuHCZ", "userId": "10HUeRq9"}, {"banId": "aoQvFKmy", "userId": "qLTBuhk3"}, {"banId": "ntLeaJxL", "userId": "19yoOv73"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUnbanUserBulkV3' test.out

#- 119 AdminGetBansTypeWithNamespaceV3
samples/cli/sample-apps Iam adminGetBansTypeWithNamespaceV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'AdminGetBansTypeWithNamespaceV3' test.out

#- 120 AdminGetClientsByNamespaceV3
samples/cli/sample-apps Iam adminGetClientsByNamespaceV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'EpIfEheh' \
    --clientName 'JfiF3s4e' \
    --clientType 'oG0FTji5' \
    --limit '29' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["gfAGQTeT", "vj2BsmHQ", "pz4TBDEj"], "baseUri": "hwHGip8I", "clientId": "cMhQbbbw", "clientName": "ndB9vhk4", "clientPermissions": [{"action": 58, "resource": "G3V4ij4l", "schedAction": 79, "schedCron": "7j49I19C", "schedRange": ["HJ8D9aQW", "iWZSw9Kr", "bK1M9v12"]}, {"action": 54, "resource": "UFeH5s1c", "schedAction": 5, "schedCron": "QlZDM16m", "schedRange": ["P6srX0bx", "G3B52LFW", "bacskEjq"]}, {"action": 53, "resource": "uOPA7HTB", "schedAction": 12, "schedCron": "QZYRWRWv", "schedRange": ["B9E5wk38", "9tPI1VlT", "bqfb2Vbs"]}], "clientPlatform": "pmbjZMjH", "deletable": true, "description": "JTvtDxsr", "namespace": "MRYSSozS", "oauthAccessTokenExpiration": 71, "oauthAccessTokenExpirationTimeUnit": "cvLpro7P", "oauthClientType": "qgN1RwNL", "oauthRefreshTokenExpiration": 45, "oauthRefreshTokenExpirationTimeUnit": "63aBHvHA", "parentNamespace": "Rbr65Xiq", "redirectUri": "J9EHdtZy", "scopes": ["8sWn6BAl", "0xyO0w0t", "hNTCilzA"], "secret": "pB7YKgUb", "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId '3L1BxnO1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'RBNTipTK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId '7u0A2Kxx' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["C7UAtGTE", "qLpB1nn4", "satUTV7H"], "baseUri": "c1EebzXr", "clientName": "YZuojGuP", "clientPermissions": [{"action": 8, "resource": "JyFWE6OK", "schedAction": 88, "schedCron": "X9simxXo", "schedRange": ["UihsIlCv", "wfU3fVRp", "e2RfeORv"]}, {"action": 29, "resource": "J34UGPhB", "schedAction": 61, "schedCron": "8nGPGTTX", "schedRange": ["AsusWvW0", "mhRANbh3", "OJFGtvee"]}, {"action": 76, "resource": "tVG71aw1", "schedAction": 22, "schedCron": "oX2Fe8aQ", "schedRange": ["hDtQwI13", "QWxDZbGL", "ejXXeibO"]}], "clientPlatform": "zXWcQzuB", "deletable": false, "description": "GFChX7Tj", "namespace": "FUZlrHkw", "oauthAccessTokenExpiration": 13, "oauthAccessTokenExpirationTimeUnit": "TUT4KnV0", "oauthRefreshTokenExpiration": 53, "oauthRefreshTokenExpirationTimeUnit": "N758ORNj", "redirectUri": "aW6aWiX4", "scopes": ["IVaPf4ls", "xiX3rYni", "TxU44zNY"], "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'huryOxX9' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 100, "resource": "ZptmS91u"}, {"action": 77, "resource": "e1SFNQqk"}, {"action": 28, "resource": "SwNyKUN7"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'MFLn6bcG' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 61, "resource": "4uZy1xyC"}, {"action": 40, "resource": "qm4jC304"}, {"action": 67, "resource": "YXocioWv"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '67' \
    --clientId 'raFtoKbt' \
    --namespace $AB_NAMESPACE \
    --resource 'HwVjJLAN' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteClientPermissionV3' test.out

#- 128 RetrieveAllThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 129 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 129 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 130 RetrieveAllSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 130 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 131 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'TlTq6Gx0' \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'zOSjvZG5' \
    --body '{"ACSURL": "b8mdCMz3", "AWSCognitoRegion": "bAyzXOuP", "AWSCognitoUserPool": "mhG06RsE", "AllowedClients": ["kA4tsxD8", "JLlVIjPU", "AsFcD2Oh"], "AppId": "xia3lGYc", "AuthorizationEndpoint": "LsJV907D", "ClientId": "V4BEZMSt", "Environment": "ykMj5NCd", "FederationMetadataURL": "cFvmAcWB", "GenericOauthFlow": true, "IsActive": true, "Issuer": "8oRaeYhS", "JWKSEndpoint": "h34DCtYk", "KeyID": "8v7KKZT1", "NetflixCertificates": {"encryptedPrivateKey": "tgWgaG8V", "encryptedPrivateKeyName": "bV1tHtZm", "publicCertificate": "B9BRXNRi", "publicCertificateName": "K46SDAks", "rootCertificate": "C919lnzf", "rootCertificateName": "QLpVowju"}, "OrganizationId": "hf5Blc8F", "PlatformName": "yrPDBCIk", "RedirectUri": "GHjNqtoI", "RegisteredDomains": [{"affectedClientIDs": ["M0us1cw4", "ZSIV8hJO", "0e2aUzPm"], "domain": "dRPp4MRf", "namespaces": ["o3Wsg3qQ", "XeS7dfUg", "UVUzQ4Z8"], "roleId": "7aZGIGlN"}, {"affectedClientIDs": ["xVCtxQPc", "qNXcInza", "3KAJNjmN"], "domain": "M4ksiweS", "namespaces": ["pv1sZdTV", "0FtUXO6m", "MDrYBKWr"], "roleId": "bQmxm2Yh"}, {"affectedClientIDs": ["oy7lpKNj", "TsTgNJyg", "uhqrTBVz"], "domain": "SlbnoVdL", "namespaces": ["nxyBhThs", "sVzJMDL2", "XdN85zBH"], "roleId": "B9LTKmGT"}], "Secret": "3n3lQrzQ", "TeamID": "xVrh74MH", "TokenAuthenticationType": "IHdG7h5A", "TokenClaimsMapping": {"SkenqmtC": "Y4LfmHSV", "KmkTXiUv": "LgbMCmON", "tHRVEJl3": "UfAewxrR"}, "TokenEndpoint": "DBavPDih", "UserInfoEndpoint": "4UJKyO27", "UserInfoHTTPMethod": "PXaRHsPC", "scopes": ["dXjEaxQQ", "lH0bWaTX", "kWOBfU27"]}' \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'jJJ1nHkY' \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'gkkIMSAq' \
    --body '{"ACSURL": "hF6hUaLN", "AWSCognitoRegion": "JcQoOoHx", "AWSCognitoUserPool": "vOILmM1L", "AllowedClients": ["7Ke27I2T", "JpW0p5oM", "1krlRGYG"], "AppId": "uqSkUbT6", "AuthorizationEndpoint": "HNbgnHm8", "ClientId": "eb8Mxg7K", "Environment": "M0IqdOr2", "FederationMetadataURL": "P9ZCIS8i", "GenericOauthFlow": false, "IsActive": true, "Issuer": "WiuObR3I", "JWKSEndpoint": "i5rIQPxv", "KeyID": "zfQcsYMh", "NetflixCertificates": {"encryptedPrivateKey": "BHa59YI9", "encryptedPrivateKeyName": "i6kfUFlN", "publicCertificate": "ZH3j0YYq", "publicCertificateName": "lkT6FjY0", "rootCertificate": "V68Jwb0d", "rootCertificateName": "WZldJigw"}, "OrganizationId": "dKNsnMnF", "PlatformName": "2AUJFx4b", "RedirectUri": "NrvDBWJB", "RegisteredDomains": [{"affectedClientIDs": ["WJnFzmM5", "PU29p3d7", "z3sv5c1N"], "domain": "0TgDnoX0", "namespaces": ["ujXNDk8z", "8x4chEmj", "29f9RSgG"], "roleId": "xhBm4goU"}, {"affectedClientIDs": ["NFLQutbJ", "FfAqPWRQ", "7zZdUSUR"], "domain": "txhqmjFw", "namespaces": ["xQCVsUHu", "CMCcCyhi", "7goVdkZ9"], "roleId": "N8cVHaIH"}, {"affectedClientIDs": ["75Bb7hMX", "svwnee1A", "lNhhgSUc"], "domain": "nBtx0K2a", "namespaces": ["q7W2EXHl", "VBIfK0gC", "gLZonYlX"], "roleId": "5fzPFubP"}], "Secret": "Ss0ydJOR", "TeamID": "skZiJftB", "TokenAuthenticationType": "zvBbOIbu", "TokenClaimsMapping": {"GEdquxh9": "4Eu2zuwt", "pmrpuCFQ": "rOwbfa8f", "QZUb8SCL": "721oDsmI"}, "TokenEndpoint": "L6IFiotm", "UserInfoEndpoint": "FtksPDZp", "UserInfoHTTPMethod": "5fIJY1VZ", "scopes": ["ckAtwBk3", "SMHpMQir", "d6B9v5Sy"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'DpQ4UU8U' \
    --body '{"affectedClientIDs": ["b8o8D2rT", "rxECdo5d", "kduYCDjd"], "assignedNamespaces": ["osrbCWPE", "T8499q6u", "Pfsb4PNs"], "domain": "B1hEUfZq", "roleId": "PcEH0qE8"}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'A9BQoCxQ' \
    --body '{"domain": "Jr4JWcOi"}' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '9jo81ftU' \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'sE0XCdnt' \
    --body '{"acsUrl": "8MDK2Lh0", "apiKey": "hbye5ICw", "appId": "cEEE5YNs", "federationMetadataUrl": "l5DE10C7", "isActive": false, "redirectUri": "QnBwUlEV", "secret": "WN8EjFRd", "ssoUrl": "EPdiRkn5"}' \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '5rNPkZxz' \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'VpzCCC1P' \
    --body '{"acsUrl": "0OGKH6xs", "apiKey": "M8jE1J1l", "appId": "wvvWQ0ed", "federationMetadataUrl": "LvNG8GAC", "isActive": true, "redirectUri": "WOjCrJKC", "secret": "y16MU0nu", "ssoUrl": "Fi9XmcCt"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'V82E9f3I' \
    --platformUserId 'udSoukpC' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId '0xt3lCxO' \
    --after '60' \
    --before '15' \
    --limit '31' \
    > test.out 2>&1
eval_tap $? 142 'GetAdminUsersByRoleIdV3' test.out

#- 143 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress '1vlb8ewW' \
    > test.out 2>&1
eval_tap $? 143 'AdminGetUserByEmailAddressV3' test.out

#- 144 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["ANdekr7a", "cr1t8cFq", "L6ekLI4b"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["bDvonn7g", "NLSPk3hE", "O32CQmgR"], "isAdmin": true, "namespace": "DSKqREy7", "roles": ["sMbxl1rg", "Di9nhxpy", "KXECtGY8"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '28' \
    --platformUserId 'Dv2ybZEm' \
    --platformId '6E700W5i' \
    > test.out 2>&1
eval_tap $? 146 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 147 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 147 'AdminListUsersV3' test.out

#- 148 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'uf6sLBYL' \
    --endDate 'BoTVn1H2' \
    --limit '80' \
    --offset '46' \
    --platformBy 'R9Cxkaev' \
    --platformId '1lzl0wa3' \
    --query 'Nm7Cn2JC' \
    --startDate 'QcWigxop' \
    > test.out 2>&1
eval_tap $? 148 'AdminSearchUserV3' test.out

#- 149 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["8ZfprkAd", "KYE52Zit", "9JpjfJkp"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetBulkUserByEmailAddressV3' test.out

#- 150 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId '7S13DkgR' \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByUserIdV3' test.out

#- 151 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'P9k29JBH' \
    --body '{"avatarUrl": "XgyP81Rw", "country": "vOum0YkA", "dateOfBirth": "2AxUuG1M", "displayName": "xgCQVbUq", "languageTag": "UJ83pxHa", "userName": "WMPPkBNL"}' \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserV3' test.out

#- 152 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'skWNnGDm' \
    --activeOnly 'false' \
    --after 'cWYVCu6m' \
    --before 'jT8fHP7u' \
    --limit '50' \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserBanV3' test.out

#- 153 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kNW061AT' \
    --body '{"ban": "1kwt3oa9", "comment": "X2IAL8Gv", "endDate": "a03AZNCx", "reason": "6u2UeHQS", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 153 'AdminBanUserV3' test.out

#- 154 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'FekmeJ9H' \
    --namespace $AB_NAMESPACE \
    --userId 'sfHCR1OB' \
    --body '{"enabled": false, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 154 'AdminUpdateUserBanV3' test.out

#- 155 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId '4NYQGo8A' \
    --body '{"context": "9t6UUSXN", "emailAddress": "A95X3Qxx", "languageTag": "Ed8bXJ1T"}' \
    > test.out 2>&1
eval_tap $? 155 'AdminSendVerificationCodeV3' test.out

#- 156 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Y4f9hxrR' \
    --body '{"Code": "XkATjeAM", "ContactType": "1csD47wb", "LanguageTag": "87eKwhbZ", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 156 'AdminVerifyAccountV3' test.out

#- 157 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId '71kumx11' \
    > test.out 2>&1
eval_tap $? 157 'GetUserVerificationCode' test.out

#- 158 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '5OO6HPYZ' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserDeletionStatusV3' test.out

#- 159 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TtQVLTDS' \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 159 'AdminUpdateUserDeletionStatusV3' test.out

#- 160 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hAsiFJSG' \
    --body '{"code": "6WtyJs2M", "country": "hj30FMtP", "dateOfBirth": "4TEnv7Qy", "displayName": "ZDgMtVDE", "emailAddress": "yeFJ3teP", "password": "s9JPhJn4", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpgradeHeadlessAccountV3' test.out

#- 161 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QVgOCUgQ' \
    > test.out 2>&1
eval_tap $? 161 'AdminDeleteUserInformationV3' test.out

#- 162 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '0aaizJdk' \
    --after '0.3865431294752184' \
    --before '0.37170845253188' \
    --limit '69' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserLoginHistoriesV3' test.out

#- 163 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId '1pQqhUHD' \
    --body '{"languageTag": "rmifr3ko", "newPassword": "H60BLK9t", "oldPassword": "CtcBoIrv"}' \
    > test.out 2>&1
eval_tap $? 163 'AdminResetPasswordV3' test.out

#- 164 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId '91Caf2Mh' \
    --body '{"Permissions": [{"Action": 53, "Resource": "3pJ5dwPE", "SchedAction": 48, "SchedCron": "xE0K9LiB", "SchedRange": ["2oZVVSuY", "feebaaQ3", "B7VvuLs6"]}, {"Action": 70, "Resource": "fKdZXAid", "SchedAction": 9, "SchedCron": "CFCKn51t", "SchedRange": ["uWto1Scw", "W2BDGM81", "gwdv7Xd4"]}, {"Action": 21, "Resource": "hpAzDiKb", "SchedAction": 87, "SchedCron": "JKJeflef", "SchedRange": ["NQVRZ9aJ", "GIi4wf5b", "gVN5NXoX"]}]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserPermissionV3' test.out

#- 165 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 's3PHUDkT' \
    --body '{"Permissions": [{"Action": 86, "Resource": "69Sst8e1", "SchedAction": 42, "SchedCron": "JfrLPvK5", "SchedRange": ["hPxdYlMw", "Q6H3BCGm", "e68NXK6L"]}, {"Action": 75, "Resource": "JX7QjF3o", "SchedAction": 59, "SchedCron": "K8fRp2vu", "SchedRange": ["K856CoUu", "kjY3Cy18", "C1GkPmjg"]}, {"Action": 7, "Resource": "FhwAbSYX", "SchedAction": 90, "SchedCron": "j9U7UxgW", "SchedRange": ["rd14fiOS", "OtI9WyOD", "qxgenRHM"]}]}' \
    > test.out 2>&1
eval_tap $? 165 'AdminAddUserPermissionsV3' test.out

#- 166 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Zf1kr7Du' \
    --body '[{"Action": 13, "Resource": "82DINlza"}, {"Action": 95, "Resource": "9fjf0tm9"}, {"Action": 37, "Resource": "BdfK1xc1"}]' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionBulkV3' test.out

#- 167 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '54' \
    --namespace $AB_NAMESPACE \
    --resource 'eefNrUkB' \
    --userId '8rfYT10s' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionV3' test.out

#- 168 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '7UoFWeTK' \
    --after 'qh8X8Rbs' \
    --before 'GdEAOvRO' \
    --limit '78' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserPlatformAccountsV3' test.out

#- 169 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId '1D3sEKuR' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetListJusticePlatformAccounts' test.out

#- 170 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'PeOyK6Zb' \
    --userId 'MS4Y5cga' \
    > test.out 2>&1
eval_tap $? 170 'AdminGetUserMapping' test.out

#- 171 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '7MMPwluK' \
    --userId 'tONsQTO6' \
    > test.out 2>&1
eval_tap $? 171 'AdminCreateJusticeUser' test.out

#- 172 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'zB1f8CId' \
    --body '{"platformId": "7ZiYULGd", "platformUserId": "wMbR52Sn"}' \
    > test.out 2>&1
eval_tap $? 172 'AdminLinkPlatformAccount' test.out

#- 173 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'VXTgDwOH' \
    --userId 'W8L3dmh6' \
    --body '{"platformNamespace": "tyWE8g3B"}' \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformUnlinkV3' test.out

#- 174 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'BtpBVcpS' \
    --userId 'k3i7z8Ag' \
    --ticket 'A40xFHpB' \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformLinkV3' test.out

#- 175 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'qLwnQad9' \
    --userId 'q14BMd3n' \
    --platformToken 'a4lnR7uC' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 176 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId '655jIFp0' \
    --body '["avh5isXe", "H85LqkCE", "1LXRscKa"]' \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserRolesV3' test.out

#- 177 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'GqXWK4hY' \
    --body '[{"namespace": "7wMnFNja", "roleId": "fVV68Ar7"}, {"namespace": "Y3yUGP5z", "roleId": "xsmsUx2M"}, {"namespace": "6qP2j5xl", "roleId": "LZ56C3VN"}]' \
    > test.out 2>&1
eval_tap $? 177 'AdminSaveUserRoleV3' test.out

#- 178 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'WWNbZP6D' \
    --userId 'TCU53KqJ' \
    > test.out 2>&1
eval_tap $? 178 'AdminAddUserRoleV3' test.out

#- 179 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'SOzzsQs6' \
    --userId 'N0p4rXJf' \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteUserRoleV3' test.out

#- 180 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '5qOiBuoL' \
    --body '{"enabled": false, "reason": "Nbbf73Re"}' \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateUserStatusV3' test.out

#- 181 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NKlzzvDw' \
    > test.out 2>&1
eval_tap $? 181 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 182 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'eIfv4qyu' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "CD1S6Kmd"}' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateClientSecretV3' test.out

#- 183 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after '6c9PCXY7' \
    --before 'IUh5Neki' \
    --isWildcard 'true' \
    --limit '24' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRolesV3' test.out

#- 184 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "managers": [{"displayName": "EKyKc45M", "namespace": "PnEQ60Hy", "userId": "zKyTswkd"}, {"displayName": "GEUAzJnE", "namespace": "Fle9WNDh", "userId": "0cHxD2Ce"}, {"displayName": "KXdB6GdY", "namespace": "vmSJAJVb", "userId": "qEymSY4K"}], "members": [{"displayName": "Hbqviikv", "namespace": "E7kAg82q", "userId": "5SOfdMed"}, {"displayName": "i2flooUl", "namespace": "V56eOCSh", "userId": "X1kXsTHp"}, {"displayName": "5kBhbUs9", "namespace": "ygZn4p8a", "userId": "NfhAiL52"}], "permissions": [{"action": 92, "resource": "26eLpJDM", "schedAction": 27, "schedCron": "Xm6FqLMt", "schedRange": ["cmi02Ejy", "q90xNoxl", "HtnqfiQn"]}, {"action": 41, "resource": "DYq0czJB", "schedAction": 93, "schedCron": "B3KY7qHr", "schedRange": ["5s11GHCu", "xqHVR8MP", "eFfk1xbd"]}, {"action": 91, "resource": "4HeIb75A", "schedAction": 4, "schedCron": "SxGw50a5", "schedRange": ["oeEwaIlb", "21qAuK5A", "Bzo7gKMh"]}], "roleName": "pT3nNEi9"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminCreateRoleV3' test.out

#- 185 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'n0DSrMpk' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleV3' test.out

#- 186 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'gM880hbC' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteRoleV3' test.out

#- 187 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'axbclQF6' \
    --body '{"deletable": true, "isWildcard": false, "roleName": "MWA0eJrP"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateRoleV3' test.out

#- 188 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'EuF6NKlo' \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleAdminStatusV3' test.out

#- 189 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'LX6s0JsE' \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateAdminRoleStatusV3' test.out

#- 190 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'pXyVCiZo' \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleAdminV3' test.out

#- 191 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'FMdjFYdN' \
    --after '8CSAb42F' \
    --before 'w1FamOzG' \
    --limit '74' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRoleManagersV3' test.out

#- 192 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'cIq76gec' \
    --body '{"managers": [{"displayName": "iUuAwTew", "namespace": "u4UGHhlI", "userId": "OinQU45V"}, {"displayName": "sStdQ3ab", "namespace": "h3f11ifL", "userId": "1iSoCyk9"}, {"displayName": "2wmG4pZ3", "namespace": "0zUy5VJO", "userId": "TmsFzJZU"}]}' \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRoleManagersV3' test.out

#- 193 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'SnwiUHuZ' \
    --body '{"managers": [{"displayName": "fQDCbbTO", "namespace": "fMicboab", "userId": "VA7n7NZT"}, {"displayName": "QKlTKYHp", "namespace": "MucrkqBX", "userId": "q1zYW901"}, {"displayName": "2jREw5yI", "namespace": "3nzX1KJX", "userId": "r311PyYI"}]}' \
    > test.out 2>&1
eval_tap $? 193 'AdminRemoveRoleManagersV3' test.out

#- 194 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'sK0rHQ6O' \
    --after 'kKOdft4n' \
    --before 'M2ZKxVbT' \
    --limit '37' \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleMembersV3' test.out

#- 195 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'yAA2yyUq' \
    --body '{"members": [{"displayName": "ytTsdzob", "namespace": "645jp15T", "userId": "S1xUa2gn"}, {"displayName": "8BO8IVlJ", "namespace": "9uhj63Gg", "userId": "9Ku726IR"}, {"displayName": "4MTVDawn", "namespace": "LYiDaC5V", "userId": "GxsF2wMT"}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddRoleMembersV3' test.out

#- 196 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId '9cF5oZl6' \
    --body '{"members": [{"displayName": "E15JKPUC", "namespace": "1Ef1Y0qG", "userId": "cZyGsYfP"}, {"displayName": "oWcoaDnt", "namespace": "WzBoKXpc", "userId": "6w6NR0Wl"}, {"displayName": "jUd6KhUl", "namespace": "qstOrr3D", "userId": "yoFFMDJt"}]}' \
    > test.out 2>&1
eval_tap $? 196 'AdminRemoveRoleMembersV3' test.out

#- 197 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'xyiIeqDf' \
    --body '{"permissions": [{"action": 82, "resource": "tSUJrhF3", "schedAction": 26, "schedCron": "26COlmxl", "schedRange": ["utVTfaDH", "4FFcQ5aW", "2ixXN1yu"]}, {"action": 5, "resource": "UoH1R5tT", "schedAction": 100, "schedCron": "FgU0aMes", "schedRange": ["1DytwQOA", "HxK3b9mE", "2FMFMLIG"]}, {"action": 22, "resource": "Qnv3Bi0s", "schedAction": 56, "schedCron": "rwVGYxhw", "schedRange": ["Ht9Qilg5", "Wpgr94b8", "LSnQe4pT"]}]}' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateRolePermissionsV3' test.out

#- 198 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'mU0Xc8v5' \
    --body '{"permissions": [{"action": 86, "resource": "QxWtiQUE", "schedAction": 33, "schedCron": "qdxQcKLt", "schedRange": ["dQtvowVy", "sIKRLuLK", "FtdNE7iP"]}, {"action": 83, "resource": "r1CsViS1", "schedAction": 40, "schedCron": "060Xi2Wa", "schedRange": ["pEoRxau5", "EjouFbO5", "XxcuojWB"]}, {"action": 53, "resource": "jntZwiOi", "schedAction": 61, "schedCron": "Af0sJudn", "schedRange": ["QtqZ3fIl", "JC3OSSzH", "yhAkjfgN"]}]}' \
    > test.out 2>&1
eval_tap $? 198 'AdminAddRolePermissionsV3' test.out

#- 199 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'yPaumo07' \
    --body '["9nxLxFx0", "bP4Hmrv1", "Gj2kVOXF"]' \
    > test.out 2>&1
eval_tap $? 199 'AdminDeleteRolePermissionsV3' test.out

#- 200 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '66' \
    --resource 'f0E655gr' \
    --roleId 'vEwiRL6C' \
    > test.out 2>&1
eval_tap $? 200 'AdminDeleteRolePermissionV3' test.out

#- 201 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 201 'AdminGetMyUserV3' test.out

#- 202 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'YVBDWQT7' \
    --extendExp 'false' \
    --redirectUri 'ijzU1w8Q' \
    --password 'ypAF4KHw' \
    --requestId 'hvHtMDjR' \
    --userName 'HyP3nzf4' \
    > test.out 2>&1
eval_tap $? 202 'UserAuthenticationV3' test.out

#- 203 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'KcH1HFSP' \
    --linkingToken 'MXmakvkG' \
    --password 'SvFR1aAX' \
    --username 'OAxVG2Fv' \
    > test.out 2>&1
eval_tap $? 203 'AuthenticationWithPlatformLinkV3' test.out

#- 204 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'true' \
    --linkingToken 'Gg1jpUji' \
    > test.out 2>&1
eval_tap $? 204 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 205 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'X0O8ybTA' \
    > test.out 2>&1
eval_tap $? 205 'RequestOneTimeLinkingCodeV3' test.out

#- 206 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'nXfXDz3G' \
    > test.out 2>&1
eval_tap $? 206 'ValidateOneTimeLinkingCodeV3' test.out

#- 207 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --clientId 'WoptI87D' \
    --oneTimeLinkCode 'AG1z2Lne' \
    > test.out 2>&1
eval_tap $? 207 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 208 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 208 'GetCountryLocationV3' test.out

#- 209 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 209 'Logout' test.out

#- 210 RequestGameTokenCodeResponseV3
samples/cli/sample-apps Iam requestGameTokenCodeResponseV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'uM5fNqaN' \
    > test.out 2>&1
eval_tap $? 210 'RequestGameTokenCodeResponseV3' test.out

#- 211 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'RIHKcVPP' \
    --userId 'ZKyJaRER' \
    > test.out 2>&1
eval_tap $? 211 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 212 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'SVn95SOA' \
    > test.out 2>&1
eval_tap $? 212 'RevokeUserV3' test.out

#- 213 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'jmU1OAyL' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'true' \
    --oneTimeLinkCode 'jgmtcBeO' \
    --redirectUri 'i22a26vP' \
    --scope '4iqbgMu6' \
    --state 'tDRMzC9q' \
    --targetAuthPage 'oY774ZmP' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'Z5wW5if2' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 213 'AuthorizeV3' test.out

#- 214 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'X0hHqTe4' \
    > test.out 2>&1
eval_tap $? 214 'TokenIntrospectionV3' test.out

#- 215 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 215 'GetJWKSV3' test.out

#- 216 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'FyXp29q2' \
    --factor 'LKVjZ9mv' \
    --mfaToken 'wUbM5A6q' \
    > test.out 2>&1
eval_tap $? 216 'SendMFAAuthenticationCode' test.out

#- 217 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'rLhwMNf9' \
    --mfaToken 'PJZbiCZA' \
    > test.out 2>&1
eval_tap $? 217 'Change2faMethod' test.out

#- 218 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'uOsFoa7Y' \
    --factor 'BqLOG6Yx' \
    --mfaToken 'sqb87BCA' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 218 'Verify2faCode' test.out

#- 219 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'LeEsXjNH' \
    --userId 'MAMLCQsK' \
    > test.out 2>&1
eval_tap $? 219 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'hb6MxGzG' \
    --clientId 'oenEZPbN' \
    --redirectUri 'XOpbXFry' \
    --requestId 'tAVpShrt' \
    > test.out 2>&1
eval_tap $? 220 'AuthCodeRequestV3' test.out

#- 221 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'wWll5Z0c' \
    --clientId 'MmVhZwby' \
    --createHeadless 'true' \
    --deviceId '49jz47Gu' \
    --macAddress 'UUk6rrN3' \
    --platformToken '0CZII98B' \
    > test.out 2>&1
eval_tap $? 221 'PlatformTokenGrantV3' test.out

#- 222 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 222 'GetRevocationListV3' test.out

#- 223 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'xf74sFRe' \
    > test.out 2>&1
eval_tap $? 223 'TokenRevocationV3' test.out

#- 224 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --clientId '56mdjQ1m' \
    --code '9PYNl1Tv' \
    --codeVerifier 'WrqPdhfi' \
    --extendExp 'false' \
    --password 'P8d0zkHH' \
    --redirectUri 'q5xLrvJQ' \
    --refreshToken 'UzsXncca' \
    --username 'mzz3BnQQ' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 224 'TokenGrantV3' test.out

#- 225 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token '6azfjDNL' \
    > test.out 2>&1
eval_tap $? 225 'VerifyTokenV3' test.out

#- 226 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'm5jCh78o' \
    --code 'ZPQ0Cwbk' \
    --error 'o1ByNeg5' \
    --openidAssocHandle 'RtkEG8zw' \
    --openidClaimedId 'vxJSrDVV' \
    --openidIdentity 'jh7ZD1LE' \
    --openidMode '5FFiLp21' \
    --openidNs 'V0v03hN8' \
    --openidOpEndpoint 'KF2dBSPN' \
    --openidResponseNonce 'aIqbQZe4' \
    --openidReturnTo 'XSRTO65V' \
    --openidSig 'i7thQHAj' \
    --openidSigned 'a7qkHGEq' \
    --state 'RESWrRHu' \
    > test.out 2>&1
eval_tap $? 226 'PlatformAuthenticationV3' test.out

#- 227 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode '1dUMoc3q' \
    > test.out 2>&1
eval_tap $? 227 'PublicGetInputValidations' test.out

#- 228 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'T6kT2WBj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 228 'PublicGetCountryAgeRestrictionV3' test.out

#- 229 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 229 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 230 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'Rzer1umb' \
    > test.out 2>&1
eval_tap $? 230 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 231 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'PbCZO6mp' \
    --body '{"platformUserIds": ["HjT117p4", "4Hap2wC9", "asoTawm1"]}' \
    > test.out 2>&1
eval_tap $? 231 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 232 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'JU3qFDXI' \
    --platformUserId 'y1fxTC6B' \
    > test.out 2>&1
eval_tap $? 232 'PublicGetUserByPlatformUserIDV3' test.out

#- 233 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId '0DhHIAii' \
    > test.out 2>&1
eval_tap $? 233 'PublicGetAsyncStatus' test.out

#- 234 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'qQpKZ38T' \
    --limit '32' \
    --offset '40' \
    --query 'k07FP4YQ' \
    > test.out 2>&1
eval_tap $? 234 'PublicSearchUserV3' test.out

#- 235 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "T4VBmh9W", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "pIGcvtnu", "policyId": "4mlAzMha", "policyVersionId": "tr4vmg8m"}, {"isAccepted": true, "localizedPolicyVersionId": "kqvp9lnY", "policyId": "EoUUtIRu", "policyVersionId": "aEBeyoKC"}, {"isAccepted": true, "localizedPolicyVersionId": "4m7mXIkR", "policyId": "DaSPAQrx", "policyVersionId": "yqbZXUKB"}], "authType": "vGIDsOou", "code": "RRIvHEJW", "country": "gV6IMwYB", "dateOfBirth": "qwiUcNAP", "displayName": "qVGKcolo", "emailAddress": "9EXZ2R6R", "password": "lNZdvjte", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 235 'PublicCreateUserV3' test.out

#- 236 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'MICVeKRx' \
    --query 'xejVXp3x' \
    > test.out 2>&1
eval_tap $? 236 'CheckUserAvailability' test.out

#- 237 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["CjhjDbFI", "D0TUrufE", "TEBn90aV"]}' \
    > test.out 2>&1
eval_tap $? 237 'PublicBulkGetUsers' test.out

#- 238 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "4crd4xOe", "languageTag": "EVNeUb5G"}' \
    > test.out 2>&1
eval_tap $? 238 'PublicSendRegistrationCode' test.out

#- 239 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ULxRiXsB", "emailAddress": "MIRguLBL"}' \
    > test.out 2>&1
eval_tap $? 239 'PublicVerifyRegistrationCode' test.out

#- 240 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "wRIRtnLF", "languageTag": "f8jRZyj0"}' \
    > test.out 2>&1
eval_tap $? 240 'PublicForgotPasswordV3' test.out

#- 241 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 's7heoxnQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 241 'GetAdminInvitationV3' test.out

#- 242 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId '2mux7mRt' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "Ruq9wB8Q", "policyId": "ttzl59eZ", "policyVersionId": "WVujir0V"}, {"isAccepted": false, "localizedPolicyVersionId": "JFe9NNUJ", "policyId": "n0IOOI3p", "policyVersionId": "oCxATrQC"}, {"isAccepted": true, "localizedPolicyVersionId": "cwohd37e", "policyId": "rMi1CCe1", "policyVersionId": "3nihF2qR"}], "authType": "EMAILPASSWD", "country": "e5PBnOwr", "dateOfBirth": "uAsTki8Q", "displayName": "1AogLvc1", "password": "75FU9EGB", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 242 'CreateUserFromInvitationV3' test.out

#- 243 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "lhotpIbB", "country": "yn3BNQDV", "dateOfBirth": "HT51NUmt", "displayName": "B1StGktA", "languageTag": "tOCCadH6", "userName": "MqC7MqRl"}' \
    > test.out 2>&1
eval_tap $? 243 'UpdateUserV3' test.out

#- 244 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "zSpNaGv5", "country": "lzefQhOG", "dateOfBirth": "VASkeAVD", "displayName": "VtdXcJFM", "languageTag": "fCy3HuNq", "userName": "VID3Gr97"}' \
    > test.out 2>&1
eval_tap $? 244 'PublicPartialUpdateUserV3' test.out

#- 245 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "SoY7b9iI", "emailAddress": "hjm9rKU6", "languageTag": "zaQyBDVn"}' \
    > test.out 2>&1
eval_tap $? 245 'PublicSendVerificationCodeV3' test.out

#- 246 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "tBRhivLr", "contactType": "sCZuU2zh", "languageTag": "l7BdDSd3", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 246 'PublicUserVerificationV3' test.out

#- 247 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "vjBisRIL", "country": "4ZAWWwjv", "dateOfBirth": "V1BBiBMI", "displayName": "DfUktqoZ", "emailAddress": "s1tCFqlU", "password": "jA4Ou0ub", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 247 'PublicUpgradeHeadlessAccountV3' test.out

#- 248 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "UBL1JEFs", "password": "hs04B0uP"}' \
    > test.out 2>&1
eval_tap $? 248 'PublicVerifyHeadlessAccountV3' test.out

#- 249 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "YTl0hshj", "newPassword": "1gLmVEGB", "oldPassword": "IpxcwcaK"}' \
    > test.out 2>&1
eval_tap $? 249 'PublicUpdatePasswordV3' test.out

#- 250 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '9jQ3R01O' \
    > test.out 2>&1
eval_tap $? 250 'PublicCreateJusticeUser' test.out

#- 251 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '2ZT723A0' \
    --redirectUri 'Os17hGKS' \
    --ticket '6dPyrZHM' \
    > test.out 2>&1
eval_tap $? 251 'PublicPlatformLinkV3' test.out

#- 252 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'F6gIeC3R' \
    --body '{"platformNamespace": "EQVUKyfQ"}' \
    > test.out 2>&1
eval_tap $? 252 'PublicPlatformUnlinkV3' test.out

#- 253 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Add7bGDA' \
    > test.out 2>&1
eval_tap $? 253 'PublicPlatformUnlinkAllV3' test.out

#- 254 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'qyGF2zn2' \
    --ticket 'EUcclpDm' \
    > test.out 2>&1
eval_tap $? 254 'PublicForcePlatformLinkV3' test.out

#- 255 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId '3qiJn0tr' \
    --clientId 'C8pEEiiL' \
    --redirectUri 'Q6xx7F71' \
    > test.out 2>&1
eval_tap $? 255 'PublicWebLinkPlatform' test.out

#- 256 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'V6Dmvsja' \
    --state '4J67ieLT' \
    > test.out 2>&1
eval_tap $? 256 'PublicWebLinkPlatformEstablish' test.out

#- 257 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "654UaxWf", "emailAddress": "29Nt8uqd", "newPassword": "Rm7ipmjY"}' \
    > test.out 2>&1
eval_tap $? 257 'ResetPasswordV3' test.out

#- 258 PublicGetUserByUserIdV3
samples/cli/sample-apps Iam publicGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId '1SojXX8z' \
    > test.out 2>&1
eval_tap $? 258 'PublicGetUserByUserIdV3' test.out

#- 259 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId '6iUJlGO4' \
    --activeOnly 'false' \
    --after 'b38HV53k' \
    --before '9scvTuff' \
    --limit '47' \
    > test.out 2>&1
eval_tap $? 259 'PublicGetUserBanHistoryV3' test.out

#- 260 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NAsyjCKe' \
    > test.out 2>&1
eval_tap $? 260 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 261 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ChPPyywP' \
    > test.out 2>&1
eval_tap $? 261 'PublicGetUserInformationV3' test.out

#- 262 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EA7WU9Kk' \
    --after '0.6708041085984078' \
    --before '0.15321374254015185' \
    --limit '83' \
    > test.out 2>&1
eval_tap $? 262 'PublicGetUserLoginHistoriesV3' test.out

#- 263 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wZFyw1lE' \
    --after 'HD77lJCJ' \
    --before 'CYxlGZwK' \
    --limit '80' \
    > test.out 2>&1
eval_tap $? 263 'PublicGetUserPlatformAccountsV3' test.out

#- 264 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '3D7sUlsZ' \
    > test.out 2>&1
eval_tap $? 264 'PublicListJusticePlatformAccountsV3' test.out

#- 265 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'HVGqiAVh' \
    --body '{"platformId": "xYOS1HNw", "platformUserId": "cIQf53gO"}' \
    > test.out 2>&1
eval_tap $? 265 'PublicLinkPlatformAccount' test.out

#- 266 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'Ogggkaz3' \
    --body '{"chosenNamespaces": ["jPyMBwwL", "44YejiRv", "qcYRnVRD"], "requestId": "vdpUfrl0"}' \
    > test.out 2>&1
eval_tap $? 266 'PublicForceLinkPlatformWithProgression' test.out

#- 267 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hydhy2oA' \
    > test.out 2>&1
eval_tap $? 267 'PublicGetPublisherUserV3' test.out

#- 268 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'J2BRjNjz' \
    --password 'IfLUCG9N' \
    > test.out 2>&1
eval_tap $? 268 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 269 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'PSVNQiWa' \
    --before 'SW0EJqZr' \
    --isWildcard 'false' \
    --limit '91' \
    > test.out 2>&1
eval_tap $? 269 'PublicGetRolesV3' test.out

#- 270 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'aO6NgUIU' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetRoleV3' test.out

#- 271 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 271 'PublicGetMyUserV3' test.out

#- 272 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'bMAOcma5' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 273 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["cY4he65I", "dhuOfU8l", "J2iO8Mnb"], "oneTimeLinkCode": "i5cwZV4F"}' \
    > test.out 2>&1
eval_tap $? 273 'LinkHeadlessAccountToMyAccountV3' test.out

#- 274 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "p8PFZeG3"}' \
    > test.out 2>&1
eval_tap $? 274 'PublicSendVerificationLinkV3' test.out

#- 275 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'aJKfbaKY' \
    > test.out 2>&1
eval_tap $? 275 'PublicVerifyUserByLinkV3' test.out

#- 276 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'VfAuu7aK' \
    --code '0VczCTcr' \
    --error 'GkXDPTMr' \
    --state 'xPmgFa07' \
    > test.out 2>&1
eval_tap $? 276 'PlatformAuthenticateSAMLV3Handler' test.out

#- 277 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId '50cL3o96' \
    --payload 'IeFpJdsu' \
    > test.out 2>&1
eval_tap $? 277 'LoginSSOClient' test.out

#- 278 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId '3kSEpiPn' \
    > test.out 2>&1
eval_tap $? 278 'LogoutSSOClient' test.out

#- 279 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --code '9X03kjaf' \
    > test.out 2>&1
eval_tap $? 279 'RequestGameTokenResponseV3' test.out

#- 280 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'F9VHZQEN' \
    > test.out 2>&1
eval_tap $? 280 'AdminGetDevicesByUserV4' test.out

#- 281 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'ziQy8kSV' \
    --endDate 'o0xtskm3' \
    --limit '37' \
    --offset '17' \
    --startDate 'CDqvEkot' \
    > test.out 2>&1
eval_tap $? 281 'AdminGetBannedDevicesV4' test.out

#- 282 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'aykCFOc2' \
    > test.out 2>&1
eval_tap $? 282 'AdminGetUserDeviceBansV4' test.out

#- 283 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "UnUxAmC4", "deviceId": "IwQbzszT", "deviceType": "X76J4j0P", "enabled": true, "endDate": "xsCx6F3Q", "ext": {"cpddpI4H": {}, "O2yFq8pr": {}, "J1CR0oGS": {}}, "reason": "iQ5QAG4T"}' \
    > test.out 2>&1
eval_tap $? 283 'AdminBanDeviceV4' test.out

#- 284 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId '0MIEQkrb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 284 'AdminGetDeviceBanV4' test.out

#- 285 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId '9pFR0bV8' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 285 'AdminUpdateDeviceBanV4' test.out

#- 286 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'ipg0QzWl' \
    --startDate 'y1PLf2J2' \
    --deviceType 'hT23UubJ' \
    > test.out 2>&1
eval_tap $? 286 'AdminGenerateReportV4' test.out

#- 287 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 287 'AdminGetDeviceTypesV4' test.out

#- 288 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'Jh9MZc7U' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 288 'AdminGetDeviceBansV4' test.out

#- 289 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'yIwgPMPm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 289 'AdminDecryptDeviceV4' test.out

#- 290 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'MWCNlZOe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'AdminUnbanDeviceV4' test.out

#- 291 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'JylKlGwf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 291 'AdminGetUsersByDeviceV4' test.out

#- 292 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 53}' \
    > test.out 2>&1
eval_tap $? 292 'AdminCreateTestUsersV4' test.out

#- 293 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["WIQEBnav", "yM9wlVxB", "IXOZvuL3"]}' \
    > test.out 2>&1
eval_tap $? 293 'AdminBulkCheckValidUserIDV4' test.out

#- 294 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'NQbpaa8e' \
    --body '{"avatarUrl": "OeOFM3Aw", "country": "5zXJmhCY", "dateOfBirth": "DofzCgBy", "displayName": "LELht3mg", "languageTag": "ZPUAIBq8", "userName": "f9sgoBCG"}' \
    > test.out 2>&1
eval_tap $? 294 'AdminUpdateUserV4' test.out

#- 295 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'CsSvJApF' \
    --body '{"code": "iByLq9ZS", "emailAddress": "DNN4Yjft"}' \
    > test.out 2>&1
eval_tap $? 295 'AdminUpdateUserEmailAddressV4' test.out

#- 296 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId '8erc71LM' \
    > test.out 2>&1
eval_tap $? 296 'AdminDisableUserMFAV4' test.out

#- 297 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'UrHoUkTY' \
    > test.out 2>&1
eval_tap $? 297 'AdminListUserRolesV4' test.out

#- 298 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'D8QvX1mA' \
    --body '{"assignedNamespaces": ["QeK0MOsm", "yr99oUta", "NUs7f6AU"], "roleId": "1mAYwGu9"}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateUserRoleV4' test.out

#- 299 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '8Q5Szv8C' \
    --body '{"assignedNamespaces": ["NRCwGWZP", "ko00HQv6", "OIo2nDnY"], "roleId": "0yGeqvhf"}' \
    > test.out 2>&1
eval_tap $? 299 'AdminAddUserRoleV4' test.out

#- 300 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'GMLsOSKW' \
    --body '{"assignedNamespaces": ["QvZI8YbW", "d0SsRYmE", "ZH0BtEha"], "roleId": "ZECRf0ll"}' \
    > test.out 2>&1
eval_tap $? 300 'AdminRemoveUserRoleV4' test.out

#- 301 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'false' \
    --limit '3' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 301 'AdminGetRolesV4' test.out

#- 302 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "QL2ndawN"}' \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateRoleV4' test.out

#- 303 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'rWgN76Ks' \
    > test.out 2>&1
eval_tap $? 303 'AdminGetRoleV4' test.out

#- 304 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'pfnSMS5S' \
    > test.out 2>&1
eval_tap $? 304 'AdminDeleteRoleV4' test.out

#- 305 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'dG5K2p9B' \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "DdAe8rwH"}' \
    > test.out 2>&1
eval_tap $? 305 'AdminUpdateRoleV4' test.out

#- 306 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'MTQsQ7aF' \
    --body '{"permissions": [{"action": 74, "resource": "F3EqAGtW", "schedAction": 19, "schedCron": "lCjcUvUq", "schedRange": ["cjha02NK", "ZoK4WQ8p", "VGjCIwIQ"]}, {"action": 52, "resource": "S24X8azo", "schedAction": 90, "schedCron": "qeqk7feo", "schedRange": ["ab6Hyre3", "iFy7SYfE", "6pMFjE22"]}, {"action": 34, "resource": "klxRCmpe", "schedAction": 41, "schedCron": "mGzPSe2C", "schedRange": ["3J7Gk8UR", "pH0ifHCX", "aJ9AEV5t"]}]}' \
    > test.out 2>&1
eval_tap $? 306 'AdminUpdateRolePermissionsV4' test.out

#- 307 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'MM9fKeo7' \
    --body '{"permissions": [{"action": 3, "resource": "ErKkg4RP", "schedAction": 78, "schedCron": "CFmraVTN", "schedRange": ["Yy0z9Qdz", "JYcUHuX1", "DWy1bqXN"]}, {"action": 64, "resource": "7OpdLWBv", "schedAction": 76, "schedCron": "IG8PXYuv", "schedRange": ["i5dHSmR8", "XRPCZrz6", "10itybx6"]}, {"action": 57, "resource": "NY0NoagV", "schedAction": 49, "schedCron": "ERo7rSx3", "schedRange": ["n33V8H86", "KwdZdlpc", "0JvMkUSy"]}]}' \
    > test.out 2>&1
eval_tap $? 307 'AdminAddRolePermissionsV4' test.out

#- 308 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId '6P55xk6J' \
    --body '["jPUp2Cup", "TDmMaKGJ", "PSRogUqq"]' \
    > test.out 2>&1
eval_tap $? 308 'AdminDeleteRolePermissionsV4' test.out

#- 309 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'A1idCLqu' \
    --after 'rw3NoHzn' \
    --before 'MPgK6kr4' \
    --limit '48' \
    > test.out 2>&1
eval_tap $? 309 'AdminListAssignedUsersV4' test.out

#- 310 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'aaZWGOWM' \
    --body '{"assignedNamespaces": ["eraGnDcj", "ornezwgU", "WGwioABD"], "namespace": "mBFoNSw4", "userId": "qaQpT2C7"}' \
    > test.out 2>&1
eval_tap $? 310 'AdminAssignUserToRoleV4' test.out

#- 311 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'ahG6E5Lr' \
    --body '{"namespace": "e4gfbBr8", "userId": "rlbS9GDU"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminRevokeUserFromRoleV4' test.out

#- 312 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "hHxfOQxa", "country": "KjBTYh5f", "dateOfBirth": "UhmXh7q7", "displayName": "6zEtAhFC", "languageTag": "ocfBO2UW", "userName": "ClQXvTZK"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminUpdateMyUserV4' test.out

#- 313 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 313 'AdminDisableMyAuthenticatorV4' test.out

#- 314 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'ItL3twqs' \
    > test.out 2>&1
eval_tap $? 314 'AdminEnableMyAuthenticatorV4' test.out

#- 315 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 315 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 316 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 316 'AdminGetMyBackupCodesV4' test.out

#- 317 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 317 'AdminGenerateMyBackupCodesV4' test.out

#- 318 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 318 'AdminDisableMyBackupCodesV4' test.out

#- 319 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 319 'AdminDownloadMyBackupCodesV4' test.out

#- 320 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 320 'AdminEnableMyBackupCodesV4' test.out

#- 321 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 321 'AdminSendMyMFAEmailCodeV4' test.out

#- 322 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 322 'AdminDisableMyEmailV4' test.out

#- 323 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'VFgYxMB6' \
    > test.out 2>&1
eval_tap $? 323 'AdminEnableMyEmailV4' test.out

#- 324 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 324 'AdminGetMyEnabledFactorsV4' test.out

#- 325 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'GHWMh3qG' \
    > test.out 2>&1
eval_tap $? 325 'AdminMakeFactorMyDefaultV4' test.out

#- 326 AdminInviteUserV4
samples/cli/sample-apps Iam adminInviteUserV4 \
    --body '{"assignedNamespaces": ["nH6qrpgS", "POwpT9zw", "2EDlMPjy"], "emailAddresses": ["4J1twIHa", "b0jFZvVs", "iDEXruX4"], "isAdmin": false, "namespace": "Qd4ZCHyi", "roleId": "Vq8t5kDT"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminInviteUserV4' test.out

#- 327 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "j3HXjn3n", "policyId": "Hi1fgXr1", "policyVersionId": "VVqpaoAF"}, {"isAccepted": false, "localizedPolicyVersionId": "7H4jfHNH", "policyId": "GxyzZ2vp", "policyVersionId": "PwN4ubs9"}, {"isAccepted": true, "localizedPolicyVersionId": "IfYms6ct", "policyId": "PSb6KINv", "policyVersionId": "og9EqAvr"}], "authType": "EMAILPASSWD", "country": "NwTWG1nD", "dateOfBirth": "i6iX95oT", "displayName": "gXxaarRn", "emailAddress": "PS70TlVT", "password": "6P1gmXsT", "passwordMD5Sum": "r6Yp5Eq7", "username": "YUxEWzwI", "verified": true}' \
    > test.out 2>&1
eval_tap $? 327 'PublicCreateTestUserV4' test.out

#- 328 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "gEQdyJfE", "policyId": "IkD8MV5E", "policyVersionId": "x2AMMXNM"}, {"isAccepted": true, "localizedPolicyVersionId": "PWIVxEmw", "policyId": "hbOYLso3", "policyVersionId": "AzslBbwz"}, {"isAccepted": false, "localizedPolicyVersionId": "7pW0goBY", "policyId": "DIAfufQx", "policyVersionId": "lYpx9bHm"}], "authType": "EMAILPASSWD", "code": "jhffyPWp", "country": "qQFfTxkd", "dateOfBirth": "oeSZQ3dV", "displayName": "0Gx7bqXf", "emailAddress": "O41AlsFM", "password": "s7Uct3XJ", "passwordMD5Sum": "S1lFROKB", "reachMinimumAge": false, "username": "zz5ev8UX"}' \
    > test.out 2>&1
eval_tap $? 328 'PublicCreateUserV4' test.out

#- 329 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'Z44Lfsgu' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "2fy3EVfn", "policyId": "W5sG9HB7", "policyVersionId": "lScU2JJu"}, {"isAccepted": false, "localizedPolicyVersionId": "p6drzj2J", "policyId": "Ea6SZCgR", "policyVersionId": "3w3qcA3g"}, {"isAccepted": false, "localizedPolicyVersionId": "GxglqjEh", "policyId": "SFw90rVe", "policyVersionId": "oQsO90yE"}], "authType": "EMAILPASSWD", "country": "wW3qMzCT", "dateOfBirth": "uloFoAXS", "displayName": "v8EvlM0S", "password": "afBgHq65", "reachMinimumAge": false, "username": "v6GXGQrI"}' \
    > test.out 2>&1
eval_tap $? 329 'CreateUserFromInvitationV4' test.out

#- 330 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "l5K6xTpd", "country": "GuxSDbJT", "dateOfBirth": "nHngAVCw", "displayName": "YJ9DWARl", "languageTag": "I8cuPISw", "userName": "Tgy3b5zF"}' \
    > test.out 2>&1
eval_tap $? 330 'PublicUpdateUserV4' test.out

#- 331 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "cdYEoD5X", "emailAddress": "dnBX8aZo"}' \
    > test.out 2>&1
eval_tap $? 331 'PublicUpdateUserEmailAddressV4' test.out

#- 332 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "dBGtoiqd", "country": "haFmdMrN", "dateOfBirth": "PMx21yHo", "displayName": "XwZ4Mz43", "emailAddress": "8HP8W4Sf", "password": "tfNplV2C", "reachMinimumAge": true, "username": "XnaeOHIX", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 332 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 333 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "MCBPGJj0", "password": "Fu06G3Xu", "username": "Td5RH8g0"}' \
    > test.out 2>&1
eval_tap $? 333 'PublicUpgradeHeadlessAccountV4' test.out

#- 334 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 334 'PublicDisableMyAuthenticatorV4' test.out

#- 335 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code '8L5zNAwL' \
    > test.out 2>&1
eval_tap $? 335 'PublicEnableMyAuthenticatorV4' test.out

#- 336 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 336 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 337 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 337 'PublicGetMyBackupCodesV4' test.out

#- 338 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 338 'PublicGenerateMyBackupCodesV4' test.out

#- 339 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 339 'PublicDisableMyBackupCodesV4' test.out

#- 340 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 340 'PublicDownloadMyBackupCodesV4' test.out

#- 341 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 341 'PublicEnableMyBackupCodesV4' test.out

#- 342 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 342 'PublicRemoveTrustedDeviceV4' test.out

#- 343 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 343 'PublicSendMyMFAEmailCodeV4' test.out

#- 344 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 344 'PublicDisableMyEmailV4' test.out

#- 345 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code '5iYzfFsF' \
    > test.out 2>&1
eval_tap $? 345 'PublicEnableMyEmailV4' test.out

#- 346 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 346 'PublicGetMyEnabledFactorsV4' test.out

#- 347 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'd07mCwSH' \
    > test.out 2>&1
eval_tap $? 347 'PublicMakeFactorMyDefaultV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE