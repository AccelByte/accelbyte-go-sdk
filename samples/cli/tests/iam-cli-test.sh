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
echo "1..357"

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
    --body '[{"field": "AGBZH5BIOYAn1oQJ", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["cQdhm7mEf61y5Qvf", "Dk36DdNM7i0CJsOf", "HU5QPZ0mwQFpDsGp"], "preferRegex": false, "regex": "SiBZOAYZPSMWm82p"}, "blockedWord": ["mmYcdn02UQXoduqC", "ub1PBnbnF3BzovEm", "gcGNQtRFikhW1PEV"], "description": [{"language": "wI1YdNjVHU1KrNeS", "message": ["jVpIDfjd2NTFXPio", "TkhcOgS0GEDKss7R", "UNtTTLNAq24YlPkt"]}, {"language": "sf7kM66y5ux9gOyB", "message": ["iU0gPWuu8YkHJHVE", "XQw1uuJ0g49WeGyH", "mdhCAM4wMSbhOrfE"]}, {"language": "cdLpgVqrlVbqjwgB", "message": ["durXfeUXCTyP4xxh", "0P0p4P7wtcUaUD09", "CZV89jN0KljdqGex"]}], "isCustomRegex": true, "letterCase": "CRzbYR0R5t6EYUsH", "maxLength": 67, "maxRepeatingAlphaNum": 34, "maxRepeatingSpecialCharacter": 52, "minCharType": 17, "minLength": 42, "regex": "65ievLscChG5jMZI", "specialCharacterLocation": "BOxt14X93IPLY9pt", "specialCharacters": ["AQNxLngwulT4Q0tv", "FroGWa9pZUWo5B58", "o3ZGZvzZpJfwAfBz"]}}, {"field": "lZYlDPGTWOpA2zxe", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["voEvagvHbEGpeuvs", "vofA2WNlwIe37g8b", "u774wMH7icnYvjFP"], "preferRegex": false, "regex": "ySfNcTbbs8fzFcfm"}, "blockedWord": ["sBqIoVcnYNLisbjR", "zfpeXumWX6Lg3yuY", "SpqppMJRkB2LMdc0"], "description": [{"language": "58Vi3d1Qs1SBLMJz", "message": ["fWMALNkXnYfCfNd7", "6v0XVNZw0En66wT4", "qoUwuvR9CTMDkjyE"]}, {"language": "zGEfY9glRURLU2NV", "message": ["Sk0W4VykBQQqNCF4", "oh2bXDJhTdex66cE", "BczRVga8uXgy5zSU"]}, {"language": "7t6aKsmOHDwDPFkv", "message": ["E3rIWicmQwuh6mtd", "45G6l0zFOAbhNMpB", "ZI2NrcdyVISmHact"]}], "isCustomRegex": true, "letterCase": "IULofUAvv94JfcI8", "maxLength": 6, "maxRepeatingAlphaNum": 33, "maxRepeatingSpecialCharacter": 27, "minCharType": 51, "minLength": 20, "regex": "pbokIpE7Ljb6AChM", "specialCharacterLocation": "1cYj4rvQj0AE3S6s", "specialCharacters": ["dN87mYX4f2nS3Kox", "LBh3qmNGdROyMApf", "BMgi0HIG7MxF9RGj"]}}, {"field": "VsCLF2I53Y0ljS5z", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["jEUUNUf4lQZNHMos", "L8l5HNATF1HOOkR1", "xE3uhOCDmKdcQouV"], "preferRegex": false, "regex": "kKFxo78TAOqzfeiR"}, "blockedWord": ["zFIwByOJtaBB1Di5", "9kRPbWsLRPP5JCcU", "oGsCKur4G7PyittA"], "description": [{"language": "Xz17A4eNuduDNFDh", "message": ["tpiDaUUcHMM6HgDx", "bDEBQwq9LfLwOCsk", "X4EW5s8LzhCSuHdy"]}, {"language": "WurdF31XNLiHzSMG", "message": ["ICXNaCxiSJ6h7IIF", "5x9ORr6w6V6SkNU7", "NrLBuKckoFmWG3GC"]}, {"language": "Ay3yEbS0T3SQYZvz", "message": ["Ud5fscH4vEcN4RxA", "GKuxpfivuSyQeVVg", "OJF9sl1ayBbtywYN"]}], "isCustomRegex": true, "letterCase": "5PhYkySAtV4Q0Yeq", "maxLength": 95, "maxRepeatingAlphaNum": 74, "maxRepeatingSpecialCharacter": 5, "minCharType": 38, "minLength": 71, "regex": "vvMKzZpDleqlMyzM", "specialCharacterLocation": "Lyxw4CMCWb2D6Tmq", "specialCharacters": ["Lnmlirwv16rfFSB2", "kPysY1EAaEXZsHzg", "4RgXVeSfJ3AY7Ii5"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'cWHE6v4URgpi1KbL' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'MIp66RpSLivZGKRh' \
    --before 'oiuCPnK8cEizq0Tv' \
    --limit '63' \
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
    --body '{"ageRestriction": 78, "enable": false}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'VMy2DzFqUBVU8AWo' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 32}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'vZV2Gc4jDzefjIhB' \
    --limit '99' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "WixeQPZ2CflEtF8w", "comment": "9AZ1bHLp4s67aakK", "endDate": "K3BZNfY9wELsK94A", "reason": "REMFpXaE5tyjtzLh", "skipNotif": false, "userIds": ["VicD35juAoDMOQkK", "9804z1v8tbhJZ9XX", "H2vEm9ExSAL4mEAv"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "ybZglttC5ugdgUNf", "userId": "bOpZ2My2JhYNmJ1a"}, {"banId": "ptH6zldD5NFl5KUu", "userId": "J2aSjqhUAPtbVW93"}, {"banId": "OBdT7GsXFrxatdW7", "userId": "PaGqPuenL0IemO01"}]}' \
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
    --clientId 'Qd8bZZmKBHW8fdlG' \
    --clientName '3vZGYWktTsSdcXoZ' \
    --clientType '4EW2mPhFmqIeX6Hw' \
    --limit '18' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["oV9uWRapXlVyzqzV", "5Fs7dN66DmcArbZl", "u5CSkghI8bCWqIUb"], "baseUri": "3yPbFEIEcgXNOWFZ", "clientId": "3XgHxYYPxzCwocyk", "clientName": "elMqa1ywH7A7UREO", "clientPermissions": [{"action": 24, "resource": "Uc4FhNeWJeXXygkf", "schedAction": 28, "schedCron": "QpPD6r2d0OWsICnw", "schedRange": ["sQlgRb0nwxACrK4F", "P6EMrQp2lvRBdCzm", "5f4lR4BqR6VcgPwt"]}, {"action": 74, "resource": "wrP7d5CMZbCDYHrz", "schedAction": 70, "schedCron": "fe5M4RVLCKSnjkR2", "schedRange": ["Za27yJYQhfINmmCI", "Qy5I87p6qtz1C11P", "rB0lc8rayFjw3fhH"]}, {"action": 7, "resource": "KvsqImZC9gfWOliw", "schedAction": 89, "schedCron": "UUADpBCqrfRm58fa", "schedRange": ["gKBbUsrg0JdQXQrW", "LMtgcTBQAyTEQqaJ", "RGTeek9ImuAx2jj1"]}], "clientPlatform": "SGapyB1yNZnJ6Bsc", "deletable": true, "description": "tR0IoqHsI5Ihpk01", "namespace": "mdfEq2O1DfuFTtLO", "oauthAccessTokenExpiration": 4, "oauthAccessTokenExpirationTimeUnit": "98SZ5ii3a17ph82k", "oauthClientType": "kBVje8XBiAfTNZYp", "oauthRefreshTokenExpiration": 30, "oauthRefreshTokenExpirationTimeUnit": "L6r3KMwGoKdQ9kYP", "parentNamespace": "sKCy7d5kELQbwrTd", "redirectUri": "yd4BloEvm3LHrEZC", "scopes": ["bqBXHkJugis6Pva4", "R9uxG746sJjJQvbT", "U9A1z3eSSGzXC3ew"], "secret": "VDQ0WV0sOIlV4nd6", "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'nNhRZxLepdsnnwCu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId '79jzhmpe4rFsPSSq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'u09yUK7Rb5KKWaWQ' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["EmOC0tlbOmxqtOwv", "7Y7aVFqZvPxSNjze", "WV5dxuKcx7sUmLkB"], "baseUri": "48IgRcmPZYF6lM7A", "clientName": "XvAlJzNWvg9Xnt1N", "clientPermissions": [{"action": 46, "resource": "ZJ4iQEs9SG3MUeuS", "schedAction": 53, "schedCron": "GDHJbY3d3NNyzpJU", "schedRange": ["xYTV9qVujn3IX12V", "ITxZHKDxFTkPqGlV", "0dHoOphDbf10PDHD"]}, {"action": 16, "resource": "o4rBTIhxMF3bO83S", "schedAction": 53, "schedCron": "e3FcXG0Qct9KGgJ1", "schedRange": ["krryz9ALy8rgr5i0", "VOCHrzf6ZAqukE5Z", "ApgmGNo3QtEJjHIs"]}, {"action": 61, "resource": "zbaViP9bdK3cYB2O", "schedAction": 64, "schedCron": "MZ9iQ9iLxHSyI9CB", "schedRange": ["7RrRArhWKxRcuGIw", "4i9P674zbiipp67T", "8bybY2kG977wAeWK"]}], "clientPlatform": "AzhPFdNIjXiOeu37", "deletable": false, "description": "x6wMrLLas6SQJGDb", "namespace": "zvA19JADAmqbmlIf", "oauthAccessTokenExpiration": 95, "oauthAccessTokenExpirationTimeUnit": "akmdNf7WAmDq3OHQ", "oauthRefreshTokenExpiration": 22, "oauthRefreshTokenExpirationTimeUnit": "29zak1J6YNU493Sv", "redirectUri": "8HExKeplfUVWpfVt", "scopes": ["y0Py0MXcQv3w2ECY", "CYoXdCKowlPCGEtN", "Cd1Zt2r1cZ0HVkoL"], "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId '7CJCifkMzrzRSEUH' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 11, "resource": "dyndPhgmjspu3PIi"}, {"action": 43, "resource": "kpxeeDnkrTnxGibq"}, {"action": 47, "resource": "BM1BlYxNuFJb3JYe"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'k68yvuN15wDGeq0A' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 65, "resource": "paIY07UQi3AN1Gv2"}, {"action": 84, "resource": "8ok0XhAV82NwZNmu"}, {"action": 29, "resource": "oC7UhRqnMTSWjaQI"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '41' \
    --clientId 'xg4RJecOuXnvSIrG' \
    --namespace $AB_NAMESPACE \
    --resource 'uV9orap23cx3CpOS' \
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
    --offset '77' \
    > test.out 2>&1
eval_tap $? 130 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 131 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'FveH2HLDiPIkmJQe' \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'gC1wv8bOHHv2sFpV' \
    --body '{"ACSURL": "rKepDoYQpBn4xlc0", "AWSCognitoRegion": "L4g4WS2bPRwt7UtN", "AWSCognitoUserPool": "KuYnQ7fzHhqNBJI6", "AllowedClients": ["YGjbFAs1pSkdz7Kg", "9N6b23CJqblV2nwj", "hvdxZ2Ki1cTcksRb"], "AppId": "Dzn6cXNxNcOLVcEi", "AuthorizationEndpoint": "pzQNp4xU4qxVWJPX", "ClientId": "Ss8dswY2dnIPJuKG", "Environment": "01u6gTf6MM9qGmZd", "FederationMetadataURL": "nqGZEQPWknSn2Y6Z", "GenericOauthFlow": true, "IsActive": true, "Issuer": "5Aeb4VQbaF66BjpU", "JWKSEndpoint": "4S6QpXHgWng22lAf", "KeyID": "R2RgmFfLN95FfqQk", "NetflixCertificates": {"encryptedPrivateKey": "oy9kjOLy6akC0K2o", "encryptedPrivateKeyName": "FrD63QsHZzLlQReC", "publicCertificate": "0sSVPyCTejlEwitg", "publicCertificateName": "aWXJhyoDX6V03ugt", "rootCertificate": "lltvdkIpb6QDWvwI", "rootCertificateName": "uEwccEyNLGFcyTUO"}, "OrganizationId": "qFFPNYHE3KCP8IIC", "PlatformName": "H8ObPKbXJTWyLmhk", "RedirectUri": "jALtlHS6vy5xsppK", "RegisteredDomains": [{"affectedClientIDs": ["o3Y0ietsNSMyYn0E", "E2G9kAB3gwrUqf1d", "lDIfy9YAi8acyo5v"], "domain": "jjtjoH042APlfq2O", "namespaces": ["ZFYtwUKtWNldm2X1", "7TRzLTNkmINH0gqQ", "2JpMSZe5Ye1MR5tI"], "roleId": "lwZUdUSLp7tLzUIR"}, {"affectedClientIDs": ["rxIVLej4wt9M9ao2", "6ezrS2Pb04Rvy8zB", "7uHd8bpeS1dwzkOc"], "domain": "JutxmSsUqxJCEPiT", "namespaces": ["8NbqENhXlaGUjtnd", "gfdareYctLsQaSzG", "AWyJejiDkOXed78U"], "roleId": "fCLoDth0EMcoXHrM"}, {"affectedClientIDs": ["CxCSXjLtGAa6e6D2", "5S8qBkFfAY0YzvFp", "jayARg09kq9tdNZB"], "domain": "aDPwlTzhRuBg4Scb", "namespaces": ["0gRWfsuyOErPv0zf", "6qOTjOmWEVR0B4RY", "D4Pa5rXBjEzoxq47"], "roleId": "YH6dTQiwY4Bh5dDo"}], "Secret": "hIn5yJXLaS1Gz0On", "TeamID": "VZV4HlCYaYQoMqZj", "TokenAuthenticationType": "9eG4zVYPeljk5085", "TokenClaimsMapping": {"A2VaNTo1MFftYRcT": "Cz2s27EZvEexXULX", "d1ZZVilHMKRPXFfw": "kKuaWDCTpIFbWqxg", "rrQv8CMxijxoskC3": "wWv86Aiov1Czv2i8"}, "TokenEndpoint": "HsdcWTyuju0bnKHd", "UserInfoEndpoint": "S0oAFMVSHLyZuoKq", "UserInfoHTTPMethod": "P33AiYNkz9tBYzFZ", "scopes": ["zTmiMBH0hShYIRvH", "9xDAMX1AY41LtNwP", "XeMTdnFJYKJ8JpZ5"]}' \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'bYnJa5cFWOfHwWdV' \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'kmHUPuWbkb7DWFJr' \
    --body '{"ACSURL": "81WoABoVSaXVAC2K", "AWSCognitoRegion": "HhgiDeAiX45lgnXn", "AWSCognitoUserPool": "GR6i4ODTN0h56Qni", "AllowedClients": ["oxYAzJ6V9cHdeSev", "XhcYPX57K8WSZjTE", "a5YMGWSMagRQAcqn"], "AppId": "VG058qHHc0vjaIbb", "AuthorizationEndpoint": "3wLLL6TPcNqFtXXX", "ClientId": "SCCJmOD1lg9l15ZD", "Environment": "10m6eaYRctnFsnwv", "FederationMetadataURL": "PASO3gd5yRFt2bh1", "GenericOauthFlow": false, "IsActive": false, "Issuer": "0kVLDBF4vT03zZ9y", "JWKSEndpoint": "2JFMAflal2odnkOD", "KeyID": "dRAz9RoNZiN4eHyk", "NetflixCertificates": {"encryptedPrivateKey": "U6Uzx2CZiuFaNnc5", "encryptedPrivateKeyName": "uiPnLJNTfn66XMpj", "publicCertificate": "A2GDGNfOUDRBZj2G", "publicCertificateName": "Vf7it81kMY8Oppi1", "rootCertificate": "n4EVp6uMz5X4VbKU", "rootCertificateName": "QVILQL5nvg177lK8"}, "OrganizationId": "FEQtdhxsBwo5VSVg", "PlatformName": "bJq3qpzsdSSYU7aU", "RedirectUri": "s2RkGJVEFmdvcywK", "RegisteredDomains": [{"affectedClientIDs": ["qqZ2vDphwXFrgpsR", "Zdryt8K8K5mYzwrs", "TNfaiCGCuLNKx6oZ"], "domain": "PJMFug86YVrVYUMv", "namespaces": ["2gnqTK5rge4tM4SH", "7Ak6M5EHorEWeBHB", "FaJ5jxWAaQNQ1RJ5"], "roleId": "3oyOuscpbKuZBq64"}, {"affectedClientIDs": ["7dD7dmwoIpzoZgZ5", "kchAkKsuADo7MFGE", "7DZAU0x4P0GXsUcp"], "domain": "nqiUl8l4mk8ttfxW", "namespaces": ["juqsrEoWMvoxR1Fe", "EDVrkFfw2p9aVCyC", "Nf00Ofkr8oG2ywNl"], "roleId": "AcYNwv3zJLSYYmkt"}, {"affectedClientIDs": ["fDv2AjcMhUDu7Xi7", "GVKoZuZGrZV6eOCL", "wj2Sunc1T2f3sLyn"], "domain": "1l7iOi4S3idqTWUG", "namespaces": ["0xWOQKF2XYduKkLU", "5ZFXWfmIH3wBsgMt", "xgqqGWY7uKXoqihf"], "roleId": "eDHQ5p2bbFNeU3qQ"}], "Secret": "Ql8MuCqJz2SVDixZ", "TeamID": "6k65JSMTvWhLAOty", "TokenAuthenticationType": "R3RvGCR0bC3nj16Z", "TokenClaimsMapping": {"tXMWjuZ4oytcut7t": "1KuDy1WuyFCtid0N", "mX4VpKUpNE6bkhqz": "8MRVn9sCS7S0qqg5", "is94apNUZD0Dvex2": "Nmq5eyrOfX3zwCsd"}, "TokenEndpoint": "ihLstNIAfkJqJI1s", "UserInfoEndpoint": "aeJXhs5yrfdYotnr", "UserInfoHTTPMethod": "Uky6CbFGVcOXtLat", "scopes": ["HrgVKlSv7wnvBDEg", "QUxy9bFE2lihmglB", "J4FWRfYkKLseqanp"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'GuWxSCb99k7dMAd0' \
    --body '{"affectedClientIDs": ["Ufi4NeIsukt3176I", "i8pwoelCLYPrLBip", "dOfFoCeRPDtuZQiw"], "assignedNamespaces": ["Sh5B8R7DRmOiomFx", "kB4Gd3oqD6ZxWxtv", "Z2vPri5G97Z6eJlU"], "domain": "YlY9xWNZ5dqH7enl", "roleId": "kXz94J6u7ANp5X3k"}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId '4UIt6wd50PAdpuNs' \
    --body '{"domain": "wX7HIWNAi8SNBqJg"}' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'FzXCHJ1JF6dh4KFy' \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'rd78zw69hTbB1L4j' \
    --body '{"acsUrl": "49eL0zVFVmxOzPQY", "apiKey": "542PqcPn6il79p2K", "appId": "BnLBIVlqbf7oT0Iv", "federationMetadataUrl": "gnHXRDdJTdBnOAk8", "isActive": true, "redirectUri": "UBW1AsqWHElOVYu8", "secret": "TYxA2NOHJCQTldpg", "ssoUrl": "nTSK3Io6hDawEHoY"}' \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ngTZvMHcu79ifjPb' \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'tA49sOpLmSsEnR7c' \
    --body '{"acsUrl": "TVOLxENhmRItORRo", "apiKey": "IgDBsCc0oH3Z88WX", "appId": "sVsEh8VGaLHoqDZV", "federationMetadataUrl": "07cYc8VBDNfm6BJa", "isActive": true, "redirectUri": "jmk1I5juoF9qskn4", "secret": "llbYg7MoquJTOoB7", "ssoUrl": "Ao6RmZ11q66nsjaz"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'iENlmOrPK6O5Z2N2' \
    --rawPID 'true' \
    --body '{"platformUserIds": ["iH1bhoCEUU5bvaJu", "GCgkPck3cWm3ZElp", "6fxScBvoXt5Pgsid"]}' \
    > test.out 2>&1
eval_tap $? 141 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 142 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'p6PgHqTTybxRlD1r' \
    --platformUserId 'k6wDDeGEi2C9mAbg' \
    > test.out 2>&1
eval_tap $? 142 'AdminGetUserByPlatformUserIDV3' test.out

#- 143 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'lWl0UIAjpt0VRyqd' \
    --after '12' \
    --before '33' \
    --limit '56' \
    > test.out 2>&1
eval_tap $? 143 'GetAdminUsersByRoleIdV3' test.out

#- 144 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'wQJFoaO42w7dIRzN' \
    > test.out 2>&1
eval_tap $? 144 'AdminGetUserByEmailAddressV3' test.out

#- 145 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'KBYwtIRwRpKuXsXl' \
    --body '{"bulkUserId": ["MNvMVUhqUBrWkMFg", "ysYVg4KLBnxtXCmf", "KlxI0QWKpAjgBxmH"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminGetBulkUserBanV3' test.out

#- 146 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["fLegdrnc4oaItei2", "GFIqJ2pPvPBnRGGF", "Vw5pPGJXQpKmzNKn"]}' \
    > test.out 2>&1
eval_tap $? 146 'AdminListUserIDByUserIDsV3' test.out

#- 147 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["TEDsmelyuNBypE5f", "0kVQwMBtpID7Efm8", "P599TL7dCbCt60cz"]}' \
    > test.out 2>&1
eval_tap $? 147 'AdminBulkGetUsersPlatform' test.out

#- 148 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["jsQOwMQxYHoqtcCI", "aKEPlKVA7JkpaS36", "PKITxMgleJy06Twd"], "isAdmin": false, "namespace": "8Qjyu8kY2Ndh3BOz", "roles": ["qAIqfw98E9DDZaRN", "rFal2axAgDBn1GBa", "7OI7k5XApeqhxq1g"]}' \
    > test.out 2>&1
eval_tap $? 148 'AdminInviteUserV3' test.out

#- 149 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '20' \
    --platformUserId 'nD76Ym6ecueqgedM' \
    --platformId 'FYu2vX27NToPhGz4' \
    > test.out 2>&1
eval_tap $? 149 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 150 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 150 'AdminListUsersV3' test.out

#- 151 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'lHfzZvvwEM04AGYk' \
    --endDate 'otHTw0BbW5Pf6xP0' \
    --limit '26' \
    --offset '34' \
    --platformBy 'YDf7NYWEUAIY7k9v' \
    --platformId 'v9aSt9JdbAmCf2Kf' \
    --query 'YqHbXwHDDh0bdZMc' \
    --startDate 'o2i5aN7wqlFX2Mhg' \
    > test.out 2>&1
eval_tap $? 151 'AdminSearchUserV3' test.out

#- 152 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["dFWnuY8xG41e6Npp", "Vv7tVIgwTXMvorTU", "n9EyCvqrDpsLjQ6L"]}' \
    > test.out 2>&1
eval_tap $? 152 'AdminGetBulkUserByEmailAddressV3' test.out

#- 153 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ijExyRYHLCxFEaJR' \
    > test.out 2>&1
eval_tap $? 153 'AdminGetUserByUserIdV3' test.out

#- 154 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UQdUEqGE6evW5d0q' \
    --body '{"avatarUrl": "OfTEWNU24l8Iubnt", "country": "az65PHW1bIhWH9SO", "dateOfBirth": "Xx08izxrA5YS9OAM", "displayName": "mLm0bUojBCo2OvEm", "languageTag": "r4PHvZACNPftwBC5", "userName": "fe0I2XGAUML78aHO"}' \
    > test.out 2>&1
eval_tap $? 154 'AdminUpdateUserV3' test.out

#- 155 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TKFlfqkDdBXmoG4l' \
    --activeOnly 'true' \
    --after 'eghrWRtejuS4NgTX' \
    --before 'n1WcdwrmqezZO0xq' \
    --limit '14' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetUserBanV3' test.out

#- 156 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BWzO5I7LyPA09FBt' \
    --body '{"ban": "4qncQ9A4MMyRDySS", "comment": "xiT6wNigte77JIll", "endDate": "dmugio8A7rQP34dW", "reason": "efYMebDQfIVOWxMF", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 156 'AdminBanUserV3' test.out

#- 157 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'WRONxpEN3hcCN0uz' \
    --namespace $AB_NAMESPACE \
    --userId 'LvpRKOZ4SZVyqfWr' \
    --body '{"enabled": true, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpdateUserBanV3' test.out

#- 158 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'qKAT5WIMoZZSnuVU' \
    --body '{"context": "RaOAjhTDiYm35J1A", "emailAddress": "gHuHhH31Ee8JHvV0", "languageTag": "4IMdsnjL7smZhOwq"}' \
    > test.out 2>&1
eval_tap $? 158 'AdminSendVerificationCodeV3' test.out

#- 159 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WcENlpmzxxYuYajv' \
    --body '{"Code": "yeMuX2Psz5lmvgFJ", "ContactType": "bk38DIxGXPGsPaeA", "LanguageTag": "p7SsGslsJQeZoxFp", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 159 'AdminVerifyAccountV3' test.out

#- 160 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'u4aRO7FnTZr6V3Xd' \
    > test.out 2>&1
eval_tap $? 160 'GetUserVerificationCode' test.out

#- 161 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vaPGaz2sq89Xjt8e' \
    > test.out 2>&1
eval_tap $? 161 'AdminGetUserDeletionStatusV3' test.out

#- 162 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '6S0f0UDK7rj4iiN4' \
    --body '{"deletionDate": 11, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 162 'AdminUpdateUserDeletionStatusV3' test.out

#- 163 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eQV6fAPKA4VBT5kE' \
    --body '{"code": "tbhicgRVWzx3R8LP", "country": "97Xdmz0Q7SAUSWNf", "dateOfBirth": "2tJcDxzMMUpzbX67", "displayName": "oKgARDB5TuM95Sib", "emailAddress": "XzvIj4ejED3Tyfao", "password": "OdM5Z8ILj30Mexvp", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 163 'AdminUpgradeHeadlessAccountV3' test.out

#- 164 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gN6wGK3ZNeTa3xvy' \
    > test.out 2>&1
eval_tap $? 164 'AdminDeleteUserInformationV3' test.out

#- 165 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jEhJzKuszBWdBVbj' \
    --after '0.8504470670590204' \
    --before '0.48118134384717937' \
    --limit '71' \
    > test.out 2>&1
eval_tap $? 165 'AdminGetUserLoginHistoriesV3' test.out

#- 166 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'cwUXQ4Kt07ZcBfFd' \
    --body '{"languageTag": "WUjDQ0tesivwe9mn", "newPassword": "zksD8og1aQtN53kW", "oldPassword": "SOevRd8iEjzdTzBk"}' \
    > test.out 2>&1
eval_tap $? 166 'AdminResetPasswordV3' test.out

#- 167 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'cdMT3yeDzBMU5QcV' \
    --body '{"Permissions": [{"Action": 9, "Resource": "kfgdxefTpt69AYcL", "SchedAction": 95, "SchedCron": "kCwZEQJvKBU9d1y4", "SchedRange": ["lNdQVEMbGC47k7kh", "FpVehOJSO67rMPgp", "ha3Vt5L6cPqEhaTT"]}, {"Action": 36, "Resource": "uCqdYfyBc5veMEWZ", "SchedAction": 71, "SchedCron": "3NNOIAt8Gegq3MY3", "SchedRange": ["snwkUwsetJh0O4gO", "8C7lKOJ6P8kSlkWT", "73wO6KleJdIEuxbo"]}, {"Action": 40, "Resource": "hA2iRSrqkKI9uVxb", "SchedAction": 60, "SchedCron": "M1XPimhh5gN6O5CB", "SchedRange": ["v3w3eX6DudPahiAx", "fY20XUfZQ2Oy4XsY", "4KxVep3TAggoC6fb"]}]}' \
    > test.out 2>&1
eval_tap $? 167 'AdminUpdateUserPermissionV3' test.out

#- 168 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'cbwfCZgsfFCI5PuR' \
    --body '{"Permissions": [{"Action": 67, "Resource": "K2USE5uZ3DmtZH7R", "SchedAction": 16, "SchedCron": "TZLsQ9KxcOpojKIY", "SchedRange": ["XWp33ITKBaNS716C", "3DLv3DiuUTjlLW0b", "OJYmantsufMcBNRw"]}, {"Action": 25, "Resource": "IA9XI44pljNOEFuM", "SchedAction": 79, "SchedCron": "Nv4ZMu5n1WBDmsMo", "SchedRange": ["9VpPZ32UMbnHjVMn", "xtr9YudoQKsqvZA7", "c1bD0pndMhzkaXwx"]}, {"Action": 73, "Resource": "pgFkMFI9DgkTloQS", "SchedAction": 19, "SchedCron": "sga3iZ4a8d0xtZ9w", "SchedRange": ["P9KuOCg4nuZPI0CL", "BTKHjstAvSG5mfuU", "mtJOPvqEv0XOcSyc"]}]}' \
    > test.out 2>&1
eval_tap $? 168 'AdminAddUserPermissionsV3' test.out

#- 169 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'F5dVmh0cebqy4TBM' \
    --body '[{"Action": 77, "Resource": "A7gxVO0gZpTs6LBx"}, {"Action": 46, "Resource": "9yqgIYH4lKXfKVKL"}, {"Action": 51, "Resource": "UXskUqZsYZGRLzfY"}]' \
    > test.out 2>&1
eval_tap $? 169 'AdminDeleteUserPermissionBulkV3' test.out

#- 170 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '27' \
    --namespace $AB_NAMESPACE \
    --resource '7Stb7bOAq7rCfhuC' \
    --userId 'txkt9vvYKjTcPiUK' \
    > test.out 2>&1
eval_tap $? 170 'AdminDeleteUserPermissionV3' test.out

#- 171 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xOck8JrUN3SGXmru' \
    --after 'sNGg1x3GVxoYBXEq' \
    --before 'W8IAUQmYb8WaXMpZ' \
    --limit '94' \
    --platformId 'Ii0WCDsBCMVUcHeN' \
    > test.out 2>&1
eval_tap $? 171 'AdminGetUserPlatformAccountsV3' test.out

#- 172 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'NyVhKlkQyi6q7Gu4' \
    > test.out 2>&1
eval_tap $? 172 'AdminGetListJusticePlatformAccounts' test.out

#- 173 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace '636ERXugdpXtX8Dz' \
    --userId 'WDdTYXmkgM39zDEg' \
    > test.out 2>&1
eval_tap $? 173 'AdminGetUserMapping' test.out

#- 174 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'Atyxw7b7sNtyRWCV' \
    --userId 'vVcdyGHLBDOBA39M' \
    > test.out 2>&1
eval_tap $? 174 'AdminCreateJusticeUser' test.out

#- 175 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'Pr3ImZnUpnZ354GR' \
    --skipConflict 'false' \
    --body '{"platformId": "HKpIrpMX3ColbFF8", "platformUserId": "HdFIPbhrUOvOxAwO"}' \
    > test.out 2>&1
eval_tap $? 175 'AdminLinkPlatformAccount' test.out

#- 176 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'JRCz7F0VkkqPicSN' \
    --userId 'hBXp0yyKEet2exgx' \
    --body '{"platformNamespace": "UOhe7NA27msEEsRX"}' \
    > test.out 2>&1
eval_tap $? 176 'AdminPlatformUnlinkV3' test.out

#- 177 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'wUwUocZpklS9bc4v' \
    --userId 'UfrPNGq4Wma33qO2' \
    --ticket 'IbmpayRQZR11DlK5' \
    > test.out 2>&1
eval_tap $? 177 'AdminPlatformLinkV3' test.out

#- 178 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'CSvT2T2oZfdFKyfQ' \
    --userId '8xTjtKNg3VpYrjat' \
    --platformToken 'q3riyX19fByWckeY' \
    > test.out 2>&1
eval_tap $? 178 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 179 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'UGk4wzZOGYtPPCL3' \
    --userId 'rs5nLSePxptftX0w' \
    > test.out 2>&1
eval_tap $? 179 'AdminGetUserSinglePlatformAccount' test.out

#- 180 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wR71OULA2tfCPdCG' \
    --body '["IDrdaM3S9ZoXlph0", "h2L2MwVe2LgkeX2I", "QZH2AXqwFYOLxiUH"]' \
    > test.out 2>&1
eval_tap $? 180 'AdminDeleteUserRolesV3' test.out

#- 181 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'HPY59DhOlYizcCga' \
    --body '[{"namespace": "DD4Sys8nkdo5XOp2", "roleId": "yqj5cGf3QcoM1G5i"}, {"namespace": "dZSKkvtONCpG3PXV", "roleId": "xkkcEvzFq6syxtYw"}, {"namespace": "SjPWTlgSa8lWWpop", "roleId": "kMvr1M6BSFfeOsjy"}]' \
    > test.out 2>&1
eval_tap $? 181 'AdminSaveUserRoleV3' test.out

#- 182 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'G0y1x2zHT0Vxfxfj' \
    --userId '81wdlzMctR22zoXA' \
    > test.out 2>&1
eval_tap $? 182 'AdminAddUserRoleV3' test.out

#- 183 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'KgEfxzhKGSEAQM6q' \
    --userId 'RP0zpytStQmRwc49' \
    > test.out 2>&1
eval_tap $? 183 'AdminDeleteUserRoleV3' test.out

#- 184 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pt1FyV3oSN3bBJFV' \
    --body '{"enabled": true, "reason": "5h9XervFxyx3EIio"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminUpdateUserStatusV3' test.out

#- 185 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'oLwuHUOg5F9k4sGF' \
    > test.out 2>&1
eval_tap $? 185 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 186 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'kcW0FRcXK0qffftX' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "bxRinKlpAjh1BsFs"}' \
    > test.out 2>&1
eval_tap $? 186 'AdminUpdateClientSecretV3' test.out

#- 187 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'sH8DyWfVv57OUgic' \
    --before 'F52mypSszGg9FkGn' \
    --isWildcard 'true' \
    --limit '80' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetRolesV3' test.out

#- 188 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "managers": [{"displayName": "JFbj5ecK0BJS4URX", "namespace": "skIpX5bN87v0vMMK", "userId": "bvjckuvXZGK5qsEN"}, {"displayName": "HVhLGB7fTGxIc7DS", "namespace": "vfYugZFt3diggYVy", "userId": "OxCfDqcAgVutYoLY"}, {"displayName": "4peHoIvn63Oi3UKV", "namespace": "3D7idECFQuVXxDdj", "userId": "sZY4O3ooZ8rJceoF"}], "members": [{"displayName": "OPAJyhfHLsICB0Dz", "namespace": "fmJeLlmG0HAZCx1V", "userId": "xWLUYlwJEhjhSflx"}, {"displayName": "D8DyBFhklnuhUWiN", "namespace": "obhAM00MdJ7i4GtJ", "userId": "LI8qdgORy1Hk9KMT"}, {"displayName": "C9rqxjV5BuTtcrvQ", "namespace": "EKmd2saDXNQVIPfP", "userId": "bo4VQq6X0MjcMzOa"}], "permissions": [{"action": 85, "resource": "XE48G43Zwifc4L8A", "schedAction": 18, "schedCron": "pPd8OFJikDlOm92g", "schedRange": ["mBaNWsZZNFON4tyl", "Om8c57TXERRXxCPS", "ku8HxfAcp10DPrJk"]}, {"action": 63, "resource": "3wl4XCxfmenOIiMe", "schedAction": 38, "schedCron": "sBoLnxA4Be7g2NIT", "schedRange": ["pWGl2X4TiRcBE1md", "o4PRSkm1ApEsmkqy", "mDJcg4zEO78KSMYI"]}, {"action": 58, "resource": "UbVOuItGBhbW7BdA", "schedAction": 88, "schedCron": "vn8siqDlUmOV01Cu", "schedRange": ["MWl2xIzpmmkdiKNQ", "eD9UrqRAQye2Ebpe", "qIIvPiWVz34bR22A"]}], "roleName": "RSQvUiycPNdc6Ibe"}' \
    > test.out 2>&1
eval_tap $? 188 'AdminCreateRoleV3' test.out

#- 189 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'o7g6jgOy2oHQI2iR' \
    > test.out 2>&1
eval_tap $? 189 'AdminGetRoleV3' test.out

#- 190 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'UjACbdyg37BOBvf9' \
    > test.out 2>&1
eval_tap $? 190 'AdminDeleteRoleV3' test.out

#- 191 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'W35NjWhXxlT4bZCz' \
    --body '{"deletable": true, "isWildcard": false, "roleName": "qrb0mq7STvObH12T"}' \
    > test.out 2>&1
eval_tap $? 191 'AdminUpdateRoleV3' test.out

#- 192 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'GehJyN1bxbhn32S4' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetRoleAdminStatusV3' test.out

#- 193 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'KeJSAxzF47LhO80y' \
    > test.out 2>&1
eval_tap $? 193 'AdminUpdateAdminRoleStatusV3' test.out

#- 194 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'UGCEm8mWAqGkJEce' \
    > test.out 2>&1
eval_tap $? 194 'AdminRemoveRoleAdminV3' test.out

#- 195 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'DO51PcrQBPgWcZMz' \
    --after '4LBkVsS1VAIgYxzL' \
    --before 'kcwK9DDiuG4u7QwN' \
    --limit '93' \
    > test.out 2>&1
eval_tap $? 195 'AdminGetRoleManagersV3' test.out

#- 196 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'fnUOZLZFdovPnhjK' \
    --body '{"managers": [{"displayName": "GTrPg9Gu3cKIvAiB", "namespace": "secr6wgt2wzeXA0w", "userId": "A8hZ3ZuuLCGiMewG"}, {"displayName": "caU9lyZA8pA5N2Dw", "namespace": "Axr7MomvQAFl2yUe", "userId": "3jZVsf2qkR1Duwqc"}, {"displayName": "qv5C5fCnW2tXoPj2", "namespace": "fYaHcKeCTDeYFjTN", "userId": "vNL2uXAO9rYTJ8Bs"}]}' \
    > test.out 2>&1
eval_tap $? 196 'AdminAddRoleManagersV3' test.out

#- 197 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'MwpZxWEsOLkNVTln' \
    --body '{"managers": [{"displayName": "Od24aPLG2pcVa2LJ", "namespace": "ho8VM6O7DqmE9OOO", "userId": "tlTVAnPiUNZUhcby"}, {"displayName": "rBHsavyr5YB0wqi3", "namespace": "xOcUxItMi6CqvDk7", "userId": "QhajrMJ5qshVdeKX"}, {"displayName": "h26s6068z56w0518", "namespace": "gk2MYkdaFd2ZJfHW", "userId": "ZCDVKomk2VyzylOs"}]}' \
    > test.out 2>&1
eval_tap $? 197 'AdminRemoveRoleManagersV3' test.out

#- 198 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'kp3AmlSex1zeUfRy' \
    --after '5VJVVqfklMUjfr6Q' \
    --before '8W4stNT6O7zhIbFm' \
    --limit '10' \
    > test.out 2>&1
eval_tap $? 198 'AdminGetRoleMembersV3' test.out

#- 199 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'qSHLwEQXiIEeQP4I' \
    --body '{"members": [{"displayName": "kkIm0ZVxkrrZCwsF", "namespace": "OjKuP18XNWP9NX0F", "userId": "EYookn1H3wCJzjHf"}, {"displayName": "OZpkgHzjs3tHyMAd", "namespace": "ME67xNNYT7wk4enI", "userId": "c1x44g0tpxRzeRCy"}, {"displayName": "gCkSxLXHcUDPJwod", "namespace": "NEJNQa61uGLG7lRM", "userId": "oNKepKVrPBdVerSX"}]}' \
    > test.out 2>&1
eval_tap $? 199 'AdminAddRoleMembersV3' test.out

#- 200 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'BpycqGhpDYE8gcYZ' \
    --body '{"members": [{"displayName": "16E2pvAbJJkorHNa", "namespace": "igyh3kpiOEmoPkYH", "userId": "Jy06xwxgwEyCWSa7"}, {"displayName": "alHjJzB9GmkaJ6HH", "namespace": "wVXDBPsQoSikdPD1", "userId": "zqDywqzlh471YWCw"}, {"displayName": "E2uNxWToocDpHptf", "namespace": "I7lkPjNBugnILOJ5", "userId": "iXdMo6xYuyv7SCJM"}]}' \
    > test.out 2>&1
eval_tap $? 200 'AdminRemoveRoleMembersV3' test.out

#- 201 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'sJlJgHjoz8ruaYIN' \
    --body '{"permissions": [{"action": 51, "resource": "rokwckPqfKCydAnh", "schedAction": 22, "schedCron": "LfBHSkmffShNicSY", "schedRange": ["WqmzRG9XEuwEIIgl", "aMA6x4VoEI0lrMTm", "BMr17moUt2befSg9"]}, {"action": 0, "resource": "zR3UK101Qc7Huy0f", "schedAction": 17, "schedCron": "tlBUwgnf88mpnMxc", "schedRange": ["tdYBu9pbJeXSx11y", "ynxWy0rZhFX99cNV", "8w2ElvdCu3ovuyzE"]}, {"action": 75, "resource": "XtXpM2jMcWXv8cAD", "schedAction": 3, "schedCron": "1ICQwtijYonlYuJK", "schedRange": ["BaVHSmCKGoCyTJ4y", "8gre3opyEZucUn5j", "ZzXvsCX037JZuO3P"]}]}' \
    > test.out 2>&1
eval_tap $? 201 'AdminUpdateRolePermissionsV3' test.out

#- 202 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'PW1DdmooxtBSAYaA' \
    --body '{"permissions": [{"action": 1, "resource": "wJQ1l5JR6ZtWE0s7", "schedAction": 29, "schedCron": "Okxp3yWtAtwf4PR4", "schedRange": ["ZtmYaiLgF6UFihsQ", "xULB4GyDuELNY4HX", "FY4IyecfUXYTlYin"]}, {"action": 62, "resource": "EnCihE2My29oVNvw", "schedAction": 82, "schedCron": "X3NMcxCSQ663Amya", "schedRange": ["3u7sjlYR02bruimL", "FTdvACfqIlkjT6cP", "BA4iA9rbfCAANEQM"]}, {"action": 28, "resource": "kWT53yDfS0Oiurjd", "schedAction": 11, "schedCron": "gGg6nu9qMeallXzs", "schedRange": ["aNpBTHhHxPPE8aT7", "cFRutRqHOAbg7KYX", "u9FRgsCHBNZkGAjX"]}]}' \
    > test.out 2>&1
eval_tap $? 202 'AdminAddRolePermissionsV3' test.out

#- 203 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId '4C08qDUfxGXtJRG9' \
    --body '["UphyuHSsXgAQMNtT", "1eyHQ1mRidug6PEi", "UWD4fmQHJB9lOFH4"]' \
    > test.out 2>&1
eval_tap $? 203 'AdminDeleteRolePermissionsV3' test.out

#- 204 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '51' \
    --resource 'LdMwnasOddQgzapj' \
    --roleId 'l6GentfnAGtQRm4r' \
    > test.out 2>&1
eval_tap $? 204 'AdminDeleteRolePermissionV3' test.out

#- 205 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 205 'AdminGetMyUserV3' test.out

#- 206 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'aU97FE7YLnEBInfb' \
    --extendExp 'true' \
    --redirectUri '1JiHDmp1zWVnUnQM' \
    --password 'nYPcON17uiXgKw0y' \
    --requestId 'cIY1tVrxwhLTQ8o0' \
    --userName 'H4zWDCD6sg1ZNtsr' \
    > test.out 2>&1
eval_tap $? 206 'UserAuthenticationV3' test.out

#- 207 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'N8IZ2m49VFI7iw95' \
    --linkingToken 'uycWP2iaj5GYmHFt' \
    --password 'bLbGPiLRtbU8XBID' \
    --username 'Nj5TSCSqeVID4Vlx' \
    > test.out 2>&1
eval_tap $? 207 'AuthenticationWithPlatformLinkV3' test.out

#- 208 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'x6W7SCbery7fQEvx' \
    --extendExp 'false' \
    --linkingToken 'ESl0WVu7Z5tRvKhv' \
    > test.out 2>&1
eval_tap $? 208 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 209 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'CT9l37UTBXthCwTf' \
    > test.out 2>&1
eval_tap $? 209 'RequestOneTimeLinkingCodeV3' test.out

#- 210 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'x6DcbRfSIuuxNPg6' \
    > test.out 2>&1
eval_tap $? 210 'ValidateOneTimeLinkingCodeV3' test.out

#- 211 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'RQQKxFzcByiD4c98' \
    --isTransient 'false' \
    --clientId 'Z7FH5BTeBQrvx6LR' \
    --oneTimeLinkCode 'IppNWK4xZQrMrRBt' \
    > test.out 2>&1
eval_tap $? 211 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 212 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 212 'GetCountryLocationV3' test.out

#- 213 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 213 'Logout' test.out

#- 214 RequestGameTokenCodeResponseV3
samples/cli/sample-apps Iam requestGameTokenCodeResponseV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'tcJTk19gWsWZCETg' \
    > test.out 2>&1
eval_tap $? 214 'RequestGameTokenCodeResponseV3' test.out

#- 215 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'BImsFATm7aXJYaXu' \
    --userId 'jnIIZwF5ZG1cS2UU' \
    > test.out 2>&1
eval_tap $? 215 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 216 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'prHKMM1ZS0uEzBXv' \
    --includeGameNamespace 'true' \
    > test.out 2>&1
eval_tap $? 216 'RevokeUserV3' test.out

#- 217 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'AFWy3CJoK1W0mypA' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'QnZAFdvseAOBUki0' \
    --redirectUri 'zfa6tHYmI5v0tq5g' \
    --scope 'l0le4TAh0TMkF6Eq' \
    --state 'iTyYUtCfiPdI9pye' \
    --targetAuthPage 'QLMV5ohoGTW9Njbs' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'EmpmzDmTYWeQTmSL' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 217 'AuthorizeV3' test.out

#- 218 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'cwqjM5LyOD2jif5e' \
    > test.out 2>&1
eval_tap $? 218 'TokenIntrospectionV3' test.out

#- 219 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 219 'GetJWKSV3' test.out

#- 220 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId '50zkJMtOTnrv6nTK' \
    --factor 'k5w6zlIYAjsMxbug' \
    --mfaToken 'DIyz1rvT3vgX64BI' \
    > test.out 2>&1
eval_tap $? 220 'SendMFAAuthenticationCode' test.out

#- 221 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor '0hoOna5fsqVZCUTV' \
    --mfaToken '7KV2VjS4qg6z5tco' \
    > test.out 2>&1
eval_tap $? 221 'Change2faMethod' test.out

#- 222 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code '7uaK9OeDicSsw13d' \
    --factor 'WUVvwlWCdVOcZseQ' \
    --mfaToken 'i4uS5ckOnzYETGDm' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 222 'Verify2faCode' test.out

#- 223 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'gR53xI3lLzx9RpNl' \
    --userId 'sCGooCFKFoeAmqlG' \
    > test.out 2>&1
eval_tap $? 223 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 224 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'Z3Hidtl7DoDuSifa' \
    --clientId 'rcbkhH7024ouCUBq' \
    --redirectUri 'HwqoyUa8NrZoPJG2' \
    --requestId 'juWUATTBTER2P1gS' \
    > test.out 2>&1
eval_tap $? 224 'AuthCodeRequestV3' test.out

#- 225 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'ORLwgUoTeIQ1hgLR' \
    --additionalData '5oMqT1AM0P4ezKoM' \
    --clientId 'Zttdmnj7VAv0f2vi' \
    --createHeadless 'true' \
    --deviceId 'NTeiqKQyFUkq2nWj' \
    --macAddress 'PxqovFxI4FpQSXJn' \
    --platformToken '5XOLlThyEkBIqhk6' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 225 'PlatformTokenGrantV3' test.out

#- 226 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 226 'GetRevocationListV3' test.out

#- 227 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'QDrFqVd7FziPeUZJ' \
    > test.out 2>&1
eval_tap $? 227 'TokenRevocationV3' test.out

#- 228 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'EA2FVuW0bKBRVyYW' \
    --clientId 'ZriqErS5aWjyY9eZ' \
    --code 'PpjubQaQsoQkR4Zg' \
    --codeVerifier 'LSFqHqon6BQr7Aip' \
    --extendExp 'true' \
    --password 'PbApKy4zdS5dCcvx' \
    --redirectUri 'bmG8djjksYS2G4iC' \
    --refreshToken 'T1c5PMKCLx71TwHj' \
    --username 'AR8Tg0MigXIWUNDO' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 228 'TokenGrantV3' test.out

#- 229 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'uANqleCBq4JJw9mP' \
    > test.out 2>&1
eval_tap $? 229 'VerifyTokenV3' test.out

#- 230 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'FhbTKsvm2gWixt8P' \
    --code 'j1QwPnijq375NVT4' \
    --error 'pq1grFEhxzuPMHcs' \
    --openidAssocHandle 'LS0Wzx49AyNNVyWl' \
    --openidClaimedId 'aHKRlWeSRFM18Glt' \
    --openidIdentity 'dTGSPtvSeI6j6hq3' \
    --openidMode 'r8HvAnxVQ4ULY6gy' \
    --openidNs 'QGwIXNnFMG4ujWlM' \
    --openidOpEndpoint 'GgwGTYcmKEgJiYNz' \
    --openidResponseNonce 'eQOObhPQbGy49IAR' \
    --openidReturnTo 'FtHODbfRPJbn3kw8' \
    --openidSig 'B06Hw40P9IvcHUdb' \
    --openidSigned 'atsNHbHaEclAS4OA' \
    --state '47odBsA1R4q39WqI' \
    > test.out 2>&1
eval_tap $? 230 'PlatformAuthenticationV3' test.out

#- 231 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'RC48UhaFfOw9SXyY' \
    > test.out 2>&1
eval_tap $? 231 'PublicGetInputValidations' test.out

#- 232 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'nFVU22oSZ7YRG1b6' \
    > test.out 2>&1
eval_tap $? 232 'PublicGetInputValidationByField' test.out

#- 233 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'tbSoCKEcRWgCGSxY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 233 'PublicGetCountryAgeRestrictionV3' test.out

#- 234 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 234 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 235 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId '5EfwQhwyc0DrU7a2' \
    > test.out 2>&1
eval_tap $? 235 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 236 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'NbxgUcbxe0c0Dv42' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["7BB5oi69i5xzst56", "9pOk2AWY7Nh4MngT", "mrOry1yJZIuYrBCG"]}' \
    > test.out 2>&1
eval_tap $? 236 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 237 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ACXF3kyMEn2rvpyM' \
    --platformUserId 'd4mUDOIeF4HdjtmC' \
    > test.out 2>&1
eval_tap $? 237 'PublicGetUserByPlatformUserIDV3' test.out

#- 238 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'odUT8t5C0LXswUHg' \
    > test.out 2>&1
eval_tap $? 238 'PublicGetAsyncStatus' test.out

#- 239 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'XKcpWgRRIoTGCnOz' \
    --limit '57' \
    --offset '14' \
    --query 'pXECM9XAeiASi04J' \
    > test.out 2>&1
eval_tap $? 239 'PublicSearchUserV3' test.out

#- 240 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "uUPtjwnlRIcm2F1K", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "7XtzIZ2Pci1HVJfs", "policyId": "Y6DZdYw51kvQUQJr", "policyVersionId": "1fleyWrXoaVKymHP"}, {"isAccepted": false, "localizedPolicyVersionId": "bOu2VLxpC9Wp5wm3", "policyId": "EwFUPRVw4guOw7hz", "policyVersionId": "TBe9Yynl10tHaNff"}, {"isAccepted": false, "localizedPolicyVersionId": "70v5pP0gIjz3Opkm", "policyId": "viTpnQPzTK9M2laP", "policyVersionId": "C8mcK8ooP1vgxir0"}], "authType": "Bs4aLGGqJqC0AjkQ", "code": "31IJAvtTujJPI7OE", "country": "VnUo7b5CA17GcWhq", "dateOfBirth": "zDKoZ4ooASJSgwtS", "displayName": "ixEylybkhpLJFRd4", "emailAddress": "6S8aACLGoHPmsnsf", "password": "z3A9Y9doCjHukue7", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 240 'PublicCreateUserV3' test.out

#- 241 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'Jn3WbyxwqfSWeHrl' \
    --query 'Ylhoq0cCuX6UR6Xw' \
    > test.out 2>&1
eval_tap $? 241 'CheckUserAvailability' test.out

#- 242 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["PVmMTDZjatSpriAe", "8tylCyHE5X1MlIJA", "x7rGTYBdK9MNUP4M"]}' \
    > test.out 2>&1
eval_tap $? 242 'PublicBulkGetUsers' test.out

#- 243 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "rgnjYgzzi8RmkRqX", "languageTag": "UvpoyhscHbQkx8Qj"}' \
    > test.out 2>&1
eval_tap $? 243 'PublicSendRegistrationCode' test.out

#- 244 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "AcIS0z9HCJo3YnAT", "emailAddress": "Gj4E16S1h2KLAO4W"}' \
    > test.out 2>&1
eval_tap $? 244 'PublicVerifyRegistrationCode' test.out

#- 245 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "amOc7L0re6I3wNNX", "languageTag": "06EK77Kg8aKfkMKa"}' \
    > test.out 2>&1
eval_tap $? 245 'PublicForgotPasswordV3' test.out

#- 246 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'C29xLLyZzeINACzz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 246 'GetAdminInvitationV3' test.out

#- 247 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'rVy5qvq8KXW8QSB1' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "AMunIcLkiQ0Jy2QN", "policyId": "TFLbNZu7qjL3fJ2a", "policyVersionId": "z0DP3P9QGz2GyrUq"}, {"isAccepted": false, "localizedPolicyVersionId": "w3JG8Jf50VMAyxyx", "policyId": "0D4xUfcyC7UswOU8", "policyVersionId": "fM0F79N8JGIljl0E"}, {"isAccepted": true, "localizedPolicyVersionId": "ht3nxFsJZM5FF91S", "policyId": "QuiYFDgmYq0cR3Uv", "policyVersionId": "ZTGecDHNAbmc4jl1"}], "authType": "EMAILPASSWD", "country": "TFx6LkOAXwH65Y40", "dateOfBirth": "tmYJZn46xtCjPrtz", "displayName": "Z6dwilmzscWD6EfX", "password": "KLUZOeI427G3FG3v", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 247 'CreateUserFromInvitationV3' test.out

#- 248 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "dvHRBeOHfE4ydQQc", "country": "xIslutzV1s9Oq1Mr", "dateOfBirth": "LnLY9Nf7YoHf4f3i", "displayName": "NVdPs4yh2P6KpMLD", "languageTag": "zMnEI4wosYE3tt3W", "userName": "Hwzqd52ygq9II8zK"}' \
    > test.out 2>&1
eval_tap $? 248 'UpdateUserV3' test.out

#- 249 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "wdeFBtU9wGU1F6nU", "country": "6rbqPjKvZmqYvzH0", "dateOfBirth": "xpy4lwXaI1L4tO4H", "displayName": "DyI8FRgY3kkkodWZ", "languageTag": "3sX0E02SWnrS9zrn", "userName": "9WjJayU2zDSUwJvB"}' \
    > test.out 2>&1
eval_tap $? 249 'PublicPartialUpdateUserV3' test.out

#- 250 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "nlytetqpfiwbMbrH", "emailAddress": "NHUWsky7fsx4XTbB", "languageTag": "Cdj7gOayuc2FizFa"}' \
    > test.out 2>&1
eval_tap $? 250 'PublicSendVerificationCodeV3' test.out

#- 251 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "M535lidL6VKbSACL", "contactType": "WUjtDEw2WBvQWFoe", "languageTag": "yU0wUsgBAcNnpuiq", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 251 'PublicUserVerificationV3' test.out

#- 252 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "8tBSuEMZMTYvxwFu", "country": "a4YagD9jyaL9hh1u", "dateOfBirth": "YDXpxHV7yutCoPhj", "displayName": "IbXzHpCfUAXjZwyN", "emailAddress": "HXJ6n3z19mc1V0J7", "password": "EvnIzXJIbQPmFiNr", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 252 'PublicUpgradeHeadlessAccountV3' test.out

#- 253 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "N1CAwF4Dn3urXOco", "password": "awecuJb9lTCqGUqT"}' \
    > test.out 2>&1
eval_tap $? 253 'PublicVerifyHeadlessAccountV3' test.out

#- 254 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "9x0uhOEgcHJVoCwG", "newPassword": "qZINxqJonAyIx0EG", "oldPassword": "7rCvA9Soe2tqULvc"}' \
    > test.out 2>&1
eval_tap $? 254 'PublicUpdatePasswordV3' test.out

#- 255 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'qBVJrY3HLoZWBftK' \
    > test.out 2>&1
eval_tap $? 255 'PublicCreateJusticeUser' test.out

#- 256 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7mlrMPbmg9dzIlwg' \
    --redirectUri 'jbTgW75wermzcm0S' \
    --ticket 'YGoGxsc86hlKt50s' \
    > test.out 2>&1
eval_tap $? 256 'PublicPlatformLinkV3' test.out

#- 257 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 't8I2KAmCLQyKKvIH' \
    --body '{"platformNamespace": "6EDgGb9tIUnjnEy8"}' \
    > test.out 2>&1
eval_tap $? 257 'PublicPlatformUnlinkV3' test.out

#- 258 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'uu7lmlxJH3Kq4aO6' \
    > test.out 2>&1
eval_tap $? 258 'PublicPlatformUnlinkAllV3' test.out

#- 259 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '0yOlK5FVPb5m3DUt' \
    --ticket 'dziWhq6Nfy8sUe9D' \
    > test.out 2>&1
eval_tap $? 259 'PublicForcePlatformLinkV3' test.out

#- 260 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId '5BdLBWSDHDdSfleJ' \
    --clientId 'u5K00HiZZFDKwc1T' \
    --redirectUri 'dNdH1kjg9KV6GIEh' \
    > test.out 2>&1
eval_tap $? 260 'PublicWebLinkPlatform' test.out

#- 261 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'lgIVhDX3ndzyNJRz' \
    --code '8O6E4XZcPjzgp2zj' \
    --state 'UQadKmb5wtee1RNg' \
    > test.out 2>&1
eval_tap $? 261 'PublicWebLinkPlatformEstablish' test.out

#- 262 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId '69BCFiAB9bNNPcK7' \
    --code 'vZP5H9jE8sL8mGt8' \
    --state 'gm3rq094nNIFIKdI' \
    > test.out 2>&1
eval_tap $? 262 'PublicProcessWebLinkPlatformV3' test.out

#- 263 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "8FvAbBcDc8qnZteV", "emailAddress": "ZaOARZUuFbj1myZ5", "newPassword": "bxSHQyZAYTFgKs7H"}' \
    > test.out 2>&1
eval_tap $? 263 'ResetPasswordV3' test.out

#- 264 PublicGetUserByUserIdV3
eval_tap 0 264 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 265 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mQaJv1oEm8L9DxGw' \
    --activeOnly 'true' \
    --after '0dYgEF30eGliUkx5' \
    --before 'vTFRelYPnz6eNTnW' \
    --limit '60' \
    > test.out 2>&1
eval_tap $? 265 'PublicGetUserBanHistoryV3' test.out

#- 266 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'MrZZxqK3IDsY3kAA' \
    > test.out 2>&1
eval_tap $? 266 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 267 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PRVFxjXnXU0FAwRJ' \
    > test.out 2>&1
eval_tap $? 267 'PublicGetUserInformationV3' test.out

#- 268 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '1RDezZw9HIc2nf85' \
    --after '0.9388664850648513' \
    --before '0.6323971805464915' \
    --limit '0' \
    > test.out 2>&1
eval_tap $? 268 'PublicGetUserLoginHistoriesV3' test.out

#- 269 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'IFbGdMj0cMmPE2xy' \
    --after 'ExhnwyMfMsm6Sfty' \
    --before 'g0rhVjebBIXhGWHc' \
    --limit '58' \
    --platformId '9siSscE9lwhWIWZ6' \
    > test.out 2>&1
eval_tap $? 269 'PublicGetUserPlatformAccountsV3' test.out

#- 270 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bT13zEjwQrr4gC7c' \
    > test.out 2>&1
eval_tap $? 270 'PublicListJusticePlatformAccountsV3' test.out

#- 271 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'HU9CvSrTvkaPqSk2' \
    --body '{"platformId": "RmbwMsvOOEe3Yt3X", "platformUserId": "WamitWZh7q1WAXHb"}' \
    > test.out 2>&1
eval_tap $? 271 'PublicLinkPlatformAccount' test.out

#- 272 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'XhC5VbPqxaMcCdzq' \
    --body '{"chosenNamespaces": ["69C0hdg9n3neVmcg", "WbiIOJiu1uUjmIFg", "W8OGC3XKjqQiO0Wp"], "requestId": "rMrMeF8OJYYX0bEc"}' \
    > test.out 2>&1
eval_tap $? 272 'PublicForceLinkPlatformWithProgression' test.out

#- 273 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'p2MGXzuFlqDkGlF1' \
    > test.out 2>&1
eval_tap $? 273 'PublicGetPublisherUserV3' test.out

#- 274 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'y57No5Wklcth1IQk' \
    --password '4PPvvGEKSyJVuPsz' \
    > test.out 2>&1
eval_tap $? 274 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 275 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after '1hykIN6y674q1XTX' \
    --before 'dhoXU8pWp5UB08H5' \
    --isWildcard 'true' \
    --limit '67' \
    > test.out 2>&1
eval_tap $? 275 'PublicGetRolesV3' test.out

#- 276 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'J8x8lFhvs7cb2Cl7' \
    > test.out 2>&1
eval_tap $? 276 'PublicGetRoleV3' test.out

#- 277 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 277 'PublicGetMyUserV3' test.out

#- 278 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'RrxMk9I6bk3Gk6Nq' \
    > test.out 2>&1
eval_tap $? 278 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 279 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["4m3h63vwD3t0my18", "awSIR4gaX5xmDWXj", "3PDsBOMgSeZHLJhR"], "oneTimeLinkCode": "za0hqivdd3aPsXLB"}' \
    > test.out 2>&1
eval_tap $? 279 'LinkHeadlessAccountToMyAccountV3' test.out

#- 280 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "qs7otuTod2490Q0u"}' \
    > test.out 2>&1
eval_tap $? 280 'PublicSendVerificationLinkV3' test.out

#- 281 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'yzvdPLI6W99guHQ1' \
    > test.out 2>&1
eval_tap $? 281 'PublicVerifyUserByLinkV3' test.out

#- 282 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId '1PfLwpOEvGn8jP05' \
    --code 'H5FHeZwVf3xXX7RL' \
    --error 'JQi5eFlx5bA6kB8C' \
    --state 'RVsOLjSzUVMXdIa0' \
    > test.out 2>&1
eval_tap $? 282 'PlatformAuthenticateSAMLV3Handler' test.out

#- 283 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'NWC8SRH0DEocnx0M' \
    --payload 'pjvrNyHDA5oDptcJ' \
    > test.out 2>&1
eval_tap $? 283 'LoginSSOClient' test.out

#- 284 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'kC2lTgKfOiIgHNRh' \
    > test.out 2>&1
eval_tap $? 284 'LogoutSSOClient' test.out

#- 285 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --additionalData '3QgXTLGVFNYARrZ2' \
    --code 'zsqxmBvmgkZdoT9P' \
    > test.out 2>&1
eval_tap $? 285 'RequestGameTokenResponseV3' test.out

#- 286 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'mlSDJfduoVLmMPh9' \
    --platformToken 'SDbrbUgSq5rPaMEq' \
    > test.out 2>&1
eval_tap $? 286 'PlatformTokenRefreshV3' test.out

#- 287 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'PREJzDc2pF70gaCA' \
    > test.out 2>&1
eval_tap $? 287 'AdminGetDevicesByUserV4' test.out

#- 288 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'hr1OLgOI0WZB26ex' \
    --endDate 'uLAo8x4vwib1ew5S' \
    --limit '14' \
    --offset '70' \
    --startDate 'NMmnorrcynAjS1K4' \
    > test.out 2>&1
eval_tap $? 288 'AdminGetBannedDevicesV4' test.out

#- 289 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'UtmlyN24ke0AqTuR' \
    > test.out 2>&1
eval_tap $? 289 'AdminGetUserDeviceBansV4' test.out

#- 290 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "QBO6iHGGFh2FlmwY", "deviceId": "OBXXCuUSK0ZyVVUg", "deviceType": "9onHMd8FUQz8KUk8", "enabled": false, "endDate": "eGpJoxsOMo54ACvP", "ext": {"gsXbMHbcbkf8HqCZ": {}, "CTrW0YhUn1Oyj5ST": {}, "jeZLIQjmDUiIdM12": {}}, "reason": "Z2Wy5p3yLRqZ2EUN"}' \
    > test.out 2>&1
eval_tap $? 290 'AdminBanDeviceV4' test.out

#- 291 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'Q6rLqoYAlxgAdIwV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 291 'AdminGetDeviceBanV4' test.out

#- 292 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId '1vxPAgVvfRJ5poI3' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 292 'AdminUpdateDeviceBanV4' test.out

#- 293 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'qSVWltvFCAt55wMV' \
    --startDate 'HWH3MR9oYeqFfyWj' \
    --deviceType 'Of6aSsmWKdtiwuq8' \
    > test.out 2>&1
eval_tap $? 293 'AdminGenerateReportV4' test.out

#- 294 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 294 'AdminGetDeviceTypesV4' test.out

#- 295 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'kGTQK5kWHhOLmrkZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 295 'AdminGetDeviceBansV4' test.out

#- 296 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'cuCNinhUpl1a5VFR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 296 'AdminDecryptDeviceV4' test.out

#- 297 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'fypzwdyGqfkM14CR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 297 'AdminUnbanDeviceV4' test.out

#- 298 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'JwEYJg3YKnmo5C3W' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 298 'AdminGetUsersByDeviceV4' test.out

#- 299 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 15}' \
    > test.out 2>&1
eval_tap $? 299 'AdminCreateTestUsersV4' test.out

#- 300 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["ORpbbxClzqB8HBkm", "xXOtdxCheoQiz0YG", "Sk01ykgofyQLcSnD"]}' \
    > test.out 2>&1
eval_tap $? 300 'AdminBulkCheckValidUserIDV4' test.out

#- 301 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'gejiJoQ6eiQwzIm1' \
    --body '{"avatarUrl": "QPgs1uCJjUmlWoRY", "country": "WiVApMQYA1fL6p4b", "dateOfBirth": "hGDuhj4vFVaHYczN", "displayName": "kZAvbYH8Sp4oPuuL", "languageTag": "0w521bEYHxtymTGZ", "userName": "m59MJwnePcwzMenw"}' \
    > test.out 2>&1
eval_tap $? 301 'AdminUpdateUserV4' test.out

#- 302 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'YJE2vHFxsooZnA0R' \
    --body '{"code": "jyEM7uhGM6FImh6a", "emailAddress": "d1gTaTmJ9ZTsIZ97"}' \
    > test.out 2>&1
eval_tap $? 302 'AdminUpdateUserEmailAddressV4' test.out

#- 303 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'oDhbIcIL54xckPFU' \
    > test.out 2>&1
eval_tap $? 303 'AdminDisableUserMFAV4' test.out

#- 304 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'VpJeOsnClGrOrgcW' \
    > test.out 2>&1
eval_tap $? 304 'AdminListUserRolesV4' test.out

#- 305 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ZG1fHc7kSds3iRgN' \
    --body '{"assignedNamespaces": ["graufwEujAwV5QOp", "uCYHrDAKz7bdLeRi", "9Hx3V0o8JcngaYJt"], "roleId": "JpLzcRbBPKJEiJqv"}' \
    > test.out 2>&1
eval_tap $? 305 'AdminUpdateUserRoleV4' test.out

#- 306 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'w9ReDqvBAseoz6j9' \
    --body '{"assignedNamespaces": ["RgqjNVEBlJyrWz4N", "vWhTmsYaWxJVwdSw", "Z2W2OaAhv6kQptgk"], "roleId": "6T6xeScuUqKTh0Iy"}' \
    > test.out 2>&1
eval_tap $? 306 'AdminAddUserRoleV4' test.out

#- 307 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'wj3emvlHELD1emzp' \
    --body '{"assignedNamespaces": ["SYJzyCOLGzKcsDoa", "aeUTks0ZkBalceCK", "kB70vzrWWlHstBim"], "roleId": "NOBueurWMpBS9Bpc"}' \
    > test.out 2>&1
eval_tap $? 307 'AdminRemoveUserRoleV4' test.out

#- 308 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'false' \
    --limit '56' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 308 'AdminGetRolesV4' test.out

#- 309 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "XX3POtsADo1yCcuY"}' \
    > test.out 2>&1
eval_tap $? 309 'AdminCreateRoleV4' test.out

#- 310 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'SexfVWlOxZd6sm9r' \
    > test.out 2>&1
eval_tap $? 310 'AdminGetRoleV4' test.out

#- 311 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId '3mGAJK0vTSVRiqEw' \
    > test.out 2>&1
eval_tap $? 311 'AdminDeleteRoleV4' test.out

#- 312 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId '2YVzJWdY8Dh2zDgr' \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "zQthr23fCPedN2qX"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminUpdateRoleV4' test.out

#- 313 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'VIHawYFcMkXlQjty' \
    --body '{"permissions": [{"action": 15, "resource": "FjjQRomRPSLq5YT4", "schedAction": 49, "schedCron": "6vJdFb7XHjKtSFXw", "schedRange": ["fPoFxh746cupkaEx", "aKmVxgWLVzvz9KuZ", "9nLCdEXGXh9X50nA"]}, {"action": 95, "resource": "RUgFOXffVf8kPMsw", "schedAction": 26, "schedCron": "lNe4JF3lrdvwTetU", "schedRange": ["8TaK2XpKet6vIAh7", "q2UJeUD8cPOOJQYm", "AvqXMwzRLQYgu0fP"]}, {"action": 5, "resource": "naiCcmcayHEtqlhc", "schedAction": 28, "schedCron": "oTpsbEaQhD2tyc4D", "schedRange": ["sQQoMez5fLhhI39s", "89KkSVByZLO3OqDF", "goG92FvWd0oWn4Le"]}]}' \
    > test.out 2>&1
eval_tap $? 313 'AdminUpdateRolePermissionsV4' test.out

#- 314 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'MTUAkPRTymUXsuh0' \
    --body '{"permissions": [{"action": 96, "resource": "eF6FOs9RmTVwbna9", "schedAction": 63, "schedCron": "J3Rzgv6PUtBftSNb", "schedRange": ["gTwuc1SUq5CqMDHi", "CbWdnlMfmFAdpU8z", "DHmetEIPURfzmLvn"]}, {"action": 81, "resource": "r8tpeTTEQNAivbau", "schedAction": 4, "schedCron": "DND2zWLNqLA3qdWe", "schedRange": ["fjJ74pLMdFGaGQyE", "M7ywhshF352gUA0z", "4pn492ZipYDGaDyv"]}, {"action": 88, "resource": "VjqELiNf3sgo6xRi", "schedAction": 50, "schedCron": "AKiwheQpMTM5UMPq", "schedRange": ["Ce0g37fXmNcyXLBU", "oae2ePNYd8rtpXJB", "mgfMjLBDU41kRBc4"]}]}' \
    > test.out 2>&1
eval_tap $? 314 'AdminAddRolePermissionsV4' test.out

#- 315 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'DvaomOZK7EV8nig2' \
    --body '["ewRtzLAowYs1ztNQ", "othH64TIPksnHHi0", "kC6kciN612ahiVOn"]' \
    > test.out 2>&1
eval_tap $? 315 'AdminDeleteRolePermissionsV4' test.out

#- 316 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'qeo40uCp4tPgedPB' \
    --after 'jlsd9xu0VFjPPQBX' \
    --before 't5RbLfrxEcY0KENb' \
    --limit '36' \
    > test.out 2>&1
eval_tap $? 316 'AdminListAssignedUsersV4' test.out

#- 317 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'AlrL2xqW9tv9iqgu' \
    --body '{"assignedNamespaces": ["I71zJE8i7Yss53ZL", "SPsG6OFSTMNzy097", "hDe0fEqzkzS4Dwam"], "namespace": "zzguv2V8HJsyLqs9", "userId": "AWX84F1eZ7cf6Vxa"}' \
    > test.out 2>&1
eval_tap $? 317 'AdminAssignUserToRoleV4' test.out

#- 318 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'Isl1yoBZs4R9qKdj' \
    --body '{"namespace": "FxSNZIZiiqDtPNCY", "userId": "eabENmZ6AecpnTVT"}' \
    > test.out 2>&1
eval_tap $? 318 'AdminRevokeUserFromRoleV4' test.out

#- 319 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["VWsyMRzkmqccvTGT", "6a24bSZHYkmQUoHg", "1jiqjSX0i8GjAC55"], "emailAddresses": ["P81SOj63BXrhsLRB", "H0ygaqOVHQ7XW5hJ", "fmulZ3x8y3bDDH31"], "isAdmin": true, "namespace": "wHSrqyppbnLCM331", "roleId": "T26duendGFoyNEtY"}' \
    > test.out 2>&1
eval_tap $? 319 'AdminInviteUserNewV4' test.out

#- 320 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "EpKoEnUiOgrs7vfI", "country": "YGhYreZ7ICwhTZhJ", "dateOfBirth": "nJhCyrI6Qk2x3lSo", "displayName": "A1UCuCvC8suH6fN8", "languageTag": "TqPGFGDFC2zCisLr", "userName": "oNXetBrshJFi88ZQ"}' \
    > test.out 2>&1
eval_tap $? 320 'AdminUpdateMyUserV4' test.out

#- 321 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 321 'AdminDisableMyAuthenticatorV4' test.out

#- 322 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'vjMwyXLAMqSkV7Hw' \
    > test.out 2>&1
eval_tap $? 322 'AdminEnableMyAuthenticatorV4' test.out

#- 323 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 323 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 324 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 324 'AdminGetMyBackupCodesV4' test.out

#- 325 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 325 'AdminGenerateMyBackupCodesV4' test.out

#- 326 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 326 'AdminDisableMyBackupCodesV4' test.out

#- 327 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 327 'AdminDownloadMyBackupCodesV4' test.out

#- 328 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 328 'AdminEnableMyBackupCodesV4' test.out

#- 329 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 329 'AdminSendMyMFAEmailCodeV4' test.out

#- 330 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 330 'AdminDisableMyEmailV4' test.out

#- 331 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'PJI9ncH3B8VFpOxV' \
    > test.out 2>&1
eval_tap $? 331 'AdminEnableMyEmailV4' test.out

#- 332 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 332 'AdminGetMyEnabledFactorsV4' test.out

#- 333 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'rPn7Cv2asmmMkt9p' \
    > test.out 2>&1
eval_tap $? 333 'AdminMakeFactorMyDefaultV4' test.out

#- 334 AdminInviteUserV4
eval_tap 0 334 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 335 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "oraRnbbpZAfIFpEk", "policyId": "XQEpEVQ9Q7WxGmfe", "policyVersionId": "0Xwe3mp3FsQB4j4t"}, {"isAccepted": false, "localizedPolicyVersionId": "Bkc2vV8hdHw819cG", "policyId": "cHaewPPsaiLBzpO5", "policyVersionId": "qvDu7FYCLcpIACgP"}, {"isAccepted": false, "localizedPolicyVersionId": "lbVbnpC3JOGKAq2A", "policyId": "KC5avgqSviikyozp", "policyVersionId": "wjg5qUk4g5lJfkN6"}], "authType": "EMAILPASSWD", "country": "Mfsv5NbGgMSY8fhO", "dateOfBirth": "EifI2ymNOROLWBOh", "displayName": "fp5CUazBnyiyNgGV", "emailAddress": "fT7s1lWOJJb0ShLv", "password": "5102tsFdnHV4CGbz", "passwordMD5Sum": "EWjoUWyBUxsl7T3L", "username": "qfOn880utNz4i2Bo", "verified": false}' \
    > test.out 2>&1
eval_tap $? 335 'PublicCreateTestUserV4' test.out

#- 336 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "ykFpjlFWTHCFPOCc", "policyId": "A6lYq1w7CT5UDqP6", "policyVersionId": "KQ3xnK9rU1Drhw5d"}, {"isAccepted": false, "localizedPolicyVersionId": "JDQvxQfyzBjKnW2k", "policyId": "DdAq0RSYujjjky9P", "policyVersionId": "lN0y9dGDwUplfmOf"}, {"isAccepted": false, "localizedPolicyVersionId": "NlFxLFpM1exs7xsG", "policyId": "7Eqcm2FPkC1hx2xu", "policyVersionId": "R20dDYrgEjV9KKRN"}], "authType": "EMAILPASSWD", "code": "euJa2FofREJlayBD", "country": "xoS9039prLjr9GDL", "dateOfBirth": "fp6MMo6UrK0ItFnI", "displayName": "QQoCqwY71E8CpZLV", "emailAddress": "GmsxaJP7cylaYHcq", "password": "hOKvbzkl6VwEZ4eJ", "passwordMD5Sum": "xqepEZVSBakTTSQN", "reachMinimumAge": true, "username": "qMswFYsFfUpLO7IP"}' \
    > test.out 2>&1
eval_tap $? 336 'PublicCreateUserV4' test.out

#- 337 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'e6Jey2WT5uNwUe1G' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "MWJSugCqu3KEuv4d", "policyId": "TMvSmzC6F8OD8aPq", "policyVersionId": "VZmdB318Ra7G9tZE"}, {"isAccepted": false, "localizedPolicyVersionId": "sS9Bd7eGgBlh2rt4", "policyId": "xEt2C1a8NRVtsunN", "policyVersionId": "t2XnsqvmQuhom8bf"}, {"isAccepted": false, "localizedPolicyVersionId": "3w33hvLBY6XHJWVz", "policyId": "6wHual3O94nTwyth", "policyVersionId": "2nIQA6uldv8vYl0s"}], "authType": "EMAILPASSWD", "country": "0sEqZKb00IKiUUH5", "dateOfBirth": "c0XIYcIPkFMvPclS", "displayName": "tDRSCsG6XtuQclU5", "password": "45xqzYvJO4M60HXr", "reachMinimumAge": true, "username": "5VMoAUqOrL8v4dKV"}' \
    > test.out 2>&1
eval_tap $? 337 'CreateUserFromInvitationV4' test.out

#- 338 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "QywYtLHsuWXS3ftu", "country": "O9ZHbBTxaxWhX3Mv", "dateOfBirth": "loJqZok7pt0O8kSL", "displayName": "GYL8peC6Amu1xODU", "languageTag": "VYMd1CyBIBldMKbJ", "userName": "ALRxwRV9s2GLIl6V"}' \
    > test.out 2>&1
eval_tap $? 338 'PublicUpdateUserV4' test.out

#- 339 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "SDijzU7quUJSyilO", "emailAddress": "Sq4Yd2jWTpa8E0nz"}' \
    > test.out 2>&1
eval_tap $? 339 'PublicUpdateUserEmailAddressV4' test.out

#- 340 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "rRXsi3C0jFRgaFa4", "country": "4G2BXW2kkZNImZGd", "dateOfBirth": "bh3sFbkqCvMe6p5w", "displayName": "meZASuchhd2rxCQu", "emailAddress": "BlS1ifsTQrhmVkEG", "password": "CiRUo7huAVc7SYq1", "reachMinimumAge": true, "username": "mgBjOuAuxRCUEAKU", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 340 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 341 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "VMC69Uzf1bNPXsuJ", "password": "OWVFHJwWQhMedpfV", "username": "eYImXiymNM2g80SA"}' \
    > test.out 2>&1
eval_tap $? 341 'PublicUpgradeHeadlessAccountV4' test.out

#- 342 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'PublicDisableMyAuthenticatorV4' test.out

#- 343 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'O6XCl0UtsZYEGdzt' \
    > test.out 2>&1
eval_tap $? 343 'PublicEnableMyAuthenticatorV4' test.out

#- 344 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 344 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 345 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 345 'PublicGetMyBackupCodesV4' test.out

#- 346 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 346 'PublicGenerateMyBackupCodesV4' test.out

#- 347 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 347 'PublicDisableMyBackupCodesV4' test.out

#- 348 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'PublicDownloadMyBackupCodesV4' test.out

#- 349 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 349 'PublicEnableMyBackupCodesV4' test.out

#- 350 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 350 'PublicRemoveTrustedDeviceV4' test.out

#- 351 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 351 'PublicSendMyMFAEmailCodeV4' test.out

#- 352 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 352 'PublicDisableMyEmailV4' test.out

#- 353 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'mOAmBgscBAaMdoT8' \
    > test.out 2>&1
eval_tap $? 353 'PublicEnableMyEmailV4' test.out

#- 354 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 354 'PublicGetMyEnabledFactorsV4' test.out

#- 355 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'FD0qx1l7j3SgzA6D' \
    > test.out 2>&1
eval_tap $? 355 'PublicMakeFactorMyDefaultV4' test.out

#- 356 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'tCSefT6BGX9u9j9V' \
    > test.out 2>&1
eval_tap $? 356 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 357 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"emailAddress": "lzDpfM1EmcVor4Ho", "namespace": "LpaY7UAlQHoZ510G", "namespaceDisplayName": "9xjQ1QYC8c0R240U"}' \
    > test.out 2>&1
eval_tap $? 357 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE