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
    --excludePermissions 'true' \
    > test.out 2>&1
eval_tap $? 108 'AdminListClientAvailablePermissions' test.out

#- 109 AdminUpdateAvailablePermissionsByModule
samples/cli/sample-apps Iam adminUpdateAvailablePermissionsByModule \
    --forceDelete 'true' \
    --body '{"modules": [{"docLink": "G20IgtiSQ6aJf1ww", "groups": [{"group": "d61dWhUl8RYyzs5n", "groupId": "GbpPELNG4yvDUPc6", "permissions": [{"allowedActions": [47, 81, 42], "resource": "SvISjQBVHQXJ6z9R"}, {"allowedActions": [88, 96, 59], "resource": "38MpOGJnubIrNk7p"}, {"allowedActions": [38, 44, 96], "resource": "FoqEQ5PwqaJI3xZt"}]}, {"group": "4Oq59g3qgcARQ1cC", "groupId": "q4bfx5Mat9Zo2utn", "permissions": [{"allowedActions": [38, 54, 42], "resource": "ONEkbifjGqOje3rH"}, {"allowedActions": [1, 55, 86], "resource": "mE1CHnRyDyzwXrjM"}, {"allowedActions": [38, 91, 40], "resource": "gyKWePH6uvOXu9fY"}]}, {"group": "R7uxvi0PDqTWJAux", "groupId": "YvTTBRTgypiwmlAe", "permissions": [{"allowedActions": [11, 24, 74], "resource": "C0wwOgm1YUBAc7md"}, {"allowedActions": [1, 91, 99], "resource": "Gm7FmQEJeVRlE5Sr"}, {"allowedActions": [6, 30, 66], "resource": "YHWuxqLpbqmMmWB6"}]}], "module": "aMQY14Go5IbQx95W", "moduleId": "zTXyL3TF4T3jG7IA"}, {"docLink": "X7VScpZirDPfUJg5", "groups": [{"group": "Lu2sP6k0LgH0nP9H", "groupId": "KgxAhfUYw7fmIojV", "permissions": [{"allowedActions": [41, 79, 47], "resource": "VMi76Y7ud1FNYp2D"}, {"allowedActions": [19, 17, 97], "resource": "sPbTs9P2hc5hiVvC"}, {"allowedActions": [55, 45, 34], "resource": "5D8ZKi9DMjB8QgVR"}]}, {"group": "RMT6yZyq4qeQRwaR", "groupId": "nZea6Uy2QXulxC1P", "permissions": [{"allowedActions": [90, 29, 53], "resource": "AP9zpS9kD2zg6afb"}, {"allowedActions": [67, 65, 44], "resource": "XyZOjR7nmjjYXQkz"}, {"allowedActions": [78, 74, 64], "resource": "v1Sha9PK15EJQ3rx"}]}, {"group": "juENMR1ni5rh87Kn", "groupId": "aKvbtcU3VU1imi5B", "permissions": [{"allowedActions": [0, 37, 95], "resource": "lv81l9qdBtUR5Gmm"}, {"allowedActions": [52, 32, 6], "resource": "Kag4z4p9dIqrAqUp"}, {"allowedActions": [78, 3, 19], "resource": "QYNA4lSgVHeJK68M"}]}], "module": "NnPILgf1CYOirCMN", "moduleId": "BKX6VyJynuqGyBlR"}, {"docLink": "4SV3KDbUnYGCEiSt", "groups": [{"group": "NUfH3UEeYLK2a7CN", "groupId": "4aed8Eyf4HegL58H", "permissions": [{"allowedActions": [35, 17, 32], "resource": "ClVQZNLVByEAb2a4"}, {"allowedActions": [94, 25, 79], "resource": "ORxGK1tpHtcsvpmx"}, {"allowedActions": [3, 35, 98], "resource": "eHX3eywUJohiEZpD"}]}, {"group": "JBAqpy8aO1eoZb2Q", "groupId": "F5Ovd1ykiAZ1FJBy", "permissions": [{"allowedActions": [13, 21, 51], "resource": "lpIn1DTc6zZ6ZwXQ"}, {"allowedActions": [57, 96, 13], "resource": "B5g0d5hWgplSp1l7"}, {"allowedActions": [40, 47, 21], "resource": "TPVTYXG1gvgVjyG7"}]}, {"group": "oVXeuetVkVhqGtfk", "groupId": "I7Al1XKOe3k87Wgl", "permissions": [{"allowedActions": [72, 15, 81], "resource": "9hx8ubQCOpxtqBMP"}, {"allowedActions": [12, 28, 55], "resource": "aMIjZh7LB3abfeMa"}, {"allowedActions": [84, 88, 91], "resource": "qissK4wFwtHQ3p3f"}]}], "module": "Z2SK53JTjilSMtdC", "moduleId": "pMSSPcQpfXEQT6Ec"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'true' \
    --body '{"groupId": "FDGkI1Dd0a6mpXvs", "moduleId": "SG5yU32cPiCH5Ztm"}' \
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
    --body '[{"field": "4eiDxJq6kip0bYz1", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["EUoOUswZYc8ixyPY", "4FH7nkWOYuwJY0y7", "y2Si7osUN4mJAGRS"], "preferRegex": false, "regex": "d6HcstNaD9kbEdsj"}, "blockedWord": ["jCQA63zKTorTlspP", "QJvjWtt1V7qHcJ2x", "OlPDFR58k8aiBrNR"], "description": [{"language": "xkfrZRU5sFoORfkP", "message": ["yt6KbStVansmc5iU", "Doe0lBT568rFOxk6", "sxLCYXj6Zjyqeb3A"]}, {"language": "b8KEkpL9p74BQNO9", "message": ["LHJ36ynYGOmrovd0", "hqFdcY6HbuHvVaWJ", "TnMMs83xzSkvoXjv"]}, {"language": "rms1a3AdfAxhwSQ1", "message": ["czj4i09QbEqGJfYx", "CQl2fl6G1dTz20YZ", "kuz8qK1jl12MI0MS"]}], "isCustomRegex": false, "letterCase": "p9Xqk0Mj453NurDh", "maxLength": 29, "maxRepeatingAlphaNum": 54, "maxRepeatingSpecialCharacter": 22, "minCharType": 11, "minLength": 40, "regex": "xsOqkWAyGwsj70Ur", "specialCharacterLocation": "4oa8Fj4hNmisc5ra", "specialCharacters": ["Vy0gfWvgUP8AWX0A", "yPH1oVXFvYpsPMQ5", "zUOnJdImhCog9IMj"]}}, {"field": "ScpwBwbPNDZJDuUO", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["2p5487hbhwEg7fzI", "9BznlYVnugsM5atC", "jjOckVb0uxyH2zwt"], "preferRegex": false, "regex": "5RjeTdSIcomAJL1N"}, "blockedWord": ["kBYOa0McGLSlinyX", "1Ng8BHj3icv7F9Qu", "7VK2GAIyrrw7WIh2"], "description": [{"language": "Mij3RCISlMrYadzn", "message": ["QNTFL4ESSkp9Ze75", "EvfrhGFbXcTaKU8M", "UKgoYkn7FwQnZsnW"]}, {"language": "GEQZlZTQ4Yl3QVF2", "message": ["GXQdShhpfQBbHEQ9", "J0FZbV4h8YYFcxHn", "MYIbKbIZDCupoGTk"]}, {"language": "BV1VlEw8CanmyrZd", "message": ["UdpcXbSX3572NY9m", "WTOCJQIsIyX9akkM", "xWfaYsLG69LYy90b"]}], "isCustomRegex": true, "letterCase": "saEi67dIv8bCkseQ", "maxLength": 21, "maxRepeatingAlphaNum": 60, "maxRepeatingSpecialCharacter": 29, "minCharType": 9, "minLength": 83, "regex": "4Od5p1q2XweTSumP", "specialCharacterLocation": "4qBTmtITXumoybjL", "specialCharacters": ["nake8ZHantZn3Z95", "muMgJPb1x3LuJJ06", "rjHe9G2DzYgGbIlD"]}}, {"field": "4FO6H8qkyrHsKg6k", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["9zBl2s50m2vKoWh4", "3QQcVrZFduViKZNJ", "HPicLowvHLq7t9Q6"], "preferRegex": true, "regex": "4k68Y6k8ZN2cPpMM"}, "blockedWord": ["QJdTo87bIfCeVVfE", "rEpn4PBh6H0Fe6mq", "PSJ3axHf6qnuRs4Q"], "description": [{"language": "jpEfxY4Cg9n9zDK9", "message": ["icoFRKLBQ7cjl96F", "yb9l5rQJ5WlYlIRz", "u9THZlrkAy5eQwIy"]}, {"language": "Epa3QgluObgeKDTl", "message": ["42MLS3MueV8DuXov", "e6qhky3Xiw80ETvu", "aitg7i2pZg4vFmNz"]}, {"language": "Rz18ZiOLab0Nk2Fv", "message": ["apIZmG2kkgktBeLA", "sx1d4PdS9MbqmO8e", "40p144Tr4SeC8ceK"]}], "isCustomRegex": true, "letterCase": "iEhehlk4kfrfn458", "maxLength": 15, "maxRepeatingAlphaNum": 20, "maxRepeatingSpecialCharacter": 98, "minCharType": 74, "minLength": 94, "regex": "xQC8mXK4DVHTNwVl", "specialCharacterLocation": "0XKHT0gBfLAF3Ufl", "specialCharacters": ["u74fry8a4l4Z8KUg", "JNs8Qz2Ganvzg5qS", "WUrxZFIVtf3r42og"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'j568wOQ3veUC194v' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'niCUcw446KqV3q6p' \
    --before 'YZzWGmcv4JSXeveN' \
    --endDate 'i7m2QYMMIwv8WnhR' \
    --limit '59' \
    --query 'pvs39sQUcQZjkX7x' \
    --roleId 'vcnxSwUII2uxmqsw' \
    --startDate 'x9yHVR8U3TRVI45X' \
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
    --body '{"ageRestriction": 28, "enable": true}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'FknEHibHbfMS71bo' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 56}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'BQr0JoTvLHva06Aw' \
    --limit '90' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "Y70lOp4ITIi32OiX", "comment": "p2ra0rzFPviJRHbt", "endDate": "HmkORzmWL3TdcVnj", "reason": "q4rNNljmtUCzOz3l", "skipNotif": true, "userIds": ["A2txQuyreUDKQdOm", "adED9rfIdLB2F14k", "fVuAuQ08b0SoUpye"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "yMABwW4HYF2GiLTo", "userId": "objtHdttHGJy1T1A"}, {"banId": "wjSXd7jsz5IVROeY", "userId": "95FQh0jrQj0laqxD"}, {"banId": "IW3QqWq2UTGZK7v7", "userId": "ahJFbiuJRd18cX1t"}]}' \
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
    --clientId 'SCadLqN3nsvd767K' \
    --clientName 'bUEWI4IE43DxuwjX' \
    --clientType '5VgxVt8eOVdGPwxq' \
    --limit '8' \
    --offset '23' \
    --skipLoginQueue 'false' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["LXrn5M4foGNGivYT", "ZOfJvVvfOJ9P9iKg", "gSdRJLWgDzLFD7vK"], "clientUpdateRequest": {"audiences": ["qyzwsb8nDiiXLNMz", "ERRw3s4yGUc1Joeu", "7iWnopvX3ZYLEkQ8"], "baseUri": "U74r1TN66msACMI6", "clientName": "yNWD4UHMkBYnxe5c", "clientPermissions": [{"action": 66, "resource": "i7fOMC3OwhiPyb84", "schedAction": 72, "schedCron": "NsAFhoXyBnDyjuGs", "schedRange": ["3Fvi3WgDRYtXPlBR", "hAI5d8GcqO75YQbY", "PFGTG0DM0kGl0stl"]}, {"action": 54, "resource": "ovApalnnCEi1mGAc", "schedAction": 68, "schedCron": "c7WsBZohv0ignuxU", "schedRange": ["051MHmvEQevJmEdr", "durfbVtlhDBXg33X", "VnTlK3ZtJLXNdq7j"]}, {"action": 26, "resource": "0fn6EgvKWYvwelZl", "schedAction": 63, "schedCron": "9ga62NYZa5zO9yRr", "schedRange": ["qOkLQtIR5zx0G4Jk", "qdFgbU3gpxdiyQi9", "7mn7h6xMF8mNYNFT"]}], "clientPlatform": "wuy52cHmNHCe6xTv", "deletable": true, "description": "7gyfrFgsWY8d5wRT", "modulePermissions": [{"moduleId": "Ofg9n9zCRe1bBfqy", "selectedGroups": [{"groupId": "yAqJAUThTGp4pkxv", "selectedActions": [32, 84, 45]}, {"groupId": "UPddFZ6QZgJXshtF", "selectedActions": [2, 63, 31]}, {"groupId": "bw09K8zyf29CIZXe", "selectedActions": [39, 3, 90]}]}, {"moduleId": "mPPsB92YYNW5dxwh", "selectedGroups": [{"groupId": "UtMYXdlzlKgS4yKy", "selectedActions": [49, 23, 48]}, {"groupId": "P7d2EO6SgXzKrqZk", "selectedActions": [51, 19, 6]}, {"groupId": "QENKAuSPlCAKJB0g", "selectedActions": [67, 2, 10]}]}, {"moduleId": "BaaDTieuwklkMyHq", "selectedGroups": [{"groupId": "uD009P8bBoFF2TS4", "selectedActions": [64, 18, 26]}, {"groupId": "6JbqbTCgMdcxsa5U", "selectedActions": [1, 100, 39]}, {"groupId": "UHRL6I9xx0IHp8fT", "selectedActions": [19, 20, 48]}]}], "namespace": "jDrhXu3Vs6cUvQc8", "oauthAccessTokenExpiration": 66, "oauthAccessTokenExpirationTimeUnit": "tKvaSQvqlLl0kxlh", "oauthRefreshTokenExpiration": 24, "oauthRefreshTokenExpirationTimeUnit": "yqdmB7dEwHS8ciVp", "redirectUri": "OGCYbz7m1dOZpv00", "scopes": ["q7WbR09qmgiGhv90", "hK1Iy2UZLjaXPsse", "8vwji7lBmqU2Mxh5"], "skipLoginQueue": true, "twoFactorEnabled": false}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["Edq8m5a6xPniWRA8", "Uz8qlM24nfps1FoL", "5BBvlUWMkRhoqT5X"], "baseUri": "7RqQ3JwuwhxMUtdl", "clientId": "NmVc3YlZQNhmaaE8", "clientName": "Qs5AHmhjGwhxz4t6", "clientPermissions": [{"action": 60, "resource": "3XC9kXzOJR5TqbT7", "schedAction": 45, "schedCron": "NptaAHW9eduOjRVW", "schedRange": ["3Nf8XwhE3Bqj5x9z", "7nkeBN5h9mor1qZd", "1l8YKon7k9f91LjW"]}, {"action": 17, "resource": "qQNTihKkeCNkLENS", "schedAction": 12, "schedCron": "6AZAkoN6qRYKgdJL", "schedRange": ["BVFfOgmv7nvWOSkn", "n4NOuzExm0cwUQrJ", "VcAMXILvAL7Y9kNL"]}, {"action": 86, "resource": "ofg3b9xAxrhdzciZ", "schedAction": 20, "schedCron": "0KlY2Lt3Z4U1YhQa", "schedRange": ["my5ynxCwkDXOzZfi", "U7THuTCjZ5dJt0vx", "6LK0IZq3wwUcECFC"]}], "clientPlatform": "BUqyB2m9EtgBDcIV", "deletable": true, "description": "u8ZE6GhyEt0e9UK6", "modulePermissions": [{"moduleId": "D0Tz5yIoiSx9FDH2", "selectedGroups": [{"groupId": "FjZUDF2efjZ53jWA", "selectedActions": [57, 69, 71]}, {"groupId": "HFZp227qNFJVwxnO", "selectedActions": [72, 61, 25]}, {"groupId": "e2pHe1RjCffNtTm6", "selectedActions": [15, 21, 23]}]}, {"moduleId": "sThIpDoeB7dFM4pG", "selectedGroups": [{"groupId": "FYkjPNYi39RaxP9b", "selectedActions": [24, 71, 76]}, {"groupId": "39izAJVJlcE696Fd", "selectedActions": [40, 64, 18]}, {"groupId": "YMBGTbI6VQVjCAI1", "selectedActions": [39, 87, 46]}]}, {"moduleId": "saW1TvMXGQDKtUT6", "selectedGroups": [{"groupId": "h670f5JF1YQnV5B4", "selectedActions": [55, 7, 43]}, {"groupId": "Tm2NGBj8w5wbtrpx", "selectedActions": [91, 54, 17]}, {"groupId": "OPdqF19aiRuGmjjk", "selectedActions": [25, 46, 82]}]}], "namespace": "JXDu6Agh2ZgTDmIH", "oauthAccessTokenExpiration": 42, "oauthAccessTokenExpirationTimeUnit": "05FOnyz4UcffsjEY", "oauthClientType": "6iNLTXPTzg9pn1bQ", "oauthRefreshTokenExpiration": 84, "oauthRefreshTokenExpirationTimeUnit": "8PVAEdi1OwTjSSDo", "parentNamespace": "92psECxE8XvFdO6N", "redirectUri": "EmbDs8jhTtgubUaF", "scopes": ["MXfoZxS5DKAbjX1g", "wsFmsT9a4kPVb3RW", "qS8GjIN1KBl042Ok"], "secret": "MCB8A8Pi5gw1rwWC", "skipLoginQueue": false, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'HP2c5a6kAf8o6yqe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'G8nbWHRJUQZzaRvz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'd1zSXCR8cmNGYmGR' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["5y1P1EDOXdQrvPUi", "8cmdJ469thyiPBMo", "ip1igRma2rdLx9aj"], "baseUri": "Gfg0FeP8NUyZdMrx", "clientName": "T0AMadf3WpNfXcKZ", "clientPermissions": [{"action": 24, "resource": "Px6QILxxjMrlj2bW", "schedAction": 77, "schedCron": "CHM61TSUSYysrRbQ", "schedRange": ["DAB6hJZqXistRWDd", "5SOPKdDxdnWFnA28", "eTeSItzjBaFWYrDh"]}, {"action": 29, "resource": "3HlgYDdMHC3rmwHN", "schedAction": 1, "schedCron": "YrWmpF2lCEXNKcLU", "schedRange": ["RAchXWCrTAzh77jI", "UsNf6ZpW8BlM0Dfi", "bpMFvRbvTHPUbWPs"]}, {"action": 87, "resource": "bjEUhivhIu9nIQf0", "schedAction": 11, "schedCron": "kh6qYYpHA3LAZxnB", "schedRange": ["qNVBEJkdeNzalVKh", "WUnCJjxRdPUvFLrb", "OTVRVqn6HM8joD5E"]}], "clientPlatform": "3oG2hg7ifrzw3uSi", "deletable": true, "description": "cjAC4aPPDNNfsn74", "modulePermissions": [{"moduleId": "yHr98DutpCuLcklX", "selectedGroups": [{"groupId": "y4qkU0HDyzdk78JI", "selectedActions": [71, 56, 33]}, {"groupId": "s3c376hsBUm3oqnt", "selectedActions": [37, 76, 79]}, {"groupId": "CEHsBtogh4F2C5sU", "selectedActions": [2, 39, 56]}]}, {"moduleId": "OrkcYfl3paQkn5T8", "selectedGroups": [{"groupId": "ZdhNwft8uz4FoIc1", "selectedActions": [12, 49, 93]}, {"groupId": "A2yacMwOMgMPsawe", "selectedActions": [75, 43, 31]}, {"groupId": "DBRJjChJqlky4r6h", "selectedActions": [61, 94, 47]}]}, {"moduleId": "8GUERQT8F19YYKdz", "selectedGroups": [{"groupId": "eXtlAMU4EK6GST2b", "selectedActions": [43, 53, 61]}, {"groupId": "NQ1T3yE0Gf73QN1A", "selectedActions": [18, 6, 80]}, {"groupId": "7E4aP96dsiG3zSrT", "selectedActions": [48, 10, 79]}]}], "namespace": "fN7TNA0hPMAPyFTs", "oauthAccessTokenExpiration": 4, "oauthAccessTokenExpirationTimeUnit": "HflPirQqaBeuTSDr", "oauthRefreshTokenExpiration": 58, "oauthRefreshTokenExpirationTimeUnit": "0WjaiNVHx9SOYGlF", "redirectUri": "LRPWn14NSAG92Npp", "scopes": ["6N5NaQ2XNQgbvu9X", "LVb4IoqC4vNDpTGy", "Kz0Q1STNdgiJD8mp"], "skipLoginQueue": false, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'hB2SSkIxnUFuncHq' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 59, "resource": "4WinMYbB8Z2d5jZo"}, {"action": 11, "resource": "dl8VhHJ2Y2b1wrWC"}, {"action": 70, "resource": "u5pUOHDbOn10y09n"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'pmZkO5j6vxy51QqU' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 34, "resource": "eCvtxrtuglMNwe7o"}, {"action": 24, "resource": "TKQuKRimCSRYXvdQ"}, {"action": 26, "resource": "8OWgI95PlK0pjylw"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '21' \
    --clientId 'N3f6LiwNP0svVYVz' \
    --namespace $AB_NAMESPACE \
    --resource 'tHELbf3Ye8k8KSry' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'BtgZKwYKBPykYSzU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 133 'AdminGetConfigValueV3' test.out

#- 134 AdminGetCountryListV3
samples/cli/sample-apps Iam adminGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    --filterBlacklist 'false' \
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
    --body '{"blacklist": ["iJY5ZOCpePKjF6Bg", "JXkajWuyM6WIsT3H", "Bmd5FBvKgtdF9jei"]}' \
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
    --limit '27' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 139 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 140 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Bzib43ZKsC2GrnxL' \
    > test.out 2>&1
eval_tap $? 140 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 141 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'hel3zgRu3ErGaNYm' \
    --body '{"ACSURL": "thkeAbLy4JIbfIPO", "AWSCognitoRegion": "vdgSRDaKFJmmTToj", "AWSCognitoUserPool": "fCNUWxZOWpeLaqRO", "AllowedClients": ["Uz0Qs8DK6SRPKx2R", "MYbAb1xGoCPy1rn6", "a5VHovCARFkH6XBG"], "AppId": "YhHRHgOVOiA01JjQ", "AuthorizationEndpoint": "XABVK1j36YwqawJl", "ClientId": "ombsPDWO8LAlYYqC", "Environment": "096ERJNDYTbDX9WN", "FederationMetadataURL": "eHOMO51pTAIsoJGf", "GenericOauthFlow": true, "IsActive": false, "Issuer": "x417XuC7C985BE5D", "JWKSEndpoint": "AyeHZ9uNezPZ8I8k", "KeyID": "mEbTaFGKocX8ASY6", "NetflixCertificates": {"encryptedPrivateKey": "7lMviis00K76PyA5", "encryptedPrivateKeyName": "d9K5NJpQCZGphnlz", "publicCertificate": "tOnR3AZSRzu45qlj", "publicCertificateName": "gWmGwjkKX8JFI1VB", "rootCertificate": "vqpqTEYAZdGoQHGv", "rootCertificateName": "QidoysAiPj5Kqb90"}, "OrganizationId": "6nfFC1aatpuuaySS", "PlatformName": "CyAuhUVyj61NYq6I", "RedirectUri": "5H03Tx2nsK2hIFP6", "RegisteredDomains": [{"affectedClientIDs": ["jrz5e8E7aPjNnnzT", "48e28LtJn6gL1E4I", "Kx27hicG2jU4vmG6"], "domain": "bQd8xKIfbCjTDkf4", "namespaces": ["YwI1IQW0ZY3QAf0H", "dDO1aLadD7wzPXhC", "v726GC9X8ucI7J7M"], "roleId": "KJd7w6ve4Kp26Jrb"}, {"affectedClientIDs": ["e2MPfN3pGwQTNSe1", "J3mqos8I9biyjcwY", "XBxzGwLUQwqVlcCQ"], "domain": "jH0YmsNLmRQO1wSC", "namespaces": ["C0X9QqbmN5MKOuuf", "UWStGNJRSqE7dqsO", "ZSJwyEgbEa5s6HMi"], "roleId": "UpDoWrrkfwGegJVL"}, {"affectedClientIDs": ["azzWene4kFK4twYF", "V0nOD4sGepPbkn0W", "uc5BtwIeNDO7tOrY"], "domain": "CilLeSlWExwVbfrp", "namespaces": ["6wBhefH1SbNqLqJQ", "NOFy1ZrbBuFXVbvJ", "ttX2BYnqndVK4XQI"], "roleId": "bm9EbhsRcSfOSeNV"}], "Secret": "vNzrEyIIkQBBkfW5", "TeamID": "zAuOzU1vLMbAdzbi", "TokenAuthenticationType": "ONLJUy10jaLSRw2U", "TokenClaimsMapping": {"cN06ttk4qanpT2dq": "SnC32mWzQFPTt7t7", "cR4kuHGc7XJ7fi3i": "TaOgAHNl54n25HUx", "pGTQSriIyJZl5RsV": "reihFyumpjxZQnXe"}, "TokenEndpoint": "JL3Fi2tFayqbKZOQ", "UserInfoEndpoint": "seVreY9xMKd1VKvk", "UserInfoHTTPMethod": "gRAoLuLcwJme1b61", "scopes": ["9ozXTq1ZrpGetCz0", "BrJ1MDG3uD0D4Mel", "YRUuHa69uVJy6kPd"]}' \
    > test.out 2>&1
eval_tap $? 141 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 142 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'RYwqcqmRLZGDEIvx' \
    > test.out 2>&1
eval_tap $? 142 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 143 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'tjeRmzbBw5rWLNDx' \
    --body '{"ACSURL": "oBs2QAprwvZqy8QN", "AWSCognitoRegion": "2ZQOsvzXcGaFuSBX", "AWSCognitoUserPool": "x1j1Sk2Pn3KFnYvP", "AllowedClients": ["q4sLC3qMsu0kgtKi", "zOCb4kU5w4bNRw8Q", "gPEtdVTors7fyKWE"], "AppId": "b11eO44na1XVSx3Y", "AuthorizationEndpoint": "8R6LHVg41dGtCh9M", "ClientId": "8OSSoTq5ix5ocmKq", "Environment": "gcBUJ0O8oMg4Vb1k", "FederationMetadataURL": "45FNyZgUJytFohtN", "GenericOauthFlow": false, "IsActive": true, "Issuer": "4q4EFhJXfBkOrMQv", "JWKSEndpoint": "nMEesGYd0HyJn66w", "KeyID": "v92q0rFt1a3tQuCP", "NetflixCertificates": {"encryptedPrivateKey": "M8jFalCD9dFua0LQ", "encryptedPrivateKeyName": "Ssrk24oAPSi9b0aU", "publicCertificate": "OiDVdlTzCjpY9XKM", "publicCertificateName": "Zl6wjg6JBifRyV28", "rootCertificate": "9AbkTPAfTRz7xgko", "rootCertificateName": "LKxMqvBX1aSjJtu3"}, "OrganizationId": "zo517wW4zCvKeWMI", "PlatformName": "S9ub6HDhDcDnZBhd", "RedirectUri": "0kdKmqhvYZz4SRx0", "RegisteredDomains": [{"affectedClientIDs": ["TaS6QJSBldZca9ge", "vij05WWjwUbGZoMe", "EsLfPKzsMZyo814l"], "domain": "BkZxEMFmNrfyW1ro", "namespaces": ["YQnz6LWOwJ26Oc57", "tDYf7DXmZVqczPWv", "BV0IG1vlHg0RgWpB"], "roleId": "DA1fFkEI8NJS9L76"}, {"affectedClientIDs": ["pQnAkAyepuehOKM8", "PMOrDLhSTGNceG4Y", "wM8h4aU5uR0Wy9MW"], "domain": "2yqRVaNJTSfD7OQr", "namespaces": ["MIRFJ98mmv6Z0pGF", "wUT2F7oKawaBAobS", "VzS2PYumfQ1S0GyA"], "roleId": "9PU7uxOr8Yi5NpEr"}, {"affectedClientIDs": ["ZlgqLgWLXmXF5dZs", "Xsg2R3Zum3bIrlIZ", "NcJ6QMwMBlCq4wSO"], "domain": "QCPx1RRHSuJ4GaHn", "namespaces": ["4yE1QgupgyIy0GYl", "9B4nAy0kqh9WHLVd", "7XruKF3G0CTjYord"], "roleId": "xNZ5jrXXSgrOENTq"}], "Secret": "NrI6viNqWlw8UyvG", "TeamID": "Z5j3QOXDvI6Lk4Dn", "TokenAuthenticationType": "skK3YfsjgBKwr5D2", "TokenClaimsMapping": {"IEXrsYDaPYhA1evX": "VBp0ur9ipujGpIcO", "rexrV2BDCjhV0ZCg": "bJr4P0s4J41ycgcv", "683mWJrByP4Ig9bR": "2GtNNqe45wBZZAJS"}, "TokenEndpoint": "6ZNL5fWBk88azQvP", "UserInfoEndpoint": "aL3hwpVtOx0i7QZw", "UserInfoHTTPMethod": "bzzgkGNYl5s7hYHQ", "scopes": ["TNSVv1j3HvZrrdgW", "TAwOSE0kzacEFBDn", "ea8UpDujUNc9in3e"]}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 144 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'cCHM2CvN8dSE0lNv' \
    --body '{"affectedClientIDs": ["F2cBIzITNrTyNTKh", "5IjAtHpPyt7CmiVU", "GLGYL5KVyNp9e369"], "assignedNamespaces": ["KQvuju7l3ea1M00Y", "qyQljmgYLGPF0YUD", "shccQ4CFyQOUc5KV"], "domain": "oeewlSDcgilzzAxA", "roleId": "sCeKb86Egj2089xp"}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 145 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'mlVIqpWZ8qhXEz2l' \
    --body '{"domain": "hszQtXzLfbqAYRgz"}' \
    > test.out 2>&1
eval_tap $? 145 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 146 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'GwtRotj5axOS0qqD' \
    > test.out 2>&1
eval_tap $? 146 'RetrieveSSOLoginPlatformCredential' test.out

#- 147 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'DUUfRCX4FWsJMpZL' \
    --body '{"acsUrl": "4saC8FBdBoWC9hiI", "apiKey": "zkAZmecFSrY9wfmb", "appId": "lGvPt3bPd7xOOIJ5", "federationMetadataUrl": "FrQaVD8FisJhX5Tt", "isActive": false, "redirectUri": "NFbVPdBJHzYCt8Tt", "secret": "jtra8OE3LZPe4qFb", "ssoUrl": "pOB5KVkK3q182AFI"}' \
    > test.out 2>&1
eval_tap $? 147 'AddSSOLoginPlatformCredential' test.out

#- 148 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '64RGurYyUuK1depq' \
    > test.out 2>&1
eval_tap $? 148 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 149 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'fXjeEBckRcAnsKGb' \
    --body '{"acsUrl": "mdBDvMQZMnif16Zk", "apiKey": "WIVYs3NzXspqGmEg", "appId": "4RWWgxm6VWpYBg2l", "federationMetadataUrl": "JzWdXSeQIiQFaO4c", "isActive": false, "redirectUri": "xXOjqpy2zIgnHAQy", "secret": "oNKzS3Ly7AZM22qP", "ssoUrl": "l6n4XmW3SvOZO00P"}' \
    > test.out 2>&1
eval_tap $? 149 'UpdateSSOPlatformCredential' test.out

#- 150 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId '4kbI1X4W81qNVhvA' \
    --rawPID 'true' \
    --body '{"platformUserIds": ["BXYz9sg9b8zOwyfb", "AIuGcA2rAIGL4cxn", "8EDWHJRPuTOJ361y"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 151 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'KTuEClfx877YixTV' \
    --platformUserId 'ZrP084u71IOulWHK' \
    > test.out 2>&1
eval_tap $? 151 'AdminGetUserByPlatformUserIDV3' test.out

#- 152 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'EpUqQMQC0mncpEhh' \
    --after '43' \
    --before '3' \
    --limit '68' \
    > test.out 2>&1
eval_tap $? 152 'GetAdminUsersByRoleIdV3' test.out

#- 153 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'MShdu5SMhBIa8u0l' \
    > test.out 2>&1
eval_tap $? 153 'AdminGetUserByEmailAddressV3' test.out

#- 154 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": false}, "userIds": ["JnCsujwyZI0kkgPt", "bo9irATdr5tsfVp0", "whK7oX1uqdbIe2aN"]}' \
    > test.out 2>&1
eval_tap $? 154 'AdminBulkUpdateUsersV3' test.out

#- 155 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'OW5P6eEdHBaqWea0' \
    --body '{"bulkUserId": ["7FUTFoyyGTEXeWp0", "SzIqHuhIsfMeknLT", "EidwChpdq2IU8X7n"]}' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserBanV3' test.out

#- 156 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Y3M3grVZGy9By3rY", "7RidtbVtp3Xbzc77", "07HUqCLE3XoX8VtT"]}' \
    > test.out 2>&1
eval_tap $? 156 'AdminListUserIDByUserIDsV3' test.out

#- 157 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["CHHqAB2CbQhiygKk", "POGuXb6M9iLhPGl3", "rZszG4rluobj0mbA"]}' \
    > test.out 2>&1
eval_tap $? 157 'AdminBulkGetUsersPlatform' test.out

#- 158 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["R2eGmQ9YKOEfItNY", "VujqhYgC9e6OCNZS", "mBld9AL6OqaVcOsE"], "isAdmin": true, "namespace": "eHCuBtQyeeEPu7ZM", "roles": ["tGA70tP72L8chbWv", "b4wahYU3yenNh4g1", "y6zDixnjk3sOpgrx"]}' \
    > test.out 2>&1
eval_tap $? 158 'AdminInviteUserV3' test.out

#- 159 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '33' \
    --platformUserId 'ZIqDlYX7RANjPUR2' \
    --platformId '21o2IZUO8AU1VsEt' \
    > test.out 2>&1
eval_tap $? 159 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 160 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 160 'AdminListUsersV3' test.out

#- 161 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '6wTQ7iQx0BlmtS1x' \
    --endDate 'vVC5RvPdq8n8gh3k' \
    --includeTotal 'false' \
    --limit '78' \
    --offset '85' \
    --platformBy 'E1g25pfQsnOYFUla' \
    --platformId '8wmAICns5H9JQQo0' \
    --query 'VtVDONRwelunJboh' \
    --roleIds 'Hp6Y7kjPHhcQ6QRJ' \
    --skipLoginQueue 'false' \
    --startDate 'bv3yayivAIUN1PMs' \
    --testAccount 'true' \
    > test.out 2>&1
eval_tap $? 161 'AdminSearchUserV3' test.out

#- 162 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["lut14uUH0TyhSUek", "Z2eFvGla3UCbk4NH", "O0vp9Iy4bcwM3Gvi"]}' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetBulkUserByEmailAddressV3' test.out

#- 163 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vE8qL5kX0wpbnzuk' \
    > test.out 2>&1
eval_tap $? 163 'AdminGetUserByUserIdV3' test.out

#- 164 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'cFiMFdgYe73rQ9nS' \
    --body '{"avatarUrl": "iPQjutyAyPMkfNUp", "country": "4Tmn2E85eIJtXX0p", "dateOfBirth": "pG4hWglDQVsOqfFP", "displayName": "yOxvcddIGrRIBUlB", "languageTag": "IFwABo6mXwt5dzBJ", "skipLoginQueue": false, "uniqueDisplayName": "i7rEXFrFcpO741Pp", "userName": "v2W37wRfwtusGVzc"}' \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserV3' test.out

#- 165 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TuxOdvqrsYqWVqq8' \
    --activeOnly 'true' \
    --after 'cc6tI3PbStqvJ0DJ' \
    --before 'Chfpb0yURcXbD9cB' \
    --limit '13' \
    > test.out 2>&1
eval_tap $? 165 'AdminGetUserBanV3' test.out

#- 166 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '38qNWE2tT41cw1AS' \
    --body '{"ban": "lL9jzjsU7FM8jJVk", "comment": "01vfvk6JEarwnda8", "endDate": "vRTbFRrUYzFXD2M4", "reason": "dsdhwM4LJekDTopX", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 166 'AdminBanUserV3' test.out

#- 167 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'peoALxndz0wK4zSm' \
    --namespace $AB_NAMESPACE \
    --userId 'Thwj8iyo2zHwhMna' \
    --body '{"enabled": false, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 167 'AdminUpdateUserBanV3' test.out

#- 168 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zTosV68raO660vrn' \
    --body '{"context": "74jJxERTobHHrhU1", "emailAddress": "VhuNIzHpn1V4mLdB", "languageTag": "4A3OTkm0b4CaohGa"}' \
    > test.out 2>&1
eval_tap $? 168 'AdminSendVerificationCodeV3' test.out

#- 169 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'cZXNmjdHXexrVK8u' \
    --body '{"Code": "FouwNzl3ss9bsTBS", "ContactType": "VJ2d5luZ6hG7YliP", "LanguageTag": "DRtdIzeAK8SrFchQ", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 169 'AdminVerifyAccountV3' test.out

#- 170 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'N3YKyJRdbK8FwYke' \
    > test.out 2>&1
eval_tap $? 170 'GetUserVerificationCode' test.out

#- 171 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gT2a3HWTw0lRaGgZ' \
    > test.out 2>&1
eval_tap $? 171 'AdminGetUserDeletionStatusV3' test.out

#- 172 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Nb9gn317zScbndYj' \
    --body '{"deletionDate": 21, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 172 'AdminUpdateUserDeletionStatusV3' test.out

#- 173 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'spmOJVraRS4rcocr' \
    > test.out 2>&1
eval_tap $? 173 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 174 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jRUYdxEPFmxEwK6U' \
    --body '{"code": "wHQL6N0B8GQKAflN", "country": "y7awCo3CMFGGr8c4", "dateOfBirth": "bL1NAOap3qlNeOZj", "displayName": "8geK40MIoWufqcEB", "emailAddress": "RvprR1M19SxAgTNq", "password": "GViZNS2qwCjEqFa7", "uniqueDisplayName": "vbVH2U8pxecLfYbO", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 174 'AdminUpgradeHeadlessAccountV3' test.out

#- 175 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'G21haSVumVeIF9X2' \
    > test.out 2>&1
eval_tap $? 175 'AdminDeleteUserInformationV3' test.out

#- 176 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '9RlY7kjbUG7Jw2fq' \
    --after '0.4967846123265264' \
    --before '0.09103697861713345' \
    --limit '14' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserLoginHistoriesV3' test.out

#- 177 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Slx6dfWwTEUtikZm' \
    --body '{"languageTag": "Pyd4SJiqRT0MbkKe", "newPassword": "AE7GS7t7oiF7Jf7p", "oldPassword": "mmKEWgDngqTD3Vnd"}' \
    > test.out 2>&1
eval_tap $? 177 'AdminResetPasswordV3' test.out

#- 178 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'buH7luRGlgBvaL4s' \
    --body '{"Permissions": [{"Action": 21, "Resource": "AyTQbZweN7KYAfR2", "SchedAction": 16, "SchedCron": "YaxJj09Wfi8q3lbH", "SchedRange": ["3dimPuXFNCqjqOMr", "Qq7LYcLC34voPju5", "IPHDU5kQen8OWaEw"]}, {"Action": 55, "Resource": "nJo3IGhrWL87Rmuk", "SchedAction": 80, "SchedCron": "UkBIalkDLLLn3cyf", "SchedRange": ["CySrraDpOFicvYcf", "XaT5zlYwsLlG7ZIU", "oNgB6fJXW1mjTLRt"]}, {"Action": 39, "Resource": "Az6xlEp8XPejsbib", "SchedAction": 6, "SchedCron": "H0jGP8ZcLroxOTEE", "SchedRange": ["R71GYjYJxiyEnDco", "kRjtbMdbfBQ0vSJO", "wS0RdQfE9lRyjOAd"]}]}' \
    > test.out 2>&1
eval_tap $? 178 'AdminUpdateUserPermissionV3' test.out

#- 179 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId '8zfsvcPryqpzadfy' \
    --body '{"Permissions": [{"Action": 55, "Resource": "nKOBBxBApJSC27fU", "SchedAction": 68, "SchedCron": "vmpVAD1UogwUXV2b", "SchedRange": ["oZ71B07sTpSAJAW0", "SNxms8YbuIOz0cjI", "a1jvsbaHTsH0VduP"]}, {"Action": 15, "Resource": "zj0p195FgnJKDp3X", "SchedAction": 72, "SchedCron": "1wxo6C250Nn0GO70", "SchedRange": ["EqOjIJnFjH9KgBxj", "18y3cCmVraovykP0", "nmdsWvtZBv6LxTqW"]}, {"Action": 84, "Resource": "qo7B4wkIuBOJVRt0", "SchedAction": 21, "SchedCron": "TGBTgcDmOdxdmdoZ", "SchedRange": ["2LgcAewdysUc27zc", "Du2nlO5Q7SvikPbD", "7O3iklRUGWLUUFur"]}]}' \
    > test.out 2>&1
eval_tap $? 179 'AdminAddUserPermissionsV3' test.out

#- 180 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WkwPam8UD9FXAbx0' \
    --body '[{"Action": 69, "Resource": "Qz5sMRqn0cam55Da"}, {"Action": 46, "Resource": "mPy3oSRth3iCrpKy"}, {"Action": 11, "Resource": "mKUgrygI83z1DDdH"}]' \
    > test.out 2>&1
eval_tap $? 180 'AdminDeleteUserPermissionBulkV3' test.out

#- 181 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '60' \
    --namespace $AB_NAMESPACE \
    --resource 'tSg2GfCnZaZijCPN' \
    --userId 'IS2zMy5Uw1CVGRWK' \
    > test.out 2>&1
eval_tap $? 181 'AdminDeleteUserPermissionV3' test.out

#- 182 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'w3A2j8Oa9jXICdXM' \
    --after 'MTxShCAi2fScX8wB' \
    --before '2Cp9Q6jj94DNX55z' \
    --limit '22' \
    --platformId '4zyEk6U3FAt4biC5' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserPlatformAccountsV3' test.out

#- 183 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'GzGKjasB4lW2RFtu' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetListJusticePlatformAccounts' test.out

#- 184 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'MkiyjmgGneeZs8Nl' \
    --userId 'MpBuEsBq5Oj8iDtc' \
    > test.out 2>&1
eval_tap $? 184 'AdminGetUserMapping' test.out

#- 185 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'yYChno7itJ8kjlwR' \
    --userId 'uQZUIfuK0tiJnaVR' \
    > test.out 2>&1
eval_tap $? 185 'AdminCreateJusticeUser' test.out

#- 186 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'ojsNTniljbYrTkyi' \
    --skipConflict 'false' \
    --body '{"platformId": "94dyAkQRq9qmmc49", "platformUserId": "iFfcndXuJv13L4IN"}' \
    > test.out 2>&1
eval_tap $? 186 'AdminLinkPlatformAccount' test.out

#- 187 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'erIQ23lE2SuuClOS' \
    --userId 'gfQfSG8l9RjXq3pu' \
    --body '{"platformNamespace": "4rC2ikWdv5yJxUlK"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminPlatformUnlinkV3' test.out

#- 188 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'gP6WfjhCU8HSY7G3' \
    --userId 'kIkYRvgKlWTIxr7m' \
    > test.out 2>&1
eval_tap $? 188 'AdminPlatformUnlinkAllV3' test.out

#- 189 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9skBpiHn2r7bXhJT' \
    --userId 'p4gNhYfV5AixWRSz' \
    --ticket 'kJnsLJeoLobHuJym' \
    > test.out 2>&1
eval_tap $? 189 'AdminPlatformLinkV3' test.out

#- 190 AdminDeleteUserLinkingHistoryByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingHistoryByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'pMcspHWE5C5RawIJ' \
    --userId 'DSk7bbhEK9WH3j71' \
    > test.out 2>&1
eval_tap $? 190 'AdminDeleteUserLinkingHistoryByPlatformIDV3' test.out

#- 191 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7kXhm9CdqE8LuJtv' \
    --userId 'ChWZeOY8vlFjzf3g' \
    --platformToken 'yZ1VuS9zOJb9rIwf' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 192 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'j25gcXsvBWvbEgKF' \
    --userId 'RBnGdZ0b16WJXzjR' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserSinglePlatformAccount' test.out

#- 193 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hCc4ymKRfwKQCqQz' \
    --body '["ixLohBPh9k3SsF3L", "QqP3Al2UPx5byard", "JuDqE7pvrlViqita"]' \
    > test.out 2>&1
eval_tap $? 193 'AdminDeleteUserRolesV3' test.out

#- 194 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'AhussPlHhhJjIfot' \
    --body '[{"namespace": "UROwp3ivLFzWIpBV", "roleId": "TSY0n9ctJA567YGi"}, {"namespace": "jc54LxUO7ddIzWmy", "roleId": "g63x3T1MUtr0rY6C"}, {"namespace": "1qBPfG2KyMwJLRMF", "roleId": "Fmk98GOxuKNiEKfu"}]' \
    > test.out 2>&1
eval_tap $? 194 'AdminSaveUserRoleV3' test.out

#- 195 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId '1xYEHCyOs7x8wvJv' \
    --userId 'qpYbfSLPS7HCpMH8' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddUserRoleV3' test.out

#- 196 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'Oo62uWbbIJkQ8NuJ' \
    --userId 'IFZJvbCoS5GE7bXB' \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteUserRoleV3' test.out

#- 197 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'MOQ69crgNj01P60v' \
    --body '{"enabled": true, "reason": "xVjfR42bqGMygytt"}' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateUserStatusV3' test.out

#- 198 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId '730lkWYdg5nI56kZ' \
    --body '{"emailAddress": "Oemy28XsWXIGWn4y", "password": "D8qvfTXN7xp50KEy"}' \
    > test.out 2>&1
eval_tap $? 198 'AdminTrustlyUpdateUserIdentity' test.out

#- 199 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'yyWsWu0r2PQ1hueB' \
    > test.out 2>&1
eval_tap $? 199 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 200 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId '72CHdTpROFiYYhl2' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "MDKKFmyVblBGoPBl"}' \
    > test.out 2>&1
eval_tap $? 200 'AdminUpdateClientSecretV3' test.out

#- 201 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'qM42FQdN0OAIavwM' \
    > test.out 2>&1
eval_tap $? 201 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 202 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'dcHmmk8YBou9IfXe' \
    --before 'Vx0oChlSVlYMVlkT' \
    --isWildcard 'true' \
    --limit '34' \
    > test.out 2>&1
eval_tap $? 202 'AdminGetRolesV3' test.out

#- 203 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "managers": [{"displayName": "RSqDC9sT2Ms6hBsb", "namespace": "RRPxKeYYCigvfEaA", "userId": "Z2jiyfB7KeGTykHi"}, {"displayName": "hAqSn3ZlPB9R0DTN", "namespace": "Y8p7FfGR9RIvpJwp", "userId": "GbYRF76F1YbyFoSr"}, {"displayName": "i45YtEBNbv0esYnI", "namespace": "97KV2yGCw5OhRHdi", "userId": "OwW3HsoqmxqGYBVa"}], "members": [{"displayName": "iICHKy9iSnBHwavH", "namespace": "OHVZWBdDDYx5IBxs", "userId": "6apBGWkoKkalt1rk"}, {"displayName": "9e8xzGHibWlZx81A", "namespace": "R1P7Ms2PmQ7uvbej", "userId": "qqFXv3leH0NLvzPe"}, {"displayName": "z4uiwOOe90OesgZE", "namespace": "xfzB3hCya5jdrIH1", "userId": "4lbkSzrWICesNqnY"}], "permissions": [{"action": 93, "resource": "nnDpJ4ztKEvjBVsY", "schedAction": 94, "schedCron": "HhuqqfjG0dxGqr4B", "schedRange": ["Z0G51Qmj0LtrTTjn", "08z2SiKDRtz8mkvp", "UV5WS3SZgrvRfDpj"]}, {"action": 1, "resource": "JgRkhavxlBgSQKLU", "schedAction": 22, "schedCron": "OsdfGvE3cMziXCn0", "schedRange": ["D5glPezeJjbF6Jsc", "h7LqcOjlwXkI7loD", "70cQ04R3tCVYScO7"]}, {"action": 62, "resource": "SfLcfiEqZq6heeN3", "schedAction": 49, "schedCron": "6DAlmtP0sIBDNJ9o", "schedRange": ["X4GYWMCj3MThQRtl", "O4B6ISmEcSNYnOw1", "tHyJQ7e6CddmIeiV"]}], "roleName": "dAjKHBXBVoeY0Ned"}' \
    > test.out 2>&1
eval_tap $? 203 'AdminCreateRoleV3' test.out

#- 204 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'Lb4JGykg02ozknDO' \
    > test.out 2>&1
eval_tap $? 204 'AdminGetRoleV3' test.out

#- 205 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'qc91dM95YEGGEafi' \
    > test.out 2>&1
eval_tap $? 205 'AdminDeleteRoleV3' test.out

#- 206 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'VHYhkFu9SibnYFhz' \
    --body '{"deletable": true, "isWildcard": true, "roleName": "F9PjxOaLvXr77ZKo"}' \
    > test.out 2>&1
eval_tap $? 206 'AdminUpdateRoleV3' test.out

#- 207 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'vGVxoAm2AORNDVbE' \
    > test.out 2>&1
eval_tap $? 207 'AdminGetRoleAdminStatusV3' test.out

#- 208 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'xN2HTGPqa0g6nfpN' \
    > test.out 2>&1
eval_tap $? 208 'AdminUpdateAdminRoleStatusV3' test.out

#- 209 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'cLHEpJklMLTc0UOV' \
    > test.out 2>&1
eval_tap $? 209 'AdminRemoveRoleAdminV3' test.out

#- 210 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId '0xGO7OVGlcoLVMNM' \
    --after 'BU5DwJgqQFKLD34e' \
    --before 'IhdW2tEGEIrthAYq' \
    --limit '47' \
    > test.out 2>&1
eval_tap $? 210 'AdminGetRoleManagersV3' test.out

#- 211 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'fdnY6lOVJOXL63X7' \
    --body '{"managers": [{"displayName": "6m4w6CANruILgSl2", "namespace": "abSwZJ5MjEWrBAnl", "userId": "tpkmjEhjaDUL5kgS"}, {"displayName": "BVg8QKHLMFQkWZeg", "namespace": "6zNLgCgfeaceEUA1", "userId": "pYcEmdvrhIoMALhU"}, {"displayName": "1KghdXqzHVFYDyRJ", "namespace": "2JLweNtsNR7kbs9u", "userId": "ugWEcOgkeg1EaDjH"}]}' \
    > test.out 2>&1
eval_tap $? 211 'AdminAddRoleManagersV3' test.out

#- 212 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'iuePYG2M8fLaF9aa' \
    --body '{"managers": [{"displayName": "4fpsYCHSRBDSDxtM", "namespace": "AidHjngoiYaAZhuo", "userId": "kaGznOkFHMYEf9De"}, {"displayName": "8yIpYF3JeFqYSNUV", "namespace": "zXx8yWnPdGM2t8F4", "userId": "soGxhaEv8M4Xb6iX"}, {"displayName": "8yKbhE2Wj1YRPqiP", "namespace": "kVeI87hj61T9NSoD", "userId": "yoKYHmx0JVbd9maU"}]}' \
    > test.out 2>&1
eval_tap $? 212 'AdminRemoveRoleManagersV3' test.out

#- 213 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'kLFDvzglX41WL1ug' \
    --after 'fmD294dLh7dYzOT9' \
    --before 'iteRFPljHpEhwXt9' \
    --limit '67' \
    > test.out 2>&1
eval_tap $? 213 'AdminGetRoleMembersV3' test.out

#- 214 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'XvBFmbWVoDDuzGyB' \
    --body '{"members": [{"displayName": "UT8kKaJjZY80X0VS", "namespace": "Oaj4tLmgrnk4x7oE", "userId": "uzMc3b3qTdOEWM1Y"}, {"displayName": "Z6Kga4T5KD8gDSh2", "namespace": "QW45U7MUpgalc10b", "userId": "oqTIPWl3B8wleWVi"}, {"displayName": "9qS22Z7uiPXedxCg", "namespace": "zy0tTRvwIT7OKN2q", "userId": "SfV2V3QZfJ8CrLnU"}]}' \
    > test.out 2>&1
eval_tap $? 214 'AdminAddRoleMembersV3' test.out

#- 215 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId '9TTMyIrJOPAiEWex' \
    --body '{"members": [{"displayName": "z8F14MuXT3aIcYc5", "namespace": "5x1j1hhKxSRSB1yZ", "userId": "vCd0BdiBLm6BJITx"}, {"displayName": "5ZMxduyHEoO8J3J8", "namespace": "Kply0u85indZLPm9", "userId": "rcmPvt5eRaHUqiLL"}, {"displayName": "eUC9eIbkmjv2HRAy", "namespace": "KJIbBo8knp5D6OyT", "userId": "rvF9rvwtGL8rs8QW"}]}' \
    > test.out 2>&1
eval_tap $? 215 'AdminRemoveRoleMembersV3' test.out

#- 216 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'SFOWK6P3hPu7fxCb' \
    --body '{"permissions": [{"action": 95, "resource": "K9XXYjxApY65GYnN", "schedAction": 58, "schedCron": "yDuF66u3lXStMCtb", "schedRange": ["FQiP93DUTrE0lPai", "IYKWyUevveDWuCMV", "j9ccTJyuJfzfNUXY"]}, {"action": 26, "resource": "SfT8MRwrNICEzMEL", "schedAction": 25, "schedCron": "bKsJNRr7McMGGge4", "schedRange": ["7deIjuCogeHpihbd", "JBq2h5jQJMRp2Do6", "exjvLNsNcXZMVOY8"]}, {"action": 45, "resource": "YoSjA97jJLFTnQ1I", "schedAction": 87, "schedCron": "NnHewwmcRVc0YQdU", "schedRange": ["1pFEfDm9HQ6lws5U", "bVIcRRmLH63DaS7H", "v4Az0e6ZETAj2Vrp"]}]}' \
    > test.out 2>&1
eval_tap $? 216 'AdminUpdateRolePermissionsV3' test.out

#- 217 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'FmdepFTKQiOL2U23' \
    --body '{"permissions": [{"action": 0, "resource": "a8P4PPm8iX0sxlVn", "schedAction": 98, "schedCron": "YoNyKWq0Sp6PWEY8", "schedRange": ["gAvtMTTvhEKzLs3F", "NRWg6JqNpqoAOAfO", "q2hq5vF0OvBx6R3b"]}, {"action": 52, "resource": "aqAgmdGdlSx0GLdY", "schedAction": 50, "schedCron": "PTsRGsrTtJa2jFyP", "schedRange": ["vS03KRyVHemlMXWr", "7Tn0jKVSIwzMpYP1", "jkbblR7rfJjpeECD"]}, {"action": 20, "resource": "gubfn2zuUhAKGe49", "schedAction": 90, "schedCron": "kQJboBt1UvReKqjb", "schedRange": ["3umErQgFUcG2mMT2", "F0QOy90Cc9YpH8vl", "U9dfYxRhwVMiwykC"]}]}' \
    > test.out 2>&1
eval_tap $? 217 'AdminAddRolePermissionsV3' test.out

#- 218 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'eXqWRvt2mLUlw7yR' \
    --body '["BgPUJzxEKLCsu8ay", "rO7CYUG9WelNBt80", "COwf2TfrCELpx1dc"]' \
    > test.out 2>&1
eval_tap $? 218 'AdminDeleteRolePermissionsV3' test.out

#- 219 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '69' \
    --resource '3cje1EYwyJZhsx6p' \
    --roleId '3COFiKUNgcf3v3W9' \
    > test.out 2>&1
eval_tap $? 219 'AdminDeleteRolePermissionV3' test.out

#- 220 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 220 'AdminGetMyUserV3' test.out

#- 221 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'Ecgt0ebRJ5ZkD8MB' \
    --extendExp 'false' \
    --redirectUri 'yPSC4rKH5fKBc8UI' \
    --password 'ChnXQGPlpuuVBujx' \
    --requestId '3c8EcJntZi8jLrU6' \
    --userName 'nrsfIRnrqZdGcgwH' \
    > test.out 2>&1
eval_tap $? 221 'UserAuthenticationV3' test.out

#- 222 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'gddXb4ubRYVntVEJ' \
    --linkingToken 'IabcRs1xCoVjJJXF' \
    --password 'lfiupiYmTo7D9Mu4' \
    --username '0QwNapnVER0YdTX0' \
    > test.out 2>&1
eval_tap $? 222 'AuthenticationWithPlatformLinkV3' test.out

#- 223 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'BU8CtYMqKuGXRkY1' \
    --extendExp 'true' \
    --linkingToken 'ijq2f7eWkj1T7Eaj' \
    > test.out 2>&1
eval_tap $? 223 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 224 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'pwa5xyKxxer2rh6c' \
    > test.out 2>&1
eval_tap $? 224 'RequestOneTimeLinkingCodeV3' test.out

#- 225 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'up44KnCa0XPipZgg' \
    > test.out 2>&1
eval_tap $? 225 'ValidateOneTimeLinkingCodeV3' test.out

#- 226 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'WDfj7a78ScE8QKBX' \
    --isTransient 'true' \
    --clientId 'agSAKV5A9EDHpYbd' \
    --oneTimeLinkCode '5NMMKNJa3HUZd4el' \
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
    --codeChallenge 'TETblqkBDITDFXRC' \
    --codeChallengeMethod 'plain' \
    --clientId 'l6EczMLyLYxAs2Qa' \
    > test.out 2>&1
eval_tap $? 229 'RequestTokenExchangeCodeV3' test.out

#- 230 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'R1pQuFobnJKb8mSS' \
    --userId 'DoYpiBCVTzfCxTyl' \
    --platformUserId 'teHACgeR56bEKLKJ' \
    > test.out 2>&1
eval_tap $? 230 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 231 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'OzNhfFL2OdjnLitM' \
    --includeGameNamespace 'true' \
    > test.out 2>&1
eval_tap $? 231 'RevokeUserV3' test.out

#- 232 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge '8LlOqXgCBqwpOra6' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'nddKELBmoZXku5Y9' \
    --redirectUri 'ERJOm1eG3bvHYSd4' \
    --scope 'YUiFWuld9v6sOkMu' \
    --state 'EnRrb2MvQJ03hIF5' \
    --targetAuthPage 's52nUr4C182be2ZF' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'HIaKFI4ewvwbQStp' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 232 'AuthorizeV3' test.out

#- 233 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token '2TnnUo1KwMTwVN54' \
    > test.out 2>&1
eval_tap $? 233 'TokenIntrospectionV3' test.out

#- 234 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 234 'GetJWKSV3' test.out

#- 235 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'JkflIeIjsFu2GOTX' \
    --factor '5IsnEgebYL7Dvqit' \
    --mfaToken 'QGUZz79aIdNYFKnu' \
    > test.out 2>&1
eval_tap $? 235 'SendMFAAuthenticationCode' test.out

#- 236 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'UBxy23lL8TEcfiRb' \
    --mfaToken '6mcwW82XqHzABn7Y' \
    > test.out 2>&1
eval_tap $? 236 'Change2faMethod' test.out

#- 237 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code '2LNMGL18ZIorzL9n' \
    --factor 'mcEzfFSRHht2znQs' \
    --mfaToken 'qVfI41m7J6KrDSZf' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 237 'Verify2faCode' test.out

#- 238 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'qRWOpgifrRO69Rx1' \
    --userId '52lw2k9iauFsAXJV' \
    > test.out 2>&1
eval_tap $? 238 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 239 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'lQDjgb5UzHF0hZpl' \
    --clientId 'q5StteyF6AkbCIll' \
    --redirectUri '8yXjL9kzK5I8o1Uu' \
    --requestId 'xMNEgkBkxSFDKCe3' \
    > test.out 2>&1
eval_tap $? 239 'AuthCodeRequestV3' test.out

#- 240 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'SShKxVhKQJhGNic0' \
    --additionalData 'f9n8N0i4cOpRGifR' \
    --clientId 'vILKNDp06RxGFjjy' \
    --createHeadless 'false' \
    --deviceId 'v70g6yrQO87VAWkl' \
    --macAddress '52FHsjJ5VkVGiKiE' \
    --platformToken 'B5ESqSWCEtWAbSE2' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 240 'PlatformTokenGrantV3' test.out

#- 241 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 241 'GetRevocationListV3' test.out

#- 242 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'HUnBqGTIn7igEheK' \
    > test.out 2>&1
eval_tap $? 242 'TokenRevocationV3' test.out

#- 243 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'buj99raTVy3Q17Lm' \
    --simultaneousTicket 'rWWntqQAfk49mrPP' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'VIPDr1O38EQ75BgI' \
    > test.out 2>&1
eval_tap $? 243 'SimultaneousLoginV3' test.out

#- 244 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'dB5g0aZzsHA9ZG7Z' \
    --clientId 'gWDzjLxrHBMwuI4U' \
    --code 'tWbTLuTesdRTctsh' \
    --codeVerifier 'xzzEsd1iijS5Ldik' \
    --extendNamespace 'J0syciGljlWyShA2' \
    --extendExp 'true' \
    --password 'ovNi9EVZGCwnQXVN' \
    --redirectUri 'wLDtM0qnjxii6stq' \
    --refreshToken 'TIUghIJwMcJVDu10' \
    --username 'VPtr5tcMcpoQEkuz' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 244 'TokenGrantV3' test.out

#- 245 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'EaXh5h9aqzgQX4qT' \
    > test.out 2>&1
eval_tap $? 245 'VerifyTokenV3' test.out

#- 246 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'Pbz9Aexep85xeb6o' \
    --code '9ZUxbCWh8dX0TKSb' \
    --error 'lyP2VKUJau9NDQIw' \
    --openidAssocHandle 'R3w10BVvaLh3pYeA' \
    --openidClaimedId '5AOEdvBOWtJqt4S3' \
    --openidIdentity 'fbGg7pc1BiLFf8Pd' \
    --openidMode 'W8s6aXZVDYhPZJSF' \
    --openidNs 'PQwHXuXf9gwFy3k9' \
    --openidOpEndpoint 'Eq277Yf5MuWVlZ1R' \
    --openidResponseNonce 'AentYMaybdBd8ag1' \
    --openidReturnTo 'Md6zjc6r5i28USQu' \
    --openidSig 'VZhV7sq65rIFHGg6' \
    --openidSigned '0pli60hjHdgyHehF' \
    --state 'EtxOo3atZDVtHjVa' \
    > test.out 2>&1
eval_tap $? 246 'PlatformAuthenticationV3' test.out

#- 247 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'EUAFVuYdmFl1HeAo' \
    --platformToken 'G0k3AQVA2bNPWwXe' \
    > test.out 2>&1
eval_tap $? 247 'PlatformTokenRefreshV3' test.out

#- 248 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode '7xHAPTlnW8DbugUA' \
    > test.out 2>&1
eval_tap $? 248 'PublicGetInputValidations' test.out

#- 249 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'q6DRLgiG4tJZa2C0' \
    > test.out 2>&1
eval_tap $? 249 'PublicGetInputValidationByField' test.out

#- 250 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'LEaEhaj7Zt4PI9Fj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 250 'PublicGetCountryAgeRestrictionV3' test.out

#- 251 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'TQc2g3VEgDYLCjud' \
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
    --clientId 'Zc9SInq79c1MFK2P' \
    > test.out 2>&1
eval_tap $? 254 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 255 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'E8NJwBAxHELfyuFB' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["jdLtmGq9iHyXIOzc", "7mvkgouul854JTkl", "40WiLaoXjQrDwwS8"]}' \
    > test.out 2>&1
eval_tap $? 255 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 256 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'D4trcNWcopv5egRU' \
    --platformUserId 'C17x3Bu5o57CTYIX' \
    > test.out 2>&1
eval_tap $? 256 'PublicGetUserByPlatformUserIDV3' test.out

#- 257 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId '91RjgDQoM1veWpKo' \
    > test.out 2>&1
eval_tap $? 257 'PublicGetAsyncStatus' test.out

#- 258 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'NecCVKx2vO1F7XT4' \
    --limit '92' \
    --offset '78' \
    --platformBy 'ahDbvGE7hcpG7eqN' \
    --platformId 'Yuqh9ktQZm3Up5wn' \
    --query 'cT5TKqpfdK4JS3Lm' \
    > test.out 2>&1
eval_tap $? 258 'PublicSearchUserV3' test.out

#- 259 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "heXaQjk2QuiDLqp5", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "sjwALtnYFMhqpSr3", "policyId": "NWapssWyzr40vihh", "policyVersionId": "O1vDr4bhGboVJwcX"}, {"isAccepted": true, "localizedPolicyVersionId": "7MLowBMCUq22DqOb", "policyId": "T8DaQTrquI9GWTfO", "policyVersionId": "x0RS1KeQmUDPMeF7"}, {"isAccepted": false, "localizedPolicyVersionId": "i2j6xR1SFBSXZq5e", "policyId": "yvJU4YO0PjSJZBdB", "policyVersionId": "9hGcxhu1Saegkqh7"}], "authType": "pK351xLgWHxSJxvA", "code": "GYx6neCew6iL0vAZ", "country": "37J3UBSpllJh1nmP", "dateOfBirth": "IKJsOjep0davYkNu", "displayName": "HdPFgTnLaj61qY7r", "emailAddress": "EVFO5esylXNlkVF0", "password": "CtcdnvgxT6oKqd24", "reachMinimumAge": false, "uniqueDisplayName": "qI4nNvYlMMZD3na1"}' \
    > test.out 2>&1
eval_tap $? 259 'PublicCreateUserV3' test.out

#- 260 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'Ff37QbudKi8iWC31' \
    --query 'pjz8p0BoGdQ9cl9P' \
    > test.out 2>&1
eval_tap $? 260 'CheckUserAvailability' test.out

#- 261 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["O08SfX9earIrZeG5", "rSDA602HWyX8t1tm", "or28VhHSh1xDzIiM"]}' \
    > test.out 2>&1
eval_tap $? 261 'PublicBulkGetUsers' test.out

#- 262 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "0JkHQhy22B7TmJ9V", "languageTag": "VIvQ3FZBjmnMWo7R"}' \
    > test.out 2>&1
eval_tap $? 262 'PublicSendRegistrationCode' test.out

#- 263 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "vsf0I6PGCyxGH7c2", "emailAddress": "lTr47IQm0bzBWMn3"}' \
    > test.out 2>&1
eval_tap $? 263 'PublicVerifyRegistrationCode' test.out

#- 264 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "FZ63dXu8kBaQGBdd", "languageTag": "LfteSuCnNL7eUA75"}' \
    > test.out 2>&1
eval_tap $? 264 'PublicForgotPasswordV3' test.out

#- 265 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'Px3XHCVijuPIiYdZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 265 'GetAdminInvitationV3' test.out

#- 266 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'ffydTt8MKaqQkOd2' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "ibUlYS1l5ONU8Sv8", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "4DeBkPm0aZ7aAeb4", "policyId": "IVoRtFQoxlvJ1MPB", "policyVersionId": "HTCahu0UlnsLdaq6"}, {"isAccepted": true, "localizedPolicyVersionId": "EzaPnG8rn1rPplb2", "policyId": "VuN7gqRjUv5jzTlu", "policyVersionId": "o09akmBn7gxOQHdw"}, {"isAccepted": false, "localizedPolicyVersionId": "JfQ9wDwAvnV5RTjm", "policyId": "XBCozpw8rJZtuIqG", "policyVersionId": "DzpIyHExHJKf5D6f"}], "authType": "ST6XTjmpPIcL6KAk", "code": "fvBUYdjb9qNtapg4", "country": "R4OziGy5uMId2bv3", "dateOfBirth": "s3ytIsPDGEixto3o", "displayName": "JKWYN0fD9RnaAbuU", "emailAddress": "kidFpkJbOKoXq0rj", "password": "DyRyhqnSv7Q2XThb", "reachMinimumAge": false, "uniqueDisplayName": "5kKzwq7i3ub4xMnd"}' \
    > test.out 2>&1
eval_tap $? 266 'CreateUserFromInvitationV3' test.out

#- 267 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "MGtNyHHBf908yqJN", "country": "Rmu0dmY9RoPWI3xc", "dateOfBirth": "iG77MJ5OGwIRfLSA", "displayName": "21FKgw0fgGeSLKzy", "languageTag": "tVgPHBsO4V8Chcj7", "uniqueDisplayName": "XvfWMWFwsPlJKYcY", "userName": "VX93TfhQC1nPdKMx"}' \
    > test.out 2>&1
eval_tap $? 267 'UpdateUserV3' test.out

#- 268 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "CLw0t60XtekTohLO", "country": "wo5oqsgZJDopHHSJ", "dateOfBirth": "XPGb76gChIk9bb3b", "displayName": "2AKrBUAhHQNN8zjI", "languageTag": "qcTcrtXyUjgbMK4o", "uniqueDisplayName": "rQMH8n2dY1pIEhN4", "userName": "loc5kE5HXGdmDipg"}' \
    > test.out 2>&1
eval_tap $? 268 'PublicPartialUpdateUserV3' test.out

#- 269 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "ngxyPpngnNicmIqQ", "emailAddress": "bWpUE0eUfiDAGNw3", "languageTag": "ywtzLO3fN42WKl6k"}' \
    > test.out 2>&1
eval_tap $? 269 'PublicSendVerificationCodeV3' test.out

#- 270 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "mTM5oSvQh2PIEjyW", "contactType": "EqBkqmh25lBSm6rB", "languageTag": "zXa2k8LlM1mIgoKi", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 270 'PublicUserVerificationV3' test.out

#- 271 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "HBGMUu4PRBfEkJqL", "country": "PMB7vNpr1AXsWlvF", "dateOfBirth": "EmptZOdfH5N4Nepg", "displayName": "ZiTVbdJucQ9JimxB", "emailAddress": "fUvoj1G0nsvh3jTX", "password": "XLuI5vPyRa0euA3t", "uniqueDisplayName": "Si31tzx5io7CUiQR", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 271 'PublicUpgradeHeadlessAccountV3' test.out

#- 272 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "vu5o1ZIqXnPoliNg", "password": "LmcBwICqaWs6f6nJ"}' \
    > test.out 2>&1
eval_tap $? 272 'PublicVerifyHeadlessAccountV3' test.out

#- 273 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "QdORFUXo051vyk73", "newPassword": "dEaSss3qn66l8L9I", "oldPassword": "LSplU9xt9CNlJFWR"}' \
    > test.out 2>&1
eval_tap $? 273 'PublicUpdatePasswordV3' test.out

#- 274 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'HmYtxiWnTETvoENv' \
    > test.out 2>&1
eval_tap $? 274 'PublicCreateJusticeUser' test.out

#- 275 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'M0NdrlEpenvPSSdl' \
    --redirectUri 'xccBAFchg80h5DLk' \
    --ticket 'uUcimbuWJfopd2vV' \
    > test.out 2>&1
eval_tap $? 275 'PublicPlatformLinkV3' test.out

#- 276 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'LmD4P6VBBGxPJmWc' \
    --body '{"platformNamespace": "ZAVExDdSwZ7uojwi"}' \
    > test.out 2>&1
eval_tap $? 276 'PublicPlatformUnlinkV3' test.out

#- 277 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'zbYjqUgrH8sEPeOb' \
    > test.out 2>&1
eval_tap $? 277 'PublicPlatformUnlinkAllV3' test.out

#- 278 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'MW8g4oehvWoSQoe2' \
    --ticket 'BuKhCQSLdZyRCSOM' \
    > test.out 2>&1
eval_tap $? 278 'PublicForcePlatformLinkV3' test.out

#- 279 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'T7r01GLsz99wVv8R' \
    --clientId 'VwlyjmATclbRWzvM' \
    --redirectUri 'o2JVNfyXHac4EYHq' \
    > test.out 2>&1
eval_tap $? 279 'PublicWebLinkPlatform' test.out

#- 280 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'IahVjiYvpmfJ2b5N' \
    --code 'IaJDG4dnXJpzpWq6' \
    --state 'QPsYrEAejGv37HoD' \
    > test.out 2>&1
eval_tap $? 280 'PublicWebLinkPlatformEstablish' test.out

#- 281 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'YhxhYMbbWmUQS8Ui' \
    --code 'M7lRWF6TC5STDhWB' \
    --state 'OX62KzksbOaUBg9h' \
    > test.out 2>&1
eval_tap $? 281 'PublicProcessWebLinkPlatformV3' test.out

#- 282 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "Lz94CwLMELavgnLc", "userIds": ["37TF6GKdIRlaOUlG", "onPQ9S3caltMdFTe", "dfWz070rKErxme66"]}' \
    > test.out 2>&1
eval_tap $? 282 'PublicGetUsersPlatformInfosV3' test.out

#- 283 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "amn6Gbi4uFB4QTEY", "emailAddress": "irYEetDYo2C0hzr6", "newPassword": "RgXL2r1vSzA6Lykk"}' \
    > test.out 2>&1
eval_tap $? 283 'ResetPasswordV3' test.out

#- 284 PublicGetUserByUserIdV3
eval_tap 0 284 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 285 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'b2Flm36fia49iAfF' \
    --activeOnly 'true' \
    --after 'DH4DUtC5soV2OBDD' \
    --before 'rBJuzDaJYl5KocAo' \
    --limit '80' \
    > test.out 2>&1
eval_tap $? 285 'PublicGetUserBanHistoryV3' test.out

#- 286 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mM43EGxPyDjkp64s' \
    > test.out 2>&1
eval_tap $? 286 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 287 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'k8z0Zyk7eSgpG9cL' \
    > test.out 2>&1
eval_tap $? 287 'PublicGetUserInformationV3' test.out

#- 288 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'cdrNlYX2TutgV3vl' \
    --after '0.5022411021319804' \
    --before '0.13147308213224407' \
    --limit '75' \
    > test.out 2>&1
eval_tap $? 288 'PublicGetUserLoginHistoriesV3' test.out

#- 289 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vACZC2T0Fi1YEE8a' \
    --after 'crfa0YwFR6hhXWKI' \
    --before 'CfqvRhp8udShhzsP' \
    --limit '44' \
    --platformId 'HoIeN0lkh26iqwgL' \
    > test.out 2>&1
eval_tap $? 289 'PublicGetUserPlatformAccountsV3' test.out

#- 290 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'AGYTLZz8Vnqx4Mz0' \
    > test.out 2>&1
eval_tap $? 290 'PublicListJusticePlatformAccountsV3' test.out

#- 291 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'OVZywkeRjncu7NHw' \
    --body '{"platformId": "Y40tbjHU8HJGmgSH", "platformUserId": "FSUSCgV6JyXK4c1O"}' \
    > test.out 2>&1
eval_tap $? 291 'PublicLinkPlatformAccount' test.out

#- 292 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'Kr87PCUWND976Jgn' \
    --body '{"chosenNamespaces": ["WCFx4DnPQgoJ5MPJ", "iwpfAes5oTqEliZD", "Q4jEn7I85Wvs9yha"], "requestId": "VIQgNCTkYYn65ZCj"}' \
    > test.out 2>&1
eval_tap $? 292 'PublicForceLinkPlatformWithProgression' test.out

#- 293 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CroQ3EMWDE2P8FmM' \
    > test.out 2>&1
eval_tap $? 293 'PublicGetPublisherUserV3' test.out

#- 294 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CthLV0BjRJeoTy6Y' \
    --password 's9viTR3YBOFBx7Zm' \
    > test.out 2>&1
eval_tap $? 294 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 295 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after '5SJBQgI33wmbuXze' \
    --before 'rseJN0U305bxO1bO' \
    --isWildcard 'true' \
    --limit '45' \
    > test.out 2>&1
eval_tap $? 295 'PublicGetRolesV3' test.out

#- 296 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'D5NpfOGn75k18GiS' \
    > test.out 2>&1
eval_tap $? 296 'PublicGetRoleV3' test.out

#- 297 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'false' \
    > test.out 2>&1
eval_tap $? 297 'PublicGetMyUserV3' test.out

#- 298 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'EhtSKrZMcywL6DM9' \
    > test.out 2>&1
eval_tap $? 298 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 299 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["ef7DS5kbiWaJ7MRy", "Ch3CjiuC2ht3T3nx", "ZRDUmJlHcmIVCOpm"], "oneTimeLinkCode": "SmqQ76qqE3vJfJst"}' \
    > test.out 2>&1
eval_tap $? 299 'LinkHeadlessAccountToMyAccountV3' test.out

#- 300 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "MCZ2WqfFPu6xuSbX"}' \
    > test.out 2>&1
eval_tap $? 300 'PublicSendVerificationLinkV3' test.out

#- 301 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'OSuGkhxOJHKC6kbo' \
    > test.out 2>&1
eval_tap $? 301 'PublicVerifyUserByLinkV3' test.out

#- 302 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'HDVoKaZA2Bt2vpcH' \
    --code '2EADIboE3355FIQ2' \
    --error 'zgSByauGDMDuYgxE' \
    --state '6QGInZbOcpTxSPoH' \
    > test.out 2>&1
eval_tap $? 302 'PlatformAuthenticateSAMLV3Handler' test.out

#- 303 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'kwdACL4as6uwmd2G' \
    --payload 's5W23P7YaSTwbsT4' \
    > test.out 2>&1
eval_tap $? 303 'LoginSSOClient' test.out

#- 304 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'Kw623FkDnG1YBRTW' \
    > test.out 2>&1
eval_tap $? 304 'LogoutSSOClient' test.out

#- 305 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'bkEVIakBRYdLUYAf' \
    --code 'qex4WCHYqlBR9i0x' \
    > test.out 2>&1
eval_tap $? 305 'RequestTargetTokenResponseV3' test.out

#- 306 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '73' \
    --namespace 'nneWfGzjLbhS3NhR' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 306 'AdminListInvitationHistoriesV4' test.out

#- 307 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'TmhFGkDwrQb3rLFE' \
    > test.out 2>&1
eval_tap $? 307 'AdminGetDevicesByUserV4' test.out

#- 308 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'ATvLkHZu1smCtK4C' \
    --endDate 'fOlU693pdvoJXaSq' \
    --limit '65' \
    --offset '94' \
    --startDate 'FfcLjelJIK7Z2OQM' \
    > test.out 2>&1
eval_tap $? 308 'AdminGetBannedDevicesV4' test.out

#- 309 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'h3sAEMdIIUznQ4pA' \
    > test.out 2>&1
eval_tap $? 309 'AdminGetUserDeviceBansV4' test.out

#- 310 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "wz4643IoSDWXzHC1", "deviceId": "amw24hV3kvBPIUyN", "deviceType": "ek5oDE7btdMvMQFp", "enabled": false, "endDate": "iy4ePY2UgCQHXD0h", "ext": {"MdkuuNrR3DHpLsX6": {}, "vF4u3tQZX3yblo3M": {}, "jANmLLGp6anR7yF9": {}}, "reason": "DF6wZoz5b1R1yuSy"}' \
    > test.out 2>&1
eval_tap $? 310 'AdminBanDeviceV4' test.out

#- 311 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'x4Fnr4lloNz1FqrO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 311 'AdminGetDeviceBanV4' test.out

#- 312 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'YQcLGgLUGd3iAXIt' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 312 'AdminUpdateDeviceBanV4' test.out

#- 313 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'qidiBh8vPht28o8u' \
    --startDate 'gT5mhAgPw8oIp4ZM' \
    --deviceType 'MgalJy5OeYhUrIZL' \
    > test.out 2>&1
eval_tap $? 313 'AdminGenerateReportV4' test.out

#- 314 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 314 'AdminGetDeviceTypesV4' test.out

#- 315 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'yemwy9kROTWgZ3VH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 315 'AdminGetDeviceBansV4' test.out

#- 316 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'kI7n9YzmPb6AJMDJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 316 'AdminDecryptDeviceV4' test.out

#- 317 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'NkTcb2GioEabkfdy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 317 'AdminUnbanDeviceV4' test.out

#- 318 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'xYWvretfwbOHpMS6' \
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
    --limit '15' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 320 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 321 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 3}' \
    > test.out 2>&1
eval_tap $? 321 'AdminCreateTestUsersV4' test.out

#- 322 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "dAhf7W7RT6QoOEIg", "policyId": "ghnVoXDamdxfmxQR", "policyVersionId": "7AmBC6tNfkwOzZpX"}, {"isAccepted": true, "localizedPolicyVersionId": "Qw75V9sh9FmIDCfV", "policyId": "F4jU5N9zwm7oNQPy", "policyVersionId": "iapdlnB41cgNs9Gw"}, {"isAccepted": true, "localizedPolicyVersionId": "Z9WMMQXOBWk4u9zs", "policyId": "MIT6hsNZnOKoWKYJ", "policyVersionId": "ijEMi19cffqOJamY"}], "authType": "EMAILPASSWD", "code": "1e7taRiZZWGRF9f7", "country": "bJhg07rmqWe3wlrl", "dateOfBirth": "B9hSrTpmFIsuIlcd", "displayName": "u9Fwa4gyVQJBp9Bb", "emailAddress": "HsjWINK7oBKTssI6", "password": "DbXoLdJJPMwSZ8jX", "passwordMD5Sum": "j7a6j0hcUN9dgdPQ", "reachMinimumAge": false, "uniqueDisplayName": "v2llBoouVj0OzCqB", "username": "Eqz3vU1MtuMKVCfO"}' \
    > test.out 2>&1
eval_tap $? 322 'AdminCreateUserV4' test.out

#- 323 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": true, "userIds": ["iyxhlBKyAVmqGEdx", "5rTs8qYQaS9LntBX", "4lOMDoGvDwVnwtRx"]}' \
    > test.out 2>&1
eval_tap $? 323 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 324 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["TrooDviSUsf97hQU", "WJt59qtQGp5AfZnj", "ZBVr0s3RkRo02H7b"]}' \
    > test.out 2>&1
eval_tap $? 324 'AdminBulkCheckValidUserIDV4' test.out

#- 325 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'fUoGdpZx1wOfDVx5' \
    --body '{"avatarUrl": "qHQjE49IOiXkfwXu", "country": "HK5Kawr7skyAxA1n", "dateOfBirth": "zvUEtLPT0d4MzcUB", "displayName": "wspm5Tcrb85KF42w", "languageTag": "OySpVSIcIkuGT2zx", "skipLoginQueue": true, "uniqueDisplayName": "lf9gqfnN23BODTSS", "userName": "9yvIoDAOYyXjM9iA"}' \
    > test.out 2>&1
eval_tap $? 325 'AdminUpdateUserV4' test.out

#- 326 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'a6sVaKqxt4C4Gpc3' \
    --body '{"code": "8nxO7twG8Ij12eLW", "emailAddress": "Lgz9qB8t3OjTQhm3"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminUpdateUserEmailAddressV4' test.out

#- 327 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'pqT1WU0viKaMTG3s' \
    > test.out 2>&1
eval_tap $? 327 'AdminDisableUserMFAV4' test.out

#- 328 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ysoMYL3GztPjLhDK' \
    > test.out 2>&1
eval_tap $? 328 'AdminListUserRolesV4' test.out

#- 329 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'xcVf6J4hwe8vArgW' \
    --body '{"assignedNamespaces": ["0EAXP84mE2Rm5E3o", "vcXoWIUdRrAMQpU2", "Uy0dLlsMoHd6Lcmm"], "roleId": "Dkkn3HyJFjsZikhb"}' \
    > test.out 2>&1
eval_tap $? 329 'AdminUpdateUserRoleV4' test.out

#- 330 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '9W96SVCNgYKYKUYS' \
    --body '{"assignedNamespaces": ["glZIJyVqTACv8yHN", "rQi4n0Oejw99uHLQ", "pKsKG7vvpdNpf6Tk"], "roleId": "kVcOaWy2m3AWuEVW"}' \
    > test.out 2>&1
eval_tap $? 330 'AdminAddUserRoleV4' test.out

#- 331 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'WKtPA0qRup2uKM8P' \
    --body '{"assignedNamespaces": ["vRNTKoiMq98ubh8u", "0FI7RWNeAiBryrpN", "rIz3wH7JOGvo4yos"], "roleId": "ZBhd0K49h1NA2kaM"}' \
    > test.out 2>&1
eval_tap $? 331 'AdminRemoveUserRoleV4' test.out

#- 332 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'true' \
    --limit '71' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 332 'AdminGetRolesV4' test.out

#- 333 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "euzmj3fXBHG9FbeT"}' \
    > test.out 2>&1
eval_tap $? 333 'AdminCreateRoleV4' test.out

#- 334 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'j4uLCosIOC0Ncebz' \
    > test.out 2>&1
eval_tap $? 334 'AdminGetRoleV4' test.out

#- 335 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'NwEc86MzF1uazQCX' \
    > test.out 2>&1
eval_tap $? 335 'AdminDeleteRoleV4' test.out

#- 336 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 's44xW9eY54bTvg75' \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "CNOkMMKzA8uO5SKm"}' \
    > test.out 2>&1
eval_tap $? 336 'AdminUpdateRoleV4' test.out

#- 337 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'snp1xf7m4GrbSpDf' \
    --body '{"permissions": [{"action": 8, "resource": "LlZDwg2VjKTxf1ge", "schedAction": 34, "schedCron": "cFVzl1tUQlyHWXOA", "schedRange": ["vfQVaNeJasLZVv5N", "uWZiMQBUX6HPf43w", "GgLfNVJeJDZMEUS4"]}, {"action": 95, "resource": "Gs1FVkaOEbNnxwor", "schedAction": 13, "schedCron": "QHa89rDMUFTziq29", "schedRange": ["pNFS6r6k9YaItyV5", "M89RJjirEJmCoViT", "XHt43I18oDp7ryxZ"]}, {"action": 11, "resource": "VzQkqDTRHmz2JIK2", "schedAction": 44, "schedCron": "MsoUHN8coO3Fp91g", "schedRange": ["VmUzpG17W2KFnPNW", "7mLLZeTVNO5EnnEx", "QVppNPpCIN2dB7eY"]}]}' \
    > test.out 2>&1
eval_tap $? 337 'AdminUpdateRolePermissionsV4' test.out

#- 338 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'dy9d2CM8Y6palxx0' \
    --body '{"permissions": [{"action": 83, "resource": "14fB0Ls1siShVtKu", "schedAction": 48, "schedCron": "1CIO63v02tKESiOR", "schedRange": ["1VlqC9HpxuJTDD7g", "AnVb2yGckgYPgkNW", "W99sfk7CDdwuAxWQ"]}, {"action": 75, "resource": "4z603oPY6i8gAxye", "schedAction": 50, "schedCron": "pmi671p6kqd79Fot", "schedRange": ["51iPcduUHqB5Vnqv", "9iBRPgHHL0wc5WVB", "2U7nnvO22TF7MeRv"]}, {"action": 49, "resource": "HhB4UGVDHjuDweps", "schedAction": 33, "schedCron": "M9xSWcqvEPmycRiW", "schedRange": ["1tIE3nEbR17vOcFr", "dERvzI8FD9Bfnoh8", "uitLE55wdAL0NeH3"]}]}' \
    > test.out 2>&1
eval_tap $? 338 'AdminAddRolePermissionsV4' test.out

#- 339 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'BydBTV8WFge4zBA2' \
    --body '["lvd9uuRHqfJnRq1e", "lhdjXKb2ySW23ike", "3v0MAaArETogihIZ"]' \
    > test.out 2>&1
eval_tap $? 339 'AdminDeleteRolePermissionsV4' test.out

#- 340 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'veRwzXncZzmHaWeM' \
    --after '6Jkhgg6QFwVO8d5j' \
    --before 'k4CnvPnBOIhg3xL7' \
    --limit '36' \
    > test.out 2>&1
eval_tap $? 340 'AdminListAssignedUsersV4' test.out

#- 341 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'VTd6fcn0SfE1s8QB' \
    --body '{"assignedNamespaces": ["qmXHfqjDv1khSDZ9", "FiQ18yxuso7Ois64", "dGYUnI0Z7SHN4n4Q"], "namespace": "FIxZY4JZQiZlWm7z", "userId": "CJhjBIhhrT5b4cc1"}' \
    > test.out 2>&1
eval_tap $? 341 'AdminAssignUserToRoleV4' test.out

#- 342 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'S7XrOPytRNEVtDC4' \
    --body '{"namespace": "Kz0bMk6Vz5MHaolE", "userId": "QkbnEiottoojSiHs"}' \
    > test.out 2>&1
eval_tap $? 342 'AdminRevokeUserFromRoleV4' test.out

#- 343 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["0qmYesr0pTFdixlC", "nTFI2AOnhmSrwqc2", "kZxIrZAQrXbSPvsP"], "emailAddresses": ["MBb25gcZW7fKwj5k", "e0dgQXD3aarNhlpe", "6xfHlACi20pBfS5n"], "isAdmin": true, "isNewStudio": true, "namespace": "9FvtxkJSFF2iVLeF", "roleId": "BP1s1xCkVCG7Ftpj"}' \
    > test.out 2>&1
eval_tap $? 343 'AdminInviteUserNewV4' test.out

#- 344 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "aJctcW2MgEslBvit", "country": "4JmlWxYDm3gpxtVB", "dateOfBirth": "CipbqT5WzRKqJ9IF", "displayName": "b2ki9CUq1UevCZeT", "languageTag": "BnE3zwyOBxPa85CB", "skipLoginQueue": true, "uniqueDisplayName": "3VUoVAM7jDOYh8fg", "userName": "cDUrJ6FcALqOJXx1"}' \
    > test.out 2>&1
eval_tap $? 344 'AdminUpdateMyUserV4' test.out

#- 345 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 345 'AdminDisableMyAuthenticatorV4' test.out

#- 346 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'DHyoI7agAQA15HVk' \
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
    --code 'YGzldGY13cRO3MC2' \
    > test.out 2>&1
eval_tap $? 358 'AdminEnableMyEmailV4' test.out

#- 359 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 359 'AdminGetMyEnabledFactorsV4' test.out

#- 360 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'ClOLqAfcaF1vN2qO' \
    > test.out 2>&1
eval_tap $? 360 'AdminMakeFactorMyDefaultV4' test.out

#- 361 AdminInviteUserV4
eval_tap 0 361 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 362 AuthenticationWithPlatformLinkV4
samples/cli/sample-apps Iam authenticationWithPlatformLinkV4 \
    --extendExp 'false' \
    --clientId 'X1EQVqqbEadRT2Mq' \
    --linkingToken 'DVa0XFGvcPbWONlg' \
    --password 'TS9SUbxrG9lPSduG' \
    --username '6RIv8bLUTMSUN4Yp' \
    > test.out 2>&1
eval_tap $? 362 'AuthenticationWithPlatformLinkV4' test.out

#- 363 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'WDIiXhsiHV2ZGFPN' \
    --extendExp 'true' \
    --linkingToken 'RYjr4yW2NNcJyfgJ' \
    > test.out 2>&1
eval_tap $? 363 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 364 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'beoNlS3uWAtVzicJ' \
    --factor 'c3vS8u7V8ixuMvD1' \
    --mfaToken 'Mq3BBBJG8Iv9m1h2' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 364 'Verify2faCodeV4' test.out

#- 365 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'l99hgxPUol7NEl3i' \
    --codeChallenge 'MR8FYWS8FdRq2tm1' \
    --codeChallengeMethod 'S256' \
    --additionalData 'Ka4ZaNCN9wSDmR5Y' \
    --clientId 'AFnufuDlwrSvdXlO' \
    --createHeadless 'true' \
    --deviceId 'V5HPYBlYqGysTkCd' \
    --macAddress 'yyPVPk1KDd6dJFfX' \
    --platformToken 'cmxChJBy4jFyPf1h' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 365 'PlatformTokenGrantV4' test.out

#- 366 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'MTlO0RCeSdK1LH6i' \
    --codeChallengeMethod 'S256' \
    --simultaneousPlatform '1Ko6pMldCPweHY7O' \
    --simultaneousTicket 'cRzoamZgUbYKdUBN' \
    --nativePlatform 'steam' \
    --nativePlatformTicket '0S08dS6KAZxyVHPO' \
    > test.out 2>&1
eval_tap $? 366 'SimultaneousLoginV4' test.out

#- 367 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge 'tQwAv9714sY4dYGC' \
    --codeChallengeMethod 'S256' \
    --additionalData 'noKlnisWamYWSaxb' \
    --clientId 'PPkOL31f44jTQ8Kp' \
    --code '0PF9Luk48C90cQ94' \
    --codeVerifier 'JRwuMwizTlZ3KPNO' \
    --extendNamespace 'h2jcXOD8Ui2A95aN' \
    --extendExp 'false' \
    --loginQueueTicket 'GXS6BEHQRXajpTyS' \
    --password '9TODOsmPJeiZSZ4M' \
    --redirectUri 'Qi5N6Gaptl2zUbTq' \
    --refreshToken 'nuozv80UXaKP2q6g' \
    --username 'mPrXRPzoigbHARzf' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 367 'TokenGrantV4' test.out

#- 368 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'I3Nvox8s0azLNvTb' \
    --code 'qZJuq3z9LRzFrzek' \
    > test.out 2>&1
eval_tap $? 368 'RequestTargetTokenResponseV4' test.out

#- 369 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "YZWqAdcUOGLEgtgC", "policyId": "Xwna2DfcaYiQiBkF", "policyVersionId": "Sv6hDGOBP8QRIS4g"}, {"isAccepted": true, "localizedPolicyVersionId": "CZpEkvonTKRpLEz4", "policyId": "LJTerLz2lpH9Daim", "policyVersionId": "0XhggSEeBGuu6U2f"}, {"isAccepted": false, "localizedPolicyVersionId": "GGAbytRaqCsmgCkn", "policyId": "JqoPevnpIMTyidlX", "policyVersionId": "ohWnHPw4IJepMr1y"}], "authType": "EMAILPASSWD", "country": "r8R00Dgm7JZNRGm5", "dateOfBirth": "pthwCHn45o9KNn2Q", "displayName": "ib6TBhRKKWfbW62g", "emailAddress": "7W0ePqR6Uhh5PUl2", "password": "9IsNbtdH1mJuIHt6", "passwordMD5Sum": "pVtoOEIdt6diayxM", "uniqueDisplayName": "YfnT98qBvU9EC3FH", "username": "FcRwIpe5W1KXGOzB", "verified": false}' \
    > test.out 2>&1
eval_tap $? 369 'PublicCreateTestUserV4' test.out

#- 370 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "C9ERNMJn7Dh5xYCv", "policyId": "Neum3aPydM61BjsE", "policyVersionId": "vz4XLvienH9HbJMT"}, {"isAccepted": true, "localizedPolicyVersionId": "KDUEiega1QxkZ2py", "policyId": "lwnCWDjG2DSsEZYm", "policyVersionId": "EzZEeWAs0mX95fCe"}, {"isAccepted": true, "localizedPolicyVersionId": "64uzDsKJ4OmAdLG7", "policyId": "WSJlhC8uzZfHzjgS", "policyVersionId": "YxsxgwFdSPTbRh0z"}], "authType": "EMAILPASSWD", "code": "p2hsvmPyyItz1VSv", "country": "3BeHOkvUUe7OQT9i", "dateOfBirth": "dD7QRabmiECF74q9", "displayName": "lNYDKFtf6jJK8olg", "emailAddress": "5a89MjU0RdIwRT0d", "password": "7CgLGnKCZxmvqiyL", "passwordMD5Sum": "FzsLwK8ZOjrgwbSo", "reachMinimumAge": false, "uniqueDisplayName": "vzOyMO1Bru2rH1pR", "username": "1j7gLLMAS7DJja21"}' \
    > test.out 2>&1
eval_tap $? 370 'PublicCreateUserV4' test.out

#- 371 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId '6K9imOtwa2OBRO6f' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "BGCpnycpcuCcfUBs", "policyId": "o0PVFhvAl8NiSddb", "policyVersionId": "kGHJ2ac55YJrEqTh"}, {"isAccepted": true, "localizedPolicyVersionId": "bavUQ3FLK1Hiyz9j", "policyId": "hFKATdAQntdtPEVq", "policyVersionId": "MNBVpGDg4ACU6o8p"}, {"isAccepted": false, "localizedPolicyVersionId": "vldq84Z3RzMwBSNW", "policyId": "gLqSJ1UbuqJ0BXEa", "policyVersionId": "yMckSZgbZ17BAw3Z"}], "authType": "EMAILPASSWD", "code": "3YqnLsFmBYZ4Y5Af", "country": "DcqhfJpKt313Zrno", "dateOfBirth": "n9vRgzjhgsVcNbHB", "displayName": "iRFM43eCBLnPfOFe", "emailAddress": "xZRSdXwvjlD0isXe", "password": "jxmHqhoNyhBcUd3v", "passwordMD5Sum": "yP3NmVcUEhjXz8cr", "reachMinimumAge": true, "uniqueDisplayName": "DTau4KGlVpo4iKsr", "username": "C6L4VVGzl8QjBRLg"}' \
    > test.out 2>&1
eval_tap $? 371 'CreateUserFromInvitationV4' test.out

#- 372 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "OhLEFEaAWxX2JpQJ", "country": "5eKcYhEXcOLRBJzH", "dateOfBirth": "9fqThIJv2HxZBPv1", "displayName": "D8ltKJ5NjN3DrqKD", "languageTag": "NpNKaK6ROhaHJEp4", "uniqueDisplayName": "d2gzMG2MbXHAD7rP", "userName": "obVXOkmUbDbdEkCe"}' \
    > test.out 2>&1
eval_tap $? 372 'PublicUpdateUserV4' test.out

#- 373 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "JFqlvYT5PYysFUSz", "emailAddress": "bFex7uRubClOryUn"}' \
    > test.out 2>&1
eval_tap $? 373 'PublicUpdateUserEmailAddressV4' test.out

#- 374 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "lE32ahHjX6sfA0Jy", "country": "NoWFnXYOHg0azzYs", "dateOfBirth": "wz5N7lJ5dDjd7Z9H", "displayName": "3R5qVHERWIpC1zQp", "emailAddress": "rYEjL4bGjNViMV6Q", "password": "slqd9U52vNFaUcS2", "reachMinimumAge": false, "uniqueDisplayName": "NluNh6lT3QXU7lGV", "username": "OeMaF3Ul2gfi1Uth", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 374 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 375 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "CJWPR5vgTqSgx9vJ", "password": "yhBYNZfgjhxbRF2u", "username": "AZmqw2c3wS1YnmrV"}' \
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
    --code 'blWXNwpi0jVPn1pn' \
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
    --code 'o3W5zJ97qMhxBfD9' \
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
    --factor 'tyv4ULoOZ4lEAvE9' \
    > test.out 2>&1
eval_tap $? 392 'PublicMakeFactorMyDefaultV4' test.out

#- 393 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'EstcZ6si639dwV1v' \
    > test.out 2>&1
eval_tap $? 393 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 394 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "PF1AeIctl3KMvyZD", "emailAddress": "4IYnQhEPI3L9qj83", "namespace": "xOZM8FDnfQzphRJO", "namespaceDisplayName": "ag3Z8j4dcTCF8Pem"}' \
    > test.out 2>&1
eval_tap $? 394 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE