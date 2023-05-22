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
    --body '[{"field": "2OuZ9VQuFRyEwphc", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "blockedWord": ["sAz4GsKVaQeuHXju", "46SyQjUkCECVoGgH", "tuCi7KRzCnuVUP1v"], "description": [{"language": "KQz1aRTDhgZs6P6w", "message": ["Y6c6c7LdbFtD4n3m", "LunxFDwFv5MTzfb5", "EN1rTgC4RYG0tnOF"]}, {"language": "vWQqKLji8BijySjV", "message": ["hxP8MXsb5bIwPhSv", "PPBkp4Bk2TFjwuCx", "0PrKtAdWQRkjzoVz"]}, {"language": "2OKooC6gPqOBaXxR", "message": ["vzfmRsocwOMmiAIT", "kIiEaIaJwuFaelxF", "RIXUaiFepYi1V26d"]}], "isCustomRegex": false, "letterCase": "jhd76Pa4CeYMOx3R", "maxLength": 25, "maxRepeatingAlphaNum": 54, "maxRepeatingSpecialCharacter": 3, "minCharType": 52, "minLength": 7, "regex": "jWFDugeTfrMv1nRO", "specialCharacterLocation": "EwWl7k02ZSREDzc4", "specialCharacters": ["xfI6YICejyfHsvtI", "lAF8XAmKJGdxl9mS", "ZgB53kSwn8QRTACT"]}}, {"field": "yUisxRNfuVzpiih3", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "blockedWord": ["laeZlSmyxKHTGPGa", "siYxVcHoPCWK6gaD", "mbnnGqAebUjiSkfZ"], "description": [{"language": "AoBi5VAge1C5Kujc", "message": ["086oI8cMhOVhemPi", "2ODsHC1ZGcckA7r8", "MO9SI9o9QN8Pbpfq"]}, {"language": "k61ZnUlZoyOOd0gJ", "message": ["OPq0igyWkIDN0pKK", "XOtHBoRWkEsyYI00", "MPRoBCPVlZRve12y"]}, {"language": "mpc9MZk6po1QkbgD", "message": ["FdNO3zqu5FlaIvCN", "kZzqPbIBDxcL2IaO", "bMN0jgmVMilvSssY"]}], "isCustomRegex": true, "letterCase": "jb0pJjoxtfRdbSx0", "maxLength": 3, "maxRepeatingAlphaNum": 31, "maxRepeatingSpecialCharacter": 4, "minCharType": 33, "minLength": 39, "regex": "m4MTmcuu2Tcpsbgs", "specialCharacterLocation": "1AMK8oBChtqYcVQh", "specialCharacters": ["zDHVEjKuoTDNdUnm", "XSFnndvv5gcO52Z2", "OKExWEcgsdNrKdK4"]}}, {"field": "YyqlwgvWZSWXpFqS", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "blockedWord": ["RW3UiSdiSDmkQsm8", "nbWBfM87rM4ASXex", "J9Ga8JtSva4UzZuP"], "description": [{"language": "SCV5qX1sEu6UBGx7", "message": ["FpijZMG57Inr7pF7", "S5VGOK6xieZ3wQkd", "sGfO2zl6JwG9cYBJ"]}, {"language": "NV8KB4elaNvMEp7b", "message": ["8kBSiAB9ddy9Zwrl", "M1A1bflo7iUTpy6X", "3WoKuRP6rQtvVmfq"]}, {"language": "nru8LiOVl2jDrwls", "message": ["slL7KAaUjRHiOqEl", "KcjDTOM11rXeb75O", "kGCZkXNkxhspxcn7"]}], "isCustomRegex": true, "letterCase": "2zEgk78obaRvfa9r", "maxLength": 71, "maxRepeatingAlphaNum": 51, "maxRepeatingSpecialCharacter": 42, "minCharType": 80, "minLength": 15, "regex": "j47WpwYApqMRsrmC", "specialCharacterLocation": "IcZcWdSPYaPi18Q3", "specialCharacters": ["tAmAtNoaDt6MTc3Q", "n5QtGdEQXKmoiQfy", "uG5dri9eBWf5T69i"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'WBjvZM3MH5uipCQO' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'l7xYQLUtF0mjp9DU' \
    --before '1BSJshMw4teHfRW1' \
    --limit '41' \
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
    --body '{"ageRestriction": 7, "enable": true}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode '7E5zxnX9Eta6V5tA' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 34}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'KVMNZh7BNt7sM0xy' \
    --limit '39' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "P7Gs7elSEfSJcTDV", "comment": "DDOEYkZe44ylh4oW", "endDate": "VWD8EMsC3lNs449i", "reason": "cFqMEji0PaykO9n2", "skipNotif": false, "userIds": ["dNIf1PVMXH29jDgn", "fc0xSC2mVunwjsA1", "cpCiuVwopBuoiVss"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "dctNCNSng8Ibynn0", "userId": "NMFUzH5DsPL5BiK3"}, {"banId": "gOidG5KAT75xMxiv", "userId": "GTNvgXtcFJDowVP9"}, {"banId": "Vq0HnoJEx7cpvNC3", "userId": "ND1x7CDjoAbbh0wo"}]}' \
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
    --clientId 'k4n9XP0IF6ePJ2dL' \
    --clientName 'yxmJINQIkfMIrbrc' \
    --clientType 'LNI8kBHqU2BoUdu4' \
    --limit '90' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["KXL5DwP5JUIuAe9c", "aZsWh71b0RKVU9xI", "gnDL7daZI1lT1QCK"], "baseUri": "rR73RKe7J2uJddYY", "clientId": "ZzJHuZioL244il10", "clientName": "FF38qEFLB0cRATEF", "clientPermissions": [{"action": 0, "resource": "ZQJbBNwzGGRrPOlD", "schedAction": 38, "schedCron": "zaFhKEwENVDlsS1C", "schedRange": ["Ardn35Ts0Er1dBce", "gJV93cfiVxV5DFsu", "6O0q7i8HOoEmXDXX"]}, {"action": 60, "resource": "2S8ouRJUMLj5KFBO", "schedAction": 34, "schedCron": "kO4pARQa4BgSlmCl", "schedRange": ["6jgdt9swmSNRGTRQ", "FxnSBhxPz58ckUnj", "zty0iXF3uxIanFAi"]}, {"action": 37, "resource": "L6skP9l6qAW5UziA", "schedAction": 74, "schedCron": "70qCqlrmMBqN9VBQ", "schedRange": ["b2ClOZgI6ShHljI4", "8krJoM20zDrZvDNe", "Q130NtPUYc3aomPX"]}], "clientPlatform": "C464PyEdIIg2UAF8", "deletable": false, "description": "geITXzu0aV5FZI6U", "namespace": "fScsGSVf4J4JeAdw", "oauthAccessTokenExpiration": 73, "oauthAccessTokenExpirationTimeUnit": "Puq23LsyZz2r3wb9", "oauthClientType": "xpRcBpt2s2UnkEMX", "oauthRefreshTokenExpiration": 81, "oauthRefreshTokenExpirationTimeUnit": "BbQ91oisJUurOiHa", "parentNamespace": "wDuC17SPPJpse4Qf", "redirectUri": "NRx7DmQQWV0X2p3I", "scopes": ["pnQKSDySsdURRhAK", "i26Nc3eneobx7dnr", "n9Fy60tRvjIEvzDv"], "secret": "fQ1x3Z6oQ81FE3U8", "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'Ou30DWDHzTJDnCcw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'GclaXe04uMw9EU1j' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'QC01U2FNRcslpg4s' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["XWm0KqbxvFag2Y9G", "VW5lOwqeLV0X9aX2", "7lSk7ySNnI0MQkD9"], "baseUri": "z74L8MAqJTfZQ4Xf", "clientName": "IeHR8xONI6wvaF2b", "clientPermissions": [{"action": 69, "resource": "M45hUvD3uD60H1er", "schedAction": 23, "schedCron": "5F9xTVdVr7JY0ck1", "schedRange": ["Qz8Hmf9NIiEnayUy", "QmeUEgfpdbQe4zNf", "oZhfrMjwZuV75qGO"]}, {"action": 97, "resource": "f6vII0g0o26CR8Io", "schedAction": 55, "schedCron": "Ex0cllbxO8KYn7Wt", "schedRange": ["KNYdSLFtpouoYWc1", "8RGqgSBURHAyxA8M", "vZWjq7nbyu1AO9wd"]}, {"action": 94, "resource": "ALNeSRCkYSEmCGuI", "schedAction": 15, "schedCron": "EiLxV9D7wPvRguNq", "schedRange": ["AoAa97QL1IL0AKOx", "Xcq5MD9KqBWmFGO9", "xfqn4JDFLfjHVTDS"]}], "clientPlatform": "Zi3N4ti9eTaUgDKb", "deletable": false, "description": "XlA9CzlwAEyZWQNj", "namespace": "SnwDzq8xxZUZc7Ua", "oauthAccessTokenExpiration": 10, "oauthAccessTokenExpirationTimeUnit": "AxIsLeeC5JGtVX59", "oauthRefreshTokenExpiration": 16, "oauthRefreshTokenExpirationTimeUnit": "wgPfgmBushOB1CIg", "redirectUri": "vCqjxTeXUVGlGB5T", "scopes": ["9CwL07fJFfEIkzbV", "8yG2ho6FcAnE3TD1", "NHSkCcTuhrpWvE1P"], "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId '4DrcwBHTZzuizDrC' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 38, "resource": "kOxrepjSocGQF5wI"}, {"action": 87, "resource": "y1WxXek7kinXFZEX"}, {"action": 23, "resource": "oWZDxNbZq0COjh0K"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId '5GIO7K66eWUkD6yC' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 40, "resource": "HG8lqgzpvFoaOm3r"}, {"action": 9, "resource": "d30ruKpl5DfglX9E"}, {"action": 100, "resource": "NVkJXSTlk6Op4NGG"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '20' \
    --clientId 'ASsgwuqOagY64nY2' \
    --namespace $AB_NAMESPACE \
    --resource 'JgqnpYYjrkmHGiDt' \
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
    --limit '35' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 130 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 131 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Oft87P0Q9fTzTlF1' \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Pl8kYF6P0g3fnxvt' \
    --body '{"ACSURL": "7Xy8dr3DGqe1pOgR", "AWSCognitoRegion": "0RdcvkOISS4UtG4a", "AWSCognitoUserPool": "7lfIclfv0uBlcZId", "AllowedClients": ["OXSDbp1Yg01cR7XR", "2m4tbLUsCEdF0J57", "Ez8QDSnXM2kMXv7E"], "AppId": "UBxDsPDiW7pIFR9t", "AuthorizationEndpoint": "shkFfWKZl7N50JYo", "ClientId": "2tsgaCge0il1Z2Pc", "Environment": "g9vjhTybu0othcyB", "FederationMetadataURL": "ZWo6jSQC2zXN41nP", "GenericOauthFlow": false, "IsActive": true, "Issuer": "2HkwbNNyTt5HAmPz", "JWKSEndpoint": "SlRkc8Auk8kHTZLN", "KeyID": "AlsRFuDfiHWos60N", "NetflixCertificates": {"encryptedPrivateKey": "i8N6c3uGpM7GOj3k", "encryptedPrivateKeyName": "pczCLI8GbKfOGntp", "publicCertificate": "3WPl6gefks2x7aZv", "publicCertificateName": "BTaaP1KkLSf1Y4K8", "rootCertificate": "KriHwLVI0Zd6jUHZ", "rootCertificateName": "C3t49987I6ZNqtuc"}, "OrganizationId": "hYDahUIX54VZzGiJ", "PlatformName": "TTJDX1aPGVKfa46e", "RedirectUri": "K6vIIhQYmFrInBum", "RegisteredDomains": [{"affectedClientIDs": ["3dFM1LB6UYogs6Zh", "kKZe869QEvpPdxC4", "4BMzq8HmyrKIzKv3"], "domain": "Dke2sNYBrRl0Vwmr", "namespaces": ["DFnzCKWbfXmzTeRA", "KYZLgh6uXF3Tgt7o", "IUT2h0r2xaV4attj"], "roleId": "AOpniuVH3QvgO5Db"}, {"affectedClientIDs": ["2C7mKUPhkkeNL87A", "m0OWavUKG12atD9C", "0uVAT1FHwc9KOdNc"], "domain": "sCEOpO52XXIxkLzr", "namespaces": ["ULzJl2JstRvjq4XL", "qlax057ylc0hVrtT", "FcLZSmHZL9avqicv"], "roleId": "YS6852yFRPCalQIs"}, {"affectedClientIDs": ["vsTaZjHUSK8ITkJN", "1rMXRtItvovV5Pnq", "oqIyapDyVUTrk2Oj"], "domain": "k5ipyyfc6wKLoUm2", "namespaces": ["JxpCVC2kbJG0K23O", "kssKywG76Wqzss43", "613QalxGCNlfjFvo"], "roleId": "isvvEyrm7zJ7k30q"}], "Secret": "OM6F45lOfuOKOWG5", "TeamID": "9YNNTvEnnkoGuVx4", "TokenAuthenticationType": "PlVRLrZI0AihaNdp", "TokenClaimsMapping": {"OpNOTY3I6beoeNDz": "THl3vO4UBcelazMb", "0T7W3xess0n3UtDJ": "9SLgmaJLHo0LSMfP", "JsoxduxPWJcftlPA": "boacbVL13PDHDoIN"}, "TokenEndpoint": "Wczd6ZWgBMTCBCOU", "UserInfoEndpoint": "OzeprMZpYu7KoCg0", "UserInfoHTTPMethod": "rWFy8l1ho9tCNH9S", "scopes": ["DH0VOytkEAVt3R8P", "LMyuFmhVJj1HK6Be", "LJLQlos59JatAVj4"]}' \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'kb6bl1r9ijAaOT2O' \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '1qYfebN978xcuEQN' \
    --body '{"ACSURL": "ZWXPQTiu7cDaGNem", "AWSCognitoRegion": "mvRP2OLe6bg0NIAk", "AWSCognitoUserPool": "cMGbAnxi4FsbiKhy", "AllowedClients": ["wpCeJmY6dscj171c", "ERpq6ZVnAAYhy9yu", "GM7Y8r6fKjVoSwMr"], "AppId": "QGyo3hYxuVMVfo80", "AuthorizationEndpoint": "YQ5tDE3pSNb8TtGT", "ClientId": "QE6Rg6XXQy7Fnejl", "Environment": "QcGvsUPSg9iid0st", "FederationMetadataURL": "MIyc4VCg6MHT2Omb", "GenericOauthFlow": false, "IsActive": false, "Issuer": "1wVOMLMr8psnR4zt", "JWKSEndpoint": "DUJmG5Jawcy5nbGb", "KeyID": "B8hPY4LqrntZyfrX", "NetflixCertificates": {"encryptedPrivateKey": "dZD4KqteOIp7f7JC", "encryptedPrivateKeyName": "qlSgAdzMOnapLKg4", "publicCertificate": "uSIFBUNkYLpBXHua", "publicCertificateName": "uLBt99spnfaMnQ80", "rootCertificate": "ITKHpFSyceiyUEmz", "rootCertificateName": "wv4ISpobGTorDd19"}, "OrganizationId": "LRVlxSmVmX4BvybQ", "PlatformName": "Qblr6CTArIstGuuH", "RedirectUri": "PwJe7L3GeqxH36KW", "RegisteredDomains": [{"affectedClientIDs": ["471ix9nm3dEWU95L", "QKtTxgeAPYn7XKTF", "ZVHtGvffAffIDbMX"], "domain": "4kUIGvyP2uVivd7M", "namespaces": ["CWTigSudnrR8kMf3", "yPPsQargkbtNeWX8", "BzmPYxsKG95tVMef"], "roleId": "kPy3OcBKvxUGSm1Y"}, {"affectedClientIDs": ["qDNLJen9J4bIWYYe", "XxAqOLdIc9bZwz1s", "p13iVB5wfNLb2GDF"], "domain": "3KNRxKt9gWLgyLA9", "namespaces": ["5SeSat5dZJJvbZRJ", "lFf9NdgwjiarJkhI", "1fhBiaKv1G2bQYBf"], "roleId": "P9XWWK5lARzY7jfu"}, {"affectedClientIDs": ["7AXgNz29bsVMxUuH", "T8KQNVhSMoteQQ5h", "zeApeKKXH3nFSlMW"], "domain": "0WsADCDr6OdpvoQ8", "namespaces": ["5rhI9wnJzRf6q7rq", "miYahaB0OIqYyPCh", "FdW1WI8ybQOrDzFV"], "roleId": "bTavN2xyI3Tngoux"}], "Secret": "5PQU03OPb5xPTQZU", "TeamID": "tvP2DIfVpKkNJr6P", "TokenAuthenticationType": "Qms5ok8vhuVCdILn", "TokenClaimsMapping": {"aZWnv1WQ3c00jgwX": "ndIViW7j4agfI7Cy", "mOeWxPPFZbwoYLd6": "MbbSIDAe3kKgPqb2", "kT1CRTAxPYxfXor0": "RYSn48orsN3Jxizy"}, "TokenEndpoint": "uSNJ0IGY4PMaILsx", "UserInfoEndpoint": "YmOfDNvXQurpQY6a", "UserInfoHTTPMethod": "XVCjH41YUAu9MCqu", "scopes": ["xjhjJnFSztddj8sa", "Fk1lv4AHk0WSymFl", "RpqD7vct9tMOCDPI"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'R9vnZD2oi8UHBm41' \
    --body '{"affectedClientIDs": ["rjoZNf1PbuB2EVHr", "P081Qe5lh0ONITM4", "Pc46LeDf4SeNLPse"], "assignedNamespaces": ["QEvhCFEXcbSYltUp", "x5lmlaN3NeJ9pvom", "MCBHzMsq85EI7dPS"], "domain": "CXMyNNaUo2YICkJ1", "roleId": "L6JRarbTRnty1xu6"}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'UOnJR2Bnv65T8LRF' \
    --body '{"domain": "8SyqaXcMwUNCymoC"}' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'Ud2pACZHBUFkEUYO' \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'EVJRZkYzfdagqBpW' \
    --body '{"acsUrl": "09p1GDUh1ytnAy6Z", "apiKey": "qY5F08UDOTWV4FDM", "appId": "PSdZydx1wJm5FVWv", "federationMetadataUrl": "yYa5VENZco0Pi2XX", "isActive": false, "redirectUri": "kYh3NUepwNUaSQ0W", "secret": "b716ytFMBXcGmfcq", "ssoUrl": "Ldc2hYeXzqRwJGDP"}' \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '89F2IUfgYhi6ESLj' \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'X5TFFhVIN99NZ9BX' \
    --body '{"acsUrl": "gwJOaU4xavxAGCfp", "apiKey": "UfxBjjBTEDxIHrjc", "appId": "sduylWkujX89B42T", "federationMetadataUrl": "SZfq6QNb9Lq4zOJO", "isActive": true, "redirectUri": "9xEhjmDrBTU3NrR1", "secret": "VPW0WgoiShFQrlE2", "ssoUrl": "i8FiKwGdufqPGvYP"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'F7Nb1EfoTOXEeeA9' \
    --platformUserId 'j2rwOoKfegLzRZXV' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'RdAy4WPZHcCRs5ks' \
    --after '0' \
    --before '40' \
    --limit '26' \
    > test.out 2>&1
eval_tap $? 142 'GetAdminUsersByRoleIdV3' test.out

#- 143 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'NWrGzkkiHxT43FMW' \
    > test.out 2>&1
eval_tap $? 143 'AdminGetUserByEmailAddressV3' test.out

#- 144 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["CfrXppIdEt3inNRj", "DO4ciDBW1wIsw7Ps", "6D4bVxrtoraHTB1G"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["rQPukkjRYTLPHknf", "6WxD83sIzW4ekr2L", "9dHhhg9DAeVrzC7i"], "isAdmin": true, "namespace": "RhZagveZMfsITAQj", "roles": ["KN71552ADJiylYOz", "YTMBeW1OPDgbWPGQ", "zdsjUtZLQLzdXOTu"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '45' \
    --platformUserId 'KP4AnwYSY1Hraef9' \
    --platformId 'erMOaDpvGA7RxdOW' \
    > test.out 2>&1
eval_tap $? 146 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 147 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 147 'AdminListUsersV3' test.out

#- 148 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'RsjZyml269hYJ2PO' \
    --endDate 'qqHzXgI0NlMHWmop' \
    --limit '79' \
    --offset '44' \
    --platformBy 'NjawsOiuqSDVf1ja' \
    --platformId 'SHyrC1PekF92lHXj' \
    --query 'pYaF535vOCm7VozT' \
    --startDate 'JsnrG6LhKvjCtgJO' \
    > test.out 2>&1
eval_tap $? 148 'AdminSearchUserV3' test.out

#- 149 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["VR5EiHgj5rbor8pL", "Kugu4DojOWVXClFa", "mmZ51jTmNm2cjxJk"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetBulkUserByEmailAddressV3' test.out

#- 150 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mtRqi7bVG4Az2nx3' \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByUserIdV3' test.out

#- 151 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PHaYwE9PrkabZkul' \
    --body '{"avatarUrl": "8rq9QysMR6BryqA2", "country": "iVOkykGmvYMfUVEX", "dateOfBirth": "na4FtvI0uGhcxM2F", "displayName": "8XYFetrVYQIezR53", "languageTag": "p4Y7K1GeAUCl1qNT", "userName": "ysO24L18xoZWhNya"}' \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserV3' test.out

#- 152 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ye0VtkJZUCXmISXT' \
    --activeOnly 'true' \
    --after 'yuuPCkbFO4U47DMc' \
    --before 'P7263On24CFZVFGc' \
    --limit '95' \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserBanV3' test.out

#- 153 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ntNUIpRcjHoppNgn' \
    --body '{"ban": "WdctZR1EEAvUoJiv", "comment": "64ooz0jleLv7eCdg", "endDate": "DNcBci5jGb1BSdaq", "reason": "1umfg6PXthv5hanS", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 153 'AdminBanUserV3' test.out

#- 154 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'IDhv3kEKSyzM5aw3' \
    --namespace $AB_NAMESPACE \
    --userId 'Ibubt2LhCsH2713S' \
    --body '{"enabled": true, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 154 'AdminUpdateUserBanV3' test.out

#- 155 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'GEeheMcI0tSX6NSr' \
    --body '{"context": "0hd250G5DFBwJ8l7", "emailAddress": "fTxjrq8XZMlEmGCf", "languageTag": "2mNYGlYFqZgVdOh9"}' \
    > test.out 2>&1
eval_tap $? 155 'AdminSendVerificationCodeV3' test.out

#- 156 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eEYSy6bQjG3oRocd' \
    --body '{"Code": "NMX5NqFyUHZbt6T5", "ContactType": "lrd9znn4GJBRoNfi", "LanguageTag": "uHhrhSsFxB1Z4W1f", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 156 'AdminVerifyAccountV3' test.out

#- 157 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'TMGH6t4iOPkedsHJ' \
    > test.out 2>&1
eval_tap $? 157 'GetUserVerificationCode' test.out

#- 158 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'yL8SRTz2ixyLXPx3' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserDeletionStatusV3' test.out

#- 159 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'cEyVjGe5An4H0FWN' \
    --body '{"deletionDate": 41, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 159 'AdminUpdateUserDeletionStatusV3' test.out

#- 160 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xjjZi1PZ7OMqJC1h' \
    --body '{"code": "1eqePco1kU9FR2UC", "country": "0RGosoi7lBuKRsu4", "dateOfBirth": "cp8gH0FwjVrCo1hn", "displayName": "DkP6VI8xGVcDs8Ue", "emailAddress": "8gbuKwNO5QSpHado", "password": "1hhbKEbVjrsI3cjl", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpgradeHeadlessAccountV3' test.out

#- 161 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZPhZXClVsjxANPzR' \
    > test.out 2>&1
eval_tap $? 161 'AdminDeleteUserInformationV3' test.out

#- 162 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '31OaS2lK8YdrHrow' \
    --after '0.5534011741319466' \
    --before '0.681312034753622' \
    --limit '29' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserLoginHistoriesV3' test.out

#- 163 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'K4NZWVCWZtJhxBwA' \
    --body '{"languageTag": "r2fEpKmoV5PvQam6", "newPassword": "gFNf2Y5N7Sk9Dv7h", "oldPassword": "YLPilKTqjSVz9lzW"}' \
    > test.out 2>&1
eval_tap $? 163 'AdminResetPasswordV3' test.out

#- 164 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId '7ay6uswLsSDv8LL9' \
    --body '{"Permissions": [{"Action": 7, "Resource": "X10D7L3dfzImh4qH", "SchedAction": 94, "SchedCron": "S3wjEhuPf6ZFrYGh", "SchedRange": ["jRdUgGTYhGyL0Kuq", "DCH0OiZjrUgOr2BY", "cdqVQhYv0Ifq2sJK"]}, {"Action": 90, "Resource": "q96Ucv8bkdEwKMdX", "SchedAction": 18, "SchedCron": "x6dn7oui8Uv6EdCT", "SchedRange": ["HHPZAJ3RXeD0WMhc", "x0yuRpFXxMTY6osk", "2NcPn48uURifxmXj"]}, {"Action": 36, "Resource": "dPmJ7hE3NKAlK8o7", "SchedAction": 81, "SchedCron": "H5ZEq8gtH8cUIMWw", "SchedRange": ["paATW1obnD7vpHc8", "Mr7ZbOaV3dHOu967", "wD3EMiY9Xt7HqVc2"]}]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserPermissionV3' test.out

#- 165 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId '1aGJKh0B5jMjghVV' \
    --body '{"Permissions": [{"Action": 1, "Resource": "A2ezOzAHvPltKnRb", "SchedAction": 99, "SchedCron": "itoHZQe5FvAaprqZ", "SchedRange": ["AQaiobge65jTlHKm", "XBa9vjmTyrpCpVEZ", "mxfUPyurr68HPliH"]}, {"Action": 23, "Resource": "0ji0GYhEG0qj861B", "SchedAction": 65, "SchedCron": "Zi5KFMICg7WjgCpm", "SchedRange": ["l4Nx4poYr22vT4v4", "VNC9KW2hCkC1Bmid", "jfGCom0L7akNes2q"]}, {"Action": 6, "Resource": "lAYu4yEXV0RH9zoz", "SchedAction": 7, "SchedCron": "ofgJOHp221fJ2SMz", "SchedRange": ["Y4ULSzfUUNtqKSId", "BhWoZgZKJkuf5xZ9", "E4yzoEJ2Giu5RLGc"]}]}' \
    > test.out 2>&1
eval_tap $? 165 'AdminAddUserPermissionsV3' test.out

#- 166 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId '57spH1OA7xJatjV7' \
    --body '[{"Action": 36, "Resource": "NvODYWzo34dMan0o"}, {"Action": 79, "Resource": "1hYeBLJLhF2FHUpN"}, {"Action": 36, "Resource": "pnzA3jmPNURV30qR"}]' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionBulkV3' test.out

#- 167 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '73' \
    --namespace $AB_NAMESPACE \
    --resource '4fmCHZ5m4TStm5Zo' \
    --userId 'MCQzQiI7UvVgeX3K' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionV3' test.out

#- 168 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YDAtNLIfK40wNxNH' \
    --after '0bpFt7hXKm0wODko' \
    --before 'J0tvhA9fAoePRQ1u' \
    --limit '0' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserPlatformAccountsV3' test.out

#- 169 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'EVULO9xYaH9rusb2' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetListJusticePlatformAccounts' test.out

#- 170 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'x2b1oro65luTvaRY' \
    --userId 'qe6JqlhvsmIiv9Xl' \
    > test.out 2>&1
eval_tap $? 170 'AdminGetUserMapping' test.out

#- 171 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '91VrxVbnfaphj0kg' \
    --userId '47w3VsZDJwXXppNn' \
    > test.out 2>&1
eval_tap $? 171 'AdminCreateJusticeUser' test.out

#- 172 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '2p3UHqvNcfqBbixB' \
    --body '{"platformId": "9dXPXeZPqw2nXnnt", "platformUserId": "nVs34vAH1FGDpzAC"}' \
    > test.out 2>&1
eval_tap $? 172 'AdminLinkPlatformAccount' test.out

#- 173 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'zGi7bkRT26SInELh' \
    --userId '7XzQ7wAOBMuBpjgp' \
    --body '{"platformNamespace": "JS1PzqCDbpADhQ21"}' \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformUnlinkV3' test.out

#- 174 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'vJ3GEtrLxFQmyLzJ' \
    --userId 'aOBXXMb6vKMhYVvD' \
    --ticket 'bt7bwYNBhuzJvRJS' \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformLinkV3' test.out

#- 175 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'V7rNtT6VGxI1Lw5e' \
    --userId 'FX1Wwy6X3kXQbHr1' \
    --platformToken 'tEgNaHQQWhfC0ckr' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 176 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hoLaaNOdynMbnvV3' \
    --body '["s7LUJeYBJFmINCZa", "0p0CFpbVkglJmBT3", "W5WRNmlypppchylN"]' \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserRolesV3' test.out

#- 177 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId '9UszSGmn2eolMtUA' \
    --body '[{"namespace": "4sEGLrnwpcKpg5em", "roleId": "sMFcoJAD8Y5BtsmY"}, {"namespace": "PthKpIGMX3mmGSOD", "roleId": "Vp5QzTfIpG5WDyIC"}, {"namespace": "qBYSadyCxH0uP2AP", "roleId": "jf0f5c5ayYSnsZuw"}]' \
    > test.out 2>&1
eval_tap $? 177 'AdminSaveUserRoleV3' test.out

#- 178 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'DBWk3BSqSlevUsPD' \
    --userId 'gpE3I5VDF6WLMv0S' \
    > test.out 2>&1
eval_tap $? 178 'AdminAddUserRoleV3' test.out

#- 179 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'bPDFF9MFEZsxcKEo' \
    --userId '4RtkZRLfYDdylHnY' \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteUserRoleV3' test.out

#- 180 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VIUYLX6LnVHe9Er8' \
    --body '{"enabled": true, "reason": "Yx6w3HLDpvtT761L"}' \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateUserStatusV3' test.out

#- 181 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LlgcZe7TLOzPSElQ' \
    > test.out 2>&1
eval_tap $? 181 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 182 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'XIO9wG8ewKbPe3Pb' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "9dYsdrwiGweEDBVg"}' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateClientSecretV3' test.out

#- 183 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'Aw6pY8LJni0Jjx13' \
    --before 'BawPfSYfW2WPfY0V' \
    --isWildcard 'false' \
    --limit '43' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRolesV3' test.out

#- 184 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "ZtbQrxcMZenxGUqG", "namespace": "4yWsgYlYEGRkz2rv", "userId": "OZ2cX1aNZVrnylIZ"}, {"displayName": "VFEkeGsN2igP7hbu", "namespace": "PLX4cEuDO0cOVipU", "userId": "krEPZOieOlcDTFFu"}, {"displayName": "tZg9fANVAwTOH8Sk", "namespace": "NBPJqF6sl5Xaf14z", "userId": "laMXr4FvLCUnyeXE"}], "members": [{"displayName": "6G801To2CO6ZWE9x", "namespace": "IeJBOvM5CKO6APAe", "userId": "uxGIOPfLbl1KuZsR"}, {"displayName": "TkS6PmFH8h3ap1fV", "namespace": "dia9X5XMqoAsj0GE", "userId": "DNtRXAPGfoZ46BJe"}, {"displayName": "JY599ur5ic2yKgj1", "namespace": "krgvU2q36STjFRN5", "userId": "W0Oc2j6Qn6F0YHRa"}], "permissions": [{"action": 80, "resource": "ecw1kplLzw8L4YAw", "schedAction": 43, "schedCron": "30PEkrVDRIuWbQVz", "schedRange": ["iYXufmwJS7jxZMnS", "Ppotg8uKbTUcmDaI", "wrI8GAsMe5nkxmwk"]}, {"action": 38, "resource": "FtXMBUgbIwJw2F1x", "schedAction": 20, "schedCron": "z0JfDlapHsQrdYbk", "schedRange": ["UUf3Evdf3KZMkXr6", "DzrxnTwWAq9oiovw", "gjavixrEqPDu7cav"]}, {"action": 34, "resource": "NZwiq4eGj0fkd4Le", "schedAction": 20, "schedCron": "AKEIsFYOcwMPTaCR", "schedRange": ["T2Xn3us2Zx8dOj6u", "oLGRoJCQ4joQbcqA", "bvMMovd2729NKczW"]}], "roleName": "L9z1UE3qXw130DPU"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminCreateRoleV3' test.out

#- 185 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'x0GyOILroFrSoYKw' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleV3' test.out

#- 186 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId '6LFYp7w5HlhLhM8c' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteRoleV3' test.out

#- 187 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'JpleL5anA7tKju8o' \
    --body '{"deletable": false, "isWildcard": true, "roleName": "QiLsgO7WugiS2uJB"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateRoleV3' test.out

#- 188 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'aIthFMMPyFXXAYou' \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleAdminStatusV3' test.out

#- 189 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'yQWlhw5J2fAzYTA3' \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateAdminRoleStatusV3' test.out

#- 190 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'WceZ68h0ZPUvkLkF' \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleAdminV3' test.out

#- 191 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'o1RcbDoqIJcRYjLL' \
    --after 'stMDGT1yFhLn6UWu' \
    --before 'Y5Iz5LNeOhdNc4zJ' \
    --limit '45' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRoleManagersV3' test.out

#- 192 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'cA4u8BztFCvyXFSG' \
    --body '{"managers": [{"displayName": "rT0QgH3fF8GIAxF3", "namespace": "p3xx2NBnJ95V2eQh", "userId": "uQagSefhDOBt1n1B"}, {"displayName": "gG0dNgrrsYPAWmpA", "namespace": "no0ThkgjX48nwEOJ", "userId": "anBysafRBosgtAsd"}, {"displayName": "9xQO7qpSupqYwlxr", "namespace": "Ys6tc5BbvY3xtXrh", "userId": "vFrzVSHnaEuHNPro"}]}' \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRoleManagersV3' test.out

#- 193 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'LUO2H8dQS1lV08QS' \
    --body '{"managers": [{"displayName": "g9RTOZHz9vvDNbxg", "namespace": "JEjoYNNJ7N1at7bB", "userId": "l4aydaY1eBkfuSys"}, {"displayName": "Etf78FwyiFvM5vbu", "namespace": "XrEjzNKaTWcgTtCE", "userId": "yaG6yJOofUJWekwx"}, {"displayName": "6wDCc8OAlu9cOiqA", "namespace": "JVOhjMSKRIqZQ0h8", "userId": "ePgGGtrSmxcou2lQ"}]}' \
    > test.out 2>&1
eval_tap $? 193 'AdminRemoveRoleManagersV3' test.out

#- 194 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'Jd8duNs47i1qeMRf' \
    --after '4mA2fALmc7eIauun' \
    --before 'W3h67i61BwxYxtxG' \
    --limit '55' \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleMembersV3' test.out

#- 195 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'KQv36tZbTpQ5hoaE' \
    --body '{"members": [{"displayName": "YZ8NI5WJ4tos8g9c", "namespace": "cs2MGOSl9O5PRyYw", "userId": "BdmiasJjQEK3R64x"}, {"displayName": "KGZrAodz0Cdnflow", "namespace": "SqSM9v1j8lV1PIF1", "userId": "1b1BQvcoLxPFg57U"}, {"displayName": "4VSJWqkRoSlUlIBR", "namespace": "AP2L4FxGyChnHZIC", "userId": "YnZBrF6wiegFXIGx"}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddRoleMembersV3' test.out

#- 196 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'K6Wqw5S6O59eJF7n' \
    --body '{"members": [{"displayName": "xjwmUxolXJ6PaJrp", "namespace": "7UyGiA2YZDTCLput", "userId": "onL9ITtusb8ddxHo"}, {"displayName": "RYfFuLrttuSEsspq", "namespace": "UwNSubxguzfSs2gq", "userId": "3T9T74SVFM0dMI4q"}, {"displayName": "F4fZd9m3Mb3DamJt", "namespace": "32qVWgNGFBpEZX5G", "userId": "S6xoQup1jYE0FAZW"}]}' \
    > test.out 2>&1
eval_tap $? 196 'AdminRemoveRoleMembersV3' test.out

#- 197 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'OQkjjK9zRhmxS8Dt' \
    --body '{"permissions": [{"action": 82, "resource": "a377cxx4tKGDGGkn", "schedAction": 79, "schedCron": "I6VyinY0CjCMZ1QK", "schedRange": ["AyLvdHwDE2eUXrL1", "QBCEWaxl9GH3zlff", "YMLZpw8LCTqKOze8"]}, {"action": 69, "resource": "M58NXOxC9pgrCsIw", "schedAction": 52, "schedCron": "WQSp6Od9L8prknyt", "schedRange": ["Um1TWyFNBfmi3OmY", "swN3DpnauDPZteXa", "RAvNnz6s3RGbgKJ9"]}, {"action": 69, "resource": "l9hAJIuigrKMvDQX", "schedAction": 1, "schedCron": "3wWPgYjTearTH3Lg", "schedRange": ["XkbghwWeoV59MB98", "1dhFjfsdDrbcGi9H", "sDv3Yj2caa2mcTy2"]}]}' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateRolePermissionsV3' test.out

#- 198 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'PNttaTHYCeg9LbVB' \
    --body '{"permissions": [{"action": 55, "resource": "dqpznTOTCXzuMQ3R", "schedAction": 10, "schedCron": "Z8oRmZRcinWGGmix", "schedRange": ["GYlwU9UYgrcjwMWo", "X9HMkNQsDkWhRmFN", "nZr4QDlhYRt0LUnR"]}, {"action": 24, "resource": "PPoaTMXHeYVNjRg3", "schedAction": 65, "schedCron": "dTXvIGl0wpd1nuzO", "schedRange": ["yZy6LC9q0UCQFcHF", "JIDPloxH50HueguT", "AQRVEjZsuH2vvLyC"]}, {"action": 49, "resource": "iog692d3wyc4pOXt", "schedAction": 61, "schedCron": "5Bq5NWptxUzPDCwh", "schedRange": ["nutsIPMCfbMggMdb", "b0ejExi8S8KPsKlX", "UKGVXsG1a6t8yvUW"]}]}' \
    > test.out 2>&1
eval_tap $? 198 'AdminAddRolePermissionsV3' test.out

#- 199 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'elJvhPNc9Ug8kLjs' \
    --body '["RtakGvFe5bw14fCv", "6QLA2WmYxGI9z7Tr", "YSTKZeahjpuMBUYf"]' \
    > test.out 2>&1
eval_tap $? 199 'AdminDeleteRolePermissionsV3' test.out

#- 200 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '8' \
    --resource 'N5J13oAFGkNQS5SA' \
    --roleId 'stZmRNe7Px4cDPNy' \
    > test.out 2>&1
eval_tap $? 200 'AdminDeleteRolePermissionV3' test.out

#- 201 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 201 'AdminGetMyUserV3' test.out

#- 202 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'ZlPOzLjQjVnDgTpQ' \
    --extendExp 'false' \
    --redirectUri 'VpPfAoLMHYeTzvEt' \
    --password 'BpITfHWroXCQCJ8E' \
    --requestId 'oT1B9z8WguBfmxi3' \
    --userName 'YoATAxpK0ARkzs3m' \
    > test.out 2>&1
eval_tap $? 202 'UserAuthenticationV3' test.out

#- 203 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'kdloOdxpDi3wt2jF' \
    --linkingToken 'enBtd7csjVdGxKMI' \
    --password '9GXmKzDeLq8v80zz' \
    --username 'JMozYhRciZjZliIH' \
    > test.out 2>&1
eval_tap $? 203 'AuthenticationWithPlatformLinkV3' test.out

#- 204 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'false' \
    --linkingToken 'emkUMyQnn3ZsQA9t' \
    > test.out 2>&1
eval_tap $? 204 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 205 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'fcL6HQJlcjcHzgpw' \
    > test.out 2>&1
eval_tap $? 205 'RequestOneTimeLinkingCodeV3' test.out

#- 206 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'lxcLglJSe2uQ3Png' \
    > test.out 2>&1
eval_tap $? 206 'ValidateOneTimeLinkingCodeV3' test.out

#- 207 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --isTransient 'true' \
    --clientId 'YIrAyaBxRmHUaV1Q' \
    --oneTimeLinkCode '6YB0Jw0L01OA27Kz' \
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
    --clientId 'gtmtce87hLPGE0Fq' \
    > test.out 2>&1
eval_tap $? 210 'RequestGameTokenCodeResponseV3' test.out

#- 211 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'cHZLCoOqyY0wf3zT' \
    --userId 'VbUG1Emfj4iNHzEn' \
    > test.out 2>&1
eval_tap $? 211 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 212 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LjVeOzlKLsjcIcH9' \
    > test.out 2>&1
eval_tap $? 212 'RevokeUserV3' test.out

#- 213 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'e7mK8D1Jtv5ffDyj' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'true' \
    --oneTimeLinkCode '2q79gRRY2HhBRoev' \
    --redirectUri 'araWORYuj3kYPIXw' \
    --scope 'nZVHTgRwBkvN7Bzg' \
    --state '6lJoF7diV7o3wvg8' \
    --targetAuthPage 'hkNM7LG5oEg84UT6' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'qiB2JTApZ4tlg53g' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 213 'AuthorizeV3' test.out

#- 214 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'o0Aha5M8vwjaultY' \
    > test.out 2>&1
eval_tap $? 214 'TokenIntrospectionV3' test.out

#- 215 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 215 'GetJWKSV3' test.out

#- 216 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId '2TTGPTA2dt2MdPDF' \
    --factor 'Sn0MMAjZoW8rloT2' \
    --mfaToken 'byVGE80AJSiy0pYN' \
    > test.out 2>&1
eval_tap $? 216 'SendMFAAuthenticationCode' test.out

#- 217 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'HzAIWTqTMsNrLEPG' \
    --mfaToken 'KgI2T5udKVKGhql4' \
    > test.out 2>&1
eval_tap $? 217 'Change2faMethod' test.out

#- 218 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'a8xqAdzWsE38LrKG' \
    --factor 'YU9bUAi1UlenpC5h' \
    --mfaToken 'tZ77SZA8mqFVaOGo' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 218 'Verify2faCode' test.out

#- 219 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'K8y2HwRI4OHWj33L' \
    --userId 'J60YYKMgPLGK04Dx' \
    > test.out 2>&1
eval_tap $? 219 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId '2wmvGXeP8nGIv2Fs' \
    --clientId 'eXT4AeXQXaQLNb6c' \
    --redirectUri 'ggVEOqejZ5A7zo9p' \
    --requestId 'tfdBJCgf1DG7CTOP' \
    > test.out 2>&1
eval_tap $? 220 'AuthCodeRequestV3' test.out

#- 221 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'fPO09X282fjvQjZQ' \
    --clientId 'cMuFlAUH1rcEe6if' \
    --createHeadless 'false' \
    --deviceId 'YsrauCukZvln5glQ' \
    --macAddress 'DSInkUqfBe9syigQ' \
    --platformToken '2HnWeqo20X4eoFVm' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 221 'PlatformTokenGrantV3' test.out

#- 222 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 222 'GetRevocationListV3' test.out

#- 223 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'AVdRU44wb8fcT2LG' \
    > test.out 2>&1
eval_tap $? 223 'TokenRevocationV3' test.out

#- 224 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --clientId 'xKAYSZrJu8iiEgJd' \
    --code 'AwMDaBZQB4KU96sR' \
    --codeVerifier 'zCthijoYNCxmXgps' \
    --extendExp 'true' \
    --password 'yKsGfjAyXuLktDAa' \
    --redirectUri 'D50znULIKL3Jyi3L' \
    --refreshToken 'Fvn0z2pCH0zl9umf' \
    --username 'T7SUYEl4BuTJ4uFj' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 224 'TokenGrantV3' test.out

#- 225 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token '5kW4kPRXikr36v6t' \
    > test.out 2>&1
eval_tap $? 225 'VerifyTokenV3' test.out

#- 226 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'pqEce1cs01CEZcPg' \
    --code 'Ncp1Q5yFfp7ahhzk' \
    --error '4FgTr5EUtlA9Er5m' \
    --openidAssocHandle '5KLz9wli23vsQtAS' \
    --openidClaimedId 'wPl1f8uOxPcOLAgJ' \
    --openidIdentity 'umwiBILfREmYsX0M' \
    --openidMode 'wyJz6pSJEqJRtJcf' \
    --openidNs 'zRipkaLqf3GpWq2v' \
    --openidOpEndpoint '59CB3oPkptBZuShG' \
    --openidResponseNonce 'EZACrVKdgIiFDLXe' \
    --openidReturnTo 'IYRSwCIFmpZ4K4q8' \
    --openidSig '4dRLNF9kbewU48lY' \
    --openidSigned 'G4iVqXyYOwVKGwyd' \
    --state 'ZF1iHjgRg3xXdxqm' \
    > test.out 2>&1
eval_tap $? 226 'PlatformAuthenticationV3' test.out

#- 227 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode '9dL1rnam7wcVtdus' \
    > test.out 2>&1
eval_tap $? 227 'PublicGetInputValidations' test.out

#- 228 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'CVrkeWBRewmitqXd' \
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
    --clientId 'TjBb6cqW9AMRafb7' \
    > test.out 2>&1
eval_tap $? 230 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 231 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'wahHEw7wI1bj7l4Z' \
    --rawPUID 'false' \
    --body '{"platformUserIds": ["mi3dURHK9BEHrUCd", "8uheaY1pCqblweiM", "V4khMAabTnmrUkAj"]}' \
    > test.out 2>&1
eval_tap $? 231 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 232 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'iCEjggrO3JvN4dXJ' \
    --platformUserId 'wBCwKSPcT3pYEvBn' \
    > test.out 2>&1
eval_tap $? 232 'PublicGetUserByPlatformUserIDV3' test.out

#- 233 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'PmyytPS1klrtfP5f' \
    > test.out 2>&1
eval_tap $? 233 'PublicGetAsyncStatus' test.out

#- 234 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'pIdkLneay7S2SigJ' \
    --limit '61' \
    --offset '62' \
    --query 'WRfDYLgqaGhjRl9u' \
    > test.out 2>&1
eval_tap $? 234 'PublicSearchUserV3' test.out

#- 235 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "tLbM1b5WC6ge1cHj", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "tlPMeN7vVeMCB7GE", "policyId": "enMFxILqFjOPj5nT", "policyVersionId": "5RwRGZLpXrHq7n0Q"}, {"isAccepted": false, "localizedPolicyVersionId": "OmzxtFytgvv5sfFw", "policyId": "WzmEdbaYeq7zBSgN", "policyVersionId": "e2C8JT4oUSKfhy5b"}, {"isAccepted": false, "localizedPolicyVersionId": "RTs8XC4fYZHX6tBC", "policyId": "lDW0F3UPdoetOT3Q", "policyVersionId": "XAHJS7RbRTBncaVJ"}], "authType": "AfQuNYm1i4TNQ0HH", "code": "ykndiILNcIJoZoG8", "country": "RaV2M211W11wHnaU", "dateOfBirth": "luXTfIWYdcOMi3ar", "displayName": "igkjkHm5p8I3sg9J", "emailAddress": "Df5DOJnNzmkf1NBD", "password": "9AUhAxQkzbYzCRZq", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 235 'PublicCreateUserV3' test.out

#- 236 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field '1WyfHK2ia5cxFyMC' \
    --query 'AKItRTjSp9sQ7lHg' \
    > test.out 2>&1
eval_tap $? 236 'CheckUserAvailability' test.out

#- 237 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["jZn3eGyzNIgMyfqR", "2vgzXgdReb1M7zEu", "wOg0UsqAtSfNAxj2"]}' \
    > test.out 2>&1
eval_tap $? 237 'PublicBulkGetUsers' test.out

#- 238 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "Y77IDaWeHCf01OgQ", "languageTag": "xjdN4DPOwRoAmNSB"}' \
    > test.out 2>&1
eval_tap $? 238 'PublicSendRegistrationCode' test.out

#- 239 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "95gktfPrX2kh5JYH", "emailAddress": "RdcBsHow7dpHdcdE"}' \
    > test.out 2>&1
eval_tap $? 239 'PublicVerifyRegistrationCode' test.out

#- 240 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "PdRMGh4uiMzzYw8g", "languageTag": "I5YZDfBEKA5koSv9"}' \
    > test.out 2>&1
eval_tap $? 240 'PublicForgotPasswordV3' test.out

#- 241 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'TfyRiWljcNdcGVNP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 241 'GetAdminInvitationV3' test.out

#- 242 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'XnGxqTLYZLnWnOOr' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "nty2f1idvMI267lT", "policyId": "ZdIaE37kZfH7WUNd", "policyVersionId": "TGKltxw4gQHveZbc"}, {"isAccepted": false, "localizedPolicyVersionId": "KsF2uVvD58usvfvR", "policyId": "CXlmetDt6OaRetui", "policyVersionId": "BdUZXqcRNAlRfCpn"}, {"isAccepted": true, "localizedPolicyVersionId": "MBuuyHvsiLXoexLi", "policyId": "Q7gSSpodGkLTGFdY", "policyVersionId": "u6f5b02yqpY3Iori"}], "authType": "EMAILPASSWD", "country": "OtzvyyIafQQRH6RD", "dateOfBirth": "zjAtNNzC0J7Xzkmg", "displayName": "0M8yXKQ7qZ7yfzxw", "password": "PYQyWIKvPRJIF9eH", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 242 'CreateUserFromInvitationV3' test.out

#- 243 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "PJ15UHO2XoDJcUVe", "country": "MvCQDhZq59Fqhof1", "dateOfBirth": "NvgPTDLgKBUN1eLl", "displayName": "HCuBDJK4zADJ8G8w", "languageTag": "vkL0bDDpu7cExIOa", "userName": "EmpGRVS0M3MwbIvp"}' \
    > test.out 2>&1
eval_tap $? 243 'UpdateUserV3' test.out

#- 244 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "I8Se2bxrrcgttwep", "country": "tsZTFaGOiUguUJjJ", "dateOfBirth": "HTG1jN5TYnNBAPsR", "displayName": "DJIiMRgY0xxuBcNa", "languageTag": "rZJFAcmwWjoZn63p", "userName": "KshvQZDtRhaHswNd"}' \
    > test.out 2>&1
eval_tap $? 244 'PublicPartialUpdateUserV3' test.out

#- 245 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "5uo7nXLcXyszILFw", "emailAddress": "6CNKEl6yRilrNr5u", "languageTag": "NHkKCnbtoUo1KxeQ"}' \
    > test.out 2>&1
eval_tap $? 245 'PublicSendVerificationCodeV3' test.out

#- 246 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "YcyWu2gWBoWWUOlM", "contactType": "A52Q4lZANgKHxPiL", "languageTag": "FyEzz5wagbCGEcQ5", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 246 'PublicUserVerificationV3' test.out

#- 247 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "sEt7IHXfR4tLi3QS", "country": "Yk5iKvriCnypUbwd", "dateOfBirth": "6qhQwUCJ7zxIFwpE", "displayName": "0k2y3KPSPqPTZHXr", "emailAddress": "Z1X2x7Hsh99m1tLF", "password": "zuebqtWepeXHWhCi", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 247 'PublicUpgradeHeadlessAccountV3' test.out

#- 248 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "GooAjHJvWdHeT4TT", "password": "XuENMlttVhGDY5GO"}' \
    > test.out 2>&1
eval_tap $? 248 'PublicVerifyHeadlessAccountV3' test.out

#- 249 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "8yq3HpCxq7Qy3gle", "newPassword": "dHbqlhiZ7WYmZJAt", "oldPassword": "AoyJ86yCj7v4qdIB"}' \
    > test.out 2>&1
eval_tap $? 249 'PublicUpdatePasswordV3' test.out

#- 250 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'LITM8w4NKgaCY5KG' \
    > test.out 2>&1
eval_tap $? 250 'PublicCreateJusticeUser' test.out

#- 251 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'm3k4Yq48srFFhOpp' \
    --redirectUri 't1uxzgi7f6EVZXpv' \
    --ticket 'B8B5lqnNrl8yy5tp' \
    > test.out 2>&1
eval_tap $? 251 'PublicPlatformLinkV3' test.out

#- 252 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 't1lGQ6c2TMPdVZPZ' \
    --body '{"platformNamespace": "HsC1AgfsJ280Wwrs"}' \
    > test.out 2>&1
eval_tap $? 252 'PublicPlatformUnlinkV3' test.out

#- 253 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'SralJSuFkVMh0907' \
    > test.out 2>&1
eval_tap $? 253 'PublicPlatformUnlinkAllV3' test.out

#- 254 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'gNpBt4xtBmg4HKjb' \
    --ticket 'HcyLld2yo0ofwiTS' \
    > test.out 2>&1
eval_tap $? 254 'PublicForcePlatformLinkV3' test.out

#- 255 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId '60iTZa7E89j464ei' \
    --clientId '4Z9q633jroZWiX1L' \
    --redirectUri 'nMnL8yDnJGMU2jp1' \
    > test.out 2>&1
eval_tap $? 255 'PublicWebLinkPlatform' test.out

#- 256 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'lW67CKXjcNO0MD6O' \
    --state 'lAUBjlQsxxtC1dXZ' \
    > test.out 2>&1
eval_tap $? 256 'PublicWebLinkPlatformEstablish' test.out

#- 257 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "8zh7cRR3hZKGi3nM", "emailAddress": "22ScDhpIbBUjschv", "newPassword": "XAOSCXj4QkSUzlts"}' \
    > test.out 2>&1
eval_tap $? 257 'ResetPasswordV3' test.out

#- 258 PublicGetUserByUserIdV3
eval_tap 0 258 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 259 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bIHaaE8CRBAMORdM' \
    --activeOnly 'true' \
    --after '2kzYHz6zvKqN6yIY' \
    --before 'il4cuY17qvH1RDaB' \
    --limit '87' \
    > test.out 2>&1
eval_tap $? 259 'PublicGetUserBanHistoryV3' test.out

#- 260 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'b631bBsRnAsZMvzf' \
    > test.out 2>&1
eval_tap $? 260 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 261 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId '1CXtW9xYh07gSbqe' \
    > test.out 2>&1
eval_tap $? 261 'PublicGetUserInformationV3' test.out

#- 262 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'GlpMhKvK0lzCwp3H' \
    --after '0.4736349008539089' \
    --before '0.7993640613585021' \
    --limit '31' \
    > test.out 2>&1
eval_tap $? 262 'PublicGetUserLoginHistoriesV3' test.out

#- 263 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RQCUUY22iSOitzfI' \
    --after 'fpWI5CkiEiLBakD7' \
    --before 'JhIZxdsoNypCOqBP' \
    --limit '86' \
    > test.out 2>&1
eval_tap $? 263 'PublicGetUserPlatformAccountsV3' test.out

#- 264 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'guGXcAzPkZ19sTHA' \
    > test.out 2>&1
eval_tap $? 264 'PublicListJusticePlatformAccountsV3' test.out

#- 265 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '82KD6uVnatt0csbe' \
    --body '{"platformId": "uq4Q5qBost9IjjoR", "platformUserId": "Vvcdbr0EGFjuO3fT"}' \
    > test.out 2>&1
eval_tap $? 265 'PublicLinkPlatformAccount' test.out

#- 266 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'bZAzozpK3vqXVwm4' \
    --body '{"chosenNamespaces": ["047M5OpQrioAhukT", "2vIZQ7anuTSlNfc7", "MCrQYaDXtzv15gRQ"], "requestId": "GcLHlcpLyT21gM3z"}' \
    > test.out 2>&1
eval_tap $? 266 'PublicForceLinkPlatformWithProgression' test.out

#- 267 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Qh3Hs8Fy8LWezTRl' \
    > test.out 2>&1
eval_tap $? 267 'PublicGetPublisherUserV3' test.out

#- 268 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId '5GhQ1sh4ARNLPYe1' \
    --password 'jM4b1td74SAIhbQC' \
    > test.out 2>&1
eval_tap $? 268 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 269 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'vpxALZaUqoBsd3x2' \
    --before 'n5CAHOc7lDQmmLsx' \
    --isWildcard 'true' \
    --limit '30' \
    > test.out 2>&1
eval_tap $? 269 'PublicGetRolesV3' test.out

#- 270 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId '4XD0yPeUh2pBsIPe' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetRoleV3' test.out

#- 271 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 271 'PublicGetMyUserV3' test.out

#- 272 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'OQj81j3d0L4ljpdp' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 273 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["Uiq6D9Owbm4WXUow", "KafhpMpZRhtBDOob", "GKBXMMbFIWXKPy5y"], "oneTimeLinkCode": "zTMdZjHYh5U2G64y"}' \
    > test.out 2>&1
eval_tap $? 273 'LinkHeadlessAccountToMyAccountV3' test.out

#- 274 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "6p2LisTGNfS0qPPZ"}' \
    > test.out 2>&1
eval_tap $? 274 'PublicSendVerificationLinkV3' test.out

#- 275 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code '0VZa4f3UF15iW1pE' \
    > test.out 2>&1
eval_tap $? 275 'PublicVerifyUserByLinkV3' test.out

#- 276 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'njp8baee9HZysxi5' \
    --code 'y1YUgIM4466HezCP' \
    --error 'VmtxZzIFM5X6dSDu' \
    --state 'A4YvjdyN4mpwWKoz' \
    > test.out 2>&1
eval_tap $? 276 'PlatformAuthenticateSAMLV3Handler' test.out

#- 277 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'RzJ7Vc0t84SjQ8qG' \
    --payload 'pIXKiV4woL1KaCno' \
    > test.out 2>&1
eval_tap $? 277 'LoginSSOClient' test.out

#- 278 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'UzCxhlHZawXnYirz' \
    > test.out 2>&1
eval_tap $? 278 'LogoutSSOClient' test.out

#- 279 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --code 'CMfWl7K8Ud4Am1DX' \
    > test.out 2>&1
eval_tap $? 279 'RequestGameTokenResponseV3' test.out

#- 280 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'sWkHqfwQxdTLvHa8' \
    > test.out 2>&1
eval_tap $? 280 'AdminGetDevicesByUserV4' test.out

#- 281 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'GTF2rnvSrOhkQwD0' \
    --endDate 'C0gQYShcX7jOCwYc' \
    --limit '64' \
    --offset '48' \
    --startDate 'I8f5AmMUDUk7wuDI' \
    > test.out 2>&1
eval_tap $? 281 'AdminGetBannedDevicesV4' test.out

#- 282 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'HxIatRFRsqFYFlg0' \
    > test.out 2>&1
eval_tap $? 282 'AdminGetUserDeviceBansV4' test.out

#- 283 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "VaM5hd9c487z3qP1", "deviceId": "gTobonIqEL59xPwP", "deviceType": "4hlRLFwqZ5fpVusC", "enabled": true, "endDate": "HHm2j1hXdADQfh3C", "ext": {"LCnwoUVhUmkMqHFg": {}, "TsvzFXqTKVFGqZi3": {}, "WSDSlBohojv5mLxV": {}}, "reason": "YgV2jQZUIS05dRcE"}' \
    > test.out 2>&1
eval_tap $? 283 'AdminBanDeviceV4' test.out

#- 284 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'hg6pGgvtT6i6ApaJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 284 'AdminGetDeviceBanV4' test.out

#- 285 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'KGfEsVYTAZdTFtUR' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 285 'AdminUpdateDeviceBanV4' test.out

#- 286 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate '3ilWgMHxUaxytZOj' \
    --startDate '8Y3k52uu7gv1tsJj' \
    --deviceType 'ci1bfN568Va2NhYJ' \
    > test.out 2>&1
eval_tap $? 286 'AdminGenerateReportV4' test.out

#- 287 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 287 'AdminGetDeviceTypesV4' test.out

#- 288 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId '0uEhh9X877yPUUUJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 288 'AdminGetDeviceBansV4' test.out

#- 289 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId '9qPuNAw7r0tiOEoT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 289 'AdminDecryptDeviceV4' test.out

#- 290 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'j7cFi1vszPuvOkFX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'AdminUnbanDeviceV4' test.out

#- 291 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'UI5dqm2vOme5no59' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 291 'AdminGetUsersByDeviceV4' test.out

#- 292 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 71}' \
    > test.out 2>&1
eval_tap $? 292 'AdminCreateTestUsersV4' test.out

#- 293 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["TuhR445G8786wt83", "myUtp6188P8YyMDv", "lrm3hkXNhJk789oh"]}' \
    > test.out 2>&1
eval_tap $? 293 'AdminBulkCheckValidUserIDV4' test.out

#- 294 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'jrsTJYZR7FGMgeWZ' \
    --body '{"avatarUrl": "RvorcAhBWinhdulG", "country": "lUd8zEBuJPjY6ihE", "dateOfBirth": "p0Sxs79hud6CAaXN", "displayName": "MSx10f4VLbiNkNGl", "languageTag": "zRjf84rmi2HAc0LZ", "userName": "BETZ8Y6BApoVZDal"}' \
    > test.out 2>&1
eval_tap $? 294 'AdminUpdateUserV4' test.out

#- 295 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'UNc6CqJna8LibRxa' \
    --body '{"code": "UtFRYbR6jcvRaz4E", "emailAddress": "dzN1zdyiSR2wuWwX"}' \
    > test.out 2>&1
eval_tap $? 295 'AdminUpdateUserEmailAddressV4' test.out

#- 296 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId '7VfdW6POAZfRBIms' \
    > test.out 2>&1
eval_tap $? 296 'AdminDisableUserMFAV4' test.out

#- 297 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'UxBoBKFfdlSqAtDQ' \
    > test.out 2>&1
eval_tap $? 297 'AdminListUserRolesV4' test.out

#- 298 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'q6gC6C41ye9eDoG6' \
    --body '{"assignedNamespaces": ["f9hafy8fdUK0nXLe", "vb6WGR4cPlPMTsL0", "6c0PGwOnTPQzBd9E"], "roleId": "Vwr8ctuoQcvixdKw"}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateUserRoleV4' test.out

#- 299 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'KY4B34zEwKE8Jklp' \
    --body '{"assignedNamespaces": ["mRaXQU9ABCSptnrO", "jfK3qTcbxWWpKZHf", "8DbkamnQBDbyAV8f"], "roleId": "lqryTm6R25tGXv4n"}' \
    > test.out 2>&1
eval_tap $? 299 'AdminAddUserRoleV4' test.out

#- 300 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ElbYKmUO1QxmTlX8' \
    --body '{"assignedNamespaces": ["rGsgEdnJP4MBQGLz", "Jwg43zV6G204ZYzy", "huTiQ6qv6MKOXplK"], "roleId": "k9L1Iuhm56v9sacc"}' \
    > test.out 2>&1
eval_tap $? 300 'AdminRemoveUserRoleV4' test.out

#- 301 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'false' \
    --limit '45' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 301 'AdminGetRolesV4' test.out

#- 302 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "3ynPUjNkiQm7g9K8"}' \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateRoleV4' test.out

#- 303 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'jpksGUzDRCOCDJyV' \
    > test.out 2>&1
eval_tap $? 303 'AdminGetRoleV4' test.out

#- 304 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'RxvyaLmSiFrrebPb' \
    > test.out 2>&1
eval_tap $? 304 'AdminDeleteRoleV4' test.out

#- 305 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'DZ5pka6L4aNRkTUW' \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "uIwwsuFgYfdRzrHZ"}' \
    > test.out 2>&1
eval_tap $? 305 'AdminUpdateRoleV4' test.out

#- 306 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'PffhhgsKfQXF6ixk' \
    --body '{"permissions": [{"action": 79, "resource": "xKS8VksMueo47BiR", "schedAction": 74, "schedCron": "UHaR30Md8msqQr8O", "schedRange": ["dbUZjxX40IbftWA4", "6uaXAzfVy4CF4Igl", "1BFcn4CV7mJjNEfM"]}, {"action": 19, "resource": "sAAMzCQoJXLhW6lK", "schedAction": 18, "schedCron": "chUgpiBa1iG8cqfi", "schedRange": ["SM6UuAy9sr0WoSDV", "VqKn22gp4TCEjaKn", "GAvxMkC1u8lMTQd6"]}, {"action": 1, "resource": "kKk0ivnqwFmLM5QP", "schedAction": 86, "schedCron": "EHgimivdCpPaaVuY", "schedRange": ["jZPdCACI9kSTGja0", "LJeKPYBzBKDzRjFM", "f1LkslWMzzne7mmb"]}]}' \
    > test.out 2>&1
eval_tap $? 306 'AdminUpdateRolePermissionsV4' test.out

#- 307 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'PtpfvW34lP00BrGS' \
    --body '{"permissions": [{"action": 74, "resource": "t8RleosqJXidvDDc", "schedAction": 85, "schedCron": "YmHlO0HlhoEiXWNk", "schedRange": ["K2muaGn9f3Lyr1Ed", "fnK4twZ8fwF49pRY", "H8M9vD5DBs4yxU6c"]}, {"action": 63, "resource": "utLCpOJIEtoK1zdV", "schedAction": 92, "schedCron": "gSg1fIWRZiBhqTbi", "schedRange": ["cT7bogFotnA7DYYa", "sStUu4hyoxVwh1Ch", "xGP7XZmXTGeaIws4"]}, {"action": 81, "resource": "5sBZbFXdm370zbyl", "schedAction": 19, "schedCron": "IwUerjHlllRfF0Ta", "schedRange": ["YyXValRDhnWnDHor", "IcJMH5Nh1uwasyMy", "YIVKWSwUmVhbaZbX"]}]}' \
    > test.out 2>&1
eval_tap $? 307 'AdminAddRolePermissionsV4' test.out

#- 308 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'jTKhQ92KKBnCznq8' \
    --body '["5GF7HehFJRatL59H", "c8EzMGeScYW0T4Tl", "2hfUmPwUO3rgzB5O"]' \
    > test.out 2>&1
eval_tap $? 308 'AdminDeleteRolePermissionsV4' test.out

#- 309 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'ktfLTORX70DeReUR' \
    --after 'Qkqdw62NtPrRLiPr' \
    --before 'kVbxai8I2RLIItlK' \
    --limit '11' \
    > test.out 2>&1
eval_tap $? 309 'AdminListAssignedUsersV4' test.out

#- 310 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'WcLhCjaJTZVxwvZY' \
    --body '{"assignedNamespaces": ["STkljKW6vsAijggx", "etGE6Aht1jJt8bKq", "RBoV1jBkCE6yS2Up"], "namespace": "tfR4T5MObdX6djEc", "userId": "j2r1ihZDA7DpD3S7"}' \
    > test.out 2>&1
eval_tap $? 310 'AdminAssignUserToRoleV4' test.out

#- 311 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'koWMUfKGi1q2XNFy' \
    --body '{"namespace": "AsQU1zQrPY0pCOfI", "userId": "zVhSQxvFt1brEpjL"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminRevokeUserFromRoleV4' test.out

#- 312 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["oaUOEcYD29Rr7l0R", "c8MwPRvnLnvcpZBp", "HG89bBuv7qlCLKkX"], "emailAddresses": ["riqISWA4Na0NhNqX", "n8pzT9RaxIZPcjsW", "eZfQJUPioF5pW3oF"], "isAdmin": true, "namespace": "nc62fyelxW4Og8OZ", "roleId": "16bOunsle9wEl67E"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminInviteUserNewV4' test.out

#- 313 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "fH4Gfn07ycZruOfh", "country": "DZCKQadzO2yVYygD", "dateOfBirth": "X2zJ0efY9JyjOvJO", "displayName": "HFa8qRGKnymg3mPj", "languageTag": "UlzR9DrgSQQmdTam", "userName": "g0tRcZBMKtxH4PhL"}' \
    > test.out 2>&1
eval_tap $? 313 'AdminUpdateMyUserV4' test.out

#- 314 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 314 'AdminDisableMyAuthenticatorV4' test.out

#- 315 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'p8X0BIkaoCaFE0wM' \
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
    --code 'Py8EZXNE0fPlZcIN' \
    > test.out 2>&1
eval_tap $? 324 'AdminEnableMyEmailV4' test.out

#- 325 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 325 'AdminGetMyEnabledFactorsV4' test.out

#- 326 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'pA9Of0AXn7PATccu' \
    > test.out 2>&1
eval_tap $? 326 'AdminMakeFactorMyDefaultV4' test.out

#- 327 AdminInviteUserV4
eval_tap 0 327 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 328 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "A3VNrLEVQ6FdJ0cK", "policyId": "79kzO9ESGQskGJys", "policyVersionId": "iEgr5SMrOkYMkKCl"}, {"isAccepted": true, "localizedPolicyVersionId": "LxqbsRssknaNjM9j", "policyId": "MhJ842qbhqEpjEua", "policyVersionId": "iGbO3eBCBDeNoXdf"}, {"isAccepted": true, "localizedPolicyVersionId": "TWNSMXONjOnNYYda", "policyId": "ZutsqbEZ4H7RSclB", "policyVersionId": "mwHPytiU8CCIH0Ux"}], "authType": "EMAILPASSWD", "country": "3huyFaIo99iJcHuz", "dateOfBirth": "ui4hk2tPLDrkBxlC", "displayName": "YlKwSNUR1lMhg4bA", "emailAddress": "2IPhAC9eGbId3Pxg", "password": "ijCPRxYkBJnwEpey", "passwordMD5Sum": "pQ2ZnJUglHmrpVJk", "username": "qrFedCg93aT2xpkW", "verified": true}' \
    > test.out 2>&1
eval_tap $? 328 'PublicCreateTestUserV4' test.out

#- 329 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "i7JInzQMi74UnGNJ", "policyId": "QCZ4TAUhmSueuERy", "policyVersionId": "d71Zlf53g0aYQUWB"}, {"isAccepted": false, "localizedPolicyVersionId": "wfYDnyitJIMBQL0G", "policyId": "hH9SgiQaCI2lgTql", "policyVersionId": "93s2B3e68llnfJSW"}, {"isAccepted": true, "localizedPolicyVersionId": "9JzW6fs90pCTQGix", "policyId": "jwNoHVOlBTFBnPej", "policyVersionId": "0Q5qBhUPyaQGb5WC"}], "authType": "EMAILPASSWD", "code": "UrAjjjJvbwm9p8Ix", "country": "Wshg6XosNMkWulYE", "dateOfBirth": "4X38GvrUxwzlFHTK", "displayName": "fVnBjhd6QWlqBY3E", "emailAddress": "9475UPShWRDTy7pQ", "password": "fdS4v69YN9KYR1On", "passwordMD5Sum": "zs0EJx1sqVfdqIoU", "reachMinimumAge": false, "username": "UAFjkAkqU8loKLLj"}' \
    > test.out 2>&1
eval_tap $? 329 'PublicCreateUserV4' test.out

#- 330 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'IHMzu3FVHdFuX2oU' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "7kO9wM3v8ApQgmLY", "policyId": "RcAfNL0uMACYYKH4", "policyVersionId": "r4C4CRgcRoHdWM3p"}, {"isAccepted": false, "localizedPolicyVersionId": "UgWiSxaLUtKNUfpb", "policyId": "Ufa3minTD5NxhTd5", "policyVersionId": "C4LVXZwmREBLdJMJ"}, {"isAccepted": false, "localizedPolicyVersionId": "ypj0r0gZsckEPYb7", "policyId": "RphwJHI1QVYz1qls", "policyVersionId": "DNN1wCcxX6V3bIRn"}], "authType": "EMAILPASSWD", "country": "pTM3xrDstFoXUD9L", "dateOfBirth": "tbTE5W58h66DmK6A", "displayName": "rRrzsyN0hWKym4Er", "password": "poQGiMSXZm1XN1XE", "reachMinimumAge": true, "username": "TqNb7fw6G5QK7bVf"}' \
    > test.out 2>&1
eval_tap $? 330 'CreateUserFromInvitationV4' test.out

#- 331 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "yvVQAFvRv01e3kHO", "country": "NVfZWUPKVJbtOxoH", "dateOfBirth": "dJEHWaPFPW0SdomC", "displayName": "gcabUEvaFiXnW20X", "languageTag": "NI3CJ5KbCVJnnJGr", "userName": "R2fQpFF7BN6O2rcV"}' \
    > test.out 2>&1
eval_tap $? 331 'PublicUpdateUserV4' test.out

#- 332 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "KmCpL9ldOJUNC7tP", "emailAddress": "sWQuJLedF7qoaLaV"}' \
    > test.out 2>&1
eval_tap $? 332 'PublicUpdateUserEmailAddressV4' test.out

#- 333 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "f9RhPXmapyDZLtBa", "country": "CakaMfBEgbiBiu5I", "dateOfBirth": "AX6V0xq6wtJrhkRT", "displayName": "3r878jnzySjqeE1B", "emailAddress": "BsmgLvwOa6jrU6rJ", "password": "Hg5ePaJ3x9YIjKLd", "reachMinimumAge": false, "username": "27FI0Om96GQeO3Cq", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 333 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 334 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "lu7GpuiORxfB7yq4", "password": "m2Xtal2XfITC9a0y", "username": "pvkvWYuaYgSB8EnT"}' \
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
    --code 'J9P3yy41hHiVd2IJ' \
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
    --code 'm6oCesSMWS6zGRvT' \
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
    --factor 'qRYiM0UqmEZsoMjF' \
    > test.out 2>&1
eval_tap $? 348 'PublicMakeFactorMyDefaultV4' test.out

#- 349 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"emailAddress": "5mh2zAv1JfVpUmaN", "namespace": "uDEiMkHLuaHRW4Xf", "namespaceDisplayName": "aVCKPnCxL1krsmIy"}' \
    > test.out 2>&1
eval_tap $? 349 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE