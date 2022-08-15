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
    --after '7' \
    --before '86' \
    --limit '7' \
    --roleId 'fLFIA2bM' \
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
    --userId 'yD25oH7i' \
    > test.out 2>&1
eval_tap $? 34 'GetUserInformation' test.out

#- 35 DeleteUserInformation
eval_tap 0 35 'DeleteUserInformation # SKIP deprecated' test.out

#- 36 GetUserLoginHistories
samples/cli/sample-apps Iam getUserLoginHistories \
    --namespace $AB_NAMESPACE \
    --userId '7a3Nz1H0' \
    --after '0.3621367872904352' \
    --before '0.652981823603038' \
    --limit '5' \
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
    --userId 'vldxELN2' \
    > test.out 2>&1
eval_tap $? 41 'GetUserPlatformAccounts' test.out

#- 42 GetUserMapping
samples/cli/sample-apps Iam getUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'rDiVig6F' \
    --userId 'DmEcExsC' \
    > test.out 2>&1
eval_tap $? 42 'GetUserMapping' test.out

#- 43 GetUserJusticePlatformAccount
eval_tap 0 43 'GetUserJusticePlatformAccount # SKIP deprecated' test.out

#- 44 PlatformLink
samples/cli/sample-apps Iam platformLink \
    --namespace $AB_NAMESPACE \
    --platformId 'sWYvdm4i' \
    --userId 'oUcKgUtN' \
    --ticket 'oqcBRpBF' \
    > test.out 2>&1
eval_tap $? 44 'PlatformLink' test.out

#- 45 PlatformUnlink
samples/cli/sample-apps Iam platformUnlink \
    --namespace $AB_NAMESPACE \
    --platformId '37PzrqkI' \
    --userId 'YiiXRr6I' \
    --platformNamespace 'xaDw4CdS' \
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
    --userId 'QAhBIa5i' \
    --body '{"LoginID": "XwPggYPD", "Password": "PgDL6VJc"}' \
    > test.out 2>&1
eval_tap $? 50 'UpgradeHeadlessAccount' test.out

#- 51 UpgradeHeadlessAccountWithVerificationCode
samples/cli/sample-apps Iam upgradeHeadlessAccountWithVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'zvboAcYa' \
    --body '{"Code": "WyHg7u84", "Password": "SM0UIdQx", "loginId": "RL6Fzo9M"}' \
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
    --body '{"AgeRestriction": 46, "Enable": true}' \
    > test.out 2>&1
eval_tap $? 81 'AdminUpdateAgeRestrictionConfigV2' test.out

#- 82 GetListCountryAgeRestriction
samples/cli/sample-apps Iam getListCountryAgeRestriction \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 82 'GetListCountryAgeRestriction' test.out

#- 83 UpdateCountryAgeRestriction
samples/cli/sample-apps Iam updateCountryAgeRestriction \
    --countryCode 'yQB1PraZ' \
    --namespace $AB_NAMESPACE \
    --body '{"AgeRestriction": 65}' \
    > test.out 2>&1
eval_tap $? 83 'UpdateCountryAgeRestriction' test.out

#- 84 AdminSearchUsersV2
samples/cli/sample-apps Iam adminSearchUsersV2 \
    --namespace $AB_NAMESPACE \
    --after 'X8nT2U44' \
    --before 'LKP5FnqC' \
    --displayName 'ZbJGJN0M' \
    --limit '35' \
    --loginId 'nPLJa4Wa' \
    --platformUserId 'rumbCWD7' \
    --roleId 'JPmkFAHR' \
    --userId 'UfuktHzP' \
    --platformId '0IZ5LDkO' \
    > test.out 2>&1
eval_tap $? 84 'AdminSearchUsersV2' test.out

#- 85 AdminGetUserByUserIdV2
samples/cli/sample-apps Iam adminGetUserByUserIdV2 \
    --namespace $AB_NAMESPACE \
    --userId 'ZrtvD8Lu' \
    > test.out 2>&1
eval_tap $? 85 'AdminGetUserByUserIdV2' test.out

#- 86 AdminUpdateUserV2
samples/cli/sample-apps Iam adminUpdateUserV2 \
    --namespace $AB_NAMESPACE \
    --userId 'mpaY2J6O' \
    --body '{"Country": "D63tkJbp", "DateOfBirth": "a9tY4cnk", "DisplayName": "EVlhumym", "LanguageTag": "iZ2JsUAH"}' \
    > test.out 2>&1
eval_tap $? 86 'AdminUpdateUserV2' test.out

#- 87 AdminBanUserV2
samples/cli/sample-apps Iam adminBanUserV2 \
    --namespace $AB_NAMESPACE \
    --userId 'rz01BbX1' \
    --body '{"ban": "MsHDWqEw", "comment": "L8WmVh5x", "endDate": "v1fnYKgp", "reason": "J33ke24b", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 87 'AdminBanUserV2' test.out

#- 88 AdminGetUserBanV2
samples/cli/sample-apps Iam adminGetUserBanV2 \
    --namespace $AB_NAMESPACE \
    --userId 'cVUCOMke' \
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 88 'AdminGetUserBanV2' test.out

#- 89 AdminDisableUserV2
samples/cli/sample-apps Iam adminDisableUserV2 \
    --namespace $AB_NAMESPACE \
    --userId 'CS76Qm2I' \
    --body '{"Reason": "gmm0WX8A"}' \
    > test.out 2>&1
eval_tap $? 89 'AdminDisableUserV2' test.out

#- 90 AdminEnableUserV2
samples/cli/sample-apps Iam adminEnableUserV2 \
    --namespace $AB_NAMESPACE \
    --userId 'pzh0AmMM' \
    > test.out 2>&1
eval_tap $? 90 'AdminEnableUserV2' test.out

#- 91 AdminResetPasswordV2
samples/cli/sample-apps Iam adminResetPasswordV2 \
    --namespace $AB_NAMESPACE \
    --userId '2etu2r0Z' \
    --body '{"LanguageTag": "fnpuoN2S", "NewPassword": "xkg8bDSa", "OldPassword": "zEiGE6es"}' \
    > test.out 2>&1
eval_tap $? 91 'AdminResetPasswordV2' test.out

#- 92 AdminDeletePlatformLinkV2
samples/cli/sample-apps Iam adminDeletePlatformLinkV2 \
    --namespace $AB_NAMESPACE \
    --platformId '0c4Y3ZBt' \
    --userId 'J2MUdJdA' \
    --platformNamespace 'oPxswHuQ' \
    > test.out 2>&1
eval_tap $? 92 'AdminDeletePlatformLinkV2' test.out

#- 93 AdminPutUserRolesV2
samples/cli/sample-apps Iam adminPutUserRolesV2 \
    --namespace $AB_NAMESPACE \
    --userId 'C8Ux7ysz' \
    --body '["24BAKs60", "KIQDYiOb", "34bfVnsL"]' \
    > test.out 2>&1
eval_tap $? 93 'AdminPutUserRolesV2' test.out

#- 94 AdminCreateUserRolesV2
samples/cli/sample-apps Iam adminCreateUserRolesV2 \
    --namespace $AB_NAMESPACE \
    --userId 'NgNq94sE' \
    --body '["1Xongxjj", "ROndVHkA", "JDn7EL6t"]' \
    > test.out 2>&1
eval_tap $? 94 'AdminCreateUserRolesV2' test.out

#- 95 PublicGetCountryAgeRestriction
samples/cli/sample-apps Iam publicGetCountryAgeRestriction \
    --countryCode 'L8CVmxtc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 95 'PublicGetCountryAgeRestriction' test.out

#- 96 PublicCreateUserV2
samples/cli/sample-apps Iam publicCreateUserV2 \
    --namespace $AB_NAMESPACE \
    --body '{"AuthType": "zTJVBUka", "Country": "UoDdO5Ux", "DisplayName": "nUzHeXla", "LoginId": "1V5lqCwU", "Password": "e58bYkQn", "PasswordMD5Sum": "1c6IRDpX"}' \
    > test.out 2>&1
eval_tap $? 96 'PublicCreateUserV2' test.out

#- 97 PublicForgotPasswordV2
samples/cli/sample-apps Iam publicForgotPasswordV2 \
    --namespace $AB_NAMESPACE \
    --body '{"Context": "XiQD2wk5", "LanguageTag": "NWipoVEd", "LoginID": "NLs4UQTa"}' \
    > test.out 2>&1
eval_tap $? 97 'PublicForgotPasswordV2' test.out

#- 98 PublicResetPasswordV2
samples/cli/sample-apps Iam publicResetPasswordV2 \
    --namespace $AB_NAMESPACE \
    --body '{"Code": "atvEjyze", "LoginID": "WRfZGu8Z", "NewPassword": "vW5kjNet"}' \
    > test.out 2>&1
eval_tap $? 98 'PublicResetPasswordV2' test.out

#- 99 PublicGetUserByUserIDV2
samples/cli/sample-apps Iam publicGetUserByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'mEE5ScG1' \
    > test.out 2>&1
eval_tap $? 99 'PublicGetUserByUserIDV2' test.out

#- 100 PublicUpdateUserV2
samples/cli/sample-apps Iam publicUpdateUserV2 \
    --namespace $AB_NAMESPACE \
    --userId 'xAGUddVl' \
    --body '{"Country": "7KPXMbAs", "DateOfBirth": "yd6tqt0D", "DisplayName": "KhpOEZwb", "LanguageTag": "aotbpoTJ"}' \
    > test.out 2>&1
eval_tap $? 100 'PublicUpdateUserV2' test.out

#- 101 PublicGetUserBan
samples/cli/sample-apps Iam publicGetUserBan \
    --namespace $AB_NAMESPACE \
    --userId 'sklDqwKM' \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 101 'PublicGetUserBan' test.out

#- 102 PublicUpdatePasswordV2
samples/cli/sample-apps Iam publicUpdatePasswordV2 \
    --namespace $AB_NAMESPACE \
    --userId 'SCdc3cyZ' \
    --body '{"LanguageTag": "FwHkPVUb", "NewPassword": "zUCTBmcz", "OldPassword": "Qg0RZzzB"}' \
    > test.out 2>&1
eval_tap $? 102 'PublicUpdatePasswordV2' test.out

#- 103 GetListJusticePlatformAccounts
samples/cli/sample-apps Iam getListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId '8uIie4O7' \
    > test.out 2>&1
eval_tap $? 103 'GetListJusticePlatformAccounts' test.out

#- 104 PublicPlatformLinkV2
samples/cli/sample-apps Iam publicPlatformLinkV2 \
    --namespace $AB_NAMESPACE \
    --platformId '4L6V3QiW' \
    --userId 'EuTrnhhk' \
    --ticket 'dYccIBnl' \
    > test.out 2>&1
eval_tap $? 104 'PublicPlatformLinkV2' test.out

#- 105 PublicDeletePlatformLinkV2
samples/cli/sample-apps Iam publicDeletePlatformLinkV2 \
    --namespace $AB_NAMESPACE \
    --platformId 'RW3crx3e' \
    --userId 'awsF8vBa' \
    --platformNamespace 'Bf50ephN' \
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
    --body '[{"field": "b9zRpy0h", "validation": {"allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "description": [{"language": "BT6lX8gs", "message": ["gc0WhxUe", "fl2JaiMa", "kksOBy0m"]}, {"language": "32VvxJmE", "message": ["MLnm6zZ2", "7LjhKUMH", "IzuAC2Pi"]}, {"language": "RWwpucG6", "message": ["21Zfmnvt", "gfPPQGtp", "kfoW7fza"]}], "isCustomRegex": true, "letterCase": "2PGL87Tu", "maxLength": 81, "maxRepeatingAlphaNum": 24, "maxRepeatingSpecialCharacter": 3, "minCharType": 64, "minLength": 21, "regex": "4ziflMJc", "specialCharacterLocation": "2dN9UHSh", "specialCharacters": ["aBtmByLP", "33WwzMyw", "ZstZgAf8"]}}, {"field": "A8uffRlu", "validation": {"allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "description": [{"language": "m6inH0r7", "message": ["jvJaXEcw", "QXIlNZL3", "stZrnVmZ"]}, {"language": "ErF9UZUl", "message": ["Z0eijlm2", "sW1nHt7Z", "OUrahpua"]}, {"language": "YEa7uiH1", "message": ["sZ0v0tQM", "kpg0a606", "hiVsS7qy"]}], "isCustomRegex": true, "letterCase": "TGItH5vf", "maxLength": 8, "maxRepeatingAlphaNum": 57, "maxRepeatingSpecialCharacter": 12, "minCharType": 78, "minLength": 67, "regex": "b3IvYu7D", "specialCharacterLocation": "7Wx0KD5a", "specialCharacters": ["Sbhlvrn5", "rUDzq43h", "xulDkaFP"]}}, {"field": "yU2XL641", "validation": {"allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "description": [{"language": "vwyJbB00", "message": ["aco4astd", "UcG9B0IS", "rSC1PE3c"]}, {"language": "eK7LmAHt", "message": ["oESLyw8r", "oRdnlvI8", "fV97rtAr"]}, {"language": "EM35hLRl", "message": ["v7sXbMrZ", "SglAT80B", "IwWyJ1vZ"]}], "isCustomRegex": true, "letterCase": "AEdL14q5", "maxLength": 41, "maxRepeatingAlphaNum": 64, "maxRepeatingSpecialCharacter": 87, "minCharType": 73, "minLength": 22, "regex": "smZHfOWz", "specialCharacterLocation": "tv0J2h4X", "specialCharacters": ["MbJkNFnl", "cD4KOdT7", "cRqkAViA"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'ypOhbxJE' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'WrbGDBwg' \
    --before 'Dz5sN3fo' \
    --limit '61' \
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
    --body '{"ageRestriction": 16, "enable": true}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'OLvsMbiL' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 47}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'JIXSvAak' \
    --limit '45' \
    --offset '20' \
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
    --limit '81' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 118 'AdminGetClientsByNamespaceV3' test.out

#- 119 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["X78dfrA7", "VL3KaINb", "NC6qm7h6"], "baseUri": "5gjiTmmd", "clientId": "p3UyNq6X", "clientName": "9E2Ieq9y", "clientPermissions": [{"action": 43, "resource": "taVvLgSD", "schedAction": 52, "schedCron": "aXbIT1Xg", "schedRange": ["7ADCvmiW", "9nvAgzgl", "n7sXaJTf"]}, {"action": 65, "resource": "6gakPSwy", "schedAction": 1, "schedCron": "SR7F0P1n", "schedRange": ["9HzfYCbY", "jD278mwE", "KctROf9z"]}, {"action": 88, "resource": "3Wt4uthn", "schedAction": 57, "schedCron": "O6uuCEGx", "schedRange": ["m8dAdPS4", "GRQnihIC", "XDjTEFS9"]}], "clientPlatform": "8Th4ya89", "deletable": false, "namespace": "glBbwd3R", "oauthClientType": "8Vdnb0JE", "redirectUri": "Z5OGLMSF", "secret": "cdU2EBqU"}' \
    > test.out 2>&1
eval_tap $? 119 'AdminCreateClientV3' test.out

#- 120 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'Y8T0R3Sq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 121 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId '7jfkzOGx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 121 'AdminDeleteClientV3' test.out

#- 122 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'qYSSHvfc' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["VcjsiYvM", "tmnohWGv", "8M2niNNP"], "baseUri": "KyJuW9aR", "clientName": "qO4VVy54", "clientPermissions": [{"action": 16, "resource": "3GkcqKCI", "schedAction": 28, "schedCron": "RViOBG5s", "schedRange": ["breu13M9", "VKi12vKZ", "LYYFxq32"]}, {"action": 5, "resource": "maaCSKO2", "schedAction": 32, "schedCron": "8VQIE30B", "schedRange": ["cIEidQ5q", "8DKzKON7", "cPLunRwq"]}, {"action": 90, "resource": "RVzY3Fxa", "schedAction": 51, "schedCron": "ZUMArxEn", "schedRange": ["o0qoOedv", "KoGiyCS4", "Hak4TRzu"]}], "clientPlatform": "Rav8L8if", "deletable": false, "namespace": "cy6UoV27", "redirectUri": "sx4J3hHW"}' \
    > test.out 2>&1
eval_tap $? 122 'AdminUpdateClientV3' test.out

#- 123 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'MsoTJ1VD' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 64, "resource": "riClnXxH"}, {"action": 27, "resource": "QX8JfDQu"}, {"action": 33, "resource": "8Af4jSjU"}]}' \
    > test.out 2>&1
eval_tap $? 123 'AdminUpdateClientPermissionV3' test.out

#- 124 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'Hc2PqAgs' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 62, "resource": "Vv2cZnGx"}, {"action": 66, "resource": "X9tWyMyR"}, {"action": 47, "resource": "JDwusuvi"}]}' \
    > test.out 2>&1
eval_tap $? 124 'AdminAddClientPermissionsV3' test.out

#- 125 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '6' \
    --clientId 'Vhg6DJL1' \
    --namespace $AB_NAMESPACE \
    --resource 'c5lhdZah' \
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
    --limit '4' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 128 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 129 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'D59imX6Q' \
    > test.out 2>&1
eval_tap $? 129 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 130 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'rjoLgdxg' \
    --body '{"ACSURL": "nZ37de5U", "AWSCognitoRegion": "1w11z0XD", "AWSCognitoUserPool": "nqO0kUFG", "AllowedClients": ["T1Is9jQI", "qiNQae3u", "EFuA5wjb"], "AppId": "HuiO8zor", "AuthorizationEndpoint": "1X3mLJjR", "ClientId": "XIDoYN7u", "Environment": "OTN9ccTr", "FederationMetadataURL": "u98u8cVK", "GenericOauthFlow": false, "IsActive": true, "Issuer": "8gapHTgz", "JWKSEndpoint": "qVMWdGqs", "KeyID": "Vs18KQAg", "NetflixCertificates": {"encryptedPrivateKey": "egdX67Bp", "encryptedPrivateKeyName": "mTupY7TN", "publicCertificate": "jpXQ1va0", "publicCertificateName": "xfw6APrr", "rootCertificate": "MfXjO5d3", "rootCertificateName": "AhScbNkT"}, "OrganizationId": "cS3QMqEr", "PlatformName": "flm7lXnu", "RedirectUri": "qsCNdswk", "RegisteredDomains": [{"affectedClientIDs": ["EDBGtfqa", "fsaPB8t5", "LN89TO6e"], "domain": "6qlZ7M6U", "namespaces": ["0Pl3F7DM", "Qz7CCMqs", "SWVVZ01X"], "roleId": "r2Li96F2"}, {"affectedClientIDs": ["WBSjHsxd", "y76GTe3R", "aoPMyfMT"], "domain": "50uriC14", "namespaces": ["MiGai6HL", "eDZEHfib", "WTEEmtrP"], "roleId": "WZ6REw4k"}, {"affectedClientIDs": ["gHUW8W92", "qfTJgccG", "XuIT7qKm"], "domain": "qIIvpmlM", "namespaces": ["jt8usWMz", "9DR04rAM", "TzUCHDUZ"], "roleId": "dQXHtIA9"}], "Secret": "azwTm1js", "TeamID": "rDC5FiVl", "TokenAuthenticationType": "B5NzXx7R", "TokenClaimsMapping": {"dDuiGwBi": "UUfQgzpE", "6gAbvco4": "cKNpItWV", "QJaiu3RY": "E0ZaBDm8"}, "TokenEndpoint": "61okkl2u"}' \
    > test.out 2>&1
eval_tap $? 130 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 131 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'zMoS2JZ2' \
    > test.out 2>&1
eval_tap $? 131 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 132 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'wQuHK49S' \
    --body '{"ACSURL": "6d8S3WXl", "AWSCognitoRegion": "BGX9Xi4L", "AWSCognitoUserPool": "eYv6FGhS", "AllowedClients": ["ctg9sX1R", "6bDSbkcY", "UI8aPsL8"], "AppId": "meLufU7g", "AuthorizationEndpoint": "QVIda3KP", "ClientId": "qgVGZiwv", "Environment": "RQ1IWXf4", "FederationMetadataURL": "I54owc9S", "GenericOauthFlow": false, "IsActive": false, "Issuer": "qkktWWyd", "JWKSEndpoint": "RuWHUwAT", "KeyID": "Nnpvu26J", "NetflixCertificates": {"encryptedPrivateKey": "vSOPLhQl", "encryptedPrivateKeyName": "CJrw3DJ6", "publicCertificate": "51BHzZhy", "publicCertificateName": "71zjErVb", "rootCertificate": "TxM9Xvqg", "rootCertificateName": "C4Z5pMCS"}, "OrganizationId": "EAwMHRa4", "PlatformName": "4yaDWDze", "RedirectUri": "7XRINjUI", "RegisteredDomains": [{"affectedClientIDs": ["XTuwAR21", "6bYIJ4Qg", "QE5asxJt"], "domain": "wZdwevSl", "namespaces": ["AVFJh6jT", "MVaeNSDh", "jY0Jueoa"], "roleId": "6ZIBeEXV"}, {"affectedClientIDs": ["pydCYaq2", "glDF05xy", "g8tZTYkj"], "domain": "7PxyTbUv", "namespaces": ["AHnA2Wck", "izcKc6zM", "8MNj34iq"], "roleId": "Ij2cTGpr"}, {"affectedClientIDs": ["F6cVbHWq", "wUpsbMWA", "NBYAXaCK"], "domain": "WaKGZRB6", "namespaces": ["6IQGy3Gi", "sDluevJu", "fHzon1iE"], "roleId": "jvLP2ucf"}], "Secret": "m1vKfpPA", "TeamID": "IoRWxB1b", "TokenAuthenticationType": "21KgLYOo", "TokenClaimsMapping": {"Rx9cOcmg": "qdAw6wp9", "Hl39MmXa": "6rqzvsEz", "OILeQUfs": "RFUwZ9u5"}, "TokenEndpoint": "HPIogykT"}' \
    > test.out 2>&1
eval_tap $? 132 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 133 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'A5bKRYKN' \
    --body '{"affectedClientIDs": ["c4MpBUXd", "emoWoQFe", "yABTxL8n"], "assignedNamespaces": ["g7WbiHdr", "O0IFJWiN", "3DHXWaRH"], "domain": "TJrxGNXP", "roleId": "tLCV9LX5"}' \
    > test.out 2>&1
eval_tap $? 133 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 134 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'oQZnv1fh' \
    --body '{"domain": "pOvLfzdG"}' \
    > test.out 2>&1
eval_tap $? 134 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 135 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'NvC7Jzcf' \
    > test.out 2>&1
eval_tap $? 135 'RetrieveSSOLoginPlatformCredential' test.out

#- 136 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'tWGQttGW' \
    --body '{"acsUrl": "kd0ZBf0s", "apiKey": "ml1GacFf", "appId": "YOQSI4iP", "federationMetadataUrl": "QcyI7mHS", "isActive": true, "redirectUri": "OBMdvW6y", "secret": "LlFGUZRe", "ssoUrl": "0Mv7aFPa"}' \
    > test.out 2>&1
eval_tap $? 136 'AddSSOLoginPlatformCredential' test.out

#- 137 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '1xPslRtb' \
    > test.out 2>&1
eval_tap $? 137 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 138 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'LoA398OI' \
    --body '{"acsUrl": "QhQ9rXXn", "apiKey": "9eElpYAE", "appId": "PF0p6Dwr", "federationMetadataUrl": "YjHFo6gg", "isActive": true, "redirectUri": "nUWcscMt", "secret": "UonI96ID", "ssoUrl": "rA4Ie5m2"}' \
    > test.out 2>&1
eval_tap $? 138 'UpdateSSOPlatformCredential' test.out

#- 139 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'FB5RR0SX' \
    --platformUserId 'ucUnN1aU' \
    > test.out 2>&1
eval_tap $? 139 'AdminGetUserByPlatformUserIDV3' test.out

#- 140 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'MQPpqTOJ' \
    --after '56' \
    --before '69' \
    --limit '26' \
    > test.out 2>&1
eval_tap $? 140 'GetAdminUsersByRoleIdV3' test.out

#- 141 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'Wsg08a5r' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByEmailAddressV3' test.out

#- 142 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["GICiAm8y", "CEdKE0m1", "6fmurtQy"]}' \
    > test.out 2>&1
eval_tap $? 142 'AdminListUserIDByUserIDsV3' test.out

#- 143 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["4c1xmus3", "mN5re4JY", "CjuJY9fk"], "isAdmin": false, "roles": ["apU8y8Ry", "hYDSZTMV", "stTnnXOU"]}' \
    > test.out 2>&1
eval_tap $? 143 'AdminInviteUserV3' test.out

#- 144 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUsersV3' test.out

#- 145 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'fOzGsaRx' \
    --endDate 'BwfNUQNS' \
    --limit '46' \
    --offset '90' \
    --platformBy 'IIGxUMrE' \
    --platformId 'zqiutppI' \
    --query 'aCv6kOgy' \
    --startDate 'tqzaa0ci' \
    > test.out 2>&1
eval_tap $? 145 'AdminSearchUserV3' test.out

#- 146 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["kWq6Vaaa", "4RRxzFat", "7cRM8apX"]}' \
    > test.out 2>&1
eval_tap $? 146 'AdminGetBulkUserByEmailAddressV3' test.out

#- 147 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RCfN4LVD' \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByUserIdV3' test.out

#- 148 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mABhbt1M' \
    --body '{"avatarUrl": "heTiPvjQ", "country": "H2xDtFu5", "dateOfBirth": "a0mD5swb", "displayName": "3wv1edAK", "languageTag": "nRek2z3O", "userName": "VUmEjW1L"}' \
    > test.out 2>&1
eval_tap $? 148 'AdminUpdateUserV3' test.out

#- 149 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fLijuZeO' \
    --activeOnly 'true' \
    --after 'thYQQkbk' \
    --before 'aw07Zzga' \
    --limit '39' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetUserBanV3' test.out

#- 150 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'K8IjlWt7' \
    --body '{"ban": "H7NTe9Cz", "comment": "SCCwi69e", "endDate": "cud5ZtPX", "reason": "kmZoY9io", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 150 'AdminBanUserV3' test.out

#- 151 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'eAlbipMo' \
    --namespace $AB_NAMESPACE \
    --userId 'LD5URzI2' \
    --body '{"enabled": false, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserBanV3' test.out

#- 152 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FiDtaMsX' \
    --body '{"context": "m9czweu6", "emailAddress": "qrtGO218", "languageTag": "2rUKTI1U"}' \
    > test.out 2>&1
eval_tap $? 152 'AdminSendVerificationCodeV3' test.out

#- 153 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'awBsCbUz' \
    --body '{"Code": "nC4GCqn4", "ContactType": "JdtC06Xk", "LanguageTag": "Sh3jNSmg", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 153 'AdminVerifyAccountV3' test.out

#- 154 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'OHv5hSBE' \
    > test.out 2>&1
eval_tap $? 154 'GetUserVerificationCode' test.out

#- 155 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mseXiDF4' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetUserDeletionStatusV3' test.out

#- 156 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Zwzd4CSm' \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 156 'AdminUpdateUserDeletionStatusV3' test.out

#- 157 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NZ2j6mrz' \
    --body '{"code": "SCKLWxoI", "country": "WPqKOuE9", "dateOfBirth": "DhzZxZRq", "displayName": "SfyflPLl", "emailAddress": "6ntPgA19", "password": "Yv1lPuNz", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpgradeHeadlessAccountV3' test.out

#- 158 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'G3GnT5av' \
    > test.out 2>&1
eval_tap $? 158 'AdminDeleteUserInformationV3' test.out

#- 159 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZJht77dv' \
    --after '0.35213929643373165' \
    --before '0.3119084086040468' \
    --limit '59' \
    > test.out 2>&1
eval_tap $? 159 'AdminGetUserLoginHistoriesV3' test.out

#- 160 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'sHjCSN9U' \
    --body '{"Permissions": [{"Action": 51, "Resource": "zdsLG33Q", "SchedAction": 46, "SchedCron": "209CYWyF", "SchedRange": ["JsQUf6oQ", "rINgImwB", "UrPwlBGa"]}, {"Action": 87, "Resource": "xmYePWrx", "SchedAction": 29, "SchedCron": "ZiwL41l8", "SchedRange": ["2ckVk1nu", "ry4XAQy4", "EvYvMgfr"]}, {"Action": 39, "Resource": "sNTKQ2dJ", "SchedAction": 37, "SchedCron": "EVJAi4GD", "SchedRange": ["At30VZ9m", "XbsCE76F", "WEjpdKfU"]}]}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserPermissionV3' test.out

#- 161 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wvh6G1G3' \
    --body '{"Permissions": [{"Action": 22, "Resource": "C7muxQcD", "SchedAction": 34, "SchedCron": "3FnOjXiQ", "SchedRange": ["yPSxRYWj", "qNUrIP1O", "vix7q65D"]}, {"Action": 88, "Resource": "Keg3Enxt", "SchedAction": 78, "SchedCron": "buQXEgp0", "SchedRange": ["Sii3CfBo", "ThCerISR", "Zwdnu6CH"]}, {"Action": 38, "Resource": "udb2pMEv", "SchedAction": 9, "SchedCron": "qdpvXqWc", "SchedRange": ["aKKhDflF", "0ohMhkVg", "GgmuNF2Q"]}]}' \
    > test.out 2>&1
eval_tap $? 161 'AdminAddUserPermissionsV3' test.out

#- 162 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'icSVqq69' \
    --body '[{"Action": 41, "Resource": "xt4CKyBY"}, {"Action": 44, "Resource": "l45GklxL"}, {"Action": 54, "Resource": "4n5n4R0b"}]' \
    > test.out 2>&1
eval_tap $? 162 'AdminDeleteUserPermissionBulkV3' test.out

#- 163 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '16' \
    --namespace $AB_NAMESPACE \
    --resource 'nK5cTuL4' \
    --userId 'yPJewwmK' \
    > test.out 2>&1
eval_tap $? 163 'AdminDeleteUserPermissionV3' test.out

#- 164 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BS2CRQ67' \
    --after 'wlIpXcAc' \
    --before 'w11vbqjT' \
    --limit '94' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserPlatformAccountsV3' test.out

#- 165 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'Qh5MQZWz' \
    > test.out 2>&1
eval_tap $? 165 'AdminGetListJusticePlatformAccounts' test.out

#- 166 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'vO1OLXFa' \
    --userId 'lATgmUVb' \
    > test.out 2>&1
eval_tap $? 166 'AdminCreateJusticeUser' test.out

#- 167 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'GXAcpb6n' \
    --body '{"platformId": "P70GQn8T", "platformUserId": "Na35Eb2J"}' \
    > test.out 2>&1
eval_tap $? 167 'AdminLinkPlatformAccount' test.out

#- 168 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'lJn5u6J1' \
    --userId 'gnngruT6' \
    --body '{"platformNamespace": "RpH8Z475"}' \
    > test.out 2>&1
eval_tap $? 168 'AdminPlatformUnlinkV3' test.out

#- 169 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'RMbc1UiL' \
    --userId 'I7zuZCbF' \
    --ticket 'FyDQGiBy' \
    > test.out 2>&1
eval_tap $? 169 'AdminPlatformLinkV3' test.out

#- 170 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fnfDPn6B' \
    --body '["zrSNtEog", "NtPw98pW", "R6pVHAEL"]' \
    > test.out 2>&1
eval_tap $? 170 'AdminDeleteUserRolesV3' test.out

#- 171 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xonhhxJK' \
    --body '[{"namespace": "Jd0wsFjX", "roleId": "IQaj7T7I"}, {"namespace": "jPNatmbb", "roleId": "nimMAyj6"}, {"namespace": "HuGfJvzs", "roleId": "RlDnKq8G"}]' \
    > test.out 2>&1
eval_tap $? 171 'AdminSaveUserRoleV3' test.out

#- 172 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'UCKdpg1u' \
    --userId 'Nu1aXKv1' \
    > test.out 2>&1
eval_tap $? 172 'AdminAddUserRoleV3' test.out

#- 173 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId '8SgAyz64' \
    --userId 'qbKh5eTs' \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserRoleV3' test.out

#- 174 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YHWYxn3Q' \
    --body '{"enabled": true, "reason": "d86akhdK"}' \
    > test.out 2>&1
eval_tap $? 174 'AdminUpdateUserStatusV3' test.out

#- 175 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'b99GZ7mt' \
    > test.out 2>&1
eval_tap $? 175 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 176 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'mBeymMtV' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "S21WpPBw"}' \
    > test.out 2>&1
eval_tap $? 176 'AdminUpdateClientSecretV3' test.out

#- 177 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'iBFMuiG7' \
    --before 'PkR0l3P5' \
    --isWildcard 'true' \
    --limit '39' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetRolesV3' test.out

#- 178 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "managers": [{"displayName": "jaGrKhfq", "namespace": "M6DzcvAM", "userId": "YrkbMljB"}, {"displayName": "goKM0DJ7", "namespace": "Vvd7Nmbe", "userId": "U2IQhxan"}, {"displayName": "lgYTRVS3", "namespace": "k00QPNNr", "userId": "427x7sag"}], "members": [{"displayName": "vYawvXv4", "namespace": "nMCwBrFY", "userId": "lkgYqVrg"}, {"displayName": "6LvAXLry", "namespace": "GKmNkr1B", "userId": "M8OZSe9d"}, {"displayName": "H7dJWnEO", "namespace": "QOOocKT2", "userId": "bp6PWkUD"}], "permissions": [{"action": 28, "resource": "qY7PEPqS", "schedAction": 66, "schedCron": "jh0OjTqT", "schedRange": ["IzNLBQsu", "5sabQK5t", "pvcvbJSS"]}, {"action": 21, "resource": "Nuvlw7VJ", "schedAction": 47, "schedCron": "mumv50KA", "schedRange": ["P3vypr9S", "aVE96zDD", "g8esnPrl"]}, {"action": 78, "resource": "G237VaeF", "schedAction": 100, "schedCron": "RpkDP4XH", "schedRange": ["8oGwgYh0", "yJ0m2nbn", "a2MYZbKF"]}], "roleName": "8yIx7VRt"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminCreateRoleV3' test.out

#- 179 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'Sv5ASQaR' \
    > test.out 2>&1
eval_tap $? 179 'AdminGetRoleV3' test.out

#- 180 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'RQ5uktSE' \
    > test.out 2>&1
eval_tap $? 180 'AdminDeleteRoleV3' test.out

#- 181 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'WKFMQ5eA' \
    --body '{"deletable": true, "isWildcard": true, "roleName": "uwXy9y7N"}' \
    > test.out 2>&1
eval_tap $? 181 'AdminUpdateRoleV3' test.out

#- 182 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'IekF2nyC' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetRoleAdminStatusV3' test.out

#- 183 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'sYtpdtT9' \
    > test.out 2>&1
eval_tap $? 183 'AdminUpdateAdminRoleStatusV3' test.out

#- 184 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'WxYoetfO' \
    > test.out 2>&1
eval_tap $? 184 'AdminRemoveRoleAdminV3' test.out

#- 185 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId '43L0SeU7' \
    --after 'ooVtajng' \
    --before 'iInwIaks' \
    --limit '55' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleManagersV3' test.out

#- 186 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId '68eUfwRf' \
    --body '{"managers": [{"displayName": "5Cs7x9tj", "namespace": "FuEN4pFA", "userId": "99DnJdTZ"}, {"displayName": "oq1IlZOT", "namespace": "mwt7TSjW", "userId": "2Jrbej72"}, {"displayName": "c26QZLNy", "namespace": "qp9l6PS9", "userId": "0CVI4h1s"}]}' \
    > test.out 2>&1
eval_tap $? 186 'AdminAddRoleManagersV3' test.out

#- 187 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'phLo4ajJ' \
    --body '{"managers": [{"displayName": "T7d0Ezau", "namespace": "VVGjgDMy", "userId": "wy8pWfgq"}, {"displayName": "8GtoLhww", "namespace": "yten051E", "userId": "awLYTybY"}, {"displayName": "BQd2RyMt", "namespace": "UhyUtlcM", "userId": "kcD5D1Ax"}]}' \
    > test.out 2>&1
eval_tap $? 187 'AdminRemoveRoleManagersV3' test.out

#- 188 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'GNwEIYOo' \
    --after 'Gna36z24' \
    --before 'BAZEVWX4' \
    --limit '13' \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleMembersV3' test.out

#- 189 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'iR5j068t' \
    --body '{"members": [{"displayName": "iTTWJ4ET", "namespace": "Rv6aPStg", "userId": "3SdJrvre"}, {"displayName": "zCKfyyLO", "namespace": "zyPRYjVh", "userId": "8clnc4Jc"}, {"displayName": "RjRUJgG9", "namespace": "JYYSsxUs", "userId": "xnJjkHTQ"}]}' \
    > test.out 2>&1
eval_tap $? 189 'AdminAddRoleMembersV3' test.out

#- 190 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'TCcM3RSV' \
    --body '{"members": [{"displayName": "HkYdBTed", "namespace": "ptJvq2Lb", "userId": "KAOf72uR"}, {"displayName": "7IvHqfXe", "namespace": "lYFBKhov", "userId": "cyJONVcA"}, {"displayName": "8UDNshXM", "namespace": "UXJJidPt", "userId": "DwJcTeAy"}]}' \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleMembersV3' test.out

#- 191 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'KraUdgM7' \
    --body '{"permissions": [{"action": 40, "resource": "4j9uRZI1", "schedAction": 25, "schedCron": "zaIn0nrP", "schedRange": ["2rslKK87", "wJpA6s9F", "4VLO2OaS"]}, {"action": 85, "resource": "un7XTdP9", "schedAction": 41, "schedCron": "qdYjk1r0", "schedRange": ["Km0oeHhU", "UfqdNj4e", "YmAxSK72"]}, {"action": 90, "resource": "gdkBICNv", "schedAction": 59, "schedCron": "9D17Zv3n", "schedRange": ["0DAbCwmd", "7xVzqPr9", "8JsQy6dH"]}]}' \
    > test.out 2>&1
eval_tap $? 191 'AdminUpdateRolePermissionsV3' test.out

#- 192 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'FMDufZL8' \
    --body '{"permissions": [{"action": 6, "resource": "iyFHPUJS", "schedAction": 70, "schedCron": "p7koXVmS", "schedRange": ["vWDwwLMw", "AG4CHzQx", "BQsOIoIk"]}, {"action": 37, "resource": "AwVepTlR", "schedAction": 22, "schedCron": "iooMTFAs", "schedRange": ["1rMm5oCq", "o5U1dtRz", "L2BSLfst"]}, {"action": 35, "resource": "JVyZAkUm", "schedAction": 56, "schedCron": "h8PWgqbp", "schedRange": ["92UCk9fu", "ymOclAwI", "1w6Irox4"]}]}' \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRolePermissionsV3' test.out

#- 193 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'srmeIY1U' \
    --body '["2GGniCl2", "o7qS5fwq", "ZcgyAQSg"]' \
    > test.out 2>&1
eval_tap $? 193 'AdminDeleteRolePermissionsV3' test.out

#- 194 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '71' \
    --resource 'u28Wxihc' \
    --roleId 'IGobJG0A' \
    > test.out 2>&1
eval_tap $? 194 'AdminDeleteRolePermissionV3' test.out

#- 195 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 195 'AdminGetMyUserV3' test.out

#- 196 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId '9tEwLY6x' \
    --extendExp 'true' \
    --redirectUri '70lttcve' \
    --password 'BTGMmUIf' \
    --requestId 'IO4qaH6C' \
    --userName 'kXySlORA' \
    > test.out 2>&1
eval_tap $? 196 'UserAuthenticationV3' test.out

#- 197 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'AnXdk1Nk' \
    --linkingToken '35bgeT5z' \
    --password 'FdTQsfuF' \
    --username 'GiczOS6I' \
    > test.out 2>&1
eval_tap $? 197 'AuthenticationWithPlatformLinkV3' test.out

#- 198 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'false' \
    --linkingToken 'ZSyDhgnc' \
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
    --platformId 'sb95kyAF' \
    --userId 'KqfGZYe7' \
    > test.out 2>&1
eval_tap $? 201 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 202 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '3a836ENj' \
    > test.out 2>&1
eval_tap $? 202 'RevokeUserV3' test.out

#- 203 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'omD3pexv' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'true' \
    --redirectUri 'ajS5QKRU' \
    --scope '5vAB0RB9' \
    --state '35qwV029' \
    --targetAuthPage 'VWF0fhgG' \
    --clientId 'kNkoPavp' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 203 'AuthorizeV3' test.out

#- 204 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'ma0ETmfC' \
    > test.out 2>&1
eval_tap $? 204 'TokenIntrospectionV3' test.out

#- 205 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 205 'GetJWKSV3' test.out

#- 206 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'cc7BjFIG' \
    --mfaToken 'ZgjRxWD9' \
    > test.out 2>&1
eval_tap $? 206 'Change2faMethod' test.out

#- 207 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'M1GWER1w' \
    --factor 'QeaETqz1' \
    --mfaToken 'bQIX8Tud' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 207 'Verify2faCode' test.out

#- 208 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Py6lASbQ' \
    --userId 'tkGFmsnM' \
    > test.out 2>&1
eval_tap $? 208 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 209 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'Xo88WevH' \
    --clientId 'gm4uL6n6' \
    --redirectUri 'B10ZKTU1' \
    --requestId 'aMLkPOhs' \
    > test.out 2>&1
eval_tap $? 209 'AuthCodeRequestV3' test.out

#- 210 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'Y9og7nW8' \
    --clientId 'PAgwuAnJ' \
    --createHeadless 'false' \
    --deviceId 'tOaazRxt' \
    --platformToken '18atBDwc' \
    > test.out 2>&1
eval_tap $? 210 'PlatformTokenGrantV3' test.out

#- 211 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 211 'GetRevocationListV3' test.out

#- 212 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'ZD85ExF8' \
    > test.out 2>&1
eval_tap $? 212 'TokenRevocationV3' test.out

#- 213 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --clientId 'PMVqqTXS' \
    --code 'HBQIYK7N' \
    --codeVerifier 'CKTBw739' \
    --extendExp 'false' \
    --password '0vqMomxP' \
    --redirectUri '0GY2grPz' \
    --refreshToken 'HT9CVy2b' \
    --username 'BWxRqq4a' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 213 'TokenGrantV3' test.out

#- 214 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token '8s7awl7A' \
    > test.out 2>&1
eval_tap $? 214 'VerifyTokenV3' test.out

#- 215 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId '3dZRYluG' \
    --code '89tYqfKr' \
    --error 'NR0Cwlg2' \
    --openidAssocHandle 'Jetl9oGO' \
    --openidClaimedId 'ZBOVKdMa' \
    --openidIdentity 'keTN1l4P' \
    --openidMode 'xKaN2Nt0' \
    --openidNs 'rzOYPvC0' \
    --openidOpEndpoint 'yj4r1hhJ' \
    --openidResponseNonce 'Vc7p1Z5k' \
    --openidReturnTo 'd0VN5LWG' \
    --openidSig 'RwQr5ldB' \
    --openidSigned '8XgQFN4t' \
    --state 'Tfcg96WK' \
    > test.out 2>&1
eval_tap $? 215 'PlatformAuthenticationV3' test.out

#- 216 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'jpWt5g7q' \
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
    --clientId 'v7wcytEU' \
    > test.out 2>&1
eval_tap $? 218 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 219 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'fllYASPd' \
    --body '{"platformUserIds": ["WYFlt4dY", "ddM6BzRm", "nKvQVdme"]}' \
    > test.out 2>&1
eval_tap $? 219 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 220 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'K4iZfpII' \
    --platformUserId 'n8O0u2CA' \
    > test.out 2>&1
eval_tap $? 220 'PublicGetUserByPlatformUserIDV3' test.out

#- 221 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'WVT3FleR' \
    > test.out 2>&1
eval_tap $? 221 'PublicGetAsyncStatus' test.out

#- 222 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'sxW6cSbZ' \
    --limit '64' \
    --offset '3' \
    --query 'qH2bdhYT' \
    > test.out 2>&1
eval_tap $? 222 'PublicSearchUserV3' test.out

#- 223 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "Dk9KIRjq", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "7U3Z7JI9", "policyId": "vXrAagIJ", "policyVersionId": "KSbOcKYn"}, {"isAccepted": false, "localizedPolicyVersionId": "qwGOuiQr", "policyId": "WmvdmoyZ", "policyVersionId": "mojOvU7T"}, {"isAccepted": false, "localizedPolicyVersionId": "2z0acAwy", "policyId": "HIy6eO0d", "policyVersionId": "XVyAjEvx"}], "authType": "ZQ166lcP", "code": "YgNYwPih", "country": "1HUd7I6n", "dateOfBirth": "aISId5ol", "displayName": "eAvYz0Ut", "emailAddress": "rVMg7PUK", "password": "lrzPtvYS", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 223 'PublicCreateUserV3' test.out

#- 224 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'fSJbl1hK' \
    --query 'znIkBrp9' \
    > test.out 2>&1
eval_tap $? 224 'CheckUserAvailability' test.out

#- 225 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["3SNdV7YN", "w1PP4fea", "70W2R8yl"]}' \
    > test.out 2>&1
eval_tap $? 225 'PublicBulkGetUsers' test.out

#- 226 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "E1cDcQfq", "languageTag": "w2mJCMFX"}' \
    > test.out 2>&1
eval_tap $? 226 'PublicSendRegistrationCode' test.out

#- 227 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Y2G2RDdp", "emailAddress": "hkSBzfjP"}' \
    > test.out 2>&1
eval_tap $? 227 'PublicVerifyRegistrationCode' test.out

#- 228 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "M64sT93O", "languageTag": "58c3PJki"}' \
    > test.out 2>&1
eval_tap $? 228 'PublicForgotPasswordV3' test.out

#- 229 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'gWeRvW0T' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 229 'GetAdminInvitationV3' test.out

#- 230 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'mYLazf93' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "86yTbDzQ", "policyId": "Gf6Z7cjS", "policyVersionId": "vAgUjMzS"}, {"isAccepted": false, "localizedPolicyVersionId": "xr4ikYnv", "policyId": "6NJTVizv", "policyVersionId": "WLhyHFhy"}, {"isAccepted": false, "localizedPolicyVersionId": "IN7yQeYW", "policyId": "xzm1kCi9", "policyVersionId": "LY0TaU2E"}], "authType": "EMAILPASSWD", "country": "0XZJiJ6P", "dateOfBirth": "FhfhWFU5", "displayName": "lcfjknbw", "password": "5Sjhev2m", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 230 'CreateUserFromInvitationV3' test.out

#- 231 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "1nwpPUa5", "country": "LhQww1kS", "dateOfBirth": "3iL0UJ5y", "displayName": "yqK8bWoL", "languageTag": "pJ7Q1ETU", "userName": "tm8fMGWH"}' \
    > test.out 2>&1
eval_tap $? 231 'UpdateUserV3' test.out

#- 232 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "NGX8Hu9R", "country": "716COKL8", "dateOfBirth": "bK8Xv7S9", "displayName": "YKc4l5a9", "languageTag": "0ow53WhI", "userName": "4Z7HS8XL"}' \
    > test.out 2>&1
eval_tap $? 232 'PublicPartialUpdateUserV3' test.out

#- 233 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "q6jRKXTy", "emailAddress": "d4SK8MWg", "languageTag": "MH1kT5ab"}' \
    > test.out 2>&1
eval_tap $? 233 'PublicSendVerificationCodeV3' test.out

#- 234 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "mhGXcGYT", "contactType": "FDDp45U7", "languageTag": "LP10c8Bf", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 234 'PublicUserVerificationV3' test.out

#- 235 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "LwDUeeHg", "country": "gSV8Lq6E", "dateOfBirth": "GS7D2inJ", "displayName": "9PVAgq7d", "emailAddress": "Aj4sjdDG", "password": "WuQGKOuo", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 235 'PublicUpgradeHeadlessAccountV3' test.out

#- 236 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "XGGC5Jzi", "password": "lmX0hGfl"}' \
    > test.out 2>&1
eval_tap $? 236 'PublicVerifyHeadlessAccountV3' test.out

#- 237 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "fLACuqrT", "newPassword": "eb3WkarT", "oldPassword": "23WpasMP"}' \
    > test.out 2>&1
eval_tap $? 237 'PublicUpdatePasswordV3' test.out

#- 238 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'mBYcHLJS' \
    > test.out 2>&1
eval_tap $? 238 'PublicCreateJusticeUser' test.out

#- 239 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'gMin5Ued' \
    --redirectUri 'R9ykexoJ' \
    --ticket 'xIsQrbxI' \
    > test.out 2>&1
eval_tap $? 239 'PublicPlatformLinkV3' test.out

#- 240 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'o3YxUtAL' \
    --body '{"platformNamespace": "Kx8xu3y0"}' \
    > test.out 2>&1
eval_tap $? 240 'PublicPlatformUnlinkV3' test.out

#- 241 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'SomIIduE' \
    > test.out 2>&1
eval_tap $? 241 'PublicPlatformUnlinkAllV3' test.out

#- 242 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'sXGFYF0D' \
    --clientId 'MGEhOAtZ' \
    --redirectUri 'yfwerDSH' \
    > test.out 2>&1
eval_tap $? 242 'PublicWebLinkPlatform' test.out

#- 243 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'KHhn3pMw' \
    --state '6MD38Y8E' \
    > test.out 2>&1
eval_tap $? 243 'PublicWebLinkPlatformEstablish' test.out

#- 244 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "zKUmiITG", "emailAddress": "r26yHzG8", "newPassword": "5hm8jeor"}' \
    > test.out 2>&1
eval_tap $? 244 'ResetPasswordV3' test.out

#- 245 PublicGetUserByUserIdV3
samples/cli/sample-apps Iam publicGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'XgPKWVoR' \
    > test.out 2>&1
eval_tap $? 245 'PublicGetUserByUserIdV3' test.out

#- 246 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'GNTL3Hqp' \
    --activeOnly 'true' \
    --after 'vyMjzvfq' \
    --before 'H7HPAg9Y' \
    --limit '43' \
    > test.out 2>&1
eval_tap $? 246 'PublicGetUserBanHistoryV3' test.out

#- 247 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LUWh6qJ6' \
    > test.out 2>&1
eval_tap $? 247 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 248 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Lx7o1TSE' \
    --after '0.3575473219799091' \
    --before '0.8970746340114176' \
    --limit '62' \
    > test.out 2>&1
eval_tap $? 248 'PublicGetUserLoginHistoriesV3' test.out

#- 249 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'qszPQA7h' \
    --after 'wMsBBxFF' \
    --before 'h31YCjGR' \
    --limit '67' \
    > test.out 2>&1
eval_tap $? 249 'PublicGetUserPlatformAccountsV3' test.out

#- 250 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'MHWft7BQ' \
    --body '{"platformId": "Pu9yhrUI", "platformUserId": "ykIt26hA"}' \
    > test.out 2>&1
eval_tap $? 250 'PublicLinkPlatformAccount' test.out

#- 251 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'gA0Sgy63' \
    --body '{"chosenNamespaces": ["AsRzy0Oe", "HtuFrPEp", "wb4R0d7w"], "requestId": "bd65lJEd"}' \
    > test.out 2>&1
eval_tap $? 251 'PublicForceLinkPlatformWithProgression' test.out

#- 252 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jO3h4i8X' \
    > test.out 2>&1
eval_tap $? 252 'PublicGetPublisherUserV3' test.out

#- 253 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vLUHQP2M' \
    --password '4QFte0DA' \
    > test.out 2>&1
eval_tap $? 253 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 254 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'eNbrefxJ' \
    --before 'WksF7W2M' \
    --isWildcard 'false' \
    --limit '55' \
    > test.out 2>&1
eval_tap $? 254 'PublicGetRolesV3' test.out

#- 255 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'Qraupk1v' \
    > test.out 2>&1
eval_tap $? 255 'PublicGetRoleV3' test.out

#- 256 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 256 'PublicGetMyUserV3' test.out

#- 257 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'aIuaonvu' \
    --code 'w8WNTEX9' \
    --error 'NbjvBCyL' \
    --state 'dJvJbDKc' \
    > test.out 2>&1
eval_tap $? 257 'PlatformAuthenticateSAMLV3Handler' test.out

#- 258 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId '1J1zyFRd' \
    --payload 'XGX2zWhf' \
    > test.out 2>&1
eval_tap $? 258 'LoginSSOClient' test.out

#- 259 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'KRkcRIFq' \
    > test.out 2>&1
eval_tap $? 259 'LogoutSSOClient' test.out

#- 260 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 76}' \
    > test.out 2>&1
eval_tap $? 260 'AdminCreateTestUsersV4' test.out

#- 261 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["44qBr97i", "f3ssHH84", "b7sGtS55"]}' \
    > test.out 2>&1
eval_tap $? 261 'AdminBulkCheckValidUserIDV4' test.out

#- 262 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'XStg6KZd' \
    --body '{"avatarUrl": "3UCgmNZy", "country": "ZQWU1AxO", "dateOfBirth": "K5zEQljr", "displayName": "62CLyr3N", "languageTag": "ulmEXErb", "userName": "MaexYJys"}' \
    > test.out 2>&1
eval_tap $? 262 'AdminUpdateUserV4' test.out

#- 263 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'SU83jQDP' \
    --body '{"code": "VWgZioDv", "emailAddress": "CAp3Jdp9"}' \
    > test.out 2>&1
eval_tap $? 263 'AdminUpdateUserEmailAddressV4' test.out

#- 264 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Gvj4rjVP' \
    > test.out 2>&1
eval_tap $? 264 'AdminDisableUserMFAV4' test.out

#- 265 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId '1J9rqlbX' \
    > test.out 2>&1
eval_tap $? 265 'AdminListUserRolesV4' test.out

#- 266 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'E2jqhAFc' \
    --body '{"assignedNamespaces": ["3bGAHyq7", "DdsvX47O", "kzm6k1nU"], "roleId": "v0fmIgty"}' \
    > test.out 2>&1
eval_tap $? 266 'AdminUpdateUserRoleV4' test.out

#- 267 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'na1JvuRy' \
    --body '{"assignedNamespaces": ["4wTDSnVi", "SQC7NJBx", "Mm5jiajQ"], "roleId": "1ae2XQvj"}' \
    > test.out 2>&1
eval_tap $? 267 'AdminAddUserRoleV4' test.out

#- 268 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ETK1gMxt' \
    --body '{"assignedNamespaces": ["7lev66ve", "3NdM4Usm", "BwgSx8N4"], "roleId": "hJiaoxCh"}' \
    > test.out 2>&1
eval_tap $? 268 'AdminRemoveUserRoleV4' test.out

#- 269 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'true' \
    --limit '30' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 269 'AdminGetRolesV4' test.out

#- 270 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "7aSmTVw7"}' \
    > test.out 2>&1
eval_tap $? 270 'AdminCreateRoleV4' test.out

#- 271 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId '4Jr8pOH9' \
    > test.out 2>&1
eval_tap $? 271 'AdminGetRoleV4' test.out

#- 272 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'Tj4uInut' \
    > test.out 2>&1
eval_tap $? 272 'AdminDeleteRoleV4' test.out

#- 273 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'ERsdtMZY' \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "FDcnZ8mn"}' \
    > test.out 2>&1
eval_tap $? 273 'AdminUpdateRoleV4' test.out

#- 274 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'fSkiV8GW' \
    --body '{"permissions": [{"action": 95, "resource": "TMQ8qKWC", "schedAction": 9, "schedCron": "X2DRBhnT", "schedRange": ["0VEFR2BP", "MLAxGBTY", "DQVYbkOz"]}, {"action": 47, "resource": "9OTv76Jo", "schedAction": 2, "schedCron": "j8fVHfF3", "schedRange": ["vOVDRATU", "tpKZIqGY", "LamTAVHh"]}, {"action": 84, "resource": "z9XLWzWb", "schedAction": 49, "schedCron": "9Fwnpuwv", "schedRange": ["pnOYizVX", "Zsb5uXlQ", "UGPX8CwI"]}]}' \
    > test.out 2>&1
eval_tap $? 274 'AdminUpdateRolePermissionsV4' test.out

#- 275 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'vGnYNBlQ' \
    --body '{"permissions": [{"action": 86, "resource": "7d5DX7j1", "schedAction": 67, "schedCron": "93qMml2S", "schedRange": ["ZqgZpt9K", "wO86Ogvb", "atvDmjVd"]}, {"action": 50, "resource": "DORzcJln", "schedAction": 91, "schedCron": "2Oi19ivg", "schedRange": ["AWugpRSR", "ruQOWZ1Y", "zh5h78ce"]}, {"action": 31, "resource": "02RLS24I", "schedAction": 14, "schedCron": "Swj7jwqX", "schedRange": ["sGcj7MuA", "vMmwrhjl", "4HBEwY1N"]}]}' \
    > test.out 2>&1
eval_tap $? 275 'AdminAddRolePermissionsV4' test.out

#- 276 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'JAhM2bga' \
    --body '["Hzp3de0w", "u41sK6YI", "HwUxQ5BC"]' \
    > test.out 2>&1
eval_tap $? 276 'AdminDeleteRolePermissionsV4' test.out

#- 277 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId '0mOKiD00' \
    --after 'dIVZTkIP' \
    --before '8wrJQ5tI' \
    --limit '53' \
    > test.out 2>&1
eval_tap $? 277 'AdminListAssignedUsersV4' test.out

#- 278 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'jVtDcAma' \
    --body '{"assignedNamespaces": ["oQc95IR8", "WIprKJDw", "tDnIXc3t"], "namespace": "LEFfxYxJ", "userId": "RR45uzRo"}' \
    > test.out 2>&1
eval_tap $? 278 'AdminAssignUserToRoleV4' test.out

#- 279 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'GLytLeX4' \
    --body '{"namespace": "7FXk4oJ9", "userId": "qWrT4KOr"}' \
    > test.out 2>&1
eval_tap $? 279 'AdminRevokeUserFromRoleV4' test.out

#- 280 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "6AE0k2so", "country": "6wMEBofg", "dateOfBirth": "woun6WIG", "displayName": "mTzWsZgZ", "languageTag": "gPbKwiWA", "userName": "lItb9nXZ"}' \
    > test.out 2>&1
eval_tap $? 280 'AdminUpdateMyUserV4' test.out

#- 281 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 281 'AdminDisableMyAuthenticatorV4' test.out

#- 282 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'gfYw02aJ' \
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
    --factor 'vv17lzxO' \
    > test.out 2>&1
eval_tap $? 290 'AdminMakeFactorMyDefaultV4' test.out

#- 291 AdminInviteUserV4
samples/cli/sample-apps Iam adminInviteUserV4 \
    --body '{"assignedNamespaces": ["hvhOKeC8", "E0xiGnAp", "aBEudjkj"], "emailAddresses": ["pvoRVUGj", "1MPKSk6J", "qHJNFFd7"], "isAdmin": false, "roleId": "5nIIeXnJ"}' \
    > test.out 2>&1
eval_tap $? 291 'AdminInviteUserV4' test.out

#- 292 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "ySNBJmfb", "policyId": "jq0X0FNt", "policyVersionId": "zBwWUC5Z"}, {"isAccepted": false, "localizedPolicyVersionId": "BI27BIwt", "policyId": "0O9Qd9Kn", "policyVersionId": "jsya4TGZ"}, {"isAccepted": true, "localizedPolicyVersionId": "2FjN9L4K", "policyId": "6mfGzhME", "policyVersionId": "rK591D2a"}], "authType": "EMAILPASSWD", "country": "7U3kMRNQ", "dateOfBirth": "OajJ6RVR", "displayName": "EuvE3iWZ", "emailAddress": "W3QaYRkb", "password": "wv3UD6X8", "passwordMD5Sum": "BCvPZ2Ok", "username": "o9gsXh8d", "verified": false}' \
    > test.out 2>&1
eval_tap $? 292 'PublicCreateTestUserV4' test.out

#- 293 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "rGwOz04e", "policyId": "79Az45lb", "policyVersionId": "F3NHCQOH"}, {"isAccepted": false, "localizedPolicyVersionId": "iO7nfYB3", "policyId": "WXMqSbef", "policyVersionId": "SgSyd3t1"}, {"isAccepted": true, "localizedPolicyVersionId": "Y5lT1LPj", "policyId": "8NAe7Xg3", "policyVersionId": "XPyqhquG"}], "authType": "EMAILPASSWD", "code": "RoCwVILZ", "country": "CDuNszci", "dateOfBirth": "AzSAWc6G", "displayName": "96jbYNdg", "emailAddress": "xub0xvbH", "password": "Uw27EoZz", "passwordMD5Sum": "sgHM0Cio", "reachMinimumAge": true, "username": "F5hkTmQ4"}' \
    > test.out 2>&1
eval_tap $? 293 'PublicCreateUserV4' test.out

#- 294 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'o0dmkJOy' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "HvZfvHAz", "policyId": "PSanlF1B", "policyVersionId": "YLWHapSW"}, {"isAccepted": false, "localizedPolicyVersionId": "CWq7pBgC", "policyId": "C5oXs1Xk", "policyVersionId": "cmpVOGeH"}, {"isAccepted": false, "localizedPolicyVersionId": "2opbZ7A6", "policyId": "YNBDct7k", "policyVersionId": "L9xdnLxd"}], "authType": "EMAILPASSWD", "country": "qkL0eId0", "dateOfBirth": "TZRp7wjn", "displayName": "DNGBrb8D", "password": "C9eXq1B0", "reachMinimumAge": true, "username": "ER7inTLY"}' \
    > test.out 2>&1
eval_tap $? 294 'CreateUserFromInvitationV4' test.out

#- 295 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "LDjB4Nl9", "country": "jVCU6FHv", "dateOfBirth": "9XXCarnE", "displayName": "aQzhlC9C", "languageTag": "02U7FzqG", "userName": "PXC5wnNK"}' \
    > test.out 2>&1
eval_tap $? 295 'PublicUpdateUserV4' test.out

#- 296 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Cclezjoe", "emailAddress": "TKZHYbWk"}' \
    > test.out 2>&1
eval_tap $? 296 'PublicUpdateUserEmailAddressV4' test.out

#- 297 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "LL25rGPq", "country": "D4dmEpIG", "dateOfBirth": "MsD7xFCw", "displayName": "ytFmVNlp", "emailAddress": "oN3K40MT", "password": "LuGtmKpt", "reachMinimumAge": false, "username": "rfDNqOFG", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 297 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 298 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "Av3tt0nE", "password": "hytXMigA", "username": "Ib8pZ7vc"}' \
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
    --code 'HaefAaZu' \
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
    --factor 'IlPtjTbZ' \
    > test.out 2>&1
eval_tap $? 309 'PublicMakeFactorMyDefaultV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE