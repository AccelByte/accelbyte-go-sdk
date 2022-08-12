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
    --after '49' \
    --before '90' \
    --limit '83' \
    --roleId '4P40pnu5' \
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
    --userId 'q2cDBcbf' \
    > test.out 2>&1
eval_tap $? 34 'GetUserInformation' test.out

#- 35 DeleteUserInformation
eval_tap 0 35 'DeleteUserInformation # SKIP deprecated' test.out

#- 36 GetUserLoginHistories
samples/cli/sample-apps Iam getUserLoginHistories \
    --namespace $AB_NAMESPACE \
    --userId 'JZTQvkYP' \
    --after '0.9717484019998696' \
    --before '0.399154038575119' \
    --limit '31' \
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
    --userId 'BE0KEk1H' \
    > test.out 2>&1
eval_tap $? 41 'GetUserPlatformAccounts' test.out

#- 42 GetUserMapping
samples/cli/sample-apps Iam getUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'Xulr6eM2' \
    --userId 'IZfDh8E8' \
    > test.out 2>&1
eval_tap $? 42 'GetUserMapping' test.out

#- 43 GetUserJusticePlatformAccount
eval_tap 0 43 'GetUserJusticePlatformAccount # SKIP deprecated' test.out

#- 44 PlatformLink
samples/cli/sample-apps Iam platformLink \
    --namespace $AB_NAMESPACE \
    --platformId 'DNMkfi4t' \
    --userId 'flyC1iXw' \
    --ticket 'xzVmG9cg' \
    > test.out 2>&1
eval_tap $? 44 'PlatformLink' test.out

#- 45 PlatformUnlink
samples/cli/sample-apps Iam platformUnlink \
    --namespace $AB_NAMESPACE \
    --platformId '4JhXfCKx' \
    --userId 'qmPzob8D' \
    --platformNamespace 'JPI5UqgB' \
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
    --userId 'ktfCcumX' \
    --body '{"LoginID": "OmFacYFO", "Password": "l5CqZTkc"}' \
    > test.out 2>&1
eval_tap $? 50 'UpgradeHeadlessAccount' test.out

#- 51 UpgradeHeadlessAccountWithVerificationCode
samples/cli/sample-apps Iam upgradeHeadlessAccountWithVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'Wdp395Bh' \
    --body '{"Code": "nIo1w3YX", "Password": "ACL0ZMWF", "loginId": "qJNjRCJr"}' \
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
    --body '{"AgeRestriction": 36, "Enable": true}' \
    > test.out 2>&1
eval_tap $? 81 'AdminUpdateAgeRestrictionConfigV2' test.out

#- 82 GetListCountryAgeRestriction
samples/cli/sample-apps Iam getListCountryAgeRestriction \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 82 'GetListCountryAgeRestriction' test.out

#- 83 UpdateCountryAgeRestriction
samples/cli/sample-apps Iam updateCountryAgeRestriction \
    --countryCode 'byV7vZFd' \
    --namespace $AB_NAMESPACE \
    --body '{"AgeRestriction": 50}' \
    > test.out 2>&1
eval_tap $? 83 'UpdateCountryAgeRestriction' test.out

#- 84 AdminSearchUsersV2
samples/cli/sample-apps Iam adminSearchUsersV2 \
    --namespace $AB_NAMESPACE \
    --after 'fhkeF6OT' \
    --before '8wCgsFRW' \
    --displayName 'lU52uxUW' \
    --limit '9' \
    --loginId '29sgAQCx' \
    --platformUserId 'Xe1YU9lJ' \
    --roleId 'cX7g42Sc' \
    --userId 'sh5B3obT' \
    --platformId 'bWFEBcUW' \
    > test.out 2>&1
eval_tap $? 84 'AdminSearchUsersV2' test.out

#- 85 AdminGetUserByUserIdV2
samples/cli/sample-apps Iam adminGetUserByUserIdV2 \
    --namespace $AB_NAMESPACE \
    --userId 'Tzk35dQr' \
    > test.out 2>&1
eval_tap $? 85 'AdminGetUserByUserIdV2' test.out

#- 86 AdminUpdateUserV2
samples/cli/sample-apps Iam adminUpdateUserV2 \
    --namespace $AB_NAMESPACE \
    --userId 'JbuhUSBX' \
    --body '{"Country": "pK4f2k8P", "DateOfBirth": "CvjDUQbg", "DisplayName": "j31YFWPK", "LanguageTag": "dtvFKvBG"}' \
    > test.out 2>&1
eval_tap $? 86 'AdminUpdateUserV2' test.out

#- 87 AdminBanUserV2
samples/cli/sample-apps Iam adminBanUserV2 \
    --namespace $AB_NAMESPACE \
    --userId 'PouE8CSY' \
    --body '{"ban": "VVnHHTwS", "comment": "BftRkA7a", "endDate": "pWmOWY6k", "reason": "DVBlFBpC", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 87 'AdminBanUserV2' test.out

#- 88 AdminGetUserBanV2
samples/cli/sample-apps Iam adminGetUserBanV2 \
    --namespace $AB_NAMESPACE \
    --userId 'jEzOrV2W' \
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 88 'AdminGetUserBanV2' test.out

#- 89 AdminDisableUserV2
samples/cli/sample-apps Iam adminDisableUserV2 \
    --namespace $AB_NAMESPACE \
    --userId 'Pf9C3RVi' \
    --body '{"Reason": "ISvxi1S5"}' \
    > test.out 2>&1
eval_tap $? 89 'AdminDisableUserV2' test.out

#- 90 AdminEnableUserV2
samples/cli/sample-apps Iam adminEnableUserV2 \
    --namespace $AB_NAMESPACE \
    --userId 'fvxxGu5A' \
    > test.out 2>&1
eval_tap $? 90 'AdminEnableUserV2' test.out

#- 91 AdminResetPasswordV2
samples/cli/sample-apps Iam adminResetPasswordV2 \
    --namespace $AB_NAMESPACE \
    --userId 'Zz0XgOlc' \
    --body '{"LanguageTag": "26qebCPI", "NewPassword": "bHdYmUj0", "OldPassword": "Mgop0jnC"}' \
    > test.out 2>&1
eval_tap $? 91 'AdminResetPasswordV2' test.out

#- 92 AdminDeletePlatformLinkV2
samples/cli/sample-apps Iam adminDeletePlatformLinkV2 \
    --namespace $AB_NAMESPACE \
    --platformId 'uw9ygMP5' \
    --userId 'SyLyOytl' \
    --platformNamespace 'PlNjeDsz' \
    > test.out 2>&1
eval_tap $? 92 'AdminDeletePlatformLinkV2' test.out

#- 93 AdminPutUserRolesV2
samples/cli/sample-apps Iam adminPutUserRolesV2 \
    --namespace $AB_NAMESPACE \
    --userId 'fRpKGyuS' \
    --body '["wDG6KfKn", "7mL9Qgxo", "64CF3iA7"]' \
    > test.out 2>&1
eval_tap $? 93 'AdminPutUserRolesV2' test.out

#- 94 AdminCreateUserRolesV2
samples/cli/sample-apps Iam adminCreateUserRolesV2 \
    --namespace $AB_NAMESPACE \
    --userId 'HmWlvnfj' \
    --body '["ucl9COjU", "75gj2vzW", "VKka08Dw"]' \
    > test.out 2>&1
eval_tap $? 94 'AdminCreateUserRolesV2' test.out

#- 95 PublicGetCountryAgeRestriction
samples/cli/sample-apps Iam publicGetCountryAgeRestriction \
    --countryCode '5Vjys4IA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 95 'PublicGetCountryAgeRestriction' test.out

#- 96 PublicCreateUserV2
samples/cli/sample-apps Iam publicCreateUserV2 \
    --namespace $AB_NAMESPACE \
    --body '{"AuthType": "5rD9Yd72", "Country": "PRzvXTXe", "DisplayName": "8TObkFEv", "LoginId": "NU96FK9L", "Password": "x4Jd892m", "PasswordMD5Sum": "uw44CKBi"}' \
    > test.out 2>&1
eval_tap $? 96 'PublicCreateUserV2' test.out

#- 97 PublicForgotPasswordV2
samples/cli/sample-apps Iam publicForgotPasswordV2 \
    --namespace $AB_NAMESPACE \
    --body '{"Context": "E0m6cLE8", "LanguageTag": "lOXxblPv", "LoginID": "kyeo0tF1"}' \
    > test.out 2>&1
eval_tap $? 97 'PublicForgotPasswordV2' test.out

#- 98 PublicResetPasswordV2
samples/cli/sample-apps Iam publicResetPasswordV2 \
    --namespace $AB_NAMESPACE \
    --body '{"Code": "CTMP7wXW", "LoginID": "myCY7Njn", "NewPassword": "IB6ylAYc"}' \
    > test.out 2>&1
eval_tap $? 98 'PublicResetPasswordV2' test.out

#- 99 PublicGetUserByUserIDV2
samples/cli/sample-apps Iam publicGetUserByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'vaJxRVT7' \
    > test.out 2>&1
eval_tap $? 99 'PublicGetUserByUserIDV2' test.out

#- 100 PublicUpdateUserV2
samples/cli/sample-apps Iam publicUpdateUserV2 \
    --namespace $AB_NAMESPACE \
    --userId 'MLnvLLEb' \
    --body '{"Country": "R2PLefNn", "DateOfBirth": "FijfHTPn", "DisplayName": "6xcfepDI", "LanguageTag": "nHDrhe1G"}' \
    > test.out 2>&1
eval_tap $? 100 'PublicUpdateUserV2' test.out

#- 101 PublicGetUserBan
samples/cli/sample-apps Iam publicGetUserBan \
    --namespace $AB_NAMESPACE \
    --userId 'XM0rrd0g' \
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 101 'PublicGetUserBan' test.out

#- 102 PublicUpdatePasswordV2
samples/cli/sample-apps Iam publicUpdatePasswordV2 \
    --namespace $AB_NAMESPACE \
    --userId 'ajdUIVXr' \
    --body '{"LanguageTag": "zPWRrVBl", "NewPassword": "8iJDSFBW", "OldPassword": "VYMu26jh"}' \
    > test.out 2>&1
eval_tap $? 102 'PublicUpdatePasswordV2' test.out

#- 103 GetListJusticePlatformAccounts
samples/cli/sample-apps Iam getListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'OvfWn5yc' \
    > test.out 2>&1
eval_tap $? 103 'GetListJusticePlatformAccounts' test.out

#- 104 PublicPlatformLinkV2
samples/cli/sample-apps Iam publicPlatformLinkV2 \
    --namespace $AB_NAMESPACE \
    --platformId 'Qi2e3DwI' \
    --userId 'D9fvmTKG' \
    --ticket 'ommfQYnI' \
    > test.out 2>&1
eval_tap $? 104 'PublicPlatformLinkV2' test.out

#- 105 PublicDeletePlatformLinkV2
samples/cli/sample-apps Iam publicDeletePlatformLinkV2 \
    --namespace $AB_NAMESPACE \
    --platformId 'eQ4dhQc8' \
    --userId 'AYkDtDj3' \
    --platformNamespace 'lZDKLxAf' \
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
    --body '[{"field": "Q5BlzrAw", "validation": {"allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "description": [{"language": "K7JdKcye", "message": ["9zNNmFD4", "0EGO27LJ", "Hu7txZZ7"]}, {"language": "AKFwH00R", "message": ["oqTvepWx", "cOf1rPEV", "B2W690XP"]}, {"language": "vKY4kmy7", "message": ["pqLbhwCK", "xGID3BP2", "aiFMMHYl"]}], "isCustomRegex": true, "letterCase": "KSqFQDAQ", "maxLength": 52, "maxRepeatingAlphaNum": 97, "maxRepeatingSpecialCharacter": 35, "minCharType": 88, "minLength": 24, "regex": "eVTiEldx", "specialCharacterLocation": "xTnRozMe", "specialCharacters": ["Iiquok9h", "m2qdZ5A7", "6vYlakQ7"]}}, {"field": "CZ1N9Mqj", "validation": {"allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "description": [{"language": "xiolBpRu", "message": ["GbZ9Gf4f", "Fy8icWCz", "rZJMfi5c"]}, {"language": "cGPbAOX5", "message": ["L4EuT9wa", "uOiEWPt8", "uzbeso95"]}, {"language": "FO07DrUw", "message": ["UG5kPppq", "g0ZNPASm", "2W1bI9Sk"]}], "isCustomRegex": true, "letterCase": "LFrMxrkY", "maxLength": 96, "maxRepeatingAlphaNum": 34, "maxRepeatingSpecialCharacter": 75, "minCharType": 81, "minLength": 77, "regex": "yn3aI4KL", "specialCharacterLocation": "wD8qFbWf", "specialCharacters": ["orH0eczo", "ipx2Bqkn", "HHyPCFpA"]}}, {"field": "3ld3ekVO", "validation": {"allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "description": [{"language": "fZA4e4Xq", "message": ["tABlgIpo", "GZbhy1z7", "LKhSGtgD"]}, {"language": "ZlhfRNHd", "message": ["f0BzrOsh", "FTfrTI2c", "FT50FEaG"]}, {"language": "r84ThFde", "message": ["RKyeanHN", "YMZ8lykR", "7kmZGhX2"]}], "isCustomRegex": false, "letterCase": "Wl6yPcg3", "maxLength": 61, "maxRepeatingAlphaNum": 47, "maxRepeatingSpecialCharacter": 59, "minCharType": 63, "minLength": 63, "regex": "MTeEbHK2", "specialCharacterLocation": "JmXaTQt0", "specialCharacters": ["qnU0kMFe", "gI3FIGix", "CyhnD4dP"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'hXoM7Wdb' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after '09mfyvnF' \
    --before 'IlBiaHOk' \
    --limit '35' \
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
    --body '{"ageRestriction": 38, "enable": true}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'NmWiOqBu' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 46}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType '33YIqxI9' \
    --limit '47' \
    --offset '83' \
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
    --limit '71' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 118 'AdminGetClientsByNamespaceV3' test.out

#- 119 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["x8b1yjVL", "PTL2IBGS", "3iTVFHiw"], "baseUri": "kvkgPjtt", "clientId": "COduTFmJ", "clientName": "oMrKEiLb", "clientPermissions": [{"action": 45, "resource": "lQ1XqWY7", "schedAction": 49, "schedCron": "szR7xIO6", "schedRange": ["OItmIAJj", "iveEA6SR", "Cc5FgDX0"]}, {"action": 39, "resource": "GHznQ8je", "schedAction": 10, "schedCron": "lkpvDyfn", "schedRange": ["UjdfO0eg", "C66knK4Z", "1kydu5g0"]}, {"action": 14, "resource": "SRyxwiKH", "schedAction": 87, "schedCron": "QKjUtkoo", "schedRange": ["TYXNgHW6", "kYHT4SgT", "B54htU87"]}], "clientPlatform": "bQZpb0Ch", "deletable": true, "namespace": "1vzhoVNy", "oauthClientType": "beGtkxt5", "redirectUri": "d623ubgL", "secret": "lCV28ZUc"}' \
    > test.out 2>&1
eval_tap $? 119 'AdminCreateClientV3' test.out

#- 120 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'm57k1YhL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 121 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId '05KKjjng' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 121 'AdminDeleteClientV3' test.out

#- 122 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'gBp8BgZ9' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["PWM797Hu", "NDFw4NDn", "bRANauub"], "baseUri": "F7586fD3", "clientName": "B73gNIYy", "clientPermissions": [{"action": 65, "resource": "ysRcIOAc", "schedAction": 80, "schedCron": "w7yIYWQw", "schedRange": ["mQVtXyqi", "TV7oim22", "FG2Zl4HK"]}, {"action": 69, "resource": "G65z1cKT", "schedAction": 58, "schedCron": "t1RLnh4K", "schedRange": ["9H5ebN7f", "Po0nxJnT", "vHWYPmig"]}, {"action": 96, "resource": "x3xos6Ur", "schedAction": 57, "schedCron": "hemEwgi0", "schedRange": ["BR1QLc2p", "hA2zBXZv", "mOKI7LsS"]}], "clientPlatform": "oT9aunBp", "deletable": false, "namespace": "eA8K8cuV", "redirectUri": "v8ZlJBag"}' \
    > test.out 2>&1
eval_tap $? 122 'AdminUpdateClientV3' test.out

#- 123 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'Jwpvhbqa' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 27, "resource": "Z3qB9CjC"}, {"action": 79, "resource": "5gSS9D6e"}, {"action": 74, "resource": "MsY8w0NV"}]}' \
    > test.out 2>&1
eval_tap $? 123 'AdminUpdateClientPermissionV3' test.out

#- 124 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'fLP5uGt7' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 7, "resource": "wJFyMACq"}, {"action": 43, "resource": "W5QhuvII"}, {"action": 6, "resource": "Wdgw0FQk"}]}' \
    > test.out 2>&1
eval_tap $? 124 'AdminAddClientPermissionsV3' test.out

#- 125 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '56' \
    --clientId 'OOqpAFZe' \
    --namespace $AB_NAMESPACE \
    --resource 'WQL9rw3T' \
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
    --limit '59' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 128 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 129 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'j5hXxTdC' \
    > test.out 2>&1
eval_tap $? 129 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 130 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Rtpkid0l' \
    --body '{"ACSURL": "eo14WKwn", "AWSCognitoRegion": "wEHtyBTG", "AWSCognitoUserPool": "HSsIcEFb", "AllowedClients": ["rud8xPzf", "A3S0m9Us", "GZnIWw9r"], "AppId": "TswLvihH", "AuthorizationEndpoint": "vCbPt8Di", "ClientId": "iFBJSjIV", "Environment": "melhI5bl", "FederationMetadataURL": "TtNHPnQE", "GenericOauthFlow": false, "IsActive": false, "Issuer": "nBseZX7e", "JWKSEndpoint": "vizZ0M6b", "KeyID": "60fLK9Mz", "NetflixCertificates": {"encryptedPrivateKey": "6kxsrmUM", "encryptedPrivateKeyName": "E614yggi", "publicCertificate": "1iD6ivcX", "publicCertificateName": "l2Strp5A", "rootCertificate": "gkrBWbl0", "rootCertificateName": "sZfJnPJ6"}, "OrganizationId": "ybZoLBg8", "PlatformName": "KWcn7Uzb", "RedirectUri": "vtLcbDjN", "RegisteredDomains": [{"affectedClientIDs": ["jWKZ10yM", "u4H8Be4K", "pz2i16qZ"], "domain": "GO4C3M6a", "namespaces": ["RYGsVkG5", "BotZk6jh", "tVXuHXjt"], "roleId": "CESPinJ1"}, {"affectedClientIDs": ["CV56TFP5", "GvCf5e7q", "GuRa6Vvj"], "domain": "nOKiyZVu", "namespaces": ["Wl47uiOF", "N3KbQvVC", "dF3Uzi3u"], "roleId": "mKosOVHC"}, {"affectedClientIDs": ["h0HNEejK", "AeOcbXVK", "xXHkbOdH"], "domain": "w1iEbI8d", "namespaces": ["T4tYsvY2", "pPL5U4XE", "vA65MtUY"], "roleId": "SWpjPA9y"}], "Secret": "gsYqmCvZ", "TeamID": "R2f1UB0n", "TokenAuthenticationType": "xbt1d32j", "TokenClaimsMapping": {"kPuRwukp": "eVRl1oqk", "oXM6iDPy": "bqCfFrQ7", "qp4jldSs": "pu8pLtI8"}, "TokenEndpoint": "rEvCOwYD"}' \
    > test.out 2>&1
eval_tap $? 130 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 131 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'aVuchWWb' \
    > test.out 2>&1
eval_tap $? 131 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 132 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '06q3bZAg' \
    --body '{"ACSURL": "8H2bXe1j", "AWSCognitoRegion": "89eiam9S", "AWSCognitoUserPool": "7ouOhsaV", "AllowedClients": ["6Yb6EroC", "IMWdqHC5", "tMzMSMqG"], "AppId": "4xblUySp", "AuthorizationEndpoint": "sdLhpy9y", "ClientId": "BYVtTN7r", "Environment": "b4xvbGme", "FederationMetadataURL": "uJpcVdNU", "GenericOauthFlow": true, "IsActive": false, "Issuer": "WrsiQBRC", "JWKSEndpoint": "Ddffcepb", "KeyID": "2GYhhLDH", "NetflixCertificates": {"encryptedPrivateKey": "ykyOqv2J", "encryptedPrivateKeyName": "oryVwib8", "publicCertificate": "RgqqdD5b", "publicCertificateName": "7v3vojj7", "rootCertificate": "7OSMp1cf", "rootCertificateName": "uxuMqjMI"}, "OrganizationId": "j0qH6WCL", "PlatformName": "XTh0I1k1", "RedirectUri": "ZGPQ6Vpj", "RegisteredDomains": [{"affectedClientIDs": ["XmrX1IDC", "wZiAlQvB", "I3DXZwVH"], "domain": "ZjdfOMXS", "namespaces": ["EEddLQMd", "XNTKki5E", "4Vw6Y28h"], "roleId": "i9TT96AX"}, {"affectedClientIDs": ["lCu2qQtB", "GCYilLSL", "Di2h1bAX"], "domain": "RWsAX2WS", "namespaces": ["WpvTQ7D7", "2z8dWKka", "kd010Nhb"], "roleId": "lIYDOHvy"}, {"affectedClientIDs": ["Zn5dzjWh", "cruLc9VH", "Ws2WzfbA"], "domain": "G2LTYqsj", "namespaces": ["4GLl2r1z", "3rFljRaH", "iaokfciY"], "roleId": "OpSGgILa"}], "Secret": "px2UYBRj", "TeamID": "YfaEA2mc", "TokenAuthenticationType": "PNZRG8TA", "TokenClaimsMapping": {"owiObK0M": "kvtVfFyP", "LfATkY6s": "8eR8O0bJ", "h1flfrHT": "SUWWVlnY"}, "TokenEndpoint": "RnXpKykR"}' \
    > test.out 2>&1
eval_tap $? 132 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 133 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'rSWE3dyc' \
    --body '{"affectedClientIDs": ["uSwo4fw6", "weaW8tiK", "kPvmx1ao"], "assignedNamespaces": ["St4VNW5f", "sxsoCKcJ", "J59T6hIn"], "domain": "XcZWloIG", "roleId": "zvtxYhGL"}' \
    > test.out 2>&1
eval_tap $? 133 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 134 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'piIL1w4G' \
    --body '{"domain": "JJb1wy6U"}' \
    > test.out 2>&1
eval_tap $? 134 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 135 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'kLiWgPPH' \
    > test.out 2>&1
eval_tap $? 135 'RetrieveSSOLoginPlatformCredential' test.out

#- 136 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'EA4mInH9' \
    --body '{"acsUrl": "jveAYPTQ", "apiKey": "iZNEmXQT", "appId": "GFJeYHgD", "federationMetadataUrl": "HbKGLDkM", "isActive": false, "redirectUri": "oPf6zEZ1", "secret": "hB9RKvmQ", "ssoUrl": "RJtat7Fz"}' \
    > test.out 2>&1
eval_tap $? 136 'AddSSOLoginPlatformCredential' test.out

#- 137 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'gxQPuP2f' \
    > test.out 2>&1
eval_tap $? 137 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 138 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'cPe9TXvS' \
    --body '{"acsUrl": "JnbXHHo8", "apiKey": "o1O1cXMu", "appId": "Hflh6FLD", "federationMetadataUrl": "v6TawS6E", "isActive": false, "redirectUri": "UpvCi6du", "secret": "SNEnuqph", "ssoUrl": "9yn5WKit"}' \
    > test.out 2>&1
eval_tap $? 138 'UpdateSSOPlatformCredential' test.out

#- 139 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'nBsTD5zy' \
    --platformUserId 'jYQeAabe' \
    > test.out 2>&1
eval_tap $? 139 'AdminGetUserByPlatformUserIDV3' test.out

#- 140 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'GpabLahW' \
    --after '24' \
    --before '29' \
    --limit '71' \
    > test.out 2>&1
eval_tap $? 140 'GetAdminUsersByRoleIdV3' test.out

#- 141 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 't8vsfzno' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByEmailAddressV3' test.out

#- 142 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["gZsgvoYJ", "MI3Ch9vM", "ixOysmIs"]}' \
    > test.out 2>&1
eval_tap $? 142 'AdminListUserIDByUserIDsV3' test.out

#- 143 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["jPVFmiR5", "J83Je7x7", "z5LZWukR"], "isAdmin": false, "roles": ["lmSckw7L", "yRdo8ubj", "7D32EhWF"]}' \
    > test.out 2>&1
eval_tap $? 143 'AdminInviteUserV3' test.out

#- 144 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUsersV3' test.out

#- 145 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'Kz5rZild' \
    --endDate 'gMdgORIv' \
    --limit '17' \
    --offset '82' \
    --platformBy '5JHKVfRH' \
    --platformId 'R1YVKcdb' \
    --query 'DUcxBy8Y' \
    --startDate 'ijXWrwdH' \
    > test.out 2>&1
eval_tap $? 145 'AdminSearchUserV3' test.out

#- 146 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["02uWQW1t", "wraGmQ3L", "ROko9ZqE"]}' \
    > test.out 2>&1
eval_tap $? 146 'AdminGetBulkUserByEmailAddressV3' test.out

#- 147 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kxYmzLwq' \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByUserIdV3' test.out

#- 148 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'oxtD6qEY' \
    --body '{"avatarUrl": "hs2rAneu", "country": "70AAJyft", "dateOfBirth": "Fr0rUZKX", "displayName": "oDF9C9Vy", "languageTag": "ZVzllxfK", "userName": "jHebSQqm"}' \
    > test.out 2>&1
eval_tap $? 148 'AdminUpdateUserV3' test.out

#- 149 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RpO1ijn3' \
    --activeOnly 'true' \
    --after 'jx1NeSW9' \
    --before 'sZ4OhrG2' \
    --limit '68' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetUserBanV3' test.out

#- 150 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xxdYuGWV' \
    --body '{"ban": "KqvMrn0U", "comment": "BBhdEiFx", "endDate": "RLO0Nrc9", "reason": "Ze2LKYEf", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 150 'AdminBanUserV3' test.out

#- 151 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'JsRVXdI4' \
    --namespace $AB_NAMESPACE \
    --userId 'MrRRVzLn' \
    --body '{"enabled": false, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserBanV3' test.out

#- 152 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lsJwQEKW' \
    --body '{"context": "tMfat8tw", "emailAddress": "bA6UcvMt", "languageTag": "yJNjxZUD"}' \
    > test.out 2>&1
eval_tap $? 152 'AdminSendVerificationCodeV3' test.out

#- 153 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'cf2at6HG' \
    --body '{"Code": "6BwdBx4N", "ContactType": "yB6JnW8e", "LanguageTag": "Z6VbElwg", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 153 'AdminVerifyAccountV3' test.out

#- 154 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 's7yNKUuU' \
    > test.out 2>&1
eval_tap $? 154 'GetUserVerificationCode' test.out

#- 155 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VbzFjGqX' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetUserDeletionStatusV3' test.out

#- 156 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RNlCUvcP' \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 156 'AdminUpdateUserDeletionStatusV3' test.out

#- 157 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId '7g1s3scQ' \
    --body '{"code": "V02O65ou", "country": "gKbRnFcr", "dateOfBirth": "4lNAzdo3", "displayName": "Ooltf0dl", "emailAddress": "FLyyfVIq", "password": "v7J8ekPX", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpgradeHeadlessAccountV3' test.out

#- 158 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RaFssbWZ' \
    > test.out 2>&1
eval_tap $? 158 'AdminDeleteUserInformationV3' test.out

#- 159 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Ro5bCcFX' \
    --after '0.1670690374441237' \
    --before '0.638661072867696' \
    --limit '13' \
    > test.out 2>&1
eval_tap $? 159 'AdminGetUserLoginHistoriesV3' test.out

#- 160 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'akYK931u' \
    --body '{"Permissions": [{"Action": 57, "Resource": "cf2KNCyx", "SchedAction": 59, "SchedCron": "M2pXnaCS", "SchedRange": ["hi04aAwE", "oyc3gGtM", "gDnIvyVG"]}, {"Action": 37, "Resource": "spStFgjz", "SchedAction": 97, "SchedCron": "vXrdTU67", "SchedRange": ["4zWxbpQ6", "QPD238aO", "j15ew51J"]}, {"Action": 5, "Resource": "kHmt711U", "SchedAction": 72, "SchedCron": "rJCSfMAV", "SchedRange": ["dsPXbbsc", "wZOs4WDz", "SfzwOu78"]}]}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserPermissionV3' test.out

#- 161 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PNTQW432' \
    --body '{"Permissions": [{"Action": 45, "Resource": "xjIzDg5G", "SchedAction": 90, "SchedCron": "gxr4Nj1o", "SchedRange": ["vwrNTvqe", "iMh08ikr", "ShoJyBXn"]}, {"Action": 4, "Resource": "oaGFi2Y1", "SchedAction": 13, "SchedCron": "cj9kpBel", "SchedRange": ["LFpfvI8j", "kVeb2Ehi", "qjLVuK5x"]}, {"Action": 51, "Resource": "P9NVF5F0", "SchedAction": 10, "SchedCron": "GfQBTrpI", "SchedRange": ["85G5YKdR", "nb7yePEL", "0wySpd0a"]}]}' \
    > test.out 2>&1
eval_tap $? 161 'AdminAddUserPermissionsV3' test.out

#- 162 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId '4U19iswb' \
    --body '[{"Action": 6, "Resource": "QtPqm9hS"}, {"Action": 20, "Resource": "sgT93LX0"}, {"Action": 79, "Resource": "zZeoFgwR"}]' \
    > test.out 2>&1
eval_tap $? 162 'AdminDeleteUserPermissionBulkV3' test.out

#- 163 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '48' \
    --namespace $AB_NAMESPACE \
    --resource 'GoDtSSDb' \
    --userId 'aKV8EB3M' \
    > test.out 2>&1
eval_tap $? 163 'AdminDeleteUserPermissionV3' test.out

#- 164 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gkVMqgPa' \
    --after 'jHb5XFr1' \
    --before 'PZj11qOJ' \
    --limit '81' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserPlatformAccountsV3' test.out

#- 165 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'eYcLzW8A' \
    > test.out 2>&1
eval_tap $? 165 'AdminGetListJusticePlatformAccounts' test.out

#- 166 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'vwCpFBOs' \
    --userId 'QwQEeiaM' \
    > test.out 2>&1
eval_tap $? 166 'AdminCreateJusticeUser' test.out

#- 167 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'dBlfHZ8Z' \
    --body '{"platformId": "YGgOYA4i", "platformUserId": "4bv3n6ux"}' \
    > test.out 2>&1
eval_tap $? 167 'AdminLinkPlatformAccount' test.out

#- 168 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'vtnEO7zH' \
    --userId 'YHo24gFv' \
    --body '{"platformNamespace": "XxrlHcKb"}' \
    > test.out 2>&1
eval_tap $? 168 'AdminPlatformUnlinkV3' test.out

#- 169 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ESngeBEw' \
    --userId '3dT0T96q' \
    --ticket 'W1lYLBND' \
    > test.out 2>&1
eval_tap $? 169 'AdminPlatformLinkV3' test.out

#- 170 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'MR6B3BHw' \
    --body '["NLxwNdF7", "LcMSzkjW", "lr0lNqse"]' \
    > test.out 2>&1
eval_tap $? 170 'AdminDeleteUserRolesV3' test.out

#- 171 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YMV5NEyy' \
    --body '[{"namespace": "vk9UWQqP", "roleId": "RIfVGfKe"}, {"namespace": "seeZitWA", "roleId": "7yFr1Amd"}, {"namespace": "ct58TFWa", "roleId": "8pJlXNJv"}]' \
    > test.out 2>&1
eval_tap $? 171 'AdminSaveUserRoleV3' test.out

#- 172 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'WBbJ09Ax' \
    --userId 'QCWXaOBw' \
    > test.out 2>&1
eval_tap $? 172 'AdminAddUserRoleV3' test.out

#- 173 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'whuQJJRR' \
    --userId 'EPclT39u' \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserRoleV3' test.out

#- 174 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kIYYfFGU' \
    --body '{"enabled": false, "reason": "Q7jqVTHf"}' \
    > test.out 2>&1
eval_tap $? 174 'AdminUpdateUserStatusV3' test.out

#- 175 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'N7XTUHfE' \
    > test.out 2>&1
eval_tap $? 175 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 176 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'HKKaMMZ6' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "SgUnh04u"}' \
    > test.out 2>&1
eval_tap $? 176 'AdminUpdateClientSecretV3' test.out

#- 177 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after '0vXVzEX2' \
    --before 'NbtqZPeI' \
    --isWildcard 'true' \
    --limit '48' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetRolesV3' test.out

#- 178 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "managers": [{"displayName": "i4fG0Gm3", "namespace": "odM5XPYC", "userId": "Zc58pDcW"}, {"displayName": "M641bGWM", "namespace": "shgobBgC", "userId": "SfkmM9ig"}, {"displayName": "dEfpdBh2", "namespace": "sHATDofT", "userId": "ylVcv3ha"}], "members": [{"displayName": "q5Tt9OEG", "namespace": "1YfAQFzV", "userId": "H1eEzUkC"}, {"displayName": "oUPFizNd", "namespace": "RYHe1BXu", "userId": "6U31gUKp"}, {"displayName": "YdOdLv85", "namespace": "YLn1ILCE", "userId": "RbTEBntk"}], "permissions": [{"action": 43, "resource": "xUdkkHTH", "schedAction": 87, "schedCron": "kegXOoMl", "schedRange": ["K5W2mtNj", "HYRWcvux", "1wue6bZA"]}, {"action": 61, "resource": "MJYWLOzY", "schedAction": 67, "schedCron": "1flSt9Ma", "schedRange": ["MAVH4AyQ", "n3aLm6vJ", "tpMmM8m1"]}, {"action": 5, "resource": "caqAlzaw", "schedAction": 79, "schedCron": "n3HDGEH0", "schedRange": ["MJYWoGZC", "Kqt44kBm", "LayO6XKm"]}], "roleName": "eh6KHuuw"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminCreateRoleV3' test.out

#- 179 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId '0JD8VQ4u' \
    > test.out 2>&1
eval_tap $? 179 'AdminGetRoleV3' test.out

#- 180 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'CJRjnrex' \
    > test.out 2>&1
eval_tap $? 180 'AdminDeleteRoleV3' test.out

#- 181 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'ePUSWobb' \
    --body '{"deletable": false, "isWildcard": false, "roleName": "2YSrzSSg"}' \
    > test.out 2>&1
eval_tap $? 181 'AdminUpdateRoleV3' test.out

#- 182 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId '7ryrGRj7' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetRoleAdminStatusV3' test.out

#- 183 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'iztOU5ls' \
    > test.out 2>&1
eval_tap $? 183 'AdminUpdateAdminRoleStatusV3' test.out

#- 184 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'h3yGkpkz' \
    > test.out 2>&1
eval_tap $? 184 'AdminRemoveRoleAdminV3' test.out

#- 185 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'wre7P5uW' \
    --after 'iZP1mSWf' \
    --before 'BnomQYCI' \
    --limit '58' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleManagersV3' test.out

#- 186 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'uKTmjPDh' \
    --body '{"managers": [{"displayName": "CATRtJsC", "namespace": "tjUXRa5J", "userId": "7OTDTcSE"}, {"displayName": "oyjWLgDL", "namespace": "tubZZR45", "userId": "3jDfp9kA"}, {"displayName": "BmbpGyeQ", "namespace": "w4AN07lW", "userId": "1x7GhGwX"}]}' \
    > test.out 2>&1
eval_tap $? 186 'AdminAddRoleManagersV3' test.out

#- 187 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'U1rKj3My' \
    --body '{"managers": [{"displayName": "ejQBTtdB", "namespace": "cE4Wl86w", "userId": "AxIc6JO5"}, {"displayName": "4KoQgdb8", "namespace": "Gwyw7xlg", "userId": "yWosfRzK"}, {"displayName": "4TosSycY", "namespace": "Ej8QrKWC", "userId": "ORX2CMwl"}]}' \
    > test.out 2>&1
eval_tap $? 187 'AdminRemoveRoleManagersV3' test.out

#- 188 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'VCQcpYwd' \
    --after '1HgXVi7i' \
    --before 'HuSAaVib' \
    --limit '67' \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleMembersV3' test.out

#- 189 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'ElTBcjov' \
    --body '{"members": [{"displayName": "61bJ6EX7", "namespace": "EA4h64IN", "userId": "S22KuHPY"}, {"displayName": "Br58vofC", "namespace": "nEcLG6AE", "userId": "9uUxHcSD"}, {"displayName": "dukTRly5", "namespace": "vahSObRG", "userId": "IYlLEFxK"}]}' \
    > test.out 2>&1
eval_tap $? 189 'AdminAddRoleMembersV3' test.out

#- 190 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'javvNim9' \
    --body '{"members": [{"displayName": "tEq9zQuq", "namespace": "ZC7bKKb8", "userId": "ajhpdl2S"}, {"displayName": "93zSZ4q0", "namespace": "7PGvlv0u", "userId": "gEBz4n63"}, {"displayName": "KtLMVZfT", "namespace": "K7UA82dM", "userId": "rVY6Yhyw"}]}' \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleMembersV3' test.out

#- 191 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'UmIjWqko' \
    --body '{"permissions": [{"action": 34, "resource": "vkBVY2Pm", "schedAction": 9, "schedCron": "OszYSVDI", "schedRange": ["qy9BZ1YU", "AvsJeH4r", "idZ4HRsR"]}, {"action": 78, "resource": "LPPC9gXe", "schedAction": 50, "schedCron": "k1kKOmBk", "schedRange": ["JRPurmAd", "OLFQDVmx", "vF9FGHvd"]}, {"action": 18, "resource": "p9l4vxMO", "schedAction": 63, "schedCron": "BnipK3j9", "schedRange": ["XqoVUg2v", "AeUUxc5q", "pnanvJq7"]}]}' \
    > test.out 2>&1
eval_tap $? 191 'AdminUpdateRolePermissionsV3' test.out

#- 192 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'yDVqnAfx' \
    --body '{"permissions": [{"action": 85, "resource": "SUHKDOLh", "schedAction": 33, "schedCron": "vteTW3ST", "schedRange": ["7CAM56Uu", "fuKhq06g", "yYfkyzhP"]}, {"action": 8, "resource": "zwtf1mFC", "schedAction": 28, "schedCron": "ZNiMaKs7", "schedRange": ["2qvhYXRO", "6RL7Yx78", "92u4Ok7i"]}, {"action": 39, "resource": "jKi6HfLK", "schedAction": 37, "schedCron": "gSA6Ihph", "schedRange": ["1LdZpbm9", "Q2ztTXbQ", "39jPzyLD"]}]}' \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRolePermissionsV3' test.out

#- 193 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'HzXzBXDq' \
    --body '["UYqEeMul", "fFtpmTCb", "e1Gc3f0S"]' \
    > test.out 2>&1
eval_tap $? 193 'AdminDeleteRolePermissionsV3' test.out

#- 194 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '48' \
    --resource 'ZmWLh8th' \
    --roleId 'zWxKKLCB' \
    > test.out 2>&1
eval_tap $? 194 'AdminDeleteRolePermissionV3' test.out

#- 195 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 195 'AdminGetMyUserV3' test.out

#- 196 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'vPsogoPq' \
    --extendExp 'true' \
    --redirectUri '7J9C81G0' \
    --password 'gMyQxhcl' \
    --requestId 'k0vwdsiL' \
    --userName 'wOngAprg' \
    > test.out 2>&1
eval_tap $? 196 'UserAuthenticationV3' test.out

#- 197 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'MYqsoDUU' \
    --linkingToken '8MJG4yQ6' \
    --password '2HpN6rjy' \
    --username 'aoF4XeO3' \
    > test.out 2>&1
eval_tap $? 197 'AuthenticationWithPlatformLinkV3' test.out

#- 198 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'false' \
    --linkingToken 'CFKhZm5m' \
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
    --platformId '0mmIM2Ku' \
    --userId 'NYkwQzTE' \
    > test.out 2>&1
eval_tap $? 201 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 202 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Lfv16CKU' \
    > test.out 2>&1
eval_tap $? 202 'RevokeUserV3' test.out

#- 203 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'PqHGOf1C' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'true' \
    --redirectUri 'EnEWzRXp' \
    --scope 'O6QIZ41O' \
    --state 'E0FIAkE1' \
    --targetAuthPage 'e20SkRac' \
    --clientId 'Ild96AiZ' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 203 'AuthorizeV3' test.out

#- 204 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'Le6Z8QVp' \
    > test.out 2>&1
eval_tap $? 204 'TokenIntrospectionV3' test.out

#- 205 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 205 'GetJWKSV3' test.out

#- 206 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'wmizJrqb' \
    --mfaToken '1Qmh0bE0' \
    > test.out 2>&1
eval_tap $? 206 'Change2faMethod' test.out

#- 207 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code '62NCz15I' \
    --factor '2Blq5jGG' \
    --mfaToken 'e4U2fTd4' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 207 'Verify2faCode' test.out

#- 208 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'U3bFY6Y6' \
    --userId 'TYA2tQFq' \
    > test.out 2>&1
eval_tap $? 208 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 209 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId '7hzIz5b3' \
    --clientId 'UOitiKdm' \
    --redirectUri '8dFYXtIs' \
    --requestId 'B5zaC39J' \
    > test.out 2>&1
eval_tap $? 209 'AuthCodeRequestV3' test.out

#- 210 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId '3snwicEz' \
    --clientId 'J6521kYA' \
    --createHeadless 'false' \
    --deviceId 'egwdlwaZ' \
    --platformToken 'VvJ9JA6B' \
    > test.out 2>&1
eval_tap $? 210 'PlatformTokenGrantV3' test.out

#- 211 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 211 'GetRevocationListV3' test.out

#- 212 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'unNsbXuT' \
    > test.out 2>&1
eval_tap $? 212 'TokenRevocationV3' test.out

#- 213 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --clientId 'mH9eLFWi' \
    --code 'FdCAe8Mv' \
    --codeVerifier 'k7F6furE' \
    --extendExp 'true' \
    --password 'lORzajAV' \
    --redirectUri '6bk3ZcuW' \
    --refreshToken 'iKQ4UMUD' \
    --username 'B0Lat2ua' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 213 'TokenGrantV3' test.out

#- 214 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'HGdHdYsk' \
    > test.out 2>&1
eval_tap $? 214 'VerifyTokenV3' test.out

#- 215 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'ohr7lXWF' \
    --code 'HBqEtjbS' \
    --error 'sAC5snxR' \
    --openidAssocHandle 'V8HFXyLZ' \
    --openidClaimedId 'dRKvM7vD' \
    --openidIdentity 'CXR1qM2n' \
    --openidMode 'tFxEop1F' \
    --openidNs 'f7KADFwo' \
    --openidOpEndpoint 'IXG17mOg' \
    --openidResponseNonce 'SmDYBjTc' \
    --openidReturnTo 'Sp06yXpG' \
    --openidSig 'FBL8C7VD' \
    --openidSigned 'N9nh1giH' \
    --state 'yZqLnnpi' \
    > test.out 2>&1
eval_tap $? 215 'PlatformAuthenticationV3' test.out

#- 216 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode 'kXGjZ9he' \
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
    --clientId 'nqUsYMaI' \
    > test.out 2>&1
eval_tap $? 218 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 219 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'SXdoqHd2' \
    --body '{"platformUserIds": ["rNVM0EPt", "K14u0tVE", "vHH6UIDM"]}' \
    > test.out 2>&1
eval_tap $? 219 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 220 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Wpju11f0' \
    --platformUserId 'QaPiMqJv' \
    > test.out 2>&1
eval_tap $? 220 'PublicGetUserByPlatformUserIDV3' test.out

#- 221 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'ktOIfMjg' \
    > test.out 2>&1
eval_tap $? 221 'PublicGetAsyncStatus' test.out

#- 222 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'aTeLyp24' \
    --limit '45' \
    --offset '39' \
    --query '10wlTLSE' \
    > test.out 2>&1
eval_tap $? 222 'PublicSearchUserV3' test.out

#- 223 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "6eia5jUi", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "rD5ShSzq", "policyId": "zPd9qWKI", "policyVersionId": "oEAdATkc"}, {"isAccepted": false, "localizedPolicyVersionId": "swfyW1Tu", "policyId": "wEw01neU", "policyVersionId": "vttuJ3tq"}, {"isAccepted": true, "localizedPolicyVersionId": "5z52pYkU", "policyId": "0BsFvZs7", "policyVersionId": "wY6fUOZV"}], "authType": "nyZJi32C", "code": "agSODRGg", "country": "NwpoXx82", "dateOfBirth": "vwLizvGi", "displayName": "Nw9QnKr1", "emailAddress": "1m5pflQJ", "password": "lSvfsPQv", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 223 'PublicCreateUserV3' test.out

#- 224 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field '4r0VAqTh' \
    --query 'aBziiMwl' \
    > test.out 2>&1
eval_tap $? 224 'CheckUserAvailability' test.out

#- 225 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["cxTi4jiq", "tyaN5QR7", "UBxoWmXS"]}' \
    > test.out 2>&1
eval_tap $? 225 'PublicBulkGetUsers' test.out

#- 226 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "L8taQbUm", "languageTag": "aeHUMH6R"}' \
    > test.out 2>&1
eval_tap $? 226 'PublicSendRegistrationCode' test.out

#- 227 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "DdsnWGjw", "emailAddress": "UYeojkzC"}' \
    > test.out 2>&1
eval_tap $? 227 'PublicVerifyRegistrationCode' test.out

#- 228 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "LNfsDEWz", "languageTag": "eKgMEwXt"}' \
    > test.out 2>&1
eval_tap $? 228 'PublicForgotPasswordV3' test.out

#- 229 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'Xk1LwFnd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 229 'GetAdminInvitationV3' test.out

#- 230 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'tO2p8Giv' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "ujL2PgnS", "policyId": "CRnsaW91", "policyVersionId": "cHxyQk7G"}, {"isAccepted": false, "localizedPolicyVersionId": "Ial2WM8O", "policyId": "CwmeQnWc", "policyVersionId": "lQPz9ege"}, {"isAccepted": true, "localizedPolicyVersionId": "lGIRJz6w", "policyId": "Nx0s366v", "policyVersionId": "COCYQ3zg"}], "authType": "EMAILPASSWD", "country": "eQrqi9Nn", "dateOfBirth": "5jqaiOfT", "displayName": "GXatUckj", "password": "ZKuK5Qx3", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 230 'CreateUserFromInvitationV3' test.out

#- 231 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "su8tmpSe", "country": "XApciVI6", "dateOfBirth": "Uwbq2PoY", "displayName": "vyVCMS74", "languageTag": "OcgFaLaK", "userName": "A0GJCA36"}' \
    > test.out 2>&1
eval_tap $? 231 'UpdateUserV3' test.out

#- 232 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "erCKkMZu", "country": "BOGmkFlQ", "dateOfBirth": "3HsRaJhW", "displayName": "fpCnGYIn", "languageTag": "7APJowly", "userName": "b7sJDbaz"}' \
    > test.out 2>&1
eval_tap $? 232 'PublicPartialUpdateUserV3' test.out

#- 233 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "HBuKGXDY", "emailAddress": "kVtLV61U", "languageTag": "48LJe4Xf"}' \
    > test.out 2>&1
eval_tap $? 233 'PublicSendVerificationCodeV3' test.out

#- 234 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "IjsowQOT", "contactType": "xIhekJOY", "languageTag": "XTzPoR4Q", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 234 'PublicUserVerificationV3' test.out

#- 235 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "hDtYjt38", "country": "nua930e0", "dateOfBirth": "MRhAEnme", "displayName": "QYZxD1ld", "emailAddress": "oZJE8Phf", "password": "Uo83OmZ8", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 235 'PublicUpgradeHeadlessAccountV3' test.out

#- 236 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "SoKh4EN2", "password": "Fap9tH5a"}' \
    > test.out 2>&1
eval_tap $? 236 'PublicVerifyHeadlessAccountV3' test.out

#- 237 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "vKMH3Vh1", "newPassword": "BNGjSUM2", "oldPassword": "FtWw5KAk"}' \
    > test.out 2>&1
eval_tap $? 237 'PublicUpdatePasswordV3' test.out

#- 238 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'RKja7RPq' \
    > test.out 2>&1
eval_tap $? 238 'PublicCreateJusticeUser' test.out

#- 239 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'JlClaWwY' \
    --redirectUri 'Hcfl7wat' \
    --ticket '9rjIohLs' \
    > test.out 2>&1
eval_tap $? 239 'PublicPlatformLinkV3' test.out

#- 240 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7D8o65iM' \
    --body '{"platformNamespace": "CUQ4D3xN"}' \
    > test.out 2>&1
eval_tap $? 240 'PublicPlatformUnlinkV3' test.out

#- 241 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'RXWr1bM0' \
    > test.out 2>&1
eval_tap $? 241 'PublicPlatformUnlinkAllV3' test.out

#- 242 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'SL1GFQNH' \
    --clientId '4ps8rAXo' \
    --redirectUri 'b7WpuO3e' \
    > test.out 2>&1
eval_tap $? 242 'PublicWebLinkPlatform' test.out

#- 243 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'nBC9n5Vq' \
    --state 'xClVtdyD' \
    > test.out 2>&1
eval_tap $? 243 'PublicWebLinkPlatformEstablish' test.out

#- 244 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "O0O9Qr4i", "emailAddress": "bN7zYR8Q", "newPassword": "mUIJhC9H"}' \
    > test.out 2>&1
eval_tap $? 244 'ResetPasswordV3' test.out

#- 245 PublicGetUserByUserIdV3
samples/cli/sample-apps Iam publicGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pRiMGDwC' \
    > test.out 2>&1
eval_tap $? 245 'PublicGetUserByUserIdV3' test.out

#- 246 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId '5ofutdzv' \
    --activeOnly 'false' \
    --after 'mDnNyeh9' \
    --before '3OsYYhZE' \
    --limit '72' \
    > test.out 2>&1
eval_tap $? 246 'PublicGetUserBanHistoryV3' test.out

#- 247 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId '0d2uOSCo' \
    > test.out 2>&1
eval_tap $? 247 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 248 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'JiHkAikm' \
    --after '0.405901624234851' \
    --before '0.6296017406858588' \
    --limit '33' \
    > test.out 2>&1
eval_tap $? 248 'PublicGetUserLoginHistoriesV3' test.out

#- 249 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kHvbBBRi' \
    --after 'PXAf5zk3' \
    --before 'V8ZHNHBH' \
    --limit '35' \
    > test.out 2>&1
eval_tap $? 249 'PublicGetUserPlatformAccountsV3' test.out

#- 250 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'WEndFi72' \
    --body '{"platformId": "tBUthMrg", "platformUserId": "DgPmVZxa"}' \
    > test.out 2>&1
eval_tap $? 250 'PublicLinkPlatformAccount' test.out

#- 251 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId '36UrFf50' \
    --body '{"chosenNamespaces": ["Z6olrDA7", "tXDm068u", "XcZOY2ja"], "requestId": "9DcO3sZF"}' \
    > test.out 2>&1
eval_tap $? 251 'PublicForceLinkPlatformWithProgression' test.out

#- 252 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DxXnws1o' \
    > test.out 2>&1
eval_tap $? 252 'PublicGetPublisherUserV3' test.out

#- 253 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'oABONWgD' \
    --password 'CxwK6Pyn' \
    > test.out 2>&1
eval_tap $? 253 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 254 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'vE062AIx' \
    --before 'Gz6gROIJ' \
    --isWildcard 'false' \
    --limit '94' \
    > test.out 2>&1
eval_tap $? 254 'PublicGetRolesV3' test.out

#- 255 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'E3KqRFIC' \
    > test.out 2>&1
eval_tap $? 255 'PublicGetRoleV3' test.out

#- 256 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 256 'PublicGetMyUserV3' test.out

#- 257 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'VPsgcPGj' \
    --code 'uLecqPmm' \
    --error 'Gw7e5sHX' \
    --state 'XSHqBjTe' \
    > test.out 2>&1
eval_tap $? 257 'PlatformAuthenticateSAMLV3Handler' test.out

#- 258 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'yEPxiR8E' \
    --payload 'ifGJUFwY' \
    > test.out 2>&1
eval_tap $? 258 'LoginSSOClient' test.out

#- 259 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'uHg1XUd3' \
    > test.out 2>&1
eval_tap $? 259 'LogoutSSOClient' test.out

#- 260 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 34}' \
    > test.out 2>&1
eval_tap $? 260 'AdminCreateTestUsersV4' test.out

#- 261 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["enxsnhxl", "QjN5m2WV", "5vn1xApJ"]}' \
    > test.out 2>&1
eval_tap $? 261 'AdminBulkCheckValidUserIDV4' test.out

#- 262 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'WyysQINC' \
    --body '{"avatarUrl": "b8fm1ENL", "country": "fUoS5c0B", "dateOfBirth": "KFBB0k7w", "displayName": "BJTQZ9ey", "languageTag": "8jDzNdIc", "userName": "UkuATGaO"}' \
    > test.out 2>&1
eval_tap $? 262 'AdminUpdateUserV4' test.out

#- 263 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'apxpu4z2' \
    --body '{"code": "SzkuMvsp", "emailAddress": "dwgSuxqr"}' \
    > test.out 2>&1
eval_tap $? 263 'AdminUpdateUserEmailAddressV4' test.out

#- 264 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId '5QMcntem' \
    > test.out 2>&1
eval_tap $? 264 'AdminDisableUserMFAV4' test.out

#- 265 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'jfYdYmZq' \
    > test.out 2>&1
eval_tap $? 265 'AdminListUserRolesV4' test.out

#- 266 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'kqZZchSy' \
    --body '{"assignedNamespaces": ["GrdKKFdN", "PZJ8m9mY", "qZsQxHXr"], "roleId": "bMJLTprY"}' \
    > test.out 2>&1
eval_tap $? 266 'AdminUpdateUserRoleV4' test.out

#- 267 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'qW4GNwUv' \
    --body '{"assignedNamespaces": ["fuE8QKb2", "u0jCRI2F", "MpI1HAgk"], "roleId": "1lfKa6yE"}' \
    > test.out 2>&1
eval_tap $? 267 'AdminAddUserRoleV4' test.out

#- 268 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'w7nc61Ow' \
    --body '{"assignedNamespaces": ["0mf2TEwR", "DU9GO7aX", "yRaFbASc"], "roleId": "JorPZzdH"}' \
    > test.out 2>&1
eval_tap $? 268 'AdminRemoveUserRoleV4' test.out

#- 269 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'false' \
    --limit '76' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 269 'AdminGetRolesV4' test.out

#- 270 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "UhFCRK30"}' \
    > test.out 2>&1
eval_tap $? 270 'AdminCreateRoleV4' test.out

#- 271 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'iEruWglG' \
    > test.out 2>&1
eval_tap $? 271 'AdminGetRoleV4' test.out

#- 272 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'iLiS3Rs4' \
    > test.out 2>&1
eval_tap $? 272 'AdminDeleteRoleV4' test.out

#- 273 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId '9ahDHXOc' \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "YJZFRNz7"}' \
    > test.out 2>&1
eval_tap $? 273 'AdminUpdateRoleV4' test.out

#- 274 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'tOUY1vTi' \
    --body '{"permissions": [{"action": 47, "resource": "m0L7FFp3", "schedAction": 48, "schedCron": "tdzQEZwj", "schedRange": ["OOdd7OcT", "1lZEu1YL", "Oenj9Kms"]}, {"action": 33, "resource": "i1ptAiJG", "schedAction": 34, "schedCron": "nrcCgJDK", "schedRange": ["HbtVVwco", "bCBfC1r8", "Lv7yKKGB"]}, {"action": 44, "resource": "KooI0s11", "schedAction": 25, "schedCron": "lN5cWYox", "schedRange": ["7fpV1fdI", "KTiKlvYd", "XEg9MSqQ"]}]}' \
    > test.out 2>&1
eval_tap $? 274 'AdminUpdateRolePermissionsV4' test.out

#- 275 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'faWeHOAA' \
    --body '{"permissions": [{"action": 92, "resource": "P3am9RE2", "schedAction": 59, "schedCron": "hxTNTRJe", "schedRange": ["FRPJOAIN", "Os7IPqAh", "vOWiqJLd"]}, {"action": 72, "resource": "C2HpqaTe", "schedAction": 91, "schedCron": "XIdrujwv", "schedRange": ["G5KwJSce", "CHuDVCBn", "tQWXpkJf"]}, {"action": 84, "resource": "Eq93aARf", "schedAction": 85, "schedCron": "iDlf7ffY", "schedRange": ["mkHWgBCB", "i7hTgoZt", "UnwGmivu"]}]}' \
    > test.out 2>&1
eval_tap $? 275 'AdminAddRolePermissionsV4' test.out

#- 276 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'QBb82hPq' \
    --body '["Ub211Cp4", "Bxv1qmkj", "9kmx7KoO"]' \
    > test.out 2>&1
eval_tap $? 276 'AdminDeleteRolePermissionsV4' test.out

#- 277 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'sMCjZqvq' \
    --after 'x4FTmOJG' \
    --before 'giNZLv3O' \
    --limit '21' \
    > test.out 2>&1
eval_tap $? 277 'AdminListAssignedUsersV4' test.out

#- 278 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId '2bcMXllW' \
    --body '{"assignedNamespaces": ["yBmMgj3w", "Ch11c0YS", "FHGcR5Gh"], "namespace": "kyDSC4Le", "userId": "jhf670dp"}' \
    > test.out 2>&1
eval_tap $? 278 'AdminAssignUserToRoleV4' test.out

#- 279 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'vWu5rKpz' \
    --body '{"namespace": "bLMjo3Tz", "userId": "ZEmh6oZf"}' \
    > test.out 2>&1
eval_tap $? 279 'AdminRevokeUserFromRoleV4' test.out

#- 280 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "2flaR6S8", "country": "8ZJ5jkpZ", "dateOfBirth": "4gKkws1K", "displayName": "gXlhSM4h", "languageTag": "ioqUglks", "userName": "UiFLMqOT"}' \
    > test.out 2>&1
eval_tap $? 280 'AdminUpdateMyUserV4' test.out

#- 281 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 281 'AdminDisableMyAuthenticatorV4' test.out

#- 282 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'LPkvmcLB' \
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
    --factor 'HoB6GUlM' \
    > test.out 2>&1
eval_tap $? 290 'AdminMakeFactorMyDefaultV4' test.out

#- 291 AdminInviteUserV4
samples/cli/sample-apps Iam adminInviteUserV4 \
    --body '{"assignedNamespaces": ["F2XwbM22", "JgLZUfQ2", "SFQhX3hy"], "emailAddresses": ["oQ3MKyxT", "WJr7vFih", "qXMxn50b"], "isAdmin": false, "roleId": "EaUY4Oqu"}' \
    > test.out 2>&1
eval_tap $? 291 'AdminInviteUserV4' test.out

#- 292 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "ZeR6xb0U", "policyId": "PUlaxNqs", "policyVersionId": "QbHhQvCz"}, {"isAccepted": false, "localizedPolicyVersionId": "iTF20vnq", "policyId": "UQaGApK1", "policyVersionId": "9hXAJzH6"}, {"isAccepted": true, "localizedPolicyVersionId": "hnNtExXH", "policyId": "Sst9QeJQ", "policyVersionId": "Vjxu4WRy"}], "authType": "EMAILPASSWD", "country": "Jz1ftgSo", "dateOfBirth": "shijp5rc", "displayName": "XLwWfNLj", "emailAddress": "ZDOPvS4Z", "password": "bXTUxpvo", "passwordMD5Sum": "AfVU4D5x", "username": "crJ9yt0J", "verified": false}' \
    > test.out 2>&1
eval_tap $? 292 'PublicCreateTestUserV4' test.out

#- 293 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "F0zbTFfj", "policyId": "xLILo3SQ", "policyVersionId": "SCqjq5AQ"}, {"isAccepted": false, "localizedPolicyVersionId": "RgdDKBT5", "policyId": "dkzzDWzL", "policyVersionId": "NkzTSOzx"}, {"isAccepted": true, "localizedPolicyVersionId": "hiE82PLt", "policyId": "CcASG68k", "policyVersionId": "3dvuh27d"}], "authType": "EMAILPASSWD", "code": "U0Mg5HNx", "country": "EzTU7hx6", "dateOfBirth": "2Gpe5W1u", "displayName": "BsRWtVda", "emailAddress": "PDs0YC8t", "password": "rEht1onk", "passwordMD5Sum": "4gRUkzGw", "reachMinimumAge": false, "username": "t0ZiGfDy"}' \
    > test.out 2>&1
eval_tap $? 293 'PublicCreateUserV4' test.out

#- 294 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'xC3JnKHV' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "SEsPgZwH", "policyId": "XmyyzSxW", "policyVersionId": "hS9bh42Z"}, {"isAccepted": true, "localizedPolicyVersionId": "GncAHoHn", "policyId": "q1ip5Zgp", "policyVersionId": "GUjgZnL9"}, {"isAccepted": true, "localizedPolicyVersionId": "D2a7FIHJ", "policyId": "mc3PgbSL", "policyVersionId": "kHAGt3WI"}], "authType": "EMAILPASSWD", "country": "gRlFQ69s", "dateOfBirth": "DiujdOvd", "displayName": "pP8uya5M", "password": "ccDMBhI8", "reachMinimumAge": false, "username": "bkGVCarq"}' \
    > test.out 2>&1
eval_tap $? 294 'CreateUserFromInvitationV4' test.out

#- 295 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "OvWXBxr8", "country": "X1zP1dB6", "dateOfBirth": "4JnEy2Rm", "displayName": "HMIJcWIa", "languageTag": "5zs5ZkL1", "userName": "FUBxWgc5"}' \
    > test.out 2>&1
eval_tap $? 295 'PublicUpdateUserV4' test.out

#- 296 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "XKcJMm6v", "emailAddress": "G5bizsvu"}' \
    > test.out 2>&1
eval_tap $? 296 'PublicUpdateUserEmailAddressV4' test.out

#- 297 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "7jiAxbrH", "country": "HCc14V3I", "dateOfBirth": "oKYOTbvA", "displayName": "gearUdUT", "emailAddress": "7onsbe0X", "password": "Jo0gndCV", "reachMinimumAge": false, "username": "MozUNP83", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 297 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 298 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "PtZCqeNj", "password": "KCKhUKFw", "username": "BGHo0ajp"}' \
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
    --code 'cxji0Jvg' \
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
    --factor 'qhHj7ZuB' \
    > test.out 2>&1
eval_tap $? 309 'PublicMakeFactorMyDefaultV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE