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
    --body '[{"field": "BSryucfb7CZVKjM5", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["1VXN8hqDuWoBUsMF", "rxcqBey8PPD2b9T1", "0Ch0o7GoXMg9iZQg"], "preferRegex": true, "regex": "hAL9Mgxw85ORDzcj"}, "blockedWord": ["FOFhiMtnjH8XOprs", "68TTztB7jZAxAtyA", "QKRgM1ryKu9GbInZ"], "description": [{"language": "Q2XPoezOfjKzdzWQ", "message": ["OesD9n4pV0YXa7Gj", "Kh8izZ8wyWv8sQcE", "jjqoN1co45D75nbg"]}, {"language": "X9aNEb9vsCe0tkIw", "message": ["eA0gqJ2bAvdlcFV0", "au6EeFhEjm9XnoyI", "DZK38qXSnAf44qef"]}, {"language": "IJIpiC6BzPWfBvo6", "message": ["xgOxnkH8fm9SfzCc", "31YKMDAwnsd8Ly24", "EZldAnzxeVe3fOtI"]}], "isCustomRegex": true, "letterCase": "fgtFRnxnbFKkcV44", "maxLength": 24, "maxRepeatingAlphaNum": 11, "maxRepeatingSpecialCharacter": 81, "minCharType": 18, "minLength": 53, "regex": "n98CXuOwAYGpfUfg", "specialCharacterLocation": "ekAskQYzEZEY21ET", "specialCharacters": ["fnGB7O5FFT7L4sp1", "FYkOlA323HhpbxkF", "56dZQ5m3ohIM2iQU"]}}, {"field": "DD3TUVRwXYBwLMOT", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["fDPYsAUr7V5UBsb0", "rKVEuVMAoAxigq0V", "ADdhaUklrdqMjMQP"], "preferRegex": false, "regex": "16BpHclcli5EF076"}, "blockedWord": ["xwG53QsrHIlAhc0m", "denru79kAyMXdZbV", "eqQtreHlZ6q5uVmA"], "description": [{"language": "s1G5lNw4Fyx4DUbT", "message": ["0XbeeSGqXIr0mRPd", "Gm1o5hYiK7VhmUaS", "nesaCFJKVBi7bhdd"]}, {"language": "qK9r0Rv8AB7OfmgH", "message": ["C1Jnvof9xYe5Xagm", "ZzEQWnc8D2cnBXJQ", "t4RwOTbdi0LYwtOM"]}, {"language": "ZMP4ewpHyoFof1fB", "message": ["dH1LkUlRDJIFZQBa", "5X6Oj73cXtFqDW2Q", "MVcq8csIoBY6Rb74"]}], "isCustomRegex": true, "letterCase": "eOQMsRxR67xbLdbs", "maxLength": 44, "maxRepeatingAlphaNum": 35, "maxRepeatingSpecialCharacter": 47, "minCharType": 12, "minLength": 92, "regex": "Sa1uizCUijYV1Lag", "specialCharacterLocation": "hpKx4GxXfHvXKezN", "specialCharacters": ["VQcd5HBC4nG755VZ", "ygejrvYhM07d3AyT", "dIgoAMYqWo5yjMzV"]}}, {"field": "bYVkjSfn3VlJPXWh", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["4m7UnUi7BQOnl04A", "51oHEXgXqLK9RBJE", "73oY9LcpTkk4GhIl"], "preferRegex": false, "regex": "OuNT6upoq7fdfO5i"}, "blockedWord": ["MDrL9288LvjQgqV2", "RxIcKIF0cdenswKy", "inp5X1HDP3ICNu6a"], "description": [{"language": "9OoIKBDRLfgdRLqY", "message": ["wtt9oNQncIEh1ujv", "Zlz5QtEBKSsTkONR", "6aGml6QMBXc6Lfpr"]}, {"language": "EPBRgpaKFu8TVftf", "message": ["T018PvF4pHGvoIVt", "pvT3YEsM7I6ykztY", "FiAkrPMMszi9wHEB"]}, {"language": "x7yBXgFyTcSfTD60", "message": ["JhVbI7mov29FGQMk", "Yt2FQRzLDb9S7vjN", "AsX2TOAqwf4QVVrU"]}], "isCustomRegex": false, "letterCase": "AO6Yv6FUzkoPbAdu", "maxLength": 58, "maxRepeatingAlphaNum": 24, "maxRepeatingSpecialCharacter": 61, "minCharType": 44, "minLength": 98, "regex": "UpcSUCpEYFwrD6fL", "specialCharacterLocation": "OL6Rgh26EeIk1d8X", "specialCharacters": ["xFMXtz0oVbWDOQOD", "3V8OhhUKHDibXsIt", "rBdt7hgFxCmNMJJm"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'v306VCGJa6cCBc7S' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'P9vWFRg2iI0swIHe' \
    --before '2S2u0cNo73NLiuAh' \
    --limit '67' \
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
    --body '{"ageRestriction": 47, "enable": true}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'XNVDdQ1d6ELAUIfo' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 56}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType '3hfMZbghf3uanaN1' \
    --limit '69' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "TdXTc6z2WmlxehOw", "comment": "OZhATq54COgL367F", "endDate": "jg8qYzBPF4clPTO8", "reason": "pPr6zBpvM8c9r0sv", "skipNotif": false, "userIds": ["59FVFIOZtz7ajApX", "6Pihm66OR1xmcjIV", "bj3XABMwZ61yAfao"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "L7QWefkDpFbWp3Ql", "userId": "mU4javrpbTlyQjcu"}, {"banId": "H4nfOJ2ewM0T18Zj", "userId": "YBLWId2qi2foHYjB"}, {"banId": "OWIeOvrylVjDcOib", "userId": "Vk4yMs5e3ZMrQJVS"}]}' \
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
    --clientId '3AHfKUlbxq2QhPvW' \
    --clientName 'OjUiBPJyoSOWChvC' \
    --clientType 'b284qJzoLS4qvxxk' \
    --limit '47' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["t3dnRgQW2rjdVfQs", "Y4Wj2ym7Vn4Ki3IY", "QEhw2ZQcDej8553O"], "baseUri": "2YXaWsAB0XHRWlZd", "clientId": "BS5cLMKBB3sLbiwa", "clientName": "aa9fFUvQZqlZpYwc", "clientPermissions": [{"action": 50, "resource": "nXN7qi38NpH9b9vU", "schedAction": 7, "schedCron": "Cs7gtWgIDT96yYuW", "schedRange": ["oFKRJJ5RYR6dGpxT", "LKn5T65MaZyQgVoY", "wsbyKFeeycz7ghRx"]}, {"action": 93, "resource": "QO9wh608BMTnFBvR", "schedAction": 16, "schedCron": "osUP6h2k3VSozX7L", "schedRange": ["n5gjB5tthM1sfdxe", "ncC2WITt4CFS8ImB", "OifHLgLCjr35RmZl"]}, {"action": 14, "resource": "YoUI7ynNWJfKINE0", "schedAction": 69, "schedCron": "IIPAyizoxUz8ixxa", "schedRange": ["Cer6CPnOhJgRR8cb", "wRB8g4iPCTtctd3N", "lxNWbDn0k7PROV48"]}], "clientPlatform": "T0BrR9jALvT5GlXL", "deletable": false, "description": "V5OzrZXc4hco8FLm", "namespace": "5SG4UDuBwFzryFYl", "oauthAccessTokenExpiration": 14, "oauthAccessTokenExpirationTimeUnit": "VRgNJmmyUUoSVxal", "oauthClientType": "8uNjJ74qsR8H1WCy", "oauthRefreshTokenExpiration": 23, "oauthRefreshTokenExpirationTimeUnit": "hjdn2VQLSDumZkXT", "parentNamespace": "0FPyvqKhIReamdvE", "redirectUri": "Dl04UiqtOIfCMnAe", "scopes": ["OmmUedqtaxj3jNWy", "vfoKtyibUzIWX4MW", "1GEH1HCDMTO3on66"], "secret": "2z89fzAcLlKwg1gT", "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'WikYm7wjoU3BpwEL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId '5MEoFvL4WI0xO86q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'q95birEKsclPkFZC' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["wKEQyM3YKqIQ5jxW", "vtozVUIILvXauuXz", "gpIGk3kNbdEVUQpz"], "baseUri": "xGKOszatHRpseA36", "clientName": "LyHblrdqbypSXIMX", "clientPermissions": [{"action": 30, "resource": "2gidl7PqFosXdTEl", "schedAction": 38, "schedCron": "fNo9OoogApllPRoO", "schedRange": ["Q6HiFHmNDxPoTTu8", "xUkFHxNuxeqNjAXS", "aZlSBhf0hcjHsVG4"]}, {"action": 70, "resource": "QdOIUgA2ZLuI1OJU", "schedAction": 56, "schedCron": "54Xt9oHCPi7J4uax", "schedRange": ["OixdTSWojkb3CLje", "Yw49aO4UJMNtzPX6", "oKTQcYBzZmVCS54K"]}, {"action": 53, "resource": "dcECQP7ELfpQQW9Q", "schedAction": 31, "schedCron": "oQga2BVsRYs094Jl", "schedRange": ["JmC1vjUaSo2OsGgE", "zBUzaXKECtjHquhH", "QBbX6fOwCsutt6KC"]}], "clientPlatform": "sM4ZCZSxRl3jl1e1", "deletable": false, "description": "853lj7AjxBWc1D96", "namespace": "DryKTguEN2m7J2pk", "oauthAccessTokenExpiration": 51, "oauthAccessTokenExpirationTimeUnit": "N8mi6HTrDFPmErjY", "oauthRefreshTokenExpiration": 11, "oauthRefreshTokenExpirationTimeUnit": "3jL6WtiTYMpNM6F3", "redirectUri": "pFpLkSqWvYwOPWsu", "scopes": ["o3HLyTJ2bvm8p3YV", "zuLpU7rX6JDdH729", "YHRLpfmDhrcinIg4"], "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'gp6qKqCTRLj1dpgN' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 36, "resource": "iiOlGTeCQ8fuKQSw"}, {"action": 64, "resource": "zxT4C9UI5gedxdKH"}, {"action": 8, "resource": "QAA13nw4Emf8hlVe"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'ivfAnaP7QXoUm9F0' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 49, "resource": "ZR19LXICRbe79Lgv"}, {"action": 96, "resource": "Q4R30xcPc2hnMzva"}, {"action": 79, "resource": "wSZmxOxEY4ssRugK"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '39' \
    --clientId 'jwhyDkmMn6PK7GUH' \
    --namespace $AB_NAMESPACE \
    --resource 'SIX2455J2cIJBniH' \
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
    --body '{"blacklist": ["VuRCYMdeHGVfSjrc", "1ZIE4tIKhFnWh7j6", "P52IyW1nUwUSTU4t"]}' \
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
    --limit '33' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 133 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 134 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'DK425UgK7hJpmK00' \
    > test.out 2>&1
eval_tap $? 134 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 135 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'kzL8rIXtrQZqX34Z' \
    --body '{"ACSURL": "45a8x3sMqAtTZoA7", "AWSCognitoRegion": "4DcqFs32fx4JBq6w", "AWSCognitoUserPool": "yhm4iWaKnS2QUgvc", "AllowedClients": ["IYFzFS0WZhZUrCem", "KtXmXShZfnuSR2Io", "zNSaWN3CyMR92rZA"], "AppId": "wB2Yjv8Q0GMkOrwt", "AuthorizationEndpoint": "YyC74h51pngHhkFv", "ClientId": "JG91lu6HVcC3Pg18", "Environment": "0wYqjM4Q6ntatc6w", "FederationMetadataURL": "4Npt04BVzybKoOFg", "GenericOauthFlow": true, "IsActive": true, "Issuer": "yCdt7mHso7l8EHMq", "JWKSEndpoint": "D20rikzMQVavpVv6", "KeyID": "FJY8qgxKzg0m5CVU", "NetflixCertificates": {"encryptedPrivateKey": "sw4cvEHO3uGK1oEd", "encryptedPrivateKeyName": "f0j9ezDxMNO6XHVM", "publicCertificate": "gfOzmeyDdO8GprCH", "publicCertificateName": "ZSyEI8qL7uAKCOVK", "rootCertificate": "HvyTaUAFb7D7fYPX", "rootCertificateName": "Nr9MB1sccStnRbpe"}, "OrganizationId": "eOVvFA7AgcniSKxZ", "PlatformName": "lRKt2PC0zJFHrS2Z", "RedirectUri": "UqeFaP8tKIi3qgvz", "RegisteredDomains": [{"affectedClientIDs": ["MSSinNazySbh5j8I", "cvjN1jOiNP1fn7O0", "XmnQxTycFTpAcyRg"], "domain": "UwXn1qxG9hvr0r0p", "namespaces": ["i31CsNaQH6YoqscM", "TImemYQzvMUYRpzD", "1WmxHINm6A9veNKO"], "roleId": "4w2isvdFvdOfElKI"}, {"affectedClientIDs": ["HJwMSf5AWe1gGXKW", "W2qlU1ItHqW8s3Zj", "GVt4j57bCKM51U9f"], "domain": "C5y1T6ikAup9beiW", "namespaces": ["wYsDw7R7cpfgSWlv", "H8ihY9MtaSAp5WRc", "c8g0qZNALjjgmp7j"], "roleId": "2tF0bIJg3tvgBpVy"}, {"affectedClientIDs": ["OUP2oMd3YIn95OJq", "Vos79qplkwisLfk0", "QuESpLem3JeYMEHV"], "domain": "89UYog8PVTd1fNaj", "namespaces": ["Gi8JWanBYUkMZdKx", "QqYkQrkE89pv0oLW", "4lRw17ut0fUGZoY2"], "roleId": "FDcRbFbyQZftvTUw"}], "Secret": "qtdkMZTX3IkfSpBj", "TeamID": "83YC4rJ1KqSnjYyM", "TokenAuthenticationType": "88FCbcwNSimPdX7R", "TokenClaimsMapping": {"k0U2AjTJop0nHCh7": "b8sfAXZ2B55OJZq4", "1qu6ZBVMhJSEirkv": "js710neCJl5nyuH1", "zX51UrPYfav7m9OB": "m1bW0rv1ly30UI6C"}, "TokenEndpoint": "bYpZzVqqJvll8vh5", "UserInfoEndpoint": "VT3L3E2yyfiojCUR", "UserInfoHTTPMethod": "kFfmBdfAfRTY7dS3", "scopes": ["HulSK8JZSq0NkRFI", "I6YEHbcjd9gF37un", "Fq0IKDTWUz0EEKy2"]}' \
    > test.out 2>&1
eval_tap $? 135 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 136 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'tmzOzY0IPjHu2H1K' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 137 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Wxd2Bj4W5tlgWRHk' \
    --body '{"ACSURL": "XTk72HEq26tursYe", "AWSCognitoRegion": "fB8I0PZVDTP8P9TH", "AWSCognitoUserPool": "KbXXrLDiSZf59vAC", "AllowedClients": ["B1pt6BJxTq7LUxed", "KY0RZTlJCW6B3LAL", "uitRxVJnuUEW4dD3"], "AppId": "3yLsqXzGeEbdBMON", "AuthorizationEndpoint": "oRZukFIbPN76wHQk", "ClientId": "P48SKKOzLU5b2hMY", "Environment": "c8wbQtw9VuyP6ZdL", "FederationMetadataURL": "jYa5akt0nFQdr7Xk", "GenericOauthFlow": false, "IsActive": false, "Issuer": "4POFfqLwvwJThtxr", "JWKSEndpoint": "AsmGJdeIExmBgc3r", "KeyID": "ZtNfhLy8JdEpEsTJ", "NetflixCertificates": {"encryptedPrivateKey": "3VNRVQPV2goCKjG0", "encryptedPrivateKeyName": "sCTaEimuQ6EzTuql", "publicCertificate": "4DfBxEaDpXWT2suM", "publicCertificateName": "gtLXQSexL1heiUsm", "rootCertificate": "aM8eYPKosibOAzZE", "rootCertificateName": "8QYIcdTNiOak61N7"}, "OrganizationId": "ZNSMe9MQ0do3cwSg", "PlatformName": "L4dD9vTZWOou3Whg", "RedirectUri": "UHUio85vWTb0pye3", "RegisteredDomains": [{"affectedClientIDs": ["X0xvjPuTBTUy5GDQ", "cRCDnNSm2ZSWuKdk", "xmfVlJ7DdUngtunS"], "domain": "Wf0naywJNDgIsDZV", "namespaces": ["QMnKxqI6Jkn7eee8", "zSALBqfS6gCOT9yj", "IU94W66VvnXQwA5I"], "roleId": "FVikc5Uvon8RWc3G"}, {"affectedClientIDs": ["oIHfeshJM9VR8zzh", "xjqCIzvSacuSSKSn", "87NQo2KslgwxpwUq"], "domain": "LjO0iRxIoi7nkuut", "namespaces": ["odGypAUIPqmdvMyO", "e9wcnhKqBLN815U1", "ICVP5uaC34BEUxrb"], "roleId": "ojuBoii0Rp8uLjZZ"}, {"affectedClientIDs": ["XR4WCJLa4ZOLeuVG", "OuNukmtj15fKe1Wv", "CfaAnUp7Fp4YJIQd"], "domain": "h8HyvwKCE9QidYr7", "namespaces": ["1j9eR8XUWvF72JCe", "aRXkfcOWFTakpgPg", "CNZ5fTcoK1eMC7Bl"], "roleId": "q4joNRpfMSgdypB9"}], "Secret": "d10ZEH0H19inALXD", "TeamID": "XyqjTlBdOSqCZKRB", "TokenAuthenticationType": "HMCXpG1awYLyT7SA", "TokenClaimsMapping": {"6ewbTWR0xkFdkKuQ": "9cLHv7CWQtz7lhuW", "HziwQ4ePr7vX1fJk": "eKS9LMt58TYqTwcF", "nZscvx5ueFqdBEno": "1urQKsuOFvSO7tn4"}, "TokenEndpoint": "gDyG7zeDkWjOqx5h", "UserInfoEndpoint": "W6Sl3JGzPy20JOko", "UserInfoHTTPMethod": "u84zVAJG5c47akcf", "scopes": ["t2fyWe0AlSpTnuJq", "p7xp1DEurTBqV2Gc", "YwuCosADoOhVRv0E"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 138 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'uFByLcxsO3uccjTS' \
    --body '{"affectedClientIDs": ["ZTnzkVpHMd0OniTI", "sYiz31Rxx0rz1UY9", "5Vf6YeXB2aMuXvBv"], "assignedNamespaces": ["fozt9paHQt096bQi", "zApCWnMCOWto15KV", "Exi4HxUHCsOep2Cn"], "domain": "7dtEaRGDzzwheOdz", "roleId": "IeXwjMsmq0hr66nJ"}' \
    > test.out 2>&1
eval_tap $? 138 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 139 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId '2lvdR63VQK5UO04H' \
    --body '{"domain": "hTr5nmG8GNQXggQC"}' \
    > test.out 2>&1
eval_tap $? 139 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 140 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'Dl1jbgv3uowMqEC6' \
    > test.out 2>&1
eval_tap $? 140 'RetrieveSSOLoginPlatformCredential' test.out

#- 141 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'ro0XCEYihLE3LxUm' \
    --body '{"acsUrl": "l23Rq7be5Np6lZSu", "apiKey": "CD2EtBbHvbD2b3Vx", "appId": "0KdCcKMUnEQxUaud", "federationMetadataUrl": "fAFJDXkaHThfgD9t", "isActive": false, "redirectUri": "N6DaOENhF0xDMa5c", "secret": "PHUwXRoas9tzEHpt", "ssoUrl": "KwBwBtRadny0qCPD"}' \
    > test.out 2>&1
eval_tap $? 141 'AddSSOLoginPlatformCredential' test.out

#- 142 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'VhWlxEIYNPYCapI4' \
    > test.out 2>&1
eval_tap $? 142 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 143 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'oEaUzDTEaWfln9Vj' \
    --body '{"acsUrl": "nTSsTHDubGb69In0", "apiKey": "6ym8xEXBRd7RJ6CK", "appId": "sLGOV5q8sKkarpiJ", "federationMetadataUrl": "N81evFmjgVceCA1u", "isActive": false, "redirectUri": "TjHKRb5auJA4SXdt", "secret": "w8xRK4BnQLyrIs2I", "ssoUrl": "ztlB8eSPBkfEormV"}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateSSOPlatformCredential' test.out

#- 144 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'xCkQBEGRyttx49H1' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["YY4pxcrnZcAgfHu1", "JrB0N60cur0XvOv6", "KqlzDQIsyAbc5DEA"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 145 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Rgt7z4QHIyEUKZSI' \
    --platformUserId 'rcAqWtsGhzc4atDD' \
    > test.out 2>&1
eval_tap $? 145 'AdminGetUserByPlatformUserIDV3' test.out

#- 146 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId '06KAPjKOb0lWKoRe' \
    --after '6' \
    --before '4' \
    --limit '95' \
    > test.out 2>&1
eval_tap $? 146 'GetAdminUsersByRoleIdV3' test.out

#- 147 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress '5Ua1UDZnScXYzU8X' \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByEmailAddressV3' test.out

#- 148 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'VexU0HlNYmzviiRT' \
    --body '{"bulkUserId": ["Jf0fH2E0pkGP5BCj", "o5KFQpOUX9mUgs43", "hmgGIoyE39vLT2ko"]}' \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserBanV3' test.out

#- 149 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["oEV486G5xVVVOlkY", "LI1zNVME9tZUl79n", "hJYL8AOHgmRaRYGT"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminListUserIDByUserIDsV3' test.out

#- 150 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["814yc7o7Ee18pu4u", "sTvaGtK3LLPlv4Bn", "xrMtCsyKEan9GVlD"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminBulkGetUsersPlatform' test.out

#- 151 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["92FEhPy4vsQCzGWS", "aqh7u6HsdtJHtghk", "219ZcjDNIbE0A2Gy"], "isAdmin": true, "namespace": "2ndCLlWz2YDaHauX", "roles": ["Q5GUE3SsjX6OU0HK", "1yhWEQZIDFUXt3Pj", "oR1655G7CCC4RZw3"]}' \
    > test.out 2>&1
eval_tap $? 151 'AdminInviteUserV3' test.out

#- 152 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '81' \
    --platformUserId '5VzzyMSilUiVGMf4' \
    --platformId 'nRmwgbg4ZoZHL2Xe' \
    > test.out 2>&1
eval_tap $? 152 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 153 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUsersV3' test.out

#- 154 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '2ZXOCGjxXjplOQCE' \
    --endDate 'Kcy3QchkrRhf7o1m' \
    --limit '60' \
    --offset '57' \
    --platformBy 'vwOczVwrdIN0mDYb' \
    --platformId 'QWQkyC0z4EaWkrqZ' \
    --query '8HXixwnpicmmBhQh' \
    --startDate 'P9lraA77Ja7uNSWx' \
    > test.out 2>&1
eval_tap $? 154 'AdminSearchUserV3' test.out

#- 155 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["1FFQk2u6ar7vGpyH", "iJvg2mYL0nBVTsOo", "18zmRhZ5ASHhdb6M"]}' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserByEmailAddressV3' test.out

#- 156 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId '4HOluyn669iHZoxO' \
    > test.out 2>&1
eval_tap $? 156 'AdminGetUserByUserIdV3' test.out

#- 157 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eGTBezywnOTcEqFB' \
    --body '{"avatarUrl": "SGUfRhmCQbaUftUt", "country": "HCCHe6vVbaZE9G35", "dateOfBirth": "7mlwGRRd6fmUu2d0", "displayName": "S4J7JFdwjwE3bKn9", "languageTag": "rHNUCIHKzPCjR54z", "userName": "ttSx6pmDQDPPpmWs"}' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpdateUserV3' test.out

#- 158 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pVGRWLxvia5uzNL4' \
    --activeOnly 'true' \
    --after 'i5vouj6xGuuW1NEf' \
    --before '16vb6tX6kK7RLeO8' \
    --limit '26' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserBanV3' test.out

#- 159 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TSbjIZz3M4Pw0DTM' \
    --body '{"ban": "5852XQOBju2dLY5w", "comment": "Scvv6gstgBAAf6Qy", "endDate": "ZrlisAP7o126V2tm", "reason": "NdzDx7DqIW62OPW5", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 159 'AdminBanUserV3' test.out

#- 160 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'lj2pib0E1XSqsgWY' \
    --namespace $AB_NAMESPACE \
    --userId 'xNu8RNFF11N0PQJa' \
    --body '{"enabled": true, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserBanV3' test.out

#- 161 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId '8n3dmiR7dHndsMRW' \
    --body '{"context": "C0xq9zy0Mo5UTpn6", "emailAddress": "XkR3cmyIBNIXIhHM", "languageTag": "6byNmJYzTpskf9EA"}' \
    > test.out 2>&1
eval_tap $? 161 'AdminSendVerificationCodeV3' test.out

#- 162 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'JuXr44JJMCvHttDI' \
    --body '{"Code": "4Vn7mYzuLKai7Hbb", "ContactType": "dWqTuH6dVN7JxHWJ", "LanguageTag": "LkVKeAcP5nw2bp3Z", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 162 'AdminVerifyAccountV3' test.out

#- 163 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId '1q2NKzhCLvFUvEBB' \
    > test.out 2>&1
eval_tap $? 163 'GetUserVerificationCode' test.out

#- 164 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kVPI4oiEH4mDR5kX' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserDeletionStatusV3' test.out

#- 165 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zt9F6wlSsNFIB18e' \
    --body '{"deletionDate": 61, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserDeletionStatusV3' test.out

#- 166 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId '2khWE1kbr2nD8SrF' \
    --body '{"code": "Kl4tJ8QMoCXljmGd", "country": "b3ZGeNE1bi3lZfg5", "dateOfBirth": "xevUl07kLyEvw89s", "displayName": "jOIm7rYLY1nQnm7X", "emailAddress": "XOuWwmdbXIrEs2qo", "password": "XrfqoWJfJ45TrKXR", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 166 'AdminUpgradeHeadlessAccountV3' test.out

#- 167 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Nnpsg7Km1qio2nmk' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserInformationV3' test.out

#- 168 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'XjVda8ErR5aUlVjS' \
    --after '0.35624632224157515' \
    --before '0.7610927693100675' \
    --limit '47' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserLoginHistoriesV3' test.out

#- 169 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fcLtImBUs03qzTSs' \
    --body '{"languageTag": "2pVGC6vYmbRJKv5C", "newPassword": "pmzI7zlKl1lEq3W4", "oldPassword": "9yOUXzuvh4CI4ZqU"}' \
    > test.out 2>&1
eval_tap $? 169 'AdminResetPasswordV3' test.out

#- 170 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tdoRvUVV35OtPC8G' \
    --body '{"Permissions": [{"Action": 99, "Resource": "SSgRgEiSGZ1F3XT4", "SchedAction": 62, "SchedCron": "DQiI0tv0yX2WaDx6", "SchedRange": ["vezvrYfY7U1oL63D", "mGd5K7MPYXBzwAhw", "GJ8GA48mMAOG8qWy"]}, {"Action": 95, "Resource": "L9xPm3ThYi1vvga3", "SchedAction": 9, "SchedCron": "nMYEHnIiJah0PgmO", "SchedRange": ["B5MCZaxislVLALfc", "T9V2nQNhY2emiRB8", "oaQKNDKrkXaHQEEe"]}, {"Action": 36, "Resource": "gRjqd6Dv3kKaT42Z", "SchedAction": 69, "SchedCron": "BJGJQjHswQpu3knC", "SchedRange": ["MmEhUVBTfs6bXUCa", "v38xUuU0Ce6PAyXb", "zTzXKiClcmaoVTYV"]}]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminUpdateUserPermissionV3' test.out

#- 171 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'GQf5RSwwWl7c52rx' \
    --body '{"Permissions": [{"Action": 3, "Resource": "iBLuQUtDP7Dxkuew", "SchedAction": 8, "SchedCron": "Y9WgmwCkOVlLMtAO", "SchedRange": ["vXMt6HVe1YtfLcxv", "s2NLPZCiEWy9gA0d", "bxP7KVDuHwHHGl3M"]}, {"Action": 7, "Resource": "ahMh83RRoWfeFL5h", "SchedAction": 90, "SchedCron": "TJqHb2fFWYpinSSU", "SchedRange": ["zq3SlQPkEvukgNSF", "kDzwLrfzVZ3aDDA0", "7CyPJCKbC3Nm6Jn2"]}, {"Action": 65, "Resource": "9bdMdlll4lnY3sDE", "SchedAction": 48, "SchedCron": "oCvNnpMOApl5sEOJ", "SchedRange": ["7g8SE6OTkHfegrsk", "q3e2AiYCSHSq906i", "AnAPh9Bkw1rWM5O4"]}]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminAddUserPermissionsV3' test.out

#- 172 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'guFWpJFYZmbCFdHJ' \
    --body '[{"Action": 72, "Resource": "BgR1B6VxUQAosi2l"}, {"Action": 44, "Resource": "udqRIXowojxgLIyC"}, {"Action": 6, "Resource": "DDn4fC0NYzBSMPzL"}]' \
    > test.out 2>&1
eval_tap $? 172 'AdminDeleteUserPermissionBulkV3' test.out

#- 173 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '83' \
    --namespace $AB_NAMESPACE \
    --resource 'KJW1fdTOFvmuhCVp' \
    --userId '8aBJa7vZQLLWVJSA' \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserPermissionV3' test.out

#- 174 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Jnh3gMC9ISSpFLOP' \
    --after '1pW1T43QGmDerkjg' \
    --before 'ZjNAdRkeNkVtxAeR' \
    --limit '31' \
    --platformId '9A2H4CQcQGpGVob8' \
    > test.out 2>&1
eval_tap $? 174 'AdminGetUserPlatformAccountsV3' test.out

#- 175 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'gVJChnBDMu4QTwqs' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetListJusticePlatformAccounts' test.out

#- 176 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'mPx9j8X60ykN2dDq' \
    --userId '465NKTsWGKe4mPdR' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserMapping' test.out

#- 177 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'IxzpTtaJfxcgQ7k0' \
    --userId 'Q1W5ok5R080Etm6s' \
    > test.out 2>&1
eval_tap $? 177 'AdminCreateJusticeUser' test.out

#- 178 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'a3YPpvty70DBIdp3' \
    --skipConflict 'false' \
    --body '{"platformId": "WeILhopamxMlnThA", "platformUserId": "iAL7yCdVTqfRCjG6"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminLinkPlatformAccount' test.out

#- 179 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'F4rnI6oiqGwX65wi' \
    --userId 'nf0u6EVbVQN5EYrH' \
    --body '{"platformNamespace": "lR2qYpOFhpUlDkIw"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminPlatformUnlinkV3' test.out

#- 180 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'kgc5kx3T5RTYD8Tl' \
    --userId 'eaKvpLoOWQoyCmPo' \
    --ticket 'PDTIgnWadeIzccvd' \
    > test.out 2>&1
eval_tap $? 180 'AdminPlatformLinkV3' test.out

#- 181 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'TGGAMqmLlcz71D3Y' \
    --userId '2yEniq1RViPWDqF0' \
    --platformToken 'hmIKJLHwEUcmGtFn' \
    > test.out 2>&1
eval_tap $? 181 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 182 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'TwBfoYUD9RmPpSwK' \
    --userId 'XMuWQ2YFzLbAhjgK' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserSinglePlatformAccount' test.out

#- 183 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId '0IDI36nXPOhvJjFx' \
    --body '["FOp1RWngneZ4yrMb", "6hi7iuW7mrvITVTe", "pz6oMEAM9bj99Mw1"]' \
    > test.out 2>&1
eval_tap $? 183 'AdminDeleteUserRolesV3' test.out

#- 184 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId '2bmEUg2BM8ELFK7d' \
    --body '[{"namespace": "qhcW5Yx96AXIAR2L", "roleId": "RvhdUssX5c2m3C2O"}, {"namespace": "tcvwq96kI0pmUpeu", "roleId": "VHfjccL9BmgQ3elb"}, {"namespace": "JyCEJAechLGmSWLi", "roleId": "vrvqs6pvYOZ3dxm6"}]' \
    > test.out 2>&1
eval_tap $? 184 'AdminSaveUserRoleV3' test.out

#- 185 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'HGNYjIxlbORhnWYT' \
    --userId 'fTgyQkdwypRkKovf' \
    > test.out 2>&1
eval_tap $? 185 'AdminAddUserRoleV3' test.out

#- 186 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'wgbc5IIFMK7inFSh' \
    --userId '7ytOMbdsdeqTTiuG' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteUserRoleV3' test.out

#- 187 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ED5Kh5YAuOJsXrYA' \
    --body '{"enabled": true, "reason": "4uOePHeLBFiCumOn"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateUserStatusV3' test.out

#- 188 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'XCSfVDAoryV7VHw4' \
    --body '{"emailAddress": "uPZSdzifDr3Hb0Lr", "password": "pYrMWeoDBJbYzWbs"}' \
    > test.out 2>&1
eval_tap $? 188 'AdminTrustlyUpdateUserIdentity' test.out

#- 189 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dHyiOJZDecMtWZqa' \
    > test.out 2>&1
eval_tap $? 189 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 190 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'UIewkbLk9IHPyhYa' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "zAGxvK2MsTP6i2iA"}' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpdateClientSecretV3' test.out

#- 191 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'lbMCMbI5Aikw8PW0' \
    --before 'YF0lz1CJfTb7SZm9' \
    --isWildcard 'true' \
    --limit '15' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRolesV3' test.out

#- 192 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "managers": [{"displayName": "c6DFJWocu0SGtCYj", "namespace": "h4ZiVmRivG7L2Jhd", "userId": "3TlLQqps4zbxewrd"}, {"displayName": "aEiHpt4OIUbb2Yko", "namespace": "4CfZlPZFVaNdCbl6", "userId": "r0a05Rl1J9F1yMHH"}, {"displayName": "NlCByP0jxzSG1wMK", "namespace": "6VWjLmgMsNg3jIlK", "userId": "BiVOnnmwsaVjjkN2"}], "members": [{"displayName": "CgLIftQsPZUob9F2", "namespace": "fUryLODFGJKRGWtt", "userId": "TzJSQv3Ts0EfwtmX"}, {"displayName": "R9l6hlfGEQ7Pwp9z", "namespace": "WKcNcvhVKdVcayJc", "userId": "ZQsuqB0tkzPyZ3f9"}, {"displayName": "WiejIYc0xwLa6NBd", "namespace": "qvdKUA0lozbwTb7k", "userId": "lwJAU3c2oAPzvNLR"}], "permissions": [{"action": 17, "resource": "pjmTeh3YfhzSX9Ux", "schedAction": 49, "schedCron": "S2UL5VOnETSVfSrK", "schedRange": ["HrJZcDwtKPCvILhs", "3lIypWBTKVFToAlF", "mVRI0INnOMPN2z93"]}, {"action": 46, "resource": "wivYKey79i4i2Qoc", "schedAction": 40, "schedCron": "PRupKk4ufrLXrUrR", "schedRange": ["ZigscKiAeK5D9Ek6", "J9OhX2NmyvB3NDR4", "nVCcmMYVZU4peo5N"]}, {"action": 36, "resource": "oQKGnf8eauM11l86", "schedAction": 44, "schedCron": "7mT4EirKfwOEdePs", "schedRange": ["ClysgYpWWFYac4tE", "RwLOkVoTGWnpnjbB", "vAlVyx7sZ8leoqnm"]}], "roleName": "7qmcpZHKGazmKQqN"}' \
    > test.out 2>&1
eval_tap $? 192 'AdminCreateRoleV3' test.out

#- 193 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'kKduQJQ5zGdLd9oZ' \
    > test.out 2>&1
eval_tap $? 193 'AdminGetRoleV3' test.out

#- 194 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'PefcWzfrRdIpos31' \
    > test.out 2>&1
eval_tap $? 194 'AdminDeleteRoleV3' test.out

#- 195 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'yHPyGalYovESIJFo' \
    --body '{"deletable": true, "isWildcard": false, "roleName": "7p6idDA05YFz4w33"}' \
    > test.out 2>&1
eval_tap $? 195 'AdminUpdateRoleV3' test.out

#- 196 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId '1i9VWzWv0xLyGSy8' \
    > test.out 2>&1
eval_tap $? 196 'AdminGetRoleAdminStatusV3' test.out

#- 197 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'odC2ODv4dxjW8hd0' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateAdminRoleStatusV3' test.out

#- 198 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'PWwE567ASaI3Gdpo' \
    > test.out 2>&1
eval_tap $? 198 'AdminRemoveRoleAdminV3' test.out

#- 199 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'pSLpC9ZK77G2Q7iW' \
    --after '0scNQ4GPWi1QYAgw' \
    --before 'JL5ajqyNnzEPQERE' \
    --limit '58' \
    > test.out 2>&1
eval_tap $? 199 'AdminGetRoleManagersV3' test.out

#- 200 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'VkK34JWFHLkmA7tn' \
    --body '{"managers": [{"displayName": "38fAjhJF0Sh0WcDJ", "namespace": "D7IXN8PxZ58QqTYC", "userId": "LbDerw6hmBjKZjTk"}, {"displayName": "JgfEV9HyF6M7JLDu", "namespace": "FXtQfm1voeUsaFzI", "userId": "d8P48Dgu2XSc3u4C"}, {"displayName": "4rwylcKOIjlSXqFT", "namespace": "oQjssGsmrpzm7DUt", "userId": "tRnIIoDhN3sfujqK"}]}' \
    > test.out 2>&1
eval_tap $? 200 'AdminAddRoleManagersV3' test.out

#- 201 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'EievaOrAGOcLucYQ' \
    --body '{"managers": [{"displayName": "VUC6flHAIWzL7xca", "namespace": "4FrEFx2RkowrGI5s", "userId": "toqfn05eJNZHCqfx"}, {"displayName": "eb2debSHkqlJHgBg", "namespace": "etzlVuE1yAHFSiNb", "userId": "l5q9HTIPxsu5Yvcc"}, {"displayName": "mLEdwZjRKe5S73rf", "namespace": "yoG8zJbbWzdRgpQ7", "userId": "RcuVsZsfSspRJAgO"}]}' \
    > test.out 2>&1
eval_tap $? 201 'AdminRemoveRoleManagersV3' test.out

#- 202 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'QXLHunjTJKoJVcrQ' \
    --after 'BB6FNFAC9c2myyrs' \
    --before 'CB8irikma9tmmokC' \
    --limit '82' \
    > test.out 2>&1
eval_tap $? 202 'AdminGetRoleMembersV3' test.out

#- 203 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'gGOTkqgPTpKJD7uc' \
    --body '{"members": [{"displayName": "B8vxhNVssvk6x9dZ", "namespace": "clCW1xUeSDVnb2fd", "userId": "5DJzt0kDpHJo3BLM"}, {"displayName": "2UnmoubjBMSXnncL", "namespace": "XUY5fCQ4fL0oWD8g", "userId": "XdKavk2r9BQSupDx"}, {"displayName": "5NcLedwDvgIYX5K9", "namespace": "GnAEc2BXfZuWmVtP", "userId": "vUhntbT2kLTjOI36"}]}' \
    > test.out 2>&1
eval_tap $? 203 'AdminAddRoleMembersV3' test.out

#- 204 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'K1A7j88tbUCZ4Ei1' \
    --body '{"members": [{"displayName": "MYIB8IjvZIZUEaKT", "namespace": "Kkk27FHsdaNheVkY", "userId": "O6jvXpmXUXPIF7eD"}, {"displayName": "plbsjbzxqj3xkvhM", "namespace": "p0Hqou0DUb3w1Uiq", "userId": "l1KeRWpr0Oud7VMm"}, {"displayName": "lc7HfKVKUzkSz6Z5", "namespace": "tfpb3FtbbtnVTj8i", "userId": "hCNdxYfCpXM8p0sY"}]}' \
    > test.out 2>&1
eval_tap $? 204 'AdminRemoveRoleMembersV3' test.out

#- 205 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId '7DlaPyWhs3n97e16' \
    --body '{"permissions": [{"action": 95, "resource": "tP7qWpwcPrQoLP8y", "schedAction": 57, "schedCron": "b3ZrEx5nmKKRM2Yd", "schedRange": ["kpykEErhBTKdyC97", "fNJbF9DyTPsyIh2O", "Qc4o2bpGvbgCPFvD"]}, {"action": 24, "resource": "k1TPVyn4GSH4RLWN", "schedAction": 34, "schedCron": "dTUPLm7TBi9c7yVX", "schedRange": ["5GBv5COTTsytxc7g", "pKWDIef6uT6Fuhu8", "6Iinpk73wLqI7zh5"]}, {"action": 15, "resource": "SAaCNZPQm48PYEnm", "schedAction": 66, "schedCron": "oROxZtRWApE1EOb9", "schedRange": ["4VnezExKztu8zEA5", "HrJIfy7sA8XsLdcx", "WsMLMG1c4dxQgPu6"]}]}' \
    > test.out 2>&1
eval_tap $? 205 'AdminUpdateRolePermissionsV3' test.out

#- 206 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'IWeaxVZRkDws9DYV' \
    --body '{"permissions": [{"action": 57, "resource": "GMAJ29pIkjpjs6jM", "schedAction": 46, "schedCron": "0xF58mxjPPWEi0ct", "schedRange": ["vIDB4mVpCvCvuHqz", "AdMo95pXWMONE1hj", "ei3lygLEiQbvVxVf"]}, {"action": 78, "resource": "ReSLEaPqd5kGEOYA", "schedAction": 4, "schedCron": "vBMMgeNP1xonJnuf", "schedRange": ["r82REcSVbVNFXLZj", "2Xn3L5hEdrT1J5fh", "rOQiU6dbH9mYhJ46"]}, {"action": 38, "resource": "lNfmPB4Czbjjjn0k", "schedAction": 94, "schedCron": "UqeAOtGCjklzUgWn", "schedRange": ["MiUVstGij127hkrW", "BDXwiu1sTHxTyJ13", "IreHZ9e1ZTUqaOiy"]}]}' \
    > test.out 2>&1
eval_tap $? 206 'AdminAddRolePermissionsV3' test.out

#- 207 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'QQUWVlJw9Ia3XXHl' \
    --body '["Cy1saBl2MWv9nPo7", "0PKUmrI9gqkIQZHg", "CRvCo7rsDuH2y4iC"]' \
    > test.out 2>&1
eval_tap $? 207 'AdminDeleteRolePermissionsV3' test.out

#- 208 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '56' \
    --resource 'q00lDoPjPPjGn2Bk' \
    --roleId 'LgtEGzAs2YCneb9b' \
    > test.out 2>&1
eval_tap $? 208 'AdminDeleteRolePermissionV3' test.out

#- 209 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 209 'AdminGetMyUserV3' test.out

#- 210 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'apbIw3LfPWk1kTjU' \
    --extendExp 'true' \
    --redirectUri 'knTbOkYpnkjogkTt' \
    --password 'hdNm6ydwDZnDerYK' \
    --requestId '9aSnZFfXM3UC1IoC' \
    --userName 'WfjDHNA9XS5mUIXd' \
    > test.out 2>&1
eval_tap $? 210 'UserAuthenticationV3' test.out

#- 211 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'CpxDdnFVgpPxtZs5' \
    --linkingToken 'HYWyoFNA2W2N7Qbp' \
    --password '1s1QMUpVyQDzT0eI' \
    --username 'OT3oeWp7Ku1Pq1al' \
    > test.out 2>&1
eval_tap $? 211 'AuthenticationWithPlatformLinkV3' test.out

#- 212 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'iFY65g1ueVSBkGQ6' \
    --extendExp 'false' \
    --linkingToken 'C1R1AKQN71Dt1O3Y' \
    > test.out 2>&1
eval_tap $? 212 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 213 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'tOIqcTg3Kf1x4Uqx' \
    > test.out 2>&1
eval_tap $? 213 'RequestOneTimeLinkingCodeV3' test.out

#- 214 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'LBkcJ0ArwODncLrB' \
    > test.out 2>&1
eval_tap $? 214 'ValidateOneTimeLinkingCodeV3' test.out

#- 215 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'HLz98WiGerESFZi6' \
    --isTransient 'false' \
    --clientId 'GJHIpRtZG7qm18PF' \
    --oneTimeLinkCode 'pwtX4Zd4tztNCUEL' \
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

#- 218 RequestGameTokenCodeResponseV3
samples/cli/sample-apps Iam requestGameTokenCodeResponseV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'WMgS28orXdStgFnp' \
    > test.out 2>&1
eval_tap $? 218 'RequestGameTokenCodeResponseV3' test.out

#- 219 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'py5zTes2GDHKiXNd' \
    --userId '5fyTP7L2MLKavERc' \
    > test.out 2>&1
eval_tap $? 219 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VO28GuHZM5oVCosu' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 220 'RevokeUserV3' test.out

#- 221 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'XptRoai9EPLnph8U' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'true' \
    --oneTimeLinkCode '5B1JKT7gHoZJ84JH' \
    --redirectUri 'LdqvOxQwyGu3spYR' \
    --scope 'cOAkLz1Em4AfXHjP' \
    --state 'TfTNAJuMbBbKWfJ1' \
    --targetAuthPage 'ITRHwtBhmRoTQ2QJ' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'pT40DMGk6UmyuUBo' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 221 'AuthorizeV3' test.out

#- 222 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'lUnNSbdjnUtI7e4S' \
    > test.out 2>&1
eval_tap $? 222 'TokenIntrospectionV3' test.out

#- 223 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 223 'GetJWKSV3' test.out

#- 224 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'UHq73bCRky4ZsuwK' \
    --factor 'raxFZ7l7jNv3fz6F' \
    --mfaToken 'wW6ne6zqpb36bseX' \
    > test.out 2>&1
eval_tap $? 224 'SendMFAAuthenticationCode' test.out

#- 225 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'Zkgg8mYd2WxqH1s6' \
    --mfaToken 'OVSwsQY52oRqVxDC' \
    > test.out 2>&1
eval_tap $? 225 'Change2faMethod' test.out

#- 226 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'Qv4te41QHD5NKFbz' \
    --factor 'ew5gwid5R7IWtEJU' \
    --mfaToken 'CQmP08XqAMUoegCg' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 226 'Verify2faCode' test.out

#- 227 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'YZCak58YvK4EIIFu' \
    --userId '0CGh0st35taWKEO2' \
    > test.out 2>&1
eval_tap $? 227 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 228 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'iVxDzzTyenOU9SKy' \
    --clientId 'q2CCvPOvC215cCen' \
    --redirectUri 'y099BbhsnRDjh4Gh' \
    --requestId 'ecJk9LHZApeTPhKU' \
    > test.out 2>&1
eval_tap $? 228 'AuthCodeRequestV3' test.out

#- 229 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'Kz0YVbAbaWOEniZN' \
    --additionalData 'yfL6uZg95wYE59zL' \
    --clientId 'KBNfpVXzVfWq57JV' \
    --createHeadless 'true' \
    --deviceId 'LOz6ylZyhFgPRVF5' \
    --macAddress 'bBRQV90hKJEK5R69' \
    --platformToken 'lmSGwsxONt98hss0' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 229 'PlatformTokenGrantV3' test.out

#- 230 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 230 'GetRevocationListV3' test.out

#- 231 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'H3jyGdDJxKpTdtIH' \
    > test.out 2>&1
eval_tap $? 231 'TokenRevocationV3' test.out

#- 232 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'Yw2cqnxetxjGT3dY' \
    --clientId 'a2uzsRUq9lvsHLHZ' \
    --code 'CCRmdRdsHnkRvpl3' \
    --codeVerifier 'AL2x7hDEMl9ooO8T' \
    --extendExp 'false' \
    --password '7gTkOnWJ05g0od0Y' \
    --redirectUri '1NZjNK4hEZMFcNtO' \
    --refreshToken 'WdWEMN0NPaKSOLbp' \
    --username 'Pif5IldXzaKzLlUr' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 232 'TokenGrantV3' test.out

#- 233 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'oCBlwfStJvxG9m04' \
    > test.out 2>&1
eval_tap $? 233 'VerifyTokenV3' test.out

#- 234 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'LzdQNaYINw8fipZF' \
    --code 'KTGOYwNrxDQdz2rw' \
    --error 'ow4dVdCZG33BqIhf' \
    --openidAssocHandle 'ueDOncK9kMKMpWtI' \
    --openidClaimedId '1ES1l1ma9HgENYPq' \
    --openidIdentity 'qJintKK9r01YaT5t' \
    --openidMode 'Fb6RnPzajk7oCO1O' \
    --openidNs 'wvzztk9wziiH71Oq' \
    --openidOpEndpoint 'WOUKiIh70zzN50yJ' \
    --openidResponseNonce 'xw24bG0cpu1AJUIS' \
    --openidReturnTo 'ooxev422KM8ChTjk' \
    --openidSig 'kzNX07drEQ2ZaQyf' \
    --openidSigned 'ny3SyIJwLjNznoLD' \
    --state '050GdRdCUPH8BErM' \
    > test.out 2>&1
eval_tap $? 234 'PlatformAuthenticationV3' test.out

#- 235 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'PMRHpLuSuoVnHPnX' \
    --platformToken 'ptdy8ARrlCKLNn5Q' \
    > test.out 2>&1
eval_tap $? 235 'PlatformTokenRefreshV3' test.out

#- 236 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'L1qeNZPEEV0RXgJN' \
    > test.out 2>&1
eval_tap $? 236 'PublicGetInputValidations' test.out

#- 237 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'OD23LPTMqppoQ9AK' \
    > test.out 2>&1
eval_tap $? 237 'PublicGetInputValidationByField' test.out

#- 238 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'wHktvjQZRi2neUWT' \
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
    --clientId '6xo8f7VvRiIjRD4w' \
    > test.out 2>&1
eval_tap $? 241 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 242 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'VtZovsPzhc2kTrGw' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["nHyYACoZvezGAnF0", "g2jOhC1MMo4rAxfy", "fsfWTFLtCPfYykIx"]}' \
    > test.out 2>&1
eval_tap $? 242 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 243 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '3YBafSmf6GhGWCzh' \
    --platformUserId 'o0Vv5AHXJZfPXoTz' \
    > test.out 2>&1
eval_tap $? 243 'PublicGetUserByPlatformUserIDV3' test.out

#- 244 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'FI8j22JIPBqCNfQG' \
    > test.out 2>&1
eval_tap $? 244 'PublicGetAsyncStatus' test.out

#- 245 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'dGEOcStZIqfPTusc' \
    --limit '90' \
    --offset '10' \
    --query '9Ji8f66p0K0EeqNH' \
    > test.out 2>&1
eval_tap $? 245 'PublicSearchUserV3' test.out

#- 246 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "LAU9963WVluXRDj4", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "LOz5YIMnAj2x6gGZ", "policyId": "jaaywTbIVaM0ahyf", "policyVersionId": "77y3Ou8cLNxvkTeD"}, {"isAccepted": false, "localizedPolicyVersionId": "ovzWkAUbbEzndGxB", "policyId": "TlJdOkkAcM6p0xq8", "policyVersionId": "Ory0cyqE8JzCTeoG"}, {"isAccepted": true, "localizedPolicyVersionId": "ilQ6dPPoAqKp3bk1", "policyId": "nTP8WiffgYNiVAt1", "policyVersionId": "81Vh6ppktB0zEwr0"}], "authType": "REFbbdSPEzJwb0P7", "code": "BTWUGi7ePEfs309a", "country": "2dyHLqGfvQOGTsYw", "dateOfBirth": "fKMboStdfGXQAB5r", "displayName": "UAZv89TQ50dN5v7j", "emailAddress": "a6F4vkFLK4L3Ktbt", "password": "NykOjOXmRkY8kTgl", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 246 'PublicCreateUserV3' test.out

#- 247 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'wUK1xHVHKsDnKgrt' \
    --query '38fXHTCBatwZIFWw' \
    > test.out 2>&1
eval_tap $? 247 'CheckUserAvailability' test.out

#- 248 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["KCGFsRQYW65sVMyr", "dzM66lG0AFCfL6sd", "wD9NYSFjuOxo9TSv"]}' \
    > test.out 2>&1
eval_tap $? 248 'PublicBulkGetUsers' test.out

#- 249 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "zV6Fe8v85uYoFobA", "languageTag": "6REhJq6DXwuQjaI4"}' \
    > test.out 2>&1
eval_tap $? 249 'PublicSendRegistrationCode' test.out

#- 250 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "MH79uDwMFFwR2K7O", "emailAddress": "DBEa2oNL1m2AWy0q"}' \
    > test.out 2>&1
eval_tap $? 250 'PublicVerifyRegistrationCode' test.out

#- 251 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "fIWcI0xRhciTz00F", "languageTag": "4bPziH1Sis4QNGsg"}' \
    > test.out 2>&1
eval_tap $? 251 'PublicForgotPasswordV3' test.out

#- 252 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'DA4jPzt5b5WfJhE1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 252 'GetAdminInvitationV3' test.out

#- 253 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'nQVGRsf85vleZVWb' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "eDwoJIvxa41P73JG", "policyId": "avyZ4DBTcHsTcdng", "policyVersionId": "Xh7CmqlufY35q9Wi"}, {"isAccepted": false, "localizedPolicyVersionId": "VwhVrheG1sZIUszR", "policyId": "GfPaASiu8msNbQUw", "policyVersionId": "SP0REWKhtTpPkNHT"}, {"isAccepted": false, "localizedPolicyVersionId": "APFUl3iA1Ulw5uvc", "policyId": "3pD3Wr80Wi7b6i4J", "policyVersionId": "kobV0qFC7qqfMnHM"}], "authType": "EMAILPASSWD", "country": "jzsiiW0MBvPF35pJ", "dateOfBirth": "EceCSRRzYWwUXGXS", "displayName": "IXXJAND6HKbjUvWn", "password": "X3BoKGwoFIKL6veo", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 253 'CreateUserFromInvitationV3' test.out

#- 254 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "6SOICd68xmoQMl9u", "country": "HUwXbLEmTkU0HXrT", "dateOfBirth": "SmrcGqe6UasUx6O8", "displayName": "HTTNSMe8YC2kAS8D", "languageTag": "dUFLLt3DEDL55Yco", "userName": "LIv1crbSDPU3hMKZ"}' \
    > test.out 2>&1
eval_tap $? 254 'UpdateUserV3' test.out

#- 255 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "xjOIlUlaN0srFWgC", "country": "BGCmgQA0L8BLD5au", "dateOfBirth": "VljpdYNpn5BbZN8F", "displayName": "7CwEUbRec5EsEUse", "languageTag": "qBB9EulklabasYsM", "userName": "0QWnWr5GCvUIZmQn"}' \
    > test.out 2>&1
eval_tap $? 255 'PublicPartialUpdateUserV3' test.out

#- 256 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "OypvCRrGOV9pqcTY", "emailAddress": "JAeNU6wbP0XtW2BL", "languageTag": "dSceKqlIjUI6Vj7n"}' \
    > test.out 2>&1
eval_tap $? 256 'PublicSendVerificationCodeV3' test.out

#- 257 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "eSFVb61KlYyPdzol", "contactType": "0W321rTia78ayr2j", "languageTag": "mHiBNWxJY34QMFpB", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 257 'PublicUserVerificationV3' test.out

#- 258 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "SI5UrqtruwBIZjfB", "country": "wForrM6ORT1Pxn8E", "dateOfBirth": "I2cnLms6MUWEsA1R", "displayName": "lKg5rUwe7ikR7Yvz", "emailAddress": "HF7pivC3GbvKTRR4", "password": "qpCclfb3CmMMImw7", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 258 'PublicUpgradeHeadlessAccountV3' test.out

#- 259 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "pHYjzoGYwnoUrwtO", "password": "XoF35hDdpd03M4KN"}' \
    > test.out 2>&1
eval_tap $? 259 'PublicVerifyHeadlessAccountV3' test.out

#- 260 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "ksiTWsPJie3Xmciw", "newPassword": "iJMSTaNx8BvAadaY", "oldPassword": "xxUHBm3zZG5kpUNA"}' \
    > test.out 2>&1
eval_tap $? 260 'PublicUpdatePasswordV3' test.out

#- 261 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'nPee1suWixH7joim' \
    > test.out 2>&1
eval_tap $? 261 'PublicCreateJusticeUser' test.out

#- 262 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'R4wYerWVMtcIMgtc' \
    --redirectUri 'xLPalsKsG6Sd5RX9' \
    --ticket 'bqssejckir8zvF6u' \
    > test.out 2>&1
eval_tap $? 262 'PublicPlatformLinkV3' test.out

#- 263 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'gbaBENyZTMp48hIB' \
    --body '{"platformNamespace": "59mGDyP3tLcBVXNz"}' \
    > test.out 2>&1
eval_tap $? 263 'PublicPlatformUnlinkV3' test.out

#- 264 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'lyJQAV0WlHVLy8OQ' \
    > test.out 2>&1
eval_tap $? 264 'PublicPlatformUnlinkAllV3' test.out

#- 265 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '44mQdxJQkWsjaZdO' \
    --ticket '2h3zzKGGt5GT3jzV' \
    > test.out 2>&1
eval_tap $? 265 'PublicForcePlatformLinkV3' test.out

#- 266 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'n29HLxm2gAsowlVl' \
    --clientId 'J8qJnnqyGhJwNOVv' \
    --redirectUri 'pkvyK4RhItnfU8hZ' \
    > test.out 2>&1
eval_tap $? 266 'PublicWebLinkPlatform' test.out

#- 267 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'v9u7f1jBWV5QJQe7' \
    --code 'h3t8k1Fif0dKB4Dv' \
    --state 'uSEjVzHakoPA5ohW' \
    > test.out 2>&1
eval_tap $? 267 'PublicWebLinkPlatformEstablish' test.out

#- 268 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'BDXqYax7kjYkku5m' \
    --code '13B0KqQ4Z1b5Qqyh' \
    --state 'yxhYKvYKFNEDTQSW' \
    > test.out 2>&1
eval_tap $? 268 'PublicProcessWebLinkPlatformV3' test.out

#- 269 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "u0SZe0sHPhVMLufr", "emailAddress": "N4Ln7iJ7UTjQeqWG", "newPassword": "wJkxRbHS7UmXdUzF"}' \
    > test.out 2>&1
eval_tap $? 269 'ResetPasswordV3' test.out

#- 270 PublicGetUserByUserIdV3
eval_tap 0 270 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 271 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZQLKC7Hq5M2XJUfY' \
    --activeOnly 'true' \
    --after 'aXmxIdmv4TgtAJdW' \
    --before '1mLLOXPEXaTrUpOx' \
    --limit '82' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetUserBanHistoryV3' test.out

#- 272 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hzzQdn653i6pB7FU' \
    > test.out 2>&1
eval_tap $? 272 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 273 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'G9ygwBtdgXUEcCCA' \
    > test.out 2>&1
eval_tap $? 273 'PublicGetUserInformationV3' test.out

#- 274 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Scf7HCJ9eraQYQtC' \
    --after '0.07103860888352964' \
    --before '0.7670699709983582' \
    --limit '15' \
    > test.out 2>&1
eval_tap $? 274 'PublicGetUserLoginHistoriesV3' test.out

#- 275 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'AGPjl69l0gktqtDq' \
    --after 'XGBOQKGNiNp0FRvW' \
    --before 'Na2eif4WPLYmPE87' \
    --limit '96' \
    --platformId 'ntx302FDiojpvz59' \
    > test.out 2>&1
eval_tap $? 275 'PublicGetUserPlatformAccountsV3' test.out

#- 276 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kPfdhZrL51H8L00p' \
    > test.out 2>&1
eval_tap $? 276 'PublicListJusticePlatformAccountsV3' test.out

#- 277 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'aE3ozm5m4G8pkERQ' \
    --body '{"platformId": "xOLfi1i82eKkSoxd", "platformUserId": "09dwRfooiB1RmPEb"}' \
    > test.out 2>&1
eval_tap $? 277 'PublicLinkPlatformAccount' test.out

#- 278 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'mbD9Wxtvl2DlWG0I' \
    --body '{"chosenNamespaces": ["NFIkW6vGQS5iozg5", "8QZEOm5WDE71fCpS", "udBMJgZPPrIHQ9Hy"], "requestId": "DLaikGOAdo2YNlwn"}' \
    > test.out 2>&1
eval_tap $? 278 'PublicForceLinkPlatformWithProgression' test.out

#- 279 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iQk7knmbWmeW8TSv' \
    > test.out 2>&1
eval_tap $? 279 'PublicGetPublisherUserV3' test.out

#- 280 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eCcnoHPxvmGMwCIA' \
    --password '7k0IbC5QrEMTfA0V' \
    > test.out 2>&1
eval_tap $? 280 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 281 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'K6mHiUnGHaz9TEMa' \
    --before 'ZgaVqYbc6eHKiZOC' \
    --isWildcard 'false' \
    --limit '60' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetRolesV3' test.out

#- 282 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'vdNE8rOnsQIfxMsq' \
    > test.out 2>&1
eval_tap $? 282 'PublicGetRoleV3' test.out

#- 283 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 283 'PublicGetMyUserV3' test.out

#- 284 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'q2KGPSWV7RTgAzVw' \
    > test.out 2>&1
eval_tap $? 284 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 285 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["gv53yh4CfZ7MZZjC", "YuL5Te7ocIkaFNj3", "EijcW7onCbHz2Ng8"], "oneTimeLinkCode": "dRbZiN4krREZ4dqi"}' \
    > test.out 2>&1
eval_tap $? 285 'LinkHeadlessAccountToMyAccountV3' test.out

#- 286 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "2L5PBrhpOXopEf1B"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicSendVerificationLinkV3' test.out

#- 287 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'DZyMKjHMNFp8Nd81' \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyUserByLinkV3' test.out

#- 288 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'Qof3uIujHsOHh9vn' \
    --code 'O3ztWsXwsSVpNKae' \
    --error 'WQiteAF615LtSAEE' \
    --state '06T5yyPXYmgGhmhj' \
    > test.out 2>&1
eval_tap $? 288 'PlatformAuthenticateSAMLV3Handler' test.out

#- 289 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'OueVTq0eCnJdwl01' \
    --payload 'WeGGIeUO00tHx10J' \
    > test.out 2>&1
eval_tap $? 289 'LoginSSOClient' test.out

#- 290 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'd8smhInDDrasjrWe' \
    > test.out 2>&1
eval_tap $? 290 'LogoutSSOClient' test.out

#- 291 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --additionalData 'slgulISfG3h9Jvz2' \
    --code 'f3Su5AHOjxSM4fAr' \
    > test.out 2>&1
eval_tap $? 291 'RequestGameTokenResponseV3' test.out

#- 292 PlatformTokenRefreshV3Deprecate
eval_tap 0 292 'PlatformTokenRefreshV3Deprecate # SKIP deprecated' test.out

#- 293 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'nJiXCMAzbStonohS' \
    > test.out 2>&1
eval_tap $? 293 'AdminGetDevicesByUserV4' test.out

#- 294 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'rBaJ8CCUciE9BIkR' \
    --endDate 'B8VYOCvWdchjGgye' \
    --limit '70' \
    --offset '72' \
    --startDate 'UBfCmnNPdAay0neQ' \
    > test.out 2>&1
eval_tap $? 294 'AdminGetBannedDevicesV4' test.out

#- 295 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'm9utwBqShMZFqR5o' \
    > test.out 2>&1
eval_tap $? 295 'AdminGetUserDeviceBansV4' test.out

#- 296 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "48yBKt3gn5xC5pLl", "deviceId": "DKwdYe8gTvrJPpxO", "deviceType": "sgYH3ojEbqLYnKjU", "enabled": false, "endDate": "Y55XsWakzWHSXlvk", "ext": {"J160VzMRsf8nE5b1": {}, "u0FnHM9tOYUJTA5M": {}, "nipF2x4uGi0ze0qx": {}}, "reason": "uuJ142q8xCIufUJG"}' \
    > test.out 2>&1
eval_tap $? 296 'AdminBanDeviceV4' test.out

#- 297 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'pJwSi8uQLIQDeqBw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 297 'AdminGetDeviceBanV4' test.out

#- 298 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'hXdi7DmRgT1iDJW7' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateDeviceBanV4' test.out

#- 299 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'gwsHmoMumqoC9Hf6' \
    --startDate '5sg3MSRWxAHjJyQP' \
    --deviceType 'IWeWytUD2rA7zBkC' \
    > test.out 2>&1
eval_tap $? 299 'AdminGenerateReportV4' test.out

#- 300 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 300 'AdminGetDeviceTypesV4' test.out

#- 301 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId '4RurHSQI0CF8LOdU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 301 'AdminGetDeviceBansV4' test.out

#- 302 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId '2fokAPnkgCgDvAJW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 302 'AdminDecryptDeviceV4' test.out

#- 303 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'B88upGvvLVuRUAaD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 303 'AdminUnbanDeviceV4' test.out

#- 304 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'mFKuvnrwbYuqtMrD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 304 'AdminGetUsersByDeviceV4' test.out

#- 305 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 15}' \
    > test.out 2>&1
eval_tap $? 305 'AdminCreateTestUsersV4' test.out

#- 306 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["5pt38d3OESaN184e", "ztnm3WrsSRpgunRf", "d9VQpxvbX3Z1qaRK"]}' \
    > test.out 2>&1
eval_tap $? 306 'AdminBulkCheckValidUserIDV4' test.out

#- 307 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'rJB3Su9q3P25rDV7' \
    --body '{"avatarUrl": "7TqhobVh77txD5TR", "country": "4R4qsnRwLkIOGNCA", "dateOfBirth": "eW4N0RvoZNbKQnJR", "displayName": "GGFd43TtkkjEIhL7", "languageTag": "RnvfjnAhAMR6cZ11", "userName": "ihsGFMt2hBaIBlga"}' \
    > test.out 2>&1
eval_tap $? 307 'AdminUpdateUserV4' test.out

#- 308 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'vJBz7eDl660Ob12a' \
    --body '{"code": "g5eLfm1BlUQkycKC", "emailAddress": "eru37QwfUnUCgfi2"}' \
    > test.out 2>&1
eval_tap $? 308 'AdminUpdateUserEmailAddressV4' test.out

#- 309 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'xP9yOcdfzo7nHw6F' \
    > test.out 2>&1
eval_tap $? 309 'AdminDisableUserMFAV4' test.out

#- 310 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'M9WLrwvI6dFf4cZS' \
    > test.out 2>&1
eval_tap $? 310 'AdminListUserRolesV4' test.out

#- 311 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'mh0bFtbXBZATYyB3' \
    --body '{"assignedNamespaces": ["yGwNq8QsAd4c29ty", "FBznXfWIZJnruLWp", "4tufcS5kG2HuZUcw"], "roleId": "6CXybwJ58B7S4Aj2"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminUpdateUserRoleV4' test.out

#- 312 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'WyasuNG8mzg7xFkB' \
    --body '{"assignedNamespaces": ["8FEM1zw3mJKDCiiE", "buokh8FZtS1RQ4kS", "MYRcWlhDQmjoYUOn"], "roleId": "XbtRzvwImH9hByuG"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminAddUserRoleV4' test.out

#- 313 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'mnIpz2mgNIHJTyyY' \
    --body '{"assignedNamespaces": ["d6ZAJUPnn07v97f8", "kpy96F8Bgn7Tp8rJ", "bOtPbkQG9Hr6FXoO"], "roleId": "aSpuYnqhW7Ix7WaO"}' \
    > test.out 2>&1
eval_tap $? 313 'AdminRemoveUserRoleV4' test.out

#- 314 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'true' \
    --limit '75' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 314 'AdminGetRolesV4' test.out

#- 315 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "liZDgOxb1CcVSQzH"}' \
    > test.out 2>&1
eval_tap $? 315 'AdminCreateRoleV4' test.out

#- 316 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'Z2VpGWBoOIoIh4Gh' \
    > test.out 2>&1
eval_tap $? 316 'AdminGetRoleV4' test.out

#- 317 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'Myh3vej4ZO0atqkU' \
    > test.out 2>&1
eval_tap $? 317 'AdminDeleteRoleV4' test.out

#- 318 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'SnxrxE5Bftfl4Rqt' \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "xo7Lw1jTXSBjLBQq"}' \
    > test.out 2>&1
eval_tap $? 318 'AdminUpdateRoleV4' test.out

#- 319 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId '5DA5tfbBriTEn7Rf' \
    --body '{"permissions": [{"action": 86, "resource": "8r5yK6zOqy5XpJzg", "schedAction": 50, "schedCron": "NjukYUYQlMOhze7n", "schedRange": ["19eE6Qevby3akoTT", "ccwuV4wwMM1nCyT2", "u9w6c6MF5Me7eJt8"]}, {"action": 44, "resource": "X90wI12HIw62iEWz", "schedAction": 81, "schedCron": "n1jet3GbjZplNN66", "schedRange": ["Xo6kzhYrPc03pXUF", "Ubu4q5BdbaUPHSw0", "VnWV016RlNOYC0zT"]}, {"action": 42, "resource": "6FfkBrhBkRV38VeK", "schedAction": 94, "schedCron": "B28xwSPA2yLjGT7I", "schedRange": ["buGJ2OhgAcFLPveX", "meYfeJGp0dYEOTDE", "zDjnWXkvWtmJ2lWc"]}]}' \
    > test.out 2>&1
eval_tap $? 319 'AdminUpdateRolePermissionsV4' test.out

#- 320 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'eQh6PiFphosnqjuG' \
    --body '{"permissions": [{"action": 42, "resource": "T6k2mqPJB9Kd9gbu", "schedAction": 97, "schedCron": "odqJREr87iazCxEm", "schedRange": ["8KDhw0RB1InDnkCZ", "bdoJlreQxoi8ab9v", "eEGnfiTH7VhQXJDU"]}, {"action": 28, "resource": "G9HPUbsMOSHNYsTh", "schedAction": 94, "schedCron": "xHtJduwNYaM0QMZR", "schedRange": ["8DTIfNmLjJucCXIc", "uOpnb0kezy6DmDCs", "daH7x3UCEg4KQ82B"]}, {"action": 73, "resource": "eEpotThkfPhSSABr", "schedAction": 83, "schedCron": "abViu3cC4GRssx3G", "schedRange": ["hCM8gmMX42XA8JM4", "bu6ZTfLYXrUqQN6C", "hU1RjN1gYjPN4Y35"]}]}' \
    > test.out 2>&1
eval_tap $? 320 'AdminAddRolePermissionsV4' test.out

#- 321 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'rYymY9n3CODpNgEa' \
    --body '["oo3S7vGKgIsuWwXa", "qJQuEEiAC3qJqZXu", "kG62KktCY2alVg0e"]' \
    > test.out 2>&1
eval_tap $? 321 'AdminDeleteRolePermissionsV4' test.out

#- 322 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'xyXBFWM66xc6EU7b' \
    --after 'LrAUDK5VAcV8ANST' \
    --before 'oiqvL4IaevhZ5Ubz' \
    --limit '35' \
    > test.out 2>&1
eval_tap $? 322 'AdminListAssignedUsersV4' test.out

#- 323 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'D8cl7hCdhBbqdAuj' \
    --body '{"assignedNamespaces": ["jp9Z7JQHN627KrAf", "cf5dYUogZpypo2Sn", "WV4ioxvJmWx3tWgW"], "namespace": "ZsQolyYEIrV4GYuH", "userId": "cHJpLLKmHmoYauJj"}' \
    > test.out 2>&1
eval_tap $? 323 'AdminAssignUserToRoleV4' test.out

#- 324 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'FaMYEQV9iYYuGrBq' \
    --body '{"namespace": "ynD7EzfTxZYiOzfS", "userId": "bDmWh7tO9ssMAE49"}' \
    > test.out 2>&1
eval_tap $? 324 'AdminRevokeUserFromRoleV4' test.out

#- 325 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["eHnXie2Mf1R1Mg7Q", "4aGZKODPkVGptOVf", "wyfMCozxQdSF0Ev8"], "emailAddresses": ["FfTqIkmhWfu6XmAE", "RbOucm9JCSZfumAu", "sc0KhJQ5kJmeCWZB"], "isAdmin": false, "namespace": "ie00hfhpodGnTiX5", "roleId": "bqGkK2YeZb5tCrSW"}' \
    > test.out 2>&1
eval_tap $? 325 'AdminInviteUserNewV4' test.out

#- 326 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "XcW0OQGQFVrvoVy5", "country": "u0LiQZDAB5LSbGw5", "dateOfBirth": "DBbalB7A05X7L5Nj", "displayName": "CBMgN5ndCXkfZMqx", "languageTag": "WpczkIDbtafLbWxV", "userName": "nDZ8NeGDFs9bY1oH"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminUpdateMyUserV4' test.out

#- 327 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 327 'AdminDisableMyAuthenticatorV4' test.out

#- 328 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'eGTxfrnLEi5mkwUy' \
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
    --code 'WsLtl3cwGP30Neh4' \
    > test.out 2>&1
eval_tap $? 337 'AdminEnableMyEmailV4' test.out

#- 338 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 338 'AdminGetMyEnabledFactorsV4' test.out

#- 339 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'sTS8f4N0EuN1ExWE' \
    > test.out 2>&1
eval_tap $? 339 'AdminMakeFactorMyDefaultV4' test.out

#- 340 AdminInviteUserV4
eval_tap 0 340 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 341 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "LlADk4Z0WU2mty59", "policyId": "ssuPH6ZiVikCG5UH", "policyVersionId": "snPpf999j0UoM6Hl"}, {"isAccepted": true, "localizedPolicyVersionId": "3d5VurOzlEvco798", "policyId": "JaY9WsiWYLuzq3bq", "policyVersionId": "MTS6nzSaoF9dEp79"}, {"isAccepted": true, "localizedPolicyVersionId": "Q1AdmvU6Kcb0jFgN", "policyId": "vJvdQ8NWniZKwp1f", "policyVersionId": "3ji63PvYwE1thur1"}], "authType": "EMAILPASSWD", "country": "61wD8cqAfOiiDPp8", "dateOfBirth": "Zc5q5SBVPZ5pNBQ8", "displayName": "TDjRDMyx10uAS0p7", "emailAddress": "ncTFQG8B6V1g7Rst", "password": "ddj7VZPyeRM3QXle", "passwordMD5Sum": "bTyOgsyBfrkegYfT", "username": "kCFmcWJqDJOEFRxr", "verified": false}' \
    > test.out 2>&1
eval_tap $? 341 'PublicCreateTestUserV4' test.out

#- 342 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "2GxPGqTKd0OCL4JT", "policyId": "GQGc1tRPTgOxgbry", "policyVersionId": "cmHGF9Dp8t5JSt4e"}, {"isAccepted": false, "localizedPolicyVersionId": "iHirekkuJgmIeICq", "policyId": "S4vv6N7haYlbSL9K", "policyVersionId": "QpEWxr6bK4jsdmq1"}, {"isAccepted": false, "localizedPolicyVersionId": "r6iFw0nXOxs5w4bz", "policyId": "1LheyJQrPM2BxTSI", "policyVersionId": "2fefe9eCuo54b8YS"}], "authType": "EMAILPASSWD", "code": "hzG1esUUfX2nAgVz", "country": "fna6kucVRDCY23Oc", "dateOfBirth": "8oXjkqDo4MvoIIhS", "displayName": "i36yDa6qIibdJlMX", "emailAddress": "UdM3wNL4xvChSo6E", "password": "dJO762xiwrYPTImO", "passwordMD5Sum": "Abho186OqRfieVaX", "reachMinimumAge": true, "username": "mLbHcePS6XXA17gO"}' \
    > test.out 2>&1
eval_tap $? 342 'PublicCreateUserV4' test.out

#- 343 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'VChzGdj7qFNWSCD3' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "u0IDFt7HKSNlviDJ", "policyId": "RV8tnjvUfPPc2G2H", "policyVersionId": "9x10XO9MMozTymmz"}, {"isAccepted": true, "localizedPolicyVersionId": "dBbSFJFB8F2WP800", "policyId": "nKWcRd4v5ylJuukx", "policyVersionId": "iamoftrpVOrmH3Fc"}, {"isAccepted": false, "localizedPolicyVersionId": "iEOFuBfTl32OmgKs", "policyId": "mBlse6JltiUwb90H", "policyVersionId": "3CNHCxAHaRO3gCXw"}], "authType": "EMAILPASSWD", "country": "xsl2MUDJT4WxgDNa", "dateOfBirth": "Y6VE4DOtwSu6Wmbk", "displayName": "ImwCWys6q9LbCgju", "password": "rxtcViBgtrWyVGQ8", "reachMinimumAge": true, "username": "f8DNnlqjs1uHX1BT"}' \
    > test.out 2>&1
eval_tap $? 343 'CreateUserFromInvitationV4' test.out

#- 344 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "HQtGDjZ82OuoFxVi", "country": "kDOUtx3SL8PHGUpk", "dateOfBirth": "PCgE0vPeezW9vYll", "displayName": "IlJojYvo4Z8TlOgt", "languageTag": "Peov84wxmUzEagEs", "userName": "QMrCdX3tjLLo9m3u"}' \
    > test.out 2>&1
eval_tap $? 344 'PublicUpdateUserV4' test.out

#- 345 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "gpFapVipWYwLvsti", "emailAddress": "U39MeE8OmCmGhg7l"}' \
    > test.out 2>&1
eval_tap $? 345 'PublicUpdateUserEmailAddressV4' test.out

#- 346 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "0HDJ6Um1ZNWdPtA4", "country": "ZyKiGWhEUhMaZNh4", "dateOfBirth": "ep4lnyhDynWCJQvr", "displayName": "wK2ABtrcyLGA2epF", "emailAddress": "O3YNhdB96VedU2jt", "password": "snuzth7LPsyhh8az", "reachMinimumAge": false, "username": "ozfD3NYYVm9p5Mdl", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 346 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 347 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "cbSshGzz2acvspvQ", "password": "lQhskxqzUh84m9NV", "username": "k1491siQkc8pbq0u"}' \
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
    --code 'IwDRhSUY6QSWK5zG' \
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
    --code '0HrfN06FCiapj4YG' \
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
    --factor '6h1ZWZR567K3Pyf6' \
    > test.out 2>&1
eval_tap $? 361 'PublicMakeFactorMyDefaultV4' test.out

#- 362 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'J84PfGVsXrGcrqiA' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 363 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"emailAddress": "FwO6M8mXBtFprVdu", "namespace": "dQJ64zQxvvSRFK0t", "namespaceDisplayName": "rgPhu7DmTu83Mc44"}' \
    > test.out 2>&1
eval_tap $? 363 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE