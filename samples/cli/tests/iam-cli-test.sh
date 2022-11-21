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
echo "1..340"

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
    --body '[{"field": "RttqCK4U", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "blockedWord": ["j4VunlaU", "vHPp3n8m", "NWdOVfcB"], "description": [{"language": "itonfZE5", "message": ["JsunAqaR", "SSzP3HIm", "GxM833bI"]}, {"language": "B0VHtqYR", "message": ["TlboJVmI", "g5S7MazU", "7VWa6Vsl"]}, {"language": "sY0nOq8Z", "message": ["senoHgQ9", "oRTo8UPE", "AoEsKsCm"]}], "isCustomRegex": false, "letterCase": "rTAD2aBB", "maxLength": 93, "maxRepeatingAlphaNum": 74, "maxRepeatingSpecialCharacter": 17, "minCharType": 65, "minLength": 83, "regex": "h5CUrllP", "specialCharacterLocation": "k1o9GiKk", "specialCharacters": ["FWwPVRs0", "TI1RF1bd", "L1Sa3Ekt"]}}, {"field": "rpIHjhIg", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "blockedWord": ["5x4KqxYD", "G5tiKBqh", "Xc2DIEeY"], "description": [{"language": "dbeCmqQR", "message": ["rNJrCZ4F", "yaFCRQWb", "UPtfDvHY"]}, {"language": "gSQY9Rvj", "message": ["ZVPiQhZN", "YKHQoNIB", "NhOQzHAY"]}, {"language": "x214VC47", "message": ["jt3FtUAy", "5jND6j6U", "EmBaXLuw"]}], "isCustomRegex": true, "letterCase": "N1MqUyyE", "maxLength": 90, "maxRepeatingAlphaNum": 15, "maxRepeatingSpecialCharacter": 92, "minCharType": 56, "minLength": 10, "regex": "jA1He8KO", "specialCharacterLocation": "verEZEdU", "specialCharacters": ["qBuED0JI", "IOPjaz4U", "D437zjzC"]}}, {"field": "UZctBcEr", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "blockedWord": ["51JxwD2S", "70Yp6Xgp", "DzNk5TWz"], "description": [{"language": "KtEVSAz8", "message": ["cbvA9IUz", "fQf4M3xa", "OBodamG4"]}, {"language": "Ugd11PJp", "message": ["3QbFaXGB", "Rpdt946W", "xR4mfVD1"]}, {"language": "mrMTXVfx", "message": ["esVT3Csh", "VApaqQYM", "D6DtGykN"]}], "isCustomRegex": false, "letterCase": "rh2scHDR", "maxLength": 88, "maxRepeatingAlphaNum": 65, "maxRepeatingSpecialCharacter": 26, "minCharType": 57, "minLength": 94, "regex": "R8OhQGAi", "specialCharacterLocation": "hcazLKwc", "specialCharacters": ["8UwtnHdu", "6ZERYmoN", "oihOECHh"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'K4xexw0h' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'edHZAxHu' \
    --before 'q42iRXej' \
    --limit '9' \
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
    --body '{"ageRestriction": 9, "enable": false}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'nPbRMQaM' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 17}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'upe5bLUp' \
    --limit '82' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "p84PN8Pr", "comment": "Dlg2Y7UH", "endDate": "WnYTNm3n", "reason": "1LXD7u1m", "skipNotif": false, "userIds": ["kNAsPOcC", "1oDjvxhh", "vyf2wknI"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "SrPS0jDM", "userId": "LXAbQ8KT"}, {"banId": "Mag98QYi", "userId": "H5QaTqsK"}, {"banId": "oa4RLO9A", "userId": "KZ5omJa2"}]}' \
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
    --clientId '7GxPW8MG' \
    --clientName 'TZeItalQ' \
    --clientType '1oeUIAgC' \
    --limit '10' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["iuOoOcBN", "UWALndWF", "B73Y2PV2"], "baseUri": "Fd3SbSNq", "clientId": "lJjyUUy5", "clientName": "XPmBS8s7", "clientPermissions": [{"action": 78, "resource": "v2h6Tg8E", "schedAction": 52, "schedCron": "Kb0xFjcz", "schedRange": ["pYECslN9", "JGVDmdOc", "1HIwQzKR"]}, {"action": 15, "resource": "Va8pfOiU", "schedAction": 14, "schedCron": "deY2nTNA", "schedRange": ["zyNwQSPp", "ESW9fguL", "XBVTNcSQ"]}, {"action": 38, "resource": "rh8V8QRi", "schedAction": 70, "schedCron": "VYHjiW04", "schedRange": ["iE2yAzJ7", "kyHKpSwx", "sME05b79"]}], "clientPlatform": "rTWGMuLd", "deletable": false, "description": "IDHJoqEx", "namespace": "7N7MTFYg", "oauthAccessTokenExpiration": 62, "oauthAccessTokenExpirationTimeUnit": "Al1FJng1", "oauthClientType": "gJeoyXmm", "oauthRefreshTokenExpiration": 77, "oauthRefreshTokenExpirationTimeUnit": "uCKP2v3d", "redirectUri": "ZoayKxxi", "scopes": ["eU4FHujB", "9RC53kYc", "YlOFbLTO"], "secret": "PYd8EqPY", "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'BRc8e4Me' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'GYai7ZYZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'JbB2PQ76' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["3ZEzM2bU", "s3KXW5BT", "bRD3UNxH"], "baseUri": "fEwfjykY", "clientName": "R9n7rKTN", "clientPermissions": [{"action": 54, "resource": "XfEh6gVa", "schedAction": 49, "schedCron": "l4XkxwOx", "schedRange": ["2Xk54Or6", "uU3lXdzU", "MkInmEFG"]}, {"action": 4, "resource": "3NYN91lX", "schedAction": 10, "schedCron": "dEGRGaEE", "schedRange": ["PBqnlcwQ", "nlIUlITj", "dIFFkVpV"]}, {"action": 84, "resource": "hCxoEArJ", "schedAction": 80, "schedCron": "dVDNUAcf", "schedRange": ["KWooaCIt", "thk1Yu3W", "zbJEkRqp"]}], "clientPlatform": "qEvPCeVz", "deletable": false, "description": "Np24poNz", "namespace": "itcykb8j", "oauthAccessTokenExpiration": 24, "oauthAccessTokenExpirationTimeUnit": "WdKyGZnn", "oauthRefreshTokenExpiration": 13, "oauthRefreshTokenExpirationTimeUnit": "UJraFw00", "redirectUri": "Zz75ehro", "scopes": ["e2COVr4B", "4DFvX67M", "tEvdwhK4"], "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId '9SCQ5yW8' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 91, "resource": "Gr9zLneN"}, {"action": 91, "resource": "znP4gpDb"}, {"action": 48, "resource": "PMpNwj7D"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'jzXyE9p0' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 82, "resource": "SMEf8b5p"}, {"action": 15, "resource": "qbZBzz2W"}, {"action": 11, "resource": "pA83yc5p"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '64' \
    --clientId 'FMazPEEP' \
    --namespace $AB_NAMESPACE \
    --resource 'tilUIuA5' \
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
    --limit '82' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 130 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 131 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9u716Bjo' \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Hr6PSyhk' \
    --body '{"ACSURL": "DhlOleeA", "AWSCognitoRegion": "a1fnD2kQ", "AWSCognitoUserPool": "IyIqfU8G", "AllowedClients": ["zYiuZHIV", "XDDeHqUN", "2cHRP2oE"], "AppId": "pf54C9jE", "AuthorizationEndpoint": "BNEBGg62", "ClientId": "uhrBOXQF", "Environment": "716VzeDR", "FederationMetadataURL": "SdlAYNST", "GenericOauthFlow": true, "IsActive": false, "Issuer": "apSYdSKL", "JWKSEndpoint": "QU0m90Cv", "KeyID": "nWrPhNWG", "NetflixCertificates": {"encryptedPrivateKey": "6oeDRqW8", "encryptedPrivateKeyName": "O7vPNLUz", "publicCertificate": "QT7fV6M7", "publicCertificateName": "MsE3DZaJ", "rootCertificate": "BZSQRwMp", "rootCertificateName": "fibCLw0w"}, "OrganizationId": "vIfrlN80", "PlatformName": "08YAzpN3", "RedirectUri": "T38avaZh", "RegisteredDomains": [{"affectedClientIDs": ["d9t90H5N", "Xvi9pNi3", "wGvyllHX"], "domain": "hGnO5hrs", "namespaces": ["mbBisrA4", "rX5CZlXe", "lvWQliAH"], "roleId": "j6jRBAJH"}, {"affectedClientIDs": ["wk6r2PJl", "YrBHYP3U", "Zi7eIYyC"], "domain": "ccCardlR", "namespaces": ["4VpLyeDv", "lWBmU7qN", "xA50zgL8"], "roleId": "GbQEyaaD"}, {"affectedClientIDs": ["vquNVgq9", "2yV2n9TQ", "kSZp5VjD"], "domain": "crj8RltB", "namespaces": ["bAlWBtiJ", "0kIgJZ2a", "7krZe3bl"], "roleId": "fM8KP2oS"}], "Secret": "bpbgEJes", "TeamID": "8ziTz9Vh", "TokenAuthenticationType": "VafUnxfL", "TokenClaimsMapping": {"Z4vxBxsr": "c9HmI7v8", "qMvs6ipy": "5asbH51C", "kgWoJO5H": "GZ1cGmiU"}, "TokenEndpoint": "kzizbEVY", "scopes": ["UutAGDsX", "38lWR73v", "aeD10oSJ"]}' \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '6u69oSz9' \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'UTdznlx4' \
    --body '{"ACSURL": "AHhIBpSc", "AWSCognitoRegion": "JX6G2TVo", "AWSCognitoUserPool": "yXziyEms", "AllowedClients": ["0hlBLc2A", "1FvwCYsY", "ZqDnNfqS"], "AppId": "jbLHuvEP", "AuthorizationEndpoint": "dgFCIL5w", "ClientId": "ObBjZWtl", "Environment": "FRCHYtCv", "FederationMetadataURL": "NywDZk3y", "GenericOauthFlow": true, "IsActive": false, "Issuer": "0m0vepsA", "JWKSEndpoint": "6oFLPSIl", "KeyID": "BBzcBCGx", "NetflixCertificates": {"encryptedPrivateKey": "DC9zAddF", "encryptedPrivateKeyName": "tNdrlN9r", "publicCertificate": "7uv6vxTe", "publicCertificateName": "6EUmv85t", "rootCertificate": "cDXzfEhy", "rootCertificateName": "DApFGcAz"}, "OrganizationId": "Bh6eE4JB", "PlatformName": "4wUCJmMf", "RedirectUri": "5KeyGB3K", "RegisteredDomains": [{"affectedClientIDs": ["K2OUGxW6", "POnjxufQ", "UyODUHQA"], "domain": "1z50fAOp", "namespaces": ["1GqCeAkR", "gIFKQAHi", "qR5rN1kl"], "roleId": "q9Fcrd1c"}, {"affectedClientIDs": ["G85kEqQy", "QgFnfnqw", "6YWTfXZQ"], "domain": "CH7nprWs", "namespaces": ["SerYLRU8", "BdaGLWC6", "b1hfTJcb"], "roleId": "QybQ7tBf"}, {"affectedClientIDs": ["FIX2gNFh", "MawdRh6A", "I6YqB77z"], "domain": "7bE2j3OV", "namespaces": ["3e41p1SS", "RwwXNsT4", "P9XsT7OB"], "roleId": "DjW4iCGm"}], "Secret": "DHzaK23o", "TeamID": "4xXZspLj", "TokenAuthenticationType": "2oVYwwe2", "TokenClaimsMapping": {"5qbf1qNG": "Fm6aajgB", "Zjcvj1FH": "bHpbdERO", "yHKtdM0V": "rpkjesbv"}, "TokenEndpoint": "HX5yoC8v", "scopes": ["HgFEnYQQ", "JzQDXAy7", "7pCqEKv4"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ejGdbmPc' \
    --body '{"affectedClientIDs": ["58sJWhG7", "DGD8wp5Q", "DjNiRqvn"], "assignedNamespaces": ["dNUqUJnO", "QAMZVPR8", "Btu9yTCU"], "domain": "msSD5gJO", "roleId": "j6KLGA0X"}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'GjKxrk1N' \
    --body '{"domain": "vdWfdxnz"}' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'ydfuRHAp' \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'hCZmzOai' \
    --body '{"acsUrl": "KmZryfkV", "apiKey": "hxntIabZ", "appId": "iT3a5Njh", "federationMetadataUrl": "6UBkkNOJ", "isActive": true, "redirectUri": "u8UImqSv", "secret": "4mYlp8q1", "ssoUrl": "A0HuMzyg"}' \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'dPSWKWQS' \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'ztwtcmz0' \
    --body '{"acsUrl": "5MjWBW0W", "apiKey": "BHWloXkK", "appId": "YnyN7KkV", "federationMetadataUrl": "apLG2S0L", "isActive": true, "redirectUri": "0jkjTuGT", "secret": "OAcze96R", "ssoUrl": "fIpb1tJm"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '2wOWqGld' \
    --platformUserId 'eh8FDDVC' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'kvv5KbtX' \
    --after '49' \
    --before '86' \
    --limit '72' \
    > test.out 2>&1
eval_tap $? 142 'GetAdminUsersByRoleIdV3' test.out

#- 143 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress '4XSRWMkR' \
    > test.out 2>&1
eval_tap $? 143 'AdminGetUserByEmailAddressV3' test.out

#- 144 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["zxUcr0uZ", "3ioNZQTF", "8wzeugSl"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["QxsBuury", "kaEF7kVP", "NrQHbzpH"], "isAdmin": true, "roles": ["iSHkI8CD", "sx1oIwml", "nkQk3xwS"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 146 'AdminListUsersV3' test.out

#- 147 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'YKnL2aJ0' \
    --endDate 'XFCzego6' \
    --limit '52' \
    --offset '78' \
    --platformBy 'h6STMXMp' \
    --platformId '9YUOYdmi' \
    --query 'mjuFV6pW' \
    --startDate 'Eu8w3KaF' \
    > test.out 2>&1
eval_tap $? 147 'AdminSearchUserV3' test.out

#- 148 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["fQs34YK9", "IxSDviL1", "PffpOwTz"]}' \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserByEmailAddressV3' test.out

#- 149 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WJVIjW46' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetUserByUserIdV3' test.out

#- 150 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eaULEY2R' \
    --body '{"avatarUrl": "mNDuBPBy", "country": "P1S8rf5L", "dateOfBirth": "fMQRDimN", "displayName": "XcVX7dSP", "languageTag": "xXM4Ebol", "userName": "7cMz7sSX"}' \
    > test.out 2>&1
eval_tap $? 150 'AdminUpdateUserV3' test.out

#- 151 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'htjsZowK' \
    --activeOnly 'true' \
    --after 'wAoVMfCM' \
    --before 'pnK1mVH6' \
    --limit '18' \
    > test.out 2>&1
eval_tap $? 151 'AdminGetUserBanV3' test.out

#- 152 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PuydIDW9' \
    --body '{"ban": "yqi4w6b6", "comment": "6mK7A4AR", "endDate": "O4pHwfwu", "reason": "xPbsTSqF", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 152 'AdminBanUserV3' test.out

#- 153 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId '4xdDREpH' \
    --namespace $AB_NAMESPACE \
    --userId 'clXEhfBr' \
    --body '{"enabled": true, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 153 'AdminUpdateUserBanV3' test.out

#- 154 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'qYieJuQG' \
    --body '{"context": "k5czjSAY", "emailAddress": "iI6Syn1o", "languageTag": "97jZOKrP"}' \
    > test.out 2>&1
eval_tap $? 154 'AdminSendVerificationCodeV3' test.out

#- 155 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'w3jzseBY' \
    --body '{"Code": "VOgTgfKH", "ContactType": "EFZogITN", "LanguageTag": "h3OvgY31", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 155 'AdminVerifyAccountV3' test.out

#- 156 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'GlZMbcLT' \
    > test.out 2>&1
eval_tap $? 156 'GetUserVerificationCode' test.out

#- 157 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WlgqHj5X' \
    > test.out 2>&1
eval_tap $? 157 'AdminGetUserDeletionStatusV3' test.out

#- 158 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Ekadn48X' \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 158 'AdminUpdateUserDeletionStatusV3' test.out

#- 159 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId '07g7EcQN' \
    --body '{"code": "jiBR5KMw", "country": "xLyMvllL", "dateOfBirth": "fih7tJlu", "displayName": "AQXxIfX3", "emailAddress": "XUHttzoR", "password": "PHTyPxWM", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 159 'AdminUpgradeHeadlessAccountV3' test.out

#- 160 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fCRJhnZp' \
    > test.out 2>&1
eval_tap $? 160 'AdminDeleteUserInformationV3' test.out

#- 161 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mAf5oRQw' \
    --after '0.797366688290178' \
    --before '0.13882938455808413' \
    --limit '12' \
    > test.out 2>&1
eval_tap $? 161 'AdminGetUserLoginHistoriesV3' test.out

#- 162 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eyFnRoor' \
    --body '{"languageTag": "DVJ95xzX", "newPassword": "bdt2x8tT", "oldPassword": "xmPFcZ3g"}' \
    > test.out 2>&1
eval_tap $? 162 'AdminResetPasswordV3' test.out

#- 163 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jhjNWVBj' \
    --body '{"Permissions": [{"Action": 0, "Resource": "Z8UMdbIJ", "SchedAction": 77, "SchedCron": "p51SKtBB", "SchedRange": ["dF3BebMO", "2dUZnAEF", "SdQ2Iuvi"]}, {"Action": 32, "Resource": "mY0dgmYD", "SchedAction": 18, "SchedCron": "jO3Ct12B", "SchedRange": ["Z0wPrWb2", "UXqzvzHW", "XDbSi6Kb"]}, {"Action": 79, "Resource": "BX8IfT5e", "SchedAction": 32, "SchedCron": "WXAXzMJ5", "SchedRange": ["Mxa0bXJk", "I1yDGkv8", "CvW2QhfV"]}]}' \
    > test.out 2>&1
eval_tap $? 163 'AdminUpdateUserPermissionV3' test.out

#- 164 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'JCwdBO08' \
    --body '{"Permissions": [{"Action": 98, "Resource": "YMQttbIc", "SchedAction": 57, "SchedCron": "LbqDqAsi", "SchedRange": ["Gq7FQ3bX", "5HaD9c5K", "ekC72een"]}, {"Action": 79, "Resource": "erKub6AK", "SchedAction": 41, "SchedCron": "9XSSOgWY", "SchedRange": ["mG13wetL", "j2OE8Vs0", "PzYcvRds"]}, {"Action": 73, "Resource": "SX6i9U3l", "SchedAction": 24, "SchedCron": "7EN7Uxu1", "SchedRange": ["SGU1S012", "gEphYGF6", "u4VEhnMO"]}]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminAddUserPermissionsV3' test.out

#- 165 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Sy6lTCGh' \
    --body '[{"Action": 63, "Resource": "8KH2kv0i"}, {"Action": 24, "Resource": "JsKQRgt9"}, {"Action": 75, "Resource": "aQHUJ0vl"}]' \
    > test.out 2>&1
eval_tap $? 165 'AdminDeleteUserPermissionBulkV3' test.out

#- 166 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '64' \
    --namespace $AB_NAMESPACE \
    --resource '95hKS2Jh' \
    --userId 'gbE2a1Zc' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionV3' test.out

#- 167 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '1qxtJR33' \
    --after 'y6Owx75Z' \
    --before 'P8LFJ2Jl' \
    --limit '41' \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserPlatformAccountsV3' test.out

#- 168 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'oZAE7KIy' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetListJusticePlatformAccounts' test.out

#- 169 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace '6bl0S7sD' \
    --userId 'sj4MvESX' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetUserMapping' test.out

#- 170 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'YLyPIZje' \
    --userId 'ZYaqH4J6' \
    > test.out 2>&1
eval_tap $? 170 'AdminCreateJusticeUser' test.out

#- 171 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'pqfdrgiX' \
    --body '{"platformId": "65IlMqxo", "platformUserId": "XqwIffFF"}' \
    > test.out 2>&1
eval_tap $? 171 'AdminLinkPlatformAccount' test.out

#- 172 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'x25Uqx9x' \
    --userId 'IqXHI72u' \
    --body '{"platformNamespace": "etmwL0Pi"}' \
    > test.out 2>&1
eval_tap $? 172 'AdminPlatformUnlinkV3' test.out

#- 173 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'm7DZelkZ' \
    --userId 'rmiOAXWI' \
    --ticket 'mr0h7XnP' \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformLinkV3' test.out

#- 174 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hLZQQLdg' \
    --body '["CseQNgDj", "A6bgooeD", "fNL01Y84"]' \
    > test.out 2>&1
eval_tap $? 174 'AdminDeleteUserRolesV3' test.out

#- 175 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'sov8tin1' \
    --body '[{"namespace": "ydNwzsqY", "roleId": "luhLXkdU"}, {"namespace": "HHnU7Tsm", "roleId": "CMNPxcEO"}, {"namespace": "ElqbPxgb", "roleId": "R9mZNVkl"}]' \
    > test.out 2>&1
eval_tap $? 175 'AdminSaveUserRoleV3' test.out

#- 176 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId '5pPeLcex' \
    --userId '30L9W0v8' \
    > test.out 2>&1
eval_tap $? 176 'AdminAddUserRoleV3' test.out

#- 177 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'ADvQp2br' \
    --userId 'HFkln3yD' \
    > test.out 2>&1
eval_tap $? 177 'AdminDeleteUserRoleV3' test.out

#- 178 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iBm4Hx6C' \
    --body '{"enabled": false, "reason": "qeTydnCV"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminUpdateUserStatusV3' test.out

#- 179 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId '9zIIeJxF' \
    > test.out 2>&1
eval_tap $? 179 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 180 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'GYh5Hjee' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "c5zFGSpe"}' \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateClientSecretV3' test.out

#- 181 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after '57vPGt82' \
    --before 'MiXzQ3mG' \
    --isWildcard 'true' \
    --limit '13' \
    > test.out 2>&1
eval_tap $? 181 'AdminGetRolesV3' test.out

#- 182 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "managers": [{"displayName": "7AQlwLLj", "namespace": "XYXV0uKE", "userId": "50uhJxBV"}, {"displayName": "hqLRmtYN", "namespace": "v36LNTKY", "userId": "yWVR59ds"}, {"displayName": "KUECQ26t", "namespace": "cOqi8SLK", "userId": "1PEiqE4K"}], "members": [{"displayName": "Dpbe20nD", "namespace": "Pm0Tsj7p", "userId": "7QUNeeiQ"}, {"displayName": "iWVcHyGc", "namespace": "RIgESC5N", "userId": "smPQpi2c"}, {"displayName": "h0Pm3RsI", "namespace": "q9gxDb3x", "userId": "OBZLWCZL"}], "permissions": [{"action": 13, "resource": "3u7wRBGP", "schedAction": 48, "schedCron": "J1WSaAdj", "schedRange": ["dAA2kd9F", "lf3LIre9", "Of4t7OT1"]}, {"action": 27, "resource": "3V8Ra90j", "schedAction": 13, "schedCron": "16aBrYdW", "schedRange": ["x4J5I3U3", "m8y5lvcS", "jIg06yfh"]}, {"action": 45, "resource": "YOc1f295", "schedAction": 27, "schedCron": "yjuixnoV", "schedRange": ["0oVxAKQm", "nZjiTa32", "Snxutrt8"]}], "roleName": "oYZofMY0"}' \
    > test.out 2>&1
eval_tap $? 182 'AdminCreateRoleV3' test.out

#- 183 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'xTX5fVxX' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRoleV3' test.out

#- 184 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'ntqFUKbV' \
    > test.out 2>&1
eval_tap $? 184 'AdminDeleteRoleV3' test.out

#- 185 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'oYZnOgMm' \
    --body '{"deletable": true, "isWildcard": true, "roleName": "eRgknMER"}' \
    > test.out 2>&1
eval_tap $? 185 'AdminUpdateRoleV3' test.out

#- 186 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'Sk6hQOib' \
    > test.out 2>&1
eval_tap $? 186 'AdminGetRoleAdminStatusV3' test.out

#- 187 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'CnrbMGE4' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateAdminRoleStatusV3' test.out

#- 188 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'D3Zr3j0x' \
    > test.out 2>&1
eval_tap $? 188 'AdminRemoveRoleAdminV3' test.out

#- 189 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'YtjRSkzQ' \
    --after 'I4FntNky' \
    --before 'pK8blk9z' \
    --limit '69' \
    > test.out 2>&1
eval_tap $? 189 'AdminGetRoleManagersV3' test.out

#- 190 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'byKZ4ms2' \
    --body '{"managers": [{"displayName": "4Xt8tFGT", "namespace": "ALig3Slv", "userId": "hIJt90uo"}, {"displayName": "f4yK6mwf", "namespace": "pNHAgou2", "userId": "RaVKKzkO"}, {"displayName": "g0r4stQZ", "namespace": "mkZWGAAI", "userId": "nt4TutcK"}]}' \
    > test.out 2>&1
eval_tap $? 190 'AdminAddRoleManagersV3' test.out

#- 191 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'VeeeABHD' \
    --body '{"managers": [{"displayName": "ECDESOda", "namespace": "8H1z4Dv6", "userId": "N9Aiw9y0"}, {"displayName": "Cg6cshW5", "namespace": "VU9CDtaO", "userId": "akVJwgN1"}, {"displayName": "2o1E274b", "namespace": "4tNMaVGi", "userId": "mS1tpIS3"}]}' \
    > test.out 2>&1
eval_tap $? 191 'AdminRemoveRoleManagersV3' test.out

#- 192 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'dkDOEkis' \
    --after 'iqXGi90J' \
    --before 'bNpdOo5O' \
    --limit '95' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetRoleMembersV3' test.out

#- 193 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'sscUBz2G' \
    --body '{"members": [{"displayName": "vT6w0sjK", "namespace": "3szibbE4", "userId": "kw84butQ"}, {"displayName": "4Xv9gqM0", "namespace": "42QwEERs", "userId": "FyFevbcI"}, {"displayName": "KvhMupHH", "namespace": "iO204XMO", "userId": "dC1TWb1p"}]}' \
    > test.out 2>&1
eval_tap $? 193 'AdminAddRoleMembersV3' test.out

#- 194 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId '7U7ZkXJn' \
    --body '{"members": [{"displayName": "PnBjm2dp", "namespace": "BNlbYtCW", "userId": "fQm6UOzx"}, {"displayName": "dCzRDK4y", "namespace": "4cg1sz0d", "userId": "idYjHB9H"}, {"displayName": "350qskaF", "namespace": "SATm4PPq", "userId": "daNf0V3J"}]}' \
    > test.out 2>&1
eval_tap $? 194 'AdminRemoveRoleMembersV3' test.out

#- 195 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'm64IR2WI' \
    --body '{"permissions": [{"action": 96, "resource": "UJkr5Vx5", "schedAction": 53, "schedCron": "bN22UXGB", "schedRange": ["NYK7CMuD", "h9bx1xpR", "Wroheu1b"]}, {"action": 93, "resource": "avTCiY0I", "schedAction": 27, "schedCron": "W9tI4D8Z", "schedRange": ["1tkbL4og", "o2qLZ7KJ", "FGEMpIcv"]}, {"action": 67, "resource": "VTnVB9bn", "schedAction": 81, "schedCron": "bQzEUlJT", "schedRange": ["FJD79Ds6", "r2D7B4Sg", "TMHDFPzm"]}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminUpdateRolePermissionsV3' test.out

#- 196 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'jqliKiKx' \
    --body '{"permissions": [{"action": 89, "resource": "DZ1u27yz", "schedAction": 41, "schedCron": "SvvlHeCX", "schedRange": ["t08okDgR", "SEx4duXx", "m7ENH7UV"]}, {"action": 45, "resource": "y37aEnft", "schedAction": 94, "schedCron": "AZtL1SnR", "schedRange": ["cOgaM7ld", "DpJz0Lcw", "pY7k4OMY"]}, {"action": 0, "resource": "LBJWdKzh", "schedAction": 26, "schedCron": "cvWLeWJS", "schedRange": ["l1QIJFbg", "UwD6VO5m", "EB42qInu"]}]}' \
    > test.out 2>&1
eval_tap $? 196 'AdminAddRolePermissionsV3' test.out

#- 197 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'FIGMqRy9' \
    --body '["BC2IxGN0", "Yl3gkmgo", "Klu2dWQt"]' \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteRolePermissionsV3' test.out

#- 198 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '6' \
    --resource '559Wr3mD' \
    --roleId 'FYlyurPy' \
    > test.out 2>&1
eval_tap $? 198 'AdminDeleteRolePermissionV3' test.out

#- 199 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 199 'AdminGetMyUserV3' test.out

#- 200 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId '292sQobx' \
    --extendExp 'true' \
    --redirectUri 'CQzJt6QJ' \
    --password 'T0tRZKDW' \
    --requestId 'Btm9hJmZ' \
    --userName 'z8A5IYTY' \
    > test.out 2>&1
eval_tap $? 200 'UserAuthenticationV3' test.out

#- 201 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'so9GrNb2' \
    --linkingToken 'pZG1BLvk' \
    --password 'XWsnE7iw' \
    --username 'Qt1ruYZZ' \
    > test.out 2>&1
eval_tap $? 201 'AuthenticationWithPlatformLinkV3' test.out

#- 202 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'true' \
    --linkingToken 'Rn5Sn0H4' \
    > test.out 2>&1
eval_tap $? 202 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 203 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 203 'GetCountryLocationV3' test.out

#- 204 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 204 'Logout' test.out

#- 205 RequestGameTokenCodeResponseV3
samples/cli/sample-apps Iam requestGameTokenCodeResponseV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'ClHDjuyH' \
    > test.out 2>&1
eval_tap $? 205 'RequestGameTokenCodeResponseV3' test.out

#- 206 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId '6YT3OH35' \
    --userId 'Cq0vvP6f' \
    > test.out 2>&1
eval_tap $? 206 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 207 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RCVQm5Yv' \
    > test.out 2>&1
eval_tap $? 207 'RevokeUserV3' test.out

#- 208 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'JmdmWTTo' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'true' \
    --redirectUri 'Sj49Mzb5' \
    --scope 'QaFP8arN' \
    --state 'fFys6TCK' \
    --targetAuthPage 'SRthigGz' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'IZd1cq0l' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 208 'AuthorizeV3' test.out

#- 209 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'boQtegTl' \
    > test.out 2>&1
eval_tap $? 209 'TokenIntrospectionV3' test.out

#- 210 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 210 'GetJWKSV3' test.out

#- 211 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'iCCihktr' \
    --factor 'uA339aDA' \
    --mfaToken 'QNDaNxx3' \
    > test.out 2>&1
eval_tap $? 211 'SendMFAAuthenticationCode' test.out

#- 212 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'mAuzmy3z' \
    --mfaToken 'Iayxvkeg' \
    > test.out 2>&1
eval_tap $? 212 'Change2faMethod' test.out

#- 213 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'wJJIy8Ym' \
    --factor 'pScR6J6r' \
    --mfaToken 'XJUW23N5' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 213 'Verify2faCode' test.out

#- 214 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'A9X2IeXd' \
    --userId 'U0VHBr6K' \
    > test.out 2>&1
eval_tap $? 214 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 215 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'GUu8gGbT' \
    --clientId 'xQx9v10l' \
    --redirectUri 'dJ1heQUl' \
    --requestId '4WS0jgEd' \
    > test.out 2>&1
eval_tap $? 215 'AuthCodeRequestV3' test.out

#- 216 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'h12VTtNo' \
    --clientId 'c8smN7X6' \
    --createHeadless 'true' \
    --deviceId 'ni6GNgrL' \
    --macAddress 'dxZR22Ea' \
    --platformToken 'lqWJXkCK' \
    > test.out 2>&1
eval_tap $? 216 'PlatformTokenGrantV3' test.out

#- 217 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 217 'GetRevocationListV3' test.out

#- 218 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'yIvhoOke' \
    > test.out 2>&1
eval_tap $? 218 'TokenRevocationV3' test.out

#- 219 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --clientId 'g9A1ROit' \
    --code 'xdhpsGba' \
    --codeVerifier 'sXkIEH8J' \
    --extendExp 'true' \
    --password '3ghC40NI' \
    --redirectUri 'b8bRPa2e' \
    --refreshToken 'UBfwdD0g' \
    --username 'pwaakqpE' \
    --grantType 'client_credentials' \
    > test.out 2>&1
eval_tap $? 219 'TokenGrantV3' test.out

#- 220 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'efsvh00T' \
    > test.out 2>&1
eval_tap $? 220 'VerifyTokenV3' test.out

#- 221 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'xNbbkERK' \
    --code 'aHXQa0rR' \
    --error 'ia8IfQtm' \
    --openidAssocHandle 'qTqIac54' \
    --openidClaimedId 'FYubJRtc' \
    --openidIdentity 'eCCNbfHV' \
    --openidMode 'fkTHrP6I' \
    --openidNs 'x9r3XKDY' \
    --openidOpEndpoint 'iavybT3k' \
    --openidResponseNonce 'K8A5YSwj' \
    --openidReturnTo '3IHQpOEy' \
    --openidSig 'E1Cy5Oyw' \
    --openidSigned 'sPhoSmnO' \
    --state '19mnS3KA' \
    > test.out 2>&1
eval_tap $? 221 'PlatformAuthenticationV3' test.out

#- 222 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode '0fvZWdS6' \
    > test.out 2>&1
eval_tap $? 222 'PublicGetInputValidations' test.out

#- 223 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'tg0KOfRo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 223 'PublicGetCountryAgeRestrictionV3' test.out

#- 224 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 224 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 225 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId '7REG7jXz' \
    > test.out 2>&1
eval_tap $? 225 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 226 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'BuASpxY5' \
    --body '{"platformUserIds": ["OaCF9P9U", "e6dRWik4", "CQpzKIMZ"]}' \
    > test.out 2>&1
eval_tap $? 226 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 227 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'fJxJk6ux' \
    --platformUserId 'QNZ017Wt' \
    > test.out 2>&1
eval_tap $? 227 'PublicGetUserByPlatformUserIDV3' test.out

#- 228 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'lMblnTrV' \
    > test.out 2>&1
eval_tap $? 228 'PublicGetAsyncStatus' test.out

#- 229 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'VZKXRRYi' \
    --limit '57' \
    --offset '22' \
    --query 'cu1erOt3' \
    > test.out 2>&1
eval_tap $? 229 'PublicSearchUserV3' test.out

#- 230 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "me5SFrIH", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Hju6gZ05", "policyId": "73FU6Lix", "policyVersionId": "f7wgje9M"}, {"isAccepted": true, "localizedPolicyVersionId": "2xaoE8aJ", "policyId": "aPqz1TqT", "policyVersionId": "QTkzKVFG"}, {"isAccepted": true, "localizedPolicyVersionId": "uOhTKJgv", "policyId": "akkk3IYH", "policyVersionId": "FSVkeJLv"}], "authType": "fbjoecYn", "code": "j1eRRQHZ", "country": "5kKv9lYO", "dateOfBirth": "2eEUmyyh", "displayName": "KidoCoT3", "emailAddress": "fIy1KXmf", "password": "vi7eLjOL", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 230 'PublicCreateUserV3' test.out

#- 231 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'dkQfliw1' \
    --query 'dXeZB3lZ' \
    > test.out 2>&1
eval_tap $? 231 'CheckUserAvailability' test.out

#- 232 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["ogfbzktx", "jbeKmemx", "FtsaH6Js"]}' \
    > test.out 2>&1
eval_tap $? 232 'PublicBulkGetUsers' test.out

#- 233 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "Eb6S6fQp", "languageTag": "sU3pePnH"}' \
    > test.out 2>&1
eval_tap $? 233 'PublicSendRegistrationCode' test.out

#- 234 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "McUK0jhH", "emailAddress": "Nnb925jE"}' \
    > test.out 2>&1
eval_tap $? 234 'PublicVerifyRegistrationCode' test.out

#- 235 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "WEQ6mBK0", "languageTag": "BroYkSSV"}' \
    > test.out 2>&1
eval_tap $? 235 'PublicForgotPasswordV3' test.out

#- 236 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'ZpTGrnTs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 236 'GetAdminInvitationV3' test.out

#- 237 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'gjfpcyZq' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "2y7ZpHcK", "policyId": "vYLs50UR", "policyVersionId": "2jmc06Km"}, {"isAccepted": true, "localizedPolicyVersionId": "nYY6nj21", "policyId": "O3PfNki0", "policyVersionId": "JUuSYOQ0"}, {"isAccepted": true, "localizedPolicyVersionId": "O3WniRft", "policyId": "vLafwYSg", "policyVersionId": "R8UoA2NQ"}], "authType": "EMAILPASSWD", "country": "o8Tw8daq", "dateOfBirth": "9egqWEf7", "displayName": "NQZwKI1m", "password": "iefsdNoU", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 237 'CreateUserFromInvitationV3' test.out

#- 238 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "gmSMSwA8", "country": "K7qJH2G5", "dateOfBirth": "GpswLkGX", "displayName": "7GbRIPfw", "languageTag": "5Pmv2LQD", "userName": "ez3Lccdc"}' \
    > test.out 2>&1
eval_tap $? 238 'UpdateUserV3' test.out

#- 239 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "DWkGOlUf", "country": "AVAXUgkw", "dateOfBirth": "SSehjnkV", "displayName": "vPrkn8yy", "languageTag": "cVey744r", "userName": "qf5H7fTr"}' \
    > test.out 2>&1
eval_tap $? 239 'PublicPartialUpdateUserV3' test.out

#- 240 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "RVo21AVj", "emailAddress": "3LWCIoga", "languageTag": "De5kkxa1"}' \
    > test.out 2>&1
eval_tap $? 240 'PublicSendVerificationCodeV3' test.out

#- 241 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "98NriujC", "contactType": "xyGHhyLc", "languageTag": "uoM5VMzd", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 241 'PublicUserVerificationV3' test.out

#- 242 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "MDgWerfp", "country": "BuESUEUI", "dateOfBirth": "OhNgbum7", "displayName": "02YC6ud5", "emailAddress": "LUGcnhof", "password": "lCobI8Xf", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 242 'PublicUpgradeHeadlessAccountV3' test.out

#- 243 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "0llOiJr7", "password": "w4NlqObn"}' \
    > test.out 2>&1
eval_tap $? 243 'PublicVerifyHeadlessAccountV3' test.out

#- 244 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "bIixsEPX", "newPassword": "uF4yotO2", "oldPassword": "023OarRW"}' \
    > test.out 2>&1
eval_tap $? 244 'PublicUpdatePasswordV3' test.out

#- 245 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '4ZJGVoHt' \
    > test.out 2>&1
eval_tap $? 245 'PublicCreateJusticeUser' test.out

#- 246 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '1LBQK38m' \
    --redirectUri 'EWXBsIXJ' \
    --ticket 'Omav713U' \
    > test.out 2>&1
eval_tap $? 246 'PublicPlatformLinkV3' test.out

#- 247 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'BgzdLqrs' \
    --body '{"platformNamespace": "hhC6lySJ"}' \
    > test.out 2>&1
eval_tap $? 247 'PublicPlatformUnlinkV3' test.out

#- 248 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'waXqgF83' \
    > test.out 2>&1
eval_tap $? 248 'PublicPlatformUnlinkAllV3' test.out

#- 249 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'w3mjdcqa' \
    --ticket 'Nf9oVWj9' \
    > test.out 2>&1
eval_tap $? 249 'PublicForcePlatformLinkV3' test.out

#- 250 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'Onj1EZ71' \
    --clientId '2vMF5kSs' \
    --redirectUri 'dvwwK46d' \
    > test.out 2>&1
eval_tap $? 250 'PublicWebLinkPlatform' test.out

#- 251 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId '6WPoZ9dv' \
    --state 'MsyAEd77' \
    > test.out 2>&1
eval_tap $? 251 'PublicWebLinkPlatformEstablish' test.out

#- 252 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "tPayS5Ja", "emailAddress": "KFMlL4zn", "newPassword": "QLeV4zQS"}' \
    > test.out 2>&1
eval_tap $? 252 'ResetPasswordV3' test.out

#- 253 PublicGetUserByUserIdV3
samples/cli/sample-apps Iam publicGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZgVNUldg' \
    > test.out 2>&1
eval_tap $? 253 'PublicGetUserByUserIdV3' test.out

#- 254 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PSzcuNvf' \
    --activeOnly 'true' \
    --after 'uYQwfc4T' \
    --before 'qSc1J3nL' \
    --limit '12' \
    > test.out 2>&1
eval_tap $? 254 'PublicGetUserBanHistoryV3' test.out

#- 255 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WZGZhgme' \
    > test.out 2>&1
eval_tap $? 255 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 256 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'SxkFkYAt' \
    > test.out 2>&1
eval_tap $? 256 'PublicGetUserInformationV3' test.out

#- 257 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hBU3bP4i' \
    --after '0.6153459677268461' \
    --before '0.6223880007750037' \
    --limit '99' \
    > test.out 2>&1
eval_tap $? 257 'PublicGetUserLoginHistoriesV3' test.out

#- 258 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'afH1qjY4' \
    --after '1q9hncwN' \
    --before '0mjIP8iC' \
    --limit '64' \
    > test.out 2>&1
eval_tap $? 258 'PublicGetUserPlatformAccountsV3' test.out

#- 259 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'di2Oc2GH' \
    > test.out 2>&1
eval_tap $? 259 'PublicListJusticePlatformAccountsV3' test.out

#- 260 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'IGFp5IVY' \
    --body '{"platformId": "ykLHAFCv", "platformUserId": "OPjCaE4U"}' \
    > test.out 2>&1
eval_tap $? 260 'PublicLinkPlatformAccount' test.out

#- 261 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'Sz7KElxi' \
    --body '{"chosenNamespaces": ["OV5DJTyK", "TPOgYTyW", "8Hxbj4qT"], "requestId": "JrHiv6Ka"}' \
    > test.out 2>&1
eval_tap $? 261 'PublicForceLinkPlatformWithProgression' test.out

#- 262 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'c5KdNOMS' \
    > test.out 2>&1
eval_tap $? 262 'PublicGetPublisherUserV3' test.out

#- 263 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BRYwzAgj' \
    --password '0s0Lo6hE' \
    > test.out 2>&1
eval_tap $? 263 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 264 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after '7A5CpSrD' \
    --before 'Lx2RsIhN' \
    --isWildcard 'false' \
    --limit '74' \
    > test.out 2>&1
eval_tap $? 264 'PublicGetRolesV3' test.out

#- 265 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'hctfhfn7' \
    > test.out 2>&1
eval_tap $? 265 'PublicGetRoleV3' test.out

#- 266 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 266 'PublicGetMyUserV3' test.out

#- 267 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "bUx84P7j"}' \
    > test.out 2>&1
eval_tap $? 267 'PublicSendVerificationLinkV3' test.out

#- 268 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code '6LXKtg4c' \
    > test.out 2>&1
eval_tap $? 268 'PublicVerifyUserByLinkV3' test.out

#- 269 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'soGniFQy' \
    --code 'gATFQecs' \
    --error '2czzWjU9' \
    --state '3PDOwWPu' \
    > test.out 2>&1
eval_tap $? 269 'PlatformAuthenticateSAMLV3Handler' test.out

#- 270 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'GMaDUZ4F' \
    --payload 'uMjLeXO9' \
    > test.out 2>&1
eval_tap $? 270 'LoginSSOClient' test.out

#- 271 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'pw1gHXny' \
    > test.out 2>&1
eval_tap $? 271 'LogoutSSOClient' test.out

#- 272 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --code 'VuUlCWHA' \
    > test.out 2>&1
eval_tap $? 272 'RequestGameTokenResponseV3' test.out

#- 273 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'y2aWTiCb' \
    > test.out 2>&1
eval_tap $? 273 'AdminGetDevicesByUserV4' test.out

#- 274 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'q2xB4Fbj' \
    --endDate 'IrszSuyI' \
    --limit '1' \
    --offset '44' \
    --startDate 'SMxtMeKa' \
    > test.out 2>&1
eval_tap $? 274 'AdminGetBannedDevicesV4' test.out

#- 275 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId '5Z0Bhvdg' \
    > test.out 2>&1
eval_tap $? 275 'AdminGetUserDeviceBansV4' test.out

#- 276 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "1xuJ15Us", "deviceId": "s9nEAfTM", "deviceType": "RGH04sRD", "enabled": true, "endDate": "u6tiT9hj", "ext": {"1c1kRoR2": {}, "wBUDiubZ": {}, "tomb0eSD": {}}, "reason": "v7RAHG2d"}' \
    > test.out 2>&1
eval_tap $? 276 'AdminBanDeviceV4' test.out

#- 277 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'SKjQbSVU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 277 'AdminGetDeviceBanV4' test.out

#- 278 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'RCAFFpwN' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 278 'AdminUpdateDeviceBanV4' test.out

#- 279 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'w8YresP8' \
    --startDate '4ekfCHPA' \
    --deviceType 'Vk1GJMbK' \
    > test.out 2>&1
eval_tap $? 279 'AdminGenerateReportV4' test.out

#- 280 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 280 'AdminGetDeviceTypesV4' test.out

#- 281 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId '81F8FRZf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 281 'AdminGetDeviceBansV4' test.out

#- 282 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'z3EtifUX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 282 'AdminDecryptDeviceV4' test.out

#- 283 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'IkkEaqKd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 283 'AdminUnbanDeviceV4' test.out

#- 284 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'Iqov7nZA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 284 'AdminGetUsersByDeviceV4' test.out

#- 285 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 35}' \
    > test.out 2>&1
eval_tap $? 285 'AdminCreateTestUsersV4' test.out

#- 286 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["8ebfEom8", "AXcT3k5X", "oZrY3xdV"]}' \
    > test.out 2>&1
eval_tap $? 286 'AdminBulkCheckValidUserIDV4' test.out

#- 287 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '3wiAsu5d' \
    --body '{"avatarUrl": "XHRtBRyK", "country": "kvUevIJz", "dateOfBirth": "TJbHjTy4", "displayName": "kVzPMHN9", "languageTag": "ZaCMdWCv", "userName": "KxpL2sHN"}' \
    > test.out 2>&1
eval_tap $? 287 'AdminUpdateUserV4' test.out

#- 288 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'pxYyza8f' \
    --body '{"code": "fdrNpEkF", "emailAddress": "P3KVXG54"}' \
    > test.out 2>&1
eval_tap $? 288 'AdminUpdateUserEmailAddressV4' test.out

#- 289 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'VWw9ERu4' \
    > test.out 2>&1
eval_tap $? 289 'AdminDisableUserMFAV4' test.out

#- 290 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'nUgF62H3' \
    > test.out 2>&1
eval_tap $? 290 'AdminListUserRolesV4' test.out

#- 291 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'XBiY9OuU' \
    --body '{"assignedNamespaces": ["llywTAai", "hxXVY4jo", "n8M6NwR0"], "roleId": "3G7z0O9Z"}' \
    > test.out 2>&1
eval_tap $? 291 'AdminUpdateUserRoleV4' test.out

#- 292 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'mtyhl3aP' \
    --body '{"assignedNamespaces": ["ffCfM54M", "oWf3EpEk", "0jPrQdHg"], "roleId": "BZooHg12"}' \
    > test.out 2>&1
eval_tap $? 292 'AdminAddUserRoleV4' test.out

#- 293 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'vYny3hvf' \
    --body '{"assignedNamespaces": ["cXVnrMfE", "hmraW5dl", "d3r9Q8sI"], "roleId": "XTHFoAAe"}' \
    > test.out 2>&1
eval_tap $? 293 'AdminRemoveUserRoleV4' test.out

#- 294 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'false' \
    --limit '27' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 294 'AdminGetRolesV4' test.out

#- 295 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "mzzQiu7x"}' \
    > test.out 2>&1
eval_tap $? 295 'AdminCreateRoleV4' test.out

#- 296 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'uApClpl2' \
    > test.out 2>&1
eval_tap $? 296 'AdminGetRoleV4' test.out

#- 297 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'iNMboRVK' \
    > test.out 2>&1
eval_tap $? 297 'AdminDeleteRoleV4' test.out

#- 298 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'SIX53vrx' \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "EPvUg204"}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateRoleV4' test.out

#- 299 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'gj0o82Uh' \
    --body '{"permissions": [{"action": 87, "resource": "AyJFizpB", "schedAction": 94, "schedCron": "vss9U2fd", "schedRange": ["eTghl4mo", "MNZ4lVEn", "X7aj5HTZ"]}, {"action": 3, "resource": "y6StvfhA", "schedAction": 65, "schedCron": "7MkseyLf", "schedRange": ["S54xAqsh", "HYzZKvEk", "OiLKLKWG"]}, {"action": 97, "resource": "LVSntDdQ", "schedAction": 84, "schedCron": "vwqjstof", "schedRange": ["hu7uyaQA", "GXgQgre9", "l4ub4iTM"]}]}' \
    > test.out 2>&1
eval_tap $? 299 'AdminUpdateRolePermissionsV4' test.out

#- 300 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'RhXyHjmQ' \
    --body '{"permissions": [{"action": 17, "resource": "bUB7Y0SH", "schedAction": 24, "schedCron": "CU9p5whF", "schedRange": ["HcSsj8uy", "NGIFQvKE", "hjRjcGSX"]}, {"action": 16, "resource": "Frk1Ints", "schedAction": 5, "schedCron": "BnJxx2Jp", "schedRange": ["HNrGrFeF", "LwnZJiKU", "pQRAg7kV"]}, {"action": 17, "resource": "qDbiNc6J", "schedAction": 30, "schedCron": "2Tw1VxrT", "schedRange": ["HzWv9wfD", "0NPwUVdk", "yHaUUqEy"]}]}' \
    > test.out 2>&1
eval_tap $? 300 'AdminAddRolePermissionsV4' test.out

#- 301 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId '4dvgCqop' \
    --body '["VLacIBwB", "OT1GBvwH", "EKctUgX5"]' \
    > test.out 2>&1
eval_tap $? 301 'AdminDeleteRolePermissionsV4' test.out

#- 302 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'xu8D3aIn' \
    --after 'e6ozl2L5' \
    --before 'bO7iL1I0' \
    --limit '86' \
    > test.out 2>&1
eval_tap $? 302 'AdminListAssignedUsersV4' test.out

#- 303 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId '5OhvP1fQ' \
    --body '{"assignedNamespaces": ["fu3Cqh84", "4hkKU26k", "qA2Zpeqt"], "namespace": "sY94qeLr", "userId": "3VMWSbrj"}' \
    > test.out 2>&1
eval_tap $? 303 'AdminAssignUserToRoleV4' test.out

#- 304 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'JDM041lg' \
    --body '{"namespace": "RmAWm93E", "userId": "lH5mKZXR"}' \
    > test.out 2>&1
eval_tap $? 304 'AdminRevokeUserFromRoleV4' test.out

#- 305 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "rB1WIsEX", "country": "45PSLa1r", "dateOfBirth": "DAl6u3Gd", "displayName": "5iN8JZJa", "languageTag": "wUtdTkDo", "userName": "JxbxkshH"}' \
    > test.out 2>&1
eval_tap $? 305 'AdminUpdateMyUserV4' test.out

#- 306 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 306 'AdminDisableMyAuthenticatorV4' test.out

#- 307 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'zPDfF0WY' \
    > test.out 2>&1
eval_tap $? 307 'AdminEnableMyAuthenticatorV4' test.out

#- 308 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 308 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 309 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 309 'AdminGetMyBackupCodesV4' test.out

#- 310 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 310 'AdminGenerateMyBackupCodesV4' test.out

#- 311 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 311 'AdminDisableMyBackupCodesV4' test.out

#- 312 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 312 'AdminDownloadMyBackupCodesV4' test.out

#- 313 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 313 'AdminEnableMyBackupCodesV4' test.out

#- 314 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 314 'AdminSendMyMFAEmailCodeV4' test.out

#- 315 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 315 'AdminDisableMyEmailV4' test.out

#- 316 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'JlcWh9ZF' \
    > test.out 2>&1
eval_tap $? 316 'AdminEnableMyEmailV4' test.out

#- 317 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 317 'AdminGetMyEnabledFactorsV4' test.out

#- 318 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'mZXMr1vz' \
    > test.out 2>&1
eval_tap $? 318 'AdminMakeFactorMyDefaultV4' test.out

#- 319 AdminInviteUserV4
samples/cli/sample-apps Iam adminInviteUserV4 \
    --body '{"assignedNamespaces": ["niK6Uau8", "TY7wD4Qn", "e0JqRZHk"], "emailAddresses": ["xZUIkNxE", "04xPtsZO", "KwARes3E"], "isAdmin": false, "roleId": "wd5UY1f8"}' \
    > test.out 2>&1
eval_tap $? 319 'AdminInviteUserV4' test.out

#- 320 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "7nZJvYXW", "policyId": "Y6fYf6Gv", "policyVersionId": "JIWTEDKG"}, {"isAccepted": true, "localizedPolicyVersionId": "eUJOdokw", "policyId": "rr9M6Kym", "policyVersionId": "iVOJNYPL"}, {"isAccepted": true, "localizedPolicyVersionId": "mh6r5aJw", "policyId": "aNXNM6Iz", "policyVersionId": "KPCKEBxE"}], "authType": "EMAILPASSWD", "country": "KKZ9UcX8", "dateOfBirth": "Cpwr5R8u", "displayName": "xjmGqv10", "emailAddress": "U86SfhBg", "password": "WHsPfaGd", "passwordMD5Sum": "y5P6eY9Z", "username": "kiOTKVdO", "verified": true}' \
    > test.out 2>&1
eval_tap $? 320 'PublicCreateTestUserV4' test.out

#- 321 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "mQdkvusI", "policyId": "MQMF9CKA", "policyVersionId": "D9JnLlRW"}, {"isAccepted": false, "localizedPolicyVersionId": "m5s4rXJv", "policyId": "dcyqkljD", "policyVersionId": "1a2fUtOP"}, {"isAccepted": false, "localizedPolicyVersionId": "RbB7VA6z", "policyId": "NF0skKoA", "policyVersionId": "Mh4su61C"}], "authType": "EMAILPASSWD", "code": "K2e3pgUQ", "country": "7U3Bylwt", "dateOfBirth": "8JeWmO1i", "displayName": "e3IXJBtv", "emailAddress": "JERUYYtH", "password": "my9CSInP", "passwordMD5Sum": "1bzQdCMa", "reachMinimumAge": true, "username": "FO0Tt1m7"}' \
    > test.out 2>&1
eval_tap $? 321 'PublicCreateUserV4' test.out

#- 322 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'cTuzxA1o' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "eztTwY4Y", "policyId": "2gH7K5yE", "policyVersionId": "bvhTJ9nN"}, {"isAccepted": false, "localizedPolicyVersionId": "eereSoJ9", "policyId": "7LjYwYIs", "policyVersionId": "R70bEx2d"}, {"isAccepted": true, "localizedPolicyVersionId": "4Tywwcmh", "policyId": "dRt2xcK1", "policyVersionId": "Haepts9s"}], "authType": "EMAILPASSWD", "country": "WTWCFQKV", "dateOfBirth": "1QQJGSj7", "displayName": "o0VUqTVX", "password": "2YmVrZ0c", "reachMinimumAge": false, "username": "TpVfvOMD"}' \
    > test.out 2>&1
eval_tap $? 322 'CreateUserFromInvitationV4' test.out

#- 323 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "Dse9m7QO", "country": "eP7Dzo3A", "dateOfBirth": "iImULrhS", "displayName": "55MSgiTO", "languageTag": "JIHA09P9", "userName": "5DyHPTJp"}' \
    > test.out 2>&1
eval_tap $? 323 'PublicUpdateUserV4' test.out

#- 324 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "tUrcjrVz", "emailAddress": "q2vkpzA5"}' \
    > test.out 2>&1
eval_tap $? 324 'PublicUpdateUserEmailAddressV4' test.out

#- 325 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "B4fQ59AW", "country": "hFnPXvLY", "dateOfBirth": "SOjtOZGm", "displayName": "fLGPIRsS", "emailAddress": "2aeYUq2N", "password": "RgkgzLXS", "reachMinimumAge": false, "username": "IOd4LdS7", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 325 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 326 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "Bi3522wu", "password": "UTe6jrvR", "username": "4eCJ1fai"}' \
    > test.out 2>&1
eval_tap $? 326 'PublicUpgradeHeadlessAccountV4' test.out

#- 327 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 327 'PublicDisableMyAuthenticatorV4' test.out

#- 328 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code '44eYgTxh' \
    > test.out 2>&1
eval_tap $? 328 'PublicEnableMyAuthenticatorV4' test.out

#- 329 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 329 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 330 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 330 'PublicGetMyBackupCodesV4' test.out

#- 331 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 331 'PublicGenerateMyBackupCodesV4' test.out

#- 332 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 332 'PublicDisableMyBackupCodesV4' test.out

#- 333 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 333 'PublicDownloadMyBackupCodesV4' test.out

#- 334 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 334 'PublicEnableMyBackupCodesV4' test.out

#- 335 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 335 'PublicRemoveTrustedDeviceV4' test.out

#- 336 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 336 'PublicSendMyMFAEmailCodeV4' test.out

#- 337 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 337 'PublicDisableMyEmailV4' test.out

#- 338 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'GsXgLScF' \
    > test.out 2>&1
eval_tap $? 338 'PublicEnableMyEmailV4' test.out

#- 339 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 339 'PublicGetMyEnabledFactorsV4' test.out

#- 340 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'y1mHKYLy' \
    > test.out 2>&1
eval_tap $? 340 'PublicMakeFactorMyDefaultV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE