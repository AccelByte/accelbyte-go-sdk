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
echo "1..363"

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
    --body '[{"field": "pqTcSppibI7TXX5V", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["yIxAHjo0FRATeFvT", "oJZjK3qT3QsoMRJx", "YinjlZAB6i5dHi7H"], "preferRegex": false, "regex": "mgqEkpJxCN3zBlsf"}, "blockedWord": ["b1pLG9hS7T1laayU", "1TcpVumU3lEPsCfU", "KbhoVIPbGZARGy7n"], "description": [{"language": "VfmZKZfTY5H4f73r", "message": ["9L4RMywm0bAZD3LT", "2Dtgo9mXhwa6OC6A", "BYAXUJO6WH6pSwN0"]}, {"language": "IpAR87JMP0shJ73F", "message": ["R71xvLr3SvcZMfrb", "tjxyekugUizrT7Rk", "V78ud7jDiQZAHea7"]}, {"language": "7ITif8QpH1PXZ07X", "message": ["SgaFQ3ps2bdM7Bh4", "2r2HwwR6mVTz25s2", "mgBHEXW5eGsZvlBg"]}], "isCustomRegex": false, "letterCase": "JMtADR5QD7huKH8N", "maxLength": 51, "maxRepeatingAlphaNum": 93, "maxRepeatingSpecialCharacter": 85, "minCharType": 73, "minLength": 61, "regex": "fA3afhRick9yQEqp", "specialCharacterLocation": "iMEfYrFxDaPtcT1w", "specialCharacters": ["UT16pXHORGM07EV2", "5040u8IS0qDNhLH9", "P3OGmIDEv0s8vR63"]}}, {"field": "nwWTfCBKkaK275sh", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["JXdefovoI5ImJPLt", "6jKGXTWBAHFyLnHQ", "Elzjf1r31Wa6mi0n"], "preferRegex": true, "regex": "0nPCSzq1aHZoKzye"}, "blockedWord": ["NFBqHfv9geQSvxYa", "kYDU3J11FJmpF0d9", "lAReIDoyDzpv4ZGy"], "description": [{"language": "GHFL1gw9lPw3fk7V", "message": ["LmurFCtCZTeWNfYy", "PTmumScyyCOnSdf8", "K65VUTKP6XJG7gyR"]}, {"language": "r9VVW6nZSke8ZaZd", "message": ["TY8k3u5F2ljn9oFl", "c1pKoTyd04y9lT7L", "RJkcQ2mYBhcspKbu"]}, {"language": "1I8DjUzOAP0IkFZX", "message": ["HNU9xo5J37HWc46f", "fYlOEhxroeZZ8eqg", "TOHPkouKeSI2683Y"]}], "isCustomRegex": true, "letterCase": "oyYYfJqTjpzahnAv", "maxLength": 45, "maxRepeatingAlphaNum": 95, "maxRepeatingSpecialCharacter": 44, "minCharType": 54, "minLength": 99, "regex": "wLN2XeAoqVpblSvz", "specialCharacterLocation": "V4mmBgfhPyHKFe7t", "specialCharacters": ["FTWzwkwjK04HLHSC", "bLNkLyA1LcxsaYm4", "OjH6QCfr6MB1l8Df"]}}, {"field": "GeOLbobmuH1vkk7Z", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["AZTvCA2bryPuz0jy", "g9B27PfGEUYHqLlF", "gGwSYMKQlvyR0rf0"], "preferRegex": true, "regex": "1OFDK5PVRhP4sdG0"}, "blockedWord": ["01jF2Bhmm6Ww6wb3", "907xzFaqsYKj7bdn", "m9FzNvnRbPRebOJC"], "description": [{"language": "neHgUlsZ8FH5rmkt", "message": ["YCaB3eZb69XBNxLR", "iXNoMQuPrB5mJqwz", "E0k27fOW3y4CRXJV"]}, {"language": "Be9US99NwJlK5UdV", "message": ["LaeYUsNw8Wmh4Lum", "ekdbKkRC0hmOWhjR", "p2MqvERKGX8pXuCZ"]}, {"language": "mthe5ybUeJXz0MqO", "message": ["y7KY8QctOKpj19a5", "ihmIl3bOZfehDttM", "mKwrTqoFD1JgBmgk"]}], "isCustomRegex": false, "letterCase": "2wwUZzS8E1sjoitS", "maxLength": 36, "maxRepeatingAlphaNum": 48, "maxRepeatingSpecialCharacter": 25, "minCharType": 71, "minLength": 55, "regex": "gyaYuuSwss4WMXX5", "specialCharacterLocation": "ZpXmWlyt98zsfuhx", "specialCharacters": ["k15g9HAE4lyhh4QX", "iAVIPKZKtvBcCZli", "Ss41xEOF1HQRmIxW"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'i5njSbgEUSxA8Bxn' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'NhCBSkvnqOGQpvDj' \
    --before 'HbSjzkQGnukDDZ4s' \
    --limit '84' \
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
    --body '{"ageRestriction": 44, "enable": false}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'N3tQaybI0K08oELI' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 30}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'YVOdg4yOgzmtOJqU' \
    --limit '10' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "LiFNKqLVFhQZbm2a", "comment": "sCBGtMeRKOhEsCpC", "endDate": "PqEJqj63O6uFwNf2", "reason": "1Wjt0pwUTgPqdyRH", "skipNotif": true, "userIds": ["e8oWruQQX2MKInsX", "Nc0WKf7U108jMOI3", "rqLMU1QDalsvYUfL"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "t00H1wN2N2fhP9M7", "userId": "vS5z5PuWwnT0NFV8"}, {"banId": "eeZfqo2GQwk6k5Jt", "userId": "hN0Q34hVdZ0Q8pYL"}, {"banId": "Man8CNp4i9yNyIl2", "userId": "oPjrQcFvw7jJ6B1p"}]}' \
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
    --clientId 'coHS70i94S3n6hZu' \
    --clientName 'F9H2Nle3Ybo5fpxr' \
    --clientType 'Loh8ZQM3IevmGMVO' \
    --limit '31' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["9i9lQVUSn7FLdq9Y", "s1ypRhbyB1q68hPr", "SKIlEFXjt96iuPsP"], "baseUri": "X1W2aftFYksY6yd9", "clientId": "wBimAqaGKAM4U4Wo", "clientName": "B05BzwfHPFiM6s2s", "clientPermissions": [{"action": 7, "resource": "AnrRbzoGhD1nnaw4", "schedAction": 12, "schedCron": "DWkKdkg8wwhZcX3B", "schedRange": ["bq4l14lAu48XHzRd", "My6kGWEtk8fhaHr5", "aO9rx9enR8qiMnF4"]}, {"action": 73, "resource": "TEMZRdqCOQLFSWfd", "schedAction": 26, "schedCron": "F6mDbHAwWGtrmfo1", "schedRange": ["HAmSi14FZMoTuryX", "WoWOg4AqT4BJDQNY", "1fvaF7rJwIgOOgKQ"]}, {"action": 49, "resource": "k3rdjQakhgng6EnO", "schedAction": 80, "schedCron": "zJYJykDK6k36EWuf", "schedRange": ["cCfe9EZPH1sz2oON", "QLXusQNWMerHSr1r", "Qs11CPe96or47v7k"]}], "clientPlatform": "gbI1vu5H68feTqqY", "deletable": false, "description": "kJQFTCxECf2f9CFT", "namespace": "GwYiE02sq2PaG1gN", "oauthAccessTokenExpiration": 93, "oauthAccessTokenExpirationTimeUnit": "GTUsJM4iglp3dQw9", "oauthClientType": "SBUZdF4hL1lyRGUu", "oauthRefreshTokenExpiration": 67, "oauthRefreshTokenExpirationTimeUnit": "GIPUWwx8Aahs6VJf", "parentNamespace": "Rq1k1wGgcaldVmR0", "redirectUri": "ZkhpCiT8mV7DMJVn", "scopes": ["V2dpl8yKCwWR2HUG", "WvoGN9YFCg8T3C7i", "tPZnQ62pcMfStpbx"], "secret": "eoLCTLVlxpGJZd5m", "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'hcWNMLBqix4zrZYl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'plzJ2OGFZALJeYpq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'sdXSKTNDwGa0mjS9' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["CycWgDqZw3vmjw2u", "kcZbxgAiuNxO2zV7", "JI9cQ3wCzkFwREZu"], "baseUri": "9BtYpOKs8XFth4ow", "clientName": "6zgYXBAC9SNtbKWc", "clientPermissions": [{"action": 2, "resource": "urFgRV60jCXQInwY", "schedAction": 61, "schedCron": "LKMiQrwzRSpzP6W7", "schedRange": ["nDTBS6Habe7CHAbB", "chtE2HxHMAP2dj1X", "tzw5sqOPBVRB7lly"]}, {"action": 49, "resource": "LQKWJqb6nAafkQHc", "schedAction": 5, "schedCron": "5ZH9xBtSwHcSLzwI", "schedRange": ["VD8FHCQ57EXp5ZvF", "VPxRBOlFfNZHAVIn", "Y8urcNFd35R6Rpcm"]}, {"action": 40, "resource": "BDI4wiPALnE2vFQF", "schedAction": 14, "schedCron": "Y02MrqJp7GLJRV6G", "schedRange": ["n4Yr9gI37u69wvQD", "6FNy4tt60EdDP5UO", "6S9fMik8t3WAaDM1"]}], "clientPlatform": "SIjV9AucFPQEZLtZ", "deletable": true, "description": "FVmPTvuvTpUbDxic", "namespace": "4aWuSdITmqay2uYh", "oauthAccessTokenExpiration": 41, "oauthAccessTokenExpirationTimeUnit": "CxczTlDDssvvvAjJ", "oauthRefreshTokenExpiration": 19, "oauthRefreshTokenExpirationTimeUnit": "GQAgj3k9HZ9hd2DC", "redirectUri": "oESBXjr9kimsWSNO", "scopes": ["G35x2odAfjKBbIjR", "hbpCzwPM49LSAZuz", "0iZ89lHIT65nR5L5"], "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'CpV45rXkI3aDn59u' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 82, "resource": "7TAZLytnCEWGncpa"}, {"action": 62, "resource": "enllyuS4JiZuCJJV"}, {"action": 3, "resource": "w3uhOa1Uv32DO3rU"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'tmUe8CiO4k5k6Vsc' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 36, "resource": "6pl8Usy6iLvpcOiT"}, {"action": 4, "resource": "cV72nAtjgpQNCx0e"}, {"action": 42, "resource": "n1UmzTaOdGqeOgpy"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '66' \
    --clientId 'YYgKRrePRjs2R7tr' \
    --namespace $AB_NAMESPACE \
    --resource 'uSdr0l6PsgOkPqd8' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteClientPermissionV3' test.out

#- 128 AdminGetCountryListV3
samples/cli/sample-apps Iam adminGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    --filterBlacklist 'true' \
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
    --body '{"blacklist": ["p34tF4RbxczpCnvM", "E3pZdNUevWIiblNN", "iPOpUoQK8UfUzpxd"]}' \
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
    --limit '2' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 133 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 134 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'hGX1NT1VZugD4KzD' \
    > test.out 2>&1
eval_tap $? 134 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 135 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '4pHreM3oEQ5e4TuC' \
    --body '{"ACSURL": "atL0kLjID6153SjD", "AWSCognitoRegion": "VR2nQQWM6CDjgDd1", "AWSCognitoUserPool": "BK5ZF3P635FG7gCY", "AllowedClients": ["PIieelM27zc9k0Uv", "H7fEaxR9CiZbiE8g", "5dcyA3mWvOxBNp9V"], "AppId": "YUmbOmc9EbjCE9Wq", "AuthorizationEndpoint": "K7qcXp9PgVgNGVX1", "ClientId": "7h09MDHMIc18MJF5", "Environment": "n7OjAB4SevZqh0Pr", "FederationMetadataURL": "a9rM8WMYE3byNiGn", "GenericOauthFlow": false, "IsActive": false, "Issuer": "S7lTwIOrqCrWUSEf", "JWKSEndpoint": "sVl0YC5jWygOnJBK", "KeyID": "7gdeghI1dbjmLZIt", "NetflixCertificates": {"encryptedPrivateKey": "7sDjm1S37tnQQAvh", "encryptedPrivateKeyName": "3rGml1glF2VniTBj", "publicCertificate": "hUyiaXOCLQy9km5c", "publicCertificateName": "yjZga08ZOitySWww", "rootCertificate": "UNV0lNA2lO7XXcM2", "rootCertificateName": "Qh6ixJOL1NF1KOox"}, "OrganizationId": "K5qUw9trhCElvgTq", "PlatformName": "lCWnUtPbHljHsSSs", "RedirectUri": "5fIaL90BOV08ODF3", "RegisteredDomains": [{"affectedClientIDs": ["JCCeDHDjsu0ENEtT", "izdi1pKydqTm78kw", "kyTNmQVMD1MPZAQN"], "domain": "gZfV6xlVnAboTleG", "namespaces": ["y5LM3mO6s100ANvx", "5FmEBaRcySwPJbS8", "JLAcehHQ3rdHIyna"], "roleId": "sLiwbnwuL7M64TQQ"}, {"affectedClientIDs": ["9vprvBmJrVIj9yYH", "V7vn6noIIz70HKwe", "Dl8Ni8uFZ06SWtjr"], "domain": "AWKxXjx8ihc5Nktg", "namespaces": ["L9IDAKkpDhXGOgjd", "iRawo8TwlDuwX3qq", "0xaWNwmWRHp5eZAx"], "roleId": "a17zYYyyqFtryZnJ"}, {"affectedClientIDs": ["RBbTSTgS5gZ7uqIU", "K7yuEwGaq5h5nSbf", "IdSL3hbvtVX9A52Z"], "domain": "sTF6LaZKTn9OL09j", "namespaces": ["RMteJ6OdyDKBZcWy", "63H1E3da2183tqJR", "y5yvyEDImQsOjyom"], "roleId": "3gjCDQCgReMezMBp"}], "Secret": "EsBnG3S6udVIdWMz", "TeamID": "J81fj42t38h0ZbFr", "TokenAuthenticationType": "9DyvMXcUuPTPAjMT", "TokenClaimsMapping": {"wYbeXrT7EA0EIHBm": "Ti7DroHMPzkmhACX", "DdtcMDJxw7EslczA": "T53J5cxjIVhCriHc", "IYhOAta9N6gZ9evF": "T8cJyXAvKfs2gVM3"}, "TokenEndpoint": "lC5iwnwS6h1R6uQU", "UserInfoEndpoint": "sPjAahhE63G7U4HV", "UserInfoHTTPMethod": "R7ogElSkKsQtYKqU", "scopes": ["nQ8eVSUAf054hRNX", "D2nvzuBOc3bS2YU2", "TEcGiKiyFDVg5xGw"]}' \
    > test.out 2>&1
eval_tap $? 135 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 136 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'uwiIo4eyb0RttLZN' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 137 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'tqmoceIObG8dBlUp' \
    --body '{"ACSURL": "XMGmar6YopocBwPA", "AWSCognitoRegion": "uWfv0OtGdLohBMRK", "AWSCognitoUserPool": "61hoSqXT3hvEOPtB", "AllowedClients": ["uYPaUcC6ZEz101o7", "nyRebtekVaw6wcKP", "UHUchlkJ9pUUvNQf"], "AppId": "W4pnLnvBnsvXeYQ9", "AuthorizationEndpoint": "cIQGVBsq9xkfek5F", "ClientId": "jkNHqbc59W3BMyzq", "Environment": "48nHcwUTF5kWEguG", "FederationMetadataURL": "h6guEmtSgVmUYpXk", "GenericOauthFlow": false, "IsActive": false, "Issuer": "ENIJVmq3HgwDZK7v", "JWKSEndpoint": "DDed7Us6hMyer8Hv", "KeyID": "DRBQtHrTuEfifP9w", "NetflixCertificates": {"encryptedPrivateKey": "dV83xACpoAqISUrF", "encryptedPrivateKeyName": "COadD7wftr5EtyFQ", "publicCertificate": "cXVPHZYRtEHPCboK", "publicCertificateName": "lXjM0zFerEv8QvUm", "rootCertificate": "R9kvZoSEiv8AUwyb", "rootCertificateName": "iat8NWlkwZiIEq7L"}, "OrganizationId": "gAIhbKCHfxcDKVxh", "PlatformName": "mZ9YJNOHhwxCbAz0", "RedirectUri": "xFmtvEYUmsRqwzeO", "RegisteredDomains": [{"affectedClientIDs": ["ZqJheTiLsAoLjKDD", "9mUNxa3IY3oi1p4v", "CAlumsrWPfYdu1Q5"], "domain": "4PPO2K1NZxVtxWF3", "namespaces": ["OjJvk2hozzIqfRF5", "PjsbNm7jiNuP6GmG", "1m2Pc1nz23mnFIga"], "roleId": "xL4i5Fx6X06cch1o"}, {"affectedClientIDs": ["OwnerXuNI43Ld0oA", "ECFJyKdKsteIEpDj", "TDgZ4dLYGHrL9X16"], "domain": "snLdmGMAipXquBg5", "namespaces": ["biVrcyYT0IEu7jRE", "xHbkL2EEWMlzpZw6", "FctbC8OK9fnCF5K7"], "roleId": "jUdWchDMpHaEsnTA"}, {"affectedClientIDs": ["3OBqwcpwkraKnUeE", "CZpHPp5DAvCuYmYo", "Rkt9pajULOBQR9hJ"], "domain": "f6PmSNLePfG3NFlf", "namespaces": ["kgkC65Rwei0gIKSw", "RvW7rJAsDuhvJnqY", "Cwn17JPmx4DRclBw"], "roleId": "cc6rhogTap3MVEiZ"}], "Secret": "gLdYEzZw1RWXFYvN", "TeamID": "qi33kYjaxdlyEVRy", "TokenAuthenticationType": "7tPJzVBWp2ZpZIAs", "TokenClaimsMapping": {"2rrSNbHzGmNm9aen": "0dlAqdsq5H20RRA7", "Xp9LAIiNBmMAHIek": "Mo6uhMZ2iKSqR2oy", "tCH8CjPCbxNUUf04": "jKKX9R16UwW3kVpW"}, "TokenEndpoint": "ibx4Slm8vgUI0xf9", "UserInfoEndpoint": "xrkIQbh6VHNmJVoj", "UserInfoHTTPMethod": "hpJ4RsGtgmsLImgu", "scopes": ["8pd750gpPNoJUzrJ", "6P8IxlzXAFhWgHm1", "E1YsllOlkmCm0zEJ"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 138 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'WwkhGMuZoemKJrJy' \
    --body '{"affectedClientIDs": ["rohqzJQUO48U5gJe", "FAj72UMUtIbrcFhH", "tZrO1i2itTrITPqD"], "assignedNamespaces": ["6AwsUwNzC2tSC47H", "bDg7AWo7bAzFLxb0", "OjUH3wnkIyEzFpF9"], "domain": "J50byaczKjIMkwNK", "roleId": "54hIIa46gJg7SHUx"}' \
    > test.out 2>&1
eval_tap $? 138 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 139 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId '3pBNlI9dfucsRIsW' \
    --body '{"domain": "k5GJh8HOdjwxqESY"}' \
    > test.out 2>&1
eval_tap $? 139 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 140 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'S8vaNAcNT18UiGZB' \
    > test.out 2>&1
eval_tap $? 140 'RetrieveSSOLoginPlatformCredential' test.out

#- 141 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'EMtEob5T6138j7eb' \
    --body '{"acsUrl": "YhxbmdMho705S5Qj", "apiKey": "EaWJojLKqsckEhrq", "appId": "4xPFwokSXt8V6XnB", "federationMetadataUrl": "RmIX9gjWiIIV5ua8", "isActive": true, "redirectUri": "W1ssZYNl4RxSAwAz", "secret": "avnwYRJrY4rwtXAI", "ssoUrl": "7peGLjvs00fCmxgM"}' \
    > test.out 2>&1
eval_tap $? 141 'AddSSOLoginPlatformCredential' test.out

#- 142 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Gr451ExKCDBl1NK1' \
    > test.out 2>&1
eval_tap $? 142 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 143 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'SjS7mgOkwlQdIMxS' \
    --body '{"acsUrl": "CICcCxYKakN0C1bj", "apiKey": "zYGQrKQTuBTfdNxe", "appId": "bl197XQpNLgyN5Oo", "federationMetadataUrl": "APxDKkzDyeT9xZkZ", "isActive": true, "redirectUri": "AQ7q5Mc4JV16idy5", "secret": "gPRqq2zkqAleFFkr", "ssoUrl": "s8dpIhyMqy49yM3s"}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateSSOPlatformCredential' test.out

#- 144 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId '88cXzKe1gqO1JAUl' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["mBKxRn6afZHI4Pe3", "rifHNoHmyWETOfd3", "j01KQmanZfc6JkGr"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 145 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'P4r8IdcERq0eV8Uo' \
    --platformUserId '8t1oEtzUTamblRVz' \
    > test.out 2>&1
eval_tap $? 145 'AdminGetUserByPlatformUserIDV3' test.out

#- 146 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'T2twnspPt42jXWq3' \
    --after '66' \
    --before '71' \
    --limit '23' \
    > test.out 2>&1
eval_tap $? 146 'GetAdminUsersByRoleIdV3' test.out

#- 147 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'zrqnLrQjs5RcSx0l' \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByEmailAddressV3' test.out

#- 148 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'Iod1dZSZ2ll9oQKZ' \
    --body '{"bulkUserId": ["sVZ6temLKjsNFy3F", "9jNtYuOtkw2mGKw4", "sh9Yvf5Vv5ZXzRLg"]}' \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserBanV3' test.out

#- 149 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["AomHvZ0KciROwjbo", "ptQQt1wCoQmyntpI", "GynAD1yIx4maKxKS"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminListUserIDByUserIDsV3' test.out

#- 150 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["lzXwlr2AoF41xCew", "WoGFDdFqxCh9gHnt", "9pfei4NviGQ7nmi2"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminBulkGetUsersPlatform' test.out

#- 151 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["IE5FkwALX6mp0WAw", "hcBoeIwZ527ro0g6", "pihf8qsBr1KEn8hZ"], "isAdmin": false, "namespace": "iGVSH5LApF9mThOZ", "roles": ["yf4FuaUONdRYqt6j", "e6P5u9sqHIWn7bgQ", "BV9Hion3s3LTig2P"]}' \
    > test.out 2>&1
eval_tap $? 151 'AdminInviteUserV3' test.out

#- 152 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '86' \
    --platformUserId 'xERZ7WOPdlVHe5td' \
    --platformId 'z3X8s1Mnc4c0e1HA' \
    > test.out 2>&1
eval_tap $? 152 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 153 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUsersV3' test.out

#- 154 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'FHgYjxOm0vbtcPtn' \
    --endDate 'bITqevW8fu0j6u47' \
    --includeTotal 'false' \
    --limit '16' \
    --offset '96' \
    --platformBy 'l392bK6NNteNhQHS' \
    --platformId '8Oror7JvCx8uFI1j' \
    --query 'NKpMunU2Z7af8JtJ' \
    --startDate 'XaQzvcc4U5sOX1dv' \
    > test.out 2>&1
eval_tap $? 154 'AdminSearchUserV3' test.out

#- 155 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["MRRnnckwqY2PLtdE", "5Zcat2O1Y4qkHpuT", "loMnf4cGCgitOanK"]}' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserByEmailAddressV3' test.out

#- 156 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TDLubFZhROzbLcQS' \
    > test.out 2>&1
eval_tap $? 156 'AdminGetUserByUserIdV3' test.out

#- 157 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BL8c940uJ8Vjavy5' \
    --body '{"avatarUrl": "VNfCSH3TKPlXaBFP", "country": "DQgSJ1fv2Xz6Q18q", "dateOfBirth": "zDTio7meCZMzC37K", "displayName": "kKtzzs2Y7WjHzXPD", "languageTag": "S1C5PQ88hmcBvtRZ", "userName": "lto3uo8BQzwF7kEW"}' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpdateUserV3' test.out

#- 158 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iq2YnTWLGP8bSBQ0' \
    --activeOnly 'true' \
    --after 'MtwzC2pxSJ9eo7iX' \
    --before 'gMTPKIUmf6Vc9fr4' \
    --limit '54' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserBanV3' test.out

#- 159 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'X3zbs2jGsf6OJmZ0' \
    --body '{"ban": "GyLXlaBJYuYr5zHX", "comment": "iuFZkPV9OCwjgPYP", "endDate": "5hOswWBJk1I6XbK3", "reason": "6GzHmF1wXom4sTuI", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 159 'AdminBanUserV3' test.out

#- 160 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'icDOCqxDuEwtG6Xs' \
    --namespace $AB_NAMESPACE \
    --userId 'V0nrG2dsN9Wmm3pU' \
    --body '{"enabled": true, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserBanV3' test.out

#- 161 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BqRT9gjNxqqFAg0d' \
    --body '{"context": "29H7emYh9aw3N2MU", "emailAddress": "rEk0iNfen4E4Hsjo", "languageTag": "eWeXKjiDXTTEOHPG"}' \
    > test.out 2>&1
eval_tap $? 161 'AdminSendVerificationCodeV3' test.out

#- 162 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UIIGpoxFk1AcZ5e9' \
    --body '{"Code": "BHTwchW1vwZYnHeB", "ContactType": "tuywbo4pDZxUgweR", "LanguageTag": "0KrVmYARJdi0f2kQ", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 162 'AdminVerifyAccountV3' test.out

#- 163 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'L4ebVUAQuuHXVMVy' \
    > test.out 2>&1
eval_tap $? 163 'GetUserVerificationCode' test.out

#- 164 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lNPoA6XczhuO38U9' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserDeletionStatusV3' test.out

#- 165 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'IaoeWWnZMlCfb1oA' \
    --body '{"deletionDate": 21, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserDeletionStatusV3' test.out

#- 166 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'c2NbAjPFD7k7FQJt' \
    --body '{"code": "lk2s2mS6Ncok0Jf6", "country": "7mBvBWQtNOdYFMaa", "dateOfBirth": "JzAt6p82P8kkZxrG", "displayName": "74vdyCwOtUaFBn68", "emailAddress": "ACpA8uRXwmJSn7W9", "password": "oeIKS3ODDBEXrNek", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 166 'AdminUpgradeHeadlessAccountV3' test.out

#- 167 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fkcEuFz5CP9qktNx' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserInformationV3' test.out

#- 168 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VzAFaD8Fm5qK2lGe' \
    --after '0.4098377658704514' \
    --before '0.10112417589178313' \
    --limit '29' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserLoginHistoriesV3' test.out

#- 169 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId '4eJykYc71pPaE0Me' \
    --body '{"languageTag": "RUtoTEiWIxo0Q2nn", "newPassword": "KHTFgMtnssqdSfZM", "oldPassword": "XhQYd2Uk1HPhnzpw"}' \
    > test.out 2>&1
eval_tap $? 169 'AdminResetPasswordV3' test.out

#- 170 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EkZnrDfoelOO8Xql' \
    --body '{"Permissions": [{"Action": 11, "Resource": "CCGrzQopkAhMDB0D", "SchedAction": 11, "SchedCron": "DBexkdRqql2Zo93N", "SchedRange": ["vd5rzQTzGokJarKi", "7NPiDkx3O1w2Oo01", "ZBOvQMu1tLOmABQb"]}, {"Action": 16, "Resource": "GnXNmW9KAwZXaPPE", "SchedAction": 69, "SchedCron": "2dyZPtmkmBd4FrWn", "SchedRange": ["Bt5o8R7GmV49idt4", "75ws1mvktrb4eApe", "fzgKErvj8xaRpQaY"]}, {"Action": 50, "Resource": "KlLJhDnnfG3Tgwkc", "SchedAction": 80, "SchedCron": "UYyMQUztAjrallr6", "SchedRange": ["jRFRKKjzjqxMzKN3", "WwOUml7r0Mm2BpAs", "2g9nhGjuTfB2c4Pu"]}]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminUpdateUserPermissionV3' test.out

#- 171 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QCR0ataI4CYsT8Lk' \
    --body '{"Permissions": [{"Action": 90, "Resource": "ucmHsK9snU56ilFN", "SchedAction": 24, "SchedCron": "8Bi2378Z9rgsWsRy", "SchedRange": ["nTevacG3IH1AO154", "7TELlB6CgqQGqPXy", "2pqwt3tEkVL25Byg"]}, {"Action": 17, "Resource": "CjqFvLWZpBaUxdmE", "SchedAction": 77, "SchedCron": "b9WPIKCD7AipkfaY", "SchedRange": ["7TlwBbSV9cD8rSU0", "W9QMkix3QubOrlNJ", "mTY5zCPnGL9JrkL7"]}, {"Action": 90, "Resource": "TCz9P4cXMFqAEoqJ", "SchedAction": 14, "SchedCron": "wheD8X0jkx23DepO", "SchedRange": ["AGQVMNQPX7RKBFQl", "3yGSUyX0CZhHgPou", "K4J3BSokycWfTU3J"]}]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminAddUserPermissionsV3' test.out

#- 172 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rOI4AxQ2QETaZsDm' \
    --body '[{"Action": 47, "Resource": "dUEQ0Xd596dMbcDq"}, {"Action": 59, "Resource": "l1Fx5BHwmnBV0pch"}, {"Action": 81, "Resource": "K3ZjxKlN41JK5NTQ"}]' \
    > test.out 2>&1
eval_tap $? 172 'AdminDeleteUserPermissionBulkV3' test.out

#- 173 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '5' \
    --namespace $AB_NAMESPACE \
    --resource '3QLf5zDODNe7FCC1' \
    --userId 'm2mWXWt1ubCzY9dJ' \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserPermissionV3' test.out

#- 174 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bJiyAxXx8vkjhIJq' \
    --after 'DN4Oz4et6TGwEuY4' \
    --before 'jerTYqKllBS0Rxiv' \
    --limit '97' \
    --platformId 'qYVALlNgsqAXpWBU' \
    > test.out 2>&1
eval_tap $? 174 'AdminGetUserPlatformAccountsV3' test.out

#- 175 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'X2lJZFwXlccaXclk' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetListJusticePlatformAccounts' test.out

#- 176 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'c0j9q1aICNw81Fsv' \
    --userId 'qyTGVXx5eCSFtNh5' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserMapping' test.out

#- 177 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'MuKhHa5jU2wOjSvT' \
    --userId 'rnWiGzEZvy0q1KN9' \
    > test.out 2>&1
eval_tap $? 177 'AdminCreateJusticeUser' test.out

#- 178 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'XH4acyurGdibyLVx' \
    --skipConflict 'false' \
    --body '{"platformId": "OiVugP9QQC8EyZOZ", "platformUserId": "l10RGeSfUOhRAsQ5"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminLinkPlatformAccount' test.out

#- 179 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'FXrphq1GfHX45Uns' \
    --userId 'Wavy8TdJpp5yDQ3Y' \
    --body '{"platformNamespace": "5kOGgMPOBL66S3ZC"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminPlatformUnlinkV3' test.out

#- 180 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'N3tIg0TSK5bJ7Ksh' \
    --userId 'M7lY1RPQXM6mWxIb' \
    --ticket 'WfNi2UoZgND37cPn' \
    > test.out 2>&1
eval_tap $? 180 'AdminPlatformLinkV3' test.out

#- 181 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ej3xRFm0fEcNYZMV' \
    --userId '9JDafZDVm8YfxAXK' \
    --platformToken '7e8b6HXuCOYZS9ER' \
    > test.out 2>&1
eval_tap $? 181 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 182 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'J8n2MyPPV7lGib4F' \
    --userId 'HkMt4TSPR6ZjkWgr' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserSinglePlatformAccount' test.out

#- 183 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZV8OzlytelQ17o1U' \
    --body '["JoWXqUx4HYiQOnBm", "Nmcn39460NuwzX0V", "B2tMFkKDxTaXvrZ8"]' \
    > test.out 2>&1
eval_tap $? 183 'AdminDeleteUserRolesV3' test.out

#- 184 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xjuANnfTHltm0oJz' \
    --body '[{"namespace": "ZjxGx6hVBywi2iRU", "roleId": "JSs0AYlPP6HfkRaz"}, {"namespace": "1LDrxW5rIZvyA1ci", "roleId": "g6HLb48TaXGIy77w"}, {"namespace": "BAYKS9cpegKMkFt3", "roleId": "yhTX20PksythmyNP"}]' \
    > test.out 2>&1
eval_tap $? 184 'AdminSaveUserRoleV3' test.out

#- 185 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'IiY11SLLPSGtOuKV' \
    --userId 'wySCO4DSy6UdwVKY' \
    > test.out 2>&1
eval_tap $? 185 'AdminAddUserRoleV3' test.out

#- 186 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId '8EcflyUXOgiraDyU' \
    --userId 'PgD7PaKoPhldBQPX' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteUserRoleV3' test.out

#- 187 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Uzx9rjdgyfuHuzCp' \
    --body '{"enabled": true, "reason": "EQu3Y7TdqadGNwYF"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateUserStatusV3' test.out

#- 188 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'nFqnEfM065Z6SXsy' \
    --body '{"emailAddress": "ZYrOSIxQzbnviUz5", "password": "5y5naJ5jotkfkLtO"}' \
    > test.out 2>&1
eval_tap $? 188 'AdminTrustlyUpdateUserIdentity' test.out

#- 189 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZogcktwlV81apM5v' \
    > test.out 2>&1
eval_tap $? 189 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 190 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'YPEyEV89tMg78C7V' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "vqdRvsqeqgSZ7vHL"}' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpdateClientSecretV3' test.out

#- 191 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after '9AAoXAytI3UxMNHc' \
    --before '5RksLlWtvlifT7dB' \
    --isWildcard 'true' \
    --limit '5' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRolesV3' test.out

#- 192 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "QMNjkvxjiJX4xpoV", "namespace": "tLcCEKSX7EPZziqC", "userId": "FXHiC3u6nywidg3F"}, {"displayName": "KIWdPWl7xcnna4UK", "namespace": "mk3XedZE8kHNT9VS", "userId": "L0fHJXT1WAi1o4ui"}, {"displayName": "rGVSU1iRup2Ji2ai", "namespace": "6LHZali9b2SBOH1p", "userId": "NL9QIjm4pV5BlG49"}], "members": [{"displayName": "eZRJ5BNIMasOwPg5", "namespace": "dGtYD9NmWgpdPLb2", "userId": "Pcg7CmXEBF76u4Ex"}, {"displayName": "Mt0eBsEkBRes7e3P", "namespace": "gbrTit6rUL87jewc", "userId": "r0Ab3IG6pVn12GKo"}, {"displayName": "eTfqLsRjIkDQEYuH", "namespace": "iSRGjOkAo3PX46V9", "userId": "YicBKfxrCohhQhkH"}], "permissions": [{"action": 43, "resource": "Xak9cQDkp7pKrJzR", "schedAction": 94, "schedCron": "zCdrrL0f5AYfkDS8", "schedRange": ["2prkFS4j2Uy02bnU", "r0D2shnJRkeUNeHL", "MvVV1TwcOwX0QlC1"]}, {"action": 1, "resource": "JQ9Sx4ghCD1QCX03", "schedAction": 97, "schedCron": "OXsAWegf441skRCj", "schedRange": ["HZsJiumyyMyBW17e", "n2IJqbhe3QE08Op7", "OZfZhyOjYNI3W2Rc"]}, {"action": 72, "resource": "0TrpKTrLFR8CuOo2", "schedAction": 8, "schedCron": "RDu35V4mWH1G4hO0", "schedRange": ["RC7kYxqa3KahayD8", "zJ9d9p1oLQu1XNlP", "4WUSwwSoKdNofQ6g"]}], "roleName": "aXBzZSzU8enDIDgo"}' \
    > test.out 2>&1
eval_tap $? 192 'AdminCreateRoleV3' test.out

#- 193 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'i6OB5RTpoJM84OhU' \
    > test.out 2>&1
eval_tap $? 193 'AdminGetRoleV3' test.out

#- 194 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId '48O87YX83DNJb3Ho' \
    > test.out 2>&1
eval_tap $? 194 'AdminDeleteRoleV3' test.out

#- 195 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'Edp8JYUHnmKua5e7' \
    --body '{"deletable": true, "isWildcard": false, "roleName": "9ed0OdhFt37ZJqvH"}' \
    > test.out 2>&1
eval_tap $? 195 'AdminUpdateRoleV3' test.out

#- 196 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'wjwvjgWzkDIjJclz' \
    > test.out 2>&1
eval_tap $? 196 'AdminGetRoleAdminStatusV3' test.out

#- 197 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'Q3QGwnf70GZ1knCa' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateAdminRoleStatusV3' test.out

#- 198 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'iJHQKjINQGaNOzRB' \
    > test.out 2>&1
eval_tap $? 198 'AdminRemoveRoleAdminV3' test.out

#- 199 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'fo0gXEqzov8Aj3iN' \
    --after 'RMZpiHmmToAIIsqz' \
    --before 'WSfziGLQogq4pP6X' \
    --limit '3' \
    > test.out 2>&1
eval_tap $? 199 'AdminGetRoleManagersV3' test.out

#- 200 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'x9204XzuPSx74qH3' \
    --body '{"managers": [{"displayName": "9onwB471wDKhjyLB", "namespace": "JzSO8Rq4Ax8nMHX0", "userId": "EPIAptGjLZDvER6A"}, {"displayName": "oFybNqtnhxFsxTJ7", "namespace": "X62jINi66W4lbuUN", "userId": "VgU0DGlF6oz0oXOb"}, {"displayName": "EKNIpHp0vz1LELja", "namespace": "OKYMOSdbfTYmZwtv", "userId": "yyZHc6xsjZy6VoFu"}]}' \
    > test.out 2>&1
eval_tap $? 200 'AdminAddRoleManagersV3' test.out

#- 201 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'SL1D99febJ07ZDtQ' \
    --body '{"managers": [{"displayName": "zY3YCE48n9vvqQOm", "namespace": "RHPBZoncpaOHrQYL", "userId": "ih1zgAoVZipQhUN6"}, {"displayName": "d0cuhvW9nQCCqAUE", "namespace": "cj84xTzFNBvv3YhW", "userId": "a3miQ8L7R9lD7hoM"}, {"displayName": "RmlXBAFeSebmzcBN", "namespace": "qRYlo2Gio9FBGZfr", "userId": "jZyaOlEF6TW6BiCd"}]}' \
    > test.out 2>&1
eval_tap $? 201 'AdminRemoveRoleManagersV3' test.out

#- 202 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId '5QGL8HGJQzwFYJzF' \
    --after '1NCuW0OhlhDP2pwN' \
    --before 'FGbJuVmSopn0eyMi' \
    --limit '13' \
    > test.out 2>&1
eval_tap $? 202 'AdminGetRoleMembersV3' test.out

#- 203 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'Kl2HltQ9CAXRwgQH' \
    --body '{"members": [{"displayName": "kkoPuk9xSee8Y5Wk", "namespace": "4719HrC5fqiFsvFN", "userId": "X78qGo4ZcB5Cxqx4"}, {"displayName": "FQvxWzrYzAZLH1lk", "namespace": "wDpre4fDY2I9H2Lb", "userId": "y6kEk0jDWMPeDwsX"}, {"displayName": "49WHnHNWp7bP7Lqo", "namespace": "oX9pd8iquJoEkWq5", "userId": "k3ao3m1k3dgzzdR8"}]}' \
    > test.out 2>&1
eval_tap $? 203 'AdminAddRoleMembersV3' test.out

#- 204 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'i0yyrRVJp1b7bqoI' \
    --body '{"members": [{"displayName": "5BKa3Oil1SRgGqqj", "namespace": "PHL4CJuI1kJC1qlh", "userId": "XIHmWyEvT80BKtQt"}, {"displayName": "5gWdU4q4tZtD2mdA", "namespace": "HJZynm1jO9YSHpIv", "userId": "ek7NMX91TeH3QfNd"}, {"displayName": "DGji9pDzpB0L7gmg", "namespace": "17RSANhehqJ3KbiB", "userId": "rpCuuiVHTVKRjaSR"}]}' \
    > test.out 2>&1
eval_tap $? 204 'AdminRemoveRoleMembersV3' test.out

#- 205 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'zlCHwdhwRKzJGrf4' \
    --body '{"permissions": [{"action": 86, "resource": "DDQPh80qfaVdo7Ga", "schedAction": 82, "schedCron": "2hbH2q8zHiog7zQ2", "schedRange": ["Fgg6Hfp4sZOrznJJ", "On0gPSvDKsrtorMY", "PouFLgEHsRGb8R4M"]}, {"action": 86, "resource": "GZkJUvXs8bIWspIK", "schedAction": 69, "schedCron": "20JSoWvxzzm4Ts02", "schedRange": ["5Au1pyeCrgxB9eh0", "q18AQ0rLQ75RjKJw", "BUwVPM2tcYi2rUta"]}, {"action": 60, "resource": "XZGGSu4mrxG7mvw0", "schedAction": 21, "schedCron": "FrxEZJliVI1KWwyP", "schedRange": ["mOX17tUfVgBLTqJ2", "6JwBK0ytBuRkjJsx", "yD7VSafzseDG0P9m"]}]}' \
    > test.out 2>&1
eval_tap $? 205 'AdminUpdateRolePermissionsV3' test.out

#- 206 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'GLSLMs4AbUYpg66F' \
    --body '{"permissions": [{"action": 9, "resource": "QQjjzxO05pTXi6df", "schedAction": 35, "schedCron": "YNdVdHwZqXAGApiv", "schedRange": ["4EGLiBQE82CwC9Im", "rJtY97IrMKSF1eh3", "DXF6cc85dJlMq6LE"]}, {"action": 37, "resource": "paFqt9BKHDPEaMjq", "schedAction": 39, "schedCron": "xBSfJk9r5IV4tbwA", "schedRange": ["efQdCv6c1P9d95dE", "VbPHTP2qVaBEmXns", "0YCw71OFTOxOEaXz"]}, {"action": 21, "resource": "Sp89NrtA6M6zhVTu", "schedAction": 17, "schedCron": "yjlvuOCwxEEI3FQi", "schedRange": ["VM7TXhEGtOi3F1no", "CSn0p2K74mbJPnsF", "ks9XU9EIQmY8dfKk"]}]}' \
    > test.out 2>&1
eval_tap $? 206 'AdminAddRolePermissionsV3' test.out

#- 207 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'E8HUw0E9rUHyA2u3' \
    --body '["0svGbEIKo0VgsG4A", "FC1rXOGalmANf5fY", "ZrxqpWBuF07KOzci"]' \
    > test.out 2>&1
eval_tap $? 207 'AdminDeleteRolePermissionsV3' test.out

#- 208 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '79' \
    --resource 'G8s8aHZKElru4qjk' \
    --roleId 'bCQF5XkIyxamdTQ3' \
    > test.out 2>&1
eval_tap $? 208 'AdminDeleteRolePermissionV3' test.out

#- 209 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 209 'AdminGetMyUserV3' test.out

#- 210 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'tffxfTgZZMIfdv2H' \
    --extendExp 'true' \
    --redirectUri 'VtzzXjpH0R37IadF' \
    --password '99Jvf8f9boIbOohP' \
    --requestId '9klwaSDH5q79F2bw' \
    --userName 'e7usVALQpDXAcGht' \
    > test.out 2>&1
eval_tap $? 210 'UserAuthenticationV3' test.out

#- 211 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'YXIZFFcWb8uJ3CKw' \
    --linkingToken 'yQLTXihAznmJw8Uw' \
    --password 'bm9xOyfjGAdkDsfN' \
    --username 'YStE5FCKnjlR5DGK' \
    > test.out 2>&1
eval_tap $? 211 'AuthenticationWithPlatformLinkV3' test.out

#- 212 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'wqouuSiv2aTNik2N' \
    --extendExp 'false' \
    --linkingToken 'wpEKYvyBCsQV6mVS' \
    > test.out 2>&1
eval_tap $? 212 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 213 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'MrRZZ8mkjPXOb1rG' \
    > test.out 2>&1
eval_tap $? 213 'RequestOneTimeLinkingCodeV3' test.out

#- 214 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'FIUxgMNoCxMGQbVA' \
    > test.out 2>&1
eval_tap $? 214 'ValidateOneTimeLinkingCodeV3' test.out

#- 215 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'mySNvGF1GffLCkNe' \
    --isTransient 'false' \
    --clientId 'erARjka1BS4EHWaM' \
    --oneTimeLinkCode 'U4OZfUElad0PmtoU' \
    > test.out 2>&1
eval_tap $? 215 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 216 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 216 'GetCountryLocationV3' test.out

#- 217 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 217 'Logout' test.out

#- 218 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'I6IWQ9aTTnBlINzL' \
    > test.out 2>&1
eval_tap $? 218 'RequestTokenExchangeCodeV3' test.out

#- 219 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'z5LXlw00FjbG0urt' \
    --userId '8v51UdyMwRmQFyaY' \
    > test.out 2>&1
eval_tap $? 219 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EZEhHHtumdF5mMIp' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 220 'RevokeUserV3' test.out

#- 221 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'UErrefRqiEtpJoH2' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'Jn9IC2cTwdlKAobV' \
    --redirectUri 'RIsklt1Vsg95dkvz' \
    --scope 'cKFrWdaluhmRQy8v' \
    --state 'P6BRppx24yjd27uX' \
    --targetAuthPage 'CaMStTTubrK87DB8' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'j5Ag3QcfGM0naJo5' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 221 'AuthorizeV3' test.out

#- 222 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'NvCZ4y9QAURF2UjT' \
    > test.out 2>&1
eval_tap $? 222 'TokenIntrospectionV3' test.out

#- 223 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 223 'GetJWKSV3' test.out

#- 224 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'MA4eitSbxF2Ankal' \
    --factor '4n8Sk4IJeivvL1mD' \
    --mfaToken 'RfHQBctDbcmPMf70' \
    > test.out 2>&1
eval_tap $? 224 'SendMFAAuthenticationCode' test.out

#- 225 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'ptc8L6WihUwREjBO' \
    --mfaToken 'Glzy0S4MePFhjqdv' \
    > test.out 2>&1
eval_tap $? 225 'Change2faMethod' test.out

#- 226 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'l8573KXtZDETRS8g' \
    --factor 'L515JXIF1qO0RHpo' \
    --mfaToken 'BkFEgb09xlu1aU9f' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 226 'Verify2faCode' test.out

#- 227 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'CdmDI9SBsMufGEF3' \
    --userId 'zl5fu4BM6atNH1YR' \
    > test.out 2>&1
eval_tap $? 227 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 228 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'WKJIm2ITlfEOIpVw' \
    --clientId 'YW8XoqFs9k5kjIqJ' \
    --redirectUri 'hlFF9aImLSf1YmN0' \
    --requestId 'IMcvzfZj8rODuBDH' \
    > test.out 2>&1
eval_tap $? 228 'AuthCodeRequestV3' test.out

#- 229 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'xfrpchr0x3bTwZVF' \
    --additionalData 'a8xp3WcFLUo43I30' \
    --clientId 'GQlz7Hqu5hxJEjX3' \
    --createHeadless 'true' \
    --deviceId 'FEu4lOUBV0I62M04' \
    --macAddress 'uHSV2wG3nkAxmoZG' \
    --platformToken 'FBnZC9IZI0OQKpkS' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 229 'PlatformTokenGrantV3' test.out

#- 230 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 230 'GetRevocationListV3' test.out

#- 231 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'D9guvFpnD6WH2hz4' \
    > test.out 2>&1
eval_tap $? 231 'TokenRevocationV3' test.out

#- 232 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'Y0yR0buEOfQ8UX6T' \
    --clientId 'a3PoaMk4TettBRGL' \
    --code 'Plap0A5ED6zF5oDL' \
    --codeVerifier 'DZDTZDuNkZCNDKZy' \
    --extendExp 'false' \
    --password '5hUSyEImBx8WHaBR' \
    --redirectUri '9xHRFMrP5nBDGJyu' \
    --refreshToken 'jmHUYLH8OuXa4ui6' \
    --username '2J1gG5tIvNYIkYJg' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 232 'TokenGrantV3' test.out

#- 233 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token '2DRpyuo2BW58Ko7q' \
    > test.out 2>&1
eval_tap $? 233 'VerifyTokenV3' test.out

#- 234 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'UTtT0S2V2q0a0sll' \
    --code '00oN0vYb0pBzLqoD' \
    --error '9Bk6E1U5V9RkpyOJ' \
    --openidAssocHandle 'bgPr8rN62NhJnCy0' \
    --openidClaimedId 'J8z6CXqEb9niGL6Y' \
    --openidIdentity 'HUXEuW0eoIgcufjy' \
    --openidMode '7SgGPm7dd33VRtu9' \
    --openidNs 'glbMFJobvvULs3st' \
    --openidOpEndpoint 'QweAG9WSry1GcpjB' \
    --openidResponseNonce 'Inz9dZmLf3QPF9Ec' \
    --openidReturnTo 'eDsXuU9XDsX4iMu6' \
    --openidSig 'h20aCkYHEWENGpny' \
    --openidSigned '9wso6K1y6mhCyjD7' \
    --state 'zBiJPyA1ycr95EP5' \
    > test.out 2>&1
eval_tap $? 234 'PlatformAuthenticationV3' test.out

#- 235 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId '0837FLUpoPFZwv4A' \
    --platformToken '0tsCmwaf2DXbs1l9' \
    > test.out 2>&1
eval_tap $? 235 'PlatformTokenRefreshV3' test.out

#- 236 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode 'R4sJmMVeiJUFdLeZ' \
    > test.out 2>&1
eval_tap $? 236 'PublicGetInputValidations' test.out

#- 237 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'VNvCPrH7KLAxxJK2' \
    > test.out 2>&1
eval_tap $? 237 'PublicGetInputValidationByField' test.out

#- 238 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'uNg3U4oKp0J9lGxR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 238 'PublicGetCountryAgeRestrictionV3' test.out

#- 239 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 239 'PublicGetCountryListV3' test.out

#- 240 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 240 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 241 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'bkhDB9hVTcEiiHaK' \
    > test.out 2>&1
eval_tap $? 241 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 242 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'nrrNHnAJTnifp8bc' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["BWz7d3y5SLgbOF4c", "zGiFfGQcrNHSKzYJ", "MinayzkPs4FlXAGQ"]}' \
    > test.out 2>&1
eval_tap $? 242 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 243 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '3DXOhChiO8GpPG5z' \
    --platformUserId 'M1Vwszo6cBwoBWI0' \
    > test.out 2>&1
eval_tap $? 243 'PublicGetUserByPlatformUserIDV3' test.out

#- 244 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'kqGnnt0Cok60qDlz' \
    > test.out 2>&1
eval_tap $? 244 'PublicGetAsyncStatus' test.out

#- 245 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'tXOC52ISHsMC6vvR' \
    --limit '56' \
    --offset '83' \
    --query 'vrnTcqRdDNkwpbBh' \
    > test.out 2>&1
eval_tap $? 245 'PublicSearchUserV3' test.out

#- 246 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "MZfUNigD18RZbxUq", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "JCMRW324wZkUlEMV", "policyId": "p78F59ElJFCdsH6a", "policyVersionId": "EIhYiuCujh1G5NPe"}, {"isAccepted": true, "localizedPolicyVersionId": "OHkV8onkUFPBPXOo", "policyId": "iCHj5xYo8CtTsbcB", "policyVersionId": "ymS9vY1r8l3ZoFSQ"}, {"isAccepted": true, "localizedPolicyVersionId": "FKwSrvCn2lC1DmZ5", "policyId": "mUjZAibMgZU5FdUt", "policyVersionId": "vOMfDbjnI4FnGVuF"}], "authType": "AOLg7znuRVoyn03l", "code": "doffWmlFOuck8SjG", "country": "yHq0EtJvuE9uWndB", "dateOfBirth": "aVLKvz9gAsnjqdxY", "displayName": "k4eQTa7puC8FjWKh", "emailAddress": "YDhcbLj5HSWfJKYz", "password": "UqmVIhmhSOEEvCKF", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 246 'PublicCreateUserV3' test.out

#- 247 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'aY8d77Vqm8UrR0hv' \
    --query 'G3sL54IyBzFTHT6F' \
    > test.out 2>&1
eval_tap $? 247 'CheckUserAvailability' test.out

#- 248 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["DtiEi97BAYMW5gcL", "3ybN8sTbrSA5DKXz", "t7cwCZO4nqgyxTEj"]}' \
    > test.out 2>&1
eval_tap $? 248 'PublicBulkGetUsers' test.out

#- 249 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "QQqPKDFZy5FdnpbI", "languageTag": "6FG5fBH3z4WHzHmv"}' \
    > test.out 2>&1
eval_tap $? 249 'PublicSendRegistrationCode' test.out

#- 250 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Z2bZiPaKL4AHlEMk", "emailAddress": "8tdC3icuG1MpFevh"}' \
    > test.out 2>&1
eval_tap $? 250 'PublicVerifyRegistrationCode' test.out

#- 251 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "omPGjCa1gDsvmlr3", "languageTag": "CP3NoTiwvghAgLrv"}' \
    > test.out 2>&1
eval_tap $? 251 'PublicForgotPasswordV3' test.out

#- 252 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'wVzl0RylZ30Q1k2q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 252 'GetAdminInvitationV3' test.out

#- 253 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'sgmTRmtNNvNS5Idq' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "87v1oeFGldYF9MXe", "policyId": "liHIXGoRpTF582rP", "policyVersionId": "l4RiibmCYr0geZFh"}, {"isAccepted": false, "localizedPolicyVersionId": "C5kojvZcmPFz7FUe", "policyId": "jsUD9QVUvicAbPDH", "policyVersionId": "W6OSQXBUNn2sBmrU"}, {"isAccepted": true, "localizedPolicyVersionId": "yB5Tx6hay9qGH6h5", "policyId": "FythEbh8udWOGYNS", "policyVersionId": "wDjI4OfdGqasRytx"}], "authType": "EMAILPASSWD", "country": "HwhG8HSslytRWIZ7", "dateOfBirth": "PllZ3wQaKRy3MEF6", "displayName": "RgW7dnLO9L9mF245", "password": "rgqXApBqEzqK1aac", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 253 'CreateUserFromInvitationV3' test.out

#- 254 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "XYtIMrPZc7ZJOd8K", "country": "SBHp1KksSH6Ae9bs", "dateOfBirth": "AJ2VTSSP9UD49hHN", "displayName": "3j1gvK6bLHbEt4ug", "languageTag": "vdNyWdOjqKpQWpdj", "userName": "suoYbVv4jarwiqZH"}' \
    > test.out 2>&1
eval_tap $? 254 'UpdateUserV3' test.out

#- 255 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "nJxud8E2MFTm2Pu7", "country": "mJfX6S2WM1NvaA2G", "dateOfBirth": "KNWIZLFmIrQBV9ks", "displayName": "k4KwIJTt9KRnEt6f", "languageTag": "tlClNECd3M8nxNdL", "userName": "xkRWwjztFhOnT9ZE"}' \
    > test.out 2>&1
eval_tap $? 255 'PublicPartialUpdateUserV3' test.out

#- 256 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "FTSFRuWU9myHPSeq", "emailAddress": "Lr3R2sHOKVBPsvUL", "languageTag": "gGWjOXyNPXTeOCCo"}' \
    > test.out 2>&1
eval_tap $? 256 'PublicSendVerificationCodeV3' test.out

#- 257 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "DFD316PUgdeA64aO", "contactType": "PUDQn42dwAETc7Xm", "languageTag": "F63NeVmm2Apd99KF", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 257 'PublicUserVerificationV3' test.out

#- 258 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "g1Zxzj5ij9fA92ed", "country": "fiZCmmEBcUz1swzk", "dateOfBirth": "MrDlBB6wicEAglJi", "displayName": "4TbHJcBpaTyNyg0Y", "emailAddress": "qJQPWYwfslMgXrdj", "password": "ZUUADBjDmgLguGWM", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 258 'PublicUpgradeHeadlessAccountV3' test.out

#- 259 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "lBUTKGh1GRPTK5W3", "password": "0xwsejlv3XWeLg65"}' \
    > test.out 2>&1
eval_tap $? 259 'PublicVerifyHeadlessAccountV3' test.out

#- 260 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "AQZsB0OwLY2dfMCa", "newPassword": "cFpEOsboKmoUWj2z", "oldPassword": "TGNnY49o8FObRsIc"}' \
    > test.out 2>&1
eval_tap $? 260 'PublicUpdatePasswordV3' test.out

#- 261 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'Dv2qzYRMNMKwNTEO' \
    > test.out 2>&1
eval_tap $? 261 'PublicCreateJusticeUser' test.out

#- 262 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZPoE3kaUuQfsaWNm' \
    --redirectUri 'HXSomVQD3mjuMkuo' \
    --ticket '6oSFKbnu1Px9TcIU' \
    > test.out 2>&1
eval_tap $? 262 'PublicPlatformLinkV3' test.out

#- 263 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'aw8cEDyfMl9eBFJf' \
    --body '{"platformNamespace": "Rw2u6LAQmEtiuoZU"}' \
    > test.out 2>&1
eval_tap $? 263 'PublicPlatformUnlinkV3' test.out

#- 264 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'b8v66JO3TzMCDE5R' \
    > test.out 2>&1
eval_tap $? 264 'PublicPlatformUnlinkAllV3' test.out

#- 265 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'wGBbXjc6tZHYckS1' \
    --ticket 'Stnmy6GKAkddvt7f' \
    > test.out 2>&1
eval_tap $? 265 'PublicForcePlatformLinkV3' test.out

#- 266 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'RpSOUMcKFaDfGItr' \
    --clientId 'xnWkTxObpcLhMYyf' \
    --redirectUri 'gUvHelQH6jHIYHnW' \
    > test.out 2>&1
eval_tap $? 266 'PublicWebLinkPlatform' test.out

#- 267 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'K8rHmMYaY71T4udW' \
    --code 'mZqth09TdRhkliJ2' \
    --state 'AUEZSwmQhtsDMeWC' \
    > test.out 2>&1
eval_tap $? 267 'PublicWebLinkPlatformEstablish' test.out

#- 268 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'XQlc2Pyv3Krs2ovh' \
    --code 'iahFy40PNDVM4F0u' \
    --state 'TGhh3rxVeowAS7lT' \
    > test.out 2>&1
eval_tap $? 268 'PublicProcessWebLinkPlatformV3' test.out

#- 269 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "MC426czLQkDDOd8A", "emailAddress": "H488D0ZOFuJ5H5J5", "newPassword": "hNWLDe5VoYKvnYVs"}' \
    > test.out 2>&1
eval_tap $? 269 'ResetPasswordV3' test.out

#- 270 PublicGetUserByUserIdV3
eval_tap 0 270 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 271 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RFA74WauJQl7Xqwm' \
    --activeOnly 'true' \
    --after 'ZKsnaH5l3KX5JzoV' \
    --before 'LOFZFx7uioWOAqMd' \
    --limit '24' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetUserBanHistoryV3' test.out

#- 272 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'qYbhnELFA3fkuZY5' \
    > test.out 2>&1
eval_tap $? 272 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 273 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'MJoEwXsSM9svyPC3' \
    > test.out 2>&1
eval_tap $? 273 'PublicGetUserInformationV3' test.out

#- 274 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'avq007skSSWBbaGD' \
    --after '0.03787908168031906' \
    --before '0.3283935165225397' \
    --limit '20' \
    > test.out 2>&1
eval_tap $? 274 'PublicGetUserLoginHistoriesV3' test.out

#- 275 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'GMBEDojfyUjlO3vf' \
    --after 'cLT3U3mGFCy0CnI6' \
    --before 'TqLP0ms1yI1OCJ1x' \
    --limit '37' \
    --platformId 'VNboVAyLZJ93uF5H' \
    > test.out 2>&1
eval_tap $? 275 'PublicGetUserPlatformAccountsV3' test.out

#- 276 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '1aJq83eFv6Wy5F27' \
    > test.out 2>&1
eval_tap $? 276 'PublicListJusticePlatformAccountsV3' test.out

#- 277 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'lY2tTciubW81ZteN' \
    --body '{"platformId": "Mzas1bTGtPOFfoON", "platformUserId": "hfrGNAy3Xr6x0CY8"}' \
    > test.out 2>&1
eval_tap $? 277 'PublicLinkPlatformAccount' test.out

#- 278 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'ckDgvhmKgdgPCEcg' \
    --body '{"chosenNamespaces": ["x15nV6aZVaWSrA47", "ILF1HrPBHXWfBpMA", "7bsqa42wumRzxSvS"], "requestId": "cAhXe9SnzHyvw90W"}' \
    > test.out 2>&1
eval_tap $? 278 'PublicForceLinkPlatformWithProgression' test.out

#- 279 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '7FUfmaQzLMAFz23v' \
    > test.out 2>&1
eval_tap $? 279 'PublicGetPublisherUserV3' test.out

#- 280 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId '3RyCOFexJ4FyYuzj' \
    --password 'xFFKYfs0KgQbon0V' \
    > test.out 2>&1
eval_tap $? 280 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 281 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'nE0eYSFCt0hAwag3' \
    --before 'TK4BvVW1BShD9r0g' \
    --isWildcard 'true' \
    --limit '65' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetRolesV3' test.out

#- 282 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'lQWyH0Bpz7WY1nBf' \
    > test.out 2>&1
eval_tap $? 282 'PublicGetRoleV3' test.out

#- 283 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 283 'PublicGetMyUserV3' test.out

#- 284 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'eY6XGX024KZqapuh' \
    > test.out 2>&1
eval_tap $? 284 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 285 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["pbWSXrYFfJrjtugv", "vjDTkdmOcsifyJIC", "gDcfvUzc4jAzpgsb"], "oneTimeLinkCode": "8Q4ZxmnzZ44Ah7xU"}' \
    > test.out 2>&1
eval_tap $? 285 'LinkHeadlessAccountToMyAccountV3' test.out

#- 286 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "GCuSZQtN1NdyUh6u"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicSendVerificationLinkV3' test.out

#- 287 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'KVNjupE9bcyuGNTD' \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyUserByLinkV3' test.out

#- 288 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId '7LSXeawQ1AVdaAkk' \
    --code 'DQYE8sD9S25MkkZm' \
    --error 'xsRDaPtzLo4b0LxU' \
    --state 'UDvjkPlQ8ujVdnyO' \
    > test.out 2>&1
eval_tap $? 288 'PlatformAuthenticateSAMLV3Handler' test.out

#- 289 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId '37IRvTBv4r8JN0nU' \
    --payload 'ApW2ymmvR3gw0zcZ' \
    > test.out 2>&1
eval_tap $? 289 'LoginSSOClient' test.out

#- 290 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'IK0t88bvTpWoF0Mg' \
    > test.out 2>&1
eval_tap $? 290 'LogoutSSOClient' test.out

#- 291 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData '6TZeM2vj1FQErUAf' \
    --code 'HTHSBSj6lJvhd3G4' \
    > test.out 2>&1
eval_tap $? 291 'RequestTargetTokenResponseV3' test.out

#- 292 PlatformTokenRefreshV3Deprecate
eval_tap 0 292 'PlatformTokenRefreshV3Deprecate # SKIP deprecated' test.out

#- 293 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '0ExRkxfc8GUe5C4R' \
    > test.out 2>&1
eval_tap $? 293 'AdminGetDevicesByUserV4' test.out

#- 294 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'NEtXGw1vw46l0Ben' \
    --endDate 'IOndkkNmq8B6nnuf' \
    --limit '9' \
    --offset '86' \
    --startDate 'hEtfAtaUGMYkUg9c' \
    > test.out 2>&1
eval_tap $? 294 'AdminGetBannedDevicesV4' test.out

#- 295 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'dL145rIGLRie35H1' \
    > test.out 2>&1
eval_tap $? 295 'AdminGetUserDeviceBansV4' test.out

#- 296 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "28fd938yWgbo0fFd", "deviceId": "mgEBR9e97lJUAdn8", "deviceType": "fWudjqajV7Rqat7F", "enabled": false, "endDate": "UDmsPKqlR5hnLPPS", "ext": {"mvVmznhqZUS7e6Ac": {}, "HjobOvb0wESslk8C": {}, "z3XSnuIxwPRJnX5y": {}}, "reason": "pYjy4uvKOhTkQLRO"}' \
    > test.out 2>&1
eval_tap $? 296 'AdminBanDeviceV4' test.out

#- 297 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'wATdp8vQWBlw49lG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 297 'AdminGetDeviceBanV4' test.out

#- 298 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'CDgbBVIO646UiGm9' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateDeviceBanV4' test.out

#- 299 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'D1P90DHzUHHuRgnm' \
    --startDate 'q9EVlCRQNsaDY2DO' \
    --deviceType 'SxCqGXaDzMsSPkT1' \
    > test.out 2>&1
eval_tap $? 299 'AdminGenerateReportV4' test.out

#- 300 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 300 'AdminGetDeviceTypesV4' test.out

#- 301 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'zZZbCtxK0dw3s2DN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 301 'AdminGetDeviceBansV4' test.out

#- 302 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'zRJdEv6Fo5CgGGSN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 302 'AdminDecryptDeviceV4' test.out

#- 303 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'VdfHZDeOjoXM4VfK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 303 'AdminUnbanDeviceV4' test.out

#- 304 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'fYA5eCLSHeB64uWR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 304 'AdminGetUsersByDeviceV4' test.out

#- 305 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 99}' \
    > test.out 2>&1
eval_tap $? 305 'AdminCreateTestUsersV4' test.out

#- 306 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["jfX81O9RIX55m0C1", "9lE8EIrSI1uR1VGZ", "JoTk3fN18t8pBhi2"]}' \
    > test.out 2>&1
eval_tap $? 306 'AdminBulkCheckValidUserIDV4' test.out

#- 307 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'RePvbm5UTKUsE6CW' \
    --body '{"avatarUrl": "AuEEUN5fBeU38l6l", "country": "4FubL3WV81PZ3uzs", "dateOfBirth": "hKnPIpDjoFbeJh6G", "displayName": "gBiOczEaGZ4Le4WG", "languageTag": "tQTAM0k4CRBQH8xM", "userName": "B8Z0WM17OuGI9hfO"}' \
    > test.out 2>&1
eval_tap $? 307 'AdminUpdateUserV4' test.out

#- 308 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'hFAgigxmndf4PRAy' \
    --body '{"code": "luu8A9QAo3ie1Pze", "emailAddress": "MS4zXhGz0aJ7I4X9"}' \
    > test.out 2>&1
eval_tap $? 308 'AdminUpdateUserEmailAddressV4' test.out

#- 309 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'm0UZJRa5wRXZeK7H' \
    > test.out 2>&1
eval_tap $? 309 'AdminDisableUserMFAV4' test.out

#- 310 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'I57LfcesRR641H1r' \
    > test.out 2>&1
eval_tap $? 310 'AdminListUserRolesV4' test.out

#- 311 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'q9arVmNMklA1LLT1' \
    --body '{"assignedNamespaces": ["IKz4Peuo0MzZXLxe", "BU1kSoV8mO6wHjy2", "LedTMCoTMTsyBZEr"], "roleId": "LInRM0sDsPUKQmzL"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminUpdateUserRoleV4' test.out

#- 312 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'XuovZtOCzYtvvyOC' \
    --body '{"assignedNamespaces": ["XcsO1ZQCxalLV5Q8", "1WCrgWC6txOovpeP", "FclbhgDkXihFIXqe"], "roleId": "sMmPJgQX0R0FOILi"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminAddUserRoleV4' test.out

#- 313 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Rt5EwZzXwwjdF3Y3' \
    --body '{"assignedNamespaces": ["wgtxqN7YBb9gybRT", "GeetgfvbpAOxzcD4", "1HjWLzDkyjSwPYmR"], "roleId": "EPb52coUGYmZOk57"}' \
    > test.out 2>&1
eval_tap $? 313 'AdminRemoveUserRoleV4' test.out

#- 314 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'true' \
    --limit '46' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 314 'AdminGetRolesV4' test.out

#- 315 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "wgVCXIiRsys5aWjb"}' \
    > test.out 2>&1
eval_tap $? 315 'AdminCreateRoleV4' test.out

#- 316 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'L7ZVo2Nwejtd66r6' \
    > test.out 2>&1
eval_tap $? 316 'AdminGetRoleV4' test.out

#- 317 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'iNpLRaOuqA95voy3' \
    > test.out 2>&1
eval_tap $? 317 'AdminDeleteRoleV4' test.out

#- 318 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'eKyNpuM2T3AtkDtI' \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "hSx4f6CfWeaRSibm"}' \
    > test.out 2>&1
eval_tap $? 318 'AdminUpdateRoleV4' test.out

#- 319 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'JTasZHGQm1yPyxnK' \
    --body '{"permissions": [{"action": 86, "resource": "xcNwTtxWXG7DdHS0", "schedAction": 76, "schedCron": "66cFd2bm6DySSonq", "schedRange": ["mxilXyJAvON4Afn9", "6rJEsXWblZOpIJQ5", "n2e7Syx9LV4EKjv7"]}, {"action": 97, "resource": "r8HIUhkcGK2AKAUT", "schedAction": 30, "schedCron": "FZL4rFmW9sff19qK", "schedRange": ["T1K28SKSMxfn4ylO", "97uMSBcuPMUsQiaj", "sobQEC5AAtlOBxN3"]}, {"action": 43, "resource": "DNOtRjM1uMiPiZH2", "schedAction": 43, "schedCron": "8SpoNqyI7LNFZj1V", "schedRange": ["V42wjxgADdI7V6Rf", "VyVIKd8jRqJfwvXo", "8xB1zqUV0lJawY8Q"]}]}' \
    > test.out 2>&1
eval_tap $? 319 'AdminUpdateRolePermissionsV4' test.out

#- 320 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'HPRupxJh46iKW3vD' \
    --body '{"permissions": [{"action": 52, "resource": "TXgsKMTID6CfONNb", "schedAction": 33, "schedCron": "kmNGHi0bKFouI9nE", "schedRange": ["hs1AaAwPvcuSzLb1", "XWhoT5WKp5oAfEGy", "NlN9mC07RXZY4gwb"]}, {"action": 25, "resource": "z340wTQYQCaYkmD4", "schedAction": 74, "schedCron": "UaMFVm2y2htrudWJ", "schedRange": ["ibxxNqTQATrv10o6", "zjfS6hEmdot6Fees", "tWNiFy3hpVEFZoSG"]}, {"action": 92, "resource": "kE6P5qZ7Z5bZR1qu", "schedAction": 65, "schedCron": "sWWj88Z7F2pEDtAd", "schedRange": ["QaeiIQOhrj5le5Vd", "IqM2u2t6ND4EIri4", "RvAVS6FxZQDmMKk1"]}]}' \
    > test.out 2>&1
eval_tap $? 320 'AdminAddRolePermissionsV4' test.out

#- 321 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'pYd5M3KEjMpZCXL8' \
    --body '["wQGnWYM7ph7BYNbQ", "BI4Pq89ixXvCyYrW", "DG4yTGucU1lVrqh8"]' \
    > test.out 2>&1
eval_tap $? 321 'AdminDeleteRolePermissionsV4' test.out

#- 322 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'FKi77VHLYYzka5K1' \
    --after 'AjJ1euvuyMaI0A1i' \
    --before 'tPebr9EkEa939yuD' \
    --limit '89' \
    > test.out 2>&1
eval_tap $? 322 'AdminListAssignedUsersV4' test.out

#- 323 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'Vei47KwC1RRIhIBl' \
    --body '{"assignedNamespaces": ["zm2q6t4T9aXHl5vu", "iTsZaUn4hDgGLlhn", "La1098fdvsN6DZ85"], "namespace": "KgOLO1YdKh1w3p2h", "userId": "ELpoujOP83BkJAYi"}' \
    > test.out 2>&1
eval_tap $? 323 'AdminAssignUserToRoleV4' test.out

#- 324 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'kVwWNl4bT1Fwj2Wm' \
    --body '{"namespace": "mMtEMGTSdUtSRMwh", "userId": "qzd3wfrOMC8g5sWf"}' \
    > test.out 2>&1
eval_tap $? 324 'AdminRevokeUserFromRoleV4' test.out

#- 325 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["iDtXX4r4VKeDtANw", "s4lmQwLgaWhl6CPN", "X5bkO5YoEGDNhClJ"], "emailAddresses": ["kWtQzuu8TSMBiUSx", "L81MHpVGwVclqwSV", "Y9GE6wbQMsZVFly0"], "isAdmin": false, "namespace": "SEpaOLQJ1GbjkwqG", "roleId": "xKwOtyVHNHwZb2F5"}' \
    > test.out 2>&1
eval_tap $? 325 'AdminInviteUserNewV4' test.out

#- 326 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "D53uREqBNCVE9ivt", "country": "JO3UbmzjKk4lc2Yr", "dateOfBirth": "GXF1r4kSMB6NLAMN", "displayName": "xpvPgpyqb6XlCqTD", "languageTag": "uziZWHQMbaFdEfDZ", "userName": "TjUiokd6SZqh3gcL"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminUpdateMyUserV4' test.out

#- 327 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 327 'AdminDisableMyAuthenticatorV4' test.out

#- 328 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'UISagYHJ1kzqgqEl' \
    > test.out 2>&1
eval_tap $? 328 'AdminEnableMyAuthenticatorV4' test.out

#- 329 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 329 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 330 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 330 'AdminGetMyBackupCodesV4' test.out

#- 331 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 331 'AdminGenerateMyBackupCodesV4' test.out

#- 332 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 332 'AdminDisableMyBackupCodesV4' test.out

#- 333 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 333 'AdminDownloadMyBackupCodesV4' test.out

#- 334 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 334 'AdminEnableMyBackupCodesV4' test.out

#- 335 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 335 'AdminSendMyMFAEmailCodeV4' test.out

#- 336 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 336 'AdminDisableMyEmailV4' test.out

#- 337 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code '9cwodZwion4b27gR' \
    > test.out 2>&1
eval_tap $? 337 'AdminEnableMyEmailV4' test.out

#- 338 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 338 'AdminGetMyEnabledFactorsV4' test.out

#- 339 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'okhZ04hq57fn7T0k' \
    > test.out 2>&1
eval_tap $? 339 'AdminMakeFactorMyDefaultV4' test.out

#- 340 AdminInviteUserV4
eval_tap 0 340 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 341 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "qBrVBYHtCd9NJ8QZ", "policyId": "8ZL8bOOkgbxQISte", "policyVersionId": "lMRjTEvH36QguJZE"}, {"isAccepted": true, "localizedPolicyVersionId": "ZgYawXsS7KguswOd", "policyId": "J6IvLRzGeNxHmQ5Q", "policyVersionId": "fv0Dxh0w4AUruDWJ"}, {"isAccepted": false, "localizedPolicyVersionId": "8hr7xES4amVYnjm0", "policyId": "oKfrJE8Qvx6kDsHG", "policyVersionId": "q1NJbGXFXyXXSAFb"}], "authType": "EMAILPASSWD", "country": "C5M4ckOI5WUG5Bq5", "dateOfBirth": "kqli9761bqXjoTEQ", "displayName": "53abmx1bxAia3vAD", "emailAddress": "4tRoq11eiwQruwA7", "password": "FVcbmhQhYgusedcK", "passwordMD5Sum": "ji0fv5JDQhcyd68q", "username": "9yZZYmADWBoyTBY7", "verified": false}' \
    > test.out 2>&1
eval_tap $? 341 'PublicCreateTestUserV4' test.out

#- 342 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "xdmjMrgSrJKder6U", "policyId": "RNe4Ap7udHJCVD75", "policyVersionId": "YRcR0Hk6INBrdZpp"}, {"isAccepted": true, "localizedPolicyVersionId": "iwycqePyw1wQQQQx", "policyId": "dtHIHzZ9T2kAJ1J8", "policyVersionId": "t7Uy6xMbj7Blg51v"}, {"isAccepted": true, "localizedPolicyVersionId": "ZEg8hI82yt0Tnj6f", "policyId": "NgBlONWXJ2VxSsdO", "policyVersionId": "UBEQpeQw9dNJmywR"}], "authType": "EMAILPASSWD", "code": "MLSRoob67m1fGCWk", "country": "AGUo850pABiYYpr0", "dateOfBirth": "BXBhEFgEGZrykQoO", "displayName": "fVFsQOb76bxPBHOU", "emailAddress": "DrdlOeutilIkv6At", "password": "S4AwiVPdNm3ecZAz", "passwordMD5Sum": "9X95vpAPDxhE2Rz4", "reachMinimumAge": false, "username": "wGc6nAOdvRGjcHtR"}' \
    > test.out 2>&1
eval_tap $? 342 'PublicCreateUserV4' test.out

#- 343 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'GorU4QReMsFGogoV' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "umg8g3tAFd4or0mt", "policyId": "O0RZthHzWb0FcGCU", "policyVersionId": "NcfNg4Z5rv6CzMxE"}, {"isAccepted": true, "localizedPolicyVersionId": "DI18HHEzRTlDMMxn", "policyId": "8mzTdrUkd9ii62ip", "policyVersionId": "MdaSvR0tnaz5ypV2"}, {"isAccepted": true, "localizedPolicyVersionId": "UZqamMqiMgQ029hq", "policyId": "wrAFKBuw0TP7j31m", "policyVersionId": "SJiiI6zHpNVSrSQ5"}], "authType": "EMAILPASSWD", "country": "9AnQIDAa8BKzjTTZ", "dateOfBirth": "Lzpaf8tKSI5c3duV", "displayName": "G2ZWniHSx1epxXTp", "password": "8HrFY1rfU46jaRCt", "reachMinimumAge": true, "username": "jiJul017ucx4Ryg9"}' \
    > test.out 2>&1
eval_tap $? 343 'CreateUserFromInvitationV4' test.out

#- 344 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "YJ1z4LryD5v7Oykl", "country": "rKEY3ubXTnFXZ4UZ", "dateOfBirth": "corbmUQP9SxtFRHp", "displayName": "cIK5GkWkqwCAo4wT", "languageTag": "wD3KcaNi2yKtHHOj", "userName": "9xwDiPcY9U5CRIpB"}' \
    > test.out 2>&1
eval_tap $? 344 'PublicUpdateUserV4' test.out

#- 345 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "YgbDZHiYZ4vTIfsv", "emailAddress": "dqUPqzpu4wSeod04"}' \
    > test.out 2>&1
eval_tap $? 345 'PublicUpdateUserEmailAddressV4' test.out

#- 346 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "x0Ay58SKP9iV5FIX", "country": "eWNX08a8wEa9ny8j", "dateOfBirth": "vxTep2G3V5lNiESf", "displayName": "f3NYnJutRUjitdFn", "emailAddress": "S4z4TUHSPAw2GXHZ", "password": "9xdkQysZ6ze0bTk3", "reachMinimumAge": false, "username": "ymtVZdTEAjr0m9Xm", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 346 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 347 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "VlQYaJnRcsD7l1yP", "password": "tkQEe6XnD0vzPhYc", "username": "QaTC6I6WjEaRbpHn"}' \
    > test.out 2>&1
eval_tap $? 347 'PublicUpgradeHeadlessAccountV4' test.out

#- 348 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'PublicDisableMyAuthenticatorV4' test.out

#- 349 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'Zs4Ty11vuq6tK7N8' \
    > test.out 2>&1
eval_tap $? 349 'PublicEnableMyAuthenticatorV4' test.out

#- 350 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 350 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 351 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 351 'PublicGetMyBackupCodesV4' test.out

#- 352 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 352 'PublicGenerateMyBackupCodesV4' test.out

#- 353 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 353 'PublicDisableMyBackupCodesV4' test.out

#- 354 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 354 'PublicDownloadMyBackupCodesV4' test.out

#- 355 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 355 'PublicEnableMyBackupCodesV4' test.out

#- 356 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 356 'PublicRemoveTrustedDeviceV4' test.out

#- 357 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 357 'PublicSendMyMFAEmailCodeV4' test.out

#- 358 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 358 'PublicDisableMyEmailV4' test.out

#- 359 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'IA5r0bYQM22e10gY' \
    > test.out 2>&1
eval_tap $? 359 'PublicEnableMyEmailV4' test.out

#- 360 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 360 'PublicGetMyEnabledFactorsV4' test.out

#- 361 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'zqk3nYl9WZ8Mc1j3' \
    > test.out 2>&1
eval_tap $? 361 'PublicMakeFactorMyDefaultV4' test.out

#- 362 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'rCqAsFnaHcCZLNEM' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 363 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "fv68hEhMDFH0P0T1", "emailAddress": "Ya5NDObKhfmlHOrP", "namespace": "BO7lOhwom90BPNsa", "namespaceDisplayName": "iM5LUDSlakKnFnt1"}' \
    > test.out 2>&1
eval_tap $? 363 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE