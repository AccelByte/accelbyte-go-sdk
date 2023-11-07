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
    --body '[{"field": "raOEaYOkjc2Be1xy", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["0SYlo6TNssYkuU5X", "2R9PnSYoOwXRrgEn", "xY2z0hWAdnGB14Hn"], "preferRegex": true, "regex": "YklLE7IjrBbRntfi"}, "blockedWord": ["bOWoI3C4OA3ZDLRA", "D6ED3iDEUPW0pGtb", "T9ZhXI9aIeonC9ST"], "description": [{"language": "e4AkYTexarzeDzsu", "message": ["RYiFz4szvf7CGQlz", "4Hif6TMfURS05YKz", "gZBDUD5KIKDdNwNe"]}, {"language": "ZKYEdIcI76v7Kxb7", "message": ["d9JV8L7tZvztB4EJ", "0nolpap5G1urxBG5", "WJEZVxHsY8zajpZm"]}, {"language": "CKDtj4OoLumukLcN", "message": ["KyXiVxVDBrCDE19Z", "t8bGEDsuClnNQMnZ", "LanmeLf2Lpg0MusI"]}], "isCustomRegex": true, "letterCase": "5Pas69K5d382e9wU", "maxLength": 14, "maxRepeatingAlphaNum": 89, "maxRepeatingSpecialCharacter": 26, "minCharType": 83, "minLength": 63, "regex": "Z777lKkPFeSbMh0z", "specialCharacterLocation": "ldb3mboHwNfue1YQ", "specialCharacters": ["lkNCsTT4AJX0yNPi", "Y5omoaPASiC4BYQK", "mVa7by72Cal9DjyQ"]}}, {"field": "N6x4FxQ3CoQUPo0e", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["TAEpYMeNZwUUQwiH", "ZR0UOLfppB0pnjCj", "d704u3zWJFU0KdPw"], "preferRegex": false, "regex": "mkaEMugjJjeDjmK5"}, "blockedWord": ["k0az20GLQ1Xy18hA", "l1qipfoSDuD16bSb", "F0Dz7pxv1zsHC1oz"], "description": [{"language": "Rzd9eK8mUCt4ttjJ", "message": ["hclgMIPj11ysd5cq", "TqgpVt0GeUbCAGwQ", "PWKhI1PvOFyuKzTG"]}, {"language": "w8tBzAnAmkFW9Rgg", "message": ["aJmZlWJb2scImfZN", "9wZupYT4XDBhLHOL", "0yd1WnwB13Zo1MYP"]}, {"language": "KcBKRP7VaTH5dNNk", "message": ["jlrsuUkoCTF2luFb", "cCYS9xx1Knqr19lV", "p4fRxEGL4ZMZF0qh"]}], "isCustomRegex": true, "letterCase": "JiXg2m1BlujLgvIV", "maxLength": 82, "maxRepeatingAlphaNum": 51, "maxRepeatingSpecialCharacter": 60, "minCharType": 57, "minLength": 56, "regex": "2WPKVANnaJSGNUL6", "specialCharacterLocation": "eD2Oh0QdPm550dkl", "specialCharacters": ["J8P62BWGxQJOQNuy", "O8izO68o5fqc5ore", "JbbTmfr4IQLMh4WQ"]}}, {"field": "hTqtOHr6dH6YASje", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["eHU4YJkwnvXYMYPE", "hJD4DlGCqCKFRi85", "oOHmFbu2Sl3fYd8O"], "preferRegex": false, "regex": "We5WlHxvnXiGStbq"}, "blockedWord": ["ci0yM6elfDUwzsJA", "9DTKiiWOc13J2e6p", "6peqRBmW3Ocj9ECQ"], "description": [{"language": "3F6aXToQY455XgLW", "message": ["mQig9uXNytAwJmUY", "MXeXQWcfionuaAo7", "7WZmUyOyDu7mGIsc"]}, {"language": "fJKH3Xq01PESKRZq", "message": ["uOiQZwxpVQgZOf81", "9m3bKAC41d1Cdsea", "flTH9inzTbtp4AWG"]}, {"language": "z7SwPakVHj1fj1JT", "message": ["C6djJHWMWvxBSqCL", "aJl6uHmSivWNCnho", "Fs98KxggHQC7h8nw"]}], "isCustomRegex": false, "letterCase": "jokpJeDsc2DUnoRz", "maxLength": 96, "maxRepeatingAlphaNum": 61, "maxRepeatingSpecialCharacter": 1, "minCharType": 24, "minLength": 69, "regex": "fAWBVxvK8BlWkryH", "specialCharacterLocation": "iBgQmkIecuhDG15J", "specialCharacters": ["mJWgNA0dUKdEOaGJ", "BnsK9jtilVzo4Ayc", "ftCvdcnKEVWAnbYn"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'kcthDBEQBqpWL4Fv' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'p5yj02Cveu2rVuO7' \
    --before 'wHtgLY65AiSXt0Oe' \
    --limit '15' \
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
    --body '{"ageRestriction": 51, "enable": false}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'DdOCwpsKfIm8VAfm' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 42}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'bm3qyQUjvUKMROAD' \
    --limit '71' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "g2Vgdw6fln6o7ukw", "comment": "D1mF6Hi9r8Cb2W3c", "endDate": "7qfZ8UUgPCVQpETy", "reason": "R2jG2JCPfSGWV1mT", "skipNotif": true, "userIds": ["6z11g1j7dHFGX6yK", "iYyJDaj95YaAuGbt", "DLPEf3vFyNheiKSh"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "lQwpnUjTUDgZOd5u", "userId": "iGTmKXSfDgIcYopQ"}, {"banId": "OcG5wGhyjgTI6Xum", "userId": "mPmVn35ePwC0Ad4F"}, {"banId": "Y3TOv4xkn2uKfkHo", "userId": "XJX7Vjf1o6bH02jK"}]}' \
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
    --clientId 'fL9KP4Gp859B65My' \
    --clientName 'cr3f55zmiBnUszji' \
    --clientType 'KVpq8hVe06CPqb1l' \
    --limit '6' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["sePhNWVo1Vperi2k", "ol1IX966hVXGiEzY", "4eTSujbDwKU9Cf4Q"], "baseUri": "YbInBicZoJQaB2Vg", "clientId": "ynP9wn8EAVSLOym5", "clientName": "WgdYScqdvhIIzfjw", "clientPermissions": [{"action": 59, "resource": "5pBS9S4IBBrbSSP8", "schedAction": 41, "schedCron": "gv8rwRWPl2kHG79r", "schedRange": ["IMmxQTqzzXAPg8aG", "5lvNfKrQwPHhc6BD", "HmPwXfXdm83J4ymY"]}, {"action": 19, "resource": "KtKuZVuY2KX9Mvqv", "schedAction": 39, "schedCron": "5sTb8m25Azd8N33O", "schedRange": ["7xPSelkOiXR0IRUj", "JfZc2tR3QSch8R5R", "bhtqMtCaY1h5xSKS"]}, {"action": 1, "resource": "imikPJzZIIVF14Bj", "schedAction": 40, "schedCron": "Ke9PVo8QKfhH0Ob3", "schedRange": ["qPjLX2COP5SEahBw", "2qfMrHP3Dh3qIeMo", "NDEjodb2WP3fU1Io"]}], "clientPlatform": "et51QhesXCgjRjFO", "deletable": false, "description": "52asr1dBwZuFb4Vj", "namespace": "iIAYefpWk0Hq3YfN", "oauthAccessTokenExpiration": 25, "oauthAccessTokenExpirationTimeUnit": "H4G6MCa1BkYmKADx", "oauthClientType": "aZL7NNLDGtT8Bc4u", "oauthRefreshTokenExpiration": 86, "oauthRefreshTokenExpirationTimeUnit": "bPXrHeoF6CwLORkH", "parentNamespace": "fCZw0LIrFczokXTG", "redirectUri": "1tmuCb8Jc0mi06og", "scopes": ["0ypoFDGDHpIsb8f8", "GNS3lIR5JxUTW7oY", "dyZCLkfcT9qI40QB"], "secret": "my4Flhs7ZhoItxhz", "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'MyCA6H9MSJkCVNYW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'd4DDdp4uVZKdXENX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'wh6TEtUzeBUhChUg' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["Fbo7Kq859hWX9Tyr", "ANLFXPr0VIKmIv4S", "upRiLp5paWRmOdEx"], "baseUri": "gU6WwN0pzpaemdwC", "clientName": "kOFofKfxE3x0BarU", "clientPermissions": [{"action": 91, "resource": "AU4llzCuRI9XWE04", "schedAction": 46, "schedCron": "CfFW763IxU9RbOZQ", "schedRange": ["DmUzBjWE24yQfp8w", "OcW8KzSeGZDO7Sjm", "wZeQPO84BWBCVXrf"]}, {"action": 93, "resource": "fIumVleXqB2BbeN9", "schedAction": 8, "schedCron": "C24SBu0j8tmYjn6j", "schedRange": ["iYslvBxXYILvnuqS", "pxp28LBFORLn64TY", "dgZ1M7dJXeaSYEl4"]}, {"action": 87, "resource": "oFD2sH5JQUQNlFQ1", "schedAction": 77, "schedCron": "JZc0hXjhS5G4VSz1", "schedRange": ["bHF6ZCzsAq0WAD0Z", "aTsVE0UH9FBh9AjI", "o9Ch1O73NSPbWmVU"]}], "clientPlatform": "4SO0RA9aJoiDczZJ", "deletable": true, "description": "iIXciLOYy8gmDA9Y", "namespace": "6NuGiuPbaVJNov5s", "oauthAccessTokenExpiration": 58, "oauthAccessTokenExpirationTimeUnit": "FZE1CyPFkqvLy2IE", "oauthRefreshTokenExpiration": 47, "oauthRefreshTokenExpirationTimeUnit": "B2yc14lDPhmS5qwO", "redirectUri": "5Faq5DZ79yo0ixgq", "scopes": ["ZltnyaC9V6MHS9lY", "0AkhhEaLADj6Byuc", "ta7WGky7llynabhR"], "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId '1epZfBGCNThMKikZ' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 82, "resource": "R3R7zlgsmAdqQXwa"}, {"action": 6, "resource": "2adEOZuEjwrTsQqC"}, {"action": 42, "resource": "OBMknTJk6d4gMebr"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'BmQ7Tim3isSfUd0c' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 37, "resource": "3eO8cbJJSFrS8aMl"}, {"action": 43, "resource": "ghkNGP8rB683N8f1"}, {"action": 77, "resource": "5cvTguoU0287Un9Q"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '39' \
    --clientId 'H1jA7dwYHZEmgLry' \
    --namespace $AB_NAMESPACE \
    --resource 'tzmUvFdirKvSotq1' \
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
    --body '{"blacklist": ["oONSXqtOepCGt8LP", "bR4BCRmKfPcYkBfD", "HIgnKVvLcW4Qf3kB"]}' \
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
    --limit '3' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 133 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 134 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'QLzoCVRv6e5qCd7N' \
    > test.out 2>&1
eval_tap $? 134 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 135 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9kHRGRP8uUHTTrax' \
    --body '{"ACSURL": "tnXza75SfVsVVQCh", "AWSCognitoRegion": "jhLNXWocAwjLrjT4", "AWSCognitoUserPool": "Ku18rb15kpcZVcXh", "AllowedClients": ["oH7QrJjlOloTUUnd", "mhZ5cSiiOaD2xiPw", "Dy6bUwXMn22OL0hG"], "AppId": "m0TVvlZwP8nZZTvp", "AuthorizationEndpoint": "Zexph1BwrXENpNoT", "ClientId": "A0a1fdE1Y2JICoHH", "Environment": "FBDF845eCWjVoFNB", "FederationMetadataURL": "kAL9AJnfsd0xwRkd", "GenericOauthFlow": true, "IsActive": false, "Issuer": "P2mlHJU7a1owcpSC", "JWKSEndpoint": "SNhUwK0Of7ZlYq9j", "KeyID": "foSfh4GOkSN6DZ2R", "NetflixCertificates": {"encryptedPrivateKey": "dI8LTHtXoIITUa4x", "encryptedPrivateKeyName": "UskGKRLpdqv8Kheh", "publicCertificate": "FrD52msdDzxUwqIh", "publicCertificateName": "JbCXXPiBm3gwDtpD", "rootCertificate": "8FoBpY2YDvlOtYGS", "rootCertificateName": "D7w9gWL1gvfvVClH"}, "OrganizationId": "qwsBcqERJrKddc4H", "PlatformName": "EPehU682r6tNJBEG", "RedirectUri": "lypXw1A2BLnMBxo3", "RegisteredDomains": [{"affectedClientIDs": ["mmS7MaHrhezTXaKX", "5P8UxN3qR2IKpEJd", "0hzu1ukyC2FmRvNr"], "domain": "M7gYcV3Iu1b82LGx", "namespaces": ["wM2elUl9M4qfikt9", "GbkvKVdT0He8uH43", "nLYFlbC8cNiQVLiv"], "roleId": "RbIpyjfvEGevG4cV"}, {"affectedClientIDs": ["GCqvjAFiUjgJzKNi", "0QwHBU1HjBcUIyGj", "cWmHbiaMGQ4nPxYg"], "domain": "tgvRHQ9KQTaKor3E", "namespaces": ["jEzhHEmSAny2X5UY", "nIZo4e8nqaJLtb45", "MAmAL819bvuK5zpN"], "roleId": "ESdNDBtbDIovuti6"}, {"affectedClientIDs": ["rh9T2yRPDVotd35T", "yISQqqriJhufHQem", "hPCxJpLQOJhQpQYQ"], "domain": "6TdElMd3ojStDXMU", "namespaces": ["m1Nizz33KBWXy1f1", "UEQ1QbNdq9KjtZOO", "H4slmdsVCX1WnIMF"], "roleId": "HDnikpYVyD3VvuHy"}], "Secret": "sH6KEP9ErPjv9ji7", "TeamID": "ey0SkC2589GG0fIP", "TokenAuthenticationType": "D5T6dI3Fx1JxT9G9", "TokenClaimsMapping": {"gxcXdTtzke3y1rO5": "K0myl9OxhChrNhrR", "4LPmSP813BcoZwWi": "zyZNlMpWUMEMwtIe", "8DLHt1itOVfIQoFL": "idQzl4njAUbqt7Zd"}, "TokenEndpoint": "IwpZMS6K8A7YYCW5", "UserInfoEndpoint": "dOt5LWLDUgomj9it", "UserInfoHTTPMethod": "wYCrvjvElSZDwQzc", "scopes": ["AuTqk49Rmjrzd81c", "xYzFDuecCqyaHQA6", "Sd9wMrOkeDKe1hRe"]}' \
    > test.out 2>&1
eval_tap $? 135 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 136 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '29VdrItoroQFxztt' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 137 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'LWHTObk4sNptJz1H' \
    --body '{"ACSURL": "Dgye1nI22hK8PrBg", "AWSCognitoRegion": "c1qzFhZ80j12fqY2", "AWSCognitoUserPool": "6WH00XZDmL5QvZJu", "AllowedClients": ["kRAvcTerEJyzbO4T", "9NWcifyjic9leucQ", "TcnDmyGVUWozi8QH"], "AppId": "P9Hq4gkJggctCto5", "AuthorizationEndpoint": "wQedUn8pM68rZpB1", "ClientId": "bJb7RJuY6ezlfC8d", "Environment": "uiRQky8WrAhvoCMV", "FederationMetadataURL": "mc3KSHAsiH5ljzLh", "GenericOauthFlow": true, "IsActive": false, "Issuer": "cYln27TxQMZXBJCV", "JWKSEndpoint": "gtWmWGy5BI1XVLdP", "KeyID": "aBEw18idNJ5P66xS", "NetflixCertificates": {"encryptedPrivateKey": "EUxDnpG0J5KmyRtL", "encryptedPrivateKeyName": "sDBYRr2TQ7xruci5", "publicCertificate": "TDcGnuk1ok6iBYa0", "publicCertificateName": "trsjDDclsVBhlgfk", "rootCertificate": "FIs1V3tJ1ulFGcWs", "rootCertificateName": "rcYM0Q1cirRMkjtL"}, "OrganizationId": "qwKygueJ2OGzjd0p", "PlatformName": "s5ByF2Wu6EuXEttx", "RedirectUri": "M8v3OsyIVmT56eRy", "RegisteredDomains": [{"affectedClientIDs": ["bLeYLV0rEY7R6V4g", "1MGDUAvZsjUPwywO", "gTPiWLBbwGgfjnYj"], "domain": "4feE3D3DbgvibLRM", "namespaces": ["h7Z8LDTsg1CECah8", "O6zCzaWdQuehwK7y", "OOTG7P7ThR1O9CJY"], "roleId": "lLAPepz9w44MRtUp"}, {"affectedClientIDs": ["LIoJ9nSQzESZdQuU", "CNkIPEGsdfUYs2xW", "FkbHwZo8p0clTTN9"], "domain": "uz23b1KLKZycxWSs", "namespaces": ["1eXOY8IkSb7g3IBi", "LZOXLLMC4sN8ikFZ", "l8CNUKEAzfrytEH5"], "roleId": "P1K00YkC0lLaNYzj"}, {"affectedClientIDs": ["AxHoxZ2EvT9KHQNW", "uQKNmQrzKmia6qOb", "B0ERoQO4djwvm7mg"], "domain": "ueCqhauTmNuO80hz", "namespaces": ["zCPl4vWOwhQgl2Mm", "ufOfeJBqcdlXcOOk", "UvxVr95UzAYXdqP6"], "roleId": "oG6PZ0saX9BKN4zF"}], "Secret": "jojvPWw18wLsJ6Dd", "TeamID": "Ok4m0VXxP4ei6FUS", "TokenAuthenticationType": "qHNUs88Jm6n4iKBH", "TokenClaimsMapping": {"gh4ASEPiWf5iM7Tm": "3bXY3d0dNLEpfWkQ", "uWvEgf75vWLWWWET": "fDeIAwigX0LwyKIv", "Mk4oApDID05te9gO": "8PnnmAGBXQYXOqW5"}, "TokenEndpoint": "EqkJYcorxKQYe2C5", "UserInfoEndpoint": "IKEh0EilkgKHyiOs", "UserInfoHTTPMethod": "FFq2glD2sFI0csaM", "scopes": ["7VEb9p9D2C2ErdA9", "4szi2dPuvDj28Wxh", "bdOc570UkCsm4yhK"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 138 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'clkqXx92ZMYnS2Tj' \
    --body '{"affectedClientIDs": ["Yo8Ldf3Cdj8ZXhuY", "cvv3RYAJDnUK3DMO", "0y8aHryfcZpqSx2v"], "assignedNamespaces": ["3xjv5JltOuJvM4nD", "XJRD04bIhPDhbRQj", "2MUCdLzvQllYtfPl"], "domain": "YjUZ4Yt7zJQ7SXnV", "roleId": "1Kh4yiSQNFZgvKA2"}' \
    > test.out 2>&1
eval_tap $? 138 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 139 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'UWXlnJRngU3JXfIl' \
    --body '{"domain": "fh6sQLUzZOhVPEBW"}' \
    > test.out 2>&1
eval_tap $? 139 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 140 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '8zZstOEnQED0Jgha' \
    > test.out 2>&1
eval_tap $? 140 'RetrieveSSOLoginPlatformCredential' test.out

#- 141 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'HvJhjW6PpMHDlSwx' \
    --body '{"acsUrl": "SnHocVqpLwsaPhJR", "apiKey": "1WIeuitXOYoA57PE", "appId": "TxWpfKWj8jYz7toW", "federationMetadataUrl": "0Y9S13hR34j4mcY8", "isActive": false, "redirectUri": "1RKdLxSj0eOumII0", "secret": "JrcCrAGdeeWkrspr", "ssoUrl": "HyitPR6uPDxm7sfS"}' \
    > test.out 2>&1
eval_tap $? 141 'AddSSOLoginPlatformCredential' test.out

#- 142 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '4r48v0JeoxYEDMy9' \
    > test.out 2>&1
eval_tap $? 142 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 143 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'NZ9rctu5ZFiTqySk' \
    --body '{"acsUrl": "7fB5WI1Ekl4Ph6os", "apiKey": "3bxzVwLb8qd5yVUG", "appId": "2OgcSGisCwGRO5XD", "federationMetadataUrl": "ddI1e52lktMhHKKZ", "isActive": true, "redirectUri": "WVlOTxeJ9FUrNWO7", "secret": "nQz13WJ00XFG5LcF", "ssoUrl": "M4HTq738RkuI4mm4"}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateSSOPlatformCredential' test.out

#- 144 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'wbTa5BGNZ403dxVU' \
    --rawPID 'true' \
    --body '{"platformUserIds": ["3PqfwUL4q2PvYp49", "ezjoU0JIy8ZpUjrZ", "c0vthBnS0RUyIkTH"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 145 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'tXS9YMQGUQbs4hHz' \
    --platformUserId '8gzT6VYaryxUG00k' \
    > test.out 2>&1
eval_tap $? 145 'AdminGetUserByPlatformUserIDV3' test.out

#- 146 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'UhltBGbhmrjMxsVG' \
    --after '26' \
    --before '12' \
    --limit '49' \
    > test.out 2>&1
eval_tap $? 146 'GetAdminUsersByRoleIdV3' test.out

#- 147 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'SIBaiERuhEqAL1J1' \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByEmailAddressV3' test.out

#- 148 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'Axelw16akuwyQ1QW' \
    --body '{"bulkUserId": ["pDNyeeiP9cOVXvze", "RTuc5epvpplpPWv3", "kXsMhXP5V6TWWUKS"]}' \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserBanV3' test.out

#- 149 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["hQcBdhjA2w3ugfe1", "ThCkFlpLTWFeewps", "HhXTe0qVoC3YsvSy"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminListUserIDByUserIDsV3' test.out

#- 150 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["K6Ew5jl6eTPlAbu5", "Fmzc5psELTLeQdx8", "neT8p8g9lwOV2Pd6"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminBulkGetUsersPlatform' test.out

#- 151 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["XXiKt1GYRWX8YK4D", "EdV2qtpckAxQdwbv", "lILW3CEkEgjrSzez"], "isAdmin": true, "namespace": "7FD59Vk6n5LGz8U7", "roles": ["sLaw3FJ5MEjo8adB", "pdUZhxQlQqY42A1K", "VSLt0sGzG13srqyQ"]}' \
    > test.out 2>&1
eval_tap $? 151 'AdminInviteUserV3' test.out

#- 152 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '81' \
    --platformUserId 'xlmVK4eCUkHbNszo' \
    --platformId 'Yfg8uLTESbkzmChk' \
    > test.out 2>&1
eval_tap $? 152 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 153 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUsersV3' test.out

#- 154 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'iaxcndTVpUMM4XwX' \
    --endDate 'cmTaNuKQQnszGKCo' \
    --limit '75' \
    --offset '14' \
    --platformBy 'lpoM3rvXCkk6P7qp' \
    --platformId 'HqwkrQp7HKv77U75' \
    --query 'zJNiUgbH9nRFseP4' \
    --startDate 'uLF6aIg52NCSYQyX' \
    > test.out 2>&1
eval_tap $? 154 'AdminSearchUserV3' test.out

#- 155 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["eDgDRib7IhMGeoTb", "JV8BA7GWe7twXxtD", "NTlFbBg9kxLtfe5d"]}' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserByEmailAddressV3' test.out

#- 156 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'C6ovY3z5G11fTglp' \
    > test.out 2>&1
eval_tap $? 156 'AdminGetUserByUserIdV3' test.out

#- 157 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dsMobksutGZvxYiT' \
    --body '{"avatarUrl": "TC8RUk5s41ySpSgl", "country": "NKwBnjfhS3QQloY8", "dateOfBirth": "3eFSWCFfaEpjyGuF", "displayName": "ryzCWeWbYpdpjpLf", "languageTag": "JLqmt3sERqqtfOot", "userName": "cwJXWxisaTyJAacp"}' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpdateUserV3' test.out

#- 158 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bzjH4kzxhOYaMYmU' \
    --activeOnly 'true' \
    --after 'HVEz5EjZSX0ukKi3' \
    --before '5ezEz7YwRDpPbSrk' \
    --limit '20' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserBanV3' test.out

#- 159 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'o7wb3SnGzAq1YSJ1' \
    --body '{"ban": "PY6iLFKtrgrYnHym", "comment": "xIVSF0fsipr6isaX", "endDate": "aEAv3KxBjhGXx3v5", "reason": "QvHqQD0sD7iObXBB", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 159 'AdminBanUserV3' test.out

#- 160 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId '6yxLhGBU57UudlIg' \
    --namespace $AB_NAMESPACE \
    --userId 'ZMilggokkUhyB2mY' \
    --body '{"enabled": false, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserBanV3' test.out

#- 161 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jeN3qhLl3Yn5AXkz' \
    --body '{"context": "wTIYMm73eYaDSBhL", "emailAddress": "u7tcSISDzF8RD83D", "languageTag": "odNyySkK96kKpmxw"}' \
    > test.out 2>&1
eval_tap $? 161 'AdminSendVerificationCodeV3' test.out

#- 162 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UFT5fo7W5YIPw0Vo' \
    --body '{"Code": "uVaGaYBlIldujZV3", "ContactType": "KkOoMzeKkfl1gQa7", "LanguageTag": "VLSxCM6TOvLKvs1q", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 162 'AdminVerifyAccountV3' test.out

#- 163 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'CsszpEX2sdgfV4SO' \
    > test.out 2>&1
eval_tap $? 163 'GetUserVerificationCode' test.out

#- 164 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '1CPydBhsmL42ay8E' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserDeletionStatusV3' test.out

#- 165 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'S259R3PqbpiWGKVQ' \
    --body '{"deletionDate": 42, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserDeletionStatusV3' test.out

#- 166 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QLcIZvFexq98HbZf' \
    --body '{"code": "9WN8OZ0scjL9oV7I", "country": "67fsuAfAPg351en1", "dateOfBirth": "oB6vyVqvYuu8CUyb", "displayName": "Q0Z647PxoOSSYOUC", "emailAddress": "MV1VDXPrMFK2qpPZ", "password": "0NEJaVHTFkCoaP8r", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 166 'AdminUpgradeHeadlessAccountV3' test.out

#- 167 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'w4i6p2LeTlCktBbM' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserInformationV3' test.out

#- 168 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Pvxs9TaPyjRUjbh1' \
    --after '0.9821687621391133' \
    --before '0.45070250267876033' \
    --limit '88' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserLoginHistoriesV3' test.out

#- 169 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ymdsDCyM1IAVW8JY' \
    --body '{"languageTag": "14zOaWQ4y2IpsL5R", "newPassword": "KHOu09zX3Qy60tV9", "oldPassword": "qeEp02sVDBfjldvP"}' \
    > test.out 2>&1
eval_tap $? 169 'AdminResetPasswordV3' test.out

#- 170 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UbU1EHsJiUfGYLkm' \
    --body '{"Permissions": [{"Action": 0, "Resource": "pTulmMmjIJoXooh2", "SchedAction": 96, "SchedCron": "jT3QxcUBHVjdjJum", "SchedRange": ["bWBQOrUf0xvuA8Pm", "xnZ9iqg9tuFA5koK", "aVKy49YAQqdNKikJ"]}, {"Action": 73, "Resource": "6CJuYtMWQjWwV8vB", "SchedAction": 95, "SchedCron": "7bXfNFLLRr36TbLj", "SchedRange": ["ShQHXEwaOvymft2h", "S4E6VZuWjA2m5YcZ", "ghFGu8bVavh1YGql"]}, {"Action": 87, "Resource": "lZBzFhES2JDUjVnj", "SchedAction": 57, "SchedCron": "dbIgdIqd1IrjjdXV", "SchedRange": ["WZAcDW00xs3954mm", "OPbcevqvzIha67Cv", "Pj6qBBaj5gIHVBdu"]}]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminUpdateUserPermissionV3' test.out

#- 171 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lQDdwH9nxaspC1qk' \
    --body '{"Permissions": [{"Action": 60, "Resource": "KbSxtKVq6PHiGOPR", "SchedAction": 1, "SchedCron": "KEpZAKqiOySQ8NaJ", "SchedRange": ["Eh3WYxTwmVwobpIo", "OW9mQReGibEB7PqQ", "gjmjBPFiVlUoq6uM"]}, {"Action": 62, "Resource": "DuYGAu2zdSx6IE6W", "SchedAction": 8, "SchedCron": "8DluTAGGidPrllvz", "SchedRange": ["GLJk95mFmrCNJgWW", "XtSRO0SbIqoypRDx", "ZT332Gz0tNxK2gho"]}, {"Action": 23, "Resource": "8bXFB9A6HKy7njmb", "SchedAction": 35, "SchedCron": "rDXSk5378DYM8mJW", "SchedRange": ["PesG9A0SQZXbFTV9", "yvAr3FIQ5OWvbGkt", "mvx8KLSK5xG8Sw9t"]}]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminAddUserPermissionsV3' test.out

#- 172 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId '5mbLjCCnzXqroAKT' \
    --body '[{"Action": 80, "Resource": "F1wbtJUx9DlgX06Y"}, {"Action": 11, "Resource": "16yQ6LbDeb6Ix12Z"}, {"Action": 57, "Resource": "UZus4JlUXSj7JrdK"}]' \
    > test.out 2>&1
eval_tap $? 172 'AdminDeleteUserPermissionBulkV3' test.out

#- 173 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '81' \
    --namespace $AB_NAMESPACE \
    --resource '1XJbzMrZJvGoMyhX' \
    --userId 'G0QikkqrtFxSKXK9' \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserPermissionV3' test.out

#- 174 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Gq29UEPXZG0pKQie' \
    --after 'wUam4zUxsR6Q2vtK' \
    --before 'ChFzaru60v08B3Hu' \
    --limit '76' \
    --platformId '339yjD6GXOCEQE1d' \
    > test.out 2>&1
eval_tap $? 174 'AdminGetUserPlatformAccountsV3' test.out

#- 175 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'Q5x6QZDWVR8namna' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetListJusticePlatformAccounts' test.out

#- 176 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'rdqSQR0iM6zyuZB8' \
    --userId 'p70UlxHND2AmWxvH' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserMapping' test.out

#- 177 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '39aZTG5O18U5XTEP' \
    --userId 'f7cThkPqzsA4MQSG' \
    > test.out 2>&1
eval_tap $? 177 'AdminCreateJusticeUser' test.out

#- 178 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'PyxTUBNi9UaSvCZI' \
    --skipConflict 'false' \
    --body '{"platformId": "TOWzq4MgYIBHZ8tT", "platformUserId": "6meUSr2gCJqHPlEM"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminLinkPlatformAccount' test.out

#- 179 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZTuoBIM6ma8PmE0K' \
    --userId 'See7I16M3Z6IVFCf' \
    --body '{"platformNamespace": "i5lSJF81C1qFfGTE"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminPlatformUnlinkV3' test.out

#- 180 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'icWBNv9nYDUqrdNP' \
    --userId 'ICft0Zw3uRBZEa3a' \
    --ticket 'tEy87IUurYXtJgXD' \
    > test.out 2>&1
eval_tap $? 180 'AdminPlatformLinkV3' test.out

#- 181 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'tie0Yt2iBvtR2o2j' \
    --userId '1W6SpgI9orqT8CxM' \
    --platformToken 'l8QECnaRFH1jJK9N' \
    > test.out 2>&1
eval_tap $? 181 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 182 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'Bwlm5NwMVnb54zw2' \
    --userId 'RUkLz7ZTetaUskZp' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserSinglePlatformAccount' test.out

#- 183 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PIIu1mkmdI6KgQ9U' \
    --body '["Tm7NDAdDaVt12ZrW", "6boJEEy1WjOLLAf8", "BVctzjbzyCo6xUhK"]' \
    > test.out 2>&1
eval_tap $? 183 'AdminDeleteUserRolesV3' test.out

#- 184 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rVoyLNm6xtxEGD9N' \
    --body '[{"namespace": "Z5qF1mx7FIpp2v5H", "roleId": "7gS4sD1GPyNuo9v2"}, {"namespace": "Nc9Zgg31UKJeyIcl", "roleId": "mBjSnpmjPZszQaKO"}, {"namespace": "dhBpuV1FmDVMJzgf", "roleId": "i7FE5VhNFis1SucS"}]' \
    > test.out 2>&1
eval_tap $? 184 'AdminSaveUserRoleV3' test.out

#- 185 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'bJomCAhmDXfxTSma' \
    --userId 'gNAKHtGzVO6m3NWk' \
    > test.out 2>&1
eval_tap $? 185 'AdminAddUserRoleV3' test.out

#- 186 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId '6ZsVCeUMU3esP6cJ' \
    --userId 'gtUk38k3K7vdHgaV' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteUserRoleV3' test.out

#- 187 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'AP1lUe2Sfo5On9YU' \
    --body '{"enabled": false, "reason": "ac6GBPfLIIr3bWTT"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateUserStatusV3' test.out

#- 188 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'mMx0Xm7peMuUJu4B' \
    --body '{"emailAddress": "VLICD9SqbS0md63h", "password": "rdNFdFeZamlZ8f28"}' \
    > test.out 2>&1
eval_tap $? 188 'AdminTrustlyUpdateUserIdentity' test.out

#- 189 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'HKwOmr3EbiV42yRE' \
    > test.out 2>&1
eval_tap $? 189 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 190 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'kRSZo39eVvPgYmvK' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "RDnFqeOvahfeWkDt"}' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpdateClientSecretV3' test.out

#- 191 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'BuNlKT77HgFlTVfD' \
    --before 'JmIiA0JGFA3m1Ys9' \
    --isWildcard 'false' \
    --limit '72' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRolesV3' test.out

#- 192 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "managers": [{"displayName": "ey21yYyjbH7ZVsFt", "namespace": "qLobkJBeI18AqdPl", "userId": "gZAmh4yS76hRQfUx"}, {"displayName": "GwqaFY7rFKlc7OLr", "namespace": "c4i1G73xOwttrn2V", "userId": "ijNvZDhCacV7njkE"}, {"displayName": "LuTKyw2umXKdYR1s", "namespace": "KcsV7Qs258oTTJt0", "userId": "QDSZ2OlGR5sVhgoz"}], "members": [{"displayName": "Ng3DuPzFkCDRdGn5", "namespace": "dJotW08io3vRlWH7", "userId": "Bce3jCfRFrYm0xmW"}, {"displayName": "W93U2orn8kWHeA9f", "namespace": "bXyuXEZ6g6uzSCGO", "userId": "Fxm6LklFxCtrXAhJ"}, {"displayName": "iq4lhjxq7xIQXNtj", "namespace": "WJXyt5UfcdlCvKkw", "userId": "qZTBWr6CTZlMdQrQ"}], "permissions": [{"action": 76, "resource": "80Mgd0hWjH59Plft", "schedAction": 62, "schedCron": "v5JowyFIdeBaGyLc", "schedRange": ["TemVokBvksJPdrPm", "HDhoHJWKjZzA5OO1", "w4yI4b069KGyE3Gl"]}, {"action": 41, "resource": "5Hk4BxH3oA5CyrlG", "schedAction": 13, "schedCron": "5ZM0nlUkZjWyuQAy", "schedRange": ["JMm6Gwiib4wSgG1C", "Zu5vKG4Rvfz1wjXc", "MMOnvxHWiVtS35Nq"]}, {"action": 58, "resource": "NylcnNArNc2mn83B", "schedAction": 52, "schedCron": "4R1ywv2NwoA8sFVG", "schedRange": ["zcx9lVTHjZtYrymn", "EBfvadpjArhqzSvV", "fdFiyaDkeCP22LVu"]}], "roleName": "yCi0svBlh8OuqBTO"}' \
    > test.out 2>&1
eval_tap $? 192 'AdminCreateRoleV3' test.out

#- 193 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'teQUqhUUiBQa96cM' \
    > test.out 2>&1
eval_tap $? 193 'AdminGetRoleV3' test.out

#- 194 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'xZo7s9A1P715C691' \
    > test.out 2>&1
eval_tap $? 194 'AdminDeleteRoleV3' test.out

#- 195 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'cM8xKQhSLvrj8igk' \
    --body '{"deletable": true, "isWildcard": true, "roleName": "q7kqHuzLk3SUz56z"}' \
    > test.out 2>&1
eval_tap $? 195 'AdminUpdateRoleV3' test.out

#- 196 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId '4tha5kq7mv9iL0Uy' \
    > test.out 2>&1
eval_tap $? 196 'AdminGetRoleAdminStatusV3' test.out

#- 197 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'ut4miPKSq76qge4l' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateAdminRoleStatusV3' test.out

#- 198 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'IL1vQWkjS1Ah4GlK' \
    > test.out 2>&1
eval_tap $? 198 'AdminRemoveRoleAdminV3' test.out

#- 199 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'vGkdMFjq2eWKsOr6' \
    --after '0bN8sUuSDLpxikzU' \
    --before 'rVnOQUwu2Xppciat' \
    --limit '54' \
    > test.out 2>&1
eval_tap $? 199 'AdminGetRoleManagersV3' test.out

#- 200 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'kg57orpfKNZajCxN' \
    --body '{"managers": [{"displayName": "LJNftgLopq7VWJsO", "namespace": "6YZ6A8uiKySQ1QJU", "userId": "Nj2NrWRwY85ogflM"}, {"displayName": "oEMsmUs5wDnYsFYv", "namespace": "mmJmix36mrgKCj7x", "userId": "V3qNINJbYQH5ldi8"}, {"displayName": "hYR5sFVagQOpRkAX", "namespace": "qop2TweYNHWrbplL", "userId": "zpw9swWUzz6HAr0L"}]}' \
    > test.out 2>&1
eval_tap $? 200 'AdminAddRoleManagersV3' test.out

#- 201 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'iL3DoChNZ4MSuMKP' \
    --body '{"managers": [{"displayName": "VRvwC1ZWnVFCKqpP", "namespace": "s3g4BJVpyWhWCnVu", "userId": "4hYB7uGbMus1VP3P"}, {"displayName": "cu3tYajRh8vurPJf", "namespace": "jXtb0gjMZF0kEDVu", "userId": "H6Nkj5dgLT9ca3Rv"}, {"displayName": "oaYennL42JeIfR9X", "namespace": "Mh4Xbd3AWbQOWLv2", "userId": "GRXk0KDJQEi3zVx8"}]}' \
    > test.out 2>&1
eval_tap $? 201 'AdminRemoveRoleManagersV3' test.out

#- 202 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'Xy4bcj3OBZGaCp4Z' \
    --after '8n8TvdObNSc1hYEg' \
    --before 'pwCxfE6d9kfhh0qh' \
    --limit '54' \
    > test.out 2>&1
eval_tap $? 202 'AdminGetRoleMembersV3' test.out

#- 203 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'aNW4BAipSeiiEj4c' \
    --body '{"members": [{"displayName": "Pt3XWd4buGaSBaNM", "namespace": "l80jO4XGKI7yBjgn", "userId": "gQdiyIyW9d8K8JkT"}, {"displayName": "4eSl7qW72OXrXCog", "namespace": "yISQEhAZ6GnTp6Bz", "userId": "KsT7VAJsoFGfJa1M"}, {"displayName": "VHNTDowU0axlJKqf", "namespace": "i6SaHqtPN08Bx9n0", "userId": "CPtgBaxJFqvlP7bb"}]}' \
    > test.out 2>&1
eval_tap $? 203 'AdminAddRoleMembersV3' test.out

#- 204 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'T6dmZ8XSkihaeso4' \
    --body '{"members": [{"displayName": "6WUkE6CwBVFcMLwi", "namespace": "BlUzeA8540cdrhji", "userId": "S9HgAz0WPCPzAB1G"}, {"displayName": "DurKQdWfMXFXUlz3", "namespace": "Kvd6OpnhZxm0xn5o", "userId": "SUi0SsYrI88XIXo2"}, {"displayName": "2GcT3HtsCiVhv8kK", "namespace": "Ee9e6GKGVkT3KyO8", "userId": "XZx5k9RAtETTwAFb"}]}' \
    > test.out 2>&1
eval_tap $? 204 'AdminRemoveRoleMembersV3' test.out

#- 205 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'aDkOGZp7gWbn7KNi' \
    --body '{"permissions": [{"action": 67, "resource": "DHnpalbgnpoAa3xT", "schedAction": 60, "schedCron": "4IOEFyikoGDxoNKO", "schedRange": ["IHug0ObLe2dvOPpa", "oLKSSuS8kBaGiiiz", "A3I4EZJo0CMabHzJ"]}, {"action": 19, "resource": "1kgDJMCWxBDd7iBT", "schedAction": 27, "schedCron": "UzJsODlUqWG7D6px", "schedRange": ["MWkwKctEVOU8NQss", "Og96SzuelHtoTy1i", "iATdT8cYM9idBisi"]}, {"action": 50, "resource": "IfNp9QHj96souL3c", "schedAction": 30, "schedCron": "ONqYH9RaKTKoOZPO", "schedRange": ["eccJXK7mPvj7iL6x", "UorF7qY5phu9OG8t", "xpUlFnbmrJf9cBF1"]}]}' \
    > test.out 2>&1
eval_tap $? 205 'AdminUpdateRolePermissionsV3' test.out

#- 206 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'fILWVDkwW7UfQMsg' \
    --body '{"permissions": [{"action": 18, "resource": "z9JX8h7u2SLHNhEq", "schedAction": 55, "schedCron": "xw9JuEOTo2qOQJTz", "schedRange": ["2ImeqMhM02qMVK8c", "az8ZsXyRvqFJbnAe", "CzPLL98UEDcepsaA"]}, {"action": 15, "resource": "b5BWQRA15VHh7xQT", "schedAction": 8, "schedCron": "2nlqZ11K0SbKNT1b", "schedRange": ["j9VJOg6FQtbOcNV8", "lFkFPEam3uxsP6xY", "41NjdgsojDaaXAtR"]}, {"action": 71, "resource": "PfzpYCbrcCTe24o4", "schedAction": 78, "schedCron": "imTkbOcmX7RfHJMZ", "schedRange": ["fACKO9NBiA1tHqB4", "9Ye1Msq2aBIqSpGu", "7pDdBmFQBcjMfJeo"]}]}' \
    > test.out 2>&1
eval_tap $? 206 'AdminAddRolePermissionsV3' test.out

#- 207 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'ttUiB5hGBmQbnRUK' \
    --body '["Y08lVGFSgRrMIpZn", "eflW2LVYJimPiHjX", "46d10QxpujPpzUbY"]' \
    > test.out 2>&1
eval_tap $? 207 'AdminDeleteRolePermissionsV3' test.out

#- 208 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '16' \
    --resource 'JD2S8QFjCSyBaWdd' \
    --roleId 'TF4v4VBSuty39XDQ' \
    > test.out 2>&1
eval_tap $? 208 'AdminDeleteRolePermissionV3' test.out

#- 209 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 209 'AdminGetMyUserV3' test.out

#- 210 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'kdgbitwK4MxIhLRY' \
    --extendExp 'true' \
    --redirectUri 'fcQjbYDBWGSFHBYJ' \
    --password 'QudJUQUvvNigLvZm' \
    --requestId 'OWMG8KTPEa1iFM8f' \
    --userName 'Ke8ri7oT2UJj9okg' \
    > test.out 2>&1
eval_tap $? 210 'UserAuthenticationV3' test.out

#- 211 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'smBG4rTVWFRHuwJ5' \
    --linkingToken 'bhHDWYkKGzAbbmad' \
    --password '3KZdJCpSNSbawERq' \
    --username 't8aCGxZ3d4hySajd' \
    > test.out 2>&1
eval_tap $? 211 'AuthenticationWithPlatformLinkV3' test.out

#- 212 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'XpXmO7LsLwRIAS06' \
    --extendExp 'true' \
    --linkingToken '0qr4ca8BhClaJsoU' \
    > test.out 2>&1
eval_tap $? 212 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 213 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'BCtQVWy6vF2FwhLH' \
    > test.out 2>&1
eval_tap $? 213 'RequestOneTimeLinkingCodeV3' test.out

#- 214 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'nBJMKlWEFz4zvCFI' \
    > test.out 2>&1
eval_tap $? 214 'ValidateOneTimeLinkingCodeV3' test.out

#- 215 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'wXjk6qUF5OuSUh3F' \
    --isTransient 'true' \
    --clientId 'MWUPTyMJo13V777s' \
    --oneTimeLinkCode 'ULnLjhJIp0WKb7FK' \
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
    --clientId 'rK8BR4k2zbPvRcuE' \
    > test.out 2>&1
eval_tap $? 218 'RequestTokenExchangeCodeV3' test.out

#- 219 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId '1fK1ip0GVrnJy28C' \
    --userId 'CQ6E1tHwLEcEufDH' \
    > test.out 2>&1
eval_tap $? 219 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'se15e7vSPgZiY8rN' \
    --includeGameNamespace 'true' \
    > test.out 2>&1
eval_tap $? 220 'RevokeUserV3' test.out

#- 221 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge '2iMryqdL4vAe2VET' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'true' \
    --oneTimeLinkCode 'CL4cpIx8UXfwUG6F' \
    --redirectUri 'JE10q3fgJJrAfd6Z' \
    --scope 'zdd2NrO7Z4HQuxNj' \
    --state '9WvAylyaUo4aettr' \
    --targetAuthPage 'kJKZC77o0XbqQb9U' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId '2ve1oxZbJwhNfUg9' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 221 'AuthorizeV3' test.out

#- 222 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'ONqp4wbVjV2bEWJO' \
    > test.out 2>&1
eval_tap $? 222 'TokenIntrospectionV3' test.out

#- 223 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 223 'GetJWKSV3' test.out

#- 224 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'FQ6YM1LiPEiuAPHT' \
    --factor 'ZkKmesKTvDFjdPIY' \
    --mfaToken 'yucqimEPx6UA4SRn' \
    > test.out 2>&1
eval_tap $? 224 'SendMFAAuthenticationCode' test.out

#- 225 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'FNl7oXyqSb6NhDAp' \
    --mfaToken 'qKw5E0X3InhEeqII' \
    > test.out 2>&1
eval_tap $? 225 'Change2faMethod' test.out

#- 226 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code '0BfY0SYKzUaI5qwv' \
    --factor 'z8KBddA9QpqR1uMX' \
    --mfaToken 'ZV190a44h4c6toTH' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 226 'Verify2faCode' test.out

#- 227 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'JDM4uVDwqjiyG9j3' \
    --userId '0SNFop0v3sN9iP4t' \
    > test.out 2>&1
eval_tap $? 227 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 228 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'N8Tym0w9bMM1n9Zs' \
    --clientId 'wFPhKensDX9dsyOl' \
    --redirectUri 'OTYALzXloDpe9Dki' \
    --requestId 'gn9cZnv3RngmFNgV' \
    > test.out 2>&1
eval_tap $? 228 'AuthCodeRequestV3' test.out

#- 229 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'cTVtnw8n3faa7VpE' \
    --additionalData '7vGHA9K5HPnmECzF' \
    --clientId 'u979GuzpeTQcuswQ' \
    --createHeadless 'true' \
    --deviceId 'eiq4aJFKhETBcGQg' \
    --macAddress 'eCjDNPQr7vRNlntF' \
    --platformToken 'N1huhCnZhadkJVeV' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 229 'PlatformTokenGrantV3' test.out

#- 230 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 230 'GetRevocationListV3' test.out

#- 231 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'QQs4X4NuGhIxf2VY' \
    > test.out 2>&1
eval_tap $? 231 'TokenRevocationV3' test.out

#- 232 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'KChoi8C4qHp4c0wi' \
    --clientId 'TJ9P88TXne0gyf7F' \
    --code 'C65nacoPHPQlfxWe' \
    --codeVerifier '7euvMY8hws0y5xSL' \
    --extendExp 'false' \
    --password 'jiM5ARRVOjjVZ2mx' \
    --redirectUri 'qpPQ5lVCd0F786MK' \
    --refreshToken 'GImaMoxSa5IycK9i' \
    --username 'rv7blhOFeuKy86Jd' \
    --grantType 'refresh_token' \
    > test.out 2>&1
eval_tap $? 232 'TokenGrantV3' test.out

#- 233 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'vbpv5RVuSIBWipRw' \
    > test.out 2>&1
eval_tap $? 233 'VerifyTokenV3' test.out

#- 234 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'DshDZ6naByWUTHiZ' \
    --code '6X7Ptw0aHY3EWFUH' \
    --error '6Vajx5DdyplPL5O3' \
    --openidAssocHandle 'opBTMxq7j2PaUOgK' \
    --openidClaimedId 'j9lUYXNtTcAocdrI' \
    --openidIdentity 'p1OOHgj8YNVKesZ7' \
    --openidMode 'RRpfiUAbFRT8zXj8' \
    --openidNs 'j5pHhpmJ9aqsIA3a' \
    --openidOpEndpoint 'XJoFjKV1e2gWTaO4' \
    --openidResponseNonce '8bR1tJeezDgtQcuX' \
    --openidReturnTo 'xxv5bRKkIUU4ZtDK' \
    --openidSig 'gje9aL9zFOsaTCSr' \
    --openidSigned 'dNOqynLHSOGeiCM1' \
    --state 'qaRc82WUCYYgPv90' \
    > test.out 2>&1
eval_tap $? 234 'PlatformAuthenticationV3' test.out

#- 235 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'LFc72quwIJWHlQnW' \
    --platformToken '5lxdlUkDkviwqL71' \
    > test.out 2>&1
eval_tap $? 235 'PlatformTokenRefreshV3' test.out

#- 236 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode '2q71fNVrsLzUJakI' \
    > test.out 2>&1
eval_tap $? 236 'PublicGetInputValidations' test.out

#- 237 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'COXtPbyxXvMjEeFW' \
    > test.out 2>&1
eval_tap $? 237 'PublicGetInputValidationByField' test.out

#- 238 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'bOXw3dsFx9dsNSfi' \
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
    --clientId 'A38mKFBacXnBQzdC' \
    > test.out 2>&1
eval_tap $? 241 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 242 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'pG0eNUmBCPzh3UTl' \
    --rawPID 'true' \
    --body '{"platformUserIds": ["vogNk7pUyztjd554", "XUoHUgdfyaqDL5mg", "YyVHsQKpwOzauHj6"]}' \
    > test.out 2>&1
eval_tap $? 242 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 243 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'yoRjWEqVrxnfjvej' \
    --platformUserId 'rvVhaOzzmDZ57gk9' \
    > test.out 2>&1
eval_tap $? 243 'PublicGetUserByPlatformUserIDV3' test.out

#- 244 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'YfkfT3gk16fDbCy9' \
    > test.out 2>&1
eval_tap $? 244 'PublicGetAsyncStatus' test.out

#- 245 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'DC8458ATZegf5CPo' \
    --limit '27' \
    --offset '55' \
    --query 'yKlGLGj0FUoOCkLU' \
    > test.out 2>&1
eval_tap $? 245 'PublicSearchUserV3' test.out

#- 246 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "JfgpuPpJWFG6HetA", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "dkR0OHWtHeXwO2Ra", "policyId": "K7D5OL2RZvJCI4zM", "policyVersionId": "aWPbAdiv4t21bNBz"}, {"isAccepted": true, "localizedPolicyVersionId": "HX4B9KYD81qWBQd6", "policyId": "WFdoLfVC46TfumDq", "policyVersionId": "1C2IUKAns6I3nTYf"}, {"isAccepted": true, "localizedPolicyVersionId": "RSKa6JlNmaymJuAO", "policyId": "Xg0G06rFx0vpuZCh", "policyVersionId": "mP7gJoumdaDJpdK1"}], "authType": "LdGWK8airJIOIt0f", "code": "Ym3T7CslTW218HAx", "country": "taEdo1F3MeTrCIJt", "dateOfBirth": "FKkI75Z3Ukw0KdcH", "displayName": "Xp1KkKZh1gZbYwiU", "emailAddress": "leXcbwKV3W8Vkg9x", "password": "rCpyPAzwIuhU7FDG", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 246 'PublicCreateUserV3' test.out

#- 247 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'yjTp90uQGuFzFCeT' \
    --query 'NAHuXy2zaRmqZjZb' \
    > test.out 2>&1
eval_tap $? 247 'CheckUserAvailability' test.out

#- 248 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["lFRQKve7HSyNtPLN", "nedgYbM6upjfj6GI", "rJRubrAS8mZB3W2k"]}' \
    > test.out 2>&1
eval_tap $? 248 'PublicBulkGetUsers' test.out

#- 249 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "WEV8mLQgfL0MslLJ", "languageTag": "6HtPCZUXwLTcIUNb"}' \
    > test.out 2>&1
eval_tap $? 249 'PublicSendRegistrationCode' test.out

#- 250 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "TVtYF3ib8sWt2Qu0", "emailAddress": "k2ZT1PTtNsZqgo0w"}' \
    > test.out 2>&1
eval_tap $? 250 'PublicVerifyRegistrationCode' test.out

#- 251 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "d5WYTptN16l1Zwih", "languageTag": "qMOHNF62i8CN76IA"}' \
    > test.out 2>&1
eval_tap $? 251 'PublicForgotPasswordV3' test.out

#- 252 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId '4lJmke6mNHJmDEXe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 252 'GetAdminInvitationV3' test.out

#- 253 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'CZ3pDY8j2nGpQNaI' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "MBnZQsosy51RDTRc", "policyId": "Wee5oFqc4Bxqyudc", "policyVersionId": "YRW5cbZfAJAyaTjF"}, {"isAccepted": false, "localizedPolicyVersionId": "uAdG7KvxmxMd0Sbf", "policyId": "y97TdNECbcFyaSwb", "policyVersionId": "ry5WNgT5V28OjYTQ"}, {"isAccepted": false, "localizedPolicyVersionId": "QdvlABWjAuAu7TP2", "policyId": "6Fu7bIZjsWF8j7MY", "policyVersionId": "DH2b61h0z86NEsyW"}], "authType": "EMAILPASSWD", "country": "jIIy0J27v8yao9Op", "dateOfBirth": "VO9QMOpL5ZBq2cEV", "displayName": "4Ra2CladzvM1AVSx", "password": "nkJvxpVRrPgkW9AV", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 253 'CreateUserFromInvitationV3' test.out

#- 254 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "Wxn1qKrCdqt2WpTK", "country": "zKxmClZjXcKe7DBa", "dateOfBirth": "VmSJsoQfi7ZHsZf6", "displayName": "Fkowbaleo5Al06mr", "languageTag": "ChCA7499HBESyNlS", "userName": "weGPy1hh3K8InPCP"}' \
    > test.out 2>&1
eval_tap $? 254 'UpdateUserV3' test.out

#- 255 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "DyO68z2McYhyt4TT", "country": "GnwcuxOkoRMSCsc3", "dateOfBirth": "GWCgbW68UGn3w3Tl", "displayName": "AatfkiTMnSMeeaQi", "languageTag": "MnGYfrK0kcNNoCV6", "userName": "i52G1bL8cdadepSI"}' \
    > test.out 2>&1
eval_tap $? 255 'PublicPartialUpdateUserV3' test.out

#- 256 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "sjc3IU6A2y9z9DDy", "emailAddress": "d0dYeKzdYzY0zOBh", "languageTag": "cDa6KRvoOeYGl1OR"}' \
    > test.out 2>&1
eval_tap $? 256 'PublicSendVerificationCodeV3' test.out

#- 257 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "fHP3w8nmYcXEWfcW", "contactType": "MPNRdQoq50u1wiqE", "languageTag": "rBNLZy0ZZ2skTsfS", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 257 'PublicUserVerificationV3' test.out

#- 258 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "TR4ejo3OppggBwYU", "country": "V8hb1Wi5Xw5za5aD", "dateOfBirth": "Sn2vKiEmWRP4NRPN", "displayName": "PjbMhniugXudynpD", "emailAddress": "I8Hd0eZTp0nW2Kqb", "password": "3ICtTc4gGHGcV381", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 258 'PublicUpgradeHeadlessAccountV3' test.out

#- 259 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "Is3MJyKcG15CyKyW", "password": "oXPOOihSfASwevvU"}' \
    > test.out 2>&1
eval_tap $? 259 'PublicVerifyHeadlessAccountV3' test.out

#- 260 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "tC6MiQsQuGFvpaUH", "newPassword": "roWW7iFCwI2mvpKk", "oldPassword": "Lc1OqYLcROq9xsSe"}' \
    > test.out 2>&1
eval_tap $? 260 'PublicUpdatePasswordV3' test.out

#- 261 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'jdbz9macv7bENG2i' \
    > test.out 2>&1
eval_tap $? 261 'PublicCreateJusticeUser' test.out

#- 262 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Dw00fhbACJ5RCCFp' \
    --redirectUri 'fqHSqOcGIK6SuFTR' \
    --ticket 'LzwRx7lO4wqf6CcM' \
    > test.out 2>&1
eval_tap $? 262 'PublicPlatformLinkV3' test.out

#- 263 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Z78tqLQwqUXvlNJj' \
    --body '{"platformNamespace": "UU9IpZ0Ki5L2H4Rw"}' \
    > test.out 2>&1
eval_tap $? 263 'PublicPlatformUnlinkV3' test.out

#- 264 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId '6O7Z9YPL4HdoYF76' \
    > test.out 2>&1
eval_tap $? 264 'PublicPlatformUnlinkAllV3' test.out

#- 265 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'XzssWqDmNQZa4C65' \
    --ticket '4dVu0b4qP8W1zXSL' \
    > test.out 2>&1
eval_tap $? 265 'PublicForcePlatformLinkV3' test.out

#- 266 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'JYrp6WSsB9hPcU9q' \
    --clientId 'D2VL1B2qvqsjxsHe' \
    --redirectUri 'NiTD6cFelfSveYAE' \
    > test.out 2>&1
eval_tap $? 266 'PublicWebLinkPlatform' test.out

#- 267 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'fMHuXOWDlxqjQ92Y' \
    --code 'Tc1IfeYX0VJNX1HX' \
    --state 'HaVPTMvYizPYmCvX' \
    > test.out 2>&1
eval_tap $? 267 'PublicWebLinkPlatformEstablish' test.out

#- 268 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'JgjYQS1oG3Fw99BF' \
    --code 'mdw67t6wJNmrQYvb' \
    --state 'nhqJuWtuUVsOT0Rl' \
    > test.out 2>&1
eval_tap $? 268 'PublicProcessWebLinkPlatformV3' test.out

#- 269 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "AW1kbwgoL7kIw2uo", "emailAddress": "wqcHjs6FkM4L0k5V", "newPassword": "4tI96tpqOHvo9bMo"}' \
    > test.out 2>&1
eval_tap $? 269 'ResetPasswordV3' test.out

#- 270 PublicGetUserByUserIdV3
eval_tap 0 270 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 271 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'K9EmA7kHWzwQoaZE' \
    --activeOnly 'false' \
    --after '4XkBYZKphPmDDJpr' \
    --before 'z7Sshv7086HGdTQ4' \
    --limit '53' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetUserBanHistoryV3' test.out

#- 272 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hc8hJL9HNzK32mRY' \
    > test.out 2>&1
eval_tap $? 272 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 273 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'itwach4rQVkzvlcp' \
    > test.out 2>&1
eval_tap $? 273 'PublicGetUserInformationV3' test.out

#- 274 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gYhId7yZbYeksNsW' \
    --after '0.8163286613293063' \
    --before '0.10259195995607573' \
    --limit '99' \
    > test.out 2>&1
eval_tap $? 274 'PublicGetUserLoginHistoriesV3' test.out

#- 275 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LpYxYTUH9ZmYFniF' \
    --after 'oK2LpYrcigg3JzYG' \
    --before 'BGmRH3rZC45nNAgw' \
    --limit '35' \
    --platformId 'gZFAqTSVFfb1evUx' \
    > test.out 2>&1
eval_tap $? 275 'PublicGetUserPlatformAccountsV3' test.out

#- 276 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '4ghzt0RAcNCuRoFm' \
    > test.out 2>&1
eval_tap $? 276 'PublicListJusticePlatformAccountsV3' test.out

#- 277 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'RqIv31uRkJhI9DLZ' \
    --body '{"platformId": "Py1Nk7PVjMTh72dl", "platformUserId": "wNvVVBhcMiRE2c71"}' \
    > test.out 2>&1
eval_tap $? 277 'PublicLinkPlatformAccount' test.out

#- 278 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'QiB9RWmgPmSqCNJ1' \
    --body '{"chosenNamespaces": ["QyEAe1sRCcxfSWbZ", "4mUwViVursqeaRst", "Fg1huskC5Kb5dgit"], "requestId": "g9B3OJXqXpPINj9G"}' \
    > test.out 2>&1
eval_tap $? 278 'PublicForceLinkPlatformWithProgression' test.out

#- 279 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rQkzzVjMguCuVlLb' \
    > test.out 2>&1
eval_tap $? 279 'PublicGetPublisherUserV3' test.out

#- 280 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId '3Lmp8nAqGfBHiyyY' \
    --password 's6oHyuQLfEe7RCrO' \
    > test.out 2>&1
eval_tap $? 280 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 281 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'esfvQKwmjJnGObeY' \
    --before '951nR6q9jIOkqiAe' \
    --isWildcard 'false' \
    --limit '7' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetRolesV3' test.out

#- 282 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'YmKaOK2LbHWRImeW' \
    > test.out 2>&1
eval_tap $? 282 'PublicGetRoleV3' test.out

#- 283 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 283 'PublicGetMyUserV3' test.out

#- 284 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'SuSBoTtcoql9lmCg' \
    > test.out 2>&1
eval_tap $? 284 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 285 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["8SKrqW2dIlSXUjsX", "X0J6X0rMzYYASbxM", "fBvgG5fsmu3Cgli3"], "oneTimeLinkCode": "bfQq6LaTees31EKi"}' \
    > test.out 2>&1
eval_tap $? 285 'LinkHeadlessAccountToMyAccountV3' test.out

#- 286 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "mrxZ99iBKuccz6A3"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicSendVerificationLinkV3' test.out

#- 287 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'SaQLKjXBOInM2qGo' \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyUserByLinkV3' test.out

#- 288 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'vEiHEdbB1OWjrRYV' \
    --code '13lP1x5p9hQrJNLd' \
    --error 'O8eWkGKbP0MG79JX' \
    --state 'bk1df2RIuL7E6Zvk' \
    > test.out 2>&1
eval_tap $? 288 'PlatformAuthenticateSAMLV3Handler' test.out

#- 289 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'SiRcrlusYOBUK1tE' \
    --payload 'SXnxIuK2IPCuR2EW' \
    > test.out 2>&1
eval_tap $? 289 'LoginSSOClient' test.out

#- 290 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'g9y3bkuWHRcnhP13' \
    > test.out 2>&1
eval_tap $? 290 'LogoutSSOClient' test.out

#- 291 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'blvGBYWPGS21DysV' \
    --code '7xGDjUgciTAQIEJ7' \
    > test.out 2>&1
eval_tap $? 291 'RequestTargetTokenResponseV3' test.out

#- 292 PlatformTokenRefreshV3Deprecate
eval_tap 0 292 'PlatformTokenRefreshV3Deprecate # SKIP deprecated' test.out

#- 293 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'f30nEpA6xVbCF46Z' \
    > test.out 2>&1
eval_tap $? 293 'AdminGetDevicesByUserV4' test.out

#- 294 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'WCUP2rJ3wb20pBUL' \
    --endDate '3B2pLhOhWiRQxtP9' \
    --limit '36' \
    --offset '89' \
    --startDate 'uHQ5TqPi5k2APKnx' \
    > test.out 2>&1
eval_tap $? 294 'AdminGetBannedDevicesV4' test.out

#- 295 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'sJwoLiBbomJeaaKG' \
    > test.out 2>&1
eval_tap $? 295 'AdminGetUserDeviceBansV4' test.out

#- 296 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "RLJpaqu7WjT5Ljxz", "deviceId": "1GyTXuLTmknsyKKe", "deviceType": "Lbbk9LZorkIV1cTR", "enabled": false, "endDate": "tFczpEgjiDvDeU2s", "ext": {"1cl2W33YL7Jw5nrV": {}, "3vCSVtKfxZHj09BG": {}, "EITWSsWnbzYyY2Pk": {}}, "reason": "M5NlvGGkoY5chslk"}' \
    > test.out 2>&1
eval_tap $? 296 'AdminBanDeviceV4' test.out

#- 297 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId '4NNDgOt5M1SAXF2t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 297 'AdminGetDeviceBanV4' test.out

#- 298 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'Y2dkfMIF9Q6aWRp9' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateDeviceBanV4' test.out

#- 299 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'syh63q4DyxeaLGFx' \
    --startDate 'yFDjO4M1l5aBgT18' \
    --deviceType '9kTQ0m8jg16Q0EBH' \
    > test.out 2>&1
eval_tap $? 299 'AdminGenerateReportV4' test.out

#- 300 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 300 'AdminGetDeviceTypesV4' test.out

#- 301 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'QjjIOcV5zYCNQaeF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 301 'AdminGetDeviceBansV4' test.out

#- 302 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'qp9JSAKONOIDr8RN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 302 'AdminDecryptDeviceV4' test.out

#- 303 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'c5Yu8mdvIT2lp4np' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 303 'AdminUnbanDeviceV4' test.out

#- 304 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'MRx8h4gF3tOdHvBu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 304 'AdminGetUsersByDeviceV4' test.out

#- 305 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 96}' \
    > test.out 2>&1
eval_tap $? 305 'AdminCreateTestUsersV4' test.out

#- 306 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["yABs4K1jjYOp1TqI", "JVPEa8FJCBEjfN7m", "ls6hjlQWkyUBI6ct"]}' \
    > test.out 2>&1
eval_tap $? 306 'AdminBulkCheckValidUserIDV4' test.out

#- 307 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'xm3TzHvw4vC2MqA5' \
    --body '{"avatarUrl": "3nQnczYg6gp9NwpD", "country": "Cthnh60PH5vF33hk", "dateOfBirth": "ODQkvV4NPTh0KqCs", "displayName": "O2Zg3jyzJACqmWyn", "languageTag": "lZNq1HY53A42eIlN", "userName": "08R89M6gyiCaiawR"}' \
    > test.out 2>&1
eval_tap $? 307 'AdminUpdateUserV4' test.out

#- 308 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'VfhJDHhsLEQRcrMj' \
    --body '{"code": "wRslxJjpgPyPrPKv", "emailAddress": "QK9qZqHFFUogBdSK"}' \
    > test.out 2>&1
eval_tap $? 308 'AdminUpdateUserEmailAddressV4' test.out

#- 309 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId '2xrRM9VZ0K4GqjbF' \
    > test.out 2>&1
eval_tap $? 309 'AdminDisableUserMFAV4' test.out

#- 310 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'UoZWkQl5Q2imLfr7' \
    > test.out 2>&1
eval_tap $? 310 'AdminListUserRolesV4' test.out

#- 311 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '8FE12dv4iELXgMzp' \
    --body '{"assignedNamespaces": ["HzdmXB3owH6pSxZU", "7ColrrG2Ey9rYM76", "WlV7KIO53aOwTyXO"], "roleId": "DRcRohW5U4RmUd6B"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminUpdateUserRoleV4' test.out

#- 312 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'moWb7NMosYsWvqhw' \
    --body '{"assignedNamespaces": ["HPRdY9w1X6vRZvnQ", "BnCJ8oY3CH6itGy3", "cBmLpGeSp2DLwRHm"], "roleId": "i9IUmq7xY4OHc6E0"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminAddUserRoleV4' test.out

#- 313 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'i9xkWAs5M1Fgl7pN' \
    --body '{"assignedNamespaces": ["BOOP6uRJgbQZji6d", "Z4gu0LMVTJSeIjom", "TRQHsVW2FguhO5hn"], "roleId": "LQTmSiEQn81cZszA"}' \
    > test.out 2>&1
eval_tap $? 313 'AdminRemoveUserRoleV4' test.out

#- 314 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'false' \
    --limit '23' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 314 'AdminGetRolesV4' test.out

#- 315 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "XACCCRCzx9X4HDHh"}' \
    > test.out 2>&1
eval_tap $? 315 'AdminCreateRoleV4' test.out

#- 316 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'ZeTZDZHV5JeOECj9' \
    > test.out 2>&1
eval_tap $? 316 'AdminGetRoleV4' test.out

#- 317 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'PXU6iFy4CZKH1cnq' \
    > test.out 2>&1
eval_tap $? 317 'AdminDeleteRoleV4' test.out

#- 318 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'hRhdKymt5eXalEZj' \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "leX6cfOodKMaP2DY"}' \
    > test.out 2>&1
eval_tap $? 318 'AdminUpdateRoleV4' test.out

#- 319 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'P7WSPUetGuukRE4N' \
    --body '{"permissions": [{"action": 85, "resource": "3D9qOGHfHuflrJ5T", "schedAction": 28, "schedCron": "kjh8WRqSgZtsNBQB", "schedRange": ["rsjFY7fCGV41qkFk", "3tMchamIcCuU08SF", "ONnw8aV2KD3IkXjh"]}, {"action": 48, "resource": "RzsSjEX8jiMV0voF", "schedAction": 9, "schedCron": "WFZDsxplA2kUecTj", "schedRange": ["S10OebJIxiwDMncK", "xLzdUjq3aYTEDB7U", "fd2BroHjoVuz45lU"]}, {"action": 4, "resource": "4ohIwn5AtqT3EjHp", "schedAction": 44, "schedCron": "2vj84WgUqrZoef0R", "schedRange": ["Uzzy5KebB0zMKxp2", "gfek6bLyiUVH5QCn", "a47b3UcqFcLYHu8K"]}]}' \
    > test.out 2>&1
eval_tap $? 319 'AdminUpdateRolePermissionsV4' test.out

#- 320 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'yB5su0qcZjhBOH4d' \
    --body '{"permissions": [{"action": 44, "resource": "k7lMGpQ4r74DVgcW", "schedAction": 3, "schedCron": "zJfOIfSJmTlqL7FW", "schedRange": ["cIuKqRMyUTO8mj7j", "5Ra5rRI6aZXsGikM", "FP4BEFNxXwzhaoWw"]}, {"action": 83, "resource": "0jO349S62t8R9HEK", "schedAction": 39, "schedCron": "wqNpZTCDWlP59ByH", "schedRange": ["4VWwsY16G8ZcAfSR", "V5JY61FJP8RzQyT3", "BZ9rgdvTYA6S1avl"]}, {"action": 19, "resource": "jNSt4Bb5zaHqwpsu", "schedAction": 15, "schedCron": "WwwKBrE4iMqRSnYo", "schedRange": ["V0StXeflfOJLnRAv", "DxFBsG4BzT6rV9EA", "Ult9TP1iO7ZZNEDm"]}]}' \
    > test.out 2>&1
eval_tap $? 320 'AdminAddRolePermissionsV4' test.out

#- 321 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'u5aBRt5g1IHdclnt' \
    --body '["mNZGXwVgEZvin7Xu", "9Uaf22qCOIlYH1Jb", "2Tu2zRA9CvEH8ddU"]' \
    > test.out 2>&1
eval_tap $? 321 'AdminDeleteRolePermissionsV4' test.out

#- 322 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'rTFvAO9p9mj6iHSg' \
    --after 'QMq8t43vCyxskT4N' \
    --before '42XeBsko6gwJICnT' \
    --limit '41' \
    > test.out 2>&1
eval_tap $? 322 'AdminListAssignedUsersV4' test.out

#- 323 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'BspPkUDBvoo7KSbl' \
    --body '{"assignedNamespaces": ["shbrvkfq1ElapMWz", "G56vJ2o0jQIg4dr6", "uBzTxUJPRNagWyUa"], "namespace": "aRXdbYBLepNBXAel", "userId": "zgyFaOlBLxvAPnI9"}' \
    > test.out 2>&1
eval_tap $? 323 'AdminAssignUserToRoleV4' test.out

#- 324 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'UK4uWOROM7ZIj8rE' \
    --body '{"namespace": "BhygB34Z4ilZcpYc", "userId": "Hbso0LF8OHFch90M"}' \
    > test.out 2>&1
eval_tap $? 324 'AdminRevokeUserFromRoleV4' test.out

#- 325 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["EgyX0IKor4SZDO3K", "CjbyDXsuXpha5Ddp", "4LTKyQCJWbxfuuVo"], "emailAddresses": ["j5Q2iSQTjcNJSE7L", "zXY3ZHLpM0a7GBlg", "XVz1T0QWXu1ORMsF"], "isAdmin": true, "namespace": "gFanqQFoMOP49wOJ", "roleId": "QnG023FQhf3pzqEh"}' \
    > test.out 2>&1
eval_tap $? 325 'AdminInviteUserNewV4' test.out

#- 326 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "p5TQxoZXVRcmg1ld", "country": "WsOjOYdIDDsY8NVV", "dateOfBirth": "cLJVLl3UWYlOvRAk", "displayName": "bu6Z3rgK3S4BdkDi", "languageTag": "rtWuOtK3fJebKhQu", "userName": "R0O4c4EmYVcrvt60"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminUpdateMyUserV4' test.out

#- 327 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 327 'AdminDisableMyAuthenticatorV4' test.out

#- 328 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'UehLj03yAlG73IxX' \
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
    --code 'mnrTXQBiCsG1Nlma' \
    > test.out 2>&1
eval_tap $? 337 'AdminEnableMyEmailV4' test.out

#- 338 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 338 'AdminGetMyEnabledFactorsV4' test.out

#- 339 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'jY1TebmVeNkUG8q4' \
    > test.out 2>&1
eval_tap $? 339 'AdminMakeFactorMyDefaultV4' test.out

#- 340 AdminInviteUserV4
eval_tap 0 340 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 341 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "3620vMBKr2bR5tuQ", "policyId": "WFEmy3l7mxuvhVwv", "policyVersionId": "MEBiAR6Wml6NaVzR"}, {"isAccepted": true, "localizedPolicyVersionId": "ich6j6CFW8RTEunB", "policyId": "nm7rcsJzcPrevRKX", "policyVersionId": "s4q4d68zqsIYyffn"}, {"isAccepted": true, "localizedPolicyVersionId": "CGOPMRAIo0SWfOOm", "policyId": "5FmHtIqOu9r2OwiE", "policyVersionId": "Gxf3KGPop6ANEplS"}], "authType": "EMAILPASSWD", "country": "ZWWTJ1BMpLv1Za5v", "dateOfBirth": "94Cz3HrfEr7h6J71", "displayName": "D4dczNZlOLrxGZ6e", "emailAddress": "ZE0uxcPhub4gDwsU", "password": "ybHNirk63dLUx3nV", "passwordMD5Sum": "FQ0N3WAoivpHJiS8", "username": "KCTlM9qEBwgXBFdW", "verified": true}' \
    > test.out 2>&1
eval_tap $? 341 'PublicCreateTestUserV4' test.out

#- 342 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "2Qf0yBjxpAn9RajK", "policyId": "Eg4vAxChhu0v4lCj", "policyVersionId": "dbWtb7xoHqVxvZli"}, {"isAccepted": true, "localizedPolicyVersionId": "YsnlZjUa9QTRdmxn", "policyId": "PGBS9Y1oVz6XkxdP", "policyVersionId": "W5v54I41PATc4326"}, {"isAccepted": false, "localizedPolicyVersionId": "pg1SLRQBvlpuLBkp", "policyId": "fSj3eRIqnfnNHK6q", "policyVersionId": "AGVHz0qQx3dLhEhu"}], "authType": "EMAILPASSWD", "code": "7150NnTOow1b6M9S", "country": "NX8pIRTQt7ItuRWe", "dateOfBirth": "xnFnzt5VH6RScAy1", "displayName": "eFjszUYtzynN29MV", "emailAddress": "a8Xv0X1AGqawPWiD", "password": "1MjqFgMiUSyL3iPG", "passwordMD5Sum": "92x80X9ARVwjGAYl", "reachMinimumAge": true, "username": "TECreaqcH8Js6lMe"}' \
    > test.out 2>&1
eval_tap $? 342 'PublicCreateUserV4' test.out

#- 343 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'Kpf3DFiDfXg602Nn' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "iNKV88MCpqP8aBXa", "policyId": "TU3IJnZBbjkyvXsW", "policyVersionId": "2d8k90x2zxvfMVgI"}, {"isAccepted": false, "localizedPolicyVersionId": "V0CrobtU3lFBFNWB", "policyId": "mjjdvKR2xbjZQlWf", "policyVersionId": "TRLjKaF6UA8FMOUK"}, {"isAccepted": false, "localizedPolicyVersionId": "Z6QTA2D6HinYiCox", "policyId": "pJmFVqRHyyaZbtah", "policyVersionId": "XU4pRZHhIn36f2bB"}], "authType": "EMAILPASSWD", "country": "FAe1rg1US4Yy7Wuu", "dateOfBirth": "RLskLMbvZVntWQWX", "displayName": "6t5uGRoXT4z6JyC3", "password": "Tjho8IDtGbwpE6IX", "reachMinimumAge": true, "username": "1dMCPYQvJtKTnL0a"}' \
    > test.out 2>&1
eval_tap $? 343 'CreateUserFromInvitationV4' test.out

#- 344 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "DMwGW3sRrhLTa5N6", "country": "RMzO5mRpIbuQ2aby", "dateOfBirth": "P7jRKeqzo1XrPju0", "displayName": "pJeYdLBwoFtXGQnO", "languageTag": "U6L2n5SagTcUNL1z", "userName": "9PaTLgnPFf9MFPQp"}' \
    > test.out 2>&1
eval_tap $? 344 'PublicUpdateUserV4' test.out

#- 345 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "uVSObN6Tf1P6Wi91", "emailAddress": "D77uuCQf0Lwlnuvn"}' \
    > test.out 2>&1
eval_tap $? 345 'PublicUpdateUserEmailAddressV4' test.out

#- 346 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "BzZTLcXzD5WTEu4D", "country": "7LIQwywiZ5hIeKFX", "dateOfBirth": "P7nO4faqLTaGUtlz", "displayName": "r8tJXErotnXM8Z68", "emailAddress": "T8JqZd8hCsee8slM", "password": "b2YhAxEjCNjyTfQ0", "reachMinimumAge": false, "username": "h72ax3CNPUaqsCsQ", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 346 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 347 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "QKl1MM2fQazo9Zcb", "password": "He2Ah8JWOeOGvHuQ", "username": "BOZGx0oBNDKKwAuh"}' \
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
    --code 'gcg6Pbob7LzMBYH0' \
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
    --code 'YNC11Yd9LD0Dqe9T' \
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
    --factor 'c1kNZyViYxTJ6ndO' \
    > test.out 2>&1
eval_tap $? 361 'PublicMakeFactorMyDefaultV4' test.out

#- 362 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'XF2zdWtkPEZvMJiZ' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 363 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "Z6Q8cW5rrT4JFnyT", "emailAddress": "nNdjNy0DgSMoVoQG", "namespace": "gkTYTUvZqDMeEzQ7", "namespaceDisplayName": "mkOBlclGTlPTYGTL"}' \
    > test.out 2>&1
eval_tap $? 363 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE