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
echo "1..309"

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
samples/cli/sample-apps Iam getAdminUsersByRoleID \
    --namespace $AB_NAMESPACE \
    --after '25' \
    --before '9' \
    --limit '94' \
    --roleId 'PE98JfhO' \
    > test.out 2>&1
eval_tap $? 17 'GetAdminUsersByRoleID' test.out

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
samples/cli/sample-apps Iam getUserInformation \
    --namespace $AB_NAMESPACE \
    --userId 'ntBlVKWz' \
    > test.out 2>&1
eval_tap $? 34 'GetUserInformation' test.out

#- 35 DeleteUserInformation
eval_tap 0 35 'DeleteUserInformation # SKIP deprecated' test.out

#- 36 GetUserLoginHistories
samples/cli/sample-apps Iam getUserLoginHistories \
    --namespace $AB_NAMESPACE \
    --userId 'iQug9IXS' \
    --after '0.03999981935698982' \
    --before '0.22214424112562248' \
    --limit '23' \
    > test.out 2>&1
eval_tap $? 36 'GetUserLoginHistories' test.out

#- 37 UpdatePassword
eval_tap 0 37 'UpdatePassword # SKIP deprecated' test.out

#- 38 SaveUserPermission
eval_tap 0 38 'SaveUserPermission # SKIP deprecated' test.out

#- 39 AddUserPermission
eval_tap 0 39 'AddUserPermission # SKIP deprecated' test.out

#- 40 DeleteUserPermission
eval_tap 0 40 'DeleteUserPermission # SKIP deprecated' test.out

#- 41 GetUserPlatformAccounts
samples/cli/sample-apps Iam getUserPlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId '2weJf5HA' \
    > test.out 2>&1
eval_tap $? 41 'GetUserPlatformAccounts' test.out

#- 42 GetUserMapping
samples/cli/sample-apps Iam getUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'K82EZxH0' \
    --userId 'BAwLVxZ2' \
    > test.out 2>&1
eval_tap $? 42 'GetUserMapping' test.out

#- 43 GetUserJusticePlatformAccount
eval_tap 0 43 'GetUserJusticePlatformAccount # SKIP deprecated' test.out

#- 44 PlatformLink
samples/cli/sample-apps Iam platformLink \
    --namespace $AB_NAMESPACE \
    --platformId 'wKTDZyKb' \
    --userId 'irLAdPzD' \
    --ticket 'ymF0Pe2Q' \
    > test.out 2>&1
eval_tap $? 44 'PlatformLink' test.out

#- 45 PlatformUnlink
samples/cli/sample-apps Iam platformUnlink \
    --namespace $AB_NAMESPACE \
    --platformId 'lTlic6Ng' \
    --userId 'PYb6Txyu' \
    --platformNamespace 'jxpli9p6' \
    > test.out 2>&1
eval_tap $? 45 'PlatformUnlink' test.out

#- 46 GetPublisherUser
eval_tap 0 46 'GetPublisherUser # SKIP deprecated' test.out

#- 47 SaveUserRoles
eval_tap 0 47 'SaveUserRoles # SKIP deprecated' test.out

#- 48 AddUserRole
eval_tap 0 48 'AddUserRole # SKIP deprecated' test.out

#- 49 DeleteUserRole
eval_tap 0 49 'DeleteUserRole # SKIP deprecated' test.out

#- 50 UpgradeHeadlessAccount
samples/cli/sample-apps Iam upgradeHeadlessAccount \
    --namespace $AB_NAMESPACE \
    --userId 'IaMoNC7E' \
    --body '{"LoginID": "3e9AYCgy", "Password": "6qNhQAQH"}' \
    > test.out 2>&1
eval_tap $? 50 'UpgradeHeadlessAccount' test.out

#- 51 UpgradeHeadlessAccountWithVerificationCode
samples/cli/sample-apps Iam upgradeHeadlessAccountWithVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'FJtleHHT' \
    --body '{"Code": "pS5LSKrZ", "Password": "X9wOyIV2", "loginId": "YMIx8fpN"}' \
    > test.out 2>&1
eval_tap $? 51 'UpgradeHeadlessAccountWithVerificationCode' test.out

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
samples/cli/sample-apps Iam adminGetAgeRestrictionStatusV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 80 'AdminGetAgeRestrictionStatusV2' test.out

#- 81 AdminUpdateAgeRestrictionConfigV2
samples/cli/sample-apps Iam adminUpdateAgeRestrictionConfigV2 \
    --namespace $AB_NAMESPACE \
    --body '{"AgeRestriction": 6, "Enable": false}' \
    > test.out 2>&1
eval_tap $? 81 'AdminUpdateAgeRestrictionConfigV2' test.out

#- 82 GetListCountryAgeRestriction
samples/cli/sample-apps Iam getListCountryAgeRestriction \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 82 'GetListCountryAgeRestriction' test.out

#- 83 UpdateCountryAgeRestriction
samples/cli/sample-apps Iam updateCountryAgeRestriction \
    --countryCode 'HkaUrguN' \
    --namespace $AB_NAMESPACE \
    --body '{"AgeRestriction": 65}' \
    > test.out 2>&1
eval_tap $? 83 'UpdateCountryAgeRestriction' test.out

#- 84 AdminSearchUsersV2
samples/cli/sample-apps Iam adminSearchUsersV2 \
    --namespace $AB_NAMESPACE \
    --after 'DKOUqHCM' \
    --before 'YcA5XGQm' \
    --displayName 'Ym4FKusa' \
    --limit '83' \
    --loginId 'S4elBFX3' \
    --platformUserId 'sx3qX7M9' \
    --roleId 'UaqGK1WW' \
    --userId '9d7OrMK3' \
    --platformId 'QTZnffgY' \
    > test.out 2>&1
eval_tap $? 84 'AdminSearchUsersV2' test.out

#- 85 AdminGetUserByUserIdV2
samples/cli/sample-apps Iam adminGetUserByUserIdV2 \
    --namespace $AB_NAMESPACE \
    --userId 'SR31lXUv' \
    > test.out 2>&1
eval_tap $? 85 'AdminGetUserByUserIdV2' test.out

#- 86 AdminUpdateUserV2
samples/cli/sample-apps Iam adminUpdateUserV2 \
    --namespace $AB_NAMESPACE \
    --userId 'BlT2KLnc' \
    --body '{"Country": "N46C1iHZ", "DateOfBirth": "nrk6PnnX", "DisplayName": "LA5ttUUk", "LanguageTag": "peGpo6pj"}' \
    > test.out 2>&1
eval_tap $? 86 'AdminUpdateUserV2' test.out

#- 87 AdminBanUserV2
samples/cli/sample-apps Iam adminBanUserV2 \
    --namespace $AB_NAMESPACE \
    --userId 'Q2jrjNLC' \
    --body '{"ban": "KM3E4TAF", "comment": "qvw1xhZo", "endDate": "Ilpj180f", "reason": "lGEFme6p", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 87 'AdminBanUserV2' test.out

#- 88 AdminGetUserBanV2
samples/cli/sample-apps Iam adminGetUserBanV2 \
    --namespace $AB_NAMESPACE \
    --userId '7PWQzveO' \
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 88 'AdminGetUserBanV2' test.out

#- 89 AdminDisableUserV2
samples/cli/sample-apps Iam adminDisableUserV2 \
    --namespace $AB_NAMESPACE \
    --userId 'V3GzdEUZ' \
    --body '{"Reason": "t1mLlGbN"}' \
    > test.out 2>&1
eval_tap $? 89 'AdminDisableUserV2' test.out

#- 90 AdminEnableUserV2
samples/cli/sample-apps Iam adminEnableUserV2 \
    --namespace $AB_NAMESPACE \
    --userId 'DJUYQE42' \
    > test.out 2>&1
eval_tap $? 90 'AdminEnableUserV2' test.out

#- 91 AdminResetPasswordV2
samples/cli/sample-apps Iam adminResetPasswordV2 \
    --namespace $AB_NAMESPACE \
    --userId 'CIEoXkbj' \
    --body '{"LanguageTag": "l4fVoXK7", "NewPassword": "Tus6FyMH", "OldPassword": "XY3okODs"}' \
    > test.out 2>&1
eval_tap $? 91 'AdminResetPasswordV2' test.out

#- 92 AdminDeletePlatformLinkV2
samples/cli/sample-apps Iam adminDeletePlatformLinkV2 \
    --namespace $AB_NAMESPACE \
    --platformId 'n4cP8seg' \
    --userId 'rjUGwXJU' \
    --platformNamespace 'MWeJdT6O' \
    > test.out 2>&1
eval_tap $? 92 'AdminDeletePlatformLinkV2' test.out

#- 93 AdminPutUserRolesV2
samples/cli/sample-apps Iam adminPutUserRolesV2 \
    --namespace $AB_NAMESPACE \
    --userId 'O0Zz9e1u' \
    --body '["RkBA1CcX", "jm1NfWBE", "WgfVuXT3"]' \
    > test.out 2>&1
eval_tap $? 93 'AdminPutUserRolesV2' test.out

#- 94 AdminCreateUserRolesV2
samples/cli/sample-apps Iam adminCreateUserRolesV2 \
    --namespace $AB_NAMESPACE \
    --userId 'Jc2kjwHF' \
    --body '["WoAW9tT5", "Oenfk8Bw", "GtgOpWoU"]' \
    > test.out 2>&1
eval_tap $? 94 'AdminCreateUserRolesV2' test.out

#- 95 PublicGetCountryAgeRestriction
samples/cli/sample-apps Iam publicGetCountryAgeRestriction \
    --countryCode 'KuDwWA5j' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 95 'PublicGetCountryAgeRestriction' test.out

#- 96 PublicCreateUserV2
samples/cli/sample-apps Iam publicCreateUserV2 \
    --namespace $AB_NAMESPACE \
    --body '{"AuthType": "HxRhwMAR", "Country": "lO9EGE2t", "DisplayName": "E6KIGwJC", "LoginId": "VzmrsgkF", "Password": "HzQuWFjF", "PasswordMD5Sum": "874EVakh"}' \
    > test.out 2>&1
eval_tap $? 96 'PublicCreateUserV2' test.out

#- 97 PublicForgotPasswordV2
samples/cli/sample-apps Iam publicForgotPasswordV2 \
    --namespace $AB_NAMESPACE \
    --body '{"Context": "pgIKIo1U", "LanguageTag": "LzF5mHu5", "LoginID": "8gpSxx0j"}' \
    > test.out 2>&1
eval_tap $? 97 'PublicForgotPasswordV2' test.out

#- 98 PublicResetPasswordV2
samples/cli/sample-apps Iam publicResetPasswordV2 \
    --namespace $AB_NAMESPACE \
    --body '{"Code": "5zc2TB2K", "LoginID": "gtX7VxhL", "NewPassword": "7JusA03Y"}' \
    > test.out 2>&1
eval_tap $? 98 'PublicResetPasswordV2' test.out

#- 99 PublicGetUserByUserIDV2
samples/cli/sample-apps Iam publicGetUserByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'KJKVcwEr' \
    > test.out 2>&1
eval_tap $? 99 'PublicGetUserByUserIDV2' test.out

#- 100 PublicUpdateUserV2
samples/cli/sample-apps Iam publicUpdateUserV2 \
    --namespace $AB_NAMESPACE \
    --userId 'GwHL8r0m' \
    --body '{"Country": "nM8wurtl", "DateOfBirth": "IjLiyycA", "DisplayName": "i45HeByr", "LanguageTag": "eapYkb9x"}' \
    > test.out 2>&1
eval_tap $? 100 'PublicUpdateUserV2' test.out

#- 101 PublicGetUserBan
samples/cli/sample-apps Iam publicGetUserBan \
    --namespace $AB_NAMESPACE \
    --userId 'XoEH2SYy' \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 101 'PublicGetUserBan' test.out

#- 102 PublicUpdatePasswordV2
samples/cli/sample-apps Iam publicUpdatePasswordV2 \
    --namespace $AB_NAMESPACE \
    --userId 'Ipn5NPAA' \
    --body '{"LanguageTag": "U2kXG8Fe", "NewPassword": "UP2OPWtP", "OldPassword": "wErGkRP6"}' \
    > test.out 2>&1
eval_tap $? 102 'PublicUpdatePasswordV2' test.out

#- 103 GetListJusticePlatformAccounts
samples/cli/sample-apps Iam getListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'HMz6KcE9' \
    > test.out 2>&1
eval_tap $? 103 'GetListJusticePlatformAccounts' test.out

#- 104 PublicPlatformLinkV2
samples/cli/sample-apps Iam publicPlatformLinkV2 \
    --namespace $AB_NAMESPACE \
    --platformId 'y60U5eiR' \
    --userId 'JkLLValU' \
    --ticket 'jBbHSoTO' \
    > test.out 2>&1
eval_tap $? 104 'PublicPlatformLinkV2' test.out

#- 105 PublicDeletePlatformLinkV2
samples/cli/sample-apps Iam publicDeletePlatformLinkV2 \
    --namespace $AB_NAMESPACE \
    --platformId 'OQzQAHkh' \
    --userId '6bdhgT75' \
    --platformNamespace '1y7AMC2c' \
    > test.out 2>&1
eval_tap $? 105 'PublicDeletePlatformLinkV2' test.out

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
    --body '[{"field": "9ftoYiOI", "validation": {"allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "description": [{"language": "5J0Dq4SP", "message": ["pvzPEJs0", "7pX35uWA", "fUqUL3TC"]}, {"language": "Fpm4ZZx2", "message": ["CCUcwy7s", "weZgrLR2", "LVkxdm5w"]}, {"language": "Rgkv2Jd8", "message": ["15AtVtxz", "msfvNLNA", "UMCC8Jsl"]}], "isCustomRegex": false, "letterCase": "XgoJiyHB", "maxLength": 15, "maxRepeatingAlphaNum": 38, "maxRepeatingSpecialCharacter": 14, "minCharType": 93, "minLength": 48, "regex": "XynzlogM", "specialCharacterLocation": "IjnVXZt4", "specialCharacters": ["HB7krLqM", "f3jxigfE", "OgYx9hZq"]}}, {"field": "PxBm3zwM", "validation": {"allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "description": [{"language": "iJUUCjO8", "message": ["Hs3VlySH", "VPgRJdm3", "2kdkas3X"]}, {"language": "lcj1BqQ3", "message": ["euDHe9tl", "0abUsKVq", "tFpHlVF1"]}, {"language": "4rlj5GPE", "message": ["GWxsrq7G", "2pk3dkCC", "seQv23n9"]}], "isCustomRegex": true, "letterCase": "ufOXsEaX", "maxLength": 35, "maxRepeatingAlphaNum": 0, "maxRepeatingSpecialCharacter": 42, "minCharType": 12, "minLength": 86, "regex": "8SeFJWqp", "specialCharacterLocation": "y13UQj0V", "specialCharacters": ["73PcVwyd", "o1cMTQif", "E0TQuTEm"]}}, {"field": "BXJBQpKP", "validation": {"allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "description": [{"language": "pJentTLv", "message": ["ANQxo5Y1", "2RRYM9pN", "LQLZ3KwA"]}, {"language": "pUQwRC4w", "message": ["jGXQz5K7", "kdc4EL4l", "6UxS4my4"]}, {"language": "2PQkIFPx", "message": ["kESWmEtC", "eT2bZQqn", "AIajjeFt"]}], "isCustomRegex": false, "letterCase": "ID23BrIr", "maxLength": 12, "maxRepeatingAlphaNum": 41, "maxRepeatingSpecialCharacter": 34, "minCharType": 29, "minLength": 100, "regex": "ezaqdu9Y", "specialCharacterLocation": "ynbLrNYx", "specialCharacters": ["aII7iNth", "Wjxb8YBM", "IbeZkrl3"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'mSzZHwG2' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'eUeQDgH8' \
    --before 'HRP1aSQB' \
    --limit '0' \
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
    --body '{"ageRestriction": 71, "enable": false}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'uTMS5DqT' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 14}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'Lq84vYhd' \
    --limit '87' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminGetBansTypeWithNamespaceV3
samples/cli/sample-apps Iam adminGetBansTypeWithNamespaceV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 117 'AdminGetBansTypeWithNamespaceV3' test.out

#- 118 AdminGetClientsByNamespaceV3
samples/cli/sample-apps Iam adminGetClientsByNamespaceV3 \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 118 'AdminGetClientsByNamespaceV3' test.out

#- 119 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["5jo12tUy", "S4i4aULd", "sVucZdtN"], "baseUri": "5HoSFGBd", "clientId": "UIuvyyV5", "clientName": "fj30RX8R", "clientPermissions": [{"action": 100, "resource": "eZtrglzC", "schedAction": 70, "schedCron": "fURswDZ8", "schedRange": ["PIkYISNi", "VsG0BtZL", "riTrajl1"]}, {"action": 2, "resource": "HXVNO5DE", "schedAction": 8, "schedCron": "ITHRd8pP", "schedRange": ["7QZJliSw", "jUEnrmXX", "K4yMnRFz"]}, {"action": 42, "resource": "a1BoP9yv", "schedAction": 15, "schedCron": "zpnkjj4e", "schedRange": ["02TTNPYO", "7iQG9KsS", "7R9Os8F2"]}], "clientPlatform": "1J9yzqVb", "deletable": false, "namespace": "VLVk3wSW", "oauthClientType": "h5Y0yGxA", "redirectUri": "wvYEvdYi", "secret": "QrL04oVU"}' \
    > test.out 2>&1
eval_tap $? 119 'AdminCreateClientV3' test.out

#- 120 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'zJBqBZfT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 121 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId '0Z1F2Bnz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 121 'AdminDeleteClientV3' test.out

#- 122 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId '9jYE7vUu' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["oPt6LT30", "6PcxTsHH", "rcOdVeEg"], "baseUri": "Qh8r2rpO", "clientName": "hqWnMhu8", "clientPermissions": [{"action": 21, "resource": "MbFrOx1f", "schedAction": 81, "schedCron": "SLAABcLd", "schedRange": ["xOLVZKmd", "pYKK1rQj", "GAXOSOCw"]}, {"action": 92, "resource": "3ZlpceXx", "schedAction": 45, "schedCron": "pljogFpi", "schedRange": ["hTBS502a", "Kw5ifNjZ", "ex2LyWkX"]}, {"action": 10, "resource": "gJ6TCBGk", "schedAction": 28, "schedCron": "TAfHxBhJ", "schedRange": ["Uk9AIMmd", "Ei2G4h2u", "0FGPg1YS"]}], "clientPlatform": "5zrYtkIZ", "deletable": true, "namespace": "V4qrlikZ", "redirectUri": "3g4vLspK"}' \
    > test.out 2>&1
eval_tap $? 122 'AdminUpdateClientV3' test.out

#- 123 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'N3DWshQW' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 11, "resource": "jI7RLz70"}, {"action": 84, "resource": "k9T4Ume9"}, {"action": 36, "resource": "bUbxQDnl"}]}' \
    > test.out 2>&1
eval_tap $? 123 'AdminUpdateClientPermissionV3' test.out

#- 124 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'Xg9zdvZK' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 20, "resource": "dJIyNGeR"}, {"action": 13, "resource": "2q3gXIM1"}, {"action": 59, "resource": "f9iT0fjI"}]}' \
    > test.out 2>&1
eval_tap $? 124 'AdminAddClientPermissionsV3' test.out

#- 125 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '94' \
    --clientId 'LLRqaeCt' \
    --namespace $AB_NAMESPACE \
    --resource 'uv75OqiS' \
    > test.out 2>&1
eval_tap $? 125 'AdminDeleteClientPermissionV3' test.out

#- 126 RetrieveAllThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 126 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 127 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 128 RetrieveAllSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 128 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 129 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'hu3oN7st' \
    > test.out 2>&1
eval_tap $? 129 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 130 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9ssUJxgS' \
    --body '{"ACSURL": "JgBN8xNy", "AWSCognitoRegion": "TJ1S5KzC", "AWSCognitoUserPool": "K8KSD1yD", "AllowedClients": ["XJUc0J1m", "dOfrHEp2", "eX8VQDlc"], "AppId": "GkhMip6l", "AuthorizationEndpoint": "DcII7pmB", "ClientId": "3bssTCla", "Environment": "USSbw0I7", "FederationMetadataURL": "r9sbNA70", "GenericOauthFlow": false, "IsActive": true, "Issuer": "FXz5xegM", "JWKSEndpoint": "4fXbOZjp", "KeyID": "NqPsvAh2", "NetflixCertificates": {"encryptedPrivateKey": "9v1dLQE6", "encryptedPrivateKeyName": "1MymukSC", "publicCertificate": "mShvDsnP", "publicCertificateName": "kiU32o8F", "rootCertificate": "VYe8xDzt", "rootCertificateName": "ykndApyy"}, "OrganizationId": "Ag8jOemm", "PlatformName": "KEhsdS6f", "RedirectUri": "WOwDGyIH", "RegisteredDomains": [{"affectedClientIDs": ["8htPXS3j", "GUP49Xu6", "GIDFblmo"], "domain": "JsYvh8yM", "namespaces": ["yRQKiwq7", "eGj9IqYz", "mpk6uhlg"], "roleId": "ebUvqruC"}, {"affectedClientIDs": ["6vEkMMSz", "hLsECKpR", "ylfXEqGx"], "domain": "Z1aZb5Yr", "namespaces": ["7FbeVFO9", "cYNAV99O", "IOMBndba"], "roleId": "4PdSbTAW"}, {"affectedClientIDs": ["lQZL3G1H", "0OIPMtoN", "6Y9IgseJ"], "domain": "5EuLGVUO", "namespaces": ["n9Tu40kU", "lh0o4kT8", "ODAtCR6s"], "roleId": "8NPei3iT"}], "Secret": "QjvJlO3K", "TeamID": "w95hSY19", "TokenAuthenticationType": "M9mLjb1h", "TokenClaimsMapping": {"Du4w1eul": "pAMDlSmz", "8d5hX8hj": "g8tfFysE", "GiTb4Uqb": "qjVLLywV"}, "TokenEndpoint": "44EUEnhc"}' \
    > test.out 2>&1
eval_tap $? 130 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 131 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '5ClexOLX' \
    > test.out 2>&1
eval_tap $? 131 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 132 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'kPyw1w3w' \
    --body '{"ACSURL": "HR6rnPQP", "AWSCognitoRegion": "0PPpkrK6", "AWSCognitoUserPool": "SQGndjRs", "AllowedClients": ["T7yFfCt7", "7j2HEZtd", "9sSr92qy"], "AppId": "uMu7dXvb", "AuthorizationEndpoint": "b54tzqpm", "ClientId": "2HjNBM0n", "Environment": "GlWhNT86", "FederationMetadataURL": "5VgEhhmM", "GenericOauthFlow": true, "IsActive": false, "Issuer": "dOS20WjB", "JWKSEndpoint": "MZinxlCN", "KeyID": "3cXpxvLd", "NetflixCertificates": {"encryptedPrivateKey": "GM1Zp3Hw", "encryptedPrivateKeyName": "rkaWwom0", "publicCertificate": "fAJO0Cyi", "publicCertificateName": "57oDtWqw", "rootCertificate": "nKLTDFPi", "rootCertificateName": "JrkLW36C"}, "OrganizationId": "iR89SCmG", "PlatformName": "3Y5EcZy5", "RedirectUri": "f8KYESsO", "RegisteredDomains": [{"affectedClientIDs": ["XYBK91xI", "LKPM5kqb", "31XqK6WC"], "domain": "tS7a5ZSd", "namespaces": ["KutKfBiz", "6Ua14RUr", "XceNNILg"], "roleId": "MAr8sa6g"}, {"affectedClientIDs": ["9yrcOegl", "QwTEF68m", "lS0t84WP"], "domain": "8RdjHzCk", "namespaces": ["iTJ7gpHw", "fhkwDclJ", "eNPbfGpS"], "roleId": "DFFzVIme"}, {"affectedClientIDs": ["TZruuNNI", "85MHIcjF", "qW3z0vJs"], "domain": "q77ZnZ99", "namespaces": ["ri0HY2cR", "tF9LWuM4", "WJfccEUX"], "roleId": "hmqtLBuQ"}], "Secret": "QwY3i4od", "TeamID": "yylPjxza", "TokenAuthenticationType": "MySnwF8M", "TokenClaimsMapping": {"qwdGO0NC": "OoABdiL8", "TJ6J96YO": "IDIcescD", "5EQgboCW": "sXMNaZC0"}, "TokenEndpoint": "Llehl9Ii"}' \
    > test.out 2>&1
eval_tap $? 132 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 133 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'H0aOztGv' \
    --body '{"affectedClientIDs": ["85qOnvHa", "h0hVNtok", "HL23xdWS"], "assignedNamespaces": ["gIFq40rI", "4VCaZKI0", "YnfyEg6t"], "domain": "G1pNmn7u", "roleId": "2NLCcRwF"}' \
    > test.out 2>&1
eval_tap $? 133 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 134 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'A5R0A5Nu' \
    --body '{"domain": "tBeVCFPA"}' \
    > test.out 2>&1
eval_tap $? 134 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 135 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'BWJoiQ46' \
    > test.out 2>&1
eval_tap $? 135 'RetrieveSSOLoginPlatformCredential' test.out

#- 136 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'TAg7XETN' \
    --body '{"acsUrl": "dClItviM", "apiKey": "H4apDtrO", "appId": "lQ7iSefp", "federationMetadataUrl": "fz2TyDs8", "isActive": true, "redirectUri": "IwUhWPIF", "secret": "wGXA6Are", "ssoUrl": "jWyqOiyR"}' \
    > test.out 2>&1
eval_tap $? 136 'AddSSOLoginPlatformCredential' test.out

#- 137 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'WEBbcjfc' \
    > test.out 2>&1
eval_tap $? 137 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 138 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'zHNIrv22' \
    --body '{"acsUrl": "Tq412Cu0", "apiKey": "viZJZNjS", "appId": "wylJYJS6", "federationMetadataUrl": "wnPWkwxP", "isActive": true, "redirectUri": "hv3MNbY4", "secret": "LQPyANxN", "ssoUrl": "lanLYx0K"}' \
    > test.out 2>&1
eval_tap $? 138 'UpdateSSOPlatformCredential' test.out

#- 139 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'cECRhV5s' \
    --platformUserId 'Yd1gCZNf' \
    > test.out 2>&1
eval_tap $? 139 'AdminGetUserByPlatformUserIDV3' test.out

#- 140 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'OQ5zlJYF' \
    --after '1' \
    --before '43' \
    --limit '16' \
    > test.out 2>&1
eval_tap $? 140 'GetAdminUsersByRoleIdV3' test.out

#- 141 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'DiTYJpuD' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByEmailAddressV3' test.out

#- 142 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["2Hh0DTIH", "kXH8OtnR", "HRq76Mu6"]}' \
    > test.out 2>&1
eval_tap $? 142 'AdminListUserIDByUserIDsV3' test.out

#- 143 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["7oR4yTiQ", "Xdzh02yH", "nqoc2HEr"], "isAdmin": false, "roles": ["0CADQMaT", "7pzx7NV7", "AcipkRg6"]}' \
    > test.out 2>&1
eval_tap $? 143 'AdminInviteUserV3' test.out

#- 144 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUsersV3' test.out

#- 145 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'YgpkRaTE' \
    --endDate 'D91HR6qF' \
    --limit '58' \
    --offset '73' \
    --platformBy 'ZLjw9Xzu' \
    --platformId 'BX8rxqHS' \
    --query 'BMFn69vL' \
    --startDate 'R6GQ5KHu' \
    > test.out 2>&1
eval_tap $? 145 'AdminSearchUserV3' test.out

#- 146 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["b0IMz5b4", "UXnF2CnA", "v3WooFPo"]}' \
    > test.out 2>&1
eval_tap $? 146 'AdminGetBulkUserByEmailAddressV3' test.out

#- 147 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ADfBvgUx' \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByUserIdV3' test.out

#- 148 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zbo3Jr4F' \
    --body '{"avatarUrl": "C53kviNW", "country": "ZUuhwTja", "dateOfBirth": "5VXrzEWz", "displayName": "QzNM2Bz7", "languageTag": "Ba4X9rSs", "userName": "wRLeQLdW"}' \
    > test.out 2>&1
eval_tap $? 148 'AdminUpdateUserV3' test.out

#- 149 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'oMcF3esL' \
    --activeOnly 'true' \
    --after 'kGbx78zy' \
    --before 'jx9M7MlO' \
    --limit '18' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetUserBanV3' test.out

#- 150 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tppSmh6Q' \
    --body '{"ban": "HryHBtsl", "comment": "PAG2H5ve", "endDate": "qfFnp2R8", "reason": "Pxxyb0Jp", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 150 'AdminBanUserV3' test.out

#- 151 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'KKZyNRvp' \
    --namespace $AB_NAMESPACE \
    --userId 'uXlEu8Hr' \
    --body '{"enabled": true, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserBanV3' test.out

#- 152 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'D6bF8tfs' \
    --body '{"context": "1GieHSRO", "emailAddress": "NxVxG1xW", "languageTag": "W7FohavG"}' \
    > test.out 2>&1
eval_tap $? 152 'AdminSendVerificationCodeV3' test.out

#- 153 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'aNX6SONo' \
    --body '{"Code": "RkgTio6C", "ContactType": "ab0jNKDg", "LanguageTag": "zwAD5TgN", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 153 'AdminVerifyAccountV3' test.out

#- 154 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'cFyC9eSU' \
    > test.out 2>&1
eval_tap $? 154 'GetUserVerificationCode' test.out

#- 155 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'N5esSWJL' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetUserDeletionStatusV3' test.out

#- 156 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '4ZM9fIZ7' \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 156 'AdminUpdateUserDeletionStatusV3' test.out

#- 157 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CxPOX9eS' \
    --body '{"code": "PRIy4J4h", "country": "zedcnyhw", "dateOfBirth": "rNphauQt", "displayName": "Y6J4v8fR", "emailAddress": "wqYBDzBp", "password": "WhB1hnLJ", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpgradeHeadlessAccountV3' test.out

#- 158 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'uScLDHAY' \
    > test.out 2>&1
eval_tap $? 158 'AdminDeleteUserInformationV3' test.out

#- 159 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'oHxshOcR' \
    --after '0.02043850910260503' \
    --before '0.9936994478044523' \
    --limit '85' \
    > test.out 2>&1
eval_tap $? 159 'AdminGetUserLoginHistoriesV3' test.out

#- 160 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'HZKKxeDb' \
    --body '{"Permissions": [{"Action": 76, "Resource": "otfAKMFb", "SchedAction": 98, "SchedCron": "BYjncEU7", "SchedRange": ["IL7sg9Fh", "xmgRNsJE", "VrMA3i42"]}, {"Action": 40, "Resource": "v8MoTT5b", "SchedAction": 54, "SchedCron": "dOEhKZgI", "SchedRange": ["Fkqmesfp", "oPeQeuoT", "Xa7rjTu4"]}, {"Action": 41, "Resource": "ggmz2ZkY", "SchedAction": 91, "SchedCron": "z98do6f4", "SchedRange": ["nCzJOUL4", "3DOMTZfr", "iISCoUoL"]}]}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserPermissionV3' test.out

#- 161 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EyqiKRO1' \
    --body '{"Permissions": [{"Action": 96, "Resource": "p34qcFHP", "SchedAction": 74, "SchedCron": "vOvAIKtc", "SchedRange": ["yET7RY9D", "cvdiQ2ow", "UC49QWFk"]}, {"Action": 16, "Resource": "F1M8kOuf", "SchedAction": 92, "SchedCron": "1GCFLlfZ", "SchedRange": ["XTPf018S", "cemdpRkE", "fQmxR1Bm"]}, {"Action": 75, "Resource": "YUzIoiqL", "SchedAction": 93, "SchedCron": "U8h1ibrJ", "SchedRange": ["kkAmeaSw", "9YZnf0wy", "VT4uQM8v"]}]}' \
    > test.out 2>&1
eval_tap $? 161 'AdminAddUserPermissionsV3' test.out

#- 162 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dIOB13dG' \
    --body '[{"Action": 3, "Resource": "VMvmedPT"}, {"Action": 100, "Resource": "dVJrI1Cm"}, {"Action": 21, "Resource": "TvB1F2fX"}]' \
    > test.out 2>&1
eval_tap $? 162 'AdminDeleteUserPermissionBulkV3' test.out

#- 163 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '39' \
    --namespace $AB_NAMESPACE \
    --resource 'CPX516kM' \
    --userId '6DEutT2d' \
    > test.out 2>&1
eval_tap $? 163 'AdminDeleteUserPermissionV3' test.out

#- 164 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '6j1fKUIq' \
    --after '4Ob0tDGU' \
    --before 'kYRl7Tnc' \
    --limit '58' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserPlatformAccountsV3' test.out

#- 165 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId '1HwTkEY6' \
    > test.out 2>&1
eval_tap $? 165 'AdminGetListJusticePlatformAccounts' test.out

#- 166 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'SV50cE5v' \
    --userId 'gOEvE8K5' \
    > test.out 2>&1
eval_tap $? 166 'AdminCreateJusticeUser' test.out

#- 167 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'Sz29aD1d' \
    --body '{"platformId": "HEFKdoLY", "platformUserId": "pMQybj3H"}' \
    > test.out 2>&1
eval_tap $? 167 'AdminLinkPlatformAccount' test.out

#- 168 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'IGa5obLL' \
    --userId '3trfK05p' \
    --body '{"platformNamespace": "QxNbcOE9"}' \
    > test.out 2>&1
eval_tap $? 168 'AdminPlatformUnlinkV3' test.out

#- 169 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'F8ajeFoP' \
    --userId '4wKOr9Pl' \
    --ticket 'MZzWE0MG' \
    > test.out 2>&1
eval_tap $? 169 'AdminPlatformLinkV3' test.out

#- 170 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ERf3T8IE' \
    --body '["fTvPORbU", "7AucXy3M", "LNsTtW1H"]' \
    > test.out 2>&1
eval_tap $? 170 'AdminDeleteUserRolesV3' test.out

#- 171 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UOdPZyYI' \
    --body '[{"namespace": "4GCnM8FF", "roleId": "s1hRUAuP"}, {"namespace": "dRXoRtnn", "roleId": "8lFbrzx4"}, {"namespace": "PDSsnmH5", "roleId": "iDJVBxHv"}]' \
    > test.out 2>&1
eval_tap $? 171 'AdminSaveUserRoleV3' test.out

#- 172 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'ESvOX4fY' \
    --userId '5PPNw0rs' \
    > test.out 2>&1
eval_tap $? 172 'AdminAddUserRoleV3' test.out

#- 173 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'uyAhvsbi' \
    --userId 'GhqSDerx' \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserRoleV3' test.out

#- 174 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '4jcvv9sO' \
    --body '{"enabled": true, "reason": "PMJ4NSu0"}' \
    > test.out 2>&1
eval_tap $? 174 'AdminUpdateUserStatusV3' test.out

#- 175 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 's2nnNpmU' \
    > test.out 2>&1
eval_tap $? 175 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 176 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'Mk1q6vjN' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "oHVwdUCr"}' \
    > test.out 2>&1
eval_tap $? 176 'AdminUpdateClientSecretV3' test.out

#- 177 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'ku3xyEmB' \
    --before '2iy0TklJ' \
    --isWildcard 'false' \
    --limit '44' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetRolesV3' test.out

#- 178 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "managers": [{"displayName": "3ti9ks8g", "namespace": "CAzApBjN", "userId": "qu5Majtb"}, {"displayName": "w6428bfU", "namespace": "Uxc83Okm", "userId": "ub3MQQ3E"}, {"displayName": "2N98ZEK6", "namespace": "fT5qLX1M", "userId": "Go8I8RoL"}], "members": [{"displayName": "ause6jsL", "namespace": "RArli2ft", "userId": "RawYukrP"}, {"displayName": "aeT8f4M4", "namespace": "ns4Cfger", "userId": "zVyD2dSo"}, {"displayName": "27heCJ6Q", "namespace": "MA8MFJKV", "userId": "QXI9uhhA"}], "permissions": [{"action": 84, "resource": "dVMoFole", "schedAction": 52, "schedCron": "rlMYCiOw", "schedRange": ["YzdQ2u5W", "iTWpNxT1", "pURot6HE"]}, {"action": 34, "resource": "ThcHBUJZ", "schedAction": 61, "schedCron": "qCHAwgpO", "schedRange": ["zRlgaJ1y", "HTO3T7TL", "B6F7dxET"]}, {"action": 57, "resource": "aEMio4TH", "schedAction": 10, "schedCron": "L4oueBWP", "schedRange": ["l18zaJcM", "aSsuh7Ef", "528ZqiHN"]}], "roleName": "HShpkz0X"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminCreateRoleV3' test.out

#- 179 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'B3mi3eFP' \
    > test.out 2>&1
eval_tap $? 179 'AdminGetRoleV3' test.out

#- 180 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'E6N9Bfz6' \
    > test.out 2>&1
eval_tap $? 180 'AdminDeleteRoleV3' test.out

#- 181 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'R9iZX6oB' \
    --body '{"deletable": false, "isWildcard": true, "roleName": "bv0dfTyS"}' \
    > test.out 2>&1
eval_tap $? 181 'AdminUpdateRoleV3' test.out

#- 182 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'hHW171Hi' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetRoleAdminStatusV3' test.out

#- 183 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'GBRPknlp' \
    > test.out 2>&1
eval_tap $? 183 'AdminUpdateAdminRoleStatusV3' test.out

#- 184 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'SgI2H0Ih' \
    > test.out 2>&1
eval_tap $? 184 'AdminRemoveRoleAdminV3' test.out

#- 185 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId '5VdTAERK' \
    --after 'V2h7oNlD' \
    --before 'u8K3wVSK' \
    --limit '0' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleManagersV3' test.out

#- 186 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'aeKJq2W2' \
    --body '{"managers": [{"displayName": "hzfr0S2d", "namespace": "kLgRqRAM", "userId": "NODbfnAe"}, {"displayName": "ve3xDHdJ", "namespace": "1jvqIRUF", "userId": "0Q6C5Iuz"}, {"displayName": "jY3aK0Rh", "namespace": "7lnzRXHo", "userId": "3nMVgoVW"}]}' \
    > test.out 2>&1
eval_tap $? 186 'AdminAddRoleManagersV3' test.out

#- 187 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'ZFrNYTJO' \
    --body '{"managers": [{"displayName": "4OkDRV0Y", "namespace": "74T1bnXx", "userId": "Ycg4J05Z"}, {"displayName": "UfN9RSaZ", "namespace": "ITitozzA", "userId": "MbSXuGtm"}, {"displayName": "adzRTZa3", "namespace": "4qZ7Erhz", "userId": "WNBGZ1Nl"}]}' \
    > test.out 2>&1
eval_tap $? 187 'AdminRemoveRoleManagersV3' test.out

#- 188 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'AbzVwnBI' \
    --after '9tW5AW7I' \
    --before 'sl5gkEe7' \
    --limit '54' \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleMembersV3' test.out

#- 189 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'mBLZekPR' \
    --body '{"members": [{"displayName": "MwdjryVs", "namespace": "QejdSfU3", "userId": "JuaPQP6u"}, {"displayName": "rmQInUcK", "namespace": "p4VPcHOD", "userId": "Kgef2haP"}, {"displayName": "cy2MbKvy", "namespace": "gacHvgfm", "userId": "A6k9qCBa"}]}' \
    > test.out 2>&1
eval_tap $? 189 'AdminAddRoleMembersV3' test.out

#- 190 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId '61phgGYQ' \
    --body '{"members": [{"displayName": "mM0yePqm", "namespace": "AuNS6klr", "userId": "KPvI8QC3"}, {"displayName": "CD9n1HJ7", "namespace": "Mit3tSC9", "userId": "99Tk1rEG"}, {"displayName": "TVI8SWr0", "namespace": "ZdAfcx1d", "userId": "SNDn52rx"}]}' \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleMembersV3' test.out

#- 191 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'TJtiLhwm' \
    --body '{"permissions": [{"action": 39, "resource": "uDdXOu45", "schedAction": 53, "schedCron": "lYIWN8Ul", "schedRange": ["e2B56d2y", "4u9IBIzx", "Ku0UJRvu"]}, {"action": 1, "resource": "KCLbN87m", "schedAction": 80, "schedCron": "ACB2l9sn", "schedRange": ["r8ulY670", "Pa3b7vgv", "rLmR75he"]}, {"action": 26, "resource": "NzUZJlk4", "schedAction": 43, "schedCron": "EhMwFcii", "schedRange": ["zZpIBAh0", "dd6UDv8R", "YjZFph8e"]}]}' \
    > test.out 2>&1
eval_tap $? 191 'AdminUpdateRolePermissionsV3' test.out

#- 192 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'aAllHSpq' \
    --body '{"permissions": [{"action": 21, "resource": "K4GkuDRG", "schedAction": 46, "schedCron": "KTEQShF3", "schedRange": ["D5PajQ0U", "xkVl4m7R", "LOslWJtd"]}, {"action": 49, "resource": "LuhmBxY6", "schedAction": 35, "schedCron": "KT0wYA1B", "schedRange": ["6GGMGin2", "eR6NhtUA", "HLAvxwCX"]}, {"action": 5, "resource": "GAc61ygz", "schedAction": 33, "schedCron": "YzMleHNf", "schedRange": ["Or2lSAOf", "GJvNMPK5", "FemKzz4S"]}]}' \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRolePermissionsV3' test.out

#- 193 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'uHnSIrG8' \
    --body '["PhF450Es", "d43A80ox", "WWrJwMjI"]' \
    > test.out 2>&1
eval_tap $? 193 'AdminDeleteRolePermissionsV3' test.out

#- 194 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '21' \
    --resource 'nYZ44P2s' \
    --roleId 'X6Zov0Xr' \
    > test.out 2>&1
eval_tap $? 194 'AdminDeleteRolePermissionV3' test.out

#- 195 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 195 'AdminGetMyUserV3' test.out

#- 196 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId '8LIoiIWq' \
    --extendExp 'false' \
    --redirectUri 'KVxeSsSx' \
    --password 'uPJQ3r7p' \
    --requestId 'WH48v9lS' \
    --userName 'nrypOmLA' \
    > test.out 2>&1
eval_tap $? 196 'UserAuthenticationV3' test.out

#- 197 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'ZN8AhfOe' \
    --linkingToken 'CucyVgeh' \
    --password '2p8u6yBq' \
    --username 'rv10GCnh' \
    > test.out 2>&1
eval_tap $? 197 'AuthenticationWithPlatformLinkV3' test.out

#- 198 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'false' \
    --linkingToken 'dVzPH3C2' \
    > test.out 2>&1
eval_tap $? 198 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 199 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 199 'GetCountryLocationV3' test.out

#- 200 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 200 'Logout' test.out

#- 201 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'tMubvtbx' \
    --userId 'a3C1qE6t' \
    > test.out 2>&1
eval_tap $? 201 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 202 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'v4CUnYhS' \
    > test.out 2>&1
eval_tap $? 202 'RevokeUserV3' test.out

#- 203 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'vRGMtYCc' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'true' \
    --redirectUri 'VVnm6YDt' \
    --scope 'pmBnfrrs' \
    --state 'Jf6NTGKK' \
    --targetAuthPage '97VXMe46' \
    --clientId 'ndmtF0Vn' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 203 'AuthorizeV3' test.out

#- 204 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'H5r5rbSV' \
    > test.out 2>&1
eval_tap $? 204 'TokenIntrospectionV3' test.out

#- 205 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 205 'GetJWKSV3' test.out

#- 206 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'dq7BrvJE' \
    --mfaToken 'LMya9csO' \
    > test.out 2>&1
eval_tap $? 206 'Change2faMethod' test.out

#- 207 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code '3YnEkAeY' \
    --factor 'rAF9XPNJ' \
    --mfaToken 'TRuvRU58' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 207 'Verify2faCode' test.out

#- 208 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'WFORsp6u' \
    --userId 'Ds8QhHVq' \
    > test.out 2>&1
eval_tap $? 208 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 209 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'WJLdpchR' \
    --clientId 'HS32HgIG' \
    --redirectUri 'qyzRmUz4' \
    --requestId 'AIwAubJA' \
    > test.out 2>&1
eval_tap $? 209 'AuthCodeRequestV3' test.out

#- 210 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'r7fgj3x0' \
    --clientId 'gRICBMoU' \
    --createHeadless 'true' \
    --deviceId 'lRNqhf0i' \
    --platformToken 'uCU1Aiht' \
    > test.out 2>&1
eval_tap $? 210 'PlatformTokenGrantV3' test.out

#- 211 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 211 'GetRevocationListV3' test.out

#- 212 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'zg3ON3S3' \
    > test.out 2>&1
eval_tap $? 212 'TokenRevocationV3' test.out

#- 213 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --clientId 'OXTkm2ik' \
    --code 'Td0ynGbM' \
    --codeVerifier 'pCwZyGjf' \
    --extendExp 'true' \
    --password '1ywQqFrf' \
    --redirectUri 'LoR1MTSj' \
    --refreshToken 'P2us95yT' \
    --username 'Vi2n5G5b' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 213 'TokenGrantV3' test.out

#- 214 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'IA1gQNLc' \
    > test.out 2>&1
eval_tap $? 214 'VerifyTokenV3' test.out

#- 215 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'oUyA3o0H' \
    --code 'CJjXv4YF' \
    --error 'COz8WYOu' \
    --openidAssocHandle 'BFFoZSrj' \
    --openidClaimedId 'atyPq4oD' \
    --openidIdentity 'Dv0zHzOO' \
    --openidMode 'BQNTAcwd' \
    --openidNs 'VgIFUjOI' \
    --openidOpEndpoint 'FfW7j1YN' \
    --openidResponseNonce 'eUNi6a6o' \
    --openidReturnTo '0XDLwp8H' \
    --openidSig 'msDw4kX0' \
    --openidSigned 'ldTeBoHK' \
    --state 'X4RWHj6A' \
    > test.out 2>&1
eval_tap $? 215 'PlatformAuthenticationV3' test.out

#- 216 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode '8Fl0qL47' \
    > test.out 2>&1
eval_tap $? 216 'PublicGetInputValidations' test.out

#- 217 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 217 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 218 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'TOk0ePvl' \
    > test.out 2>&1
eval_tap $? 218 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 219 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId '2YuIznZQ' \
    --body '{"platformUserIds": ["4lSTacit", "CttWPzyE", "G0UE0LEl"]}' \
    > test.out 2>&1
eval_tap $? 219 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 220 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'M1fhCbjO' \
    --platformUserId 'anq6uI4r' \
    > test.out 2>&1
eval_tap $? 220 'PublicGetUserByPlatformUserIDV3' test.out

#- 221 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'wBtYTmPk' \
    > test.out 2>&1
eval_tap $? 221 'PublicGetAsyncStatus' test.out

#- 222 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'GQRkWl3S' \
    --limit '23' \
    --offset '7' \
    --query 'E0heihEx' \
    > test.out 2>&1
eval_tap $? 222 'PublicSearchUserV3' test.out

#- 223 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "qzu4DFms", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "56ii4dOO", "policyId": "GN5RnOaN", "policyVersionId": "iyc85jV1"}, {"isAccepted": false, "localizedPolicyVersionId": "UianXObQ", "policyId": "62hTcfZw", "policyVersionId": "ZuI5PHSO"}, {"isAccepted": false, "localizedPolicyVersionId": "w85vOKnx", "policyId": "ug8QdV8L", "policyVersionId": "mG5jIZgs"}], "authType": "kUYSIzLT", "code": "4ktNYvWG", "country": "oUDbAbg2", "dateOfBirth": "AHbiURRc", "displayName": "otV48xCT", "emailAddress": "rfWcnftu", "password": "QqB6TTq8", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 223 'PublicCreateUserV3' test.out

#- 224 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'rDYuW9Lf' \
    --query 'dVaTGFOK' \
    > test.out 2>&1
eval_tap $? 224 'CheckUserAvailability' test.out

#- 225 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["AAOIafMO", "xXBuzMyA", "XqVbBFfU"]}' \
    > test.out 2>&1
eval_tap $? 225 'PublicBulkGetUsers' test.out

#- 226 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "9uFqy1k0", "languageTag": "AE7aIUWA"}' \
    > test.out 2>&1
eval_tap $? 226 'PublicSendRegistrationCode' test.out

#- 227 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "uXsDh5Xn", "emailAddress": "Eg0WTzde"}' \
    > test.out 2>&1
eval_tap $? 227 'PublicVerifyRegistrationCode' test.out

#- 228 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "LGQ43ERg", "languageTag": "PE34bdrZ"}' \
    > test.out 2>&1
eval_tap $? 228 'PublicForgotPasswordV3' test.out

#- 229 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'WtiybVSV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 229 'GetAdminInvitationV3' test.out

#- 230 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId '19UxJ7Ih' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "IkYAhWhv", "policyId": "4cM0fMwF", "policyVersionId": "3P9Xin7f"}, {"isAccepted": false, "localizedPolicyVersionId": "4HQnLKm1", "policyId": "9obewtUZ", "policyVersionId": "FTa7CbPX"}, {"isAccepted": true, "localizedPolicyVersionId": "U0fPZPQP", "policyId": "v8T7Ls9D", "policyVersionId": "GnSjyuH6"}], "authType": "EMAILPASSWD", "country": "PfLjJ0mj", "dateOfBirth": "JygBoArS", "displayName": "JJG8Q5Lv", "password": "RiFsTPuK", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 230 'CreateUserFromInvitationV3' test.out

#- 231 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "9J6r6iwO", "country": "HRtoRxK8", "dateOfBirth": "kydWhaFp", "displayName": "w7q9X5dZ", "languageTag": "oFJ6ssrp", "userName": "MSJe5iUG"}' \
    > test.out 2>&1
eval_tap $? 231 'UpdateUserV3' test.out

#- 232 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "tYR5ivXp", "country": "qdq9h9uQ", "dateOfBirth": "SmZcOvDu", "displayName": "6Z1RiTv7", "languageTag": "MQ9YkKdq", "userName": "Zc7FXz6r"}' \
    > test.out 2>&1
eval_tap $? 232 'PublicPartialUpdateUserV3' test.out

#- 233 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "vwyHVOvX", "emailAddress": "gwjJ0YIO", "languageTag": "0IyczPNK"}' \
    > test.out 2>&1
eval_tap $? 233 'PublicSendVerificationCodeV3' test.out

#- 234 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ZlmrmHzK", "contactType": "53R2xAN7", "languageTag": "Xb53DFKz", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 234 'PublicUserVerificationV3' test.out

#- 235 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "b1VKQOdz", "country": "JDNyRBMz", "dateOfBirth": "RSOxcrXM", "displayName": "7waMcHZE", "emailAddress": "dz76Xyhu", "password": "gPCyWEFY", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 235 'PublicUpgradeHeadlessAccountV3' test.out

#- 236 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "aFMyZuOJ", "password": "Jv7Zud80"}' \
    > test.out 2>&1
eval_tap $? 236 'PublicVerifyHeadlessAccountV3' test.out

#- 237 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "NeE0liJA", "newPassword": "TnNqPPMM", "oldPassword": "n9Ro5yX5"}' \
    > test.out 2>&1
eval_tap $? 237 'PublicUpdatePasswordV3' test.out

#- 238 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'Bt7kzmJ8' \
    > test.out 2>&1
eval_tap $? 238 'PublicCreateJusticeUser' test.out

#- 239 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Ze58CSpO' \
    --redirectUri 'WIcT84tn' \
    --ticket 'tt7BhXMm' \
    > test.out 2>&1
eval_tap $? 239 'PublicPlatformLinkV3' test.out

#- 240 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'dWp2Tync' \
    --body '{"platformNamespace": "oGaqpuYF"}' \
    > test.out 2>&1
eval_tap $? 240 'PublicPlatformUnlinkV3' test.out

#- 241 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'rFsBFv1n' \
    > test.out 2>&1
eval_tap $? 241 'PublicPlatformUnlinkAllV3' test.out

#- 242 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId '6qIUjYX7' \
    --clientId 'HfYDU5sb' \
    --redirectUri 'HosgKO7t' \
    > test.out 2>&1
eval_tap $? 242 'PublicWebLinkPlatform' test.out

#- 243 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'uJOrwKfx' \
    --state 'byeR2NjV' \
    > test.out 2>&1
eval_tap $? 243 'PublicWebLinkPlatformEstablish' test.out

#- 244 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "A3FVlY4j", "emailAddress": "xuROt8yT", "newPassword": "uaK8sQ6m"}' \
    > test.out 2>&1
eval_tap $? 244 'ResetPasswordV3' test.out

#- 245 PublicGetUserByUserIdV3
samples/cli/sample-apps Iam publicGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xThQqLML' \
    > test.out 2>&1
eval_tap $? 245 'PublicGetUserByUserIdV3' test.out

#- 246 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId '2QOn71oC' \
    --activeOnly 'true' \
    --after 'FQCc0gBy' \
    --before 'OGUqlkHT' \
    --limit '47' \
    > test.out 2>&1
eval_tap $? 246 'PublicGetUserBanHistoryV3' test.out

#- 247 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VaBipAH6' \
    > test.out 2>&1
eval_tap $? 247 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 248 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TE5V8oPd' \
    --after '0.6633159293773733' \
    --before '0.36013236664434667' \
    --limit '6' \
    > test.out 2>&1
eval_tap $? 248 'PublicGetUserLoginHistoriesV3' test.out

#- 249 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'KQQNGtVa' \
    --after 'y1TDKXoN' \
    --before 'nZFq3hO9' \
    --limit '42' \
    > test.out 2>&1
eval_tap $? 249 'PublicGetUserPlatformAccountsV3' test.out

#- 250 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'OWQXFZsv' \
    --body '{"platformId": "zL1F1VAu", "platformUserId": "OSvd3kFs"}' \
    > test.out 2>&1
eval_tap $? 250 'PublicLinkPlatformAccount' test.out

#- 251 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'vOaLATBz' \
    --body '{"chosenNamespaces": ["bRJPcK7I", "mRzXoFh1", "OE0lVs0U"], "requestId": "mYeSTZgz"}' \
    > test.out 2>&1
eval_tap $? 251 'PublicForceLinkPlatformWithProgression' test.out

#- 252 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Tk5pAUG3' \
    > test.out 2>&1
eval_tap $? 252 'PublicGetPublisherUserV3' test.out

#- 253 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vspuYjaC' \
    --password '1aN2cVLU' \
    > test.out 2>&1
eval_tap $? 253 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 254 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'PMO2h6Ha' \
    --before 'bhrknq0v' \
    --isWildcard 'true' \
    --limit '0' \
    > test.out 2>&1
eval_tap $? 254 'PublicGetRolesV3' test.out

#- 255 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'YUeWrtLY' \
    > test.out 2>&1
eval_tap $? 255 'PublicGetRoleV3' test.out

#- 256 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 256 'PublicGetMyUserV3' test.out

#- 257 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'xZuFmxqa' \
    --code '5PywXy0W' \
    --error 'V7mcWk5g' \
    --state 'gfYHKJrE' \
    > test.out 2>&1
eval_tap $? 257 'PlatformAuthenticateSAMLV3Handler' test.out

#- 258 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'rGzTGdHj' \
    --payload 'vrcBfdu4' \
    > test.out 2>&1
eval_tap $? 258 'LoginSSOClient' test.out

#- 259 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'REbx9ulP' \
    > test.out 2>&1
eval_tap $? 259 'LogoutSSOClient' test.out

#- 260 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 69}' \
    > test.out 2>&1
eval_tap $? 260 'AdminCreateTestUsersV4' test.out

#- 261 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["UwUJVN11", "84LEndle", "Q682pqJ6"]}' \
    > test.out 2>&1
eval_tap $? 261 'AdminBulkCheckValidUserIDV4' test.out

#- 262 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '29pevPJZ' \
    --body '{"avatarUrl": "G8MSEblV", "country": "fbzYbeYI", "dateOfBirth": "63Dww591", "displayName": "r7RxXaYM", "languageTag": "s0CYx4L1", "userName": "kFs6k3Q5"}' \
    > test.out 2>&1
eval_tap $? 262 'AdminUpdateUserV4' test.out

#- 263 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'GZ7C5E3x' \
    --body '{"code": "uJunK58v", "emailAddress": "afHrY43I"}' \
    > test.out 2>&1
eval_tap $? 263 'AdminUpdateUserEmailAddressV4' test.out

#- 264 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId '6xu3ZpxR' \
    > test.out 2>&1
eval_tap $? 264 'AdminDisableUserMFAV4' test.out

#- 265 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ty3knkRu' \
    > test.out 2>&1
eval_tap $? 265 'AdminListUserRolesV4' test.out

#- 266 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '7qxlsmZG' \
    --body '{"assignedNamespaces": ["oI5HV0Xc", "lTxv1dtq", "jzITRDWs"], "roleId": "JLZhjUMC"}' \
    > test.out 2>&1
eval_tap $? 266 'AdminUpdateUserRoleV4' test.out

#- 267 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'uRW9g5iB' \
    --body '{"assignedNamespaces": ["jUWlsH2H", "T5M6e2Dc", "DbTBPwtK"], "roleId": "BYrlzHmg"}' \
    > test.out 2>&1
eval_tap $? 267 'AdminAddUserRoleV4' test.out

#- 268 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'JPVxJWPb' \
    --body '{"assignedNamespaces": ["Do9G5fxu", "9MrOeF0k", "tSFiuSwG"], "roleId": "5mfZQzAO"}' \
    > test.out 2>&1
eval_tap $? 268 'AdminRemoveUserRoleV4' test.out

#- 269 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'false' \
    --limit '69' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 269 'AdminGetRolesV4' test.out

#- 270 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "6LkzvJ6d"}' \
    > test.out 2>&1
eval_tap $? 270 'AdminCreateRoleV4' test.out

#- 271 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'S4S9VDWX' \
    > test.out 2>&1
eval_tap $? 271 'AdminGetRoleV4' test.out

#- 272 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'lqCKpS6n' \
    > test.out 2>&1
eval_tap $? 272 'AdminDeleteRoleV4' test.out

#- 273 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'yJy3gBOR' \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "QRGHod8m"}' \
    > test.out 2>&1
eval_tap $? 273 'AdminUpdateRoleV4' test.out

#- 274 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'vy7BcZeU' \
    --body '{"permissions": [{"action": 35, "resource": "jVKNCUdH", "schedAction": 73, "schedCron": "lStzjfcT", "schedRange": ["jpGot3tW", "DDKJg4B8", "3qpMx02E"]}, {"action": 15, "resource": "k0pOrPDA", "schedAction": 78, "schedCron": "UKxQXm89", "schedRange": ["d5gvRcHw", "7CfdATcB", "DZE5JXoI"]}, {"action": 38, "resource": "Xr4Ce5kl", "schedAction": 76, "schedCron": "xt0jCtO3", "schedRange": ["sJgfPjw6", "uXwtrKxb", "wF2NhKCk"]}]}' \
    > test.out 2>&1
eval_tap $? 274 'AdminUpdateRolePermissionsV4' test.out

#- 275 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'iBhkvR1Z' \
    --body '{"permissions": [{"action": 5, "resource": "2UWSDoyv", "schedAction": 76, "schedCron": "aq0DbaDx", "schedRange": ["YRFTYH5N", "NmeHVkGR", "JXdQiQCp"]}, {"action": 97, "resource": "NR5wlUQA", "schedAction": 10, "schedCron": "06S7Kpgw", "schedRange": ["w21MTokb", "8zlOE5JF", "ZPdDcPYG"]}, {"action": 48, "resource": "Yxt4bC8b", "schedAction": 31, "schedCron": "M5v3jSCZ", "schedRange": ["oIKVf9vX", "TWEYFHzh", "VfRsNCYe"]}]}' \
    > test.out 2>&1
eval_tap $? 275 'AdminAddRolePermissionsV4' test.out

#- 276 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'K9E01wQg' \
    --body '["4Hs9uz4y", "kiZDRZor", "N9386lv1"]' \
    > test.out 2>&1
eval_tap $? 276 'AdminDeleteRolePermissionsV4' test.out

#- 277 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'q06JGrd0' \
    --after 'VZADyCFx' \
    --before 'TjY6TQgy' \
    --limit '6' \
    > test.out 2>&1
eval_tap $? 277 'AdminListAssignedUsersV4' test.out

#- 278 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'tuxgVw8o' \
    --body '{"assignedNamespaces": ["5W2gCO9U", "gVInEjKc", "y7ilqVHH"], "namespace": "9iRVJ7Mo", "userId": "h8e4YDoM"}' \
    > test.out 2>&1
eval_tap $? 278 'AdminAssignUserToRoleV4' test.out

#- 279 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'V77rG8Gl' \
    --body '{"namespace": "ONnkjAqp", "userId": "26VgO3te"}' \
    > test.out 2>&1
eval_tap $? 279 'AdminRevokeUserFromRoleV4' test.out

#- 280 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "ul5eucRf", "country": "YErBKU9L", "dateOfBirth": "uz3SC7U1", "displayName": "Sx4s6u0S", "languageTag": "yOo2WdeY", "userName": "mArxgOoR"}' \
    > test.out 2>&1
eval_tap $? 280 'AdminUpdateMyUserV4' test.out

#- 281 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 281 'AdminDisableMyAuthenticatorV4' test.out

#- 282 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'NNTOKMyl' \
    > test.out 2>&1
eval_tap $? 282 'AdminEnableMyAuthenticatorV4' test.out

#- 283 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 283 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 284 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 284 'AdminGetMyBackupCodesV4' test.out

#- 285 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 285 'AdminGenerateMyBackupCodesV4' test.out

#- 286 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 286 'AdminDisableMyBackupCodesV4' test.out

#- 287 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 287 'AdminDownloadMyBackupCodesV4' test.out

#- 288 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 288 'AdminEnableMyBackupCodesV4' test.out

#- 289 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 289 'AdminGetMyEnabledFactorsV4' test.out

#- 290 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'SOD4q1gU' \
    > test.out 2>&1
eval_tap $? 290 'AdminMakeFactorMyDefaultV4' test.out

#- 291 AdminInviteUserV4
samples/cli/sample-apps Iam adminInviteUserV4 \
    --body '{"assignedNamespaces": ["NcjXFSoF", "Tb1aTJ9y", "pXwYMrjt"], "emailAddresses": ["qlsdHAqP", "URSIkQ59", "BjEvH7Wg"], "isAdmin": false, "roleId": "9PTwZ9TG"}' \
    > test.out 2>&1
eval_tap $? 291 'AdminInviteUserV4' test.out

#- 292 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "oOGM3mlg", "policyId": "CCLgz5re", "policyVersionId": "4Pg7dkyG"}, {"isAccepted": true, "localizedPolicyVersionId": "xB9b8HwQ", "policyId": "BS5itTOL", "policyVersionId": "yn8zgS88"}, {"isAccepted": true, "localizedPolicyVersionId": "ruuJrSX5", "policyId": "0EuhN2Ok", "policyVersionId": "ou7JWJsg"}], "authType": "EMAILPASSWD", "country": "X2lZEidt", "dateOfBirth": "0UnarVLK", "displayName": "yvJeeXDX", "emailAddress": "yFXVw8cj", "password": "3fxxVacI", "passwordMD5Sum": "IoDmAMUu", "username": "UTErnIQ6", "verified": false}' \
    > test.out 2>&1
eval_tap $? 292 'PublicCreateTestUserV4' test.out

#- 293 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "lDwGyKze", "policyId": "k05zcsmn", "policyVersionId": "GvtzZzkN"}, {"isAccepted": false, "localizedPolicyVersionId": "3gBqPU85", "policyId": "h4EeYU5r", "policyVersionId": "J5C4gLgc"}, {"isAccepted": true, "localizedPolicyVersionId": "bg8k5GrC", "policyId": "sJVUlSFR", "policyVersionId": "uhVHmAws"}], "authType": "EMAILPASSWD", "code": "OhIffxr4", "country": "8Kwavi9m", "dateOfBirth": "8l4ZIw0J", "displayName": "cS2JXbUQ", "emailAddress": "haPiHZ4r", "password": "3rmSsjej", "passwordMD5Sum": "nHXo17EE", "reachMinimumAge": true, "username": "QDEAz8vM"}' \
    > test.out 2>&1
eval_tap $? 293 'PublicCreateUserV4' test.out

#- 294 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'Ysdh4zQG' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "Ip7xZ7vZ", "policyId": "AmaHt87I", "policyVersionId": "xWkiOuTC"}, {"isAccepted": false, "localizedPolicyVersionId": "933mvSWG", "policyId": "Tz5HkzNR", "policyVersionId": "j3PHqGma"}, {"isAccepted": true, "localizedPolicyVersionId": "Fq7aXF76", "policyId": "uhXg1Q1O", "policyVersionId": "oGO4eCWO"}], "authType": "EMAILPASSWD", "country": "J9jWR0GA", "dateOfBirth": "BUm76z6v", "displayName": "mJ3vx7Rr", "password": "vS0IuNYZ", "reachMinimumAge": true, "username": "GBwiT8mZ"}' \
    > test.out 2>&1
eval_tap $? 294 'CreateUserFromInvitationV4' test.out

#- 295 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "BP6rTFcN", "country": "DvLHGprn", "dateOfBirth": "S3nFmi2Q", "displayName": "kiZOw6Qt", "languageTag": "SFQVImEj", "userName": "hPvFbgPm"}' \
    > test.out 2>&1
eval_tap $? 295 'PublicUpdateUserV4' test.out

#- 296 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "43fgV9Oj", "emailAddress": "jDu2S2t6"}' \
    > test.out 2>&1
eval_tap $? 296 'PublicUpdateUserEmailAddressV4' test.out

#- 297 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "aK6wZqUd", "country": "dFoHmN3v", "dateOfBirth": "AkCO9d9N", "displayName": "Ul2zvs7h", "emailAddress": "Xr1uSPce", "password": "7qoNkbUY", "reachMinimumAge": true, "username": "F1WMa1IN", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 297 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 298 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "kn414NRq", "password": "rxCk4y23", "username": "mNrgy62Y"}' \
    > test.out 2>&1
eval_tap $? 298 'PublicUpgradeHeadlessAccountV4' test.out

#- 299 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 299 'PublicDisableMyAuthenticatorV4' test.out

#- 300 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'PYjHpiI6' \
    > test.out 2>&1
eval_tap $? 300 'PublicEnableMyAuthenticatorV4' test.out

#- 301 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 301 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 302 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 302 'PublicGetMyBackupCodesV4' test.out

#- 303 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 303 'PublicGenerateMyBackupCodesV4' test.out

#- 304 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 304 'PublicDisableMyBackupCodesV4' test.out

#- 305 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 305 'PublicDownloadMyBackupCodesV4' test.out

#- 306 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 306 'PublicEnableMyBackupCodesV4' test.out

#- 307 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 307 'PublicRemoveTrustedDeviceV4' test.out

#- 308 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 308 'PublicGetMyEnabledFactorsV4' test.out

#- 309 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor '4GBbxlZF' \
    > test.out 2>&1
eval_tap $? 309 'PublicMakeFactorMyDefaultV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE