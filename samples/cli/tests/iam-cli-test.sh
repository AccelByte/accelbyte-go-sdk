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
echo "1..394"

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

#- 108 AdminListClientAvailablePermissions
samples/cli/sample-apps Iam adminListClientAvailablePermissions \
    --excludePermissions 'false' \
    > test.out 2>&1
eval_tap $? 108 'AdminListClientAvailablePermissions' test.out

#- 109 AdminUpdateAvailablePermissionsByModule
samples/cli/sample-apps Iam adminUpdateAvailablePermissionsByModule \
    --forceDelete 'true' \
    --body '{"modules": [{"docLink": "369o9adLs2VE4c7y", "groups": [{"group": "I2phk1gLubUbrhIN", "groupId": "rK3dg2Ts5sOy8kIS", "permissions": [{"allowedActions": [38, 54, 86], "resource": "HtyoNYlzUtdOsYWr"}, {"allowedActions": [87, 85, 33], "resource": "heZA993WhxYUQSQ1"}, {"allowedActions": [54, 27, 28], "resource": "yDR2cuf3c8lwtGPs"}]}, {"group": "2t9OgN9WoCe6tCvD", "groupId": "EBCT2cnKi5bHWiGw", "permissions": [{"allowedActions": [5, 65, 5], "resource": "TTwT3ku7MogSnvcS"}, {"allowedActions": [35, 36, 50], "resource": "OA9Lk2tjXE8Fbp80"}, {"allowedActions": [53, 74, 11], "resource": "SdwRl3ORZC7SPk6L"}]}, {"group": "PhlrLbIUsFWik2px", "groupId": "EjRLn7iUipPNax1w", "permissions": [{"allowedActions": [33, 29, 98], "resource": "kXtAIvPXXw7c9iES"}, {"allowedActions": [1, 34, 58], "resource": "PDcOPGHQvnbFbsyY"}, {"allowedActions": [83, 92, 54], "resource": "V0qpLaBfVPgPOzGb"}]}], "module": "4rxBsmsBwakRDob4", "moduleId": "PVBCggENxYaxmtbd"}, {"docLink": "Oa2wnGl6xa73PWdp", "groups": [{"group": "4BD6C9OE68fdWdHA", "groupId": "Xlsv8M4lp73R2Ac1", "permissions": [{"allowedActions": [60, 16, 34], "resource": "HrykiCkQxAMqNcyh"}, {"allowedActions": [91, 61, 2], "resource": "wUtV8j1DAwkwTP7O"}, {"allowedActions": [80, 21, 90], "resource": "ba22akbNx6YUIxA0"}]}, {"group": "0beSEW3seGNlwqob", "groupId": "MOiHhq4wfK0hytOk", "permissions": [{"allowedActions": [94, 69, 77], "resource": "MWyHZZrYZAIOegmh"}, {"allowedActions": [91, 1, 88], "resource": "uhp7hJpEPzBlaFHT"}, {"allowedActions": [18, 93, 78], "resource": "3JJFXsSDyhXqLAOk"}]}, {"group": "yKy8r02Hailfya63", "groupId": "zDp5QP8hgO9PuZ7t", "permissions": [{"allowedActions": [65, 76, 11], "resource": "lUENnCSZivP2UHN4"}, {"allowedActions": [24, 67, 72], "resource": "vIsdMsvOqLoiBBKY"}, {"allowedActions": [63, 45, 47], "resource": "InybtERneIZfPJak"}]}], "module": "KepBXy8RaW9SbgnC", "moduleId": "mvDuIxxLHoLb2bzx"}, {"docLink": "AGTpyuOwwzLhy3en", "groups": [{"group": "GHUuz2Ev6vHSxDwG", "groupId": "AYAWaqZyIBTla6cl", "permissions": [{"allowedActions": [60, 60, 100], "resource": "blFUxqH2SozH5TRO"}, {"allowedActions": [26, 41, 22], "resource": "tQldl48OwIW6s1Lm"}, {"allowedActions": [75, 5, 49], "resource": "XsLXLeIiBRckgwic"}]}, {"group": "cWkQKQF2mzDSdRNC", "groupId": "sTPxvq6igLS29vHB", "permissions": [{"allowedActions": [47, 96, 52], "resource": "CNRqnJ5ykchU6ZG6"}, {"allowedActions": [74, 21, 53], "resource": "12Li9nQ84tkDc27R"}, {"allowedActions": [14, 76, 7], "resource": "n5wZ8XEs2OCXVsIz"}]}, {"group": "UdkLo5JLI6Yfpv4x", "groupId": "hYROvzJFWGZSyCsF", "permissions": [{"allowedActions": [60, 47, 12], "resource": "IJFXPNvmMb0QKbT3"}, {"allowedActions": [68, 50, 0], "resource": "2j2C9wXaZt47pOkF"}, {"allowedActions": [4, 96, 74], "resource": "rPTyaNi5GDThvg6t"}]}], "module": "2RF7zhNbFrCFPOvT", "moduleId": "5PHF8E8Etv2ne0qJ"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'false' \
    --body '{"groupId": "bGZ1uaGCouRPirec", "moduleId": "vAeD0PLmRgqREE4y"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminDeleteConfigPermissionsByGroup' test.out

#- 111 AdminListClientTemplates
samples/cli/sample-apps Iam adminListClientTemplates \
    > test.out 2>&1
eval_tap $? 111 'AdminListClientTemplates' test.out

#- 112 AdminGetInputValidations
samples/cli/sample-apps Iam adminGetInputValidations \
    > test.out 2>&1
eval_tap $? 112 'AdminGetInputValidations' test.out

#- 113 AdminUpdateInputValidations
samples/cli/sample-apps Iam adminUpdateInputValidations \
    --body '[{"field": "nN6I0glbpxNR2Xab", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["8q9fZSXQg6YYhagl", "9PMSth8OKOUzzxl0", "Mg4pUw9i1P31fUUX"], "preferRegex": false, "regex": "eBsRjYoNv4v8UrK5"}, "blockedWord": ["JPm5gjM1EQxxITRJ", "RAhTPZHPKdkELDCG", "DG7M4TatmsLz15Tw"], "description": [{"language": "BDkHdPwh9u9r39Zl", "message": ["Yr12lz7oOHM5EGhO", "X3OtxKlmEdENXvOp", "tRE90ltWBZWeUBKW"]}, {"language": "4EGvoTLfGZrWakqY", "message": ["pX6gtuIdTr2tRoaW", "qIkEhr5A9PWwYu2P", "xHGbz21KN7Ti8tCO"]}, {"language": "LUZP2t3gu8oCyHce", "message": ["UDqrtZlSupLq3wZD", "oneI9AY02U2O1v97", "z1wuudPx8drwH0Du"]}], "isCustomRegex": false, "letterCase": "XoWCVJy61yCRghwS", "maxLength": 17, "maxRepeatingAlphaNum": 61, "maxRepeatingSpecialCharacter": 92, "minCharType": 15, "minLength": 31, "regex": "iof9E6BCxiXO4X7d", "specialCharacterLocation": "8Idn3WaQgPRBHKpo", "specialCharacters": ["9gbHuofZfkpfMsLb", "s8z0e6CWA1VVIzhj", "6pR37cYMoePlIbBS"]}}, {"field": "H97WnY4sqa00M8c4", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["cCLhPemDxLI7uAjk", "gOMx4U9dIpnIcUxA", "T8S2oGylc3rJ8XTA"], "preferRegex": false, "regex": "w73NYQiUjxS9ykNc"}, "blockedWord": ["eCaW95CWnTLi9JzS", "DOKTUzLDV72HjAH7", "iURPNIr2WOCcMCG3"], "description": [{"language": "o4JTARMptRcsneYV", "message": ["GiEVQCnh0ISKsTGi", "NHXieMLUpAVzEb16", "Mz4dNcylmlS5yU8T"]}, {"language": "2LH7XjWzLgH4ChHz", "message": ["WVTju8hkYGeY75UP", "fV6GHHr53YqTfApD", "nSskSFecGKumt8gC"]}, {"language": "1Jq72VBBcEcmCBEN", "message": ["fbM99Sg9vrC3d85m", "e5Unrz0oNDDtsknd", "gOUILiQTG2Oy5jE9"]}], "isCustomRegex": false, "letterCase": "HpGXA8IZ17y29Cx7", "maxLength": 90, "maxRepeatingAlphaNum": 51, "maxRepeatingSpecialCharacter": 69, "minCharType": 53, "minLength": 5, "regex": "KYZMHKWYxhENpuZZ", "specialCharacterLocation": "cwAQZuTCqXE2BdSl", "specialCharacters": ["jHhD8znXrAgQW6So", "5DTnzccbEELew3ql", "veQly1Ns3Rhf0O3Z"]}}, {"field": "0nyx8m6QrEmjY2II", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["v36bSuSWB6Rwiy4Q", "ztFAMpAEWSuzUw7Q", "0egybTdfyCGyUKSt"], "preferRegex": true, "regex": "5spXbb9xjnJhdUNc"}, "blockedWord": ["ZnZIMdOX2mC1j1oG", "9jbL5YPBH3lLjZos", "ummmwazNBJ0cXNYP"], "description": [{"language": "T1nSftDQuYRi9dHl", "message": ["ZLHI4c2BgEZIsLXj", "gCLdrRepodHx7uiI", "U3zASkWFk9D8hDmc"]}, {"language": "AU0sSYPPFY1LdgnX", "message": ["03NGYsFGuYPHLtmL", "AxkJ5oRaL1XxlUfm", "M88G90z1mYcwuO0r"]}, {"language": "YAu4XXFkbeRhPqB7", "message": ["lBSrGqNmHdc1mMJT", "C6gSiYmFQe0apG7T", "gN0bEUMBDkeylVXK"]}], "isCustomRegex": false, "letterCase": "tCO14yPDmzfTlZy0", "maxLength": 50, "maxRepeatingAlphaNum": 24, "maxRepeatingSpecialCharacter": 81, "minCharType": 82, "minLength": 65, "regex": "7izKYAvjogvIbV4v", "specialCharacterLocation": "4a7y66v9XZX3krUJ", "specialCharacters": ["oNgk0ciwAO73xmPL", "gE2qhY32u9DuG3Os", "mXaXEjS9JMTh6gVs"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'bVyk6Abv4MC5bMw5' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'lkNy02TlbfHj7tk6' \
    --before 'Okcso6Iiy1LblIFm' \
    --endDate 'Mr8qRYoJQrOMrVBe' \
    --limit '63' \
    --query 'mH9NdRAtWerVYDAy' \
    --roleId 'MhnfEwbY9Y5zvn6o' \
    --startDate 'kAZLculAtwfKk0fQ' \
    > test.out 2>&1
eval_tap $? 115 'ListAdminsV3' test.out

#- 116 AdminGetAgeRestrictionStatusV3
samples/cli/sample-apps Iam adminGetAgeRestrictionStatusV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 116 'AdminGetAgeRestrictionStatusV3' test.out

#- 117 AdminUpdateAgeRestrictionConfigV3
samples/cli/sample-apps Iam adminUpdateAgeRestrictionConfigV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 5, "enable": false}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'LyngRz3qpR8ydWQz' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 1}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType '4wZsznpPxPY6tPlE' \
    --limit '17' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "Vcp18X9ppN2ybKEb", "comment": "aPq81oeVsHJRX6F8", "endDate": "ATHZ2o6MedituWdz", "reason": "FONhookF2Oi9OySB", "skipNotif": false, "userIds": ["myy1hZCiBl2x39Xi", "4dE35RlQhLHMzhyk", "CFeclJXg7MYPI5i1"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "RRd9pZ8uFOhvOAOn", "userId": "V7mTdbbu4njyRvyo"}, {"banId": "0wj3ESZ0S4XdKRVF", "userId": "0NiXFM72rgMWwauw"}, {"banId": "NRqwdoJyIWMy8K7D", "userId": "Yu76d1SC0tUIuCTY"}]}' \
    > test.out 2>&1
eval_tap $? 122 'AdminUnbanUserBulkV3' test.out

#- 123 AdminGetBansTypeWithNamespaceV3
samples/cli/sample-apps Iam adminGetBansTypeWithNamespaceV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetBansTypeWithNamespaceV3' test.out

#- 124 AdminGetClientsByNamespaceV3
samples/cli/sample-apps Iam adminGetClientsByNamespaceV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'jnFrDPnSEOGK2Ram' \
    --clientName 'V96aUunLbnL3Y0we' \
    --clientType 'pzEtiJqNAH7cHAPI' \
    --limit '66' \
    --offset '70' \
    --skipLoginQueue 'false' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["4XBBOMvsWellmPTB", "SlBS06CZAaheeQwE", "tjnTB0CErfZE4x03"], "clientUpdateRequest": {"audiences": ["vqo2isSakx5xlYms", "0P8cM6EWaTO3INuJ", "6rzcWBWdLLB2Fhb9"], "baseUri": "esQuLYQXmkL5XVd2", "clientName": "nrwjN0MdbGmRmjYb", "clientPermissions": [{"action": 71, "resource": "j9rb7DyOrJD2GGG0", "schedAction": 19, "schedCron": "EV9TAgAUzQewK4WQ", "schedRange": ["ZnoWRrGqYDEb86Dl", "tLimNMj7923ofZB1", "fnpzEiwmY7Cuxd7h"]}, {"action": 77, "resource": "YyKTJWaPbJWh6lAx", "schedAction": 32, "schedCron": "a6c6EgoJkDPvkRIM", "schedRange": ["9CdYuWz1AcGyFRv6", "yyUJjwNnR8Ph28UQ", "9M4SJRISySfgr0jT"]}, {"action": 29, "resource": "5ROshNDxwibjXzlc", "schedAction": 19, "schedCron": "f8S195QnXsVifHCV", "schedRange": ["h7YaV0PqNLHeuMOP", "QeI47YqSLTqJtEHf", "LJiulWFsQgnkitJV"]}], "clientPlatform": "YoHCywAccvqYHgOd", "deletable": false, "description": "c6rR94vw1b7ns2YZ", "modulePermissions": [{"moduleId": "imwjrPCdKA0djL9f", "selectedGroups": [{"groupId": "uscYebza3bHjlFqA", "selectedActions": [51, 93, 22]}, {"groupId": "Jl2GilG7F8EGAX11", "selectedActions": [70, 43, 42]}, {"groupId": "0lHUvOxfPN1eLAvH", "selectedActions": [11, 83, 25]}]}, {"moduleId": "KhRTf97EDY1giDe0", "selectedGroups": [{"groupId": "8FWLrbzmq8GbGDod", "selectedActions": [2, 36, 93]}, {"groupId": "LGDubuivZrnOaOZV", "selectedActions": [40, 6, 47]}, {"groupId": "cp6mDLcKKlb3d5d3", "selectedActions": [76, 50, 7]}]}, {"moduleId": "gVOChUXG8ZoICmxs", "selectedGroups": [{"groupId": "4fXVw3wf9xdX7vgB", "selectedActions": [46, 36, 11]}, {"groupId": "CUiflc053DVhJUoj", "selectedActions": [63, 6, 87]}, {"groupId": "99coH74B3j0Zrqjq", "selectedActions": [11, 14, 18]}]}], "namespace": "Wx1Y7u1BT2W7duti", "oauthAccessTokenExpiration": 63, "oauthAccessTokenExpirationTimeUnit": "h5K2MIuCdg0HlGlc", "oauthRefreshTokenExpiration": 31, "oauthRefreshTokenExpirationTimeUnit": "Zr1zi1R0MMUnjb2K", "redirectUri": "6tcam4f7fkCwtPCQ", "scopes": ["FOZDTY16XFUdqTK5", "F6Fl0NcFjlIAaok7", "rHFWmNGoYBRHQyJK"], "skipLoginQueue": true, "twoFactorEnabled": true}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["kQ0aI8bUpsTdejsE", "pPaBWCBU1DsTwoWB", "xf5UlBEJwBykRQW6"], "baseUri": "3AZ4qpQiYwNdJsRH", "clientId": "2VQJQGyLMxvm61mI", "clientName": "L1ZBYlBs8DftHfLL", "clientPermissions": [{"action": 6, "resource": "q8NdJlJrSxe2UOGR", "schedAction": 48, "schedCron": "7cz6SApI1aHTkJv7", "schedRange": ["Y3fSuZETnjaMs7ia", "SRMApE3oRFqVkghB", "uVVNCY7W5EYZErw8"]}, {"action": 100, "resource": "AIlzimSMckFkPJ3V", "schedAction": 58, "schedCron": "xnSJUl46jxUZ08Rp", "schedRange": ["ThfnOpNqNWncKb9g", "thkLCHfXNKyssF49", "iJEu4uqMwJEGkWCz"]}, {"action": 92, "resource": "GUVVe5xI2HJcfgnX", "schedAction": 87, "schedCron": "Z3QFgeZqPF7t8E0z", "schedRange": ["OIGkXZ7kgmQ44Zeq", "DGVH6sojEqsKGTI3", "glY8WuVWser6ryua"]}], "clientPlatform": "TVxZtNzO19Tlcc2x", "deletable": false, "description": "4ZwyfxZIFu08Fpdx", "modulePermissions": [{"moduleId": "ljz3s25FatDlK4jf", "selectedGroups": [{"groupId": "YIOjystX2pv1yIa2", "selectedActions": [58, 58, 69]}, {"groupId": "ewBAueseBMhsACsp", "selectedActions": [43, 47, 94]}, {"groupId": "zUELnncuX2otAudo", "selectedActions": [43, 42, 50]}]}, {"moduleId": "6H7fUX67C7sT9IK7", "selectedGroups": [{"groupId": "pURQQMyFPD0QnwCJ", "selectedActions": [35, 26, 80]}, {"groupId": "W3dg7RXbCDKIqQOA", "selectedActions": [33, 47, 22]}, {"groupId": "r0htOX9q6As8hjd9", "selectedActions": [87, 70, 86]}]}, {"moduleId": "swTHBTeGZeZ66Xas", "selectedGroups": [{"groupId": "hYwESroSVCfLIzSu", "selectedActions": [1, 20, 51]}, {"groupId": "OP0MUeI5TvRtKipI", "selectedActions": [82, 21, 22]}, {"groupId": "1zBKJzjKvnO9hcOa", "selectedActions": [21, 8, 67]}]}], "namespace": "ugthIF17Trv0YQTv", "oauthAccessTokenExpiration": 67, "oauthAccessTokenExpirationTimeUnit": "OIjw50tVgM5A3uXw", "oauthClientType": "ArKxereqXnze4rCk", "oauthRefreshTokenExpiration": 64, "oauthRefreshTokenExpirationTimeUnit": "mrY1XkeRhX1gXMDg", "parentNamespace": "mwUSnA6xIAyK5hN2", "redirectUri": "i3bPEg5dZKbnacRC", "scopes": ["vVMMYOTHmvyVRf5a", "s5WiRrUIJ1FGKx4p", "GKknoRFoZXFvXJ0q"], "secret": "CrOJTrlAbiWoiP6e", "skipLoginQueue": true, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'x8VPZkR8aH4rAfkI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'anGhZqAyffnJjdNQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'OyUD0TWKpLVIwWNz' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["6h1hzItISNUY1amK", "kLJdIDoFPRs9zk42", "V5pZN3C1jmGTI4U6"], "baseUri": "6YRL0PU5o694tzmA", "clientName": "h7YwObdWBCaP1O3V", "clientPermissions": [{"action": 88, "resource": "P1uHZaPfmUnDPCXu", "schedAction": 50, "schedCron": "11xv3TkvmbDd4wRE", "schedRange": ["wOmZCg7fGbnu3gHp", "jlVuAaa10RnwsfXX", "AssF1DkQRPjUs1Wr"]}, {"action": 92, "resource": "EiH2gbdmQ5VqR9EX", "schedAction": 83, "schedCron": "AxW4N7LM4NP8wXtQ", "schedRange": ["Tr5hsc5fX9O2vLFv", "rPKIgY9jMhfzg7fD", "0YFGPr0k0t1WI0aX"]}, {"action": 93, "resource": "eqiBIzsHiCGQ1xjM", "schedAction": 27, "schedCron": "IH9rvuNIDw9GFsQE", "schedRange": ["CzcuzOdiV5F3Yqel", "czP4d1Bm1xdZD0Yt", "42gLDfvu1197j21K"]}], "clientPlatform": "OjOG3EdCH2wzmfyp", "deletable": false, "description": "pdBOwXDOOpjz4UN2", "modulePermissions": [{"moduleId": "p5sIhuyD07iAW4Al", "selectedGroups": [{"groupId": "YZAZeydTqXczFOOJ", "selectedActions": [25, 82, 33]}, {"groupId": "vRz8PhS2oqlRjEo2", "selectedActions": [96, 95, 9]}, {"groupId": "wx91UnTzQD0CDN7F", "selectedActions": [93, 27, 6]}]}, {"moduleId": "SCyNZ68IGPpO5zZG", "selectedGroups": [{"groupId": "ww8MAlTNxpsSks3I", "selectedActions": [47, 89, 26]}, {"groupId": "gb2GoNEqgpPZkp13", "selectedActions": [46, 86, 19]}, {"groupId": "DWlLaOWLI9zZh3wG", "selectedActions": [27, 19, 61]}]}, {"moduleId": "MVmOCTNlzO0R2dM4", "selectedGroups": [{"groupId": "G7RwqGj4Oj7pfLBe", "selectedActions": [97, 10, 54]}, {"groupId": "SXexxzEjzjBpn0Iy", "selectedActions": [42, 80, 20]}, {"groupId": "5YFSvlgC9pKEMRKO", "selectedActions": [61, 50, 36]}]}], "namespace": "JJrEfscvm0HSrQOp", "oauthAccessTokenExpiration": 10, "oauthAccessTokenExpirationTimeUnit": "kVuqs1ZwBvdxFQwb", "oauthRefreshTokenExpiration": 41, "oauthRefreshTokenExpirationTimeUnit": "RG0elHK6U19gLmOp", "redirectUri": "uSJ32EqNb6qhNxyY", "scopes": ["Z6PNBVAeRWXnxyCA", "Puuyv5ifQASbbqJ3", "JZNrKCw7JlgqpIfs"], "skipLoginQueue": false, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'QZuJFZz20qpQnfun' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 62, "resource": "qXECAxGo3goXkyXc"}, {"action": 24, "resource": "XG9FyMdcyN4ATrbq"}, {"action": 10, "resource": "yRtJJzRsbabqgnau"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'uJkmwDTflIk70iQ5' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 86, "resource": "9nUes0SLMaX2jJw6"}, {"action": 68, "resource": "kwjAgRzC5IV4elLl"}, {"action": 6, "resource": "bBWaKkwxVYJryQNa"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '20' \
    --clientId '1e73X5OWnLPsvNYJ' \
    --namespace $AB_NAMESPACE \
    --resource 'GOjoL85mXtQlFqH4' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'LQZsFIWJFIWcQIJe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 133 'AdminGetConfigValueV3' test.out

#- 134 AdminGetCountryListV3
samples/cli/sample-apps Iam adminGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    --filterBlacklist 'true' \
    > test.out 2>&1
eval_tap $? 134 'AdminGetCountryListV3' test.out

#- 135 AdminGetCountryBlacklistV3
samples/cli/sample-apps Iam adminGetCountryBlacklistV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 135 'AdminGetCountryBlacklistV3' test.out

#- 136 AdminAddCountryBlacklistV3
samples/cli/sample-apps Iam adminAddCountryBlacklistV3 \
    --namespace $AB_NAMESPACE \
    --body '{"blacklist": ["bqyu1p7tt6ysU8At", "5bBl8SfXFlJTqc0E", "BHWFBxCqvynDmAYz"]}' \
    > test.out 2>&1
eval_tap $? 136 'AdminAddCountryBlacklistV3' test.out

#- 137 RetrieveAllThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 137 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 138 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 138 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 139 RetrieveAllSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 139 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 140 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '3EYNHyfWTo621cjc' \
    > test.out 2>&1
eval_tap $? 140 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 141 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'HRSghXtylSSmVXSJ' \
    --body '{"ACSURL": "p36tVZ8MfzDuDzi5", "AWSCognitoRegion": "NpRgjlRMzRQ4qm3R", "AWSCognitoUserPool": "INwqS0bUF8ElfAJe", "AllowedClients": ["TQIvFIZW0P8SWBR7", "cIPbJi8pDlILqhqO", "VI219QhYMe4a7ndK"], "AppId": "PNnO6bZXVMyIoBhc", "AuthorizationEndpoint": "GQw2nPO46W1FVGjv", "ClientId": "VrDS1dB7Mqdzod5H", "Environment": "dv8cQIVrniR5AVky", "FederationMetadataURL": "xin9QQaWZRw9Bei8", "GenericOauthFlow": false, "IsActive": true, "Issuer": "1LQZZuJay80g5eNQ", "JWKSEndpoint": "d2uRqgbC56tPFCVn", "KeyID": "kLMOhKsL5yl0ry6R", "NetflixCertificates": {"encryptedPrivateKey": "xMWKqcvRRXTyM1eJ", "encryptedPrivateKeyName": "usYlNUnezSfENowd", "publicCertificate": "S7QL4XV6HOiKTxVx", "publicCertificateName": "aVLrrMB2DIVpla2N", "rootCertificate": "nI8j2xh7V6yNs0bN", "rootCertificateName": "AFhKhsAvFMcvz55Z"}, "OrganizationId": "5YrKoSxSmJjeLAVt", "PlatformName": "wX3ajcEqEONkx5ek", "RedirectUri": "Z4u6xSulUyXJicPw", "RegisteredDomains": [{"affectedClientIDs": ["xmSBa5UBbjWmKZmU", "wVR1qcPUyTXQn1JD", "vPuSqfh9lDaqxbRB"], "domain": "l30oApKF03ukuAJg", "namespaces": ["9ulzSnbbqGhZ6d7x", "qKRY4fhlyMsOV1s1", "jRunVpSCwnL80PP9"], "roleId": "ZevurLdIof22XtTE"}, {"affectedClientIDs": ["uZJXpfOL4SpRaufq", "AvQfsSn9FNoHv7wS", "Rbxf5jyySePNLN92"], "domain": "WmOcBM12I48hItPL", "namespaces": ["fNillF3GF6IOosL5", "63ELq3bX8ZVTzVp5", "dBbPAfDftzNmmmwe"], "roleId": "FFfl8eXogj3Q2t12"}, {"affectedClientIDs": ["CAdhxZgYeS7rrAaT", "t5yAZBi0XlLBMFDC", "sFZfvaruGVj0NVWv"], "domain": "KEICZN7wZaeE8Veo", "namespaces": ["Oeg7AyFSg0Bb1kMD", "D2w8zgYk5gPKaYqe", "FK3PDFEURMwUQWPI"], "roleId": "hJb989H1bThRGR4k"}], "Secret": "VSlE1uVcpIE0ch6z", "TeamID": "P2Pc2lZET8sQ8HZk", "TokenAuthenticationType": "miq0NYkwxSivpGgY", "TokenClaimsMapping": {"mR0UHmfQoguPETVi": "ee507VpeGimY9qEm", "VeMIRb1YAn8Hygzx": "1qfZGwUZ9BRxlbTR", "o4QegE5x8dgcNVRV": "IHjkuk9ZScsssIPk"}, "TokenEndpoint": "QYDxGrNlpI18wSBx", "UserInfoEndpoint": "fwc8g1dFtdj4kLNp", "UserInfoHTTPMethod": "fLGef3CCqoHJQFJd", "scopes": ["YTZyt89zNx3z77G6", "DmeNVoediTRa8PSL", "ST57v4Cw544WmXtF"]}' \
    > test.out 2>&1
eval_tap $? 141 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 142 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'xz9YX5RITwC97pLT' \
    > test.out 2>&1
eval_tap $? 142 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 143 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'AGeKimSIUPSqdJPr' \
    --body '{"ACSURL": "KRiAkmz3QAqBFCy0", "AWSCognitoRegion": "vGEFT0ze6Enw1UFo", "AWSCognitoUserPool": "1LIyoPmbbbzbdasK", "AllowedClients": ["J8bubRyUfvZVoBbl", "c27w06bgj3LqlGHJ", "zWuokRauvJznctnF"], "AppId": "hkkNzYGlz5dkBY5z", "AuthorizationEndpoint": "MGpvVjhm3U5awytQ", "ClientId": "uQfu6V1NEEcnPd5h", "Environment": "pqcv8KiaS3BFDM4g", "FederationMetadataURL": "clFAnE9oa0Fokzmu", "GenericOauthFlow": false, "IsActive": false, "Issuer": "AN4c3FSdlZpAPLxB", "JWKSEndpoint": "SqGHgfbWm4jyjdlV", "KeyID": "tyccdaVr1xcjMa5q", "NetflixCertificates": {"encryptedPrivateKey": "taz8c5PrKlfipNq5", "encryptedPrivateKeyName": "0u38MPM7FvnaGwCE", "publicCertificate": "f7awBQfKlQoIWSP9", "publicCertificateName": "1Lz0XjNLUGo2X94w", "rootCertificate": "rWJj0NxoYVqMl3Sh", "rootCertificateName": "tcdLJYdBW0v7oivG"}, "OrganizationId": "KpftIDXbpJhutkFS", "PlatformName": "OcPqj0ThVHlzkLdu", "RedirectUri": "WlVnqAN3G2kfhizz", "RegisteredDomains": [{"affectedClientIDs": ["6IUD5YaROHYvfOB1", "auTSwSMgxIHw5oFU", "jAsmrXITveWewswX"], "domain": "xDl3ONlv9BcIgXtO", "namespaces": ["Xl0b2Z8SAsTXchVf", "o5AUc3m5KucdIjrf", "iV7nJELaXcEPtYuD"], "roleId": "bboOMj1oICIuqj9o"}, {"affectedClientIDs": ["dVcYFZIh3oxki5f3", "ns8mIuEDo7Bidn51", "6W4vdQY2AFWi239u"], "domain": "Jbdo2YG6CSXdH5LR", "namespaces": ["hiCjIIKA4BDXn1fh", "ky6Gmoyqjz7KUdwg", "rsFrbEX2aFarwnCg"], "roleId": "cJCxiPNhvDgGVoHk"}, {"affectedClientIDs": ["OHWrHbdIwa3UNk5d", "TaQUzKNv2IpaJm7S", "bd3TJhGIRbpShybZ"], "domain": "lwddTootZFliA9TI", "namespaces": ["8sak1Sx64sAJ5bxc", "3zpOVaDejpV9R65Z", "l2IEFGpEbGsw05Pd"], "roleId": "eyPpWsRzSMQJHlGP"}], "Secret": "h6mt0AGmYgtIAVOd", "TeamID": "ymHjxlYsQ6wn8MGB", "TokenAuthenticationType": "r3WAO8WrlEUN0JcK", "TokenClaimsMapping": {"0laCqw40KjKPt3GZ": "oJEM7B3swkhkSVh7", "9Xs6Wwm4its11NDl": "PDMXwj9S0HUA2z8u", "bxf1MyzdSGX03BR3": "otrxaLJqIbWEruCf"}, "TokenEndpoint": "3s4bU3XSKpKjgqyF", "UserInfoEndpoint": "wnTmRIANH1eV5zld", "UserInfoHTTPMethod": "O9ENFYTkUfzDhcQW", "scopes": ["hDfcjjueLdQZ587v", "J92RjjCbjSw0SY1G", "CDelzuyDZgxtNq2p"]}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 144 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'iDlQxF8rEHvSFXcw' \
    --body '{"affectedClientIDs": ["YGc3YEgErX8owSh4", "Dh1OXNmKvDvAe6N5", "SLZvVbMAIXo7Okie"], "assignedNamespaces": ["Yn4WzHc15PHO97Mf", "Wt6sUTor8PZICytn", "TRIrslE1sojL9Ug1"], "domain": "Ak9BrGNkpipRKM3Q", "roleId": "B6e2UvxFA34Z3sH7"}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 145 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'o2r1TgZxJVSqPRnU' \
    --body '{"domain": "c76Ekmp33i0r979C"}' \
    > test.out 2>&1
eval_tap $? 145 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 146 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '7QlUk9Z8fIPJ3zwy' \
    > test.out 2>&1
eval_tap $? 146 'RetrieveSSOLoginPlatformCredential' test.out

#- 147 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'FZeogJtlvW6BwwJt' \
    --body '{"acsUrl": "gLcY5GgK4s6EIcUx", "apiKey": "A4te33SBZXT2h9jf", "appId": "PUzFnC0bJnZr0FNU", "federationMetadataUrl": "3IMV7C68XCTn3Jeu", "isActive": false, "redirectUri": "NEuCkVW6fXkqN0a8", "secret": "Ql10UfKuZbLUZUWI", "ssoUrl": "0bW1tQGPjYRHCjiJ"}' \
    > test.out 2>&1
eval_tap $? 147 'AddSSOLoginPlatformCredential' test.out

#- 148 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'jDcDXETToP71cQ9r' \
    > test.out 2>&1
eval_tap $? 148 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 149 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'LeAsg8fWxwWJnBtY' \
    --body '{"acsUrl": "aSWsaE7T5xyjyQIb", "apiKey": "kBnJCfhdrsnluEDN", "appId": "LvmC6AbPYTXz7Odq", "federationMetadataUrl": "IkORV0Bfci4SMgxs", "isActive": true, "redirectUri": "XS3aRBBo9Uma2uM5", "secret": "jkGsHxoAzU5VMIJn", "ssoUrl": "3HFnoUQj8jNvGUP2"}' \
    > test.out 2>&1
eval_tap $? 149 'UpdateSSOPlatformCredential' test.out

#- 150 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'pN783devm7MvzXib' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["8GdlgGetwG3QdjQt", "iQLo4h0yR8BR95vo", "mPRs01f6ApjUfaay"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 151 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '2vqeKGvjNM3RQ9ni' \
    --platformUserId 'nMLDec2eXgKwCFtG' \
    > test.out 2>&1
eval_tap $? 151 'AdminGetUserByPlatformUserIDV3' test.out

#- 152 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'pFd7XSlxZjkZAxlt' \
    --after '64' \
    --before '70' \
    --limit '61' \
    > test.out 2>&1
eval_tap $? 152 'GetAdminUsersByRoleIdV3' test.out

#- 153 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'CFqeiytoR9bvjj0v' \
    > test.out 2>&1
eval_tap $? 153 'AdminGetUserByEmailAddressV3' test.out

#- 154 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": true}, "userIds": ["Qs2j9yQmjKPgKXLl", "0XwCffcBp2wdHuhx", "0QtZsvA5zeh6cfNZ"]}' \
    > test.out 2>&1
eval_tap $? 154 'AdminBulkUpdateUsersV3' test.out

#- 155 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'pd90o5CdxmPowrFo' \
    --body '{"bulkUserId": ["WQqiqsWyg3JQv9TV", "AZDF0cysr3mvhuTo", "EkLy2lEe1Aya14pQ"]}' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserBanV3' test.out

#- 156 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["7SbFVJWmx7DQ3hdC", "u5GazJUM2wqgGzhD", "jQfC2jjfDjqHvnYo"]}' \
    > test.out 2>&1
eval_tap $? 156 'AdminListUserIDByUserIDsV3' test.out

#- 157 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["mLr1tyDF5QsB0akx", "Qu9a5LFfGB1uLRpj", "26eSdvh06kZpyHLi"]}' \
    > test.out 2>&1
eval_tap $? 157 'AdminBulkGetUsersPlatform' test.out

#- 158 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["ZDdfRDHKfUzc6PJd", "K17gRqC9Zc5BcoNf", "xHj12eKHzzFEcZ2M"], "isAdmin": true, "namespace": "gFUfwaiuh0GSzwC5", "roles": ["VwHhhkugPmpv0L7Q", "TLO9LxVYCGbPmvCQ", "lVGHHr6SNCrJ2CBm"]}' \
    > test.out 2>&1
eval_tap $? 158 'AdminInviteUserV3' test.out

#- 159 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '93' \
    --platformUserId '0hjTblLlYeHPkISp' \
    --platformId 'huVXLZkk6lFwthth' \
    > test.out 2>&1
eval_tap $? 159 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 160 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 160 'AdminListUsersV3' test.out

#- 161 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'CKsJLpPmBh13fzON' \
    --endDate 'wxtfPh02bCqyQOzy' \
    --includeTotal 'false' \
    --limit '40' \
    --offset '46' \
    --platformBy 'AiGME77hYluNoTRa' \
    --platformId 'x3RHt0b16zD4DJqi' \
    --query 'Uf6hzYyhMT9uhjUd' \
    --roleIds '8HqUYi1EK3SSzzcP' \
    --skipLoginQueue 'false' \
    --startDate 'IQh1Ctw1qF1t3rzs' \
    --testAccount 'false' \
    > test.out 2>&1
eval_tap $? 161 'AdminSearchUserV3' test.out

#- 162 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["Ucopc2PaozD193yf", "K1iFoMsFZJp0y8zd", "j0rTkooePKUEH922"]}' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetBulkUserByEmailAddressV3' test.out

#- 163 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hKvtfRtiTUZ6Swch' \
    > test.out 2>&1
eval_tap $? 163 'AdminGetUserByUserIdV3' test.out

#- 164 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UpuVmQUyv5lc1ETc' \
    --body '{"avatarUrl": "7EefZcPTapUVElkc", "country": "Ze4VgQmOlnAFJo9W", "dateOfBirth": "lJl1pdxA3QcVLkld", "displayName": "r1lVM3SHhEb0kNlN", "languageTag": "RJOC2cJdEcZkDNKL", "skipLoginQueue": false, "uniqueDisplayName": "DK2XHzcQWn9Yq4jb", "userName": "401R9niuwjdO3nDA"}' \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserV3' test.out

#- 165 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Nn3qxIdymQnQhngA' \
    --activeOnly 'false' \
    --after 'xD4gzS0MM4HUb1s2' \
    --before 'zVuR5SOJRT3gsJGN' \
    --limit '75' \
    > test.out 2>&1
eval_tap $? 165 'AdminGetUserBanV3' test.out

#- 166 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UO2rcbpOEOQY8DRt' \
    --body '{"ban": "zExqZtQz2sKsx0Rv", "comment": "vl6kWX9ojO8q0PAi", "endDate": "beVgXA9HT2bL8cAv", "reason": "J3S2xmbjgVXr3enq", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 166 'AdminBanUserV3' test.out

#- 167 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'iW8Ep8CLZlxsB2je' \
    --namespace $AB_NAMESPACE \
    --userId 'jsX59jS1LU3AFVkb' \
    --body '{"enabled": true, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 167 'AdminUpdateUserBanV3' test.out

#- 168 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ho6AWstkIt2ywzut' \
    --body '{"context": "9qOjuxiyr4GRLqYS", "emailAddress": "Gw8ATWlEtLMh46kA", "languageTag": "3rjZchHWF3513HiN"}' \
    > test.out 2>&1
eval_tap $? 168 'AdminSendVerificationCodeV3' test.out

#- 169 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FCSBXLcTZRIBUbDc' \
    --body '{"Code": "7oVryLCg3KQtVlSj", "ContactType": "nCY7pNmh1YFNuWF9", "LanguageTag": "Yf7CzgrBqVjtxETU", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 169 'AdminVerifyAccountV3' test.out

#- 170 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'DfKQCV3n2Zd7Yvi1' \
    > test.out 2>&1
eval_tap $? 170 'GetUserVerificationCode' test.out

#- 171 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'E8VbQdQPkLMqVdUK' \
    > test.out 2>&1
eval_tap $? 171 'AdminGetUserDeletionStatusV3' test.out

#- 172 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '50j4dCrPzZF6oXgT' \
    --body '{"deletionDate": 29, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 172 'AdminUpdateUserDeletionStatusV3' test.out

#- 173 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hGl9T3IX64L4O7Ac' \
    > test.out 2>&1
eval_tap $? 173 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 174 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YC84EMknWlS85nZh' \
    --body '{"code": "3WKldLOuKhcoVcpq", "country": "lfqvEMgyJomoWNzT", "dateOfBirth": "9vFUuK1L4rvOP75t", "displayName": "hf94MxmujCDZGxas", "emailAddress": "eiiVLLJbpPWimJ9H", "password": "2CPAPsoYAf32QZ4s", "uniqueDisplayName": "fZ99H0kIx2C2tf6d", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 174 'AdminUpgradeHeadlessAccountV3' test.out

#- 175 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pYRuHzS22WyoY3w6' \
    > test.out 2>&1
eval_tap $? 175 'AdminDeleteUserInformationV3' test.out

#- 176 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '5H4DVuad25aUUuZW' \
    --after '0.6756014321878714' \
    --before '0.29823828319546886' \
    --limit '53' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserLoginHistoriesV3' test.out

#- 177 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'yLVhHpVfo9ivBkhs' \
    --body '{"languageTag": "iObXEE7cFMkK4KN5", "newPassword": "1b4tVnaJybQ1aR21", "oldPassword": "ewcFPRnCE5RO9If1"}' \
    > test.out 2>&1
eval_tap $? 177 'AdminResetPasswordV3' test.out

#- 178 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gZV3rcykDjStBJCR' \
    --body '{"Permissions": [{"Action": 28, "Resource": "PAyRZzd3XkANx6j2", "SchedAction": 99, "SchedCron": "YItsrKy1sGAxJ1Ma", "SchedRange": ["jYhQiOosdCO0NX5F", "ZFUawze3Z8XdqqgU", "EHHRxhtfm4iAeC3c"]}, {"Action": 52, "Resource": "59pKYxHj5HpzTD27", "SchedAction": 30, "SchedCron": "zSWKpg8WxiNa6kcE", "SchedRange": ["s9IKMvuPjhVAPjtb", "QaIqPejPbCQumTFT", "NVygT87Vly9lhNxe"]}, {"Action": 48, "Resource": "jRtnFhUWNs5Wi9tc", "SchedAction": 79, "SchedCron": "rkJ8klpbsrQniIzE", "SchedRange": ["5ca77N1iIuKWKv9i", "nkLiqdVeczc3FDwn", "6nrpmC7wyTZrJ39R"]}]}' \
    > test.out 2>&1
eval_tap $? 178 'AdminUpdateUserPermissionV3' test.out

#- 179 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Ctq4Dy718AxrMAI3' \
    --body '{"Permissions": [{"Action": 81, "Resource": "LikN4m3fg2LbzzC4", "SchedAction": 39, "SchedCron": "GM6l84jbQYfm3Aap", "SchedRange": ["quxURNTwXZUFSFNr", "kAdsVYrgx9I5SpcB", "JyppZxSajF9uo4X2"]}, {"Action": 85, "Resource": "FG8w1nG1McK27Ec7", "SchedAction": 71, "SchedCron": "DsFMLPhJAuqImOVU", "SchedRange": ["q5gwqqG0F8EQqBnc", "vH7ltu9FjtTFXqvU", "SB3CQqZKg1qGMpmU"]}, {"Action": 83, "Resource": "iwaQrk6Dum6d74nh", "SchedAction": 14, "SchedCron": "5XyyxqvQWuvKjjZ9", "SchedRange": ["1fFRLOfOmUkhY5cQ", "UOkXC5VitdxcP33C", "jJyF6JK48S9KzQZH"]}]}' \
    > test.out 2>&1
eval_tap $? 179 'AdminAddUserPermissionsV3' test.out

#- 180 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'XhmcnBzv04INr6KS' \
    --body '[{"Action": 12, "Resource": "fZEtqM5V7dzUwtkh"}, {"Action": 83, "Resource": "aGic2fRdpktvvMXu"}, {"Action": 98, "Resource": "8wTnhcipNaYSgtgM"}]' \
    > test.out 2>&1
eval_tap $? 180 'AdminDeleteUserPermissionBulkV3' test.out

#- 181 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '88' \
    --namespace $AB_NAMESPACE \
    --resource 'evlHPDjgOUFnmUKm' \
    --userId 'vlYNC3ZBFGSbVRVL' \
    > test.out 2>&1
eval_tap $? 181 'AdminDeleteUserPermissionV3' test.out

#- 182 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'oSUAReq65N3idRyi' \
    --after 'dp4cbY5V0u22hYts' \
    --before 'jLaCXuX5bshqxthN' \
    --limit '74' \
    --platformId 'aQxevlgsKwUBYIJg' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserPlatformAccountsV3' test.out

#- 183 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'wXFRKXpU0S7UK0EB' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetListJusticePlatformAccounts' test.out

#- 184 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'uVhYNe5QJhAOqq8K' \
    --userId 'WPzG49hsZRLM9aQp' \
    > test.out 2>&1
eval_tap $? 184 'AdminGetUserMapping' test.out

#- 185 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'czPXVwfTeSrfhdTs' \
    --userId '5CtKcvkXVzka8xQq' \
    > test.out 2>&1
eval_tap $? 185 'AdminCreateJusticeUser' test.out

#- 186 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '8hubFRb3ii5eKOV6' \
    --skipConflict 'false' \
    --body '{"platformId": "h0fvT87sDR499myb", "platformUserId": "fNhSrSjSBKzzx0EQ"}' \
    > test.out 2>&1
eval_tap $? 186 'AdminLinkPlatformAccount' test.out

#- 187 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'T9Ba0Im4jBRXqm74' \
    --userId 'EpsMyhTS5rV4w9nN' \
    --body '{"platformNamespace": "HWVVLMpH64JPUbMi"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminPlatformUnlinkV3' test.out

#- 188 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId '0PwMXvjK0aqwS0O9' \
    --userId 'fvTR7ofDtWbRGgT1' \
    > test.out 2>&1
eval_tap $? 188 'AdminPlatformUnlinkAllV3' test.out

#- 189 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'CpGRDjeVcIsDN0li' \
    --userId 'ESMVrCnYUaScMj2D' \
    --ticket 'NIL4j7F4Tfg91ctW' \
    > test.out 2>&1
eval_tap $? 189 'AdminPlatformLinkV3' test.out

#- 190 AdminDeleteUserLinkingHistoryByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingHistoryByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'y4X8vxdcdaVPuoeY' \
    --userId 'mBb5zy4eVowhhnKR' \
    > test.out 2>&1
eval_tap $? 190 'AdminDeleteUserLinkingHistoryByPlatformIDV3' test.out

#- 191 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId '2dpjLJnuSMo1RiXz' \
    --userId 'pj4NDClo3OJuCNQW' \
    --platformToken 'o7TPaneiYh7oHpAh' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 192 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'flJk0uNT0USj48VT' \
    --userId 'p6OltN3pevWaIyIv' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserSinglePlatformAccount' test.out

#- 193 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'syfH0CATLrt2Bh9g' \
    --body '["uYxtA3GjF11cIO7K", "xtaepRN6CAZhGPHI", "ZumzjFWRznJJOXt2"]' \
    > test.out 2>&1
eval_tap $? 193 'AdminDeleteUserRolesV3' test.out

#- 194 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId '3XJZXFF8kYO7JrhF' \
    --body '[{"namespace": "azHYexkTuzn9WM8E", "roleId": "Hqusqq3tOFCWG3k5"}, {"namespace": "4TcGE9DNCxJsFbmv", "roleId": "4RXN6lVZ8A3gX9Pw"}, {"namespace": "cz8vGXMpDwtQHVyB", "roleId": "juiO4ppYMxdotLuE"}]' \
    > test.out 2>&1
eval_tap $? 194 'AdminSaveUserRoleV3' test.out

#- 195 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'IFQvlVGdNO2LNgn3' \
    --userId 'oZRaptAykvljkBLT' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddUserRoleV3' test.out

#- 196 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId '5O5xwIJYf8Adnf20' \
    --userId 'EGv0ViprSgQ5tcWR' \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteUserRoleV3' test.out

#- 197 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'KZvWJvMz48AdepIc' \
    --body '{"enabled": true, "reason": "KkNa2G7WyTFIeW5o"}' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateUserStatusV3' test.out

#- 198 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'g2w6yHqYpieQuCbZ' \
    --body '{"emailAddress": "hHmyFEeBtOgXBgXE", "password": "O4D4CCj4Vl8DWBof"}' \
    > test.out 2>&1
eval_tap $? 198 'AdminTrustlyUpdateUserIdentity' test.out

#- 199 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId '7DUHV681cuht3evE' \
    > test.out 2>&1
eval_tap $? 199 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 200 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'H3OlUcuVStiHZOah' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "EenXNsDPy3BPji9a"}' \
    > test.out 2>&1
eval_tap $? 200 'AdminUpdateClientSecretV3' test.out

#- 201 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'Ibj7owCV2NzGbhUa' \
    > test.out 2>&1
eval_tap $? 201 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 202 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'RRv489ku5ns3PIoh' \
    --before '3dH8zGmL75sbmxjA' \
    --isWildcard 'true' \
    --limit '84' \
    > test.out 2>&1
eval_tap $? 202 'AdminGetRolesV3' test.out

#- 203 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "managers": [{"displayName": "VKvpXffD8RYIuSjx", "namespace": "BQ5z7apAwFX9unKN", "userId": "yUpdMkYtpWekKLfD"}, {"displayName": "FvxRHD0Np2nqpIi3", "namespace": "HtZuHfn6xR9xy8mD", "userId": "IDW8giqE8KrypKIH"}, {"displayName": "RBrGDiqvjiwG2hab", "namespace": "2n3PyBgxOznwlpQw", "userId": "GSO5nGp18GSVvVJt"}], "members": [{"displayName": "nN9Ymak5to2TOkj7", "namespace": "H29BHFRBFT7azF8S", "userId": "5kvkFBtGwZq4YuOR"}, {"displayName": "2sG4TvyIpbb4Flpe", "namespace": "YnOL1tWJwhZB8DUv", "userId": "V3Xd11G7dYOY6vVP"}, {"displayName": "IfXytQvE0CEM5GTh", "namespace": "lUHCCiJ2mZgJsCkO", "userId": "c2AyBBj686HnaT0j"}], "permissions": [{"action": 24, "resource": "A7abDHp2bCpUFSWK", "schedAction": 48, "schedCron": "JIgOuwk1oZBxOQ1g", "schedRange": ["JQJfEwEzNyaWnR3F", "SACka32ZAKgIXCFk", "BOVZUNBaQJRyc8Uj"]}, {"action": 53, "resource": "zlu8c9mJvW93cqqn", "schedAction": 76, "schedCron": "unJ9f8eLg4YpQnFr", "schedRange": ["xleABkSgXHqdoFs9", "SF8tqpvt59Bzz0KY", "z2OFsMnVzxfPGWc4"]}, {"action": 28, "resource": "GzkhCIEexqIiUX2G", "schedAction": 90, "schedCron": "fbEL24Dlyt5aGnKm", "schedRange": ["zt8jDEKvV6RU5duK", "qqLTiUM9lTWOkw11", "jRMRm3azmD9VbPuK"]}], "roleName": "brM4hMylb87KErUA"}' \
    > test.out 2>&1
eval_tap $? 203 'AdminCreateRoleV3' test.out

#- 204 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId '9U08EBWsH1AGtplM' \
    > test.out 2>&1
eval_tap $? 204 'AdminGetRoleV3' test.out

#- 205 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'AsS9E5K7rI7qXC3R' \
    > test.out 2>&1
eval_tap $? 205 'AdminDeleteRoleV3' test.out

#- 206 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'Wok5beBqPMKQqRc0' \
    --body '{"deletable": false, "isWildcard": false, "roleName": "nEWNzDMV4z3Kdrhm"}' \
    > test.out 2>&1
eval_tap $? 206 'AdminUpdateRoleV3' test.out

#- 207 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'RHhaN0eSLpDkOid7' \
    > test.out 2>&1
eval_tap $? 207 'AdminGetRoleAdminStatusV3' test.out

#- 208 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'KP5COeJmxDCnVu5O' \
    > test.out 2>&1
eval_tap $? 208 'AdminUpdateAdminRoleStatusV3' test.out

#- 209 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'SpJSTux3ACBh6XJb' \
    > test.out 2>&1
eval_tap $? 209 'AdminRemoveRoleAdminV3' test.out

#- 210 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'NEHq0bedOCpS1bIE' \
    --after '4oMTPjlyQYSMhmHk' \
    --before '1bpbNK74P1nzS9a7' \
    --limit '80' \
    > test.out 2>&1
eval_tap $? 210 'AdminGetRoleManagersV3' test.out

#- 211 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'xJ17G0EIMljXSp7h' \
    --body '{"managers": [{"displayName": "mMnCdW9vkZ0CNZjH", "namespace": "Ay8wRfYquGis3oC3", "userId": "qeXCL6eRXCUiM6pE"}, {"displayName": "PqTt9HXjBxvTd2Rl", "namespace": "MnBJR9FAh1RpNmb0", "userId": "6mWg3GVmjpfdTnPr"}, {"displayName": "iFX3wmrebA2vNLSM", "namespace": "mQTWnkvbz6sHyRgC", "userId": "sPdLlfYlml3QR06v"}]}' \
    > test.out 2>&1
eval_tap $? 211 'AdminAddRoleManagersV3' test.out

#- 212 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'HROliLbkP5f9Shkn' \
    --body '{"managers": [{"displayName": "5mEs3yU47juoX0Rv", "namespace": "KJWARC0mYbfzZTa8", "userId": "lmBi9VfotWb0ZVP9"}, {"displayName": "gwTiAqoncCREu0AB", "namespace": "IQurpQHlvsGro9nJ", "userId": "UMLptpq7DC7QHKb6"}, {"displayName": "kTwgRtXKWRSBANVC", "namespace": "oYmYoOu0NPcG84GK", "userId": "gPNihSuStKHpS5SS"}]}' \
    > test.out 2>&1
eval_tap $? 212 'AdminRemoveRoleManagersV3' test.out

#- 213 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'V3e6nhvvYGTHyh3D' \
    --after 'fkvX1tIXA6ZukYvF' \
    --before 'K1OtILxPUy6O36qG' \
    --limit '46' \
    > test.out 2>&1
eval_tap $? 213 'AdminGetRoleMembersV3' test.out

#- 214 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'ETcg1MiwSHIPCWVa' \
    --body '{"members": [{"displayName": "YONBQ0cToNYkjsm8", "namespace": "cXgOhDwb4LwZSQGM", "userId": "tKPZ8FRy8VhTXu4L"}, {"displayName": "reb4LPCcoDZOTIJ4", "namespace": "LBAlG2rVLfFvUlKo", "userId": "cd4ImybLLkFlxv1M"}, {"displayName": "iTzwsisxZKnNBFf9", "namespace": "p7dmz8SqOELd87w3", "userId": "nY4s1N5cScemV4mU"}]}' \
    > test.out 2>&1
eval_tap $? 214 'AdminAddRoleMembersV3' test.out

#- 215 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'BuqDxMkmnRa2SAym' \
    --body '{"members": [{"displayName": "2V49NQ3SEKqHfPP6", "namespace": "EwtAoBjD5DcAoswK", "userId": "QwTKBgtK8VBWO7hf"}, {"displayName": "TEhQBiEpcE42NtKn", "namespace": "eD0QRmKTPZEg0OGf", "userId": "PPraFpxIZZlnIilM"}, {"displayName": "R2WjpKadiq2fSHdY", "namespace": "0l2G54f6z9kML6IL", "userId": "Pokt4JsEh2jKAWh0"}]}' \
    > test.out 2>&1
eval_tap $? 215 'AdminRemoveRoleMembersV3' test.out

#- 216 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'JqflyghSAqyONRar' \
    --body '{"permissions": [{"action": 19, "resource": "keFab5K3vlopG2ji", "schedAction": 85, "schedCron": "w1gtVySpwtkaNQVD", "schedRange": ["DCuEYnPZkW8CiY5T", "K4Jnjhqcl20WkvXO", "enYysuxtF5sJNpil"]}, {"action": 80, "resource": "jrbbQjqizd5HBJkN", "schedAction": 79, "schedCron": "efMmuMc709xR1sCC", "schedRange": ["PUP6Wm8pefFqxe69", "LnK20EgTNGoeO4xv", "7np7zlHYvQLZ7umr"]}, {"action": 59, "resource": "SZoDQf2dOdVNIKR5", "schedAction": 4, "schedCron": "IgaN8sg3F9xNOc6V", "schedRange": ["FAekdQZbaZlsy2Vg", "IQhdkOBXQK1D2pQ4", "sNSQYgiDIFfUjoiA"]}]}' \
    > test.out 2>&1
eval_tap $? 216 'AdminUpdateRolePermissionsV3' test.out

#- 217 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'ogTCj0NkoRrqwN7J' \
    --body '{"permissions": [{"action": 93, "resource": "ES0QZBhCvSJGeWMk", "schedAction": 99, "schedCron": "Ea9wIMzln3dpetST", "schedRange": ["CZwrZLWDj58Sisxd", "hol9d1WyZZ66Fygb", "MqLvcl6IiudZb4ih"]}, {"action": 38, "resource": "Ynwx1mvFDeqQJ79V", "schedAction": 18, "schedCron": "UnhHmLal9Dfo97cn", "schedRange": ["jfRecHeVmIYJ4QjI", "8EoPQo8k4CEp2BO5", "PUUvngdmbvIf9Qc4"]}, {"action": 97, "resource": "V60A9PcPv5YrtqNY", "schedAction": 100, "schedCron": "EnNqonkbu6cVLmHT", "schedRange": ["4XM0jE3Wg7FdSQAc", "GWUsKGOCFK4Puqpo", "UJIhSSc2WENkvMU8"]}]}' \
    > test.out 2>&1
eval_tap $? 217 'AdminAddRolePermissionsV3' test.out

#- 218 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'XAdxI2V1gCrdcMUm' \
    --body '["3YfoqHk4t0pPeWBi", "X0h0iCC8CNq6fwrm", "YQD3jfMv5MA55uDd"]' \
    > test.out 2>&1
eval_tap $? 218 'AdminDeleteRolePermissionsV3' test.out

#- 219 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '94' \
    --resource 'krAA7Gcg1MiwGMhC' \
    --roleId 'hcdy21OShoE09BMc' \
    > test.out 2>&1
eval_tap $? 219 'AdminDeleteRolePermissionV3' test.out

#- 220 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 220 'AdminGetMyUserV3' test.out

#- 221 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'f58GMvw6LJHb37Dr' \
    --extendExp 'false' \
    --redirectUri 'GdQnOAuDHHrCNblq' \
    --password 'jhCveCMwkm5rsAkB' \
    --requestId 'OyGm3RquMvfkLLV9' \
    --userName 'ZGTj8CCJrnuqPDCB' \
    > test.out 2>&1
eval_tap $? 221 'UserAuthenticationV3' test.out

#- 222 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'MUfxxqXQFuP4Czi7' \
    --linkingToken 'IAM0YiXC4rp8vKVZ' \
    --password 'qwceDdRKgi3zaUco' \
    --username 'poYDYBiljEh9U6n9' \
    > test.out 2>&1
eval_tap $? 222 'AuthenticationWithPlatformLinkV3' test.out

#- 223 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'JeB370cqlkvk2R3L' \
    --extendExp 'true' \
    --linkingToken 'ARdF8ktKe6X2E84l' \
    > test.out 2>&1
eval_tap $? 223 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 224 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'H2aF4DzHpSveG66s' \
    > test.out 2>&1
eval_tap $? 224 'RequestOneTimeLinkingCodeV3' test.out

#- 225 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'nYQLVCQuuJSC4vzd' \
    > test.out 2>&1
eval_tap $? 225 'ValidateOneTimeLinkingCodeV3' test.out

#- 226 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'lI02Vj8Pc2RhFOSs' \
    --isTransient 'false' \
    --clientId 'ZuNc5j5jKo8t9xgT' \
    --oneTimeLinkCode '6Lrr19mQ3X6MOG1o' \
    > test.out 2>&1
eval_tap $? 226 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 227 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 227 'GetCountryLocationV3' test.out

#- 228 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 228 'Logout' test.out

#- 229 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --codeChallenge '1SZwII1p0FcoTpXq' \
    --codeChallengeMethod 'plain' \
    --clientId 'XNavKcXHE7vL4nyd' \
    > test.out 2>&1
eval_tap $? 229 'RequestTokenExchangeCodeV3' test.out

#- 230 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'pp1tuOeBAdr6whWF' \
    --userId 'TO95zlzJzrz5kj49' \
    > test.out 2>&1
eval_tap $? 230 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 231 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ox40pYSr7IyFAaoN' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 231 'RevokeUserV3' test.out

#- 232 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'zZhmRTkng00jP6fa' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'jO4wDYJS9EsEvmvj' \
    --redirectUri 'vIFjrhnFSD5xjP31' \
    --scope 'dNCj4kb9ppskMGPn' \
    --state 'KmKLWccQb4NPjqBD' \
    --targetAuthPage '4fG1WhVUADbJlwiG' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'hbqjBadKHOfsUuQ5' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 232 'AuthorizeV3' test.out

#- 233 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'ANt5Gpnd2PsUwyC0' \
    > test.out 2>&1
eval_tap $? 233 'TokenIntrospectionV3' test.out

#- 234 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 234 'GetJWKSV3' test.out

#- 235 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'dTuALmRJbcwrOBdS' \
    --factor 'lHKIqzIV2JiXRLep' \
    --mfaToken 'kFD4A9aQAgxpbp1I' \
    > test.out 2>&1
eval_tap $? 235 'SendMFAAuthenticationCode' test.out

#- 236 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'RGIZAGn4GMiVKF39' \
    --mfaToken 'chKa2EiJl872K9R5' \
    > test.out 2>&1
eval_tap $? 236 'Change2faMethod' test.out

#- 237 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'bdDwAbhBEQuLPtd9' \
    --factor 'OGMyuDeAALNSefzq' \
    --mfaToken '7fZdMGpTAN3UdjO3' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 237 'Verify2faCode' test.out

#- 238 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId '6oiAXL46rofdS35v' \
    --userId 'YktR0gZMmxlwDPqL' \
    > test.out 2>&1
eval_tap $? 238 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 239 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'jHgvHkx9VQ4sftdj' \
    --clientId 'wdQ6lLpS9WmoeLPI' \
    --redirectUri 'aMw9FosFQGqfSsJE' \
    --requestId 'BK6nCDp82WkgpzzA' \
    > test.out 2>&1
eval_tap $? 239 'AuthCodeRequestV3' test.out

#- 240 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'nAc7yPMdEEeHlsPL' \
    --additionalData 'hgiPtYttY3yRb1jh' \
    --clientId '3BzlN46EjNtn7VlC' \
    --createHeadless 'false' \
    --deviceId 'FBr5nUdJus0HBnp0' \
    --macAddress 'FYqTpaRcp9hlSyvl' \
    --platformToken 'SI08JdLJ7vT8Urr8' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 240 'PlatformTokenGrantV3' test.out

#- 241 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 241 'GetRevocationListV3' test.out

#- 242 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'enaWl2F6J4UQVnj6' \
    > test.out 2>&1
eval_tap $? 242 'TokenRevocationV3' test.out

#- 243 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'YbYLWtTbgrWAh8Lq' \
    --simultaneousTicket 'eIe9ibNrsIhE2PLb' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'Lq5SqfUuCyBwONHR' \
    > test.out 2>&1
eval_tap $? 243 'SimultaneousLoginV3' test.out

#- 244 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'GuRVDzPDkJ04MPft' \
    --clientId 'HgTV8TfIKYs7cQEP' \
    --code 'zzxi2NsceoHvX0Cy' \
    --codeVerifier '3bDAtU09uHJ6X7Jg' \
    --extendNamespace 'sPeADZs8xBqQ63Z5' \
    --extendExp 'false' \
    --password 'wOlOSZeZ8J6aHcyk' \
    --redirectUri 'dljjrO0Lbes9FJIt' \
    --refreshToken 'BjVaI3Ym4GlPdwTX' \
    --username 'wLxAM4xmUIu6MhF5' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 244 'TokenGrantV3' test.out

#- 245 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'NvtMLsLZgzLH2VzF' \
    > test.out 2>&1
eval_tap $? 245 'VerifyTokenV3' test.out

#- 246 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'n4sIVnKH9FN9paTv' \
    --code 'UF0fuQ1DMbjKu8zJ' \
    --error 'OJGv4mOsKy89bBOU' \
    --openidAssocHandle '9fahtjd4O3ih5YD2' \
    --openidClaimedId 'JExHAKFcaYrFeHzO' \
    --openidIdentity 'EmrB3liJmw1gz3zC' \
    --openidMode 'MLO4buqTbp94F06D' \
    --openidNs 'BNdDBW9jAzVyCvnA' \
    --openidOpEndpoint 'PYHrMEWwZ3IgsiMV' \
    --openidResponseNonce 'nFASO5QBkOcg5wyj' \
    --openidReturnTo 'zIcJUnsb3YRVYCN4' \
    --openidSig 'ZlZzfR2vBrbJokFe' \
    --openidSigned '4134M6uisDtQTjTa' \
    --state '3uFyzCTQWV7H4vdk' \
    > test.out 2>&1
eval_tap $? 246 'PlatformAuthenticationV3' test.out

#- 247 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'vClENKfUSDsHpmbq' \
    --platformToken 'bg9Po9PRzHRiwuZT' \
    > test.out 2>&1
eval_tap $? 247 'PlatformTokenRefreshV3' test.out

#- 248 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode '6eJ8ExA51Z0mgdZF' \
    > test.out 2>&1
eval_tap $? 248 'PublicGetInputValidations' test.out

#- 249 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field '19wUrErjIZ8XoOkD' \
    > test.out 2>&1
eval_tap $? 249 'PublicGetInputValidationByField' test.out

#- 250 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'SqpM76DWKaMuWdQg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 250 'PublicGetCountryAgeRestrictionV3' test.out

#- 251 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'MfIbnuhLVLNvrh3X' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 251 'PublicGetConfigValueV3' test.out

#- 252 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 252 'PublicGetCountryListV3' test.out

#- 253 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 253 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 254 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'sfk0aSiFzn7qAkJC' \
    > test.out 2>&1
eval_tap $? 254 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 255 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'xlDydkMnnOEtnquK' \
    --rawPID 'true' \
    --body '{"platformUserIds": ["EwNMuTH21kL1QLm1", "tfaHgpsEvpuoLEdM", "tMTcCAGABSgx8aS7"]}' \
    > test.out 2>&1
eval_tap $? 255 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 256 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'rcMhaflVQHgVDIrt' \
    --platformUserId 'W47zk6K2N8lRr6VK' \
    > test.out 2>&1
eval_tap $? 256 'PublicGetUserByPlatformUserIDV3' test.out

#- 257 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId '7MI4nDZVsMcdtKEV' \
    > test.out 2>&1
eval_tap $? 257 'PublicGetAsyncStatus' test.out

#- 258 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'TlgmE0Pa25qNEu9v' \
    --limit '30' \
    --offset '16' \
    --platformBy 'Mu8l4MRtjjpuNK90' \
    --platformId '6cLFlpu94z2VBEUR' \
    --query 'M27OL0pVQeGeMn16' \
    > test.out 2>&1
eval_tap $? 258 'PublicSearchUserV3' test.out

#- 259 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "FTAjRNgRvfBC9WAX", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "aDNeyVCEv0feajMz", "policyId": "ir5vqohgbWnMlaHk", "policyVersionId": "JxeFHxX1ksP9qPBH"}, {"isAccepted": true, "localizedPolicyVersionId": "iV4uvtHruytG46b7", "policyId": "7f2xnhNwRzECoUiT", "policyVersionId": "LW0yyCY1RtXB8bxA"}, {"isAccepted": true, "localizedPolicyVersionId": "N5fecJowr2k2PJ8I", "policyId": "4Tn63iJN7M71D5Vp", "policyVersionId": "iDn4AK8WerfjiU5Q"}], "authType": "2Otx0sJxmIDzvt2f", "code": "NMn7yOuXqU1lQdP5", "country": "jnbRAJpmt0Zj84Ql", "dateOfBirth": "TlDgKZNrkA44Oqnc", "displayName": "IpkFds60dI49JrwB", "emailAddress": "Cl6bHyBdGB23QJ6j", "password": "maKtsjx5dmuu8loE", "reachMinimumAge": true, "uniqueDisplayName": "x18gmRJ4gK4iDfUQ"}' \
    > test.out 2>&1
eval_tap $? 259 'PublicCreateUserV3' test.out

#- 260 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field '0qTm2pMx4Hc33XP4' \
    --query 'N5uMRpyWXR8NTyag' \
    > test.out 2>&1
eval_tap $? 260 'CheckUserAvailability' test.out

#- 261 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["L0YJbXdoOotaOYK3", "QmtZ2hTwojQjkVX4", "0BmgFWQ3rnTCE2OO"]}' \
    > test.out 2>&1
eval_tap $? 261 'PublicBulkGetUsers' test.out

#- 262 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "iT8e7iHbqHSfmXez", "languageTag": "auxEiD2HkKpgAO8T"}' \
    > test.out 2>&1
eval_tap $? 262 'PublicSendRegistrationCode' test.out

#- 263 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "v8BXjSPfA2YPrXgQ", "emailAddress": "yDrwtcVlblTallKr"}' \
    > test.out 2>&1
eval_tap $? 263 'PublicVerifyRegistrationCode' test.out

#- 264 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "3nUZL4gT3SSmi2A7", "languageTag": "K5MMdYmbOnPh3anE"}' \
    > test.out 2>&1
eval_tap $? 264 'PublicForgotPasswordV3' test.out

#- 265 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'mP4Hp8RBWpju2BgT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 265 'GetAdminInvitationV3' test.out

#- 266 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'mkEDMd4hwmrNJs5q' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "r5Ex2QLPBu3ehgh2", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "dLEelgi5AKN7PGSl", "policyId": "F168h8iyPSznbM9c", "policyVersionId": "uwgDHcCtiWNIlF2b"}, {"isAccepted": true, "localizedPolicyVersionId": "L1IGI4TbqDhpYTx4", "policyId": "lqCDTUBAHTSe9MjU", "policyVersionId": "d9Yd0nl9zyLGBh7S"}, {"isAccepted": true, "localizedPolicyVersionId": "xXNmweM3drR6MHnc", "policyId": "SY90fSodLr3IN0Nl", "policyVersionId": "izgBd1jnvhkf3fT9"}], "authType": "gqM6baOQRzF5ItCA", "code": "bm9WEAnSUTE6gkSe", "country": "LXo0bohGVBLw7JZQ", "dateOfBirth": "u2zMqGVZayWPcL1q", "displayName": "Lb3lrGhFFOe2xgsE", "emailAddress": "WiBZhcyvDqrzGDS7", "password": "Shb5m2z2oujiFyD2", "reachMinimumAge": false, "uniqueDisplayName": "rnqLzrljbtF2EoVV"}' \
    > test.out 2>&1
eval_tap $? 266 'CreateUserFromInvitationV3' test.out

#- 267 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "I4cOoLsNoAyjM646", "country": "rpu1ctZMKQQmzYbB", "dateOfBirth": "mlqnfldLIzaFfC4A", "displayName": "Hmgl9NlwpNO48KkE", "languageTag": "mn4j9P21fz5WIVgs", "uniqueDisplayName": "7rxyEx1s4DXcEHPp", "userName": "kKnNo45VjHKisPzR"}' \
    > test.out 2>&1
eval_tap $? 267 'UpdateUserV3' test.out

#- 268 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "3sshoEOaNy1qyK74", "country": "W2SQZzwpPmnvh2SS", "dateOfBirth": "WPtrWhb6gghlX66X", "displayName": "3jeMRs0z8mNoLw5W", "languageTag": "BUvC0IwJM1MvmjCe", "uniqueDisplayName": "tzmtebkxVpawIW0s", "userName": "P39io7qCGbnBlIWl"}' \
    > test.out 2>&1
eval_tap $? 268 'PublicPartialUpdateUserV3' test.out

#- 269 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "Z1JcjobXYvo9herc", "emailAddress": "jQ8zUxOgKI7wEs8N", "languageTag": "olJ3kg51GvieuNHX"}' \
    > test.out 2>&1
eval_tap $? 269 'PublicSendVerificationCodeV3' test.out

#- 270 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "0NDNTcZUbHNqJ29n", "contactType": "fcDNR4s5AOGUtrGi", "languageTag": "AtgnRSTKrpEA86vi", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 270 'PublicUserVerificationV3' test.out

#- 271 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "2ywQrXftFc1k6hTM", "country": "lynhkdYYhgXaiqN2", "dateOfBirth": "Axoto1Q4ZxQdaLDx", "displayName": "ZvBXCjQrulyrc0Qp", "emailAddress": "mOYYZLVgkxCRk9J7", "password": "woUCNdVwoio6Uw0w", "uniqueDisplayName": "kA2uq9i4mabRPLCS", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 271 'PublicUpgradeHeadlessAccountV3' test.out

#- 272 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "BnKaxZxY0MLehcQj", "password": "3AxFPYaJnNxF6Utx"}' \
    > test.out 2>&1
eval_tap $? 272 'PublicVerifyHeadlessAccountV3' test.out

#- 273 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "m0DesSpfSYYIc4O6", "newPassword": "AeXwK9WdgE9xKeSJ", "oldPassword": "f9aFPMimCjkOt11D"}' \
    > test.out 2>&1
eval_tap $? 273 'PublicUpdatePasswordV3' test.out

#- 274 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'cYbRVyA4RgSAoc5F' \
    > test.out 2>&1
eval_tap $? 274 'PublicCreateJusticeUser' test.out

#- 275 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'N552IWAyUR4Pqoe1' \
    --redirectUri 'E97rPaEtUvVRTDQz' \
    --ticket 'cZNMSAEBRqZ41KsS' \
    > test.out 2>&1
eval_tap $? 275 'PublicPlatformLinkV3' test.out

#- 276 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'cJFFFquuGhi8Al45' \
    --body '{"platformNamespace": "6W9lMX7f5m6WExjZ"}' \
    > test.out 2>&1
eval_tap $? 276 'PublicPlatformUnlinkV3' test.out

#- 277 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'wb6iIpap02zjaCcg' \
    > test.out 2>&1
eval_tap $? 277 'PublicPlatformUnlinkAllV3' test.out

#- 278 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'WKJcBZ4nO1gWePGq' \
    --ticket 'mjZRlmH8azDmj84B' \
    > test.out 2>&1
eval_tap $? 278 'PublicForcePlatformLinkV3' test.out

#- 279 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'mT29XqT3JxjJBrnW' \
    --clientId 'wFmmLkSk5357G7hk' \
    --redirectUri 'TpUJIdYU9KTKqHFm' \
    > test.out 2>&1
eval_tap $? 279 'PublicWebLinkPlatform' test.out

#- 280 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'Au0ETzffFNmawZTI' \
    --code 'uMwkmEIufNORwFvg' \
    --state '6JSzUBpsMXrULHrQ' \
    > test.out 2>&1
eval_tap $? 280 'PublicWebLinkPlatformEstablish' test.out

#- 281 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId '71qJ0FB738ja7t88' \
    --code '5OxsX4wRqN3Zsz2r' \
    --state 'wA0R5ece6u3ppzVk' \
    > test.out 2>&1
eval_tap $? 281 'PublicProcessWebLinkPlatformV3' test.out

#- 282 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "9PuvyXeBVmoGCyRl", "userIds": ["ZW6n35yW5DTqn20p", "CZ4Fv23J119pzxXN", "9q8SuPdRXb0RLJkP"]}' \
    > test.out 2>&1
eval_tap $? 282 'PublicGetUsersPlatformInfosV3' test.out

#- 283 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "E1eGW3orYNcLb7EA", "emailAddress": "NQxMYZXTL7Z58QAf", "newPassword": "PyDvVcImDmldsy42"}' \
    > test.out 2>&1
eval_tap $? 283 'ResetPasswordV3' test.out

#- 284 PublicGetUserByUserIdV3
eval_tap 0 284 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 285 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DGVStb9pAeGgmxr7' \
    --activeOnly 'false' \
    --after 'qBqgHcn8tLMT6253' \
    --before 'etsbVFwyvAYphabi' \
    --limit '77' \
    > test.out 2>&1
eval_tap $? 285 'PublicGetUserBanHistoryV3' test.out

#- 286 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'w2B4VvSRHr3gguMl' \
    > test.out 2>&1
eval_tap $? 286 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 287 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'IshwvZcvdQrbWyQE' \
    > test.out 2>&1
eval_tap $? 287 'PublicGetUserInformationV3' test.out

#- 288 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'JXfEiE0IdZBwn77r' \
    --after '0.09036575004709335' \
    --before '0.7410364628629683' \
    --limit '23' \
    > test.out 2>&1
eval_tap $? 288 'PublicGetUserLoginHistoriesV3' test.out

#- 289 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'F4D8jvQnJiTDeNXm' \
    --after 'XKJe3g2vTJHciO4f' \
    --before 'wgoOyg5TlusLWZPn' \
    --limit '76' \
    --platformId 'CwnBtHOhVeDxQupY' \
    > test.out 2>&1
eval_tap $? 289 'PublicGetUserPlatformAccountsV3' test.out

#- 290 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'JoE4sMnXhrh9cIvF' \
    > test.out 2>&1
eval_tap $? 290 'PublicListJusticePlatformAccountsV3' test.out

#- 291 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'GkMqH8j3stoti0rG' \
    --body '{"platformId": "VADvEBj00Hko3OwV", "platformUserId": "H9JQTqbnY5WEgwf0"}' \
    > test.out 2>&1
eval_tap $? 291 'PublicLinkPlatformAccount' test.out

#- 292 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'oof4kzgqAz8TXMxb' \
    --body '{"chosenNamespaces": ["NBGTClg5muthomij", "KdCHeqAaWxXV81eS", "46iAFCYLrezZSfF0"], "requestId": "V1n3geCPJhZyWWzZ"}' \
    > test.out 2>&1
eval_tap $? 292 'PublicForceLinkPlatformWithProgression' test.out

#- 293 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PoVhebhsCR4IBDIF' \
    > test.out 2>&1
eval_tap $? 293 'PublicGetPublisherUserV3' test.out

#- 294 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId '7pjN9PGNm30fgDHO' \
    --password 'jRXPA3xgvu0orPiZ' \
    > test.out 2>&1
eval_tap $? 294 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 295 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'P50NcXVIwN5GnEFm' \
    --before '8MSKzIWac0JVgOAI' \
    --isWildcard 'false' \
    --limit '100' \
    > test.out 2>&1
eval_tap $? 295 'PublicGetRolesV3' test.out

#- 296 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'ALoc762SGyykiyho' \
    > test.out 2>&1
eval_tap $? 296 'PublicGetRoleV3' test.out

#- 297 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'false' \
    > test.out 2>&1
eval_tap $? 297 'PublicGetMyUserV3' test.out

#- 298 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'jAEDReqkjM77bMh9' \
    > test.out 2>&1
eval_tap $? 298 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 299 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["f2Vw2uMejqR08mcp", "Lz9HNYa6UHa1u54t", "ZNxPFSTg2QRKAKcu"], "oneTimeLinkCode": "jxgw3RFK6IU8kOgR"}' \
    > test.out 2>&1
eval_tap $? 299 'LinkHeadlessAccountToMyAccountV3' test.out

#- 300 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "NQULH2mymd8yWWLU"}' \
    > test.out 2>&1
eval_tap $? 300 'PublicSendVerificationLinkV3' test.out

#- 301 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'XfRm40qB53mFfL5o' \
    > test.out 2>&1
eval_tap $? 301 'PublicVerifyUserByLinkV3' test.out

#- 302 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'bPKzEJhjXp4S5omS' \
    --code 'iMwL2y6tFLc6Oz8M' \
    --error 'ivBYpg2BH5kulOVj' \
    --state 'SSZxMTQbR7Zwkny4' \
    > test.out 2>&1
eval_tap $? 302 'PlatformAuthenticateSAMLV3Handler' test.out

#- 303 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'EtD4KmR70QJgAuRv' \
    --payload '5Q1TsjvEy8ntnen3' \
    > test.out 2>&1
eval_tap $? 303 'LoginSSOClient' test.out

#- 304 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'd5TXmGDmtvP8Ft7p' \
    > test.out 2>&1
eval_tap $? 304 'LogoutSSOClient' test.out

#- 305 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'onm3wZNPimYSOBPF' \
    --code 'q6WrgJEXXSvxvV5x' \
    > test.out 2>&1
eval_tap $? 305 'RequestTargetTokenResponseV3' test.out

#- 306 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '21' \
    --namespace 'x5vKK879abE24q2e' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 306 'AdminListInvitationHistoriesV4' test.out

#- 307 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '0s1Tj4ATkaImy5Mu' \
    > test.out 2>&1
eval_tap $? 307 'AdminGetDevicesByUserV4' test.out

#- 308 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'j0cRVUrjGEK7fPam' \
    --endDate 'ZhG8Si9KoRsjyMQ4' \
    --limit '7' \
    --offset '18' \
    --startDate 'PmO7QzaYTaa22nYu' \
    > test.out 2>&1
eval_tap $? 308 'AdminGetBannedDevicesV4' test.out

#- 309 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId '8dQWQHumd9ReGrh0' \
    > test.out 2>&1
eval_tap $? 309 'AdminGetUserDeviceBansV4' test.out

#- 310 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "VssS3Mv306D2KXAi", "deviceId": "DATIlVSFLhAEfyRP", "deviceType": "BIf7cBo86MYhpmR5", "enabled": false, "endDate": "zEbbTRrL6KOd2uId", "ext": {"K0MNJYm4vTl9F7oh": {}, "7TNAK8O6edDP2kyS": {}, "oUbqgBbxhPejES3U": {}}, "reason": "HVdqXSdeFgeFuExH"}' \
    > test.out 2>&1
eval_tap $? 310 'AdminBanDeviceV4' test.out

#- 311 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'lrb7xhmWyvaULvkA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 311 'AdminGetDeviceBanV4' test.out

#- 312 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId '7SGNHU2rgyPYdoPH' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 312 'AdminUpdateDeviceBanV4' test.out

#- 313 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'NpZJAIq3Edps9JgK' \
    --startDate 'vdvaCKkvhfN1c6BJ' \
    --deviceType 'LrN5hRdvU8vJndPS' \
    > test.out 2>&1
eval_tap $? 313 'AdminGenerateReportV4' test.out

#- 314 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 314 'AdminGetDeviceTypesV4' test.out

#- 315 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'PNE4yfV02a3i5NVz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 315 'AdminGetDeviceBansV4' test.out

#- 316 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'hBU0j4kHwcPyj9Ft' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 316 'AdminDecryptDeviceV4' test.out

#- 317 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'wK7lN6rYRrKMH6jG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 317 'AdminUnbanDeviceV4' test.out

#- 318 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId '8Hr7X094KeTiSMb4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 318 'AdminGetUsersByDeviceV4' test.out

#- 319 AdminGetNamespaceInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 319 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 320 AdminGetNamespaceUserInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceUserInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 320 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 321 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 47}' \
    > test.out 2>&1
eval_tap $? 321 'AdminCreateTestUsersV4' test.out

#- 322 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "w9O1ANIHJhh4RmjH", "policyId": "AGg9Ef1ZSKLkXUcG", "policyVersionId": "095X18j6ArrUSWtS"}, {"isAccepted": false, "localizedPolicyVersionId": "BfWMFmFVXk858ORS", "policyId": "VOzLE0D9m4vXcajr", "policyVersionId": "LCCJYI09V9YNdrft"}, {"isAccepted": false, "localizedPolicyVersionId": "hJ9xputpnfngNdZS", "policyId": "i0G3wqy0yCfr4Nce", "policyVersionId": "uCfsBJ8PvXaulnf7"}], "authType": "EMAILPASSWD", "code": "Wz2abgOEdbkaeMhV", "country": "11vJikgrQ66kIAt4", "dateOfBirth": "xY8xvm1vOq4S31t6", "displayName": "Ku1x0eMdLEkIudxc", "emailAddress": "nd9cTuCzFVgOw1bH", "password": "Nh9l18LUTtdR9yff", "passwordMD5Sum": "e0T8DVrv5aBT1yUe", "reachMinimumAge": true, "uniqueDisplayName": "hgEiFvvLaVcKOkIQ", "username": "8XSjb9ysW7hJ4PSj"}' \
    > test.out 2>&1
eval_tap $? 322 'AdminCreateUserV4' test.out

#- 323 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": true, "userIds": ["U6qzl15SfKfh1f0A", "E8WjLn22moId2DWk", "1o394pzvHgrMdgr1"]}' \
    > test.out 2>&1
eval_tap $? 323 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 324 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["yWK4afHsHkrAnO47", "dGhsORNv7UXqGo5a", "xFfjs0V6bmIOLHTi"]}' \
    > test.out 2>&1
eval_tap $? 324 'AdminBulkCheckValidUserIDV4' test.out

#- 325 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'aJv0TGoPp6TE6Ga3' \
    --body '{"avatarUrl": "A3lP95YxKyyuEyrQ", "country": "eILPO5Ul70SJdvSX", "dateOfBirth": "UvTwPCj2xCCXNNHn", "displayName": "dgnC3gdUcrWqO1Nc", "languageTag": "bhLrFFnb2jJuO676", "skipLoginQueue": true, "uniqueDisplayName": "GWZ4JbIilVfo4RXI", "userName": "Y4IsJdB1X3kAXHrn"}' \
    > test.out 2>&1
eval_tap $? 325 'AdminUpdateUserV4' test.out

#- 326 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Xeb0RweF4OuGES4H' \
    --body '{"code": "YyE6WjmOPnITdXPd", "emailAddress": "PfI6pV8iIbU76lGJ"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminUpdateUserEmailAddressV4' test.out

#- 327 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'sdFzbIldG1yMWIla' \
    > test.out 2>&1
eval_tap $? 327 'AdminDisableUserMFAV4' test.out

#- 328 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'FiHiMX8APajUdL9Y' \
    > test.out 2>&1
eval_tap $? 328 'AdminListUserRolesV4' test.out

#- 329 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'bSLjgjIM5vmRnbdT' \
    --body '{"assignedNamespaces": ["VGqipnjcFdQjeMOQ", "jVagRpVxwgEgCmvn", "xYUiNnFdLO2rGfTI"], "roleId": "4TkGLC9YqhsNA1N9"}' \
    > test.out 2>&1
eval_tap $? 329 'AdminUpdateUserRoleV4' test.out

#- 330 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'hwp4h7RiRrzEtknr' \
    --body '{"assignedNamespaces": ["taThZutn964bU2y8", "l4svCo3ryv0bv4a5", "fu0cMZw4F6a1MVLo"], "roleId": "74EWMPQ0sJSdTsXj"}' \
    > test.out 2>&1
eval_tap $? 330 'AdminAddUserRoleV4' test.out

#- 331 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'HhCwORqIIrtTZgJj' \
    --body '{"assignedNamespaces": ["xcj4wGmQUo63pGWv", "fxVeyZ2erPh5w1Rk", "Zt2UdbVYFztdJlC2"], "roleId": "uvsuRFw48u6FHmjb"}' \
    > test.out 2>&1
eval_tap $? 331 'AdminRemoveUserRoleV4' test.out

#- 332 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'true' \
    --limit '91' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 332 'AdminGetRolesV4' test.out

#- 333 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "MGbyKwY1arrpr7t8"}' \
    > test.out 2>&1
eval_tap $? 333 'AdminCreateRoleV4' test.out

#- 334 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'lgwohsZzbvNU8Qi4' \
    > test.out 2>&1
eval_tap $? 334 'AdminGetRoleV4' test.out

#- 335 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'LUkVK5CYHH4zdYFr' \
    > test.out 2>&1
eval_tap $? 335 'AdminDeleteRoleV4' test.out

#- 336 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId '2mUhpoejS1RQQOTO' \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "v40fFV6vGszlhV9k"}' \
    > test.out 2>&1
eval_tap $? 336 'AdminUpdateRoleV4' test.out

#- 337 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'IIWRmE1byxlHi8ER' \
    --body '{"permissions": [{"action": 31, "resource": "6CNWDvhocpgZKeT3", "schedAction": 9, "schedCron": "Ep0TWZkiCtDP35aV", "schedRange": ["OqID6YejoAplEBL9", "WTAtXyOVgmokmmjm", "bkBFfjR59DkNp5UQ"]}, {"action": 62, "resource": "xf0vI4Nseacw2z8l", "schedAction": 60, "schedCron": "OqKE5NmBHyyiC5o5", "schedRange": ["oANjGAz1NSTfaqtg", "Z1mM0ySEcRudgt6T", "5WzXg3akPuoD7enz"]}, {"action": 94, "resource": "49P1j4fA3iYq8g3v", "schedAction": 48, "schedCron": "n6UWacCxpVdWbbQi", "schedRange": ["5KgKJtfqRldlWGQg", "CckkJU7eFWnZxVvH", "BXkzIY5vbvtuYTfV"]}]}' \
    > test.out 2>&1
eval_tap $? 337 'AdminUpdateRolePermissionsV4' test.out

#- 338 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId '1UdX5a3lbJK4lnO5' \
    --body '{"permissions": [{"action": 3, "resource": "PITqEoVgObLA4bOx", "schedAction": 35, "schedCron": "1Q64qmauero16UqN", "schedRange": ["BalksDhBtuLX5Gm9", "5kteV0ShcqdIEdFg", "O6juBSgGUJmvOjEU"]}, {"action": 22, "resource": "jJGxtKn88nHli23s", "schedAction": 55, "schedCron": "QzrNnDNlryYOFZyr", "schedRange": ["aHU6nSIUhN7KXAP1", "uaHUgu08fduEsE6c", "KDR119jVIZBY9O95"]}, {"action": 43, "resource": "dDHsP68abHxtupws", "schedAction": 87, "schedCron": "Dw1qZLlSOQeGIBsQ", "schedRange": ["OIc9ucsm2kIhlGhl", "zpwNb0WhYxphL7n8", "HVoYIRDF48HiXSGk"]}]}' \
    > test.out 2>&1
eval_tap $? 338 'AdminAddRolePermissionsV4' test.out

#- 339 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'S4FSWUkWcscgyHRM' \
    --body '["4KXAMb7sv4axebZS", "aIHN6oGatrnIumz0", "W0mgNoucsn1LtPcy"]' \
    > test.out 2>&1
eval_tap $? 339 'AdminDeleteRolePermissionsV4' test.out

#- 340 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'mSZgYjqKf14yM6cT' \
    --after 'E1e8zEaWjl2FkVt9' \
    --before 'Uhsxr8vb4cRmsDO3' \
    --limit '60' \
    > test.out 2>&1
eval_tap $? 340 'AdminListAssignedUsersV4' test.out

#- 341 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'MhxJJire4E8NQOXC' \
    --body '{"assignedNamespaces": ["2ppHCLvSvUo3K0vn", "2imIiUZUSXQt37cM", "NCBPAogzXVwfGnTu"], "namespace": "2947KuqlBEsdmTH5", "userId": "ycORiSiQqA4qz81u"}' \
    > test.out 2>&1
eval_tap $? 341 'AdminAssignUserToRoleV4' test.out

#- 342 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'jutNzKQ0QbtxXK7v' \
    --body '{"namespace": "4Fn0pQoeCSCeGtGX", "userId": "ib5ZDpfDWUDR8uE1"}' \
    > test.out 2>&1
eval_tap $? 342 'AdminRevokeUserFromRoleV4' test.out

#- 343 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["46tsozm892bjJAmP", "xEVWvVnnuH3Qo1dg", "aLlZYtF5OdqdoDbi"], "emailAddresses": ["xXEYEQwOfvewIijh", "kutMpWFgyjGHYndU", "cixxjbcIaVfKVUtQ"], "isAdmin": true, "isNewStudio": false, "namespace": "h8TVX4ZsFnEIYGHx", "roleId": "4VjlkSEGukjvVLTy"}' \
    > test.out 2>&1
eval_tap $? 343 'AdminInviteUserNewV4' test.out

#- 344 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "ce5OpYFuinHzVLeN", "country": "AVrhiK5yNQ2eHZDv", "dateOfBirth": "GzvTrJS4RT8DGOc7", "displayName": "Gz8VhwCSH0D2Myp1", "languageTag": "1qUHYeab0CVNf58a", "skipLoginQueue": false, "uniqueDisplayName": "PNkbnPcLMZe0JIVg", "userName": "jQFwdUhzElsXDlYl"}' \
    > test.out 2>&1
eval_tap $? 344 'AdminUpdateMyUserV4' test.out

#- 345 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 345 'AdminDisableMyAuthenticatorV4' test.out

#- 346 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'vQKDWVjm65i6EdR7' \
    > test.out 2>&1
eval_tap $? 346 'AdminEnableMyAuthenticatorV4' test.out

#- 347 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 347 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 348 AdminGetMyBackupCodesV4
eval_tap 0 348 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 349 AdminGenerateMyBackupCodesV4
eval_tap 0 349 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 350 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 350 'AdminDisableMyBackupCodesV4' test.out

#- 351 AdminDownloadMyBackupCodesV4
eval_tap 0 351 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 352 AdminEnableMyBackupCodesV4
eval_tap 0 352 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 353 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 353 'AdminGetBackupCodesV4' test.out

#- 354 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 354 'AdminGenerateBackupCodesV4' test.out

#- 355 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 355 'AdminEnableBackupCodesV4' test.out

#- 356 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 356 'AdminSendMyMFAEmailCodeV4' test.out

#- 357 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 357 'AdminDisableMyEmailV4' test.out

#- 358 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'litZ8L2nNMSC0O5t' \
    > test.out 2>&1
eval_tap $? 358 'AdminEnableMyEmailV4' test.out

#- 359 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 359 'AdminGetMyEnabledFactorsV4' test.out

#- 360 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor '06dReYhPSlJpuEeX' \
    > test.out 2>&1
eval_tap $? 360 'AdminMakeFactorMyDefaultV4' test.out

#- 361 AdminInviteUserV4
eval_tap 0 361 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 362 AuthenticationWithPlatformLinkV4
samples/cli/sample-apps Iam authenticationWithPlatformLinkV4 \
    --extendExp 'true' \
    --clientId 'kGw4XVP5xDE56HHP' \
    --linkingToken 'sTy3cVBCQc3bSCVF' \
    --password 'm8AfODatwBarohxx' \
    --username 'FLdRa9jlEOjING9c' \
    > test.out 2>&1
eval_tap $? 362 'AuthenticationWithPlatformLinkV4' test.out

#- 363 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData '0TpQbiwQIN422Jnh' \
    --extendExp 'true' \
    --linkingToken 'appeV3NuIEJ4NyKp' \
    > test.out 2>&1
eval_tap $? 363 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 364 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'KEq8ShVJN2VoL8A4' \
    --factor 'QcTXKf4gOFJpF7ff' \
    --mfaToken '5lrHCQCLINbeovHF' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 364 'Verify2faCodeV4' test.out

#- 365 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'ECrynwc4O7HTzlwV' \
    --codeChallenge 'fqvaVPj5LmPitmE7' \
    --codeChallengeMethod 'S256' \
    --additionalData 'cgKsF1e3OY2m1zhb' \
    --clientId 'VpOGiRZMnQ4gzHuB' \
    --createHeadless 'false' \
    --deviceId '5vIO7PeaPCPQPpAI' \
    --macAddress 'a2SldVvXAzVmaXAN' \
    --platformToken 'PnHQXDiEBDLDOUD7' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 365 'PlatformTokenGrantV4' test.out

#- 366 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'erNNy0peaDjdO7CY' \
    --codeChallengeMethod 'plain' \
    --simultaneousPlatform 'wS3KxWvqZEz5znT8' \
    --simultaneousTicket 'VLPQBngcnXmh2MRy' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket 'pr1bPDeaf9yPzkOT' \
    > test.out 2>&1
eval_tap $? 366 'SimultaneousLoginV4' test.out

#- 367 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge 'RQfdqCQa8Vm0YYGN' \
    --codeChallengeMethod 'plain' \
    --additionalData 'Jwb5oWDGKMxKUJoM' \
    --clientId 'X8moQa90OH0jDJhF' \
    --code 'Fk7uh3rYSc0JEnlf' \
    --codeVerifier '7yvqC3HMiI2uerxJ' \
    --extendNamespace 'Jg4xdt4kv67yb5jZ' \
    --extendExp 'true' \
    --loginQueueTicket '2pS2otnVX4ZxJfxi' \
    --password 'YXKzfdIiwWVQbLnK' \
    --redirectUri 'aHuixDMzmfCC4S6c' \
    --refreshToken 'oBGZNfJlfsCJrfAz' \
    --username '6yYl6TUPFD7Ttwe8' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 367 'TokenGrantV4' test.out

#- 368 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'PW9dUJexjEj07TDz' \
    --code 'q8k1GTu7etes73Iy' \
    > test.out 2>&1
eval_tap $? 368 'RequestTargetTokenResponseV4' test.out

#- 369 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "qbY6OKaVGwB4Smu2", "policyId": "v8lcTq4WTEaNiLuF", "policyVersionId": "0pPTVYRXhJ4OXH2W"}, {"isAccepted": false, "localizedPolicyVersionId": "3kfl3Q8CK1Jx0zVr", "policyId": "U4NLb77YJYuEKlJ2", "policyVersionId": "2U5H6QoFA8uEIgYr"}, {"isAccepted": true, "localizedPolicyVersionId": "hAXxurdFX0fWFhun", "policyId": "H75URY39omHmTAhi", "policyVersionId": "yrU1pnLUENRqFKIP"}], "authType": "EMAILPASSWD", "country": "6qDSQb1fzBDYjjdz", "dateOfBirth": "DUuJPlf18Updp5CZ", "displayName": "bIUP8eqgZdCOg2Ps", "emailAddress": "YLrEPRVddf17c2Es", "password": "TDkww1ksfn8gQs4E", "passwordMD5Sum": "7qkxrNBzaYJjKoJm", "uniqueDisplayName": "OVCYk6a0Ee4xSci0", "username": "7Dy1VKtu8XEml8fC", "verified": true}' \
    > test.out 2>&1
eval_tap $? 369 'PublicCreateTestUserV4' test.out

#- 370 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "wUGSDoUYUlWKginE", "policyId": "egSGt1lTVWxtsk0A", "policyVersionId": "PSAx9CXi4RzT2FdP"}, {"isAccepted": true, "localizedPolicyVersionId": "jIX9doeLHhfySs5f", "policyId": "RsngAU8KGCsbMwWX", "policyVersionId": "xc3M2rH4kHGzrYy0"}, {"isAccepted": false, "localizedPolicyVersionId": "YKJGdDAL3VmkiPtu", "policyId": "CcQbDxG4INC1DhhX", "policyVersionId": "auARqoC61dmOaOl1"}], "authType": "EMAILPASSWD", "code": "cQLIlLbVudQu3npe", "country": "1lpLCBYoanJkmtDe", "dateOfBirth": "Sl7isk5NgN1tO4jW", "displayName": "T6xY7iEWYtNMbZRS", "emailAddress": "4Kg78addm05XHxMc", "password": "tjyJi3b7A7Nldfy6", "passwordMD5Sum": "R6L1kRxvMf66hix4", "reachMinimumAge": true, "uniqueDisplayName": "qBXTD9bBYNc3bxjk", "username": "m6k6nsmDoNJMcfG2"}' \
    > test.out 2>&1
eval_tap $? 370 'PublicCreateUserV4' test.out

#- 371 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'MCRysEMdCbK78mJD' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "qvi3hBI77M39dtsr", "policyId": "0Pfq1bBoyYNK9hAF", "policyVersionId": "6DaFJlSm3cAlLiIs"}, {"isAccepted": true, "localizedPolicyVersionId": "rAj0TSOrsxzJ0rrZ", "policyId": "lJZQucf1KIhR9EgH", "policyVersionId": "iBDyxAR0rOtwlqG7"}, {"isAccepted": false, "localizedPolicyVersionId": "MM9aI2yoNsQOnanC", "policyId": "exEWKl2TeYXLqhtk", "policyVersionId": "cNEmEeraKLWkDGoc"}], "authType": "EMAILPASSWD", "code": "TBcdvRhYLxyFLnaP", "country": "1uQN8yh0cwlqfNdr", "dateOfBirth": "QorpsQWExQ6aKRwY", "displayName": "m0Q17RbKQypCXD1s", "emailAddress": "r5OHwDoWUK5sRihf", "password": "ei62yogUuOfT0EWd", "passwordMD5Sum": "UYCWqvOYul8BRmHN", "reachMinimumAge": false, "uniqueDisplayName": "Ku4gge52EgGbrh1H", "username": "mew4SklfUiMOVcRH"}' \
    > test.out 2>&1
eval_tap $? 371 'CreateUserFromInvitationV4' test.out

#- 372 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "fHnMzraKJj0pzqnP", "country": "qYfJVbK2fba3YjPn", "dateOfBirth": "jm3VHjc12kSL2kI1", "displayName": "lQ6uqhBtnnCcVylL", "languageTag": "A7qXMoRSmnkh1piv", "uniqueDisplayName": "KQratdOQfs5Hy4pG", "userName": "JWjrXNsdcDiyAsmW"}' \
    > test.out 2>&1
eval_tap $? 372 'PublicUpdateUserV4' test.out

#- 373 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "JELboE49MIhwXM6G", "emailAddress": "9HJ39srKsEE9HuAW"}' \
    > test.out 2>&1
eval_tap $? 373 'PublicUpdateUserEmailAddressV4' test.out

#- 374 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "3zoAYjBS0RjGUrT0", "country": "R38u1GYRWQ2YijuH", "dateOfBirth": "2v1Z7cSHzD4RWSaF", "displayName": "ehnbK3Ac36qSGYle", "emailAddress": "kIehHy4U67fax0Nw", "password": "QYcuBnfdYuQFUCGq", "reachMinimumAge": false, "uniqueDisplayName": "9OlWUCdeyoqgJ5Le", "username": "LQQ2u7IZHv2LfEve", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 374 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 375 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "agnavyyb9uOhElUi", "password": "RDAGCIgaIG61Eafr", "username": "2mVVUMRIezOLXfpL"}' \
    > test.out 2>&1
eval_tap $? 375 'PublicUpgradeHeadlessAccountV4' test.out

#- 376 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 376 'PublicDisableMyAuthenticatorV4' test.out

#- 377 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'El9MIHPaECeKK64w' \
    > test.out 2>&1
eval_tap $? 377 'PublicEnableMyAuthenticatorV4' test.out

#- 378 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 378 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 379 PublicGetMyBackupCodesV4
eval_tap 0 379 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 380 PublicGenerateMyBackupCodesV4
eval_tap 0 380 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 381 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 381 'PublicDisableMyBackupCodesV4' test.out

#- 382 PublicDownloadMyBackupCodesV4
eval_tap 0 382 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 383 PublicEnableMyBackupCodesV4
eval_tap 0 383 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 384 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 384 'PublicGetBackupCodesV4' test.out

#- 385 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 385 'PublicGenerateBackupCodesV4' test.out

#- 386 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 386 'PublicEnableBackupCodesV4' test.out

#- 387 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 387 'PublicRemoveTrustedDeviceV4' test.out

#- 388 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 388 'PublicSendMyMFAEmailCodeV4' test.out

#- 389 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 389 'PublicDisableMyEmailV4' test.out

#- 390 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'A794Smc78Jv47yFA' \
    > test.out 2>&1
eval_tap $? 390 'PublicEnableMyEmailV4' test.out

#- 391 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 391 'PublicGetMyEnabledFactorsV4' test.out

#- 392 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'ywzV6xQyoku6RM22' \
    > test.out 2>&1
eval_tap $? 392 'PublicMakeFactorMyDefaultV4' test.out

#- 393 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'cw6oyi5tNHymmQTF' \
    > test.out 2>&1
eval_tap $? 393 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 394 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "3n0gXba2lSzzvAfZ", "emailAddress": "pbS9z4TYG0sQsxFu", "namespace": "y1Tp1tyFJJgaCzzU", "namespaceDisplayName": "FC3cUYhbbxW7diGe"}' \
    > test.out 2>&1
eval_tap $? 394 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE