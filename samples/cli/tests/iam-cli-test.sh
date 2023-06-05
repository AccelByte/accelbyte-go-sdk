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
    --body '[{"field": "kXngzpWXWBG0Imsc", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "blockedWord": ["hmG1SCVi2DtVC6Pi", "5jsOBFsOfeN1MLSg", "9GVUk1RxBnzM4L9v"], "description": [{"language": "4qE6u4oyNnmphxGP", "message": ["2KJZEv0xVTe88m1S", "j15h8b6of8eoaYFO", "0cQj1JPYQLWJ2lId"]}, {"language": "fduwPL5PfBHFJP7b", "message": ["0svetbExPqW9wn3Q", "5lYagOdMsqaoI6vP", "ShuZN1NY0I9BULP2"]}, {"language": "uVHT4s98wkNSqREQ", "message": ["YjKqvvuUTIeh5eiI", "z6ItcgvokiYo6F0V", "CyhjXzbJtV8PDc0i"]}], "isCustomRegex": false, "letterCase": "ad1RCGe8IfX7Sp1N", "maxLength": 0, "maxRepeatingAlphaNum": 31, "maxRepeatingSpecialCharacter": 59, "minCharType": 75, "minLength": 45, "regex": "5gcB0gzIFY8SiQWY", "specialCharacterLocation": "HZ8NLhmU4SaFcETx", "specialCharacters": ["qAxkdvPcNrMubtzo", "EAiAcEtrrT1yTkTB", "iS6dkHfQkE30EsCT"]}}, {"field": "KTD3RdP86f9EsdBj", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "blockedWord": ["l67lifVGnxKnLc4v", "o3r5Sf6VMmCoKmhh", "Ywjvtapy1fFJpcA6"], "description": [{"language": "8hV8zaMRJBBPvNER", "message": ["DQnIIli4tSLwHDfo", "hTtjU34oOPzp4BDZ", "RpFCGjS0ZPtKRwRz"]}, {"language": "66QUQQyS57qnxexS", "message": ["6zyUkvernXII934G", "DnlPACARJfQ1GEsT", "ZbMDEb46Hs7CxXTD"]}, {"language": "iFuJEPA7AyRmpZnj", "message": ["CuSJQiK8X6w2FTsU", "JEGDtVTlbMPxsZT7", "ZnxL4hMbuRpZYpy5"]}], "isCustomRegex": true, "letterCase": "ysb2YiQujxwCEpsQ", "maxLength": 66, "maxRepeatingAlphaNum": 24, "maxRepeatingSpecialCharacter": 53, "minCharType": 30, "minLength": 84, "regex": "r0Jvmuz7vlqsBF3T", "specialCharacterLocation": "ZHNdhQdOr8z66odP", "specialCharacters": ["XwyhIglNv4YrAGup", "FhKGpl34OPISEUq0", "J2xV2v5AoV7aDJf9"]}}, {"field": "WpArf2qWpj8AfTHv", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "blockedWord": ["4zIWQNia8MZ1jcZn", "eIqtskE2pUVB9rEx", "6WL19vQAdfQUtwFd"], "description": [{"language": "FcWOX27oqef71P9X", "message": ["RYxQcPD9kAEZtxMk", "IREah9vIaaDSAvbO", "rHFs5cyPnSz07UY6"]}, {"language": "LbkmGD5WWKIKY2Il", "message": ["pjlQh9tYDYZQPQgn", "jAcq9V5pBg6XRi0D", "k0hATiBbqNrXsHeg"]}, {"language": "6INByU7GTVjzilrI", "message": ["UXSsVXpHQ8qXUrIO", "rjRPGwVqBaPZ5SpZ", "aJAPRolpn0XAQJQk"]}], "isCustomRegex": false, "letterCase": "6VzHzkdwhcHtHPGT", "maxLength": 30, "maxRepeatingAlphaNum": 25, "maxRepeatingSpecialCharacter": 13, "minCharType": 57, "minLength": 24, "regex": "hdvhyj7VrQ4Hs1Ow", "specialCharacterLocation": "bx1B2YZElnI2OjKM", "specialCharacters": ["76HAeRCqoWUpLKjF", "IaQCwYdsNyOuTdWd", "i9vSqiAqaFGkXiOF"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field '1jxlEMwZCPuvePMc' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after '6HBEP9PvbfgVzdUo' \
    --before 'r5ZF3xWxcQaBzCCU' \
    --limit '36' \
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
    --body '{"ageRestriction": 65, "enable": false}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'qo8KxJ7DLos1KzVy' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 39}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'r9tAeXTFAGlPE25z' \
    --limit '80' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "th6gVHjBuNKRKfms", "comment": "vNjB2NTENq0vsyD6", "endDate": "DmfsHebVeeSC0QEf", "reason": "Xwlescyf2DRuzI3O", "skipNotif": true, "userIds": ["5J2gibCyaTwyzCCp", "WAlOuGE6gxZD3OWx", "LFHAjqD4ieVDh0yC"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "RALAb8sIuwehi0oR", "userId": "pn5ioVFSHYdf0cjK"}, {"banId": "L7v7PZRe2N6nCyBe", "userId": "DuEfPTYIuDcqCBV6"}, {"banId": "RWvbF3qaiUkAAy01", "userId": "Xoq5TNx8vP1bsSaB"}]}' \
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
    --clientId 'zgDhCIdJ2tRJ1ASj' \
    --clientName 'FgYHl0gUatMyp6dC' \
    --clientType 'tESXEpl0n18NqX1r' \
    --limit '37' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["VygiYnDpr5t6X3m0", "Kg7o4TrKf4ImsGru", "zOXGqOfXdYaVx1eZ"], "baseUri": "jZ13r66n4StScWnS", "clientId": "B0smfjsoAOUnIGz9", "clientName": "J20v4gPl9fg2mZNr", "clientPermissions": [{"action": 95, "resource": "rvMgKNTkZI4nNZKv", "schedAction": 16, "schedCron": "Lv7jUgB9jtHUG33s", "schedRange": ["gMiZhjyi3K2wwIqN", "izc5VD3UecWWaZEx", "yUA2hhmGA8mT2aq1"]}, {"action": 79, "resource": "jPEel9P3LW2kGY8S", "schedAction": 52, "schedCron": "yx4OUUVgV53QEXFt", "schedRange": ["vVbhwytMxFwBRujv", "d9Swms20LF4yWg1b", "LtJIlkw4PnXoMrDb"]}, {"action": 53, "resource": "mPHziexfAjrXhsec", "schedAction": 60, "schedCron": "jiBba4b7TCqfmxTj", "schedRange": ["mIcp8E840Wzf2o38", "zG6JniWWzN0Bs3yB", "74kViPQ95Qc7ga3F"]}], "clientPlatform": "V4o9qwtx3uvecExl", "deletable": true, "description": "bN5Bx6cUASPqvRTz", "namespace": "1iakdAqMwmzNA18B", "oauthAccessTokenExpiration": 51, "oauthAccessTokenExpirationTimeUnit": "sa4FDEUp1uj4GYUS", "oauthClientType": "VXludnL3ZbjUQX4p", "oauthRefreshTokenExpiration": 57, "oauthRefreshTokenExpirationTimeUnit": "EHIu2OTx8pVBFNSH", "parentNamespace": "2Phs1gLULzcHtgFs", "redirectUri": "5uLejGeg2bFCznPq", "scopes": ["oMe2zfWxqkpswgWs", "BGmsuKOPEHjjEwAC", "nHDCwamC8wvYxTL6"], "secret": "RS0nB3FrZ3g47BB9", "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId '727jCA0IiC2po3X1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'Cod5U22Svq1ohldg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'F1VfKNPLdL2mUP1C' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["19062N4jfSy9qweq", "QDS7yxW0Uho8xSGe", "N6Yt67SX7e4kyQ55"], "baseUri": "xY2mYci3ysUzDLPE", "clientName": "W38IpKNfrHy47wK1", "clientPermissions": [{"action": 72, "resource": "q6q7RfsyHkXx3oKL", "schedAction": 87, "schedCron": "FYvPQLBX7MjKCVJq", "schedRange": ["l6Xn5SfkdVn6B6au", "qBKKz3ihtaQgqgTJ", "mLtHypm7qRJ80U1P"]}, {"action": 45, "resource": "KCq2BNoCuYMBdGsZ", "schedAction": 0, "schedCron": "FizOxXseLSOrUD9c", "schedRange": ["rnxzLsAJX4XJfuQ8", "sCrWEekQEp1MhnBJ", "0Xt2pNHmVnu8cuJl"]}, {"action": 74, "resource": "tAs8xJUxdVhgoJHX", "schedAction": 93, "schedCron": "z9ydfsVBNy99gWYK", "schedRange": ["4GVY3wFXxdEw7Rn6", "zBd6fjUR6B1K1sJn", "C8Zy2GjiRMcO5oTA"]}], "clientPlatform": "LsvYMauZXd0j6OUx", "deletable": true, "description": "o6xWBOuNwjH7NhLc", "namespace": "XmEYQCEayDlwFs8Q", "oauthAccessTokenExpiration": 62, "oauthAccessTokenExpirationTimeUnit": "5fHG2tv7uTQOFCMd", "oauthRefreshTokenExpiration": 39, "oauthRefreshTokenExpirationTimeUnit": "LMAqkOwhKmF3SL8Q", "redirectUri": "GALvmkM5gsyYVDJ0", "scopes": ["dTNrlMt3oEB0ZUxM", "nWq7RML6R6ynJAMT", "XqFtZzkfYf0g6GVb"], "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'pmrbuD1dHJHzVegM' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 90, "resource": "k3K95kRske3YtTnu"}, {"action": 61, "resource": "Tom0i1fHD7eLT0fR"}, {"action": 32, "resource": "X0is0I3EkuHQ2L8l"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'VzuWEdWiu7vW35yH' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 98, "resource": "BWrFGfuBm6GL8Icy"}, {"action": 1, "resource": "iwvqFSfK3c1oNSWw"}, {"action": 31, "resource": "ZxE10jDwbhGhtswl"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '35' \
    --clientId 'aLf2GtZycpwBBuSN' \
    --namespace $AB_NAMESPACE \
    --resource 'zz7M6V2N8HIL1LFH' \
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
    --limit '55' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 130 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 131 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'MMAvu8MiD0QAUDUr' \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'yyYfMwquVkTDLyGD' \
    --body '{"ACSURL": "chvThWEwDNWdZnxI", "AWSCognitoRegion": "KTT0PVoWJqtxUFT6", "AWSCognitoUserPool": "LiHlnf2cy6MAHjqC", "AllowedClients": ["RaPPqiubU1UBbuT5", "o2SgnopLkCAT5E3v", "7Z6BUyR8hBH3nhOW"], "AppId": "b5XaQw6K8vgHzinY", "AuthorizationEndpoint": "C4L3eZnbK3xanSwR", "ClientId": "v3P7njJ834CSZpzu", "Environment": "dluOJ8nm8QvZn4Hq", "FederationMetadataURL": "z5J41pPqR9iELmCw", "GenericOauthFlow": false, "IsActive": false, "Issuer": "p0FmBni00lR1lOXe", "JWKSEndpoint": "fugWNfqalKRfiVSI", "KeyID": "m18AMIC5Rib2p3IL", "NetflixCertificates": {"encryptedPrivateKey": "LwYTNTGxKyubRrX6", "encryptedPrivateKeyName": "FUDsKH69uAvIFUeX", "publicCertificate": "yaz7txubfpm9yAgJ", "publicCertificateName": "EY6m0knIzSexp0GX", "rootCertificate": "EvTUJ8RfbA7NVufx", "rootCertificateName": "2ls4eBecxLvfHdGo"}, "OrganizationId": "cUAexArYJ6FehbNs", "PlatformName": "nybInnPu4sendrZT", "RedirectUri": "CbaJHxKiTHQUHr3p", "RegisteredDomains": [{"affectedClientIDs": ["usvtSis9GheiuXZC", "Yr4VXfEX7dYGZkVu", "SpgihtmQb4gYivi2"], "domain": "ounJN7hQPhJZlnwo", "namespaces": ["i7KFqa5Rmbb4BAoe", "YDgQdrh0ZeTkx7Pl", "lfjSo7WwaDLUC01y"], "roleId": "Ya5drCFydIDeqRnH"}, {"affectedClientIDs": ["AwFZoSKVqdfAC0TA", "SmiBjpvSWuqZKfPD", "UKcDzl8vwvBbQZOr"], "domain": "EsRxqbtwBG73H1UH", "namespaces": ["rEuZPaS2VyNse1bM", "JReG96fvJgqpPex9", "oJfcCaQdrYhAJPJk"], "roleId": "grVA8HdJ0QwoqfTk"}, {"affectedClientIDs": ["b2alhzwYI1WoZsrc", "UL5hjvMcjQRRraS3", "QSspv8fTZ83KbAGX"], "domain": "ARA7yF15tdaE5qY8", "namespaces": ["saXLBGIMEzjUB393", "v7NYfq3BJQtNK3yH", "uHZBSJScTJMXoeno"], "roleId": "dEIIeF5yuUjqBpNr"}], "Secret": "H3FzgwmSh0MhB0Kq", "TeamID": "Q5nfuQKxrRdHvbO1", "TokenAuthenticationType": "ENXou62rvtWvmged", "TokenClaimsMapping": {"8ZmUHW0GjcD8Wt9W": "GgnA20pdklaES6rK", "vxnQKvZimkQ0NBbT": "3zpR9bzTQA3HiCGe", "tjARl1dN4YPrBfHl": "ACAgMQ8zwA58knZF"}, "TokenEndpoint": "p9rx2uUwdeHdmzTB", "UserInfoEndpoint": "qsPcxXwD9MfwHza8", "UserInfoHTTPMethod": "OwH7yA155x9m0Cht", "scopes": ["u7WyLVDH2ro8IXsM", "lQVABX2oakAWtybn", "rHE8cCkBc6q3M2zo"]}' \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'mKh4hu5MXPIK4B3M' \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '95FGQsW2Kf0hd2WW' \
    --body '{"ACSURL": "g4Fsx5DYmpPCA6SI", "AWSCognitoRegion": "SVvyF62PNxK1mp3w", "AWSCognitoUserPool": "KKa3dUoKNaXARQWj", "AllowedClients": ["D9hEWaGMXWawpShW", "6G3jCxxI6sCIxk0h", "Z0JqoBk4SDyYKnEK"], "AppId": "LchLhYBMKvKpAN41", "AuthorizationEndpoint": "G9qWqtF7AEDEjkw6", "ClientId": "qBg08lHGtsAfgPIk", "Environment": "vx6rTC84wvkDd2uy", "FederationMetadataURL": "mgEbd7TYvTOgGB13", "GenericOauthFlow": false, "IsActive": false, "Issuer": "EMN8XRbQI76ZgZqv", "JWKSEndpoint": "QMdqes5E6aAzrK1C", "KeyID": "HkgNEupjGt0Tz7pq", "NetflixCertificates": {"encryptedPrivateKey": "ZaMQnSIbteRF53tO", "encryptedPrivateKeyName": "dv2JU0q2Up5HItRN", "publicCertificate": "m2Rq4O4gpr6qMQ8f", "publicCertificateName": "ZjZzx0hEbr2NbuEn", "rootCertificate": "ek9fHLwWSpK07hTP", "rootCertificateName": "70hkwe2nQOgw7Zto"}, "OrganizationId": "UZrV7ZXdAm6NfkKh", "PlatformName": "3z7tYVVFcNxjpKix", "RedirectUri": "4JAU6RvuLv66HSpl", "RegisteredDomains": [{"affectedClientIDs": ["XqgjX2MpR5kzZO41", "3MpXpR6FKh62U5BT", "POZYtuA5ao33YF5K"], "domain": "pi00sG0ftkZykeiM", "namespaces": ["SXLOJNf6rxJR0Aoj", "ZgrrsT0mRPGvvcSE", "Kk5WnJvKtTx7iRHG"], "roleId": "ETCvgEDUEcsVtBgH"}, {"affectedClientIDs": ["BKotumEatjg6GG6W", "qlyYMXmcNyVvawHv", "TRuP72qteAxYJW7F"], "domain": "PjOox7hfQec4E56N", "namespaces": ["KmyXq9QCvEOHcgvM", "P0mv6lSMpuDzwhHi", "uSOeknJCm5v4ug6i"], "roleId": "7IuWKB1Za1Wn9Y7V"}, {"affectedClientIDs": ["fC6twK0VMba8mqgY", "4sYfxqft7FSsXQJC", "9u6qhQ436R8cyLoW"], "domain": "M7DsXeSZV5XfGFRg", "namespaces": ["Ls5mzDhpbKmnqlNT", "xMMeJhF3XMsHX6hU", "RhtVS1lakFndtbXa"], "roleId": "w1MLIgVXEou7BK15"}], "Secret": "wXm50X2oUXkK6vTv", "TeamID": "nqtfX75FrkZSV6Eu", "TokenAuthenticationType": "SQFyJnHQzHnm5Bob", "TokenClaimsMapping": {"y19BZAKBMCrhPipH": "WYLDkjreW0O5WLrm", "VdYIXiIUCpdlbZHZ": "QEX6cWKGPG9DPXz3", "xAer6mlATcFb6v5T": "uiO72fUzCbEYPKNo"}, "TokenEndpoint": "4A6bBhiZvgNhuauU", "UserInfoEndpoint": "xwEsHkgaEfCRshbv", "UserInfoHTTPMethod": "TN9zFqfsvEuhJ5Tk", "scopes": ["SFY96dTQGz76QODQ", "ji6OSbwRHWkSd4KS", "jXhNCYDUR5Xtg7EN"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'spgczZrdtD4UvRiS' \
    --body '{"affectedClientIDs": ["Qo92X6q4aNHEXo1Z", "N5n6to5e3UEKqkRg", "OPULXcW2bAfhnvCc"], "assignedNamespaces": ["ByZVvgXjRNZl3S9D", "PiDxswVc4VXSxnAN", "OUVfOQOpaPZv4UzC"], "domain": "1avCiCmwzCU1TgOP", "roleId": "1FSps6yG4ybRUOV0"}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ty6iXeeqPHB6Vtca' \
    --body '{"domain": "Sl5dln6immvinxOK"}' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'CZnzpFd3AACGuIsU' \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'bstdfFzcV83ShUQX' \
    --body '{"acsUrl": "m8WDwQZtYgLyyWNM", "apiKey": "W83F6jxy162VhkDC", "appId": "JgmRn5ql34XbchUd", "federationMetadataUrl": "jzClbKWjCrqDeK6T", "isActive": true, "redirectUri": "L7dITqJABaWvw9ga", "secret": "rW2oYw4WSzUnwOh6", "ssoUrl": "by9wR54wXJSTMaK3"}' \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'FUTDxhPzgo7ZjPkt' \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'Biv9QSkcnNVXpYpy' \
    --body '{"acsUrl": "vFOLzdgFpDPARXF9", "apiKey": "AnBfXgppxeW88Ul3", "appId": "8vHLJ3WMHrEdN6W4", "federationMetadataUrl": "GwcGGKzQCoGLbw6f", "isActive": true, "redirectUri": "fkpqWE9rV8wCuzWH", "secret": "olfuY3TzMrLBLiu6", "ssoUrl": "DEZ65OUcKViMMvGf"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'I88ZhXtROq7wKPx5' \
    --platformUserId 'B0ROrftH8TRCqfl3' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'XBXjOknPFLuvbwE6' \
    --after '50' \
    --before '21' \
    --limit '100' \
    > test.out 2>&1
eval_tap $? 142 'GetAdminUsersByRoleIdV3' test.out

#- 143 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress '2jwPw3M7elRp89sV' \
    > test.out 2>&1
eval_tap $? 143 'AdminGetUserByEmailAddressV3' test.out

#- 144 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["kfJQE4onHM7fijmR", "WXL0mleGx6NM4Eli", "5nSzg5fjhB3LiVJC"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["AKzfePWf4qTSkckt", "qCSPfBW1T5nR61qG", "NVueT0NQQIY3EZnW"], "isAdmin": true, "namespace": "xv58Q9nY5f4KXyZt", "roles": ["ratclz81heDhZCpD", "cbZw9cacADpXZ4hW", "MiwphpGGpbRjqneU"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '65' \
    --platformUserId '541oDJTZcS9PSqox' \
    --platformId 'KgdbeGL64E3Pen35' \
    > test.out 2>&1
eval_tap $? 146 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 147 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 147 'AdminListUsersV3' test.out

#- 148 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'MoshaoOEOcfzKSl7' \
    --endDate 'LPzJzwSs3O0zvPSM' \
    --limit '41' \
    --offset '92' \
    --platformBy 'TdKV51PoPX97qZyM' \
    --platformId 'o0JZl25mbwJwuVbc' \
    --query '6zToJ82fclVAO5co' \
    --startDate '1pWQLa8ZmJyimvQR' \
    > test.out 2>&1
eval_tap $? 148 'AdminSearchUserV3' test.out

#- 149 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["XXanZTcQyDvanJCI", "LddQaVTd8jh3ZLs7", "m2BFxLzdNhfOpXrI"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetBulkUserByEmailAddressV3' test.out

#- 150 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId '4gkKFpJOAE7eAW2h' \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByUserIdV3' test.out

#- 151 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '7tGKcu9T72RIgVOn' \
    --body '{"avatarUrl": "UB8kpQQAojrqRZz5", "country": "bPElCmXLfVyBb38Y", "dateOfBirth": "XSD4RlXEbTJzrdhf", "displayName": "G1bAqiKyt2MkfhKa", "languageTag": "iIjCoTLVSBYsAhHW", "userName": "uKcKJnG03IKPs4UH"}' \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserV3' test.out

#- 152 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VcY7rnRonSzsgzsJ' \
    --activeOnly 'true' \
    --after 'Rcjf2yxFAlZD1ZwN' \
    --before 'W6TSrAfbOlb81Q7E' \
    --limit '63' \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserBanV3' test.out

#- 153 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'yJiHAfQsiUEtHRxS' \
    --body '{"ban": "PUAb3SyXYgc7z5nB", "comment": "G0OCE1zvoKmolnDJ", "endDate": "6CVJ8JQYldhMxgNg", "reason": "T5XvVpc5HVsLZncE", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 153 'AdminBanUserV3' test.out

#- 154 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'U1FfqmKXLyrNwLgk' \
    --namespace $AB_NAMESPACE \
    --userId 'oSmFyOPeUZaBTYSd' \
    --body '{"enabled": false, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 154 'AdminUpdateUserBanV3' test.out

#- 155 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mNPKHgvdZSlp9SZL' \
    --body '{"context": "TKryWY1DN3eqWwGz", "emailAddress": "jLFSG8fQUyJd043o", "languageTag": "u88ZMLW2Edc6tGtJ"}' \
    > test.out 2>&1
eval_tap $? 155 'AdminSendVerificationCodeV3' test.out

#- 156 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'j6dKyE76Nv1xs4bL' \
    --body '{"Code": "Q29jt7ywZvnn2u3P", "ContactType": "OCeb9lPQCQ3OekUS", "LanguageTag": "m2h1V9z47WewmW7h", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 156 'AdminVerifyAccountV3' test.out

#- 157 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'GsFi8Ev28m07fFFN' \
    > test.out 2>&1
eval_tap $? 157 'GetUserVerificationCode' test.out

#- 158 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZS99WFvTNiW7xXqi' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserDeletionStatusV3' test.out

#- 159 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '3fi6EHO6Ac6mFquz' \
    --body '{"deletionDate": 0, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 159 'AdminUpdateUserDeletionStatusV3' test.out

#- 160 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QyhhHE52BlRg8ojp' \
    --body '{"code": "hzxoJxV6j3qd4sI6", "country": "2KsRqvayrJnWUNnA", "dateOfBirth": "pZXx7yItKyZJHpE2", "displayName": "N6UeRrK50Is6KKDX", "emailAddress": "VkEgtAAa6FxCwabu", "password": "4yeodFPLXsun90IH", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpgradeHeadlessAccountV3' test.out

#- 161 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId '1cT9MKgzmFmvngqI' \
    > test.out 2>&1
eval_tap $? 161 'AdminDeleteUserInformationV3' test.out

#- 162 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EPyEjnSGar20JP3l' \
    --after '0.3546790872885274' \
    --before '0.04365473679493059' \
    --limit '56' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserLoginHistoriesV3' test.out

#- 163 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mkfqcaKTVgdftzZJ' \
    --body '{"languageTag": "K9cPnZ37HKEeBf9q", "newPassword": "PvDJwkYUarPBY1CZ", "oldPassword": "PLwO61DTO7Sslf2B"}' \
    > test.out 2>&1
eval_tap $? 163 'AdminResetPasswordV3' test.out

#- 164 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 's9T6ESAs7cr3JjT7' \
    --body '{"Permissions": [{"Action": 74, "Resource": "22SYst1Fb86HiXcq", "SchedAction": 76, "SchedCron": "f63990cUGhNVXcIb", "SchedRange": ["LziTYVDfH3jwObPY", "gGapC6lhWScK5OP3", "swkeD6xkUhMPxYSt"]}, {"Action": 80, "Resource": "SF75CqMzCxzXr7tu", "SchedAction": 8, "SchedCron": "wv9MDQaT41XOQm4C", "SchedRange": ["M2KMqMoyuNuojRbD", "SEUA6RBdtstDV3NT", "jXzctmSsOrDYvRLs"]}, {"Action": 92, "Resource": "fDhvIaNZHQooy2Sv", "SchedAction": 63, "SchedCron": "9jKVvIfoY9CvzV6E", "SchedRange": ["cS8N9w1uh0p0kqez", "lP8fCfDIT1jVb18B", "bVIUGyVNfZ1qtoBC"]}]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserPermissionV3' test.out

#- 165 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'nmoe5OS8dBV046St' \
    --body '{"Permissions": [{"Action": 19, "Resource": "D9eowgeXLj8VmILh", "SchedAction": 15, "SchedCron": "uJWOaYpAc8FWUxxv", "SchedRange": ["PaMAG0q06HNITbUq", "REed1y1Kan917dXg", "Zt0cf36FVvYdQF2y"]}, {"Action": 57, "Resource": "8Ks1J3MkJbhnMFYJ", "SchedAction": 76, "SchedCron": "5csXg1Pxno3z6GR7", "SchedRange": ["EXqisMMybp7LpRLp", "vVW9fSxxCMwldsEo", "LkXsvKmtaivjIn6W"]}, {"Action": 57, "Resource": "nqYUjdfwb62vlJ63", "SchedAction": 66, "SchedCron": "2uht9FJT4lFNV1pt", "SchedRange": ["RHf8iDkRhMRKfEjN", "WbzalcK14cGUmib1", "e7bYla6IupPYJMpX"]}]}' \
    > test.out 2>&1
eval_tap $? 165 'AdminAddUserPermissionsV3' test.out

#- 166 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pTczKdGIeDjgF31b' \
    --body '[{"Action": 61, "Resource": "TFmHrjA0Qv9mQNLY"}, {"Action": 51, "Resource": "zoLMbpNFSMAxX87L"}, {"Action": 24, "Resource": "12cPh4ZC9S0Ev3Xo"}]' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionBulkV3' test.out

#- 167 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '55' \
    --namespace $AB_NAMESPACE \
    --resource 'nvwcBQ0JzxxXA1aw' \
    --userId 'KAoHuVdLeqzGdd0o' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionV3' test.out

#- 168 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'T1NBo4yK0LRNL8tU' \
    --after 'rrTYIwxude11geBj' \
    --before 'Z5HJfMK3n8jixBRu' \
    --limit '46' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserPlatformAccountsV3' test.out

#- 169 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'tmG9suov7nkXxMQX' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetListJusticePlatformAccounts' test.out

#- 170 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'G7qXfKEn3qlO4A01' \
    --userId '11R8ZNnxglcEwz1R' \
    > test.out 2>&1
eval_tap $? 170 'AdminGetUserMapping' test.out

#- 171 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '46PTs6CNPz9RNqNE' \
    --userId 'noxqgEGNlOYqe1k4' \
    > test.out 2>&1
eval_tap $? 171 'AdminCreateJusticeUser' test.out

#- 172 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '9nq6QZkurP5VaOlY' \
    --body '{"platformId": "1WUeFs7JqADcVMXp", "platformUserId": "glA7aCzpKjnSdRpa"}' \
    > test.out 2>&1
eval_tap $? 172 'AdminLinkPlatformAccount' test.out

#- 173 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '6q1VlDQ4fRIbDyJA' \
    --userId 'Bk9j0SuEDNjW6gxo' \
    --body '{"platformNamespace": "sXPI3SaT41ctheYR"}' \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformUnlinkV3' test.out

#- 174 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'SSu24MJd1TfvuXVI' \
    --userId 'dl1jxiphKB3msrDz' \
    --ticket 'dfBVNcJXfgAOwRNg' \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformLinkV3' test.out

#- 175 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'KvPKc2kTU0RhtzIr' \
    --userId 'D0p5Y27vhecDhbzo' \
    --platformToken 'QNdEHH6vHxB8is15' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 176 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'W5qOXIYzyXVg49pQ' \
    --body '["s3zDSudU9rkGHmTX", "dl2aZIOynPMF2WU3", "DC9JhRRUfwk6cwWH"]' \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserRolesV3' test.out

#- 177 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'G9zdcq50GdHqAa7M' \
    --body '[{"namespace": "YzIyooWMeW1oxRpD", "roleId": "d7klGtN5B0wGMSpu"}, {"namespace": "INh1I80gf8nhyxp8", "roleId": "o8yUA1azTnQhg8Uf"}, {"namespace": "ZgWH1cZdnYPA8gze", "roleId": "8H2mmWwYlVgHfiGd"}]' \
    > test.out 2>&1
eval_tap $? 177 'AdminSaveUserRoleV3' test.out

#- 178 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'ETGo52AsDrJCebWg' \
    --userId 'YGlz6ZzGOWczQmxy' \
    > test.out 2>&1
eval_tap $? 178 'AdminAddUserRoleV3' test.out

#- 179 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId '3uP69jxt3kcXqAmN' \
    --userId 'tUYXR7X03QOzDz43' \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteUserRoleV3' test.out

#- 180 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZA8xT3gSGDN4hwpE' \
    --body '{"enabled": false, "reason": "ylWowEBM4zW9N8GO"}' \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateUserStatusV3' test.out

#- 181 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FFbLl9vg0Lljryxv' \
    > test.out 2>&1
eval_tap $? 181 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 182 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'reDxFEWrbBaH5BGv' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "vIoWuZjtzfZPLioM"}' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateClientSecretV3' test.out

#- 183 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'txfbfzwaIficmk1I' \
    --before '0czMyJD7pIZ2DPZt' \
    --isWildcard 'false' \
    --limit '21' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRolesV3' test.out

#- 184 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "C1ZDDy5xh7iPVcaz", "namespace": "Z8B0kRWKFUu7Dfb3", "userId": "SpqojbjhuMkT7d6m"}, {"displayName": "nPLAiVJ5nlfPY5MD", "namespace": "5DpOXh9SH4imuYXP", "userId": "clIR4eGvXHo0e8lw"}, {"displayName": "1w96dfGln9JxDuEa", "namespace": "CigSmr2beMX0NiZM", "userId": "S4undnHZmmcLVFjE"}], "members": [{"displayName": "V2GGNfrWCCZDKCdB", "namespace": "WxxEHvUMZ796GP2T", "userId": "sOssEXc3MmRA5PoK"}, {"displayName": "425TgVypBKKb757K", "namespace": "SZrMFl4NnH84gFFP", "userId": "IuLC3tAqgqZeRtiZ"}, {"displayName": "82iA0r7oVGb5Kfi1", "namespace": "yqpavEfyqy87rBfN", "userId": "TGTlWJMZ21dYpAAZ"}], "permissions": [{"action": 90, "resource": "XbxgfxG4IrlI5idE", "schedAction": 47, "schedCron": "yQvX0EJJ1ea8z5ir", "schedRange": ["VRm40jMaYY1ZFjdJ", "Stk4aGGSmGP8bBb2", "REo3LM9v5jhXMUq7"]}, {"action": 58, "resource": "NwPjAWiL4jdbeGT4", "schedAction": 7, "schedCron": "bDACYWMsxzb7C61R", "schedRange": ["b31YrygsTQGh6qGU", "40z1xtuGB5v5e0M2", "deaoVsVXbMPiyPwp"]}, {"action": 87, "resource": "RPjFrh2HIa4yer7l", "schedAction": 47, "schedCron": "iVJKy1Rwsy20hV53", "schedRange": ["CMpDhQtgzo0j26ug", "oywQrkpW4K1p3DJ8", "4MNrd9jBn7IwEUcp"]}], "roleName": "bIRKrcReszXZtRsa"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminCreateRoleV3' test.out

#- 185 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'jHRTAPP2E04WcXvZ' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleV3' test.out

#- 186 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'FkpwQMWkc4OzD6ib' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteRoleV3' test.out

#- 187 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'UaPEfm9BiQuFEtQQ' \
    --body '{"deletable": true, "isWildcard": true, "roleName": "Jffj2RpvMvJh6oYY"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateRoleV3' test.out

#- 188 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'XSyqetOP4hLAG5zF' \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleAdminStatusV3' test.out

#- 189 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'vP2r80Nfm1zLdCFR' \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateAdminRoleStatusV3' test.out

#- 190 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'rONl8UppWWPgetQk' \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleAdminV3' test.out

#- 191 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'erCcJWKGcVrhLM3e' \
    --after 'Jow0P0kkPKEuX4ar' \
    --before 'SafJbjfMn9MNLPXf' \
    --limit '28' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRoleManagersV3' test.out

#- 192 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId '7UMk0hPB2yqTj3tG' \
    --body '{"managers": [{"displayName": "dSwIxr9lUcZPRnyv", "namespace": "g9pBwZuJ1hwTq232", "userId": "9HxNG0aKF6Uv7vMm"}, {"displayName": "YzU4C5wq2XCZ2b2x", "namespace": "uMlBVYYMHAjynrfL", "userId": "At1wONOa6X7CFaES"}, {"displayName": "JUVMRP5TV7sOra8x", "namespace": "dApZ9X8BHsqFYRvO", "userId": "GUo7mdafH60NclZz"}]}' \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRoleManagersV3' test.out

#- 193 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'TTzF4SkpL513Ff2o' \
    --body '{"managers": [{"displayName": "n9BAEpm8SSNmQIbB", "namespace": "bUnzd84Fqsndki25", "userId": "jjIMoJyMN7hcVAJG"}, {"displayName": "KGxnE9okPJ1vXp2p", "namespace": "lvdHX1TM7k9Y2fuT", "userId": "rC9xbuwBVAG1xHN2"}, {"displayName": "B0hTjMz6QNezPvjq", "namespace": "3BWw2noQ9KKW2qdF", "userId": "e39bENAqnfx7x60o"}]}' \
    > test.out 2>&1
eval_tap $? 193 'AdminRemoveRoleManagersV3' test.out

#- 194 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'j6Em4D1E2jNiuUVs' \
    --after '2UYExNYbQV6JmvrP' \
    --before 'RizVrdTdDy3viPFC' \
    --limit '29' \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleMembersV3' test.out

#- 195 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId '6a6NC8XXZd5g5gex' \
    --body '{"members": [{"displayName": "Q8RcFd0u0QxAILtX", "namespace": "Wshdz8ejX5VyR0Oa", "userId": "f74r43IOABmVM1Ep"}, {"displayName": "u4CoqwMBz0dQGDYk", "namespace": "rJGE4S27KnS2s23F", "userId": "hdhZVzubPVK4Fhxy"}, {"displayName": "8eRbujZbjCVK42DN", "namespace": "ZjHpOxasFMKTl9yl", "userId": "4M9XGLNz1fmuK0y7"}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddRoleMembersV3' test.out

#- 196 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId '3XMCzqPt1wDtNPbq' \
    --body '{"members": [{"displayName": "GcdS5pFKMEPdCc7r", "namespace": "Ex08kyPVnRXQF5io", "userId": "BGK8OjVLd6iI8lFi"}, {"displayName": "oO0PdNEOqieXWSHG", "namespace": "H3OT21oX9Yos6Gk6", "userId": "jvarDwAYFWJj0eZq"}, {"displayName": "BlQyGvuLwMLLLynW", "namespace": "L3qgFVj10KM0lzCC", "userId": "NpTZIiRWpSwyivLK"}]}' \
    > test.out 2>&1
eval_tap $? 196 'AdminRemoveRoleMembersV3' test.out

#- 197 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'aGFAb2IdvIoJRzaP' \
    --body '{"permissions": [{"action": 19, "resource": "S5Zl4LGPZmzkqdhi", "schedAction": 65, "schedCron": "6MvSazqIeuJVk8Ve", "schedRange": ["nQRD2Xy4RVRM5jZJ", "sZ9TYGiRCdoQM7fN", "ASPwYZUf1sImfETI"]}, {"action": 84, "resource": "89P0MqVTTx8KM1Bv", "schedAction": 78, "schedCron": "lZurS7D4qMZummA6", "schedRange": ["K9Uvs6Tur9rzFdLW", "d1NzCGt5Hbtfyq7I", "IgvbRTDukpmtuz8X"]}, {"action": 74, "resource": "Vn9waNQBTubwYRm6", "schedAction": 89, "schedCron": "JRzYYmMa6fnNRXXg", "schedRange": ["bCtoVimeHq2Kh5jD", "j5vqu0tWv37oLhvv", "8PMbesbD0dMbMNbg"]}]}' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateRolePermissionsV3' test.out

#- 198 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'xVGImQm5ulhUsX1s' \
    --body '{"permissions": [{"action": 39, "resource": "1RDdnvAdg390Haxg", "schedAction": 3, "schedCron": "dZkM28wWaoTsvOQf", "schedRange": ["hRKayiupcAD5Jwlx", "fXrsMgiKFNpfw4g3", "IBmzwVNnP3iRysGm"]}, {"action": 36, "resource": "r4YQcJUgmUrAGjIT", "schedAction": 85, "schedCron": "X0FE5E88GULifNp7", "schedRange": ["XBGoSqwefjiKnMlU", "jgPySE5dISeKggRT", "VhjM8Tu3d6gGct9J"]}, {"action": 97, "resource": "aReuSZEy6ztEdsB5", "schedAction": 40, "schedCron": "SqeOTbrr8a0LXmO0", "schedRange": ["dMi1UcyUFVSoH2mF", "RqTRzY2J5G50ostz", "XjG2NSsmBN0JNiWY"]}]}' \
    > test.out 2>&1
eval_tap $? 198 'AdminAddRolePermissionsV3' test.out

#- 199 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'y26OJ19hfuYGXRik' \
    --body '["FDmc89OarnPlONQX", "cM7ObiNmtd2uLyIL", "WMSCilOLSJXX2KEg"]' \
    > test.out 2>&1
eval_tap $? 199 'AdminDeleteRolePermissionsV3' test.out

#- 200 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '78' \
    --resource 'IWrNwQHZHTGeyreH' \
    --roleId 'mCQw9qtIyZE0mYgQ' \
    > test.out 2>&1
eval_tap $? 200 'AdminDeleteRolePermissionV3' test.out

#- 201 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 201 'AdminGetMyUserV3' test.out

#- 202 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'ln82urlnTQD9bM4k' \
    --extendExp 'true' \
    --redirectUri 'ButU99Mu7LOEupf4' \
    --password 'kmi2dAKZJ2RUX1dl' \
    --requestId 'KHH8mIlU3kVmV8z5' \
    --userName 'XdUnLEK3UzCBNuUa' \
    > test.out 2>&1
eval_tap $? 202 'UserAuthenticationV3' test.out

#- 203 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'FKDIoEzdARaaXiLm' \
    --linkingToken 'TLMqqnGf5L1e9zkD' \
    --password 'cPfiby9l86Sfu8iF' \
    --username 'FiTKOlAsrVcSJBFg' \
    > test.out 2>&1
eval_tap $? 203 'AuthenticationWithPlatformLinkV3' test.out

#- 204 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'false' \
    --linkingToken 'SMAcYJqJO41nu3dE' \
    > test.out 2>&1
eval_tap $? 204 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 205 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'WZv0GXlhNyyTPlho' \
    > test.out 2>&1
eval_tap $? 205 'RequestOneTimeLinkingCodeV3' test.out

#- 206 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'LEAtNTwahzKwlO60' \
    > test.out 2>&1
eval_tap $? 206 'ValidateOneTimeLinkingCodeV3' test.out

#- 207 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --isTransient 'true' \
    --clientId 'GVeXTB11hL5EDDjk' \
    --oneTimeLinkCode 'dlzX6uYUAREgLjgb' \
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
    --clientId 'qvRB2LVjNb0oW9Rl' \
    > test.out 2>&1
eval_tap $? 210 'RequestGameTokenCodeResponseV3' test.out

#- 211 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'T5mQKwik0A7Y5P6c' \
    --userId 'zZOqYF3YkKuQFXG3' \
    > test.out 2>&1
eval_tap $? 211 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 212 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FRG5Zqxpt3udUMRG' \
    > test.out 2>&1
eval_tap $? 212 'RevokeUserV3' test.out

#- 213 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'WCdxJfd9HNmPHLQN' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'JotmGDlDQPQreXTD' \
    --redirectUri '4UrDPWnobtjOcE4i' \
    --scope 'pdMrkCEzzhDtcC6J' \
    --state 'wUneEC58VWSGyPrx' \
    --targetAuthPage 'Vsh3cftYlzMOWKj2' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'USeZByd9bRzxXIbf' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 213 'AuthorizeV3' test.out

#- 214 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'F3NcFHSA8dLjfSQD' \
    > test.out 2>&1
eval_tap $? 214 'TokenIntrospectionV3' test.out

#- 215 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 215 'GetJWKSV3' test.out

#- 216 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'U2AxGotYNozq53xj' \
    --factor 'rskx6pr30ZCYmKEh' \
    --mfaToken 'Nt0Nh6ewMpp6vqF6' \
    > test.out 2>&1
eval_tap $? 216 'SendMFAAuthenticationCode' test.out

#- 217 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'PJzG0j7Csx47RDE4' \
    --mfaToken 'ygUSzFbynEkFJwGF' \
    > test.out 2>&1
eval_tap $? 217 'Change2faMethod' test.out

#- 218 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'zPENUfLGrNVl3BBc' \
    --factor 'fSFVJgLCub8U3cnz' \
    --mfaToken '9eqcLumpRNJZBvQV' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 218 'Verify2faCode' test.out

#- 219 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'EgVTaRlcAoGS3PgB' \
    --userId 'LicNoNkMWlOOuO8e' \
    > test.out 2>&1
eval_tap $? 219 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId '2XaG54Tz3SQywGu5' \
    --clientId 'jVuJ5ZHTRQiLlEYI' \
    --redirectUri 'UL8HwHypqeVoHy1F' \
    --requestId 'KXkVQo9zKssQRNoV' \
    > test.out 2>&1
eval_tap $? 220 'AuthCodeRequestV3' test.out

#- 221 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'OGKNZonNzYtNqTmS' \
    --clientId 'Y6HwmWswjf1oQ0Nw' \
    --createHeadless 'true' \
    --deviceId 'JIDiqGSyUfijnufO' \
    --macAddress 'Xm6ooTlXRoz2yQzR' \
    --platformToken 'OUzjBogRmgomhvDn' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 221 'PlatformTokenGrantV3' test.out

#- 222 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 222 'GetRevocationListV3' test.out

#- 223 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token '609626GKWlRE1BGw' \
    > test.out 2>&1
eval_tap $? 223 'TokenRevocationV3' test.out

#- 224 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --clientId 'Kvov8Z52R4YOZjnZ' \
    --code 'alanOeWjWzKHCua5' \
    --codeVerifier 'YVY7SBCsg9GuasNW' \
    --extendExp 'true' \
    --password 'i8VKRB11Dotv69I2' \
    --redirectUri '5lv3ZWVwQpdgLUm1' \
    --refreshToken 't1ZgGlrmYr8pht5x' \
    --username 'RuK4DjnzJaHDu9Fu' \
    --grantType 'refresh_token' \
    > test.out 2>&1
eval_tap $? 224 'TokenGrantV3' test.out

#- 225 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'KTgO0ATVG5ce6bx8' \
    > test.out 2>&1
eval_tap $? 225 'VerifyTokenV3' test.out

#- 226 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'XE8aS9pW2uB4zEaF' \
    --code 'hUo4Wc2V1CY5Q2Ki' \
    --error 'SNCMJHB3haWEFxFW' \
    --openidAssocHandle 'dhEOmggwMAUvoKnO' \
    --openidClaimedId 'P2VXpVtZcuFXTWBm' \
    --openidIdentity 'ahKgdDhQs7EN0V7y' \
    --openidMode 'J0BI3YenUzIEIQhg' \
    --openidNs 'NXBWqjB21yX8MjTx' \
    --openidOpEndpoint 'BylH7RphvElvjtp4' \
    --openidResponseNonce 'nwkCwGjDYVWJqvZ2' \
    --openidReturnTo 'kCU1PsvgV3YGdVk3' \
    --openidSig 'Ve5JaeloV4CvECPe' \
    --openidSigned '6JHMfW9FBJ5wlFmn' \
    --state 'jtFJWhsaDH1sASvx' \
    > test.out 2>&1
eval_tap $? 226 'PlatformAuthenticationV3' test.out

#- 227 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode 'TdYZHgvbO1XXe426' \
    > test.out 2>&1
eval_tap $? 227 'PublicGetInputValidations' test.out

#- 228 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'thW4bechQ962y5kE' \
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
    --clientId 'rBTzM3L8pfwrrRsr' \
    > test.out 2>&1
eval_tap $? 230 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 231 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZWTL3S3aVa7p37BM' \
    --rawPUID 'true' \
    --body '{"platformUserIds": ["nLB9xEGLkR93ZkDE", "2PtK4ejezjOH28rm", "Toi741GPVRnd6BFD"]}' \
    > test.out 2>&1
eval_tap $? 231 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 232 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '3jNdQOT8ED4veQeu' \
    --platformUserId 'NNORVFE24ehnPZTT' \
    > test.out 2>&1
eval_tap $? 232 'PublicGetUserByPlatformUserIDV3' test.out

#- 233 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId '0ifsgTPTJd4Aom4y' \
    > test.out 2>&1
eval_tap $? 233 'PublicGetAsyncStatus' test.out

#- 234 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'QyXXnO2tZXXV2Lvd' \
    --limit '83' \
    --offset '22' \
    --query 'A1mD76UAnrafFpW8' \
    > test.out 2>&1
eval_tap $? 234 'PublicSearchUserV3' test.out

#- 235 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "WvspJr2qs9StSVFX", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "HKQVU5a69SIAKHB6", "policyId": "jAs9Q3om8mHpYvYb", "policyVersionId": "Xyj03uKoLo9WR82o"}, {"isAccepted": true, "localizedPolicyVersionId": "AXJzslSW3Ub8hump", "policyId": "fPHtsX3Qorf4Lz8X", "policyVersionId": "yMIDz8nsmkfdRNnc"}, {"isAccepted": true, "localizedPolicyVersionId": "fXwdK4NqEKdsIXa0", "policyId": "awlS4qCdKSlNP9JG", "policyVersionId": "6IkG2bkO8q2XZjhU"}], "authType": "fqFE836HxHb8poNH", "code": "1du73M7X97gx6mO9", "country": "pADwj9p4vac446RG", "dateOfBirth": "9rEeiBU1E1Ht34VX", "displayName": "bpN4SzLJGm0k8uqI", "emailAddress": "AYnfC8y1HiRZqARf", "password": "JsXByl33ysv5DAGm", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 235 'PublicCreateUserV3' test.out

#- 236 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'j4syUp4qqo8ENJvO' \
    --query 'jDRZXgzkhz7HaSLZ' \
    > test.out 2>&1
eval_tap $? 236 'CheckUserAvailability' test.out

#- 237 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["ygjihaBXElM8amc1", "MGZsS5PS5TpVoWLt", "tdOpgd7TbzJe4P99"]}' \
    > test.out 2>&1
eval_tap $? 237 'PublicBulkGetUsers' test.out

#- 238 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "h0haiXEAio2jyfxL", "languageTag": "n2KMLIMIfiwHqHJF"}' \
    > test.out 2>&1
eval_tap $? 238 'PublicSendRegistrationCode' test.out

#- 239 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "IogNGFsc4MlzwHzJ", "emailAddress": "I6RXcvyfCb4JWU9A"}' \
    > test.out 2>&1
eval_tap $? 239 'PublicVerifyRegistrationCode' test.out

#- 240 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "P2dzHQPXmUsLawQw", "languageTag": "UXN8BmtKRtE0rJnr"}' \
    > test.out 2>&1
eval_tap $? 240 'PublicForgotPasswordV3' test.out

#- 241 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'UdLPsytehP1Xu3jz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 241 'GetAdminInvitationV3' test.out

#- 242 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'eCueH2LfPgQXON4Y' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "cS28chVutskvbwoU", "policyId": "H8pJt3o6C0RiKJxd", "policyVersionId": "4Aa067id1XlVn9HV"}, {"isAccepted": true, "localizedPolicyVersionId": "caO4FoXxsAOluAKr", "policyId": "AoZJBbbtOn2gVwKm", "policyVersionId": "zR26VtePGeQ5Q5ZE"}, {"isAccepted": false, "localizedPolicyVersionId": "ScMTriARpssGi30Q", "policyId": "0tBZnJFjVTIrrwqS", "policyVersionId": "3K8ZCqf7gOJpXNfG"}], "authType": "EMAILPASSWD", "country": "7S1wv1vcxMHO2NXs", "dateOfBirth": "Wsgh23bRthqfRKaj", "displayName": "aFnyWXH9aDYFhZQH", "password": "tHuFohWC02Cis7gN", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 242 'CreateUserFromInvitationV3' test.out

#- 243 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "FCBsvtxajPAoS4sG", "country": "rqNtv8SzI3gIo8m3", "dateOfBirth": "qrZfqh8UcmOXt1eV", "displayName": "9zOvXHqL9EXS3YUR", "languageTag": "HjiuivhYyLrRaFRi", "userName": "pTqpti4y0NNRbzQd"}' \
    > test.out 2>&1
eval_tap $? 243 'UpdateUserV3' test.out

#- 244 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "F0TZvHmaJcHeoN2I", "country": "vnv5QAAVqIIGvTla", "dateOfBirth": "zPIfKVl6rQ4cgRWS", "displayName": "UIgw4hPOxleirYVs", "languageTag": "XU4I9w9Ohk8Hxf0G", "userName": "3VloGumGz1BMsZvA"}' \
    > test.out 2>&1
eval_tap $? 244 'PublicPartialUpdateUserV3' test.out

#- 245 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "lJUZ4zjlS4yvp3sT", "emailAddress": "cgRfLyJpNR2VYVvv", "languageTag": "UyVFtngvesTliqpl"}' \
    > test.out 2>&1
eval_tap $? 245 'PublicSendVerificationCodeV3' test.out

#- 246 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "u6253mUnVN5zgnHs", "contactType": "w9t6ull92IQGE0P0", "languageTag": "WR8kwNI5mYPC2QU2", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 246 'PublicUserVerificationV3' test.out

#- 247 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Z2Mz246YpcwKGn9H", "country": "4ApsDOWMznDpCC24", "dateOfBirth": "9aYY5v4NEfooHRZq", "displayName": "WK98wgFBgjp3sAaR", "emailAddress": "F9k8RP6yF2wYjRB0", "password": "3YpUQmhTdrZGytXt", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 247 'PublicUpgradeHeadlessAccountV3' test.out

#- 248 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "Evo1JbLHw26tIiDY", "password": "Lc1nQsrqjh54jMAi"}' \
    > test.out 2>&1
eval_tap $? 248 'PublicVerifyHeadlessAccountV3' test.out

#- 249 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "sbKi1oAawaid0Yt3", "newPassword": "0Yl4tV4mthKiTQHX", "oldPassword": "NaJGkMO2OUaSUE3I"}' \
    > test.out 2>&1
eval_tap $? 249 'PublicUpdatePasswordV3' test.out

#- 250 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'Pbuv6nIePZcptY2G' \
    > test.out 2>&1
eval_tap $? 250 'PublicCreateJusticeUser' test.out

#- 251 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Yz2ZD9n0vqM1Of6I' \
    --redirectUri 'UR0RzDKl9cPxj8fq' \
    --ticket 'PMugIa4VXh2n9alD' \
    > test.out 2>&1
eval_tap $? 251 'PublicPlatformLinkV3' test.out

#- 252 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Km2LuYxzlGmzHawh' \
    --body '{"platformNamespace": "TyBRq8d3wDmmXw8v"}' \
    > test.out 2>&1
eval_tap $? 252 'PublicPlatformUnlinkV3' test.out

#- 253 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'gY4bnQctts9e8BVq' \
    > test.out 2>&1
eval_tap $? 253 'PublicPlatformUnlinkAllV3' test.out

#- 254 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'OWEzqqcHRwQSMadr' \
    --ticket 'ifm4NRNsT6pVTne1' \
    > test.out 2>&1
eval_tap $? 254 'PublicForcePlatformLinkV3' test.out

#- 255 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId '9vz0DFfTn1NjCEcU' \
    --clientId 'CPthrAo2mahGKgU2' \
    --redirectUri 'IHScg81IrmbYCdBQ' \
    > test.out 2>&1
eval_tap $? 255 'PublicWebLinkPlatform' test.out

#- 256 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId '9Nrr4nKUhtoO91LX' \
    --state 'zoxLPEJOlFtuUoVZ' \
    > test.out 2>&1
eval_tap $? 256 'PublicWebLinkPlatformEstablish' test.out

#- 257 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "mbCeIQ0ZhBqkdPBq", "emailAddress": "7yzCRTatZEpS6XPO", "newPassword": "RHywdh9SneAfJsYR"}' \
    > test.out 2>&1
eval_tap $? 257 'ResetPasswordV3' test.out

#- 258 PublicGetUserByUserIdV3
eval_tap 0 258 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 259 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'M6GQArLM79aUY642' \
    --activeOnly 'true' \
    --after 'RN9TH6U1oy0fBQm7' \
    --before 'UQy4dUlpF3gWYgxz' \
    --limit '64' \
    > test.out 2>&1
eval_tap $? 259 'PublicGetUserBanHistoryV3' test.out

#- 260 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'R8UQ49Mu9W9VgsOP' \
    > test.out 2>&1
eval_tap $? 260 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 261 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'OqKQaL8sECn6mC3O' \
    > test.out 2>&1
eval_tap $? 261 'PublicGetUserInformationV3' test.out

#- 262 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'cebWgNQHW4sN0ZuV' \
    --after '0.8521590176004205' \
    --before '0.3271427201857786' \
    --limit '16' \
    > test.out 2>&1
eval_tap $? 262 'PublicGetUserLoginHistoriesV3' test.out

#- 263 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'HijQbt6k4UUZscIp' \
    --after 'NHqNrjYFI1GUSFIG' \
    --before 'IvMNNPGGrRTkfhGZ' \
    --limit '96' \
    > test.out 2>&1
eval_tap $? 263 'PublicGetUserPlatformAccountsV3' test.out

#- 264 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EeqpBi4n4QZFXrT1' \
    > test.out 2>&1
eval_tap $? 264 'PublicListJusticePlatformAccountsV3' test.out

#- 265 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'tao4dxDXAdxXp6mO' \
    --body '{"platformId": "4houcMicxPIfgPSa", "platformUserId": "m4swMN8PkU1yTz8Q"}' \
    > test.out 2>&1
eval_tap $? 265 'PublicLinkPlatformAccount' test.out

#- 266 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'QZLcxpfCYtAvVHz2' \
    --body '{"chosenNamespaces": ["IpWF6kallvpeUhRF", "VBWzqDDFvtKmJAkj", "2VqUW7sRwJxMJYWR"], "requestId": "1aa6Z9pdUvUjbDuf"}' \
    > test.out 2>&1
eval_tap $? 266 'PublicForceLinkPlatformWithProgression' test.out

#- 267 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lDxYXz4pb2PCmkBk' \
    > test.out 2>&1
eval_tap $? 267 'PublicGetPublisherUserV3' test.out

#- 268 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'teyObwM7sJlC17y4' \
    --password 'Y7s77WujM2ONwRHQ' \
    > test.out 2>&1
eval_tap $? 268 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 269 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after '1LglVMpzXPmShWik' \
    --before 'VKBb6FcUBVxzJF9k' \
    --isWildcard 'false' \
    --limit '6' \
    > test.out 2>&1
eval_tap $? 269 'PublicGetRolesV3' test.out

#- 270 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId '7EWUq8ShVbcFb817' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetRoleV3' test.out

#- 271 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 271 'PublicGetMyUserV3' test.out

#- 272 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode '40a0PtTSmBVguaW1' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 273 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["4oNYKh4oUu6O1ybB", "vdAWK5oXgx5p1LwL", "1PIsj6lW51YMmH28"], "oneTimeLinkCode": "SSOmBXqdoH26H9Ae"}' \
    > test.out 2>&1
eval_tap $? 273 'LinkHeadlessAccountToMyAccountV3' test.out

#- 274 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "k0CQOqjVYFXiwEkg"}' \
    > test.out 2>&1
eval_tap $? 274 'PublicSendVerificationLinkV3' test.out

#- 275 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'KZXREle2583dvv90' \
    > test.out 2>&1
eval_tap $? 275 'PublicVerifyUserByLinkV3' test.out

#- 276 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'PSO1lrKZykbCgR8V' \
    --code '4PCWzeNTn89KJMG3' \
    --error 'ByoU6ftDO1RdSRZv' \
    --state 'OYY4sHw1CLLuQ9Jr' \
    > test.out 2>&1
eval_tap $? 276 'PlatformAuthenticateSAMLV3Handler' test.out

#- 277 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'SF7z51THIIx3Dg7k' \
    --payload 'HvNn3TSLQfBg06jH' \
    > test.out 2>&1
eval_tap $? 277 'LoginSSOClient' test.out

#- 278 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId '7CO0t7Jo79uhT94G' \
    > test.out 2>&1
eval_tap $? 278 'LogoutSSOClient' test.out

#- 279 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --code 'S7pt2yJYgUG5NK3C' \
    > test.out 2>&1
eval_tap $? 279 'RequestGameTokenResponseV3' test.out

#- 280 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'kyjyobjjUQl7wIz7' \
    > test.out 2>&1
eval_tap $? 280 'AdminGetDevicesByUserV4' test.out

#- 281 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType '1GopTa6tJ8P83cWw' \
    --endDate '7qWMcdgTT9lNHBw3' \
    --limit '36' \
    --offset '28' \
    --startDate 'MWAA4w2o9YD0HvtK' \
    > test.out 2>&1
eval_tap $? 281 'AdminGetBannedDevicesV4' test.out

#- 282 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'c8ZQZ7LuwLrknlz0' \
    > test.out 2>&1
eval_tap $? 282 'AdminGetUserDeviceBansV4' test.out

#- 283 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "CoQqbsI4afEa0lVj", "deviceId": "cMpoH1ONsTFYgmE3", "deviceType": "6RIAq7gMNUGmGF6X", "enabled": false, "endDate": "QUk2I0wW4ZpcDA4g", "ext": {"j7Odb08J4bjOhjzx": {}, "eATNVGTnVUSr6IF4": {}, "IYJ2cHS7ezKEKTMa": {}}, "reason": "6uYPgoKseUkPtAVI"}' \
    > test.out 2>&1
eval_tap $? 283 'AdminBanDeviceV4' test.out

#- 284 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'br4PLANBKKBKDQGC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 284 'AdminGetDeviceBanV4' test.out

#- 285 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'jL7DnHfkRsOx2ltb' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 285 'AdminUpdateDeviceBanV4' test.out

#- 286 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'g976hNhXSyHISQ6Y' \
    --startDate 'ky9nO7ZYfLfJlFtS' \
    --deviceType 'FSgfAwu5KgtYSK4X' \
    > test.out 2>&1
eval_tap $? 286 'AdminGenerateReportV4' test.out

#- 287 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 287 'AdminGetDeviceTypesV4' test.out

#- 288 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'eATYfSCrx8A7TfVb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 288 'AdminGetDeviceBansV4' test.out

#- 289 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'vHww5DFCcWUDPZM5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 289 'AdminDecryptDeviceV4' test.out

#- 290 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'UqIAzHEaG0cyu223' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'AdminUnbanDeviceV4' test.out

#- 291 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId '3lk0KWoyvalJXAz1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 291 'AdminGetUsersByDeviceV4' test.out

#- 292 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 22}' \
    > test.out 2>&1
eval_tap $? 292 'AdminCreateTestUsersV4' test.out

#- 293 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["S0T2ywqxsat90y66", "CanZtHf6JTlq9H4S", "gj5KAUb0hfuJcYaA"]}' \
    > test.out 2>&1
eval_tap $? 293 'AdminBulkCheckValidUserIDV4' test.out

#- 294 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'hqHMnWDKbKJsxCh4' \
    --body '{"avatarUrl": "4mOZVQxDVn1gNuQg", "country": "ZsOjwoGRQHZi1QVu", "dateOfBirth": "UP6uoKGZUEHphE0x", "displayName": "ewUmToE2lZMGmrPR", "languageTag": "kXt51v802228gvbi", "userName": "DV1FPMp8xZ0VnEJh"}' \
    > test.out 2>&1
eval_tap $? 294 'AdminUpdateUserV4' test.out

#- 295 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'hMTEzypjaHDh5FrB' \
    --body '{"code": "8rXD392rScALpYoj", "emailAddress": "rEqi3mg44xA2PwCe"}' \
    > test.out 2>&1
eval_tap $? 295 'AdminUpdateUserEmailAddressV4' test.out

#- 296 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Vxu6eh8HRILIUygJ' \
    > test.out 2>&1
eval_tap $? 296 'AdminDisableUserMFAV4' test.out

#- 297 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'thC5fIO0hPN1Nt9i' \
    > test.out 2>&1
eval_tap $? 297 'AdminListUserRolesV4' test.out

#- 298 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'tzGLykGw4ZSwbhyg' \
    --body '{"assignedNamespaces": ["CpYe8fs1OcmWnq3c", "giSgGwhjtRJj9HIC", "6ZMePcp3TUA6JW3y"], "roleId": "TB8OL5kZH4rsv6gf"}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateUserRoleV4' test.out

#- 299 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'q8pdJphqGlNhgfag' \
    --body '{"assignedNamespaces": ["3FzCDLAaVBiyXIlF", "eNi45OhzqgojLNtf", "qoSrSzV5wjJ1oF6k"], "roleId": "FHGPkkpd6jhXK69r"}' \
    > test.out 2>&1
eval_tap $? 299 'AdminAddUserRoleV4' test.out

#- 300 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'GRbalHSegkjTGxes' \
    --body '{"assignedNamespaces": ["zQ9HsRQ6DPbbnTqf", "9oVmb2ZE9Cbq77fe", "sXACa6VEy20iqSD0"], "roleId": "GVtIpb5CFRatnZEA"}' \
    > test.out 2>&1
eval_tap $? 300 'AdminRemoveUserRoleV4' test.out

#- 301 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'false' \
    --limit '11' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 301 'AdminGetRolesV4' test.out

#- 302 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "OWY0QfeqZXIhLuhr"}' \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateRoleV4' test.out

#- 303 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId '2mJAVIrIblOe9PeK' \
    > test.out 2>&1
eval_tap $? 303 'AdminGetRoleV4' test.out

#- 304 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'BdPDOWhGUV0x3Ozz' \
    > test.out 2>&1
eval_tap $? 304 'AdminDeleteRoleV4' test.out

#- 305 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId '5Qriu3ArE3uCxdVn' \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "ZLZdVi0fFy19h36q"}' \
    > test.out 2>&1
eval_tap $? 305 'AdminUpdateRoleV4' test.out

#- 306 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId '9UGrGJKs8TL1wo2Z' \
    --body '{"permissions": [{"action": 15, "resource": "MIABiXJ6qn8rQ0qO", "schedAction": 93, "schedCron": "wOGy1Y3jloJ8nGES", "schedRange": ["N5wE9e8FMTHC7uF8", "46j3wz8yZu4UbLeC", "fAG5xAr6CGUCizNH"]}, {"action": 31, "resource": "8KIZaJUaVt5qsp38", "schedAction": 16, "schedCron": "JyxV7J98ept9kpQw", "schedRange": ["qWuQy1LPLsUPVO2y", "XFFwxZ6z7Ks7OqKs", "lUQvvKFCV0WT6AI6"]}, {"action": 99, "resource": "kUemHSs8Dm8ZMAcX", "schedAction": 97, "schedCron": "H4I3l8T3Iqr9vBzN", "schedRange": ["jnOZZkikRUlJ6BAj", "jB2e3bvCJYDtihno", "grDYoPpvJHSNh8r1"]}]}' \
    > test.out 2>&1
eval_tap $? 306 'AdminUpdateRolePermissionsV4' test.out

#- 307 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'hZWzge9PmdBrRdPc' \
    --body '{"permissions": [{"action": 66, "resource": "sVyHQsOO8zI9T7hS", "schedAction": 84, "schedCron": "CBtcNMPAnCED90aY", "schedRange": ["VahYaVtTQp34NlNw", "dj6VB7wfXO9V1sh8", "bijZWPNZjojFt88Y"]}, {"action": 92, "resource": "ulQHvDpl5HP6mi95", "schedAction": 96, "schedCron": "uxWDzKiWicwnMluZ", "schedRange": ["3Aqamogx00Gd5Rr3", "ihpTw8jItOyUGBPf", "9pk8xxnjoIQofiku"]}, {"action": 20, "resource": "3k4a5QOO19dFTrZs", "schedAction": 44, "schedCron": "G5SQWQjr5L0NihXH", "schedRange": ["VYo20MdeqVSrO6N8", "J8go1UoO5DI9LowX", "x36PQhzUGL6PPaMV"]}]}' \
    > test.out 2>&1
eval_tap $? 307 'AdminAddRolePermissionsV4' test.out

#- 308 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'gMbzJlHNu7hDo4xs' \
    --body '["CRay0ueOIs2JP9Fj", "rUcrTXaqsVMyjVw8", "YvfyDFZyslhjfLR8"]' \
    > test.out 2>&1
eval_tap $? 308 'AdminDeleteRolePermissionsV4' test.out

#- 309 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'Yc0rbzUiNRIVZXu4' \
    --after 'sIH4zxhNCbKwGSvZ' \
    --before 'StTNr84LujzMFp7l' \
    --limit '86' \
    > test.out 2>&1
eval_tap $? 309 'AdminListAssignedUsersV4' test.out

#- 310 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'Y8u2vxAPX1SvMMUj' \
    --body '{"assignedNamespaces": ["uEtGG4xjoM90Fr8W", "Wq0TOaZ1xmDtUMNo", "Z6YbwNqaJeNDseF5"], "namespace": "9gYkIzQXhyg6AKsE", "userId": "mJtU5RYjW8J5mv4W"}' \
    > test.out 2>&1
eval_tap $? 310 'AdminAssignUserToRoleV4' test.out

#- 311 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'y229RclObS2BA2s0' \
    --body '{"namespace": "7BUJEfL9fqcUyMHa", "userId": "PH6uzMhODzhEl9XY"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminRevokeUserFromRoleV4' test.out

#- 312 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["QKrLSJ2lndQowrLU", "sgnM4akprm74ew5S", "qQt7ntSFZOaftrDO"], "emailAddresses": ["hZ2RjhA6sJucbVzf", "cG9EpFcKuJeaMSfs", "nZEd7M6ZNO7OvYUV"], "isAdmin": false, "namespace": "3IcZwVfjZbtyfSfy", "roleId": "IVznAcTgmzGnt0XU"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminInviteUserNewV4' test.out

#- 313 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "3MRU6Mb27WW32Hrz", "country": "cvfS2CPY1VOs0HNr", "dateOfBirth": "VJffrr0C2bbAibT0", "displayName": "HgeVZ7bc9kZmDPGP", "languageTag": "NDYNqYTcPquz8kmP", "userName": "SMgcrdJkSdqPmTwZ"}' \
    > test.out 2>&1
eval_tap $? 313 'AdminUpdateMyUserV4' test.out

#- 314 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 314 'AdminDisableMyAuthenticatorV4' test.out

#- 315 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'BxcwMVvRBByJOMyb' \
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
    --code 'c5dvFVmWI17OLQ6y' \
    > test.out 2>&1
eval_tap $? 324 'AdminEnableMyEmailV4' test.out

#- 325 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 325 'AdminGetMyEnabledFactorsV4' test.out

#- 326 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor '9XsJKVGSj729TOO3' \
    > test.out 2>&1
eval_tap $? 326 'AdminMakeFactorMyDefaultV4' test.out

#- 327 AdminInviteUserV4
eval_tap 0 327 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 328 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "nvuIQ0yM62azpUmg", "policyId": "GUixaTj7sl4gUSMv", "policyVersionId": "P7OFcRoSRtgDehLh"}, {"isAccepted": false, "localizedPolicyVersionId": "xuoAq6lUZEUuwTmD", "policyId": "s2lZkH5IbSk8z76u", "policyVersionId": "lAH3P6c78zgmx6Yk"}, {"isAccepted": true, "localizedPolicyVersionId": "6yexbb7l11hLvM2j", "policyId": "n4NcVSx6UvQ5CISz", "policyVersionId": "HE8OVBt6a3NNQAki"}], "authType": "EMAILPASSWD", "country": "8PBtCxlWtfPJhfz8", "dateOfBirth": "Ys7SxovByStHHUMZ", "displayName": "iepn7Gbtjt3PdX2X", "emailAddress": "Bbnp8OvtGpMphOFc", "password": "Rq7FLo7JJRl7Rjj5", "passwordMD5Sum": "RtYqEdI1AgMVQ5Ae", "username": "S6jQvcAvhYKAqOqO", "verified": true}' \
    > test.out 2>&1
eval_tap $? 328 'PublicCreateTestUserV4' test.out

#- 329 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "V2qSbbhitsCG1wgC", "policyId": "Rcd3osqvC1JtM9pj", "policyVersionId": "RxOwdWPgHSHQEPOr"}, {"isAccepted": false, "localizedPolicyVersionId": "7LKkqpeKvfLtxPeQ", "policyId": "WvQV8gVKV2nTc229", "policyVersionId": "psk14wbmM05I4SyK"}, {"isAccepted": true, "localizedPolicyVersionId": "W2jMuXjETVDmZqz5", "policyId": "6Lg84Q7cPoDfggyW", "policyVersionId": "R6ByzLHkrdGtwsqK"}], "authType": "EMAILPASSWD", "code": "54Ey6xWmdkOx9itG", "country": "yuLOQ1GG70I5wTQy", "dateOfBirth": "5CVd2rAwm6QZaXb0", "displayName": "cUkrP23qLEQyAjI8", "emailAddress": "YbOiqmwTDyQL6rI4", "password": "sdrBbOUY8gFqrDHI", "passwordMD5Sum": "LWIYkBQxzr94DZ5K", "reachMinimumAge": true, "username": "FMiFoCo4NJff4PKP"}' \
    > test.out 2>&1
eval_tap $? 329 'PublicCreateUserV4' test.out

#- 330 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'eGdOo7uU3un322Xe' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Mvi2SZIx7FNuOq0I", "policyId": "JF4iQC3D59WkTzSr", "policyVersionId": "wYAPvVfREng07Ocq"}, {"isAccepted": false, "localizedPolicyVersionId": "hTYi3KACDdqqntLx", "policyId": "eN3vzwfYW093VDtj", "policyVersionId": "DX4TgszM1YK94KCf"}, {"isAccepted": false, "localizedPolicyVersionId": "pYvneQ9nj3xIDrUW", "policyId": "YFgbXmPhCMrMLouK", "policyVersionId": "NnZPLukYQdAIecXc"}], "authType": "EMAILPASSWD", "country": "SLJ8ghHmjQRPwAFi", "dateOfBirth": "CM4d8OhDbTouhlHP", "displayName": "swbWbYHo46tGFhST", "password": "7iYaNhyAfGmrRGAJ", "reachMinimumAge": false, "username": "pVIIYbVHSP4gQsSE"}' \
    > test.out 2>&1
eval_tap $? 330 'CreateUserFromInvitationV4' test.out

#- 331 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "byD4DDMzYI69MCVZ", "country": "1HaudUC5dLoSN9RD", "dateOfBirth": "itVi4ROP2J0mM9kX", "displayName": "kYTY8EWkJDBowFFW", "languageTag": "rgaZpvfixnOQiYOz", "userName": "VIjTKkBQjRDNej7K"}' \
    > test.out 2>&1
eval_tap $? 331 'PublicUpdateUserV4' test.out

#- 332 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "whzhDide7UBNbFgg", "emailAddress": "xL0gOJbQ66bzXWNu"}' \
    > test.out 2>&1
eval_tap $? 332 'PublicUpdateUserEmailAddressV4' test.out

#- 333 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "I2GtKYVLOuZZp4l5", "country": "6yfAEwVR8hmPc3DZ", "dateOfBirth": "vnnMiWv7lkUjESMQ", "displayName": "Gwf4cOu8ScqpMu0Y", "emailAddress": "iNnCo2xxB7kefryE", "password": "jBckQTHG5pqm2lCj", "reachMinimumAge": true, "username": "nKydYWebXsB1JThi", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 333 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 334 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "l6TIWDp0V53NtKgY", "password": "JbiAtfJHiukO3dxq", "username": "gKM4AmrtT7xxkI6r"}' \
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
    --code 's9lZZuGbAfD4M05J' \
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
    --code 'O51Ia2PXEMusA4C7' \
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
    --factor 'ZvxuGD0R2VN0e7bY' \
    > test.out 2>&1
eval_tap $? 348 'PublicMakeFactorMyDefaultV4' test.out

#- 349 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"emailAddress": "OBdruyKLHpckTeWb", "namespace": "OUQkO1XZBZs3EdAW", "namespaceDisplayName": "YKulnRIPabU0L4No"}' \
    > test.out 2>&1
eval_tap $? 349 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE