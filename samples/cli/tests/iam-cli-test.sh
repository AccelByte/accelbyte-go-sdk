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
echo "1..314"

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
samples/cli/sample-apps Iam adminGetAgeRestrictionStatusV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 80 'AdminGetAgeRestrictionStatusV2' test.out

#- 81 AdminUpdateAgeRestrictionConfigV2
samples/cli/sample-apps Iam adminUpdateAgeRestrictionConfigV2 \
    --namespace $AB_NAMESPACE \
    --body '{"AgeRestriction": 5, "Enable": true}' \
    > test.out 2>&1
eval_tap $? 81 'AdminUpdateAgeRestrictionConfigV2' test.out

#- 82 GetListCountryAgeRestriction
samples/cli/sample-apps Iam getListCountryAgeRestriction \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 82 'GetListCountryAgeRestriction' test.out

#- 83 UpdateCountryAgeRestriction
samples/cli/sample-apps Iam updateCountryAgeRestriction \
    --countryCode 'ui3XsGtE' \
    --namespace $AB_NAMESPACE \
    --body '{"AgeRestriction": 67}' \
    > test.out 2>&1
eval_tap $? 83 'UpdateCountryAgeRestriction' test.out

#- 84 AdminSearchUsersV2
samples/cli/sample-apps Iam adminSearchUsersV2 \
    --namespace $AB_NAMESPACE \
    --after 'ePLcXCzd' \
    --before 'L74fvAfM' \
    --displayName 'TznWXUTg' \
    --limit '81' \
    --loginId 'kCIQsYx4' \
    --platformUserId 'zQvVbyVN' \
    --roleId 'QRyrusn6' \
    --userId '69KUkkp3' \
    --platformId 'thXu9C4p' \
    > test.out 2>&1
eval_tap $? 84 'AdminSearchUsersV2' test.out

#- 85 AdminGetUserByUserIdV2
samples/cli/sample-apps Iam adminGetUserByUserIdV2 \
    --namespace $AB_NAMESPACE \
    --userId 'Fuw0Lpop' \
    > test.out 2>&1
eval_tap $? 85 'AdminGetUserByUserIdV2' test.out

#- 86 AdminUpdateUserV2
samples/cli/sample-apps Iam adminUpdateUserV2 \
    --namespace $AB_NAMESPACE \
    --userId 'tWN3WlOW' \
    --body '{"Country": "SeYkrIgW", "DateOfBirth": "J6YiJXkt", "DisplayName": "TZ7V0kJD", "LanguageTag": "2WmlLtKR"}' \
    > test.out 2>&1
eval_tap $? 86 'AdminUpdateUserV2' test.out

#- 87 AdminBanUserV2
samples/cli/sample-apps Iam adminBanUserV2 \
    --namespace $AB_NAMESPACE \
    --userId 'OCDbszbj' \
    --body '{"ban": "Qs87vp6A", "comment": "UEwAMlcX", "endDate": "34efZ7Jy", "reason": "B3l6npyx", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 87 'AdminBanUserV2' test.out

#- 88 AdminGetUserBanV2
samples/cli/sample-apps Iam adminGetUserBanV2 \
    --namespace $AB_NAMESPACE \
    --userId 'Qnni8qOM' \
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 88 'AdminGetUserBanV2' test.out

#- 89 AdminDisableUserV2
samples/cli/sample-apps Iam adminDisableUserV2 \
    --namespace $AB_NAMESPACE \
    --userId '8XqgBkN7' \
    --body '{"Reason": "WEhyjrzB"}' \
    > test.out 2>&1
eval_tap $? 89 'AdminDisableUserV2' test.out

#- 90 AdminEnableUserV2
samples/cli/sample-apps Iam adminEnableUserV2 \
    --namespace $AB_NAMESPACE \
    --userId 'krZFoE7l' \
    > test.out 2>&1
eval_tap $? 90 'AdminEnableUserV2' test.out

#- 91 AdminResetPasswordV2
samples/cli/sample-apps Iam adminResetPasswordV2 \
    --namespace $AB_NAMESPACE \
    --userId 'xRX2gVgb' \
    --body '{"LanguageTag": "ZsdJy30M", "NewPassword": "QadWfaBc", "OldPassword": "FyzKIDyp"}' \
    > test.out 2>&1
eval_tap $? 91 'AdminResetPasswordV2' test.out

#- 92 AdminDeletePlatformLinkV2
samples/cli/sample-apps Iam adminDeletePlatformLinkV2 \
    --namespace $AB_NAMESPACE \
    --platformId '2HXQpair' \
    --userId 't55VHs5G' \
    --platformNamespace 'SNoUHgJS' \
    > test.out 2>&1
eval_tap $? 92 'AdminDeletePlatformLinkV2' test.out

#- 93 AdminPutUserRolesV2
samples/cli/sample-apps Iam adminPutUserRolesV2 \
    --namespace $AB_NAMESPACE \
    --userId 'U0tPpBVi' \
    --body '["EDZW8jlo", "dxTnQBgK", "clUtaNnj"]' \
    > test.out 2>&1
eval_tap $? 93 'AdminPutUserRolesV2' test.out

#- 94 AdminCreateUserRolesV2
samples/cli/sample-apps Iam adminCreateUserRolesV2 \
    --namespace $AB_NAMESPACE \
    --userId 'lvP2Sy1t' \
    --body '["U5s3bFug", "DYpwrtDE", "LXmC4S2B"]' \
    > test.out 2>&1
eval_tap $? 94 'AdminCreateUserRolesV2' test.out

#- 95 PublicGetCountryAgeRestriction
samples/cli/sample-apps Iam publicGetCountryAgeRestriction \
    --countryCode 'je1xcWu8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 95 'PublicGetCountryAgeRestriction' test.out

#- 96 PublicCreateUserV2
samples/cli/sample-apps Iam publicCreateUserV2 \
    --namespace $AB_NAMESPACE \
    --body '{"AuthType": "vE6AoKNV", "Country": "bP5h16ZF", "DisplayName": "NYQQMIbg", "LoginId": "LM7lzikn", "Password": "YPDpCkoe", "PasswordMD5Sum": "7cK3jNjB"}' \
    > test.out 2>&1
eval_tap $? 96 'PublicCreateUserV2' test.out

#- 97 PublicForgotPasswordV2
samples/cli/sample-apps Iam publicForgotPasswordV2 \
    --namespace $AB_NAMESPACE \
    --body '{"Context": "787ePV3I", "LanguageTag": "sLb6qR3Y", "LoginID": "SHB5Vb0v"}' \
    > test.out 2>&1
eval_tap $? 97 'PublicForgotPasswordV2' test.out

#- 98 PublicResetPasswordV2
samples/cli/sample-apps Iam publicResetPasswordV2 \
    --namespace $AB_NAMESPACE \
    --body '{"Code": "VhxIIddC", "LoginID": "OuHL9bhr", "NewPassword": "O7yQCnnb"}' \
    > test.out 2>&1
eval_tap $? 98 'PublicResetPasswordV2' test.out

#- 99 PublicGetUserByUserIDV2
samples/cli/sample-apps Iam publicGetUserByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId '0GI6DAao' \
    > test.out 2>&1
eval_tap $? 99 'PublicGetUserByUserIDV2' test.out

#- 100 PublicUpdateUserV2
samples/cli/sample-apps Iam publicUpdateUserV2 \
    --namespace $AB_NAMESPACE \
    --userId 'vMW4i9Wt' \
    --body '{"Country": "po0RXpEO", "DateOfBirth": "jxUDsFau", "DisplayName": "SiM7HW9u", "LanguageTag": "KxokWL6l"}' \
    > test.out 2>&1
eval_tap $? 100 'PublicUpdateUserV2' test.out

#- 101 PublicGetUserBan
samples/cli/sample-apps Iam publicGetUserBan \
    --namespace $AB_NAMESPACE \
    --userId 'OGE6Ugg2' \
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 101 'PublicGetUserBan' test.out

#- 102 PublicUpdatePasswordV2
samples/cli/sample-apps Iam publicUpdatePasswordV2 \
    --namespace $AB_NAMESPACE \
    --userId 'k7wleInk' \
    --body '{"LanguageTag": "qQli1fV9", "NewPassword": "K596mSmd", "OldPassword": "RgpQbCCC"}' \
    > test.out 2>&1
eval_tap $? 102 'PublicUpdatePasswordV2' test.out

#- 103 GetListJusticePlatformAccounts
samples/cli/sample-apps Iam getListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'LFhviRCY' \
    > test.out 2>&1
eval_tap $? 103 'GetListJusticePlatformAccounts' test.out

#- 104 PublicPlatformLinkV2
samples/cli/sample-apps Iam publicPlatformLinkV2 \
    --namespace $AB_NAMESPACE \
    --platformId 'OdkjfXzi' \
    --userId 'z2l8NyPD' \
    --ticket 'o4IxCGZx' \
    > test.out 2>&1
eval_tap $? 104 'PublicPlatformLinkV2' test.out

#- 105 PublicDeletePlatformLinkV2
samples/cli/sample-apps Iam publicDeletePlatformLinkV2 \
    --namespace $AB_NAMESPACE \
    --platformId '1CTdaacq' \
    --userId 'PQAz47wK' \
    --platformNamespace 'xgTCxiRN' \
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
    --body '[{"field": "Kg1a8Pnu", "validation": {"allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "description": [{"language": "T8STb2qp", "message": ["W0Gpi4oB", "GTlGB5II", "1TNOIRA8"]}, {"language": "ykoS8ljC", "message": ["9J1r7ELU", "F0Jg8N8t", "8xs5ucbE"]}, {"language": "EEp7BExu", "message": ["w6BN2PAu", "kCEFPibX", "tfEFKVlH"]}], "isCustomRegex": true, "letterCase": "byeZr2MS", "maxLength": 52, "maxRepeatingAlphaNum": 48, "maxRepeatingSpecialCharacter": 30, "minCharType": 87, "minLength": 61, "regex": "CWJ4sYIz", "specialCharacterLocation": "QOGbEXn9", "specialCharacters": ["EI2G9k5r", "4aA0BsRL", "lRE8wbb6"]}}, {"field": "LCe5fn7H", "validation": {"allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "description": [{"language": "NJNi7Dno", "message": ["sZkiiSfM", "GftcZMdR", "Gyfsmvqq"]}, {"language": "nW1p3hyZ", "message": ["ZCyCpelH", "ejlxmiiZ", "aqiK5vaL"]}, {"language": "MZNbmJsB", "message": ["Uhdv8U4z", "95fs1zMk", "Vj7jfIZA"]}], "isCustomRegex": false, "letterCase": "Pam9mHVs", "maxLength": 75, "maxRepeatingAlphaNum": 96, "maxRepeatingSpecialCharacter": 66, "minCharType": 71, "minLength": 99, "regex": "jBffSFiB", "specialCharacterLocation": "sVDaEJxA", "specialCharacters": ["zQh7HVwp", "opdMkEBP", "Icwxufv5"]}}, {"field": "1I9y4FsQ", "validation": {"allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "description": [{"language": "h4rzHTLp", "message": ["Potil5s2", "L9EFMR22", "YU0KPDim"]}, {"language": "riTaKzAz", "message": ["hW6K04ye", "hTTGkttp", "WpRTikAX"]}, {"language": "LhJq3NxZ", "message": ["l0qs0rqp", "F8ypY9dy", "qssUjYnY"]}], "isCustomRegex": false, "letterCase": "xULhDQmf", "maxLength": 72, "maxRepeatingAlphaNum": 79, "maxRepeatingSpecialCharacter": 13, "minCharType": 7, "minLength": 58, "regex": "p0RS5b9V", "specialCharacterLocation": "cR9YrsMU", "specialCharacters": ["oCtmK8l2", "0ybk9Vk0", "MKXWKvUA"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'tZkgPpEV' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'p9AdZdBZ' \
    --before 'jpT8OmQN' \
    --limit '98' \
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
    --body '{"ageRestriction": 22, "enable": false}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'abEYV9Up' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 99}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType '91NVWqii' \
    --limit '43' \
    --offset '42' \
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
    --limit '53' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 118 'AdminGetClientsByNamespaceV3' test.out

#- 119 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["FEKmU7C3", "JP95zlrn", "g0kpwb5O"], "baseUri": "Gev2iSqf", "clientId": "lZESS1N9", "clientName": "9Xb08dDX", "clientPermissions": [{"action": 32, "resource": "MlnLqiUj", "schedAction": 35, "schedCron": "rgfiEYRe", "schedRange": ["Z25WO1aY", "avJTiSpK", "aXyObUk0"]}, {"action": 23, "resource": "DRfhClfH", "schedAction": 32, "schedCron": "M1MsQm5A", "schedRange": ["qQ0cG2eD", "VpenkddR", "gQIrE88k"]}, {"action": 59, "resource": "jry7p2Ii", "schedAction": 71, "schedCron": "4oa2a9IC", "schedRange": ["ceyM8Jbl", "7qTRiuJV", "aR3AlxXj"]}], "clientPlatform": "RyxOlvca", "deletable": false, "namespace": "pRgnQvue", "oauthClientType": "gpUotkyG", "redirectUri": "J7AjeXqB", "secret": "zC1s4KR6"}' \
    > test.out 2>&1
eval_tap $? 119 'AdminCreateClientV3' test.out

#- 120 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'klRYsYeg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 121 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'nbsJ6cCd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 121 'AdminDeleteClientV3' test.out

#- 122 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'RpI04Kqs' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["4WB2hsKb", "5w6CIONJ", "SkSpWbSo"], "baseUri": "LXgNEsuI", "clientName": "08m5fcrW", "clientPermissions": [{"action": 99, "resource": "BcuzeCkL", "schedAction": 18, "schedCron": "wRdaDLcz", "schedRange": ["G1mAZvBM", "6G95oxvs", "esmGw7b1"]}, {"action": 91, "resource": "sJvkC1NT", "schedAction": 66, "schedCron": "azfsXOv4", "schedRange": ["uTaoc0Pg", "oITgSd4E", "B0HIaR7o"]}, {"action": 98, "resource": "oZ4oHctw", "schedAction": 73, "schedCron": "vGZGeWbr", "schedRange": ["2tJswYlC", "sXiCfoiD", "12I8wApv"]}], "clientPlatform": "7ut4IFzn", "deletable": true, "namespace": "JGIT8Acd", "redirectUri": "fwvS7ZT6"}' \
    > test.out 2>&1
eval_tap $? 122 'AdminUpdateClientV3' test.out

#- 123 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'BNTuePOe' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 79, "resource": "txOYCY3c"}, {"action": 9, "resource": "ZtgDsiVi"}, {"action": 35, "resource": "awtoB8uu"}]}' \
    > test.out 2>&1
eval_tap $? 123 'AdminUpdateClientPermissionV3' test.out

#- 124 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId '4b7L0nQs' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 89, "resource": "zeAnX3Oo"}, {"action": 96, "resource": "Na1IVcBm"}, {"action": 73, "resource": "2Pdzoab6"}]}' \
    > test.out 2>&1
eval_tap $? 124 'AdminAddClientPermissionsV3' test.out

#- 125 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '19' \
    --clientId 'u7wYk0c3' \
    --namespace $AB_NAMESPACE \
    --resource 'AWkVSd8B' \
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
    --limit '93' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 128 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 129 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '89eUxlYl' \
    > test.out 2>&1
eval_tap $? 129 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 130 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'cNeWIrJO' \
    --body '{"ACSURL": "IHw0VRUG", "AWSCognitoRegion": "033pRA1g", "AWSCognitoUserPool": "tERv8GOX", "AllowedClients": ["xPcfzuCB", "7uzwbORU", "iFcH5gwQ"], "AppId": "T0sjRAp6", "AuthorizationEndpoint": "A0XJhSlq", "ClientId": "UZ080INV", "Environment": "hfyX5d0S", "FederationMetadataURL": "W0iQQu1j", "GenericOauthFlow": false, "IsActive": true, "Issuer": "XnYDJLiY", "JWKSEndpoint": "2NlNloRi", "KeyID": "O2cKvvme", "NetflixCertificates": {"encryptedPrivateKey": "8U2e5gRj", "encryptedPrivateKeyName": "4w3AFS9E", "publicCertificate": "lUcOd5XF", "publicCertificateName": "67cElKBj", "rootCertificate": "nYZu21FO", "rootCertificateName": "SalFGXWK"}, "OrganizationId": "FPaxS459", "PlatformName": "hAWK4s2A", "RedirectUri": "pYCS0uJ0", "RegisteredDomains": [{"affectedClientIDs": ["rLXaTZ6B", "QroEQU9u", "fUvPmAeG"], "domain": "r71lAlTP", "namespaces": ["AmmLXrIP", "FyRy6VDt", "21F1ht6i"], "roleId": "gXFBF7Ke"}, {"affectedClientIDs": ["qMJdGYgx", "6RVj6SFb", "iqaDSgXy"], "domain": "Kde8omct", "namespaces": ["ZsrpUNDe", "Iww7mY5V", "aXcQtx8L"], "roleId": "nPwzHbWO"}, {"affectedClientIDs": ["HBHiujVg", "gUE6BGEv", "OKnTzbP0"], "domain": "siMqLKBR", "namespaces": ["UBw0sjID", "0KMFpoTB", "CnPG3Aqb"], "roleId": "zdFcHlxS"}], "Secret": "PDqKTIO1", "TeamID": "1lnO9dfS", "TokenAuthenticationType": "PPtdsF8j", "TokenClaimsMapping": {"kWc5y3Qt": "GDFGVpUX", "JZfPqI8H": "h4JatlhD", "ZMBrj2Pr": "LxNvFnhP"}, "TokenEndpoint": "mVWeLeKX"}' \
    > test.out 2>&1
eval_tap $? 130 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 131 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'SD8Cvw7i' \
    > test.out 2>&1
eval_tap $? 131 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 132 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'i79v0o7L' \
    --body '{"ACSURL": "iDAjTO54", "AWSCognitoRegion": "0bYSgu6l", "AWSCognitoUserPool": "IjKx634J", "AllowedClients": ["QF4IM5LF", "BG1Nr0eB", "mzFDx8ql"], "AppId": "n9lvHh7o", "AuthorizationEndpoint": "lKHlzaGD", "ClientId": "XZNY32X0", "Environment": "iXIZnMXL", "FederationMetadataURL": "MbxFMtMd", "GenericOauthFlow": true, "IsActive": true, "Issuer": "spDDJuqS", "JWKSEndpoint": "yJpCnDb8", "KeyID": "GI962l7t", "NetflixCertificates": {"encryptedPrivateKey": "aXSTvEyM", "encryptedPrivateKeyName": "NijZxSRC", "publicCertificate": "WT9cGsk3", "publicCertificateName": "ScBiQXFs", "rootCertificate": "bGTUm8oy", "rootCertificateName": "ppnTAQec"}, "OrganizationId": "HyciKlh1", "PlatformName": "mwxRBFWj", "RedirectUri": "ox4I2D9k", "RegisteredDomains": [{"affectedClientIDs": ["A90ZixaF", "UMNTdpgO", "vfzjRS5N"], "domain": "YCC5Lcit", "namespaces": ["UsHHxSoR", "DYRxTJwD", "spPxzZea"], "roleId": "SguVmjeh"}, {"affectedClientIDs": ["z9igqD5g", "J5LvzEqA", "xuSdHKCU"], "domain": "DUDG2OT4", "namespaces": ["Q7mc9t2F", "8wYHvTSM", "3AjsUy4r"], "roleId": "Ld287R9E"}, {"affectedClientIDs": ["uVJougZJ", "p4sDnuc1", "Lhxti9Ux"], "domain": "q7noC578", "namespaces": ["zyXcAp5B", "NRN5B9jo", "vSngyxBo"], "roleId": "EqJBtlmM"}], "Secret": "sdRnO0Tq", "TeamID": "Ul80rFjm", "TokenAuthenticationType": "9EsEa1e2", "TokenClaimsMapping": {"rXaPQZBc": "eXmhksT9", "3gxlp5Lp": "FeJdAdqO", "HmxfNmZj": "ijnkMDOz"}, "TokenEndpoint": "O8XA2BMU"}' \
    > test.out 2>&1
eval_tap $? 132 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 133 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7Fv9Aq1N' \
    --body '{"affectedClientIDs": ["0MXfgjO2", "AOzYFtZU", "SbWI8b0R"], "assignedNamespaces": ["fbfS0b2q", "PpcgweTd", "VBmiMc0v"], "domain": "tidkNRZB", "roleId": "kCWb2vcC"}' \
    > test.out 2>&1
eval_tap $? 133 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 134 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'OlYuQouW' \
    --body '{"domain": "prpq8m2q"}' \
    > test.out 2>&1
eval_tap $? 134 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 135 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'TvUhJDso' \
    > test.out 2>&1
eval_tap $? 135 'RetrieveSSOLoginPlatformCredential' test.out

#- 136 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'utiaxbDq' \
    --body '{"acsUrl": "Hfc8l6wk", "apiKey": "vOfi5aNW", "appId": "OrpB0jfL", "federationMetadataUrl": "faKmtYhy", "isActive": true, "redirectUri": "qHydozVK", "secret": "ycuYsgnY", "ssoUrl": "skIIe7HA"}' \
    > test.out 2>&1
eval_tap $? 136 'AddSSOLoginPlatformCredential' test.out

#- 137 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'TzsameVP' \
    > test.out 2>&1
eval_tap $? 137 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 138 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'DwrJXXgz' \
    --body '{"acsUrl": "XHnv1XAC", "apiKey": "Y2wUzYbl", "appId": "QeWIwsFk", "federationMetadataUrl": "OEnS60sg", "isActive": false, "redirectUri": "XIt74VeE", "secret": "0iA2HSXU", "ssoUrl": "a8yFjElw"}' \
    > test.out 2>&1
eval_tap $? 138 'UpdateSSOPlatformCredential' test.out

#- 139 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'FW3LDc4o' \
    --platformUserId 'xwe8E1du' \
    > test.out 2>&1
eval_tap $? 139 'AdminGetUserByPlatformUserIDV3' test.out

#- 140 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId '8oZjNsy6' \
    --after '26' \
    --before '65' \
    --limit '79' \
    > test.out 2>&1
eval_tap $? 140 'GetAdminUsersByRoleIdV3' test.out

#- 141 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'kabKipXg' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByEmailAddressV3' test.out

#- 142 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["anv01CUy", "lGbHLPgx", "mIR3MTm9"]}' \
    > test.out 2>&1
eval_tap $? 142 'AdminListUserIDByUserIDsV3' test.out

#- 143 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["QnEeUpoZ", "rG6sEEzV", "3yjwmFQp"], "isAdmin": false, "roles": ["4uVVp4Fy", "AVpnSExL", "nQG1rdVy"]}' \
    > test.out 2>&1
eval_tap $? 143 'AdminInviteUserV3' test.out

#- 144 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUsersV3' test.out

#- 145 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'ptqkRyOZ' \
    --endDate 'rYY75DVc' \
    --limit '48' \
    --offset '74' \
    --platformBy 'JbtQlSlP' \
    --platformId 'aIPd06IQ' \
    --query 'BNdExkWl' \
    --startDate 'ugaaOXxy' \
    > test.out 2>&1
eval_tap $? 145 'AdminSearchUserV3' test.out

#- 146 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["02RWU3A2", "At28AR36", "D3Lm9Zl0"]}' \
    > test.out 2>&1
eval_tap $? 146 'AdminGetBulkUserByEmailAddressV3' test.out

#- 147 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ceapIkeP' \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByUserIdV3' test.out

#- 148 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'E7pCNmfl' \
    --body '{"avatarUrl": "w7WSar8i", "country": "rFn1gM2Q", "dateOfBirth": "PBTKaf2H", "displayName": "zgYs5c5h", "languageTag": "xgLWAcuW", "userName": "Ia1STgUg"}' \
    > test.out 2>&1
eval_tap $? 148 'AdminUpdateUserV3' test.out

#- 149 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId '2w4YfjVD' \
    --activeOnly 'false' \
    --after '9Y0fgiNH' \
    --before 'IhuWN82O' \
    --limit '77' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetUserBanV3' test.out

#- 150 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'MG9otNps' \
    --body '{"ban": "04dejO5r", "comment": "bqTVJiGU", "endDate": "DqgAgcBg", "reason": "RWuRgA4l", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 150 'AdminBanUserV3' test.out

#- 151 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'bjvaazEq' \
    --namespace $AB_NAMESPACE \
    --userId 'yDyd3qfD' \
    --body '{"enabled": false, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserBanV3' test.out

#- 152 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pymIvDTv' \
    --body '{"context": "MypS8nhI", "emailAddress": "U4W5wdSt", "languageTag": "Pks5JXUB"}' \
    > test.out 2>&1
eval_tap $? 152 'AdminSendVerificationCodeV3' test.out

#- 153 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'a21vMt6c' \
    --body '{"Code": "khkAYD4r", "ContactType": "631k1UQ2", "LanguageTag": "57i1nyGz", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 153 'AdminVerifyAccountV3' test.out

#- 154 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'YPmy1gks' \
    > test.out 2>&1
eval_tap $? 154 'GetUserVerificationCode' test.out

#- 155 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'XkBu6ynI' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetUserDeletionStatusV3' test.out

#- 156 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wL2rUV4b' \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 156 'AdminUpdateUserDeletionStatusV3' test.out

#- 157 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UCH8cF9p' \
    --body '{"code": "Kqi2aJZK", "country": "kf7Bp09U", "dateOfBirth": "irVbXaef", "displayName": "Gnqj2YLt", "emailAddress": "xi99sird", "password": "kgeyrtsu", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpgradeHeadlessAccountV3' test.out

#- 158 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xgl6bYvL' \
    > test.out 2>&1
eval_tap $? 158 'AdminDeleteUserInformationV3' test.out

#- 159 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'we7Qp3Xy' \
    --after '0.3527154083196983' \
    --before '0.7597692557476091' \
    --limit '50' \
    > test.out 2>&1
eval_tap $? 159 'AdminGetUserLoginHistoriesV3' test.out

#- 160 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YAt9UZKs' \
    --body '{"Permissions": [{"Action": 51, "Resource": "bMl5oK9T", "SchedAction": 72, "SchedCron": "R56DDfan", "SchedRange": ["xdjLOr7L", "YOWBOhbm", "YQhlgY2F"]}, {"Action": 24, "Resource": "SVtmy69p", "SchedAction": 77, "SchedCron": "it7CSdTd", "SchedRange": ["O2VtEuha", "NG8580Pf", "eTG5xCta"]}, {"Action": 77, "Resource": "aiMqix4A", "SchedAction": 1, "SchedCron": "V2TsSTDe", "SchedRange": ["bTH7Jq4Y", "2cbf9Lqc", "5gnOCJl3"]}]}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserPermissionV3' test.out

#- 161 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Cy3gfKy6' \
    --body '{"Permissions": [{"Action": 18, "Resource": "a3CO6MIm", "SchedAction": 46, "SchedCron": "COQYATj7", "SchedRange": ["iw1RU58m", "1Ledf6Kc", "K98PySsn"]}, {"Action": 39, "Resource": "nrDPSIvt", "SchedAction": 39, "SchedCron": "LrJVcAa0", "SchedRange": ["WYON8Wts", "WpTuYdA4", "fZIPAia9"]}, {"Action": 34, "Resource": "6ed2aacY", "SchedAction": 51, "SchedCron": "0gL7917C", "SchedRange": ["h9F3WDem", "1ysVDXd4", "QTn7hpH8"]}]}' \
    > test.out 2>&1
eval_tap $? 161 'AdminAddUserPermissionsV3' test.out

#- 162 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId '5ufPaLh9' \
    --body '[{"Action": 6, "Resource": "OG6ux7Xz"}, {"Action": 68, "Resource": "WfGXLZOZ"}, {"Action": 48, "Resource": "ERDRIHFW"}]' \
    > test.out 2>&1
eval_tap $? 162 'AdminDeleteUserPermissionBulkV3' test.out

#- 163 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '64' \
    --namespace $AB_NAMESPACE \
    --resource '09TMNoyg' \
    --userId 'OllUNOUS' \
    > test.out 2>&1
eval_tap $? 163 'AdminDeleteUserPermissionV3' test.out

#- 164 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xu5tqtmm' \
    --after 'jXRWrWMD' \
    --before 'Aot3nfL2' \
    --limit '45' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserPlatformAccountsV3' test.out

#- 165 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'VS2K8ck3' \
    > test.out 2>&1
eval_tap $? 165 'AdminGetListJusticePlatformAccounts' test.out

#- 166 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace '5yNJYEf5' \
    --userId 'NMV08E1N' \
    > test.out 2>&1
eval_tap $? 166 'AdminGetUserMapping' test.out

#- 167 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'x3o33sVu' \
    --userId 'Tu1JdO2n' \
    > test.out 2>&1
eval_tap $? 167 'AdminCreateJusticeUser' test.out

#- 168 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'iyxn1Uuy' \
    --body '{"platformId": "DhpMxCPU", "platformUserId": "WjDCQRLL"}' \
    > test.out 2>&1
eval_tap $? 168 'AdminLinkPlatformAccount' test.out

#- 169 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '5XSyD9Gk' \
    --userId 'A3UAmdMx' \
    --body '{"platformNamespace": "oMsJGmT4"}' \
    > test.out 2>&1
eval_tap $? 169 'AdminPlatformUnlinkV3' test.out

#- 170 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'L1HDtHgJ' \
    --userId 'WeZVuha6' \
    --ticket '5BGFozRL' \
    > test.out 2>&1
eval_tap $? 170 'AdminPlatformLinkV3' test.out

#- 171 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VlQJuuyK' \
    --body '["Cpw18G5j", "Evh2VeyE", "Tp9u8YtJ"]' \
    > test.out 2>&1
eval_tap $? 171 'AdminDeleteUserRolesV3' test.out

#- 172 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bq7J7C8G' \
    --body '[{"namespace": "Dcn3IdX6", "roleId": "du2oiGyq"}, {"namespace": "AZW7QIIx", "roleId": "pWpPhw2t"}, {"namespace": "uYxQkP82", "roleId": "3q2fvy2v"}]' \
    > test.out 2>&1
eval_tap $? 172 'AdminSaveUserRoleV3' test.out

#- 173 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'YueI7CXD' \
    --userId 'VShYy2nJ' \
    > test.out 2>&1
eval_tap $? 173 'AdminAddUserRoleV3' test.out

#- 174 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'Cz2JfsLd' \
    --userId 'EVpC29sF' \
    > test.out 2>&1
eval_tap $? 174 'AdminDeleteUserRoleV3' test.out

#- 175 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '9NQwrzCo' \
    --body '{"enabled": false, "reason": "9uXxZgqn"}' \
    > test.out 2>&1
eval_tap $? 175 'AdminUpdateUserStatusV3' test.out

#- 176 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dPI77CJy' \
    > test.out 2>&1
eval_tap $? 176 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 177 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId '7VzeZJ7A' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "RqRsDIjd"}' \
    > test.out 2>&1
eval_tap $? 177 'AdminUpdateClientSecretV3' test.out

#- 178 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'JmPYiuU6' \
    --before 'SCHJhHiZ' \
    --isWildcard 'false' \
    --limit '96' \
    > test.out 2>&1
eval_tap $? 178 'AdminGetRolesV3' test.out

#- 179 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "managers": [{"displayName": "RY4kQkbD", "namespace": "YcF3BgcQ", "userId": "ZO9IPOJo"}, {"displayName": "51V2pWID", "namespace": "3CShEpo9", "userId": "lr7SbgT7"}, {"displayName": "fz79TI2i", "namespace": "2laLgdHS", "userId": "J06HTjBn"}], "members": [{"displayName": "r2uwZ9W8", "namespace": "B4BtwXCG", "userId": "jQPFnjdv"}, {"displayName": "NXiMU0bZ", "namespace": "dYF8VI4Q", "userId": "kykpbM29"}, {"displayName": "a5NLDq6F", "namespace": "2t5psLv3", "userId": "qITGUr1o"}], "permissions": [{"action": 63, "resource": "0vINSEOz", "schedAction": 73, "schedCron": "HfoyxfiW", "schedRange": ["DkaIhwwo", "n9RDX31q", "FrmX4CjS"]}, {"action": 55, "resource": "MP9fqiio", "schedAction": 31, "schedCron": "39CYB89G", "schedRange": ["8XvEsoEy", "aMrTYSuN", "f4Nah6BG"]}, {"action": 13, "resource": "PJKIQBGa", "schedAction": 34, "schedCron": "da3wQMjk", "schedRange": ["Cf4W0PiY", "zaynFnGA", "QPS3TTrX"]}], "roleName": "OlEMNOCU"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminCreateRoleV3' test.out

#- 180 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'O6MXMT7w' \
    > test.out 2>&1
eval_tap $? 180 'AdminGetRoleV3' test.out

#- 181 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'TSigIqaj' \
    > test.out 2>&1
eval_tap $? 181 'AdminDeleteRoleV3' test.out

#- 182 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId '0ddeoAct' \
    --body '{"deletable": true, "isWildcard": false, "roleName": "0goTzMrN"}' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateRoleV3' test.out

#- 183 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'NX9xEvtu' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRoleAdminStatusV3' test.out

#- 184 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'yoC5OOEN' \
    > test.out 2>&1
eval_tap $? 184 'AdminUpdateAdminRoleStatusV3' test.out

#- 185 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'rrzcfHAq' \
    > test.out 2>&1
eval_tap $? 185 'AdminRemoveRoleAdminV3' test.out

#- 186 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'ts3rJyD0' \
    --after 'iJvkUT1L' \
    --before 'FaP1C4Og' \
    --limit '37' \
    > test.out 2>&1
eval_tap $? 186 'AdminGetRoleManagersV3' test.out

#- 187 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'XcknsIfE' \
    --body '{"managers": [{"displayName": "M7BrBtqJ", "namespace": "QXuX4Ls5", "userId": "dMCSafWh"}, {"displayName": "rEHEqVtA", "namespace": "D1CC1nUO", "userId": "fDXxCReG"}, {"displayName": "BuGnSyjv", "namespace": "nL7j6Rql", "userId": "22PHUPgG"}]}' \
    > test.out 2>&1
eval_tap $? 187 'AdminAddRoleManagersV3' test.out

#- 188 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'Mqx2VoKP' \
    --body '{"managers": [{"displayName": "mDrwYTce", "namespace": "YqoeC7n9", "userId": "I08NDqZt"}, {"displayName": "WRtWi79a", "namespace": "eCx0rS75", "userId": "kV7Jd85V"}, {"displayName": "JPb1Jf05", "namespace": "1AlUgsyn", "userId": "mYtHIPtx"}]}' \
    > test.out 2>&1
eval_tap $? 188 'AdminRemoveRoleManagersV3' test.out

#- 189 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'gTabCqZx' \
    --after 'TrcjQihO' \
    --before 'XPIY8exU' \
    --limit '63' \
    > test.out 2>&1
eval_tap $? 189 'AdminGetRoleMembersV3' test.out

#- 190 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'yJsrVb0L' \
    --body '{"members": [{"displayName": "7JhOpxjR", "namespace": "NUZ7sve9", "userId": "GU4jIbWx"}, {"displayName": "WtL3EqWC", "namespace": "6b5rZYij", "userId": "pXPclUg6"}, {"displayName": "L1WueNMN", "namespace": "30HqKT4H", "userId": "g08xztBZ"}]}' \
    > test.out 2>&1
eval_tap $? 190 'AdminAddRoleMembersV3' test.out

#- 191 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId '9NQ3nwzY' \
    --body '{"members": [{"displayName": "314dBxdg", "namespace": "Rn4CrdMw", "userId": "aHyxrcwL"}, {"displayName": "L9NzyKgD", "namespace": "O4wf3vaO", "userId": "OgqOxg68"}, {"displayName": "e4Sw7GvC", "namespace": "ERFD9iwF", "userId": "JRtJysig"}]}' \
    > test.out 2>&1
eval_tap $? 191 'AdminRemoveRoleMembersV3' test.out

#- 192 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'JKPR27Uk' \
    --body '{"permissions": [{"action": 79, "resource": "Kjz8hOQM", "schedAction": 99, "schedCron": "Cfh1rPZW", "schedRange": ["YmavzYHe", "9DWucxVq", "c0hbO5cs"]}, {"action": 80, "resource": "cgAx1JCI", "schedAction": 68, "schedCron": "k40SzEew", "schedRange": ["bDaNGLq9", "Rk8ao3rt", "RsTANmWC"]}, {"action": 60, "resource": "SRR8xptu", "schedAction": 9, "schedCron": "IlvvAOON", "schedRange": ["SZ1Bd1TY", "zZ26WBGW", "yvWc3M9x"]}]}' \
    > test.out 2>&1
eval_tap $? 192 'AdminUpdateRolePermissionsV3' test.out

#- 193 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'kS8wIqaq' \
    --body '{"permissions": [{"action": 73, "resource": "fOSF1GVG", "schedAction": 78, "schedCron": "uFGJWUuy", "schedRange": ["xVLzdin2", "sgR5qdCB", "U5Rm537Z"]}, {"action": 21, "resource": "b0m4rFli", "schedAction": 93, "schedCron": "vqLxE30F", "schedRange": ["D8DcHz8L", "IKNyMSgY", "ij4iBUTh"]}, {"action": 87, "resource": "LTfsEKGZ", "schedAction": 4, "schedCron": "bhu6bJLv", "schedRange": ["RQQfIfLK", "7he61O4F", "gDBzCjlE"]}]}' \
    > test.out 2>&1
eval_tap $? 193 'AdminAddRolePermissionsV3' test.out

#- 194 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'bZ5hJkSn' \
    --body '["QICxgtqf", "3OZK5KoZ", "70bKGoZ2"]' \
    > test.out 2>&1
eval_tap $? 194 'AdminDeleteRolePermissionsV3' test.out

#- 195 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '4' \
    --resource '3xaHV82p' \
    --roleId 'HSkee49H' \
    > test.out 2>&1
eval_tap $? 195 'AdminDeleteRolePermissionV3' test.out

#- 196 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 196 'AdminGetMyUserV3' test.out

#- 197 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'OZqkQYRZ' \
    --extendExp 'false' \
    --redirectUri '49aGknwH' \
    --password 'wYD6ilg4' \
    --requestId '7l60GdPl' \
    --userName 'cUi2U5zB' \
    > test.out 2>&1
eval_tap $? 197 'UserAuthenticationV3' test.out

#- 198 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'Uwn2XS6Z' \
    --linkingToken 'eW1QARtN' \
    --password '3nKn23AE' \
    --username '1xXF1Lg8' \
    > test.out 2>&1
eval_tap $? 198 'AuthenticationWithPlatformLinkV3' test.out

#- 199 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'true' \
    --linkingToken 'eyhtkSHU' \
    > test.out 2>&1
eval_tap $? 199 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 200 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 200 'GetCountryLocationV3' test.out

#- 201 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 201 'Logout' test.out

#- 202 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'X0C0175U' \
    --userId '9gcQJJHI' \
    > test.out 2>&1
eval_tap $? 202 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 203 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'HORNxDaY' \
    > test.out 2>&1
eval_tap $? 203 'RevokeUserV3' test.out

#- 204 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge '3amq4SaT' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'false' \
    --redirectUri 'Vd5YyMEt' \
    --scope 'mZvPFXRB' \
    --state 'iUEUNx5W' \
    --targetAuthPage 'X2WM9Oap' \
    --clientId 'OVXZsQHX' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 204 'AuthorizeV3' test.out

#- 205 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'em79Qzqy' \
    > test.out 2>&1
eval_tap $? 205 'TokenIntrospectionV3' test.out

#- 206 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 206 'GetJWKSV3' test.out

#- 207 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor '6sEDns9I' \
    --mfaToken '9F815cOE' \
    > test.out 2>&1
eval_tap $? 207 'Change2faMethod' test.out

#- 208 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'BuKawf9b' \
    --factor 'jGUnwAX7' \
    --mfaToken 'fnuJ2EIj' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 208 'Verify2faCode' test.out

#- 209 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'VgHfoiIH' \
    --userId 'sjKPTAAR' \
    > test.out 2>&1
eval_tap $? 209 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 210 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'LXVc8XXt' \
    --clientId 'i7EJzz65' \
    --redirectUri 'N09C6Fwg' \
    --requestId 'hWp7JWnq' \
    > test.out 2>&1
eval_tap $? 210 'AuthCodeRequestV3' test.out

#- 211 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'xALJEAXL' \
    --clientId '7amUX81t' \
    --createHeadless 'false' \
    --deviceId 'wg6rRDdl' \
    --platformToken 'nLu7TnoW' \
    > test.out 2>&1
eval_tap $? 211 'PlatformTokenGrantV3' test.out

#- 212 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 212 'GetRevocationListV3' test.out

#- 213 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'Qixp0NY5' \
    > test.out 2>&1
eval_tap $? 213 'TokenRevocationV3' test.out

#- 214 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --clientId 'PVnWRe5Y' \
    --code 'TSlxTgwF' \
    --codeVerifier 'tceF088t' \
    --extendExp 'true' \
    --password '8ju5j5Ju' \
    --redirectUri 'rUjNtjW4' \
    --refreshToken '6zMrJr4x' \
    --username 'ooAfi0wn' \
    --grantType 'client_credentials' \
    > test.out 2>&1
eval_tap $? 214 'TokenGrantV3' test.out

#- 215 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'VcDoYNrs' \
    > test.out 2>&1
eval_tap $? 215 'VerifyTokenV3' test.out

#- 216 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'Zxk22M0C' \
    --code 'Ys0onEQH' \
    --error '0uCekrWg' \
    --openidAssocHandle '0Atgzurq' \
    --openidClaimedId 'F9ZtRFgZ' \
    --openidIdentity 'ripaV9p3' \
    --openidMode 'xHmIQPNq' \
    --openidNs 'q86V6DXI' \
    --openidOpEndpoint 'TM4TlhK5' \
    --openidResponseNonce 'sV5yBMVS' \
    --openidReturnTo 'YbwKsqe4' \
    --openidSig 'PXNyWZvn' \
    --openidSigned 'wbDiwSdz' \
    --state 'FnMIWElB' \
    > test.out 2>&1
eval_tap $? 216 'PlatformAuthenticationV3' test.out

#- 217 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'gZ2CupE2' \
    > test.out 2>&1
eval_tap $? 217 'PublicGetInputValidations' test.out

#- 218 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 218 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 219 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'XIeGNTWu' \
    > test.out 2>&1
eval_tap $? 219 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 220 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'hVXG55hT' \
    --body '{"platformUserIds": ["9VWvnwJd", "wofp3l71", "ju3pzGDO"]}' \
    > test.out 2>&1
eval_tap $? 220 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 221 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '8NaoVYzA' \
    --platformUserId 'OGbr0JCD' \
    > test.out 2>&1
eval_tap $? 221 'PublicGetUserByPlatformUserIDV3' test.out

#- 222 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'KaLKv3iW' \
    > test.out 2>&1
eval_tap $? 222 'PublicGetAsyncStatus' test.out

#- 223 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'Px6OfeJc' \
    --limit '8' \
    --offset '5' \
    --query 'hzNPrq90' \
    > test.out 2>&1
eval_tap $? 223 'PublicSearchUserV3' test.out

#- 224 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "zD8jAkF9", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "ocvAdeHs", "policyId": "P12revFF", "policyVersionId": "AsfguWbP"}, {"isAccepted": true, "localizedPolicyVersionId": "oUZmG12K", "policyId": "IIYohgYP", "policyVersionId": "vr9Vlic2"}, {"isAccepted": false, "localizedPolicyVersionId": "ZCNyb9vg", "policyId": "ssxgsk43", "policyVersionId": "RZ5OMJow"}], "authType": "JDsrUaQn", "code": "2gqnSHLw", "country": "t3zcAqfk", "dateOfBirth": "k313rcb6", "displayName": "KmJ5gqYw", "emailAddress": "UpdcJk8j", "password": "MlssfwJ7", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 224 'PublicCreateUserV3' test.out

#- 225 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'eLL8RXth' \
    --query 'Tzln9DGJ' \
    > test.out 2>&1
eval_tap $? 225 'CheckUserAvailability' test.out

#- 226 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["iz03TVlZ", "CU1S8HAF", "sDXFYpYW"]}' \
    > test.out 2>&1
eval_tap $? 226 'PublicBulkGetUsers' test.out

#- 227 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "abqRm761", "languageTag": "wWDhbMbs"}' \
    > test.out 2>&1
eval_tap $? 227 'PublicSendRegistrationCode' test.out

#- 228 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "xR2zPDjY", "emailAddress": "Y7WxzSFh"}' \
    > test.out 2>&1
eval_tap $? 228 'PublicVerifyRegistrationCode' test.out

#- 229 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "pkR2ZTPs", "languageTag": "s1yg9kuv"}' \
    > test.out 2>&1
eval_tap $? 229 'PublicForgotPasswordV3' test.out

#- 230 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId '0pnvXxLZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 230 'GetAdminInvitationV3' test.out

#- 231 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'x4zz0ykQ' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "e6DyV54P", "policyId": "LfdR4589", "policyVersionId": "hSskZBWE"}, {"isAccepted": false, "localizedPolicyVersionId": "9sMjcZp5", "policyId": "DXrxGa5q", "policyVersionId": "9goMQM1r"}, {"isAccepted": true, "localizedPolicyVersionId": "pWLh3QUZ", "policyId": "5zwCKrrw", "policyVersionId": "WFxZbuyf"}], "authType": "EMAILPASSWD", "country": "eXvOAcPl", "dateOfBirth": "52SvNg7Y", "displayName": "Lm9JJ78W", "password": "iKeDyel0", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 231 'CreateUserFromInvitationV3' test.out

#- 232 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "jafk6JRx", "country": "L1x77ix7", "dateOfBirth": "7xYtsHUW", "displayName": "uQP9SKeS", "languageTag": "XjVAzPHv", "userName": "WG5GCRlb"}' \
    > test.out 2>&1
eval_tap $? 232 'UpdateUserV3' test.out

#- 233 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "dkvUBdfw", "country": "jQpyzg6q", "dateOfBirth": "8UrZUvWG", "displayName": "WykUnrXU", "languageTag": "WmWc4aEO", "userName": "GIPYXvdr"}' \
    > test.out 2>&1
eval_tap $? 233 'PublicPartialUpdateUserV3' test.out

#- 234 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "q2q6hKci", "emailAddress": "xPDJoaWk", "languageTag": "USfvhUK8"}' \
    > test.out 2>&1
eval_tap $? 234 'PublicSendVerificationCodeV3' test.out

#- 235 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "HhOH1npZ", "contactType": "KSqCqIDK", "languageTag": "TLdpQG8V", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 235 'PublicUserVerificationV3' test.out

#- 236 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "tHE50BvB", "country": "cnWf9IIW", "dateOfBirth": "2Iu6KT8b", "displayName": "DIFxfe2S", "emailAddress": "mVfF8pTa", "password": "jajM5zu7", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 236 'PublicUpgradeHeadlessAccountV3' test.out

#- 237 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "F8pcGHkx", "password": "j4bkdizq"}' \
    > test.out 2>&1
eval_tap $? 237 'PublicVerifyHeadlessAccountV3' test.out

#- 238 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "lEUQe8qZ", "newPassword": "xxb6Ao9T", "oldPassword": "yVOTPLeZ"}' \
    > test.out 2>&1
eval_tap $? 238 'PublicUpdatePasswordV3' test.out

#- 239 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'M1WnQWUM' \
    > test.out 2>&1
eval_tap $? 239 'PublicCreateJusticeUser' test.out

#- 240 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'l1lUE15G' \
    --redirectUri 'uKmZ1N8U' \
    --ticket '6lPORJyp' \
    > test.out 2>&1
eval_tap $? 240 'PublicPlatformLinkV3' test.out

#- 241 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '5fB05pXc' \
    --body '{"platformNamespace": "yZ57jy9V"}' \
    > test.out 2>&1
eval_tap $? 241 'PublicPlatformUnlinkV3' test.out

#- 242 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'L5Y4m9jJ' \
    > test.out 2>&1
eval_tap $? 242 'PublicPlatformUnlinkAllV3' test.out

#- 243 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'R0Mbv6oy' \
    --ticket 'gA2Q0YDq' \
    > test.out 2>&1
eval_tap $? 243 'PublicForcePlatformLinkV3' test.out

#- 244 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'w46KQ0et' \
    --clientId 'ta4GRyVt' \
    --redirectUri '8gnRUhkl' \
    > test.out 2>&1
eval_tap $? 244 'PublicWebLinkPlatform' test.out

#- 245 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'klR6zArm' \
    --state 'y31NiUOb' \
    > test.out 2>&1
eval_tap $? 245 'PublicWebLinkPlatformEstablish' test.out

#- 246 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "92ydoOpy", "emailAddress": "TlkIeCU2", "newPassword": "y0eAcaod"}' \
    > test.out 2>&1
eval_tap $? 246 'ResetPasswordV3' test.out

#- 247 PublicGetUserByUserIdV3
samples/cli/sample-apps Iam publicGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'k2SaS4H4' \
    > test.out 2>&1
eval_tap $? 247 'PublicGetUserByUserIdV3' test.out

#- 248 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xt6WbR06' \
    --activeOnly 'false' \
    --after 'PSRNWd3c' \
    --before 'yccl2k13' \
    --limit '14' \
    > test.out 2>&1
eval_tap $? 248 'PublicGetUserBanHistoryV3' test.out

#- 249 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'aSIXe1uw' \
    > test.out 2>&1
eval_tap $? 249 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 250 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId '3FTqCkDk' \
    > test.out 2>&1
eval_tap $? 250 'PublicGetUserInformationV3' test.out

#- 251 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '91EzHOne' \
    --after '0.7318618083322369' \
    --before '0.821581995319037' \
    --limit '49' \
    > test.out 2>&1
eval_tap $? 251 'PublicGetUserLoginHistoriesV3' test.out

#- 252 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '0pUQcON5' \
    --after 'diAh7WBF' \
    --before 'fxTDiWpP' \
    --limit '9' \
    > test.out 2>&1
eval_tap $? 252 'PublicGetUserPlatformAccountsV3' test.out

#- 253 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '215bopra' \
    --body '{"platformId": "Fvf42Okw", "platformUserId": "stPWrul6"}' \
    > test.out 2>&1
eval_tap $? 253 'PublicLinkPlatformAccount' test.out

#- 254 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'Xfj9ET06' \
    --body '{"chosenNamespaces": ["cDkYsh6g", "shqEnLSR", "PcOk6tea"], "requestId": "KQkhhvrH"}' \
    > test.out 2>&1
eval_tap $? 254 'PublicForceLinkPlatformWithProgression' test.out

#- 255 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'GEKFB2vp' \
    > test.out 2>&1
eval_tap $? 255 'PublicGetPublisherUserV3' test.out

#- 256 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fMo9bFLE' \
    --password 'NqfjehLQ' \
    > test.out 2>&1
eval_tap $? 256 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 257 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'DnT2pfdh' \
    --before 'AeTaSE4Q' \
    --isWildcard 'true' \
    --limit '59' \
    > test.out 2>&1
eval_tap $? 257 'PublicGetRolesV3' test.out

#- 258 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'Y7oqR1oU' \
    > test.out 2>&1
eval_tap $? 258 'PublicGetRoleV3' test.out

#- 259 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 259 'PublicGetMyUserV3' test.out

#- 260 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "wVSDiQDR"}' \
    > test.out 2>&1
eval_tap $? 260 'PublicSendVerificationLinkV3' test.out

#- 261 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'P55iic5W' \
    > test.out 2>&1
eval_tap $? 261 'PublicVerifyUserByLinkV3' test.out

#- 262 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'TmQmBhVn' \
    --code 'q4BmgWkx' \
    --error '93hOGOdK' \
    --state '0BBf8DF6' \
    > test.out 2>&1
eval_tap $? 262 'PlatformAuthenticateSAMLV3Handler' test.out

#- 263 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'OrJWCfys' \
    --payload 'OBoyDTz7' \
    > test.out 2>&1
eval_tap $? 263 'LoginSSOClient' test.out

#- 264 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'AdWLF1fj' \
    > test.out 2>&1
eval_tap $? 264 'LogoutSSOClient' test.out

#- 265 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 4}' \
    > test.out 2>&1
eval_tap $? 265 'AdminCreateTestUsersV4' test.out

#- 266 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["mKfVGQyA", "DGEHat1n", "qKhFe08n"]}' \
    > test.out 2>&1
eval_tap $? 266 'AdminBulkCheckValidUserIDV4' test.out

#- 267 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '3OrcUOuF' \
    --body '{"avatarUrl": "bIcNIOKb", "country": "Y01mEpBj", "dateOfBirth": "luKGoKyA", "displayName": "LUWsyxG4", "languageTag": "X7UhuB3Y", "userName": "QIevKGYl"}' \
    > test.out 2>&1
eval_tap $? 267 'AdminUpdateUserV4' test.out

#- 268 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'zLhgc5av' \
    --body '{"code": "gFzBPLee", "emailAddress": "YpivIzed"}' \
    > test.out 2>&1
eval_tap $? 268 'AdminUpdateUserEmailAddressV4' test.out

#- 269 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ZcOxBr5J' \
    > test.out 2>&1
eval_tap $? 269 'AdminDisableUserMFAV4' test.out

#- 270 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'MSfmGTsb' \
    > test.out 2>&1
eval_tap $? 270 'AdminListUserRolesV4' test.out

#- 271 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '7d4sGFx2' \
    --body '{"assignedNamespaces": ["3rm9YDl8", "YLgCIYQ9", "FXfJ9Oub"], "roleId": "s6af2eS3"}' \
    > test.out 2>&1
eval_tap $? 271 'AdminUpdateUserRoleV4' test.out

#- 272 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'DgVDPUEt' \
    --body '{"assignedNamespaces": ["nMFaxGbu", "ymbV9m1K", "pCWlAo1f"], "roleId": "gCCPT8ED"}' \
    > test.out 2>&1
eval_tap $? 272 'AdminAddUserRoleV4' test.out

#- 273 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'dnYs0P4i' \
    --body '{"assignedNamespaces": ["QKkuCKBG", "EskojsjI", "nu1GqzCS"], "roleId": "ukwRindL"}' \
    > test.out 2>&1
eval_tap $? 273 'AdminRemoveUserRoleV4' test.out

#- 274 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'true' \
    --limit '77' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 274 'AdminGetRolesV4' test.out

#- 275 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "HlsA86qf"}' \
    > test.out 2>&1
eval_tap $? 275 'AdminCreateRoleV4' test.out

#- 276 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId '08gBLS7B' \
    > test.out 2>&1
eval_tap $? 276 'AdminGetRoleV4' test.out

#- 277 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'WoqxOOeI' \
    > test.out 2>&1
eval_tap $? 277 'AdminDeleteRoleV4' test.out

#- 278 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'tLOtWpQu' \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "trWVnGFm"}' \
    > test.out 2>&1
eval_tap $? 278 'AdminUpdateRoleV4' test.out

#- 279 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'u50m8zPi' \
    --body '{"permissions": [{"action": 1, "resource": "TBzSsKev", "schedAction": 17, "schedCron": "Oov13yfr", "schedRange": ["f2jdHjMR", "YsNtpBrn", "vZVVpZFt"]}, {"action": 38, "resource": "CaUUDmZe", "schedAction": 53, "schedCron": "06OjoUKt", "schedRange": ["TFqt62aP", "KmJDLw7Y", "pmZUP5KJ"]}, {"action": 24, "resource": "Gc6HlaWA", "schedAction": 24, "schedCron": "PCoERxCo", "schedRange": ["F9ShpM9X", "QedJUAZi", "u7U3hTRS"]}]}' \
    > test.out 2>&1
eval_tap $? 279 'AdminUpdateRolePermissionsV4' test.out

#- 280 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'SirMK5V7' \
    --body '{"permissions": [{"action": 54, "resource": "cHm133QA", "schedAction": 84, "schedCron": "NEYsFo0p", "schedRange": ["ZHDQzYKr", "WDbZJLe2", "nxeFmt1a"]}, {"action": 30, "resource": "krYoisdi", "schedAction": 23, "schedCron": "NYi9YBrv", "schedRange": ["BOPYAwCQ", "qBtMvlVi", "lQLJmhLz"]}, {"action": 98, "resource": "0VORV7dx", "schedAction": 29, "schedCron": "MfAXrG4S", "schedRange": ["fMwCW8Ph", "nOHiQzNM", "47cilv63"]}]}' \
    > test.out 2>&1
eval_tap $? 280 'AdminAddRolePermissionsV4' test.out

#- 281 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'nwPWlyyW' \
    --body '["PfNWb3Lz", "M8Vh8Pbh", "XgyHlyZ0"]' \
    > test.out 2>&1
eval_tap $? 281 'AdminDeleteRolePermissionsV4' test.out

#- 282 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'H0mqOd8j' \
    --after 'HpWq4bXD' \
    --before 'RQhoPueu' \
    --limit '23' \
    > test.out 2>&1
eval_tap $? 282 'AdminListAssignedUsersV4' test.out

#- 283 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'r8uLu9GD' \
    --body '{"assignedNamespaces": ["rZYXfNc0", "OBvOr8Zc", "FdmWdFIn"], "namespace": "NPXrSZWL", "userId": "3wGW8nZb"}' \
    > test.out 2>&1
eval_tap $? 283 'AdminAssignUserToRoleV4' test.out

#- 284 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId '0Jg6hcqI' \
    --body '{"namespace": "FaN32D4P", "userId": "LLUbMIYa"}' \
    > test.out 2>&1
eval_tap $? 284 'AdminRevokeUserFromRoleV4' test.out

#- 285 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "SX0xqZ5n", "country": "p1tku7VI", "dateOfBirth": "Wu4tsDkC", "displayName": "p52We08l", "languageTag": "EN79MrJq", "userName": "sKTNOPIk"}' \
    > test.out 2>&1
eval_tap $? 285 'AdminUpdateMyUserV4' test.out

#- 286 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 286 'AdminDisableMyAuthenticatorV4' test.out

#- 287 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'HDyXNEfu' \
    > test.out 2>&1
eval_tap $? 287 'AdminEnableMyAuthenticatorV4' test.out

#- 288 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 288 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 289 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 289 'AdminGetMyBackupCodesV4' test.out

#- 290 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 290 'AdminGenerateMyBackupCodesV4' test.out

#- 291 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 291 'AdminDisableMyBackupCodesV4' test.out

#- 292 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 292 'AdminDownloadMyBackupCodesV4' test.out

#- 293 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 293 'AdminEnableMyBackupCodesV4' test.out

#- 294 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 294 'AdminGetMyEnabledFactorsV4' test.out

#- 295 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'ghQiG9cp' \
    > test.out 2>&1
eval_tap $? 295 'AdminMakeFactorMyDefaultV4' test.out

#- 296 AdminInviteUserV4
samples/cli/sample-apps Iam adminInviteUserV4 \
    --body '{"assignedNamespaces": ["7tFEbN54", "lMgQQruV", "GHu8gcFe"], "emailAddresses": ["oaW5HI96", "rFtQ7zbM", "s0xZA1HZ"], "isAdmin": true, "roleId": "Z0fEuRYA"}' \
    > test.out 2>&1
eval_tap $? 296 'AdminInviteUserV4' test.out

#- 297 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "SBnazOp1", "policyId": "TKKTOPlS", "policyVersionId": "yHCNjnNU"}, {"isAccepted": false, "localizedPolicyVersionId": "s7O5m7Z0", "policyId": "iDf7Biyj", "policyVersionId": "3WBf6SG9"}, {"isAccepted": false, "localizedPolicyVersionId": "vzkatdIj", "policyId": "oi0nUSQe", "policyVersionId": "BB7ZSoVZ"}], "authType": "EMAILPASSWD", "country": "LmY3SR11", "dateOfBirth": "ONGSQ0T3", "displayName": "Fhf2uwLw", "emailAddress": "Z0eFWgVS", "password": "wLnxBWcR", "passwordMD5Sum": "GvIvah5V", "username": "fCkmnZ88", "verified": false}' \
    > test.out 2>&1
eval_tap $? 297 'PublicCreateTestUserV4' test.out

#- 298 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "nV3rrNVl", "policyId": "yUfZNFik", "policyVersionId": "wRjx3Rjp"}, {"isAccepted": true, "localizedPolicyVersionId": "uf9x5aD0", "policyId": "4Prw2PLH", "policyVersionId": "Ezrxt9wu"}, {"isAccepted": true, "localizedPolicyVersionId": "K8MkZ0RX", "policyId": "mUcOP91C", "policyVersionId": "Y2EBlIWI"}], "authType": "EMAILPASSWD", "code": "rXSd8fZG", "country": "69Rz4Uco", "dateOfBirth": "5wQ3SiZh", "displayName": "nG8842d1", "emailAddress": "5MiUwl3r", "password": "FK3kNzpv", "passwordMD5Sum": "nPfxWxTy", "reachMinimumAge": true, "username": "n3k0sHI0"}' \
    > test.out 2>&1
eval_tap $? 298 'PublicCreateUserV4' test.out

#- 299 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'dRVaVNpr' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "20J2Keg9", "policyId": "EheKANZ6", "policyVersionId": "JRRVFRPt"}, {"isAccepted": true, "localizedPolicyVersionId": "LcSWlTO1", "policyId": "f7lan01t", "policyVersionId": "x53o5ljp"}, {"isAccepted": true, "localizedPolicyVersionId": "ia0VFgQc", "policyId": "dFU8tDQb", "policyVersionId": "aiEnAhUF"}], "authType": "EMAILPASSWD", "country": "rQkyia3B", "dateOfBirth": "Vj762dnp", "displayName": "5lyaRsq1", "password": "wtEP08sD", "reachMinimumAge": false, "username": "Bv1EMJOj"}' \
    > test.out 2>&1
eval_tap $? 299 'CreateUserFromInvitationV4' test.out

#- 300 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "5MKE9tLc", "country": "W5Pg40D9", "dateOfBirth": "jhyQ9NTz", "displayName": "8x7YKXjR", "languageTag": "xXMXiu74", "userName": "xmX7n7q2"}' \
    > test.out 2>&1
eval_tap $? 300 'PublicUpdateUserV4' test.out

#- 301 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Ta4IMbZX", "emailAddress": "xe7lV7dn"}' \
    > test.out 2>&1
eval_tap $? 301 'PublicUpdateUserEmailAddressV4' test.out

#- 302 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "z79ICYUl", "country": "0ETAJWQf", "dateOfBirth": "Tn4qpfdV", "displayName": "S9k2BJ8C", "emailAddress": "VjRHZn0D", "password": "2qr7jSrz", "reachMinimumAge": false, "username": "KSYCpMgr", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 302 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 303 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "IAbvZnPu", "password": "SWlNvjNJ", "username": "DPCY6Ffk"}' \
    > test.out 2>&1
eval_tap $? 303 'PublicUpgradeHeadlessAccountV4' test.out

#- 304 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 304 'PublicDisableMyAuthenticatorV4' test.out

#- 305 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'rhdtGOQn' \
    > test.out 2>&1
eval_tap $? 305 'PublicEnableMyAuthenticatorV4' test.out

#- 306 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 306 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 307 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 307 'PublicGetMyBackupCodesV4' test.out

#- 308 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 308 'PublicGenerateMyBackupCodesV4' test.out

#- 309 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 309 'PublicDisableMyBackupCodesV4' test.out

#- 310 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 310 'PublicDownloadMyBackupCodesV4' test.out

#- 311 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 311 'PublicEnableMyBackupCodesV4' test.out

#- 312 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 312 'PublicRemoveTrustedDeviceV4' test.out

#- 313 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 313 'PublicGetMyEnabledFactorsV4' test.out

#- 314 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'Iy0jttzc' \
    > test.out 2>&1
eval_tap $? 314 'PublicMakeFactorMyDefaultV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE