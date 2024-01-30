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
echo "1..368"

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
    --body '[{"field": "NRFJWlb1PO8l3oci", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["PhiLD2Qfjc7mMa9j", "BCz1XgExc4Z2ydie", "tHLaeQ7PiGCneA9x"], "preferRegex": true, "regex": "bDEYSwJhCFs86T1t"}, "blockedWord": ["aO5OX6Pqm97SD7nK", "UnYNkte9PJUwuGY4", "34IdZslxWFvj3kWQ"], "description": [{"language": "3yg0axuSydccLJrR", "message": ["a6XZV5CYxQwG1eO9", "pP3tVpxfqhlWJj3E", "ql5w3HzBzCPZmPdL"]}, {"language": "V0HjCdbTHraKWO3K", "message": ["RkT2cujSeEME7gg3", "GhITSrWy3uDFih6S", "ORc1bAb0I16AP1te"]}, {"language": "pVBIu24opip6r85c", "message": ["dFiHzapbKctHCQS1", "OeDOOfFmKZHC4PMc", "9tm0GcZK0UNJXPhw"]}], "isCustomRegex": true, "letterCase": "utlCfQr6OjkwncZs", "maxLength": 78, "maxRepeatingAlphaNum": 54, "maxRepeatingSpecialCharacter": 67, "minCharType": 20, "minLength": 36, "regex": "xSdoQXlJs4JkekYD", "specialCharacterLocation": "I62CJgARDYbVuixi", "specialCharacters": ["9dpv8JQ8vWnipmVv", "XMJ3dnXWD9KGaMbB", "Q9faQtT2uIusPk7B"]}}, {"field": "8FGaWVsJu3Xg09HK", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["NbYVlkOdJkE19rty", "Xlq5BO9NySOJmOJe", "UIJfHoJNVvgrU913"], "preferRegex": false, "regex": "Iwd0O6uFO9uZydcZ"}, "blockedWord": ["cUReX2eLSjUbtILL", "iAACgvpkwY4z6xqz", "YVKlB9hAZROpFEwA"], "description": [{"language": "C3BpOhaQqSGzz1yX", "message": ["3F7GMVE93oZXK1iL", "sgKA8A8dsIXJl2tX", "nqq9b9xJTQW6hyMP"]}, {"language": "xSfaJZfoUjzBtomr", "message": ["hnGJXOVAlYlgBAqy", "fHLeLr916bBp5gtq", "uhI77qkhizPuZqr2"]}, {"language": "NVIpq73azDU4YAE1", "message": ["1bRPUfQ4TOtlos0A", "58taZEgA4TtSrWA7", "iOzw5duz55Yzhh03"]}], "isCustomRegex": true, "letterCase": "2ymAnl87YiomExsi", "maxLength": 0, "maxRepeatingAlphaNum": 33, "maxRepeatingSpecialCharacter": 75, "minCharType": 24, "minLength": 58, "regex": "NPijxg8u67mczGSX", "specialCharacterLocation": "yW3QJYnvoorCO8fD", "specialCharacters": ["pSoxAvo3tk1NU5m7", "4ZvKTDyzTIhl3tzX", "SxGG8WcEb71TDVJz"]}}, {"field": "pgGYDABrHhjauY49", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["7Saz9bIHHew4y0qL", "04YS1kVhJIDpyC3k", "tvhWjUG7kGt9cR6B"], "preferRegex": true, "regex": "tiuONJaRZBs6K2Ce"}, "blockedWord": ["mAg6HiB1ZUNK5Fhr", "5of8cM0qiXdVCBd3", "E6sJZxXgE9no71Tz"], "description": [{"language": "EMYNQrMTvR7JSgHh", "message": ["EXPcE1IKPfOxMFyl", "onhne6B0Fbn40Gct", "3GwulQt2ubGeRbdz"]}, {"language": "vaQdh6LMny7sXjwQ", "message": ["EsFOFUuAn8cr0VZG", "CE28qDtrqAO2ciMD", "i6EOMAKVaEJcRlhD"]}, {"language": "yQach6Tj7aaZurDs", "message": ["ZFg7qFS2L3EUdgSR", "tfMDBB5jkfEXaDK7", "5QJo6pTgJBcM6dqA"]}], "isCustomRegex": false, "letterCase": "iXQdTCU75ckim8DN", "maxLength": 91, "maxRepeatingAlphaNum": 22, "maxRepeatingSpecialCharacter": 16, "minCharType": 51, "minLength": 28, "regex": "dRdn8IZtaQGNSmA1", "specialCharacterLocation": "NrJeTvoF9TvkTmPK", "specialCharacters": ["f5X4icujN4BNeR1O", "H9JZLQICHec0oMcY", "2Kt9uVtoUxB5m6pA"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'DjXmidq2PuNwcLNh' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'GlCCFHCteQjHHLfq' \
    --before 'YwhPk8JdmkqBn3cR' \
    --limit '94' \
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
    --body '{"ageRestriction": 58, "enable": false}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'olnGXQthiwcFb0Mj' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 66}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'CHu3JJAkBzixYfNa' \
    --limit '99' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "lIXm1zoGvtKkKjx1", "comment": "TYo1iUmHpRxR4nvM", "endDate": "X8O1f00EyWlyeR5I", "reason": "ekuk5cXepprfgaWK", "skipNotif": false, "userIds": ["gcqEmoLX6VquT6do", "HcTWwvFO4isM6WOp", "g1LL1OMXVvPAWMlJ"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "Ng1axFQpXS7GZ3Rj", "userId": "AEcYGvNqhXdjM7JD"}, {"banId": "AUXCk5sqxGt1guEE", "userId": "wOhlxTSYkJpH4P9U"}, {"banId": "igYwcxSmJZghdh9F", "userId": "pVYZSdaPcgTFRVnP"}]}' \
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
    --clientId 'qZ3dyokqRaAhKhZt' \
    --clientName 'OPApKrxryL60rtl2' \
    --clientType 'hbFQzr3ZoExQIyqR' \
    --limit '87' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["Xg6NsXW0AhMPH7P3", "BJ1CnrURzJ66iYj3", "8Yfxklj2VWCmKtsQ"], "baseUri": "ZVqAHBr4K2ijOyw2", "clientId": "duQZG0hnoL2zpxoh", "clientName": "CXHQZYKIESIPSFLU", "clientPermissions": [{"action": 7, "resource": "Nh5Zrze1abgv3Mr8", "schedAction": 56, "schedCron": "cZ8lDLB8omlaRspI", "schedRange": ["QRDmhCPOSEb6IWsG", "2Q55XlTH6SCxu2M4", "aV0ZOLZJkRoPGBIh"]}, {"action": 21, "resource": "C0OdjMU14F6mj6xi", "schedAction": 3, "schedCron": "hwuQ8ayk4S6iRZrL", "schedRange": ["W1dh5sMwP8EDnvOY", "OyBNQPGqvs8424HQ", "cOwNAeuZxYwCxX5B"]}, {"action": 54, "resource": "ZvJ8HN7y8T0Honsy", "schedAction": 49, "schedCron": "tma9whzMNvFyT01R", "schedRange": ["wVmyV6nAKLTCGHvw", "qteOAniYfSufLPOQ", "h1qt4RscZeGHq7GL"]}], "clientPlatform": "n0AVl0QmeKhuNroB", "deletable": true, "description": "cr4fcCXDzcJ0fw5l", "namespace": "KL8XQ5Ci6RTY75Dc", "oauthAccessTokenExpiration": 75, "oauthAccessTokenExpirationTimeUnit": "a2oCibAAdk0Pe7D3", "oauthClientType": "ndBzHweKNxJqB7o9", "oauthRefreshTokenExpiration": 91, "oauthRefreshTokenExpirationTimeUnit": "stJ8qtX4tgnfYUtv", "parentNamespace": "9m00e7P6ZVpUt3fX", "redirectUri": "iQ2pQ9bXTkKYsNul", "scopes": ["ZLDm1EowErqSQMa2", "FXJuMwTaQzeCcfWt", "aRvFKJNJPIzBNlcZ"], "secret": "I5JIWOufYtblJzUx", "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'sbKUu224gduJXAPz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId '7FoFKm0GCrErQCrj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'ugf0OWx0dcEkzZRS' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["0xZTiA7S9qmfePsk", "ISeqxe3VA2bxk8sC", "Sm9u6bdtYiGmk9Pn"], "baseUri": "IRLcMHUyjWCHwS2J", "clientName": "qwedxtuEKZUcIF9X", "clientPermissions": [{"action": 37, "resource": "ersqPwnQlWASyuRH", "schedAction": 69, "schedCron": "BwPhUZ39pMVzurUp", "schedRange": ["ygvqHVtES599Mn4N", "sNGQhIhnW7nuHHFo", "5j5vTEnmYiV120Id"]}, {"action": 67, "resource": "TVOk0TWZI5SNpyz0", "schedAction": 80, "schedCron": "vKaVdJ1UPb5RxzxK", "schedRange": ["k81D5lSfKzoLvFcb", "Ahq2XIcLPS5Mfgqq", "gWYdlWQ0WRoB5ZPo"]}, {"action": 65, "resource": "GPfkb9hVWCk9aHsi", "schedAction": 82, "schedCron": "4pDgnk91cV1Q9Z72", "schedRange": ["FBLLLjVwad8N5NOG", "ze6jYSDL6NdWnYfX", "BxcOqLicTNBLXRDg"]}], "clientPlatform": "BIe2CNOZzWjVJRNs", "deletable": false, "description": "1tqHoRLy2dl9Ytqj", "namespace": "BhUNTLN62cQ8vrEO", "oauthAccessTokenExpiration": 68, "oauthAccessTokenExpirationTimeUnit": "dtcgCfEGm18Y9xW4", "oauthRefreshTokenExpiration": 60, "oauthRefreshTokenExpirationTimeUnit": "zNj5ZY69fGRIbUNX", "redirectUri": "tgIdRoi1tVohBRWl", "scopes": ["FOsHkSYPI10iyItS", "qJaYAZV4rnvhFSaV", "vycUfkIgy73zbKec"], "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'MLpnI8Bs0rcfJlv3' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 74, "resource": "0O75X59JwiT3rLso"}, {"action": 8, "resource": "6lSEhuxfpMhLcK7K"}, {"action": 5, "resource": "FIyGalsNczQQQZ3K"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'CTw9y2I2iR4nRX9x' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 21, "resource": "Vnte9kXCWJLACzaz"}, {"action": 9, "resource": "Vt7SI8HZ06oLk6Up"}, {"action": 11, "resource": "EbZoOUFCIUBnxcS3"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '59' \
    --clientId 'fgffHNqag9SHvq1Q' \
    --namespace $AB_NAMESPACE \
    --resource 'nYjpimk5TbVBcXbv' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteClientPermissionV3' test.out

#- 128 AdminGetCountryListV3
samples/cli/sample-apps Iam adminGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    --filterBlacklist 'false' \
    > test.out 2>&1
eval_tap $? 128 'AdminGetCountryListV3' test.out

#- 129 AdminGetCountryBlacklistV3
samples/cli/sample-apps Iam adminGetCountryBlacklistV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 129 'AdminGetCountryBlacklistV3' test.out

#- 130 AdminAddCountryBlacklistV3
samples/cli/sample-apps Iam adminAddCountryBlacklistV3 \
    --namespace $AB_NAMESPACE \
    --body '{"blacklist": ["A9K6pxfRkh1fecFg", "mw84Ucn7HTH5oCvr", "nZ5uUawZNdNKmp5p"]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminAddCountryBlacklistV3' test.out

#- 131 RetrieveAllThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 131 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 132 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 132 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 133 RetrieveAllSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 133 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 134 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'wdrhFZPLSQz0etLO' \
    > test.out 2>&1
eval_tap $? 134 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 135 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'SbJc96yiutAQTu50' \
    --body '{"ACSURL": "ejpRwGM5XUW8l0Er", "AWSCognitoRegion": "ioOdVLsL5JVwedJE", "AWSCognitoUserPool": "x59yOBD7OrNKTNTy", "AllowedClients": ["iBBRb7wiiUdMEPln", "P91mNozw49PiZCuA", "ilcqXvLzRfLyEe7n"], "AppId": "wz8yv6kHgpHlYM64", "AuthorizationEndpoint": "mNAz8lycVd083brM", "ClientId": "xRpyCKs8jLf6biGq", "Environment": "610LOGCoMa9AFl4I", "FederationMetadataURL": "p7MxVqWT6TTZ16ru", "GenericOauthFlow": false, "IsActive": false, "Issuer": "UgQYA4WTQcGJPm1v", "JWKSEndpoint": "7YVbc4eKRIaYJrX0", "KeyID": "MRIaao06KhHscFiz", "NetflixCertificates": {"encryptedPrivateKey": "gnVwMGlBPYBQz60Q", "encryptedPrivateKeyName": "0pxDmIms9zvrvnPL", "publicCertificate": "tthrPR3AGfO07oVg", "publicCertificateName": "GrCZX8lbNXxdk2GG", "rootCertificate": "Y4rh8l4yspDXuOtM", "rootCertificateName": "HN9vlD1o834sVvXo"}, "OrganizationId": "5BVWSoQPUCR1cICa", "PlatformName": "MIlNoxwTjlfYbmD6", "RedirectUri": "HcmXNWxmgBSgjxtt", "RegisteredDomains": [{"affectedClientIDs": ["tb6zHlgpkBdBiFtH", "LY49vqhcxrs8gk0u", "Iy2fO6568e6G8Jl0"], "domain": "yhYnT6MVocWZ9JMt", "namespaces": ["8gqA1W3I84Sng4zZ", "X30D9Tf2WPApAfwF", "Ysq7ss8qG3YDpWP1"], "roleId": "BwDgFNdXxylwvK6T"}, {"affectedClientIDs": ["rSifKMGidbyiRjOp", "vaGmjWZyCH0HEh1o", "x3toPFRZrDywiiKN"], "domain": "sWzxi6UkML2ONDGi", "namespaces": ["YhS4skqAWXcYZ3C2", "xV7Ac7pFSsn3cXvQ", "ZXLmp9i2iSseUZk9"], "roleId": "QzC90S0juFVLOGQQ"}, {"affectedClientIDs": ["mLazkXmjmzoHtycv", "Kr2nusL0IPOFh1XK", "rnteCEF7ALqjrirL"], "domain": "7OHzBwH0K4lq4TVG", "namespaces": ["dhzJr0w73bVTOqLx", "9nnK4sScvMT6FSy9", "5PFPllPMBNRebdH6"], "roleId": "41tBldVS7tzCdC7t"}], "Secret": "KGHrU2iBbkbDcG6D", "TeamID": "KpqRXX2zxe2nC27z", "TokenAuthenticationType": "RDMHgCmKHe2FEvv4", "TokenClaimsMapping": {"lr2lbhXV4ZdGvxuA": "SyEs0pxZAt6qCVSH", "pxDisjOCPp5nLx4P": "iiah46kouerYrUfo", "6jqItSgfxrzobwS8": "npZ05Njsf7GyZl1s"}, "TokenEndpoint": "WdmacIXzEo5iRgrx", "UserInfoEndpoint": "B4Owt8i1FPIk5rO1", "UserInfoHTTPMethod": "aCP9F6YqkLsBuHZS", "scopes": ["6wffRIeIc3X2sNno", "0BNVKgYxPzB5QogN", "rO7aksn9I0eSWTrh"]}' \
    > test.out 2>&1
eval_tap $? 135 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 136 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'iAhuAEVx88f3sSAu' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 137 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZciK1W9jGfctZ2KM' \
    --body '{"ACSURL": "cIVuiIVJOQCuUuKh", "AWSCognitoRegion": "L45TKFLJzG6nQQda", "AWSCognitoUserPool": "QiGEjUvqdauFs6Ix", "AllowedClients": ["RGcNQngdaUthEPrE", "Gzgn60M8hAoj6wGa", "htj05hh060UjQSE0"], "AppId": "BKNeJDHVtY0D8EIe", "AuthorizationEndpoint": "UTxGMPrBLHJr8lvY", "ClientId": "gHpyjBWhla14RWks", "Environment": "pkeQGygONRHSVh7F", "FederationMetadataURL": "t9gNgiywDaea6BQv", "GenericOauthFlow": false, "IsActive": false, "Issuer": "d6xmqA396RyUU5TH", "JWKSEndpoint": "5caeipMcPJVrjRI6", "KeyID": "F98msbnodKv7ot31", "NetflixCertificates": {"encryptedPrivateKey": "EfwZQb9q0iuXeNKk", "encryptedPrivateKeyName": "h8iNvFTGCYbMgOty", "publicCertificate": "rvDAIXIM8apxlKmv", "publicCertificateName": "W2z1rd0vgUYSmSAm", "rootCertificate": "ZV4dLG220VHFb4do", "rootCertificateName": "aZeBiMcSdrAHdpwV"}, "OrganizationId": "8YxvJykjJ4CzoKFc", "PlatformName": "pJRxrzvTfM610Xzb", "RedirectUri": "tUdO3p3d5UMo4mzU", "RegisteredDomains": [{"affectedClientIDs": ["Pop8FO78dHJjOW7Y", "Sk0ZJvSjZKmQMjCG", "baPnIvTGtHbVCztp"], "domain": "iSCDUaitMMGuCW5I", "namespaces": ["EgSFLo4feRKBUYWr", "tnyG39JFWzwHJin2", "0l7Ni4bEMbDCltdW"], "roleId": "NCCRN5bz0yOT5yVD"}, {"affectedClientIDs": ["4z9HzHszGCd9wFnz", "qI3nFNM4BS2aIHG0", "Pk0LUnD8wcslO8kO"], "domain": "UYHYXJ1xaCDs9Z5L", "namespaces": ["uAVeyWd96Z1omvre", "Z8NPi752y6lbAroA", "T1e3cHsNbvQrl805"], "roleId": "pwrjLRufxyCVCOgw"}, {"affectedClientIDs": ["NKWJqokAbF3HOPuM", "h96n4EIfoAzCK8pM", "SoCmiPurnJIMQvEm"], "domain": "lLnUTHBhTX06UkQT", "namespaces": ["hjN9zssWn1C0DY1O", "EzPkkkknOVpxOUqg", "2WIFFI5tNnafLh0O"], "roleId": "OiuMz4QdFIgV1uGh"}], "Secret": "YC2Kq6Hk4f7bH4PK", "TeamID": "cfG07kgKtX9hzp94", "TokenAuthenticationType": "1mVNvQ1RzoJ23OUM", "TokenClaimsMapping": {"CmltlXxB1bAOqLG2": "ZVSYmRKweKGZ2QSX", "uKis9UANs1DeBQMV": "Ja7zM7tQf0kKKKaT", "YiQ2PzaJ9SxB83A4": "1pQIIzUmDLeN8veR"}, "TokenEndpoint": "KsTPTVT1vUXy4OuC", "UserInfoEndpoint": "H66chQZYPlxGZu5N", "UserInfoHTTPMethod": "RqSGEa68xqKS1FVl", "scopes": ["OHSP1IW2wHVNXiUr", "RVCb3eEPqpxMKdVw", "6mqewqyKKqE5CJpN"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 138 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ciT6Zpov2hw13HeA' \
    --body '{"affectedClientIDs": ["CK24rCZOCeNWxVWX", "Gxk01TJs6PjHjIbM", "18FjmsZ1KpD6GgcU"], "assignedNamespaces": ["zqeSH0ikauVbtE3n", "qi5ZQec4vNapxxLP", "pTBn327OareNLVVW"], "domain": "9groKFhCz0l3amb8", "roleId": "TErMJTvwkkRZmduq"}' \
    > test.out 2>&1
eval_tap $? 138 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 139 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'pZFNNQMrsaBCOqP0' \
    --body '{"domain": "bUF7cJ6D2mLdD2sT"}' \
    > test.out 2>&1
eval_tap $? 139 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 140 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'wqUXt4E3rIZceJBV' \
    > test.out 2>&1
eval_tap $? 140 'RetrieveSSOLoginPlatformCredential' test.out

#- 141 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'c4gXURy7F1o741QX' \
    --body '{"acsUrl": "oyr6uRk3NVD8CtB5", "apiKey": "mom3BAGlKTII31wy", "appId": "HnVOhhfa2XLgNkWg", "federationMetadataUrl": "lqUXjHY5JqPvVYI5", "isActive": true, "redirectUri": "aMMnmiVckrLNBfHg", "secret": "Z41KvTFHGXm45RIz", "ssoUrl": "9jqMBekM81VEOvQu"}' \
    > test.out 2>&1
eval_tap $? 141 'AddSSOLoginPlatformCredential' test.out

#- 142 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'v5e3bULO8BpGdMA9' \
    > test.out 2>&1
eval_tap $? 142 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 143 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'DHU3oJesPpAUjuyA' \
    --body '{"acsUrl": "qbSyrs9PF322HIdo", "apiKey": "zsANOabed9OohDHx", "appId": "4BXF8DTtzbtK6EKr", "federationMetadataUrl": "wXzSjA32nkPIoiVp", "isActive": false, "redirectUri": "ZJtj1EBiOtIFwNMx", "secret": "lzvJDJl8rRystKsn", "ssoUrl": "EcYkh8MfH8TXKv7q"}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateSSOPlatformCredential' test.out

#- 144 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId '26JfW3JAhO15su6L' \
    --rawPID 'true' \
    --body '{"platformUserIds": ["NGxF7IUdH1hkbbBp", "dE6sXHhqdC6P1tLw", "Lr6CQkQo9C3sZjJb"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 145 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Yo5Y6GwR7vnn6lBg' \
    --platformUserId '75Mve11AtOudZrOj' \
    > test.out 2>&1
eval_tap $? 145 'AdminGetUserByPlatformUserIDV3' test.out

#- 146 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'q6OiWT3XCSWUwyox' \
    --after '92' \
    --before '25' \
    --limit '78' \
    > test.out 2>&1
eval_tap $? 146 'GetAdminUsersByRoleIdV3' test.out

#- 147 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'Un2U6gDqcWdcLlVe' \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByEmailAddressV3' test.out

#- 148 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'VoXTFVIkWTpDuYAv' \
    --body '{"bulkUserId": ["cABn3U3CLkKWvlAt", "zCvjfgoi989zKa2O", "4BWA3kbXgW9izp3X"]}' \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserBanV3' test.out

#- 149 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["0m5tyaOwVy6iTFRl", "SEjjaib0k21rB6rC", "eWkUbE2lGTzA02v3"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminListUserIDByUserIDsV3' test.out

#- 150 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["EVoMbHN45D17Zl2i", "pvuNyu6kQ4iDsMlZ", "AbsXxVwzu3PTOOk6"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminBulkGetUsersPlatform' test.out

#- 151 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["5e0vlrqu7iEPvBl4", "umjrudU58WNSvsTH", "JKIct3iKZ0M3GETV"], "isAdmin": false, "namespace": "IE4deDRcvGJrGLLT", "roles": ["5CmISUKJBgOT204a", "Mzc836hdQBGHE8Yq", "OL4ZBNxN9GjzBpLu"]}' \
    > test.out 2>&1
eval_tap $? 151 'AdminInviteUserV3' test.out

#- 152 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '92' \
    --platformUserId 'KjxcueB2NhkVoGTK' \
    --platformId '17Rawy2pwlYADkXL' \
    > test.out 2>&1
eval_tap $? 152 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 153 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUsersV3' test.out

#- 154 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'Ahm11l50itksRDPH' \
    --endDate 'Sgc292vZweWLJeIF' \
    --includeTotal 'true' \
    --limit '65' \
    --offset '67' \
    --platformBy 'Q5cV0tNrSUO6FDY1' \
    --platformId 'xYE5gyRgSyvRkoWC' \
    --query 'nbNeSiTd20j2Y4fw' \
    --startDate 'hkiq69L4h5hejtVG' \
    --testAccount 'true' \
    > test.out 2>&1
eval_tap $? 154 'AdminSearchUserV3' test.out

#- 155 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["CAhzavovHZSERMTA", "ibbuAE2AJnK2A5l0", "If4kNy9oplJ9EQcC"]}' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserByEmailAddressV3' test.out

#- 156 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId '2LKDM5FdUBSlchiI' \
    > test.out 2>&1
eval_tap $? 156 'AdminGetUserByUserIdV3' test.out

#- 157 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gGkzh4Mk6T59w7S9' \
    --body '{"avatarUrl": "6QQQNThXtzBjkh7q", "country": "OJMKEj0gnI7CTXUE", "dateOfBirth": "XesW0igapZyiFAQ7", "displayName": "1Rh68M73QPdrJHNM", "languageTag": "r1bra1sUPrWmTMg2", "userName": "8Y15LgipbndqvRdv"}' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpdateUserV3' test.out

#- 158 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jNcD5IOiJsFxF8uO' \
    --activeOnly 'false' \
    --after 'jFKdcmda2naqurjW' \
    --before 'pY2pW5UdMnsgSbkm' \
    --limit '58' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserBanV3' test.out

#- 159 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'miG4xHAjh5p2rtYA' \
    --body '{"ban": "y0YNaP6UbDaDBLvc", "comment": "pbtJHcX5bZxqY1Fm", "endDate": "xm9SwQRNAA84ohnj", "reason": "HVds38E0f3414sHV", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 159 'AdminBanUserV3' test.out

#- 160 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'IcVPos2bFcWaZMZm' \
    --namespace $AB_NAMESPACE \
    --userId 'JtGSQ1FlkWpwQNnL' \
    --body '{"enabled": false, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserBanV3' test.out

#- 161 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LkCkfFj0EvLVsMgV' \
    --body '{"context": "5lNUAX7aKyLkR801", "emailAddress": "jVE75xrslQZOvjSb", "languageTag": "qbrnkzbFCM62bSrN"}' \
    > test.out 2>&1
eval_tap $? 161 'AdminSendVerificationCodeV3' test.out

#- 162 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dZZATYr3cP9n1otT' \
    --body '{"Code": "sHnRPjPEzS1OzLF2", "ContactType": "ypjawtFfd8WFC5sX", "LanguageTag": "1n0Mf6IYi0VirEiv", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 162 'AdminVerifyAccountV3' test.out

#- 163 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'R07mZvPWcYWiSkz8' \
    > test.out 2>&1
eval_tap $? 163 'GetUserVerificationCode' test.out

#- 164 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'nw7OuUUlyEDji2bx' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserDeletionStatusV3' test.out

#- 165 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '0g2komZyhn68mrd1' \
    --body '{"deletionDate": 75, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserDeletionStatusV3' test.out

#- 166 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iLMMyvPXr50paBD4' \
    --body '{"code": "IhZVXMIxEwGnNrBj", "country": "gDBLnK8FgiLYPBzs", "dateOfBirth": "jHuNb7cpnE1BIXTy", "displayName": "PFKi4gvUxJOsCCul", "emailAddress": "7XZ4vqJQDjQzWVTf", "password": "eaxhU3dmz3ep31uv", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 166 'AdminUpgradeHeadlessAccountV3' test.out

#- 167 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'etBfMaMzLfubxEa0' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserInformationV3' test.out

#- 168 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '5jZjRZbSvn7Y7i4G' \
    --after '0.5467444963059731' \
    --before '0.7740572275199036' \
    --limit '66' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserLoginHistoriesV3' test.out

#- 169 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kHItQJh44MITu72O' \
    --body '{"languageTag": "SpK5zYrbAKU4IZWT", "newPassword": "pllR31exOAHCQalI", "oldPassword": "N6JZQrFLM9vcGl8j"}' \
    > test.out 2>&1
eval_tap $? 169 'AdminResetPasswordV3' test.out

#- 170 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QZ9Qc7GvsDYG2Afb' \
    --body '{"Permissions": [{"Action": 58, "Resource": "w1Q9FhEEoLSkWw12", "SchedAction": 5, "SchedCron": "Jva3eyRCrhDenTPK", "SchedRange": ["SpQJe98CX9B2mCOz", "2RFHjSkIaLT4txCg", "3PAXGd3wRyq3gQm0"]}, {"Action": 46, "Resource": "ewieaEuVOyNz0qGB", "SchedAction": 74, "SchedCron": "kfkSYzzOqU0TjOiI", "SchedRange": ["ynuGIRl5NVkvBUHY", "CjzzV3eFRZvE3QsY", "dp9gkLeNZpMyiFYW"]}, {"Action": 17, "Resource": "3vnbSswaGbF3lNFI", "SchedAction": 72, "SchedCron": "sXEZiTEePStB6P5m", "SchedRange": ["CmtZwOKCVmWZGz0C", "gdlJz34E5mf4rUWV", "8Dgp0USvvwyssOJd"]}]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminUpdateUserPermissionV3' test.out

#- 171 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId '5bImCx8KaadnHIwM' \
    --body '{"Permissions": [{"Action": 58, "Resource": "L3v3xWd0DHRiktZA", "SchedAction": 63, "SchedCron": "cxXo6RkVWETvhre7", "SchedRange": ["xePhXGG2PQxJKCNh", "ts6iTjQ5F8ABgcpA", "dUh4NLoIepOswez3"]}, {"Action": 92, "Resource": "X03YeXrptKuiJvxs", "SchedAction": 5, "SchedCron": "IA4xTqrtPtgzYnDo", "SchedRange": ["bE16xTgpEw0xAHRa", "B0Sy5wLFIb5kjyQr", "mZHfSsHhOe0arLpG"]}, {"Action": 100, "Resource": "g9M1tjwSTrGr1Yzk", "SchedAction": 4, "SchedCron": "mBDxtoqPC1XsuLHP", "SchedRange": ["k4QMmfHpoteF5ucY", "357Vph966N1vW7Zc", "XPte5B6Hm5OeMagg"]}]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminAddUserPermissionsV3' test.out

#- 172 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'GKwrKczQzhZXjdgx' \
    --body '[{"Action": 77, "Resource": "rYgbJu0uWkeuNbuP"}, {"Action": 74, "Resource": "yFdxOl7Fdw5pcKd8"}, {"Action": 14, "Resource": "MT86eFya33wpajED"}]' \
    > test.out 2>&1
eval_tap $? 172 'AdminDeleteUserPermissionBulkV3' test.out

#- 173 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '1' \
    --namespace $AB_NAMESPACE \
    --resource 'KBB16IjJEkQqMe3M' \
    --userId 'KY4m3vvAxHsxTaXr' \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserPermissionV3' test.out

#- 174 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TnGUG5fDK3VdT9YK' \
    --after 'h23K8ogfQ6unvyIX' \
    --before 'jCVOKTOhPKfyZMBy' \
    --limit '95' \
    --platformId '3flAMT43XQ2mLbze' \
    > test.out 2>&1
eval_tap $? 174 'AdminGetUserPlatformAccountsV3' test.out

#- 175 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'bbDAu09pjA8fwtMb' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetListJusticePlatformAccounts' test.out

#- 176 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'lFZwcegZBEUE1MLQ' \
    --userId 'zTLvqMknDmxrcizA' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserMapping' test.out

#- 177 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'qggkRIQHTBxxkRTK' \
    --userId 'yRs9UjYE09Y30nhe' \
    > test.out 2>&1
eval_tap $? 177 'AdminCreateJusticeUser' test.out

#- 178 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'vOX3jBt2RJxUXYcY' \
    --skipConflict 'false' \
    --body '{"platformId": "Jv6mGrQQeddq4YOR", "platformUserId": "OhhoWuGqCNzdNt0D"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminLinkPlatformAccount' test.out

#- 179 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'CmUBZVGDttLF5dhg' \
    --userId 'c2JgsNjrsTDf3UE6' \
    --body '{"platformNamespace": "pweMygkFRxdvH69W"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminPlatformUnlinkV3' test.out

#- 180 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'UwlKXf1cCuEBISrw' \
    --userId 'hZjBkKiHeFmExHlM' \
    --ticket 'c70FCEKrOvQMiVnh' \
    > test.out 2>&1
eval_tap $? 180 'AdminPlatformLinkV3' test.out

#- 181 AdminDeleteUserLinkingHistoryByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingHistoryByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7PsiAHqJ0MHkodb9' \
    --userId '1PDd81wPGeZyHa0o' \
    > test.out 2>&1
eval_tap $? 181 'AdminDeleteUserLinkingHistoryByPlatformIDV3' test.out

#- 182 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'RzQ1zYgPdjUhpn1O' \
    --userId 'sEKdFjn2lTdAp7Yn' \
    --platformToken 'BTZqZQ63f4KWKP64' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 183 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId '4Wf5dVmSWtt7u7Mz' \
    --userId 'dXYF2I1OZqcfklmn' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetUserSinglePlatformAccount' test.out

#- 184 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZGRuMBaPsOqEuigL' \
    --body '["vFy9yJlR8NVyk19T", "ZueudpZ5yzRzvrmu", "1fdUhWP2WqEmEUMF"]' \
    > test.out 2>&1
eval_tap $? 184 'AdminDeleteUserRolesV3' test.out

#- 185 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'cQgfctvv7cYhsZCn' \
    --body '[{"namespace": "xDlIln19Kq2HmdVJ", "roleId": "08z4Mw4pdTzXLdqZ"}, {"namespace": "uF9n2kwyhuSOvklk", "roleId": "4zaf7F5bNsuvtaSw"}, {"namespace": "g1Pf7XgU4f0plobf", "roleId": "mDtUeoqxY1Ug4o3L"}]' \
    > test.out 2>&1
eval_tap $? 185 'AdminSaveUserRoleV3' test.out

#- 186 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'YcGD3OseWWeImJ2w' \
    --userId 'pNgrbHWRwblph82m' \
    > test.out 2>&1
eval_tap $? 186 'AdminAddUserRoleV3' test.out

#- 187 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'kTpGgYZOI4aypLfX' \
    --userId 'jp3LMhITVqCFzHjD' \
    > test.out 2>&1
eval_tap $? 187 'AdminDeleteUserRoleV3' test.out

#- 188 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'aKToyYsW6tGwOsHK' \
    --body '{"enabled": false, "reason": "tM9QxP5I7v84lbUN"}' \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserStatusV3' test.out

#- 189 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'Piw974vciYGpTgXb' \
    --body '{"emailAddress": "tDyPZUro8mxdY6QP", "password": "xvGfVhDsrXfaZMek"}' \
    > test.out 2>&1
eval_tap $? 189 'AdminTrustlyUpdateUserIdentity' test.out

#- 190 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hF8e07LxupdUK6PP' \
    > test.out 2>&1
eval_tap $? 190 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 191 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'OzjIwJiGJlg5Wq4d' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "37afR4UrcireOA7b"}' \
    > test.out 2>&1
eval_tap $? 191 'AdminUpdateClientSecretV3' test.out

#- 192 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'WS61n02o6DtfWHQM' \
    --before 'GKNYuJIrhA3U68Ee' \
    --isWildcard 'true' \
    --limit '76' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetRolesV3' test.out

#- 193 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "managers": [{"displayName": "QV0IogzL68rezan5", "namespace": "y249aYBB1YxYHVOX", "userId": "FHTUYFY7OEqXnpRS"}, {"displayName": "yrUxlwrVxSoJsugi", "namespace": "iFBdsPrDoq7MoIZ0", "userId": "XFWUh22fC7ffH11B"}, {"displayName": "jTiT9wZd4vP3n97R", "namespace": "OlJN07qWatAQbuk3", "userId": "9kWnPokmF1hp7aFQ"}], "members": [{"displayName": "gi9Y7xVzqIpTKlzg", "namespace": "bBbKNzpYpMNC4ULe", "userId": "uuRxfiWudVGedFgZ"}, {"displayName": "AOiCLS8DVi37UHub", "namespace": "aPKelMiMF4jeKpvx", "userId": "N8TDrLuU355lAahu"}, {"displayName": "oKSr5NSyrquisPJu", "namespace": "zcBiKdvSxDi5f2v2", "userId": "cUGXbGz97Ggo6ICz"}], "permissions": [{"action": 9, "resource": "PsHyR71ijCnNTYcC", "schedAction": 96, "schedCron": "F4wPGBMDlwms1dgJ", "schedRange": ["HS4BwlUgDWye5kFE", "9P6lYXUfmpxuZI6d", "9GByh5RYigITngrZ"]}, {"action": 24, "resource": "6sc5qB7keIu7yZzt", "schedAction": 89, "schedCron": "sH1c8jvUNSWU2ohw", "schedRange": ["lmDRkomn2GTZiP1B", "6Z2iyUh6e8Ifg3nS", "7bPsbrDyVhlN7KtQ"]}, {"action": 66, "resource": "dHoA2DuwEg6qrgPF", "schedAction": 13, "schedCron": "ZGZKE6DDbnKZJW2G", "schedRange": ["BXCvpmmMt9um46Gt", "TDgszi9kW8IQzjn0", "2sFMfRNp7DRiObaM"]}], "roleName": "D7W1Rl0irr6oiA7v"}' \
    > test.out 2>&1
eval_tap $? 193 'AdminCreateRoleV3' test.out

#- 194 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId '78FjYwA0PJ84al0k' \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleV3' test.out

#- 195 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'p6mGCUUypx1v4m23' \
    > test.out 2>&1
eval_tap $? 195 'AdminDeleteRoleV3' test.out

#- 196 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'EHmnPLFDaPKGbfRs' \
    --body '{"deletable": false, "isWildcard": true, "roleName": "zzbB3GC9kpDH8Ejt"}' \
    > test.out 2>&1
eval_tap $? 196 'AdminUpdateRoleV3' test.out

#- 197 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'NDHzW7GPJi6ejx3X' \
    > test.out 2>&1
eval_tap $? 197 'AdminGetRoleAdminStatusV3' test.out

#- 198 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'DVgIG9MHB3xpxUTs' \
    > test.out 2>&1
eval_tap $? 198 'AdminUpdateAdminRoleStatusV3' test.out

#- 199 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'tiVgH9IcqU7AxDj5' \
    > test.out 2>&1
eval_tap $? 199 'AdminRemoveRoleAdminV3' test.out

#- 200 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'oqxDX8ceId72fUzR' \
    --after '0JbksTtcM0CKiSP9' \
    --before 'Cv3fQzEPzn2SZYSS' \
    --limit '0' \
    > test.out 2>&1
eval_tap $? 200 'AdminGetRoleManagersV3' test.out

#- 201 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'hZ7YchcbHqsmSFBx' \
    --body '{"managers": [{"displayName": "MUSNbGhFM3HMJboq", "namespace": "b9MY7SkKysu5yDGx", "userId": "YJP1EwFGin1A3paQ"}, {"displayName": "O2gAj2ROcneugxYI", "namespace": "2SlfqEegTV3lIRA6", "userId": "aZShtWZT5Lhunhk1"}, {"displayName": "vn2vhUwDRLjjG0oP", "namespace": "UifrhnNglKhStL0u", "userId": "7GFP9cjyTz9JAV9Q"}]}' \
    > test.out 2>&1
eval_tap $? 201 'AdminAddRoleManagersV3' test.out

#- 202 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'fZ0CwW8tLceNLHE6' \
    --body '{"managers": [{"displayName": "CWLa8Ro2ZE8C64bi", "namespace": "SJ3NfSovQF3WT4nJ", "userId": "YiPTBCU961Vxu0W3"}, {"displayName": "Faein4GYIk4auzy2", "namespace": "b9TqPDdsi3xFee1F", "userId": "xAlJuHtTxQb7dKsc"}, {"displayName": "JVEa15RLHXL0vz92", "namespace": "uFa1CxjJrJc9LBds", "userId": "llaDfKU7szPckAFD"}]}' \
    > test.out 2>&1
eval_tap $? 202 'AdminRemoveRoleManagersV3' test.out

#- 203 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'CruoGDjwueIU7sPK' \
    --after 'Mmm8WYoDiZvL4v0h' \
    --before 'iMi1UuQHcN2m0vfq' \
    --limit '11' \
    > test.out 2>&1
eval_tap $? 203 'AdminGetRoleMembersV3' test.out

#- 204 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'WYoGdm6zjgo7HlSa' \
    --body '{"members": [{"displayName": "o8NGKr8f4iXGyJ48", "namespace": "uoEMpIWaSbcVfx4e", "userId": "gWYhJTogueHCciHk"}, {"displayName": "o3hi3SlHC80e3J1Z", "namespace": "OXuTvs51QlBzYK3o", "userId": "H0j05dQICQsjvXLn"}, {"displayName": "BsJthYTp1EVsOxxD", "namespace": "ItgcTU4G7INRxfqI", "userId": "9X3nU4rkEpq9Bm2l"}]}' \
    > test.out 2>&1
eval_tap $? 204 'AdminAddRoleMembersV3' test.out

#- 205 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'sfBuVSPUcimo5dNM' \
    --body '{"members": [{"displayName": "d7ZC3n4HDFVcTj94", "namespace": "IX5DMFwpVD0wslcv", "userId": "HWSm6L6ZRSldzaoV"}, {"displayName": "yq4fVQWggVK9siBY", "namespace": "FhocPiYyTjF8SdHV", "userId": "XPconQSeNa932lK7"}, {"displayName": "FzwYatiQpEl3FS0p", "namespace": "JVMho1j4qV3JSLv5", "userId": "9HFtpi20iqq5oPLb"}]}' \
    > test.out 2>&1
eval_tap $? 205 'AdminRemoveRoleMembersV3' test.out

#- 206 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'JyPeOTrPLRjsYIdE' \
    --body '{"permissions": [{"action": 49, "resource": "9qu1vHhcQ1robHrp", "schedAction": 77, "schedCron": "XrtNnQuQj5hz6bKx", "schedRange": ["iSTHjR9zlRFqC03r", "PoEXZomyMn73OK9O", "H3rxq1ks0yWQgRx1"]}, {"action": 44, "resource": "8YuA7iLHboCY3n3U", "schedAction": 84, "schedCron": "njPh3IZHXkuQZKUG", "schedRange": ["R9cZt8uiH07axmr5", "uF8NIhwM9T8yQAD4", "nOoeLxyjB3ieojXf"]}, {"action": 8, "resource": "TU2oYILZq9LKEEyg", "schedAction": 14, "schedCron": "qAl15zjL3cZOSHkQ", "schedRange": ["9ozSnKKZvhmxQz8j", "YzuKePjiCtwlYSvS", "QiEy0a72iuYrcefH"]}]}' \
    > test.out 2>&1
eval_tap $? 206 'AdminUpdateRolePermissionsV3' test.out

#- 207 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'fwS9ONEHAYJhr2XJ' \
    --body '{"permissions": [{"action": 86, "resource": "MuZMFora1QUh7XTt", "schedAction": 1, "schedCron": "TJrNXOYhTdVCdpQL", "schedRange": ["rg3TdCoH0oHvZL4K", "TosL5CI5jtLPixUJ", "AmS6X3DIYIRNFfJB"]}, {"action": 45, "resource": "dxl6MrMZtq3NKz3w", "schedAction": 69, "schedCron": "PVNkGDb5m6JdmbZL", "schedRange": ["7Y5ZUotTEyVWprrW", "gPIpb7kWBTXKQ3Bo", "0HUgnnjdy3rp3kMq"]}, {"action": 48, "resource": "DTYmSYrBWmRbwjdM", "schedAction": 89, "schedCron": "Dg9ZUJiKnogACZiX", "schedRange": ["s6m99OkJLSQtuhaI", "SXMyqyxdQ1ifTihu", "xPNgFpNQN6ycQF3m"]}]}' \
    > test.out 2>&1
eval_tap $? 207 'AdminAddRolePermissionsV3' test.out

#- 208 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'JjYN2hb77eQ7MuKF' \
    --body '["FI52OeeKzLgqdsxq", "y9ublpEvAyVMLvmd", "9WOHnctRkgO4EM1R"]' \
    > test.out 2>&1
eval_tap $? 208 'AdminDeleteRolePermissionsV3' test.out

#- 209 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '29' \
    --resource 'RyOS6yfymzi5DEze' \
    --roleId 'zg1wty3F1QbNrbst' \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteRolePermissionV3' test.out

#- 210 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 210 'AdminGetMyUserV3' test.out

#- 211 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId '8iqnDPsTN168Po9Y' \
    --extendExp 'false' \
    --redirectUri '1WgcCnGbRIezi1Lq' \
    --password 'SBSRS6gh1h9jzQqi' \
    --requestId 'bf4LLM1psIIMf4Hq' \
    --userName 'aJi0UmHHUO2zsxvw' \
    > test.out 2>&1
eval_tap $? 211 'UserAuthenticationV3' test.out

#- 212 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'SZJiRFsQrDBvrnqO' \
    --linkingToken 'EkGgpzynDHNtJe88' \
    --password 'FwvIRn7qO0FSKpyW' \
    --username 'eeZKEoVqOtdiGM5v' \
    > test.out 2>&1
eval_tap $? 212 'AuthenticationWithPlatformLinkV3' test.out

#- 213 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData '06NwWxD6B1llhED2' \
    --extendExp 'true' \
    --linkingToken 'hhp3DXqycCV4Ys6T' \
    > test.out 2>&1
eval_tap $? 213 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 214 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'qlaeerkldafXqPdd' \
    > test.out 2>&1
eval_tap $? 214 'RequestOneTimeLinkingCodeV3' test.out

#- 215 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'Rn0bdgx6TdOKdFlp' \
    > test.out 2>&1
eval_tap $? 215 'ValidateOneTimeLinkingCodeV3' test.out

#- 216 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'AWz2rCfJIEpweTZB' \
    --isTransient 'false' \
    --clientId 'hkNQhK6HI5LQURUb' \
    --oneTimeLinkCode 'd8UtWa1ontcFYva3' \
    > test.out 2>&1
eval_tap $? 216 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 217 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 217 'GetCountryLocationV3' test.out

#- 218 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 218 'Logout' test.out

#- 219 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'cG0gdhktFK7cra2G' \
    > test.out 2>&1
eval_tap $? 219 'RequestTokenExchangeCodeV3' test.out

#- 220 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'aypKWLt9mojXta22' \
    --userId 'LCdTIhKpGIeWNT4a' \
    > test.out 2>&1
eval_tap $? 220 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 221 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eDXjfJaAzYCBfRnP' \
    --includeGameNamespace 'true' \
    > test.out 2>&1
eval_tap $? 221 'RevokeUserV3' test.out

#- 222 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'NdZNtyDBON8jtwTq' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'true' \
    --oneTimeLinkCode '434Tqn5EB23dHbs8' \
    --redirectUri 'g76KhDjTg5HJc47k' \
    --scope 'oMZ9r4binbxDaFax' \
    --state 'sTGq4Ha5io6ALmRa' \
    --targetAuthPage 'ciaFi7RDibbSnZBb' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId '6UsAvY0Tly1a3c7w' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 222 'AuthorizeV3' test.out

#- 223 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token '84w2EcDLjns8J9Si' \
    > test.out 2>&1
eval_tap $? 223 'TokenIntrospectionV3' test.out

#- 224 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 224 'GetJWKSV3' test.out

#- 225 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'vLJxbZuQHsPlBLhd' \
    --factor 'c1Y4qy1TeSPc8gOc' \
    --mfaToken 'xFniEdVMqe80wlHR' \
    > test.out 2>&1
eval_tap $? 225 'SendMFAAuthenticationCode' test.out

#- 226 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor '7oSoMyBziLjR1PAO' \
    --mfaToken 'DpaHu3eEX3p6VrCJ' \
    > test.out 2>&1
eval_tap $? 226 'Change2faMethod' test.out

#- 227 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'XO7tBG6nQRpVb5Rf' \
    --factor '2noRtsHlgOBDVHIN' \
    --mfaToken 'TH2eousozP0ov997' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 227 'Verify2faCode' test.out

#- 228 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'UJGy8wuEtkszqo5V' \
    --userId 'S9fUaOxua8Bxi4xt' \
    > test.out 2>&1
eval_tap $? 228 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 229 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId '5sXJnIgn3a7ZOeml' \
    --clientId 'PQsuPRWt4pfVnnlL' \
    --redirectUri 'eeVu8VdwDjxnOgX1' \
    --requestId 'NUALuhDaf2LdazKO' \
    > test.out 2>&1
eval_tap $? 229 'AuthCodeRequestV3' test.out

#- 230 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'xMMXvOxUtZfPDafP' \
    --additionalData '0Mm2J91jDoVARbvo' \
    --clientId 'Ihzy8dGcHUmIEZOo' \
    --createHeadless 'false' \
    --deviceId '0w6CZGtnecF1LLdx' \
    --macAddress 'r4WShDMGqUXg9nsu' \
    --platformToken 'lvT0zhdpj3JPHOJw' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 230 'PlatformTokenGrantV3' test.out

#- 231 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 231 'GetRevocationListV3' test.out

#- 232 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'JwVSszj4efJFbQUm' \
    > test.out 2>&1
eval_tap $? 232 'TokenRevocationV3' test.out

#- 233 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'pspc' \
    --simultaneousTicket 'dkkjCa4J2jJ96Xjm' \
    --nativePlatform 'steam' \
    --nativePlatformTicket '9gdrpngPYBB1D05h' \
    > test.out 2>&1
eval_tap $? 233 'SimultaneousLoginV3' test.out

#- 234 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'jBv042OVYiUYHKzK' \
    --clientId 'lB1TPTmjoaTGIR7p' \
    --code 'Mw8KwAGQ0k4gIXHa' \
    --codeVerifier 'J0u2Axu6bNdGmzeq' \
    --extendNamespace 'bpucrkRxWrveyP4j' \
    --extendExp 'false' \
    --password 'KOwl2J9K29MNrqva' \
    --redirectUri '0yv6bXUV6yX4gRQC' \
    --refreshToken 'QPiW2w2AwlemNYIY' \
    --username 'gnz7Fyiv3khnmfVN' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 234 'TokenGrantV3' test.out

#- 235 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'ETaT8nrhAprXEAbv' \
    > test.out 2>&1
eval_tap $? 235 'VerifyTokenV3' test.out

#- 236 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'u5qsbrZO6N6XH0IK' \
    --code 'AGCsDvD0aA2PCD0f' \
    --error 'zMrDr6oRuUUvIRQD' \
    --openidAssocHandle 'OyK3cGr28VRPXXgx' \
    --openidClaimedId 'xPH074Mi1lukoEEZ' \
    --openidIdentity 'LtPkPjXQpnYIQUfN' \
    --openidMode 'lX2Jsem0CytS7tW2' \
    --openidNs 'PayVhLlOLb4B3ILn' \
    --openidOpEndpoint 'VcbOYyx6gufPHeZ2' \
    --openidResponseNonce 'rGpBNijqgRx1fS01' \
    --openidReturnTo 'PhtZhKqWk3Wi6N4L' \
    --openidSig 'xerj6MTUJAGyErBa' \
    --openidSigned 'ij45nBPB8HeqG4oq' \
    --state '9hKziZFHvbLd5MrX' \
    > test.out 2>&1
eval_tap $? 236 'PlatformAuthenticationV3' test.out

#- 237 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'wMSCn6PZdDSThk5q' \
    --platformToken 'CVcdAHWvXMTC3KYX' \
    > test.out 2>&1
eval_tap $? 237 'PlatformTokenRefreshV3' test.out

#- 238 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode 'FvfQuPh6AUIaK0lS' \
    > test.out 2>&1
eval_tap $? 238 'PublicGetInputValidations' test.out

#- 239 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field '9fXccFyQ6jbMTmlT' \
    > test.out 2>&1
eval_tap $? 239 'PublicGetInputValidationByField' test.out

#- 240 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'sEPTEqFKVF05Ttq2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 240 'PublicGetCountryAgeRestrictionV3' test.out

#- 241 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 241 'PublicGetCountryListV3' test.out

#- 242 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 242 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 243 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'esclTPuABKEroSdI' \
    > test.out 2>&1
eval_tap $? 243 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 244 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ELRpTQR2JFJ7SrpC' \
    --rawPID 'true' \
    --body '{"platformUserIds": ["HkM7e7Mp1CQcCWhE", "YzQDvjDRvrCtOUOT", "qidQBGbkMleX7sJm"]}' \
    > test.out 2>&1
eval_tap $? 244 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 245 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'skkXGBz3pD3o33wx' \
    --platformUserId 'gEwkJZlwNmKH5K5W' \
    > test.out 2>&1
eval_tap $? 245 'PublicGetUserByPlatformUserIDV3' test.out

#- 246 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId '9wfLQs4MvSapm7dB' \
    > test.out 2>&1
eval_tap $? 246 'PublicGetAsyncStatus' test.out

#- 247 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'Xv0DdintKEEfnZyx' \
    --limit '50' \
    --offset '24' \
    --platformBy 'OpIZ9rUwtl1zWIac' \
    --platformId 'GtVmUzt3I1cJl2ug' \
    --query 'cyIZgU3LKMwJ7P2J' \
    > test.out 2>&1
eval_tap $? 247 'PublicSearchUserV3' test.out

#- 248 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "mRzHUCefzErI9PU4", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "gwMVNcSNIVJKCKKm", "policyId": "vMrzO8kf2p901p8N", "policyVersionId": "3mrwdKAXNvc5fMg0"}, {"isAccepted": false, "localizedPolicyVersionId": "QL73wlufuekxeDYw", "policyId": "UIrZgQ4Zc2drysCB", "policyVersionId": "SymhBG3TrDdcKZIX"}, {"isAccepted": true, "localizedPolicyVersionId": "n2swCnpfxp3P8C81", "policyId": "jSJpuIZAmJ0KMrZz", "policyVersionId": "3lEkkZGeqHiBRIEr"}], "authType": "47uE6nxInlyO6NgT", "code": "lUuPdCZ5kHeqZGNa", "country": "RUSNTXpQig74RNgw", "dateOfBirth": "mlMxwtzwb1pxAF2t", "displayName": "m6ybgFH06GIo6VGL", "emailAddress": "d1QwQ0xCPuaSW5B8", "password": "e8MqNk2zlSTraSEN", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 248 'PublicCreateUserV3' test.out

#- 249 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'Jag27hylPUandqiU' \
    --query 'qDXGHh1Q82D5YQVb' \
    > test.out 2>&1
eval_tap $? 249 'CheckUserAvailability' test.out

#- 250 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["z9XD2GGKlFN9QW2Z", "8iLLCUMJkRKlNEWu", "IkYXbOXtBhNXZ2B6"]}' \
    > test.out 2>&1
eval_tap $? 250 'PublicBulkGetUsers' test.out

#- 251 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "PHPQWVnW2sv5Os6T", "languageTag": "TnPVsn1nc9XKyxSr"}' \
    > test.out 2>&1
eval_tap $? 251 'PublicSendRegistrationCode' test.out

#- 252 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "N84JAYaXFXi1qWw6", "emailAddress": "GTIItvExDP689avV"}' \
    > test.out 2>&1
eval_tap $? 252 'PublicVerifyRegistrationCode' test.out

#- 253 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "4gJF887POCviLsTN", "languageTag": "iSPI3eR9A2GkjW5I"}' \
    > test.out 2>&1
eval_tap $? 253 'PublicForgotPasswordV3' test.out

#- 254 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId '6LRnqWW9kQogCTgr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 254 'GetAdminInvitationV3' test.out

#- 255 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'nitmZbLzE3zxMnEu' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "HPBz7IRlUejl83b0", "policyId": "5plpKQW1uL8EZSKR", "policyVersionId": "DCm43XXsc0tNG3QQ"}, {"isAccepted": false, "localizedPolicyVersionId": "9Faiouwl1Z76Bq11", "policyId": "3jKKnBIIvoIDNnAH", "policyVersionId": "2NbfWtNB6694WzVo"}, {"isAccepted": true, "localizedPolicyVersionId": "hFpDHbKMcYTVwwoB", "policyId": "Jw8x5PEGlUhuRytF", "policyVersionId": "VajXQsyHJJR4lpI8"}], "authType": "EMAILPASSWD", "country": "WDjjmbwz4KM0Zna1", "dateOfBirth": "BRgLSbhjRsUS75VL", "displayName": "XPFdOyAXswRJUU1U", "password": "LYiwtiSqohXAKwkT", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 255 'CreateUserFromInvitationV3' test.out

#- 256 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "DkdUcmwegGxNgQP3", "country": "laJUizhhmcEOHNpU", "dateOfBirth": "0Ial23FyN0BC1umI", "displayName": "gi5jyzQ7ZsKOQhxJ", "languageTag": "jET6UPqJKU6V7hAw", "userName": "q45NDyCrYj0igyBr"}' \
    > test.out 2>&1
eval_tap $? 256 'UpdateUserV3' test.out

#- 257 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "epITdUSy17coNHas", "country": "B8hr1wbUkm07FrXw", "dateOfBirth": "4hWFzGEeF36pQ3GR", "displayName": "xkWuvQdCtXzQtk63", "languageTag": "abwtfh7qx7EP3sbd", "userName": "RCfStFZSuiSut67q"}' \
    > test.out 2>&1
eval_tap $? 257 'PublicPartialUpdateUserV3' test.out

#- 258 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "2iPvSaqyc1ZQz9Hc", "emailAddress": "IhDKBh0n5gmiJRtb", "languageTag": "qHt9zCPY79hgn3yS"}' \
    > test.out 2>&1
eval_tap $? 258 'PublicSendVerificationCodeV3' test.out

#- 259 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "1BqkJGk5FtBEW6Kt", "contactType": "J049lvkADc4ssXAr", "languageTag": "i1b3jYiTx79JUQwk", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 259 'PublicUserVerificationV3' test.out

#- 260 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ASK2YRClMk1rBhmQ", "country": "V78kTJYxC2kjTEGU", "dateOfBirth": "gIvndA64SYNwNryY", "displayName": "S6GePHsBF2dbZTL8", "emailAddress": "UmRhY9zNoi8MEuOX", "password": "TJriSAIJg83x9eNb", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 260 'PublicUpgradeHeadlessAccountV3' test.out

#- 261 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "JJwITyWIGxBXfnn3", "password": "XVHTY3mKuwvm7wDJ"}' \
    > test.out 2>&1
eval_tap $? 261 'PublicVerifyHeadlessAccountV3' test.out

#- 262 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "hM0WnJyNte9HMTTs", "newPassword": "WkDI3pz7erYML7hq", "oldPassword": "3IiWhS41EWjF8USd"}' \
    > test.out 2>&1
eval_tap $? 262 'PublicUpdatePasswordV3' test.out

#- 263 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '6uTTrTHInYVPHkCc' \
    > test.out 2>&1
eval_tap $? 263 'PublicCreateJusticeUser' test.out

#- 264 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'TySJTwpuWpoWEV9z' \
    --redirectUri 'pHezhRJYt2GmSCm0' \
    --ticket '6W17JxdFIam8aCAd' \
    > test.out 2>&1
eval_tap $? 264 'PublicPlatformLinkV3' test.out

#- 265 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '2mXVybO8VyolevUy' \
    --body '{"platformNamespace": "jSDIT88qS9Nh2Ix8"}' \
    > test.out 2>&1
eval_tap $? 265 'PublicPlatformUnlinkV3' test.out

#- 266 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'lKKRmQjGTUd7vZrN' \
    > test.out 2>&1
eval_tap $? 266 'PublicPlatformUnlinkAllV3' test.out

#- 267 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9vFWDc4zGPIzx1AD' \
    --ticket 'iIXLlw3bgU6yCxml' \
    > test.out 2>&1
eval_tap $? 267 'PublicForcePlatformLinkV3' test.out

#- 268 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'H7St7QNSnCOHJsd0' \
    --clientId 'VxmdVeDvtUzj5yLF' \
    --redirectUri 'S6wyxZsWGhI5zVMZ' \
    > test.out 2>&1
eval_tap $? 268 'PublicWebLinkPlatform' test.out

#- 269 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'HtMx8542LukGNVgI' \
    --code 'j7cuUINZbn9K7UW2' \
    --state 'P9PX5LkOf5m0bmTH' \
    > test.out 2>&1
eval_tap $? 269 'PublicWebLinkPlatformEstablish' test.out

#- 270 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'RvtpkIUdqOAiLeNN' \
    --code 'ezpZqygqdOylNdwV' \
    --state 'sx3hWBK3S0D0aBrW' \
    > test.out 2>&1
eval_tap $? 270 'PublicProcessWebLinkPlatformV3' test.out

#- 271 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "KqcKJlLKgTWiXkvQ", "userIds": ["0IMP8LrGkIXEI1zL", "DzPbHyB8mwNL2zi5", "ubv7AAvP0mExaj2W"]}' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetUsersPlatformInfosV3' test.out

#- 272 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "lYhk8exXS7eM8VYT", "emailAddress": "TJUTLuEQl78Kpbkm", "newPassword": "5fZVa4gNt2I20NfF"}' \
    > test.out 2>&1
eval_tap $? 272 'ResetPasswordV3' test.out

#- 273 PublicGetUserByUserIdV3
eval_tap 0 273 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 274 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DrIp9o84ZjjZ57QS' \
    --activeOnly 'true' \
    --after 'mN9tUypDdc6D9lCp' \
    --before 'hm7dU1cFUKmjA79F' \
    --limit '14' \
    > test.out 2>&1
eval_tap $? 274 'PublicGetUserBanHistoryV3' test.out

#- 275 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wIVvPyBfIrPIfrYF' \
    > test.out 2>&1
eval_tap $? 275 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 276 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Dh9ickCuMpJ8RJpI' \
    > test.out 2>&1
eval_tap $? 276 'PublicGetUserInformationV3' test.out

#- 277 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iS8218hdZ21gSGH3' \
    --after '0.2555389284405175' \
    --before '0.08069476458543323' \
    --limit '96' \
    > test.out 2>&1
eval_tap $? 277 'PublicGetUserLoginHistoriesV3' test.out

#- 278 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ygH7TaNYOvQg77hM' \
    --after 'fjI9bnEcl6Nemix1' \
    --before '7bJNDc4yGB087MOY' \
    --limit '95' \
    --platformId 'fT3jbvsiuEfP6FGL' \
    > test.out 2>&1
eval_tap $? 278 'PublicGetUserPlatformAccountsV3' test.out

#- 279 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ttmyU9vmnChfVCD5' \
    > test.out 2>&1
eval_tap $? 279 'PublicListJusticePlatformAccountsV3' test.out

#- 280 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'hsk29odk5ZOw3Fb4' \
    --body '{"platformId": "3VR7I4ECpUU2qa6t", "platformUserId": "HmazuinvXADDrj52"}' \
    > test.out 2>&1
eval_tap $? 280 'PublicLinkPlatformAccount' test.out

#- 281 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId '2FRKcLTBlqQ7nnuA' \
    --body '{"chosenNamespaces": ["oLFAeKKIUfH1RNOq", "SlV7hVdAiogRFiQQ", "MjyyVquKCviUHPJ6"], "requestId": "nZD1EeyqzKWxNgf0"}' \
    > test.out 2>&1
eval_tap $? 281 'PublicForceLinkPlatformWithProgression' test.out

#- 282 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Xh92NPpDsew8K2ra' \
    > test.out 2>&1
eval_tap $? 282 'PublicGetPublisherUserV3' test.out

#- 283 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TbjFtGb90JviaL8J' \
    --password '4wNHKZLKCApwmkKr' \
    > test.out 2>&1
eval_tap $? 283 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 284 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'Np3abtBkNIp61N4y' \
    --before '8TufvMGYIUlRzpHT' \
    --isWildcard 'true' \
    --limit '96' \
    > test.out 2>&1
eval_tap $? 284 'PublicGetRolesV3' test.out

#- 285 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'qd5pAZ42qdEOqnbo' \
    > test.out 2>&1
eval_tap $? 285 'PublicGetRoleV3' test.out

#- 286 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'false' \
    > test.out 2>&1
eval_tap $? 286 'PublicGetMyUserV3' test.out

#- 287 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'ROJNIEY14Goo9EfO' \
    > test.out 2>&1
eval_tap $? 287 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 288 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["RTLvqY9EwEVeQVYO", "rNdpqWvrENKhFGAp", "TdIXmyPAoYcZvKhV"], "oneTimeLinkCode": "P4sZPysLhd3vyrvK"}' \
    > test.out 2>&1
eval_tap $? 288 'LinkHeadlessAccountToMyAccountV3' test.out

#- 289 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "kDv2qnVkofyh1FLY"}' \
    > test.out 2>&1
eval_tap $? 289 'PublicSendVerificationLinkV3' test.out

#- 290 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'rLhyIr7Wk0qj8iBF' \
    > test.out 2>&1
eval_tap $? 290 'PublicVerifyUserByLinkV3' test.out

#- 291 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'WxJWcs2m0gaFPsn6' \
    --code 'SYeB7zCMO09wfjtW' \
    --error 'V7h2M8DQ3tEBH3Ho' \
    --state '3c5CknbOYF4Sv80g' \
    > test.out 2>&1
eval_tap $? 291 'PlatformAuthenticateSAMLV3Handler' test.out

#- 292 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'BU1S43IwSXdLkBAW' \
    --payload 'G6TwH9ZH4CiavIaY' \
    > test.out 2>&1
eval_tap $? 292 'LoginSSOClient' test.out

#- 293 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'YhkBD2drBXBv0Ytl' \
    > test.out 2>&1
eval_tap $? 293 'LogoutSSOClient' test.out

#- 294 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'NxcPKpUTFf9Xk7BJ' \
    --code 'HBZd2HI34J1ezOE3' \
    > test.out 2>&1
eval_tap $? 294 'RequestTargetTokenResponseV3' test.out

#- 295 PlatformTokenRefreshV3Deprecate
eval_tap 0 295 'PlatformTokenRefreshV3Deprecate # SKIP deprecated' test.out

#- 296 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'JVmXTR6nt9ZqUeEP' \
    > test.out 2>&1
eval_tap $? 296 'AdminGetDevicesByUserV4' test.out

#- 297 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'g1NJ5bzgdvRk6FPs' \
    --endDate 'tL0pYMvu75x1uFQw' \
    --limit '58' \
    --offset '84' \
    --startDate 'v0bBMU7FJHj1Ud8F' \
    > test.out 2>&1
eval_tap $? 297 'AdminGetBannedDevicesV4' test.out

#- 298 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'GfVmxbcART6UDZN5' \
    > test.out 2>&1
eval_tap $? 298 'AdminGetUserDeviceBansV4' test.out

#- 299 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "ni7HY3E6j72DP1oU", "deviceId": "nG1JEvk1WEMS907l", "deviceType": "azP6Vqr3kyTVG4DV", "enabled": false, "endDate": "5momPGezY6XdkzmN", "ext": {"UdGekaPQQ54c9ORw": {}, "2N2Cu8n7Ze4o5M06": {}, "GzsJo7f17kcAJJ4f": {}}, "reason": "sqSgJmXH8xDFrzO3"}' \
    > test.out 2>&1
eval_tap $? 299 'AdminBanDeviceV4' test.out

#- 300 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'Yd6F71euT7WkDSYm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 300 'AdminGetDeviceBanV4' test.out

#- 301 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'fkIhNVB0jq26j3hD' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 301 'AdminUpdateDeviceBanV4' test.out

#- 302 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'AI6GE7nXhWmNhqDk' \
    --startDate 'GD0FcndT3amTvTkt' \
    --deviceType 'pEb7iEdqRULt4LFv' \
    > test.out 2>&1
eval_tap $? 302 'AdminGenerateReportV4' test.out

#- 303 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 303 'AdminGetDeviceTypesV4' test.out

#- 304 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'qFHCmWxIaC2PgAsF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 304 'AdminGetDeviceBansV4' test.out

#- 305 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'j3OAsrCs5U9KF5TS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 305 'AdminDecryptDeviceV4' test.out

#- 306 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'lZt0Ecn2UxCwQbWv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 306 'AdminUnbanDeviceV4' test.out

#- 307 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'qU2tY6ARr73YNdBh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 307 'AdminGetUsersByDeviceV4' test.out

#- 308 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 95}' \
    > test.out 2>&1
eval_tap $? 308 'AdminCreateTestUsersV4' test.out

#- 309 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "Qbay0ajvaBKk1YQ4", "policyId": "vizhrtRut8XdylaL", "policyVersionId": "WIytL268SMqv5FCI"}, {"isAccepted": true, "localizedPolicyVersionId": "TeLhh25u9wYUmVqn", "policyId": "Zh3JFkVa8MRDkX0O", "policyVersionId": "FxeeCsidcGLrK1bP"}, {"isAccepted": false, "localizedPolicyVersionId": "l4lsDsg5ihQnoon9", "policyId": "hgX5o8WCegBbJ5aW", "policyVersionId": "wIWxgbkEm9tE6IrC"}], "authType": "EMAILPASSWD", "code": "3oeB5QiUYBEna1pm", "country": "QPyCiiW7hvWYC3EC", "dateOfBirth": "5vSWIuTy85jRDOG4", "displayName": "8jJFflv7HllFPYY6", "emailAddress": "orDQsewl3qDqf8Tn", "password": "2BFQs7U0miIAlHDR", "passwordMD5Sum": "GxE2UpK6T0zYbd1C", "reachMinimumAge": true, "username": "CICVkoE1xIj5mR7S"}' \
    > test.out 2>&1
eval_tap $? 309 'AdminCreateUserV4' test.out

#- 310 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": true, "userIds": ["Rv4gSJV7XKlYPuEy", "BcATBHazHBvMGOxN", "esGDZQX3YSMihs3k"]}' \
    > test.out 2>&1
eval_tap $? 310 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 311 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["kUF6kBIHZcNB5rXn", "tx5r0fOnV0T04vbq", "BIXC32vMkzyfqsp4"]}' \
    > test.out 2>&1
eval_tap $? 311 'AdminBulkCheckValidUserIDV4' test.out

#- 312 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'DUBBIDfEteB6dp71' \
    --body '{"avatarUrl": "kHnVt5jldtsxZsfr", "country": "tlv93ssPAU7lwfKE", "dateOfBirth": "lexRE8a8AhKCXHJP", "displayName": "X2B8us5VLMSzaCtf", "languageTag": "qcwZUeR3gYYUbdoY", "userName": "Dzb1ufD1kZeaC4S2"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminUpdateUserV4' test.out

#- 313 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'srBcYNQREmnK9CkJ' \
    --body '{"code": "dNBSS2Lcs74e1eXT", "emailAddress": "BQYfoeLe31YF1WTp"}' \
    > test.out 2>&1
eval_tap $? 313 'AdminUpdateUserEmailAddressV4' test.out

#- 314 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'fdhbazwWHsm7hyeY' \
    > test.out 2>&1
eval_tap $? 314 'AdminDisableUserMFAV4' test.out

#- 315 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'JIRK58UK8TwrBi60' \
    > test.out 2>&1
eval_tap $? 315 'AdminListUserRolesV4' test.out

#- 316 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'LLNML5H94QmZLkrx' \
    --body '{"assignedNamespaces": ["yf48PDt5nNVBdhhT", "N20kXri3ZnwnkKmN", "rt4NDMB3SqaNslg7"], "roleId": "LsNK4HEIE7tXDbmB"}' \
    > test.out 2>&1
eval_tap $? 316 'AdminUpdateUserRoleV4' test.out

#- 317 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ik0gZApeqWRYAgiL' \
    --body '{"assignedNamespaces": ["dippHcJHCVknCtYX", "is7suS3jNy6i7emC", "KcVAkM4qz3QNTruM"], "roleId": "spYCl1YRIndmVyvJ"}' \
    > test.out 2>&1
eval_tap $? 317 'AdminAddUserRoleV4' test.out

#- 318 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Qhv51O1HXOTOfp1S' \
    --body '{"assignedNamespaces": ["PyHgDZixpqDf7IZ4", "wYrBMWkpRc7pfxBD", "R0erUZkeOhV5NY71"], "roleId": "sDSdQFCoZRZgk0vZ"}' \
    > test.out 2>&1
eval_tap $? 318 'AdminRemoveUserRoleV4' test.out

#- 319 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'false' \
    --limit '84' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 319 'AdminGetRolesV4' test.out

#- 320 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "VDATFQP6ARM8gWwR"}' \
    > test.out 2>&1
eval_tap $? 320 'AdminCreateRoleV4' test.out

#- 321 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId '8VkmO2eSGqJRCCkX' \
    > test.out 2>&1
eval_tap $? 321 'AdminGetRoleV4' test.out

#- 322 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'UZtlKNnoLjRBMzH9' \
    > test.out 2>&1
eval_tap $? 322 'AdminDeleteRoleV4' test.out

#- 323 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'nz3L2NkL8Y5P8Ut0' \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "ZqeYQ3dUle58wtJz"}' \
    > test.out 2>&1
eval_tap $? 323 'AdminUpdateRoleV4' test.out

#- 324 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'ORmJBCtWmE9Xiz8h' \
    --body '{"permissions": [{"action": 18, "resource": "eixBTnFsMd5TvGBa", "schedAction": 2, "schedCron": "PazZQRR63xRyInlw", "schedRange": ["e65pn91AhSPcIDfm", "NOzErBUfHxXY0WBT", "dSZhOEZNYCaKP8ur"]}, {"action": 89, "resource": "VY3Dge7KVW2Crkcp", "schedAction": 98, "schedCron": "oCgGpR8GywcaUk0r", "schedRange": ["2Ygvi7dceT1iUddz", "x7VKa5ETTvAhhQZn", "FNALZ0OhMVmLPUOO"]}, {"action": 51, "resource": "fQj84FtP4TlowNIl", "schedAction": 60, "schedCron": "v3DhKJqh7jqwgErq", "schedRange": ["hR1KozVr9ALY8N0V", "tNO475zrWcJuLDtT", "yyHx3VLM2TnB2VXF"]}]}' \
    > test.out 2>&1
eval_tap $? 324 'AdminUpdateRolePermissionsV4' test.out

#- 325 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'UMAA3hj69pn6Pyzn' \
    --body '{"permissions": [{"action": 55, "resource": "DtSYhQG0PMyV7fUG", "schedAction": 14, "schedCron": "UbG1Q7yWNCI0zaE7", "schedRange": ["72o6Z7HBUajXfsaB", "KXmT4u2CsLXZQkD1", "T8Pqn76aIliAYfB6"]}, {"action": 76, "resource": "com3Ivv1Cw2nWf3M", "schedAction": 27, "schedCron": "38cDowM4bnB4HcVS", "schedRange": ["TKVU3aklXutmraPu", "wCS2Hxw1ejiWSoKE", "60IE9ARGyiFDfTDi"]}, {"action": 7, "resource": "A7k9hmIWKGqtXhZe", "schedAction": 34, "schedCron": "z3SjvvOgOqq0zJjT", "schedRange": ["ahzAP2JdYP7KTagy", "ejAQI9b5p7eoe4Eu", "keM9SHtCvRr9HOJs"]}]}' \
    > test.out 2>&1
eval_tap $? 325 'AdminAddRolePermissionsV4' test.out

#- 326 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'XeskhKB2z3eAfRUj' \
    --body '["BTELqFoME4n9r4qf", "7NPwAB8aRMW0rrzE", "c7STmA36a2D7OTOX"]' \
    > test.out 2>&1
eval_tap $? 326 'AdminDeleteRolePermissionsV4' test.out

#- 327 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'opPcnUYL24QdJH7f' \
    --after 'CkS5wVjQQQaWR4Ij' \
    --before '3eNXxJxXAj2z1vFc' \
    --limit '18' \
    > test.out 2>&1
eval_tap $? 327 'AdminListAssignedUsersV4' test.out

#- 328 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'wHNs0TEFsJU7zJFo' \
    --body '{"assignedNamespaces": ["mFOXRIYUbNbDYDzk", "zje1pJPWpjnynJ4C", "1mdYpPqDbU8KANi4"], "namespace": "UXnuY346bdk4pn3v", "userId": "g8NNMiKp3qypXKxh"}' \
    > test.out 2>&1
eval_tap $? 328 'AdminAssignUserToRoleV4' test.out

#- 329 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'pfS1RQj5yNXoIQGA' \
    --body '{"namespace": "vl0oE5BTIkUR4IRp", "userId": "yy1bVxlaOAQBp60v"}' \
    > test.out 2>&1
eval_tap $? 329 'AdminRevokeUserFromRoleV4' test.out

#- 330 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["58i4MDMiGJmMJ869", "dt63sMwfJRLuJnb5", "u1YXLn4P9g4DA2KI"], "emailAddresses": ["2F2J8tql9gLoZfUu", "Qesd8renus8MO5VN", "qUq7iekvIs5aSEAK"], "isAdmin": false, "namespace": "aRC9HSSu5sv77BAQ", "roleId": "4TZSfheVYVzb8qEm"}' \
    > test.out 2>&1
eval_tap $? 330 'AdminInviteUserNewV4' test.out

#- 331 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "tzdQ10xNWMTa23gq", "country": "meLASOziH1OMUxpl", "dateOfBirth": "ecOHKbFWLvXlu9Tk", "displayName": "wCGNJOoAcdluJflA", "languageTag": "PPl86IYgo0vidUOa", "userName": "a4xSylMRKNLBRaGg"}' \
    > test.out 2>&1
eval_tap $? 331 'AdminUpdateMyUserV4' test.out

#- 332 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 332 'AdminDisableMyAuthenticatorV4' test.out

#- 333 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'vI1Xm6MTD2dM3bzb' \
    > test.out 2>&1
eval_tap $? 333 'AdminEnableMyAuthenticatorV4' test.out

#- 334 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 334 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 335 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 335 'AdminGetMyBackupCodesV4' test.out

#- 336 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 336 'AdminGenerateMyBackupCodesV4' test.out

#- 337 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 337 'AdminDisableMyBackupCodesV4' test.out

#- 338 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 338 'AdminDownloadMyBackupCodesV4' test.out

#- 339 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 339 'AdminEnableMyBackupCodesV4' test.out

#- 340 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 340 'AdminSendMyMFAEmailCodeV4' test.out

#- 341 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 341 'AdminDisableMyEmailV4' test.out

#- 342 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'AmRU1hwFMwKEdCTf' \
    > test.out 2>&1
eval_tap $? 342 'AdminEnableMyEmailV4' test.out

#- 343 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 343 'AdminGetMyEnabledFactorsV4' test.out

#- 344 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'FU3IS8l47MGkXMfT' \
    > test.out 2>&1
eval_tap $? 344 'AdminMakeFactorMyDefaultV4' test.out

#- 345 AdminInviteUserV4
eval_tap 0 345 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 346 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "w0YqYP5CziWssP4w", "policyId": "jS7Bt7Fwkm9cKE6e", "policyVersionId": "TfhBRQlHAURdVQes"}, {"isAccepted": true, "localizedPolicyVersionId": "wJ6bOB7lOHiKtsht", "policyId": "iY1rZPC3C5guemEf", "policyVersionId": "3tRkdICbSTnH4krC"}, {"isAccepted": true, "localizedPolicyVersionId": "vCp9IdQMFOEKWxgR", "policyId": "HZ9AqwUTjPoK9tok", "policyVersionId": "2hWDP93mY2eLJFIF"}], "authType": "EMAILPASSWD", "country": "edN82E72gIXxD7yI", "dateOfBirth": "bXxcMxGKM1xximqX", "displayName": "WlCRbH0gsjgXP8mo", "emailAddress": "WGLhGClIK75v100v", "password": "TbcvtTOasIGe76AV", "passwordMD5Sum": "n2cwcfg93bIkBNE1", "username": "8NsEYNsLSmdY7TtY", "verified": true}' \
    > test.out 2>&1
eval_tap $? 346 'PublicCreateTestUserV4' test.out

#- 347 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "noaISgYFGUeVUhwo", "policyId": "hESQagYX2fTaVT0k", "policyVersionId": "0hW9ds6eASQiV9NF"}, {"isAccepted": false, "localizedPolicyVersionId": "SJD4GxeZN4u43r3w", "policyId": "tKSz9M5Wy7bRCwqP", "policyVersionId": "oQv9rbUjRENhA3Cp"}, {"isAccepted": false, "localizedPolicyVersionId": "WUkU7OLHljPBn897", "policyId": "BWinFkaTrOEKPJCK", "policyVersionId": "lL3lRWfP9WYV6s3X"}], "authType": "EMAILPASSWD", "code": "norhgZLamJFJ8JBp", "country": "2LtVYRceUNbAnUBV", "dateOfBirth": "kXKUpaLy6U2hGdVf", "displayName": "cS1Malfen5DbLkSB", "emailAddress": "Nu3JIKwIW32IFisd", "password": "D825we4JlYBxSwLF", "passwordMD5Sum": "bUYlmGRKDzHDJxoA", "reachMinimumAge": true, "username": "klbxctVmRg809jdB"}' \
    > test.out 2>&1
eval_tap $? 347 'PublicCreateUserV4' test.out

#- 348 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'c4UKTGTFkao5FLui' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "xuXnN8jUmBfZAflY", "policyId": "mX7pcBEYe6gQRPnO", "policyVersionId": "HWrERD8qclTIld9R"}, {"isAccepted": true, "localizedPolicyVersionId": "UFT6XIgMmWkbZDfv", "policyId": "imye6h1U0DV5NuE7", "policyVersionId": "6bnMOgIGEzHLih1U"}, {"isAccepted": true, "localizedPolicyVersionId": "OIeSV44EVESK4jf3", "policyId": "WppmGkttu951FHtF", "policyVersionId": "DijNOv71Pwz7v7Bf"}], "authType": "EMAILPASSWD", "country": "Llx1HoVjPzdKx8R2", "dateOfBirth": "pCUTHegi5Sp5bfm9", "displayName": "0YjhnIzOZAI6ohqX", "password": "ZGYnJIVAdvRIr6zy", "reachMinimumAge": true, "username": "CNbVD9EYjRLJV7kp"}' \
    > test.out 2>&1
eval_tap $? 348 'CreateUserFromInvitationV4' test.out

#- 349 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "CynOwGQCfbIWHknC", "country": "Aquwxw06VqEQyiEC", "dateOfBirth": "tcfM53xAep8O8KqL", "displayName": "FrFLDRXRSDYQ0lEL", "languageTag": "4wujk1adsSeuPtGN", "userName": "ovZhLFUBlHsauWMn"}' \
    > test.out 2>&1
eval_tap $? 349 'PublicUpdateUserV4' test.out

#- 350 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "3o2ZVwRJxwC4uNXp", "emailAddress": "2geWcXRtXKE7yB6A"}' \
    > test.out 2>&1
eval_tap $? 350 'PublicUpdateUserEmailAddressV4' test.out

#- 351 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "0w49NcF3vo43IFP9", "country": "7b7sh8c2yCyBcpNW", "dateOfBirth": "ESDA09POMfJGMKWr", "displayName": "fQ2c92EXw1ZQTFwc", "emailAddress": "aFMiYdmTNCMwD0b9", "password": "lmP0lQQZ1DwayPBZ", "reachMinimumAge": false, "username": "MX6icTTu0vfqhIJC", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 351 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 352 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "KmF6Dt7QW5grFQG5", "password": "9oggKVKr0o9FDLRB", "username": "VvTXAXuXsxuI2vPj"}' \
    > test.out 2>&1
eval_tap $? 352 'PublicUpgradeHeadlessAccountV4' test.out

#- 353 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 353 'PublicDisableMyAuthenticatorV4' test.out

#- 354 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'WKgFF6FppZDTPuaF' \
    > test.out 2>&1
eval_tap $? 354 'PublicEnableMyAuthenticatorV4' test.out

#- 355 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 355 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 356 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 356 'PublicGetMyBackupCodesV4' test.out

#- 357 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 357 'PublicGenerateMyBackupCodesV4' test.out

#- 358 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 358 'PublicDisableMyBackupCodesV4' test.out

#- 359 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 359 'PublicDownloadMyBackupCodesV4' test.out

#- 360 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 360 'PublicEnableMyBackupCodesV4' test.out

#- 361 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 361 'PublicRemoveTrustedDeviceV4' test.out

#- 362 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 362 'PublicSendMyMFAEmailCodeV4' test.out

#- 363 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 363 'PublicDisableMyEmailV4' test.out

#- 364 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code '3MNCd3Lfewjlhw2D' \
    > test.out 2>&1
eval_tap $? 364 'PublicEnableMyEmailV4' test.out

#- 365 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 365 'PublicGetMyEnabledFactorsV4' test.out

#- 366 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'TfK3btcOy4nlS08p' \
    > test.out 2>&1
eval_tap $? 366 'PublicMakeFactorMyDefaultV4' test.out

#- 367 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'MoWvSXrAtUBVgz46' \
    > test.out 2>&1
eval_tap $? 367 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 368 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "4GanwzPrSlyaIE1k", "emailAddress": "qOvXiuacSdopkjmS", "namespace": "QTiwMYuGii8QAflK", "namespaceDisplayName": "X4UaQKygu5zOrM3w"}' \
    > test.out 2>&1
eval_tap $? 368 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE