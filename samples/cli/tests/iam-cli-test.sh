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
echo "1..349"

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
    --body '[{"field": "JYlLPMQD", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "blockedWord": ["neVeGxMQ", "FcWG82c8", "2SPgXwcN"], "description": [{"language": "Bw0gUAJB", "message": ["d5aBdMiT", "qxVvL2oY", "UKRAEpUZ"]}, {"language": "rrfSkvqw", "message": ["4Plsul3C", "vIHdm6BG", "hAcIR2yG"]}, {"language": "r6uJfddP", "message": ["kF1Fh3E4", "DbzDg3T4", "MLr2Cyzd"]}], "isCustomRegex": false, "letterCase": "4O6yHLKm", "maxLength": 52, "maxRepeatingAlphaNum": 94, "maxRepeatingSpecialCharacter": 78, "minCharType": 43, "minLength": 26, "regex": "pJeYQaSi", "specialCharacterLocation": "JVh13PsE", "specialCharacters": ["PFqNVCdG", "V8Hm8oDC", "BWi6iFDL"]}}, {"field": "TsBz8QZ1", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "blockedWord": ["lVc9ghD5", "Z1nCVr1T", "8MFSWzno"], "description": [{"language": "muIdk8J1", "message": ["qnsm7KYp", "OyJ255h7", "srSK1Sn9"]}, {"language": "fgKTQguV", "message": ["rZTwG5wz", "GA6ncXtC", "mS2rbh2N"]}, {"language": "KYRlYXOr", "message": ["AC2nggz3", "rXwPBNOn", "nWSnvlxH"]}], "isCustomRegex": false, "letterCase": "0qYTTHXU", "maxLength": 39, "maxRepeatingAlphaNum": 57, "maxRepeatingSpecialCharacter": 66, "minCharType": 84, "minLength": 74, "regex": "Z5TqcYh2", "specialCharacterLocation": "NFZ8gvHu", "specialCharacters": ["pGu75aYv", "dQ7arDoP", "v35Cw4LR"]}}, {"field": "6YwaaKSl", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "blockedWord": ["PaQ0HEzX", "wMhZmlte", "x8Bjy8K1"], "description": [{"language": "a3evfbsu", "message": ["tNDBOBs0", "dwrkd7ST", "5wL2Gqd4"]}, {"language": "99y5oShy", "message": ["PchOAX8g", "F6okfnmz", "txNCXBKe"]}, {"language": "9KmjHDws", "message": ["7Y7B2bhW", "MpkacjZN", "F6285zS5"]}], "isCustomRegex": true, "letterCase": "YHCFcIVP", "maxLength": 69, "maxRepeatingAlphaNum": 39, "maxRepeatingSpecialCharacter": 55, "minCharType": 14, "minLength": 55, "regex": "BFVo21YO", "specialCharacterLocation": "0AZtNuap", "specialCharacters": ["jwVUe7zk", "gm7UX7xm", "TXUvMlyx"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'sSuD4JnQ' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'TXzuJkxJ' \
    --before 'rfcEYur5' \
    --limit '73' \
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
    --body '{"ageRestriction": 21, "enable": false}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'hqzc5QPB' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 44}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'vtD7bNPo' \
    --limit '93' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "BflqqLw7", "comment": "rckGE1at", "endDate": "YzCy6uwW", "reason": "dG7llrh3", "skipNotif": true, "userIds": ["nSKlgsak", "lVqIb6LE", "Nd5ytcyj"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "nY3Gqkna", "userId": "tuJjU4eP"}, {"banId": "HxIXOIyV", "userId": "qHXZbsUU"}, {"banId": "JmwBTVnR", "userId": "NPnMa5lz"}]}' \
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
    --clientId 'DTsrXhgT' \
    --clientName 'fjULo7qP' \
    --clientType 'SF1bwVrT' \
    --limit '100' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["xcuWJKYL", "4Lnc6Yvj", "FLGNRfGU"], "baseUri": "B1osNKrn", "clientId": "AU4Fj67Q", "clientName": "BI1hpRIO", "clientPermissions": [{"action": 4, "resource": "82RmmRJ8", "schedAction": 87, "schedCron": "FWEWVmAk", "schedRange": ["mnILUieR", "AEuaovpu", "wo674hMO"]}, {"action": 13, "resource": "a5Hpe3DG", "schedAction": 65, "schedCron": "r6MqKjZa", "schedRange": ["fzo3AEhE", "PQEQ1JzC", "GSktdX8O"]}, {"action": 72, "resource": "qrv4XRXg", "schedAction": 68, "schedCron": "5GrMRuoL", "schedRange": ["k1JxSy1N", "JIqGqxp2", "Rjvk9eF0"]}], "clientPlatform": "cAszaSSr", "deletable": true, "description": "YBV4RTde", "namespace": "oFOqnS0x", "oauthAccessTokenExpiration": 1, "oauthAccessTokenExpirationTimeUnit": "HCQBjcB1", "oauthClientType": "ODZfnLsE", "oauthRefreshTokenExpiration": 55, "oauthRefreshTokenExpirationTimeUnit": "QhOrb5Nl", "parentNamespace": "DJKN8yIV", "redirectUri": "2kLVJksE", "scopes": ["DllpHvde", "q6uiNrRh", "xmQW3gJA"], "secret": "CFXUolfI", "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'ZvsIcp0n' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'rJMZX6PD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'l3FyjNTO' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["vfKoIWWe", "pz5b77YN", "E5KGKLIF"], "baseUri": "nQldMzeS", "clientName": "jvYboymM", "clientPermissions": [{"action": 25, "resource": "OflCxBMM", "schedAction": 26, "schedCron": "yzpLfnrm", "schedRange": ["7vpVY4A0", "aGPMCQ7P", "nhhTUjWg"]}, {"action": 76, "resource": "6xA5PqaD", "schedAction": 53, "schedCron": "04oMTQnX", "schedRange": ["4xHXasrc", "BQ2ymld2", "6Yq1Rk4P"]}, {"action": 90, "resource": "9P35yoQa", "schedAction": 84, "schedCron": "5UldIadK", "schedRange": ["o79fs3GZ", "9ZncZ3i0", "GsG9iTaE"]}], "clientPlatform": "LPMtHZsQ", "deletable": false, "description": "n13IAll7", "namespace": "Up7XMxqJ", "oauthAccessTokenExpiration": 25, "oauthAccessTokenExpirationTimeUnit": "ZM3r8RFq", "oauthRefreshTokenExpiration": 47, "oauthRefreshTokenExpirationTimeUnit": "gNGVSkGD", "redirectUri": "rEsPfv52", "scopes": ["5pPrYaSD", "USTAVws5", "POzoShSY"], "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'LwNHAkfP' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 40, "resource": "UJqmCqVW"}, {"action": 62, "resource": "dBhPrV2c"}, {"action": 97, "resource": "CDbxrmsv"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'SnYwh1ua' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 96, "resource": "NmqLbbBR"}, {"action": 50, "resource": "7XgeNGjz"}, {"action": 10, "resource": "MBE16zuD"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '64' \
    --clientId 'O0eILaAc' \
    --namespace $AB_NAMESPACE \
    --resource 'XNCCTlju' \
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
    --limit '25' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 130 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 131 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'zStEHFBK' \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'au6xQVsZ' \
    --body '{"ACSURL": "ylIELvnX", "AWSCognitoRegion": "bEgoyiSh", "AWSCognitoUserPool": "DV7Sfcou", "AllowedClients": ["YFjHdcvt", "p5ZolTVU", "GLY8QTgK"], "AppId": "F6CLAb9r", "AuthorizationEndpoint": "POtHsjfQ", "ClientId": "Me6ga9zG", "Environment": "TbcsIANJ", "FederationMetadataURL": "7RnN2CL6", "GenericOauthFlow": false, "IsActive": true, "Issuer": "szyqoyIx", "JWKSEndpoint": "cjhx99pn", "KeyID": "NvvDnoUt", "NetflixCertificates": {"encryptedPrivateKey": "yuDw2AdA", "encryptedPrivateKeyName": "ANjl0fZ8", "publicCertificate": "cAiaCfJ9", "publicCertificateName": "c0bYpvcW", "rootCertificate": "DBaZo4cY", "rootCertificateName": "Ck8K3PBq"}, "OrganizationId": "zuq5OB6w", "PlatformName": "WyyiGwIX", "RedirectUri": "bl0H5vqx", "RegisteredDomains": [{"affectedClientIDs": ["D4Dz8fBj", "4LA4aBMh", "mJRKOYx7"], "domain": "T93vlhB3", "namespaces": ["AL1O7PcF", "rge63qnP", "VNa5RmyU"], "roleId": "yd2sm34d"}, {"affectedClientIDs": ["ur8teCG8", "ydDWModl", "MhJ1PwDD"], "domain": "ofoOiPpR", "namespaces": ["YQWtNoRx", "YYijMSAn", "Mc8mOy0e"], "roleId": "Fo0qHvoV"}, {"affectedClientIDs": ["aRKbSFy9", "5c8aSg9o", "E6xvU9eI"], "domain": "xkrmWqNX", "namespaces": ["Mvz6OuBv", "ba760oF5", "WJPEEdMX"], "roleId": "C2GtwPMU"}], "Secret": "S43jyebO", "TeamID": "E8xfudGT", "TokenAuthenticationType": "FVHjyjwr", "TokenClaimsMapping": {"hfXTe0Le": "TiQh2KaL", "BzL9KJIS": "C6crbkyK", "8oLzzBvp": "cCyBQO4X"}, "TokenEndpoint": "8NhC8Ue0", "UserInfoEndpoint": "DZ5Yumcy", "UserInfoHTTPMethod": "ATC2f4aO", "scopes": ["AmSSLldv", "dpJUkUWk", "BvPJmNET"]}' \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '2gVG32qs' \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'lSK8u2cX' \
    --body '{"ACSURL": "jDTK5TAb", "AWSCognitoRegion": "As6Pn68e", "AWSCognitoUserPool": "JyPSagAN", "AllowedClients": ["tAIJWIPW", "jWNd8Be2", "dyV9Nuyh"], "AppId": "kNlzdD3M", "AuthorizationEndpoint": "jXRXNHvJ", "ClientId": "5QOT98lf", "Environment": "QvlUgO0Q", "FederationMetadataURL": "rE2dWKqu", "GenericOauthFlow": false, "IsActive": true, "Issuer": "CecslfMo", "JWKSEndpoint": "2jsD2mIh", "KeyID": "qJMCAZrR", "NetflixCertificates": {"encryptedPrivateKey": "D8lDPPN1", "encryptedPrivateKeyName": "feYJ5aV0", "publicCertificate": "qZydQoyR", "publicCertificateName": "3J47EZtP", "rootCertificate": "kO6xBw3h", "rootCertificateName": "YZ9rDV9q"}, "OrganizationId": "tqEcAMPc", "PlatformName": "Dj2v1nE4", "RedirectUri": "MRurRZ0x", "RegisteredDomains": [{"affectedClientIDs": ["mupjjZpc", "eN8StXGw", "zakHKZ1O"], "domain": "yTz3V7dO", "namespaces": ["BE61hNzp", "soxg0dpR", "36AD9Fb5"], "roleId": "G9DMFTwD"}, {"affectedClientIDs": ["laQijO8P", "sZIwKy8P", "rDp12qgc"], "domain": "GLwy2oJE", "namespaces": ["6exARjj1", "TStLYKtZ", "qJR8VqUi"], "roleId": "VCyDlERv"}, {"affectedClientIDs": ["plDF2sBZ", "TAojDcbA", "VJgqspgt"], "domain": "I5yh3CEk", "namespaces": ["JUgSG5VW", "nDhbOxlz", "mdK6PTc5"], "roleId": "TEtsRfYk"}], "Secret": "Jv3n2xHN", "TeamID": "laJi0WvM", "TokenAuthenticationType": "uhAvQbxK", "TokenClaimsMapping": {"0iDkJ55e": "fLu0CB1c", "ojp6nd6s": "WJUrsEzb", "VK48kKSb": "SpBOMHsX"}, "TokenEndpoint": "eSjNqZnx", "UserInfoEndpoint": "5taMw4YO", "UserInfoHTTPMethod": "j6KtW89o", "scopes": ["CXok38QO", "IMRKs8Tb", "za1cRH47"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'pPnLmpD3' \
    --body '{"affectedClientIDs": ["R8TOKQra", "gCEjQKhe", "0deewKLT"], "assignedNamespaces": ["gAeEvWWv", "iPD2fWZS", "4BvTo3cM"], "domain": "Ke4zXse5", "roleId": "8Zeo409Z"}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'iTt8RMUy' \
    --body '{"domain": "mPnnAXFe"}' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '5v9LJPZe' \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'CJaaqsk1' \
    --body '{"acsUrl": "6Jfy5mLn", "apiKey": "8QZlntPf", "appId": "DcpXvvV2", "federationMetadataUrl": "WPTkvWwO", "isActive": true, "redirectUri": "NJpBjzkc", "secret": "kFcn4pBP", "ssoUrl": "xwQnyx6b"}' \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'XBbN2K9h' \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'qmVH2rJ5' \
    --body '{"acsUrl": "ZimwYOJ1", "apiKey": "U4XG2FRX", "appId": "G3WtaDpf", "federationMetadataUrl": "BjtnG9x2", "isActive": false, "redirectUri": "uSiU6Yes", "secret": "dH2kKqak", "ssoUrl": "0yLyWpVJ"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '6HDaXWg1' \
    --platformUserId 'UIagHR1y' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId '2zMmvkKt' \
    --after '65' \
    --before '26' \
    --limit '0' \
    > test.out 2>&1
eval_tap $? 142 'GetAdminUsersByRoleIdV3' test.out

#- 143 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'GqnVxuIk' \
    > test.out 2>&1
eval_tap $? 143 'AdminGetUserByEmailAddressV3' test.out

#- 144 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["crkP5NUq", "cZKaeSJi", "n5vMhFKE"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["gphRmnXa", "G4NijMSB", "e9jF5lmh"], "isAdmin": true, "namespace": "EvFbxpQk", "roles": ["Iid22Q5H", "nziiaPtG", "PbCXDyps"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '51' \
    --platformUserId 'xl69bYOp' \
    --platformId 'T5a2tsYv' \
    > test.out 2>&1
eval_tap $? 146 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 147 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 147 'AdminListUsersV3' test.out

#- 148 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'onRQ1rsr' \
    --endDate '4ymsVR3p' \
    --limit '83' \
    --offset '42' \
    --platformBy 'hevLwLtQ' \
    --platformId 'BDtpA8ym' \
    --query 'R6CihxTD' \
    --startDate 'P6EdoBUf' \
    > test.out 2>&1
eval_tap $? 148 'AdminSearchUserV3' test.out

#- 149 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["RakRkw8X", "zb0gX82G", "AAdCF59a"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetBulkUserByEmailAddressV3' test.out

#- 150 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xILkErQG' \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByUserIdV3' test.out

#- 151 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'b5yLgN1m' \
    --body '{"avatarUrl": "ro64SmE2", "country": "YIoO2qgu", "dateOfBirth": "92LSm3wU", "displayName": "3GMIKzTR", "languageTag": "UKAXVHa5", "userName": "t0Cahwjd"}' \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserV3' test.out

#- 152 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BkdIZIJA' \
    --activeOnly 'false' \
    --after '0fDfEzuy' \
    --before 'jqO3i2Bu' \
    --limit '90' \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserBanV3' test.out

#- 153 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VNJ7dHDM' \
    --body '{"ban": "P4DHAa1G", "comment": "MKMMhnyW", "endDate": "cFC7Hjke", "reason": "jrn02GIk", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 153 'AdminBanUserV3' test.out

#- 154 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'BpLzf7q9' \
    --namespace $AB_NAMESPACE \
    --userId 'XTaqhjnv' \
    --body '{"enabled": false, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 154 'AdminUpdateUserBanV3' test.out

#- 155 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LF9cBPvZ' \
    --body '{"context": "hQB9bOXA", "emailAddress": "kp0k1enU", "languageTag": "SCVLTS6a"}' \
    > test.out 2>&1
eval_tap $? 155 'AdminSendVerificationCodeV3' test.out

#- 156 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'i0kWhbt3' \
    --body '{"Code": "aXDDh8H1", "ContactType": "bCCzj1BN", "LanguageTag": "epVVn8tz", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 156 'AdminVerifyAccountV3' test.out

#- 157 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'EGdXS2SF' \
    > test.out 2>&1
eval_tap $? 157 'GetUserVerificationCode' test.out

#- 158 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'MPSyyRux' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserDeletionStatusV3' test.out

#- 159 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Nc2WOb0F' \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 159 'AdminUpdateUserDeletionStatusV3' test.out

#- 160 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'z1q2sdYc' \
    --body '{"code": "SA5c6Nf0", "country": "Wb6ns9X7", "dateOfBirth": "pRS963pn", "displayName": "bpBSpHHk", "emailAddress": "2AaNFTt9", "password": "r4c7l1hK", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpgradeHeadlessAccountV3' test.out

#- 161 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'I1PKOy0c' \
    > test.out 2>&1
eval_tap $? 161 'AdminDeleteUserInformationV3' test.out

#- 162 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '2SO4bQzz' \
    --after '0.9716249211346163' \
    --before '0.5555456859131394' \
    --limit '27' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserLoginHistoriesV3' test.out

#- 163 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vQZlHCJq' \
    --body '{"languageTag": "jVpw36YH", "newPassword": "bk7JOUX9", "oldPassword": "VRh40AXY"}' \
    > test.out 2>&1
eval_tap $? 163 'AdminResetPasswordV3' test.out

#- 164 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'n3A5B2Ay' \
    --body '{"Permissions": [{"Action": 18, "Resource": "t4NqwE3R", "SchedAction": 10, "SchedCron": "z6goSSht", "SchedRange": ["oQcroevm", "JSsboOfT", "TOrK59ju"]}, {"Action": 43, "Resource": "rLPqr2G7", "SchedAction": 50, "SchedCron": "e8MemCnc", "SchedRange": ["b1Yjxmlm", "q0XSNdZq", "K4ElyNev"]}, {"Action": 70, "Resource": "JRpbgtMa", "SchedAction": 27, "SchedCron": "EDsx41c8", "SchedRange": ["w58XTFZQ", "QK9qFLRz", "ZiqfaiJb"]}]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserPermissionV3' test.out

#- 165 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rjbHj3cg' \
    --body '{"Permissions": [{"Action": 36, "Resource": "9cYRx5Uf", "SchedAction": 56, "SchedCron": "a8ro8qpY", "SchedRange": ["F9A0XER4", "vV2MgTRA", "Mr1heULQ"]}, {"Action": 97, "Resource": "nlH5hiLw", "SchedAction": 51, "SchedCron": "z6e6lOjN", "SchedRange": ["4IqKhUSR", "4X9e2zqT", "VU00gmfD"]}, {"Action": 45, "Resource": "BCSflU8F", "SchedAction": 2, "SchedCron": "qZfRxFWD", "SchedRange": ["hdWjh5TG", "NogkXCGv", "PSwO2uP1"]}]}' \
    > test.out 2>&1
eval_tap $? 165 'AdminAddUserPermissionsV3' test.out

#- 166 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'btm39P1k' \
    --body '[{"Action": 35, "Resource": "hxdl75Sb"}, {"Action": 76, "Resource": "vwRE22Hf"}, {"Action": 35, "Resource": "SVYxBqJx"}]' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionBulkV3' test.out

#- 167 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '49' \
    --namespace $AB_NAMESPACE \
    --resource '6rJuhSpW' \
    --userId 'sRmDUuYW' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionV3' test.out

#- 168 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EbSluKJq' \
    --after 'FiqAnS3h' \
    --before 'CAtNzWFZ' \
    --limit '51' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserPlatformAccountsV3' test.out

#- 169 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'H8Ky1hn7' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetListJusticePlatformAccounts' test.out

#- 170 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'P5fverC3' \
    --userId 'BYSWiLIV' \
    > test.out 2>&1
eval_tap $? 170 'AdminGetUserMapping' test.out

#- 171 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'ORKMiSM5' \
    --userId 'eVrJhCPg' \
    > test.out 2>&1
eval_tap $? 171 'AdminCreateJusticeUser' test.out

#- 172 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '2MkJERJY' \
    --body '{"platformId": "JnabWR7w", "platformUserId": "YZG9WbtH"}' \
    > test.out 2>&1
eval_tap $? 172 'AdminLinkPlatformAccount' test.out

#- 173 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '0b8gjLs2' \
    --userId 'MVUZCkPm' \
    --body '{"platformNamespace": "yPP4GGXj"}' \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformUnlinkV3' test.out

#- 174 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'GsKRJHOy' \
    --userId 'HpJOwxyM' \
    --ticket 'wDdlcBV5' \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformLinkV3' test.out

#- 175 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'LnUdnCOm' \
    --userId '8Zt7u4Ht' \
    --platformToken 'ecHX5ZO7' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 176 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId '9PSp3rIz' \
    --body '["ebTxXuvf", "mLXGhMai", "OjCRpvyf"]' \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserRolesV3' test.out

#- 177 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'IXmCXdlg' \
    --body '[{"namespace": "cn9zcBVR", "roleId": "WHn8sDaB"}, {"namespace": "M2yigicU", "roleId": "BFUmQPhL"}, {"namespace": "Fhb3mag8", "roleId": "EgtBh8g8"}]' \
    > test.out 2>&1
eval_tap $? 177 'AdminSaveUserRoleV3' test.out

#- 178 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'p99KjfQL' \
    --userId 'KlYP1IJZ' \
    > test.out 2>&1
eval_tap $? 178 'AdminAddUserRoleV3' test.out

#- 179 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'CnK7hhSP' \
    --userId 'npWu2k8a' \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteUserRoleV3' test.out

#- 180 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YLenUW4H' \
    --body '{"enabled": false, "reason": "9T3C47Mk"}' \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateUserStatusV3' test.out

#- 181 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId '8Svz8fiC' \
    > test.out 2>&1
eval_tap $? 181 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 182 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'QAst4G03' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "7MzM1L4X"}' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateClientSecretV3' test.out

#- 183 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'iFcxGHoU' \
    --before 'YkAeTop1' \
    --isWildcard 'true' \
    --limit '55' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRolesV3' test.out

#- 184 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "b8cxoiUS", "namespace": "5aZwc1c4", "userId": "8ZbAsOiR"}, {"displayName": "jz7UxFL2", "namespace": "5TM5HhpA", "userId": "9M8nztW3"}, {"displayName": "nv470Bvo", "namespace": "HYF6fvOd", "userId": "OXlbKUAF"}], "members": [{"displayName": "AwNGAGIo", "namespace": "OoyO0Vh1", "userId": "KiIYX6qs"}, {"displayName": "yuuzXP5w", "namespace": "wjCcLeuO", "userId": "NRJFnd0C"}, {"displayName": "8ELz9Dju", "namespace": "tjt7mVXQ", "userId": "uU27aUya"}], "permissions": [{"action": 21, "resource": "QsdNELCK", "schedAction": 94, "schedCron": "BrcFHJDt", "schedRange": ["rd2UjVAH", "75QtskaI", "7pVI7o5o"]}, {"action": 47, "resource": "w0Eqn4Xc", "schedAction": 23, "schedCron": "tqSCFLJ8", "schedRange": ["WBzpJff9", "Ja0YlhuJ", "qaCPGnZC"]}, {"action": 36, "resource": "tjjphH9c", "schedAction": 60, "schedCron": "KusGHhFc", "schedRange": ["NKT9pYbQ", "c4GXckPh", "SMhgLYGM"]}], "roleName": "foMpSHFD"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminCreateRoleV3' test.out

#- 185 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId '9M09JWwM' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleV3' test.out

#- 186 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId '0yXbUIWS' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteRoleV3' test.out

#- 187 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'lPhxjuMZ' \
    --body '{"deletable": false, "isWildcard": false, "roleName": "uAkeckML"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateRoleV3' test.out

#- 188 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'o6ocPiVC' \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleAdminStatusV3' test.out

#- 189 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'uWVD0Usw' \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateAdminRoleStatusV3' test.out

#- 190 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'InBfwzpK' \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleAdminV3' test.out

#- 191 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'b772xalH' \
    --after 'ITKbIspY' \
    --before 'Z0Y9vpT0' \
    --limit '100' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRoleManagersV3' test.out

#- 192 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'r8vaZasx' \
    --body '{"managers": [{"displayName": "ttESyQ6D", "namespace": "sDdZdeBT", "userId": "EhkuukMB"}, {"displayName": "b6jA8BbK", "namespace": "j7xPhJOi", "userId": "4cLvDkeQ"}, {"displayName": "1hDVe2cq", "namespace": "I1lOV3dN", "userId": "Ne21OkYj"}]}' \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRoleManagersV3' test.out

#- 193 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId '03EGx3AG' \
    --body '{"managers": [{"displayName": "xj71K77h", "namespace": "KaEjnjiC", "userId": "bvuCbxXv"}, {"displayName": "k9kFiMdE", "namespace": "JMmrACf7", "userId": "E9U9LbJU"}, {"displayName": "nPRnFqmz", "namespace": "G7eronIV", "userId": "bpxpaKwE"}]}' \
    > test.out 2>&1
eval_tap $? 193 'AdminRemoveRoleManagersV3' test.out

#- 194 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'nuKIjYQd' \
    --after 'u6zjVEoC' \
    --before 's5aC3Wsd' \
    --limit '50' \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleMembersV3' test.out

#- 195 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'epGsLuXc' \
    --body '{"members": [{"displayName": "RJOmMk0T", "namespace": "c4qLQXlu", "userId": "UPKB14KS"}, {"displayName": "RskZt6E1", "namespace": "vS1Ezr02", "userId": "QgAlSs1z"}, {"displayName": "0oDUm1T7", "namespace": "3tudJZyZ", "userId": "1ylCjY0J"}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddRoleMembersV3' test.out

#- 196 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'MKe2czY7' \
    --body '{"members": [{"displayName": "5KklbeEi", "namespace": "9rA83x7O", "userId": "TMI4Uk8H"}, {"displayName": "vNyr5Wl8", "namespace": "dduFVzBV", "userId": "H8FmFTxm"}, {"displayName": "w15ACcs0", "namespace": "jjH2qN7D", "userId": "UMlP0TQs"}]}' \
    > test.out 2>&1
eval_tap $? 196 'AdminRemoveRoleMembersV3' test.out

#- 197 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'bozti2pl' \
    --body '{"permissions": [{"action": 32, "resource": "8WruUUgZ", "schedAction": 44, "schedCron": "ShHk5o3J", "schedRange": ["PIYW3thR", "0p5EurU3", "dftBjdV8"]}, {"action": 75, "resource": "X5n1GdIp", "schedAction": 10, "schedCron": "lSCEQJUY", "schedRange": ["k5Lf97a2", "Q89usqlG", "7tXJjrJ6"]}, {"action": 18, "resource": "ODIdgqub", "schedAction": 62, "schedCron": "Fsfdhp0S", "schedRange": ["MVYcgxxw", "X4lfxFgO", "DqtHW1Oq"]}]}' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateRolePermissionsV3' test.out

#- 198 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'm7LlrJXq' \
    --body '{"permissions": [{"action": 67, "resource": "4F3afxpe", "schedAction": 9, "schedCron": "jI2CP2FK", "schedRange": ["BJu8DiKf", "1XNgBLfW", "DKK5VNFR"]}, {"action": 82, "resource": "sV5NGv5Y", "schedAction": 82, "schedCron": "KlVVo9pf", "schedRange": ["V7tGpqwy", "XSjN0buT", "Q252s5pg"]}, {"action": 41, "resource": "w7kQXpkx", "schedAction": 3, "schedCron": "ViNnuudp", "schedRange": ["nghrQJ9u", "0FV2wZQ0", "p9dCWyYa"]}]}' \
    > test.out 2>&1
eval_tap $? 198 'AdminAddRolePermissionsV3' test.out

#- 199 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'Zi8NhhaT' \
    --body '["1fNN4hvR", "MI5nt2hh", "fSfvgMpf"]' \
    > test.out 2>&1
eval_tap $? 199 'AdminDeleteRolePermissionsV3' test.out

#- 200 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '10' \
    --resource 'hauWdx6Z' \
    --roleId 'mLuX621Z' \
    > test.out 2>&1
eval_tap $? 200 'AdminDeleteRolePermissionV3' test.out

#- 201 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 201 'AdminGetMyUserV3' test.out

#- 202 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'RC5dSkbC' \
    --extendExp 'false' \
    --redirectUri 'TmoLYOTx' \
    --password 'g0UsxKXB' \
    --requestId 'RcX7kTGG' \
    --userName 'UkLKpty0' \
    > test.out 2>&1
eval_tap $? 202 'UserAuthenticationV3' test.out

#- 203 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'cyYCoC24' \
    --linkingToken 'AZf8BzcA' \
    --password 'u1kGGogx' \
    --username 'HAJYdIpV' \
    > test.out 2>&1
eval_tap $? 203 'AuthenticationWithPlatformLinkV3' test.out

#- 204 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'false' \
    --linkingToken 'mrYNQ9ol' \
    > test.out 2>&1
eval_tap $? 204 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 205 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'g80J8t8I' \
    > test.out 2>&1
eval_tap $? 205 'RequestOneTimeLinkingCodeV3' test.out

#- 206 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'l9kCxNcN' \
    > test.out 2>&1
eval_tap $? 206 'ValidateOneTimeLinkingCodeV3' test.out

#- 207 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --clientId 'Z5OGxNyR' \
    --oneTimeLinkCode 'TE2P7Dkc' \
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
    --clientId 'FCgvDCSS' \
    > test.out 2>&1
eval_tap $? 210 'RequestGameTokenCodeResponseV3' test.out

#- 211 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'OtJv5Ymu' \
    --userId 'iDFQY9dt' \
    > test.out 2>&1
eval_tap $? 211 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 212 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '0BoBMq6z' \
    > test.out 2>&1
eval_tap $? 212 'RevokeUserV3' test.out

#- 213 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'kLh09Fyj' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'true' \
    --oneTimeLinkCode 'aPzKVMzw' \
    --redirectUri 'TIfNitbs' \
    --scope 'FjGrVOKW' \
    --state 'eynFE7TG' \
    --targetAuthPage 'QRNAomCA' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId '24zueSOt' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 213 'AuthorizeV3' test.out

#- 214 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'ykDztReB' \
    > test.out 2>&1
eval_tap $? 214 'TokenIntrospectionV3' test.out

#- 215 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 215 'GetJWKSV3' test.out

#- 216 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'NkOqHJ3y' \
    --factor 'CfnDi4fR' \
    --mfaToken '0BYMyRGQ' \
    > test.out 2>&1
eval_tap $? 216 'SendMFAAuthenticationCode' test.out

#- 217 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'feNbkQjB' \
    --mfaToken 'yJN1sDz9' \
    > test.out 2>&1
eval_tap $? 217 'Change2faMethod' test.out

#- 218 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'pexymXFf' \
    --factor '49P7guNA' \
    --mfaToken '3XjUyjRC' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 218 'Verify2faCode' test.out

#- 219 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId '0KIIvOub' \
    --userId 'xexuZhv9' \
    > test.out 2>&1
eval_tap $? 219 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'kpujz0kn' \
    --clientId 'otfM1AgP' \
    --redirectUri '9kDAQcEM' \
    --requestId 'dokWfAbn' \
    > test.out 2>&1
eval_tap $? 220 'AuthCodeRequestV3' test.out

#- 221 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'LRHpxMdE' \
    --clientId 'rroiyDLi' \
    --createHeadless 'false' \
    --deviceId 'aXkVRS8Q' \
    --macAddress 'TF50GIIL' \
    --platformToken 'DipWNG8B' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 221 'PlatformTokenGrantV3' test.out

#- 222 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 222 'GetRevocationListV3' test.out

#- 223 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'jj1zRyEf' \
    > test.out 2>&1
eval_tap $? 223 'TokenRevocationV3' test.out

#- 224 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --clientId 'XB746LV5' \
    --code 'VW7N49Te' \
    --codeVerifier 'PDIVPmnx' \
    --extendExp 'false' \
    --password 'hKrQ4kYv' \
    --redirectUri 'LTNgc62s' \
    --refreshToken 'YkKaZ3yX' \
    --username 'Yg7qOxAU' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 224 'TokenGrantV3' test.out

#- 225 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'r5xSJX6i' \
    > test.out 2>&1
eval_tap $? 225 'VerifyTokenV3' test.out

#- 226 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'Vww9HiSY' \
    --code 'y9dGKAWI' \
    --error 'TNqR9XgP' \
    --openidAssocHandle 'HP2H5Q9W' \
    --openidClaimedId 'r8MwuDsx' \
    --openidIdentity 'YK1ypxKa' \
    --openidMode '6zf69LZV' \
    --openidNs 'uKzrO4t7' \
    --openidOpEndpoint '3qF2crDA' \
    --openidResponseNonce 'zwkNYXq7' \
    --openidReturnTo 'YXVhTD6Q' \
    --openidSig 'kT0yvmGH' \
    --openidSigned 'Exv4rVva' \
    --state '2uZt3rFU' \
    > test.out 2>&1
eval_tap $? 226 'PlatformAuthenticationV3' test.out

#- 227 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode '0BZQPaNA' \
    > test.out 2>&1
eval_tap $? 227 'PublicGetInputValidations' test.out

#- 228 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'KY75batv' \
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
    --clientId 'MRHsFrRG' \
    > test.out 2>&1
eval_tap $? 230 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 231 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId '0zzmwjAU' \
    --body '{"platformUserIds": ["a2kR9vsL", "2NKV9NdF", "ALxTF6q2"]}' \
    > test.out 2>&1
eval_tap $? 231 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 232 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'PtQRCWy3' \
    --platformUserId 'yOcI9xMG' \
    > test.out 2>&1
eval_tap $? 232 'PublicGetUserByPlatformUserIDV3' test.out

#- 233 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'nbm8FnVb' \
    > test.out 2>&1
eval_tap $? 233 'PublicGetAsyncStatus' test.out

#- 234 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'uQSDvTg1' \
    --limit '9' \
    --offset '37' \
    --query 'wmDNZNbk' \
    > test.out 2>&1
eval_tap $? 234 'PublicSearchUserV3' test.out

#- 235 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "v2Jxf3un", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "ZpPPtW1g", "policyId": "60pPVkoK", "policyVersionId": "cB9v2YiC"}, {"isAccepted": true, "localizedPolicyVersionId": "NXGBjAZp", "policyId": "gbs10FgN", "policyVersionId": "pmwiLoXZ"}, {"isAccepted": false, "localizedPolicyVersionId": "02Gn2qf1", "policyId": "lyoDARHv", "policyVersionId": "JhkDdxON"}], "authType": "S4hZVX2c", "code": "LClnDcg4", "country": "dBw0Pxyj", "dateOfBirth": "VhXRp9u3", "displayName": "IkLlvPKn", "emailAddress": "Jr8MWaGF", "password": "LetHMUes", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 235 'PublicCreateUserV3' test.out

#- 236 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'IggCxWIv' \
    --query 'vUe92Rfp' \
    > test.out 2>&1
eval_tap $? 236 'CheckUserAvailability' test.out

#- 237 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["BXMkzLCz", "MyCYlh6q", "z9Gphab7"]}' \
    > test.out 2>&1
eval_tap $? 237 'PublicBulkGetUsers' test.out

#- 238 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "aBHwthvK", "languageTag": "FgrgXM4p"}' \
    > test.out 2>&1
eval_tap $? 238 'PublicSendRegistrationCode' test.out

#- 239 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "f89t6s3n", "emailAddress": "Y8Q3ZwKk"}' \
    > test.out 2>&1
eval_tap $? 239 'PublicVerifyRegistrationCode' test.out

#- 240 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "ovbiilko", "languageTag": "p7LWsiZn"}' \
    > test.out 2>&1
eval_tap $? 240 'PublicForgotPasswordV3' test.out

#- 241 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'Qrkk1VSP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 241 'GetAdminInvitationV3' test.out

#- 242 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'ZwpbsLDT' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "2str9wK8", "policyId": "MyJNTgkL", "policyVersionId": "RwJKASzB"}, {"isAccepted": false, "localizedPolicyVersionId": "VBqtlA05", "policyId": "Oh0pZJfI", "policyVersionId": "jbPDMWvs"}, {"isAccepted": true, "localizedPolicyVersionId": "BYUBJgqX", "policyId": "aAcls0q5", "policyVersionId": "oJrLbMmB"}], "authType": "EMAILPASSWD", "country": "9ab1reQU", "dateOfBirth": "uJxi3PT4", "displayName": "7hgZRuI9", "password": "5WvruuRd", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 242 'CreateUserFromInvitationV3' test.out

#- 243 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "RN9J0caZ", "country": "6TyE6Fdy", "dateOfBirth": "BqOKv7VR", "displayName": "gUSHxTno", "languageTag": "q5OuoXTZ", "userName": "FVVL1L4w"}' \
    > test.out 2>&1
eval_tap $? 243 'UpdateUserV3' test.out

#- 244 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "M6esTQuX", "country": "c9hi4VQI", "dateOfBirth": "GmioPj3r", "displayName": "zqarobQs", "languageTag": "UN0ucEb6", "userName": "ujexmngO"}' \
    > test.out 2>&1
eval_tap $? 244 'PublicPartialUpdateUserV3' test.out

#- 245 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "7Zzszp1U", "emailAddress": "DtP797sM", "languageTag": "O5vbsawI"}' \
    > test.out 2>&1
eval_tap $? 245 'PublicSendVerificationCodeV3' test.out

#- 246 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "8HW29fiL", "contactType": "2hPaWdnl", "languageTag": "odmUHi84", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 246 'PublicUserVerificationV3' test.out

#- 247 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ExyzCx8b", "country": "YGDVG4oJ", "dateOfBirth": "XAcVLZPh", "displayName": "I2rYGueT", "emailAddress": "qb0gVHs4", "password": "r4GCJr6f", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 247 'PublicUpgradeHeadlessAccountV3' test.out

#- 248 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "mgDITy4p", "password": "X7hTB5n0"}' \
    > test.out 2>&1
eval_tap $? 248 'PublicVerifyHeadlessAccountV3' test.out

#- 249 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "JTIQx8Vb", "newPassword": "4DAcJrjI", "oldPassword": "290cEl0q"}' \
    > test.out 2>&1
eval_tap $? 249 'PublicUpdatePasswordV3' test.out

#- 250 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'WJukh10R' \
    > test.out 2>&1
eval_tap $? 250 'PublicCreateJusticeUser' test.out

#- 251 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'y64hMuPg' \
    --redirectUri 'ya5O4iJt' \
    --ticket 'jA7GcPtB' \
    > test.out 2>&1
eval_tap $? 251 'PublicPlatformLinkV3' test.out

#- 252 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'UabdQIpV' \
    --body '{"platformNamespace": "6EXflzos"}' \
    > test.out 2>&1
eval_tap $? 252 'PublicPlatformUnlinkV3' test.out

#- 253 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'KQrWZJjP' \
    > test.out 2>&1
eval_tap $? 253 'PublicPlatformUnlinkAllV3' test.out

#- 254 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '2mhzFjq6' \
    --ticket 'xJ9pGehD' \
    > test.out 2>&1
eval_tap $? 254 'PublicForcePlatformLinkV3' test.out

#- 255 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'Ppxq03ie' \
    --clientId 'l8u4QZM3' \
    --redirectUri 'B83qYaaG' \
    > test.out 2>&1
eval_tap $? 255 'PublicWebLinkPlatform' test.out

#- 256 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'mi049SFL' \
    --state 'kqnnITUI' \
    > test.out 2>&1
eval_tap $? 256 'PublicWebLinkPlatformEstablish' test.out

#- 257 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "6ULvkBwQ", "emailAddress": "OM96ijpP", "newPassword": "eORFbAV3"}' \
    > test.out 2>&1
eval_tap $? 257 'ResetPasswordV3' test.out

#- 258 PublicGetUserByUserIdV3
eval_tap 0 258 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 259 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'b20WFNmk' \
    --activeOnly 'true' \
    --after 'vYkMOwWS' \
    --before 'af6wQj3p' \
    --limit '57' \
    > test.out 2>&1
eval_tap $? 259 'PublicGetUserBanHistoryV3' test.out

#- 260 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NbuHPKqB' \
    > test.out 2>&1
eval_tap $? 260 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 261 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'IUTPd8Fg' \
    > test.out 2>&1
eval_tap $? 261 'PublicGetUserInformationV3' test.out

#- 262 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tAVaXfKG' \
    --after '0.9898245156490442' \
    --before '0.7063842080180824' \
    --limit '13' \
    > test.out 2>&1
eval_tap $? 262 'PublicGetUserLoginHistoriesV3' test.out

#- 263 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'AOS2WtSJ' \
    --after 'vfGSKPY7' \
    --before 'c3n8lcDg' \
    --limit '35' \
    > test.out 2>&1
eval_tap $? 263 'PublicGetUserPlatformAccountsV3' test.out

#- 264 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'KuNZlpQz' \
    > test.out 2>&1
eval_tap $? 264 'PublicListJusticePlatformAccountsV3' test.out

#- 265 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'pDOGpjZf' \
    --body '{"platformId": "QjR3QhB4", "platformUserId": "lKf9WvTg"}' \
    > test.out 2>&1
eval_tap $? 265 'PublicLinkPlatformAccount' test.out

#- 266 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'SdH3IYS8' \
    --body '{"chosenNamespaces": ["6JFcwicC", "1QE7CB1v", "VTTlsf70"], "requestId": "knN7PtDH"}' \
    > test.out 2>&1
eval_tap $? 266 'PublicForceLinkPlatformWithProgression' test.out

#- 267 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'u069ZGXo' \
    > test.out 2>&1
eval_tap $? 267 'PublicGetPublisherUserV3' test.out

#- 268 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'b3bZfdaC' \
    --password '2UL0oUw4' \
    > test.out 2>&1
eval_tap $? 268 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 269 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'mmQD46Ur' \
    --before 'bT0bMRni' \
    --isWildcard 'true' \
    --limit '96' \
    > test.out 2>&1
eval_tap $? 269 'PublicGetRolesV3' test.out

#- 270 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'JBWEGOei' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetRoleV3' test.out

#- 271 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 271 'PublicGetMyUserV3' test.out

#- 272 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'NdWAFLo5' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 273 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["5yek57ei", "f1FOz8Dh", "tEgYetGr"], "oneTimeLinkCode": "5tGyEMiI"}' \
    > test.out 2>&1
eval_tap $? 273 'LinkHeadlessAccountToMyAccountV3' test.out

#- 274 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "naohNKPP"}' \
    > test.out 2>&1
eval_tap $? 274 'PublicSendVerificationLinkV3' test.out

#- 275 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code '8snKqrQn' \
    > test.out 2>&1
eval_tap $? 275 'PublicVerifyUserByLinkV3' test.out

#- 276 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'eabXEZu0' \
    --code 'Mcclzxhd' \
    --error 'uUrRcIGU' \
    --state '4lm1US1g' \
    > test.out 2>&1
eval_tap $? 276 'PlatformAuthenticateSAMLV3Handler' test.out

#- 277 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'ydE26RvF' \
    --payload 'KiWYnq32' \
    > test.out 2>&1
eval_tap $? 277 'LoginSSOClient' test.out

#- 278 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'Ql0goCfc' \
    > test.out 2>&1
eval_tap $? 278 'LogoutSSOClient' test.out

#- 279 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --code 'nElScOeZ' \
    > test.out 2>&1
eval_tap $? 279 'RequestGameTokenResponseV3' test.out

#- 280 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'hMpCoITa' \
    > test.out 2>&1
eval_tap $? 280 'AdminGetDevicesByUserV4' test.out

#- 281 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'fkXzkEC5' \
    --endDate 'Uxi8Sp0i' \
    --limit '81' \
    --offset '38' \
    --startDate 'Xyr0Z6DU' \
    > test.out 2>&1
eval_tap $? 281 'AdminGetBannedDevicesV4' test.out

#- 282 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId '1Sx5iIrx' \
    > test.out 2>&1
eval_tap $? 282 'AdminGetUserDeviceBansV4' test.out

#- 283 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "L9SHym3i", "deviceId": "8gASGtcQ", "deviceType": "P0tUnQoc", "enabled": true, "endDate": "UD1rwHPn", "ext": {"6lP8s1eD": {}, "2FODVdeu": {}, "GW4nvNxa": {}}, "reason": "QGryrEyW"}' \
    > test.out 2>&1
eval_tap $? 283 'AdminBanDeviceV4' test.out

#- 284 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'UIIN1aYG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 284 'AdminGetDeviceBanV4' test.out

#- 285 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'fAc8wg4h' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 285 'AdminUpdateDeviceBanV4' test.out

#- 286 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'Z4o4J4yi' \
    --startDate 'DTLbHMDL' \
    --deviceType 'f5eMAYOP' \
    > test.out 2>&1
eval_tap $? 286 'AdminGenerateReportV4' test.out

#- 287 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 287 'AdminGetDeviceTypesV4' test.out

#- 288 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId '88CBzg1K' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 288 'AdminGetDeviceBansV4' test.out

#- 289 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'zHUJWLjO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 289 'AdminDecryptDeviceV4' test.out

#- 290 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'rJMhmtSD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'AdminUnbanDeviceV4' test.out

#- 291 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'EvfCGnT3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 291 'AdminGetUsersByDeviceV4' test.out

#- 292 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 85}' \
    > test.out 2>&1
eval_tap $? 292 'AdminCreateTestUsersV4' test.out

#- 293 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Hd3IxALh", "t0Y7niKR", "LMg8vtJ4"]}' \
    > test.out 2>&1
eval_tap $? 293 'AdminBulkCheckValidUserIDV4' test.out

#- 294 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'WeMEGF9W' \
    --body '{"avatarUrl": "7yfVmyk4", "country": "MBFzpG3p", "dateOfBirth": "qon8B9dz", "displayName": "Wl8CCfyW", "languageTag": "5qr4V8vY", "userName": "yAk92rA2"}' \
    > test.out 2>&1
eval_tap $? 294 'AdminUpdateUserV4' test.out

#- 295 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'c9mE0Qyk' \
    --body '{"code": "64vsTE3L", "emailAddress": "Hidrl04E"}' \
    > test.out 2>&1
eval_tap $? 295 'AdminUpdateUserEmailAddressV4' test.out

#- 296 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Vuj4W6Fj' \
    > test.out 2>&1
eval_tap $? 296 'AdminDisableUserMFAV4' test.out

#- 297 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'lO5jPeIP' \
    > test.out 2>&1
eval_tap $? 297 'AdminListUserRolesV4' test.out

#- 298 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'unoH9NPo' \
    --body '{"assignedNamespaces": ["gxS8efcs", "ihyRJYuP", "5K6UHhKX"], "roleId": "Z2QQuVZt"}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateUserRoleV4' test.out

#- 299 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'yxcwfQjW' \
    --body '{"assignedNamespaces": ["CNEyKG7I", "J34Erc5x", "CZk6fAUS"], "roleId": "k72Me2iI"}' \
    > test.out 2>&1
eval_tap $? 299 'AdminAddUserRoleV4' test.out

#- 300 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'x1oGt3HC' \
    --body '{"assignedNamespaces": ["std0qpkU", "15Lhswuo", "hCQUeq26"], "roleId": "pnF5g1Y6"}' \
    > test.out 2>&1
eval_tap $? 300 'AdminRemoveUserRoleV4' test.out

#- 301 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'true' \
    --limit '13' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 301 'AdminGetRolesV4' test.out

#- 302 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "5f8TnqTh"}' \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateRoleV4' test.out

#- 303 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId '7jVZ6hA7' \
    > test.out 2>&1
eval_tap $? 303 'AdminGetRoleV4' test.out

#- 304 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'TUiPqCRz' \
    > test.out 2>&1
eval_tap $? 304 'AdminDeleteRoleV4' test.out

#- 305 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'aPFSoKBU' \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "PsOXLVV7"}' \
    > test.out 2>&1
eval_tap $? 305 'AdminUpdateRoleV4' test.out

#- 306 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'pTX2AQMO' \
    --body '{"permissions": [{"action": 23, "resource": "NSbxXZO3", "schedAction": 4, "schedCron": "chAHRgIX", "schedRange": ["97PB8x8K", "a10U3J69", "4SghEMPb"]}, {"action": 69, "resource": "GpyYH1Yc", "schedAction": 13, "schedCron": "FPhUMzWA", "schedRange": ["g3DzwEgl", "rWKUL2Tq", "TXKISGKk"]}, {"action": 50, "resource": "ZFIM0AYd", "schedAction": 90, "schedCron": "cjDNepkv", "schedRange": ["ZduV9wkR", "IrBLj3wc", "P87YRAGn"]}]}' \
    > test.out 2>&1
eval_tap $? 306 'AdminUpdateRolePermissionsV4' test.out

#- 307 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'vLkaLzri' \
    --body '{"permissions": [{"action": 95, "resource": "3GadOvko", "schedAction": 27, "schedCron": "7Rw5RcMo", "schedRange": ["yCmPIU1y", "kTEx920z", "dZ5c8Hjt"]}, {"action": 8, "resource": "u2jdFgil", "schedAction": 44, "schedCron": "oTnKqHNS", "schedRange": ["9vwvEI5Y", "Z95DjeQZ", "ccktMqdY"]}, {"action": 75, "resource": "WQmYboht", "schedAction": 97, "schedCron": "DWSHQqVQ", "schedRange": ["O4tdFahR", "lLDbgNgB", "GcwHN1IQ"]}]}' \
    > test.out 2>&1
eval_tap $? 307 'AdminAddRolePermissionsV4' test.out

#- 308 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'YzJRCNbF' \
    --body '["hrbbMaGR", "UnAvhY1f", "ylDHdxFk"]' \
    > test.out 2>&1
eval_tap $? 308 'AdminDeleteRolePermissionsV4' test.out

#- 309 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'S9fi6XXr' \
    --after 'rcyuujIC' \
    --before '8zDwAHmf' \
    --limit '15' \
    > test.out 2>&1
eval_tap $? 309 'AdminListAssignedUsersV4' test.out

#- 310 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'KJDb41kj' \
    --body '{"assignedNamespaces": ["6izThFyE", "cdilq4IE", "BbBYCFAM"], "namespace": "XDfWHP1W", "userId": "DwNMRGFD"}' \
    > test.out 2>&1
eval_tap $? 310 'AdminAssignUserToRoleV4' test.out

#- 311 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'CgOenDkm' \
    --body '{"namespace": "F0Vb9B3V", "userId": "IPYFx5wM"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminRevokeUserFromRoleV4' test.out

#- 312 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["7cPiuEur", "HnLciyAI", "MYaP8Kfw"], "emailAddresses": ["uVz6nbKx", "ELSExjFd", "mNlQJmJm"], "isAdmin": false, "namespace": "dXlfRvdr", "roleId": "fbPJTaFy"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminInviteUserNewV4' test.out

#- 313 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "LRubQM9Q", "country": "DMcjV14d", "dateOfBirth": "OWEdCLlW", "displayName": "k58Yc017", "languageTag": "A7QVzhV5", "userName": "c9JIVouU"}' \
    > test.out 2>&1
eval_tap $? 313 'AdminUpdateMyUserV4' test.out

#- 314 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 314 'AdminDisableMyAuthenticatorV4' test.out

#- 315 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'NjpTHFvv' \
    > test.out 2>&1
eval_tap $? 315 'AdminEnableMyAuthenticatorV4' test.out

#- 316 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 316 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 317 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 317 'AdminGetMyBackupCodesV4' test.out

#- 318 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 318 'AdminGenerateMyBackupCodesV4' test.out

#- 319 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 319 'AdminDisableMyBackupCodesV4' test.out

#- 320 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 320 'AdminDownloadMyBackupCodesV4' test.out

#- 321 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 321 'AdminEnableMyBackupCodesV4' test.out

#- 322 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 322 'AdminSendMyMFAEmailCodeV4' test.out

#- 323 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 323 'AdminDisableMyEmailV4' test.out

#- 324 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code '56EJzyXt' \
    > test.out 2>&1
eval_tap $? 324 'AdminEnableMyEmailV4' test.out

#- 325 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 325 'AdminGetMyEnabledFactorsV4' test.out

#- 326 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'CNGPjqxS' \
    > test.out 2>&1
eval_tap $? 326 'AdminMakeFactorMyDefaultV4' test.out

#- 327 AdminInviteUserV4
eval_tap 0 327 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 328 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "rbalzMb9", "policyId": "6WR3XwF3", "policyVersionId": "vB5Ee0mW"}, {"isAccepted": true, "localizedPolicyVersionId": "Of6L3jdy", "policyId": "BXrJChqZ", "policyVersionId": "TRFSLkjZ"}, {"isAccepted": true, "localizedPolicyVersionId": "Eh9wYYfE", "policyId": "JAobHkYd", "policyVersionId": "neFNPWE4"}], "authType": "EMAILPASSWD", "country": "EQecJadu", "dateOfBirth": "arRgEmqa", "displayName": "6GCGODOe", "emailAddress": "RbF21D6u", "password": "oQ0hYTeA", "passwordMD5Sum": "8VfGLeFi", "username": "Bp7LEC6S", "verified": false}' \
    > test.out 2>&1
eval_tap $? 328 'PublicCreateTestUserV4' test.out

#- 329 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "ksHvAWeE", "policyId": "GtkDFB2G", "policyVersionId": "WhG0XkFb"}, {"isAccepted": false, "localizedPolicyVersionId": "YBmjbMD4", "policyId": "I8CxqmlL", "policyVersionId": "XHWNUQAK"}, {"isAccepted": true, "localizedPolicyVersionId": "chaiPtkd", "policyId": "XlsZzYvM", "policyVersionId": "bTBQ1Zj6"}], "authType": "EMAILPASSWD", "code": "gIXhtsIG", "country": "wPB2I8rS", "dateOfBirth": "1ymDPRYb", "displayName": "YCUuS8Gy", "emailAddress": "YUAkSNQt", "password": "GyHvaIoF", "passwordMD5Sum": "lkNxRF37", "reachMinimumAge": false, "username": "aqHLApQD"}' \
    > test.out 2>&1
eval_tap $? 329 'PublicCreateUserV4' test.out

#- 330 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId '5hQ7ZEAM' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "xhDdn3xz", "policyId": "Rt50r0Pa", "policyVersionId": "fFc61ANW"}, {"isAccepted": true, "localizedPolicyVersionId": "1RFeFyiN", "policyId": "bEtBhYHH", "policyVersionId": "NgTO4VlU"}, {"isAccepted": false, "localizedPolicyVersionId": "hM0rTA64", "policyId": "RurZwmXI", "policyVersionId": "xk1AdXHr"}], "authType": "EMAILPASSWD", "country": "OOGIc1fj", "dateOfBirth": "flbTWpL4", "displayName": "NDlKI99v", "password": "T5xVZRWM", "reachMinimumAge": false, "username": "H0ffsCSZ"}' \
    > test.out 2>&1
eval_tap $? 330 'CreateUserFromInvitationV4' test.out

#- 331 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "FgBQf1ot", "country": "7SkbdsY0", "dateOfBirth": "zdVDdBzO", "displayName": "AEGKhCsH", "languageTag": "HGRXXqT7", "userName": "6kbzf4Qf"}' \
    > test.out 2>&1
eval_tap $? 331 'PublicUpdateUserV4' test.out

#- 332 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "a1pEAKsa", "emailAddress": "8MkA9zw7"}' \
    > test.out 2>&1
eval_tap $? 332 'PublicUpdateUserEmailAddressV4' test.out

#- 333 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "jWTsyvNw", "country": "LuIV464w", "dateOfBirth": "9OZoYewz", "displayName": "G6Qo5Cch", "emailAddress": "7LWrp5JW", "password": "yjvpnPX6", "reachMinimumAge": false, "username": "HKjsD6fQ", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 333 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 334 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "oeNMV43h", "password": "gmIdrvU9", "username": "BNuOO97z"}' \
    > test.out 2>&1
eval_tap $? 334 'PublicUpgradeHeadlessAccountV4' test.out

#- 335 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 335 'PublicDisableMyAuthenticatorV4' test.out

#- 336 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code '7AHOitxq' \
    > test.out 2>&1
eval_tap $? 336 'PublicEnableMyAuthenticatorV4' test.out

#- 337 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 337 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 338 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 338 'PublicGetMyBackupCodesV4' test.out

#- 339 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 339 'PublicGenerateMyBackupCodesV4' test.out

#- 340 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 340 'PublicDisableMyBackupCodesV4' test.out

#- 341 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 341 'PublicDownloadMyBackupCodesV4' test.out

#- 342 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'PublicEnableMyBackupCodesV4' test.out

#- 343 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 343 'PublicRemoveTrustedDeviceV4' test.out

#- 344 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 344 'PublicSendMyMFAEmailCodeV4' test.out

#- 345 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 345 'PublicDisableMyEmailV4' test.out

#- 346 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'ZX5p79OK' \
    > test.out 2>&1
eval_tap $? 346 'PublicEnableMyEmailV4' test.out

#- 347 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 347 'PublicGetMyEnabledFactorsV4' test.out

#- 348 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'Aw9Zo5EV' \
    > test.out 2>&1
eval_tap $? 348 'PublicMakeFactorMyDefaultV4' test.out

#- 349 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"emailAddress": "wudA6exC", "namespace": "7HjUE7Qu", "namespaceDisplayName": "qh9MsjYo"}' \
    > test.out 2>&1
eval_tap $? 349 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE