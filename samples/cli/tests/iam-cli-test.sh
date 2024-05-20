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
echo "1..395"

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
    --forceDelete 'false' \
    --body '{"modules": [{"docLink": "3zbPtV8B4txLO4i9", "groups": [{"group": "lBHqcNZyhqyC5sMJ", "groupId": "k7P6ItTOaIwX0mlL", "permissions": [{"allowedActions": [60, 69, 47], "resource": "RcjkU0kmi2OabOSm"}, {"allowedActions": [34, 85, 76], "resource": "aFDqKWUenPkOLZPV"}, {"allowedActions": [43, 42, 1], "resource": "ZPCxl2ZVIZy1xFCN"}]}, {"group": "gahDiQYIUm9kUkAD", "groupId": "fAMurFAdIEWDk8Vn", "permissions": [{"allowedActions": [59, 51, 4], "resource": "QbxOEElMIcBZfPQC"}, {"allowedActions": [64, 58, 69], "resource": "i06gQOCgNgIwvG7M"}, {"allowedActions": [89, 12, 65], "resource": "JlxRAoAAXCVW6rsE"}]}, {"group": "gWIRsLtJT23yTb9V", "groupId": "8zoh395Art5vQxEJ", "permissions": [{"allowedActions": [44, 32, 6], "resource": "o1CcL9nPPGDNkrT3"}, {"allowedActions": [85, 31, 47], "resource": "RxYL7ag06yj3jflM"}, {"allowedActions": [33, 20, 75], "resource": "oCui1ZwznCnZbNk4"}]}], "module": "ADeNK8Rj8WJaXZjH", "moduleId": "86eASnjMy0YIb8Dl"}, {"docLink": "n2QjHEi8yGuqmAqv", "groups": [{"group": "LbzRBm5knQKuNBhL", "groupId": "xyrSGso6dROTEddx", "permissions": [{"allowedActions": [80, 90, 35], "resource": "F4vtABB5wsCbZ0as"}, {"allowedActions": [25, 9, 70], "resource": "h5NgZKD14g337kqa"}, {"allowedActions": [54, 84, 11], "resource": "lwh9diQ735eS0L2A"}]}, {"group": "5khq1ize96Tpn2js", "groupId": "GyqftDR3XpiGM1g1", "permissions": [{"allowedActions": [18, 74, 35], "resource": "KSOoIcW5LNRlLdbt"}, {"allowedActions": [40, 72, 73], "resource": "d4geQYgNj1FUFCd3"}, {"allowedActions": [75, 27, 75], "resource": "1rZ0HrNT1yK65J6k"}]}, {"group": "AyYJiohBhVEDwHXR", "groupId": "PEFdg84oOb2wspT7", "permissions": [{"allowedActions": [75, 98, 68], "resource": "dXWh62jTME7GLDEX"}, {"allowedActions": [20, 89, 54], "resource": "FMrvRbWthEo1p41m"}, {"allowedActions": [75, 63, 26], "resource": "XaEp6RsbW4kFH4gu"}]}], "module": "TAAAfHzzQQBbfnyc", "moduleId": "XnK3KPSAqDYWSxPC"}, {"docLink": "YVBiyPizyVit6pGp", "groups": [{"group": "nneLNFH4HGplcCS1", "groupId": "GCrwsfs1L5RTWc9G", "permissions": [{"allowedActions": [22, 24, 23], "resource": "eHT2v0didWEK34PJ"}, {"allowedActions": [82, 16, 7], "resource": "Z0UW90U8KN6d4fju"}, {"allowedActions": [54, 33, 19], "resource": "vuwxIw3srOYUhuKT"}]}, {"group": "5MHoIgu0P3uzqe3X", "groupId": "jT1kWcmJqXsRBwVs", "permissions": [{"allowedActions": [9, 14, 65], "resource": "Q64bPxtdKdrGWpzs"}, {"allowedActions": [73, 26, 7], "resource": "6GDV68OLoPRLP5oF"}, {"allowedActions": [30, 27, 2], "resource": "vVvVfEsa2W7VK9wi"}]}, {"group": "qfrIMsl9FpUQEMpF", "groupId": "T64bszTaK7CgZ5iC", "permissions": [{"allowedActions": [89, 97, 55], "resource": "T5yXE9OiZq9PsSxt"}, {"allowedActions": [13, 61, 69], "resource": "w2uYrdorK7ynxAeK"}, {"allowedActions": [41, 37, 88], "resource": "oAOKei9QxYpGJMKT"}]}], "module": "omOONsNU4GK6AmK9", "moduleId": "j3eYcB9PczbJy6zv"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'true' \
    --body '{"groupId": "4A9M5iwDqAqSItni", "moduleId": "VUscjzTnrFN3YxYM"}' \
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
    --body '[{"field": "5POFkFrXbcp0ehIx", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["v32IBlCjyp1nJqn1", "xUu4vnzDy3HX7xLw", "6CV4lhXlqR2Kj1Xq"], "preferRegex": true, "regex": "PFIdg1hvkKmtIt7N"}, "blockedWord": ["qeBH8uHKEwMxulvI", "Eh8HklhClEmEKZJC", "7f4SJPSxQQNbhW0O"], "description": [{"language": "rzeUhCfEC40HpF6g", "message": ["mL3qT5bRFnhMrdst", "c3ECvwR0aCh1NFyZ", "6BxNAkai4Ba6mLvO"]}, {"language": "P6I86zJShyFdenTG", "message": ["Y5oT3mtHMJ55WFQ2", "TsphD6EcFV5GQ59H", "OwD2h7PbcWaGQITg"]}, {"language": "h0KnZrbLePj8RnJV", "message": ["Fnl8ZrIoUocJbdZy", "3IZWzt6P9T50XWOt", "Z45h5Sgwq4jgCO7F"]}], "isCustomRegex": false, "letterCase": "T2CsVRUo9iw0zdvD", "maxLength": 64, "maxRepeatingAlphaNum": 14, "maxRepeatingSpecialCharacter": 82, "minCharType": 11, "minLength": 25, "regex": "EyybHZSQoima4qtt", "specialCharacterLocation": "HQHOeSfYa8FsWSki", "specialCharacters": ["cdDboNtJbNMA50jp", "15dyzWSn5ObUSvZ6", "z3M454mU90Pe4vfk"]}}, {"field": "Byi4P97HWy3Szpx9", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["iuSJ4inP5t87DPAf", "G6dTWFcJY6yuJdwq", "P24c97mqbN1avWGe"], "preferRegex": false, "regex": "U8Rx81hNcY1TXe7y"}, "blockedWord": ["w6qnxickQtRnF3CR", "qoXw9wREmRqb7uY5", "EECpPgk4L06eW8n6"], "description": [{"language": "DoVftBwBiIyc3LQP", "message": ["mvmlBdWEGqYk2Urx", "omZ3FwCq2m5IjJwP", "ZlhYyrsfpPWkXnVZ"]}, {"language": "wVXSFMHZWuyS1Q9r", "message": ["T5m4zR7Q6ERB06Ld", "LTvo0puQKnkzL5Ar", "vZy9Q2SLPODM5Cum"]}, {"language": "78TXWJrIVLuLnQYI", "message": ["ReSIYVPNwlUuhDzV", "zFgexwfdXTluvsXo", "Qf0GndxSNyLYMP3G"]}], "isCustomRegex": false, "letterCase": "h8RAYWZcT71C1dSu", "maxLength": 69, "maxRepeatingAlphaNum": 16, "maxRepeatingSpecialCharacter": 11, "minCharType": 6, "minLength": 20, "regex": "DS73iwugJsUk7hkj", "specialCharacterLocation": "wvrUGLO0p7ALEngj", "specialCharacters": ["d4OZnKpq8eVCTKyW", "z6VNfo4upV9zQqz6", "M3tfhClKvK7ntFDX"]}}, {"field": "soMz84BaBhcvKxMv", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["kRl2vOQ7XrtNAA6k", "WV0XKHG5dxGR8Rqa", "hWpdec8cPtzNXTp8"], "preferRegex": true, "regex": "1tAcx2LL4YDiFk3R"}, "blockedWord": ["DJuvKGuUcUiQIWHZ", "8r3qb6uENOwEDEPf", "tFxB5MVMLRc9Wnay"], "description": [{"language": "lHLnzlqIEg7Xyay7", "message": ["hzA5G9zqonclydXy", "YWgqoLGpoPSUfKEj", "ADF9Ej5P6PhEjUlH"]}, {"language": "wD3h7RwMaBYEiRcL", "message": ["Zk74W0z40C4SjUKi", "FYu9GprLU62tE5g9", "dJ46DSiMfcAFrRr5"]}, {"language": "a0zfX5Bj07ZfHr5w", "message": ["pjD0pCnYDjdNysXC", "AsyPQMZl7bE2RTik", "ZuuxOyAV1pTegAd8"]}], "isCustomRegex": false, "letterCase": "hSIqn1SRTEokcmhH", "maxLength": 87, "maxRepeatingAlphaNum": 24, "maxRepeatingSpecialCharacter": 25, "minCharType": 10, "minLength": 54, "regex": "cqYwfJ43GHVjTMuO", "specialCharacterLocation": "0m3GH8sVvvcA7iuE", "specialCharacters": ["DFaIxVSRHvQZPG0W", "ZhcOg59V0uTc4Hpr", "OhmhVThxOg0ssPq4"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'rHmSBz7F1ZDz525X' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after '5snxVT42NJlkpgPc' \
    --before '9cgUgfzVCZdRDC3g' \
    --endDate 'LD6gaQEGdoe3Sjhy' \
    --limit '52' \
    --query 'sSSFbm4DjLCmKMxV' \
    --roleId 'bisJbwzmDYKb4K7V' \
    --startDate 'UnekRMLReuBup5P4' \
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
    --body '{"ageRestriction": 95, "enable": false}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'JPPHermkn9rluPQ7' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 64}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'f7FMWwR5Tl1tFjxi' \
    --limit '87' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "myRUMjxwCzscpo6h", "comment": "3L5q6b6Kf9sQLs8v", "endDate": "NXUqDK0edc7uA7fM", "reason": "2NiJLcs5Wn5g5QcZ", "skipNotif": true, "userIds": ["6C1lgRpAXFARBBAg", "UvZgEQ5LkfQQwgcS", "l2b7QfkYNVWu4nsW"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "3ICU9ZRIHdDOnmrs", "userId": "EY1U6ENzNRs5JfmF"}, {"banId": "sQOO0jX9VFfqzhDH", "userId": "DGyZ6JTsmA1P01lM"}, {"banId": "4oP3LVVsuB5uVcoT", "userId": "1fIfE2GBrxb9YY1D"}]}' \
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
    --clientId 'yTpYL9PcGCsgcfsS' \
    --clientName 'RSMc1gwh6CoFdABs' \
    --clientType 'CllLUQkwT01kqI2t' \
    --limit '52' \
    --offset '23' \
    --skipLoginQueue 'false' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["BdASRmLZAddQHqSq", "EcmOLl3gRhnQcL8n", "FHaQYfv6QxdRWfpL"], "clientUpdateRequest": {"audiences": ["KoYlQ6cTZ1HIWqbV", "szuAFt6meF5RJGBn", "DkoYr7k7ySE1lg2c"], "baseUri": "UAdkoyiuKEY7wmyB", "clientName": "awWfABla55uuE5f6", "clientPermissions": [{"action": 1, "resource": "mJl7r0wK7X33GuRZ", "schedAction": 53, "schedCron": "VU4fCVn2XPbsukVj", "schedRange": ["6PZja3tdIEJKiEaC", "MnQJVh8ocwJXR7YO", "xav8NYe13gPJFIYJ"]}, {"action": 16, "resource": "zqpxi2JyspqcU32B", "schedAction": 15, "schedCron": "ZAX9yU8VAEB5YGmh", "schedRange": ["SC4gyLh7vIYcHWxU", "GctpEq1TXoLdSgCH", "xD4iPdyta8vsm7GV"]}, {"action": 3, "resource": "zNmrCqjOlfsep7Nu", "schedAction": 7, "schedCron": "4apPvNgSH3Z9bpmt", "schedRange": ["ZcT3AD3lX9iyJ6Cv", "usUSR6Zp2ma8sA1j", "Qdr7M6fTU8zPOd9Z"]}], "clientPlatform": "BhZYBzsgKdlxm3IM", "deletable": true, "description": "8rureGXf3GDARzYp", "modulePermissions": [{"moduleId": "4uXjWHGluj944uRD", "selectedGroups": [{"groupId": "6SYexhBblQ8xET1a", "selectedActions": [92, 45, 58]}, {"groupId": "J05Tx1M1oEGwM7H2", "selectedActions": [27, 71, 89]}, {"groupId": "qEC1o8taPRn6d9kK", "selectedActions": [41, 9, 98]}]}, {"moduleId": "TNjG30X8SQV4H0Sa", "selectedGroups": [{"groupId": "38fxu4sujmP3HFu4", "selectedActions": [95, 27, 92]}, {"groupId": "hEEnWwDZ3lec7W7z", "selectedActions": [1, 100, 26]}, {"groupId": "TiU6S45bNqEkH2VA", "selectedActions": [98, 1, 24]}]}, {"moduleId": "RSKh0eEkvbrWMBgw", "selectedGroups": [{"groupId": "j7lYDDo8Cw5c5Wbr", "selectedActions": [100, 21, 93]}, {"groupId": "jn59QHphwr94k8Uv", "selectedActions": [22, 19, 79]}, {"groupId": "eYuv8NhKoG3ly2Ff", "selectedActions": [25, 84, 72]}]}], "namespace": "LZJ6rsMp2oCBbafU", "oauthAccessTokenExpiration": 87, "oauthAccessTokenExpirationTimeUnit": "rYPtrosGQbA88J0U", "oauthRefreshTokenExpiration": 79, "oauthRefreshTokenExpirationTimeUnit": "iZWLchVf92rxdFs9", "redirectUri": "dLvaJRS1YKrlbYDd", "scopes": ["k5FJV17MLbStjzXu", "BZNW8YOeJtrruW51", "XTAXXBGTnssHBU6h"], "skipLoginQueue": false, "twoFactorEnabled": true}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["4aJspdxsK0Jev8hw", "tfEpuskiXSR2XVF1", "A4NMLsaElAqMfCBQ"], "baseUri": "jmhQ2qQOpllUsdsw", "clientId": "TmcNlXyHpYoT4W9a", "clientName": "oQOWnkk9wzELT3ZU", "clientPermissions": [{"action": 51, "resource": "9j5zYwFyS2SwyOEz", "schedAction": 77, "schedCron": "v00Ryf4GRzF6wFrO", "schedRange": ["9eVyhZpypQFVTKpb", "w576DaWLHMCfrOZj", "mxUpL11HP1skyz8S"]}, {"action": 17, "resource": "SGwk4JRrFZkBG1tZ", "schedAction": 73, "schedCron": "qQLhpPzvG1T5sYN3", "schedRange": ["G4LvOhsZQSDyg3BP", "PKAbsFH7JUOQcBVn", "uzC8lqWqiLj5F8M9"]}, {"action": 19, "resource": "F8oWZBaEJOxSby2t", "schedAction": 92, "schedCron": "mnhJMd3FG0FPIheb", "schedRange": ["DbdOukFSmkSRpH59", "b7u4RvP6A40Xrs6p", "ZrRtp6MM5qA4hCWM"]}], "clientPlatform": "M8YfGOXStEKNgpnx", "deletable": false, "description": "HsCRlQdwBHTbGlS8", "modulePermissions": [{"moduleId": "aqafg7nUPoUQoX1L", "selectedGroups": [{"groupId": "qWTRv8cS18XPilCV", "selectedActions": [76, 55, 7]}, {"groupId": "aumZULM3F52o2flj", "selectedActions": [37, 14, 62]}, {"groupId": "ZAVK5362JYFQ0ksZ", "selectedActions": [9, 5, 26]}]}, {"moduleId": "x3v3xHp088BCxEN9", "selectedGroups": [{"groupId": "xnbNx1sR8gJFpGXB", "selectedActions": [66, 96, 12]}, {"groupId": "uv7IS0as95XKFo35", "selectedActions": [37, 11, 75]}, {"groupId": "FDq5dvFrreEnHnjF", "selectedActions": [73, 5, 50]}]}, {"moduleId": "0dYHenxT61VHclZE", "selectedGroups": [{"groupId": "swZWmfiX7v7QS856", "selectedActions": [14, 27, 63]}, {"groupId": "JnMGngYHwJXjMosY", "selectedActions": [30, 93, 93]}, {"groupId": "EDIUTZAETU2wQzt5", "selectedActions": [52, 84, 22]}]}], "namespace": "PCFQRL4KclQyQsXV", "oauthAccessTokenExpiration": 40, "oauthAccessTokenExpirationTimeUnit": "9je3JqxtiSECZjwY", "oauthClientType": "lUHOhv6K3NiAqZ7u", "oauthRefreshTokenExpiration": 55, "oauthRefreshTokenExpirationTimeUnit": "uuZP8MFo7mXQhTet", "parentNamespace": "07ydwNRArNAE8zVD", "redirectUri": "r7vvZIPkkltYuSPu", "scopes": ["6nWHqtS91KQ7OEyh", "KcNJwmJ1lgaTEQXQ", "zNhkzPqDtKcDw2c7"], "secret": "4GAGkN8ECetjo75U", "skipLoginQueue": false, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId '5E4UzjTnWHrwSeKp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'YXsifssz0GXFORgj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'xK98w6etzJW5ggDi' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["PBuut7mFbYFSc3sb", "trT1N6BtGeG7NVZS", "3Zwbh5kqIcdQVUdq"], "baseUri": "TQyAmeWJwYSUlJCx", "clientName": "NdgEO9dzcGysTWYx", "clientPermissions": [{"action": 91, "resource": "UQ8rztyETnjIAXXE", "schedAction": 11, "schedCron": "0mYuk0WnsgVdAjWp", "schedRange": ["q5cZzh4HPlT4Zibm", "FirfVecyQdSbdBWe", "oskR42yigXaMw3L7"]}, {"action": 63, "resource": "1u9eTcFELHj7RLeu", "schedAction": 43, "schedCron": "I8T7i71qL688x5oW", "schedRange": ["0TWaIrUcKLxzf5Rm", "SJv0t6jsR0J8Wx4v", "IZqkwB4X0CN8WwMC"]}, {"action": 84, "resource": "wYt8nAqyqdnArown", "schedAction": 89, "schedCron": "vnPGRsHqv7ZkN676", "schedRange": ["BS67nwMXBEf5Sbg7", "5b09H33AFsQpnw6Z", "W5udEenaJQbqFn8D"]}], "clientPlatform": "ugt7ClTMAkUfSJio", "deletable": true, "description": "GfR79OsysklnUgnz", "modulePermissions": [{"moduleId": "mZmyMShb9NszhHJc", "selectedGroups": [{"groupId": "JOTxKLdjIv0euUR9", "selectedActions": [92, 60, 94]}, {"groupId": "uCXLdE8LQ1n7rt1y", "selectedActions": [67, 12, 15]}, {"groupId": "Ww4WiUZzsvtVjCNZ", "selectedActions": [53, 17, 74]}]}, {"moduleId": "2FuGkX6gp2MlcMdx", "selectedGroups": [{"groupId": "7Oo3dZw7dyHNHJqu", "selectedActions": [78, 62, 0]}, {"groupId": "hwwTS9dSBGJRl9qe", "selectedActions": [73, 63, 26]}, {"groupId": "3RNRrw4vJBFJkT7b", "selectedActions": [93, 43, 13]}]}, {"moduleId": "X9gV1X4D6aNCwCZV", "selectedGroups": [{"groupId": "eUkBHkhSRscItCsl", "selectedActions": [7, 97, 68]}, {"groupId": "3ZSO14aKUP7IIhJG", "selectedActions": [56, 2, 53]}, {"groupId": "HlxQxEFFCJlyxT8B", "selectedActions": [6, 39, 55]}]}], "namespace": "kc6zS4a9KNpUy3Pe", "oauthAccessTokenExpiration": 44, "oauthAccessTokenExpirationTimeUnit": "iBX8seZTrRxN8xQQ", "oauthRefreshTokenExpiration": 59, "oauthRefreshTokenExpirationTimeUnit": "RjeHIlxslMqCqrlW", "redirectUri": "J2zdXIsGRhij9e1B", "scopes": ["lShbcxL5gueupzh7", "ee9kYwwnaRDvxeVc", "tEHimcWXNgR57nSO"], "skipLoginQueue": false, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'SCZybZruI20UIIqn' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 60, "resource": "vMKFthmpCYfvRZKJ"}, {"action": 5, "resource": "UmEMEw6pnBtW5GrG"}, {"action": 47, "resource": "e06THStLDTCKmG6Y"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId '5AHqOlwQE1Jm7dyx' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 83, "resource": "Pe16TWaRkNYkBa7C"}, {"action": 47, "resource": "5ZZKtaIWgssm4wth"}, {"action": 33, "resource": "q5wN117r116idZF1"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '60' \
    --clientId 'WDNOYJv2Yx2CgWy5' \
    --namespace $AB_NAMESPACE \
    --resource 'DT6JpYUsaTzfZcUV' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'EvBWpMsHQlsHkSVM' \
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
    --body '{"blacklist": ["cyeYjzqoXhwKigNR", "oZ0t74AciwvxjYXA", "fcqZKKVG5iY6cZTL"]}' \
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
    --limit '91' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 139 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 140 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'TODPcXa1CEdbWOwJ' \
    > test.out 2>&1
eval_tap $? 140 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 141 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'AU29hRSX9oRcInRa' \
    --body '{"ACSURL": "UEXr4vAqor9kUpJ2", "AWSCognitoRegion": "lLYO7Xeg8CYCE7my", "AWSCognitoUserPool": "evdhNJHd5W2LiQ7Q", "AllowedClients": ["iSz7BeOevUEFegRz", "RJ9apCEyHmaF1PrC", "vHbK3uZQfTwPRPtW"], "AppId": "qL523FAKwIUCU38l", "AuthorizationEndpoint": "1TH9HN1zwwduClZ0", "ClientId": "1wQwDgLDmbGRjdvA", "Environment": "ofPZepgUZC9TTshL", "FederationMetadataURL": "1bQtDWzzEbAwHXrj", "GenericOauthFlow": false, "IsActive": true, "Issuer": "dGYPjmBGi5zMKtH8", "JWKSEndpoint": "MILlcqmPtZw0Hbfh", "KeyID": "Mw1PKAvRiRTIHJmp", "LogoURL": "W2xUJ0OAn7lK7mUo", "NetflixCertificates": {"encryptedPrivateKey": "in3xLMYzJByao9Cg", "encryptedPrivateKeyName": "YcUo8y3naZV8ByCn", "publicCertificate": "jFbxMKh0B9Td0CQ5", "publicCertificateName": "mBWIaYeJiwfaC7ws", "rootCertificate": "K2SCfH8TDyxnGdXa", "rootCertificateName": "HzgSSd63cBnrxD8O"}, "OrganizationId": "tf9R1JRCfn0xMr9T", "PlatformName": "6WSSUtEKQXFLz3Fs", "RedirectUri": "1ewQaGESVuEwIHra", "RegisteredDomains": [{"affectedClientIDs": ["AhSbciVfg3CH8RJa", "eXI5ZdPWbaRGzHEQ", "IyxYjL849jgpEOR0"], "domain": "BbuqDzVr0Z57Nflb", "namespaces": ["3w4Hy5ozX9htxbPN", "7g8rwYwGDr3Z2SRC", "eGmplzyqekuxbw32"], "roleId": "KDsZJqfOnGl3Sqxb"}, {"affectedClientIDs": ["a9T6ipASGDPfRFFL", "I2GJa7yll9woFJ3P", "smUoEt1ZFpb11ugi"], "domain": "A3xSxUjCL8Bz3LwW", "namespaces": ["3VeKokM11ZO4AHwA", "xPJrQuK5Vg6xJRJA", "JUWmp4LGuHl16htL"], "roleId": "LI59WDZ9HjhedglN"}, {"affectedClientIDs": ["97l5qYrKnpzra4Wj", "b0z8n8IaDvr0SMSv", "liUavgIt91GNHbey"], "domain": "lvX2wMnF4sM3S2uM", "namespaces": ["IK9ArxNRdudOiFmi", "cegcE3VvEumjJZ25", "EBurE8DJlBGDcB5E"], "roleId": "aWJcITitczrxjcKN"}], "Secret": "KeJL1fHUXXbG91Rv", "TeamID": "k1kzBAWGjcbDg3iH", "TokenAuthenticationType": "q8uwaxrRuNRiaayF", "TokenClaimsMapping": {"T2XutQNeWhkc9bYg": "03x91rFW4r1vpTqQ", "54UhYvZFiAZq23TU": "XI7wC918q2ldrsFn", "spwUKVavKUHLQEUC": "mNymzKL6k3GNVDTV"}, "TokenEndpoint": "LXQnGKQvr1ZENruU", "UserInfoEndpoint": "FTGlsLK4UnsE5Gec", "UserInfoHTTPMethod": "7Wy639gAVhg8n3Gd", "scopes": ["NjhSPRBnho0bIcRQ", "LkY17sz3bQkEVD6G", "vYaefiNCkgh5CfiG"]}' \
    > test.out 2>&1
eval_tap $? 141 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 142 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'vumI9nzEPYfNsirX' \
    > test.out 2>&1
eval_tap $? 142 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 143 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'kgkoZs1FCuTjS9X7' \
    --body '{"ACSURL": "IuqyXZpuZe2BFhFr", "AWSCognitoRegion": "3UhMB2SEjJb6h4VF", "AWSCognitoUserPool": "weCnqUSgi5pkrmom", "AllowedClients": ["cQhyB660AHVuknuc", "ahTRvgJ0KLDVZimT", "UvXZeDcHScUhLDM2"], "AppId": "8GJHmDCPn9QSc8NQ", "AuthorizationEndpoint": "Lk8639p1XaIUIEXu", "ClientId": "NV1co76Z2ehI7rYH", "Environment": "QIkSCPhpOT7Svu8T", "FederationMetadataURL": "sVCjDKDc5KmuXHtj", "GenericOauthFlow": true, "IsActive": true, "Issuer": "EIfiNMYjLXLndqy2", "JWKSEndpoint": "Au76uxN4zyLK3sTw", "KeyID": "WQqCQ8w9Q6bcVfJV", "LogoURL": "AvVRVwpVNhjLfIqW", "NetflixCertificates": {"encryptedPrivateKey": "7SMiV38EaVNpHGu5", "encryptedPrivateKeyName": "WCFsevwh7PpVwe9K", "publicCertificate": "09u8sb1LR6AVzLij", "publicCertificateName": "zceLcwrnGbsRuhJR", "rootCertificate": "ilf6vmW84JKet8hp", "rootCertificateName": "qLIdC253MuhqlWrI"}, "OrganizationId": "CJKAosSikxU2IA5R", "PlatformName": "XlgeKP5vn2aWSaVw", "RedirectUri": "cAU1gIIhUq8cvEeD", "RegisteredDomains": [{"affectedClientIDs": ["LyXXvVOV59Bqhtce", "prWREuXb409EXJYN", "Ut1rwj6JoLZ8FTfR"], "domain": "vR24EocYnWRr1sHw", "namespaces": ["TkGmPOk9hCw2zE8V", "TQrjHhWV3i5wmBL8", "yO2HqQbaSejtyK7T"], "roleId": "Nsg0g0Ff6bNuoLC7"}, {"affectedClientIDs": ["M9DPi50CcNfHutFn", "AXDQKXeE18vZXwQA", "4UJ4Ttq6lSriBPH0"], "domain": "Gjh9y9LSaBAR5qoj", "namespaces": ["bu6XEzTfcgRA276i", "UAClGplX8vlu0tRi", "bPpHiRBbPLMA2SpZ"], "roleId": "pt5ts26iJnHemuT0"}, {"affectedClientIDs": ["jBZBTLvuAaqOU9Uo", "lxbqmA199U44sbR5", "vGXvKc35gexGltqG"], "domain": "4fPsA367dwNJPtRQ", "namespaces": ["4uZuxXudXU7GpkOq", "hzpMzalLIyW1UkDF", "mdxvkzNl5nlMc8Ey"], "roleId": "oazdqB0TRKMZSHuy"}], "Secret": "hrCUD0kr7rFcGE83", "TeamID": "E3l6e1uOOC6EozIR", "TokenAuthenticationType": "aoWTpcsTlSxCC1ZF", "TokenClaimsMapping": {"bIFoSU6ZntgTALOc": "O5zPapoLHmOhKCBy", "cuI1WRqKVP2txL6V": "50NvunvwM3nhLzyY", "59T4zSV598MXgazq": "gVLE1DO5IKRE95IV"}, "TokenEndpoint": "WBp7T38EttuQQxxp", "UserInfoEndpoint": "ys5u3ko7J7F2z0OU", "UserInfoHTTPMethod": "1Lck7tU4Dm8Ybsw1", "scopes": ["t9Zjn2Dje30wdN7U", "3k1O1b2CaW9HP2xI", "H0o370oCxTDj9W3d"]}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 144 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId '1K1TtPxTSA9cSp3x' \
    --body '{"affectedClientIDs": ["bSzIEkGLBj8e8gAY", "RV4CskeH3HtzoCjz", "jUq0ROigYzo0J0GT"], "assignedNamespaces": ["GHyFrUvaQpYQ5lWV", "WqDzkOZRzJesp7RS", "m66fb9LFRXnyF7CC"], "domain": "Pgujzs5QzLh9k3Eo", "roleId": "pZYMjG8rA0v9cZIN"}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 145 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'NZvjGHmu4usjmZea' \
    --body '{"domain": "yGHWgGEMgPc02YcA"}' \
    > test.out 2>&1
eval_tap $? 145 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 146 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'xvf7xcsiujR37LGk' \
    > test.out 2>&1
eval_tap $? 146 'RetrieveSSOLoginPlatformCredential' test.out

#- 147 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'SwHpsHgkO460C24h' \
    --body '{"acsUrl": "DYNzUpT9jlDIMOJ4", "apiKey": "YUbmQ2DDINj6v59n", "appId": "zaZmMZIZL8Nik7RY", "federationMetadataUrl": "q1Iw6MEjuVPtN59h", "isActive": false, "redirectUri": "iZVQhXllDX1VDRqc", "secret": "OOZvqM79fX0xjl1E", "ssoUrl": "NUbN1iisWOl4Sp2x"}' \
    > test.out 2>&1
eval_tap $? 147 'AddSSOLoginPlatformCredential' test.out

#- 148 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'TafBSE9Q2ZmOGOpQ' \
    > test.out 2>&1
eval_tap $? 148 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 149 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'zZEJlHT7FoWPWiWm' \
    --body '{"acsUrl": "cz91Tu80F7lhz48q", "apiKey": "j4lEOvWCLsW0rYf8", "appId": "7oBU4g1x6nzqKowF", "federationMetadataUrl": "PhcdZnGC7TxWuD8X", "isActive": false, "redirectUri": "VOF2jqFYyffjJMNi", "secret": "twrz3D9QxnwlnMA1", "ssoUrl": "DLd8tUKxSFrc9Lva"}' \
    > test.out 2>&1
eval_tap $? 149 'UpdateSSOPlatformCredential' test.out

#- 150 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId '6iVL6E6eX0Nis9py' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["MwOUKBzpht7lOZxX", "f3NwOnxW7yIsHejW", "HHEzJryIuur79hX2"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 151 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '4RqFGcOnNddkxBW9' \
    --platformUserId 'ZYaW616r389iPtXN' \
    > test.out 2>&1
eval_tap $? 151 'AdminGetUserByPlatformUserIDV3' test.out

#- 152 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'TSpJx8AtiIKhs0yh' \
    --after '42' \
    --before '41' \
    --limit '53' \
    > test.out 2>&1
eval_tap $? 152 'GetAdminUsersByRoleIdV3' test.out

#- 153 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'L8Mjx889rdXXOC5w' \
    > test.out 2>&1
eval_tap $? 153 'AdminGetUserByEmailAddressV3' test.out

#- 154 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": true}, "userIds": ["rmOam7RvZk1jxjM0", "HOeQGqJDIguGwM6j", "NhXFreyFA0gVbqJD"]}' \
    > test.out 2>&1
eval_tap $? 154 'AdminBulkUpdateUsersV3' test.out

#- 155 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType '4znCZdIgHuhgATka' \
    --body '{"bulkUserId": ["DOIlSsMdjUOB2wV4", "wEDY5NFokwQl5M2v", "zac4kdZlXOBTWQf0"]}' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserBanV3' test.out

#- 156 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["3tUwtB36KxpATIag", "V2kfmVbcOA7ZYh9u", "GWlm57wDdiXJXxbX"]}' \
    > test.out 2>&1
eval_tap $? 156 'AdminListUserIDByUserIDsV3' test.out

#- 157 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["9QFt114yD3k2F2cM", "K6yr9BdlwRBIyzWj", "NDp5duNukHTxSQX0"]}' \
    > test.out 2>&1
eval_tap $? 157 'AdminBulkGetUsersPlatform' test.out

#- 158 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["PZfZG7AXTNfS1TbI", "OTYGH2u4TE5D84Va", "OmpF0HaKGXUoNLQI"], "isAdmin": false, "namespace": "yZ1CZyQZBumkZfOn", "roles": ["sY1xqZXstqtxfuXt", "R06WG4kq5HSsqmEb", "xqfq42ALNgv9TMpZ"]}' \
    > test.out 2>&1
eval_tap $? 158 'AdminInviteUserV3' test.out

#- 159 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '83' \
    --platformUserId 'PVOou8M3Ng3VWn1o' \
    --platformId 'mB1vDxYyJ05owSPY' \
    > test.out 2>&1
eval_tap $? 159 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 160 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 160 'AdminListUsersV3' test.out

#- 161 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '6HBcFjLGMdAKAOBj' \
    --endDate 'fgJPi8lcC6IM0Z86' \
    --includeTotal 'true' \
    --limit '74' \
    --offset '57' \
    --platformBy 'N4QZ7EhWnHSZTVCD' \
    --platformId 'EKIa7pn5NvJD6gTz' \
    --query 'CmwjtcaRfArDGxPG' \
    --roleIds 'ZpWZa7kXNiNrH7q5' \
    --skipLoginQueue 'false' \
    --startDate 'cHRtHZrvDQ4beGDY' \
    --testAccount 'false' \
    > test.out 2>&1
eval_tap $? 161 'AdminSearchUserV3' test.out

#- 162 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["wVJJo1p1RDebeJvV", "44JjJJmqsO4X3LJp", "jiQYwLFcFaGn85zp"]}' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetBulkUserByEmailAddressV3' test.out

#- 163 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iXkpRaMCzSwNfefG' \
    > test.out 2>&1
eval_tap $? 163 'AdminGetUserByUserIdV3' test.out

#- 164 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '0tikjF3kt8xr0B72' \
    --body '{"avatarUrl": "iXMaLmjMxc7mJDr3", "country": "8e2qqmaHVJ5Xakow", "dateOfBirth": "av5Po8xS6nowzeBP", "displayName": "14reFvofPt8l1EVZ", "languageTag": "CL3YgTATX9K9ZM83", "skipLoginQueue": false, "uniqueDisplayName": "2ngLagG091uBQS6O", "userName": "hHBcrhZFtCqALXzg"}' \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserV3' test.out

#- 165 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId '7nuvRjMq4X3rCAWp' \
    --activeOnly 'false' \
    --after 'cNfXL5Du12mVf5fT' \
    --before 'qMXrd3ezuxJEpXxf' \
    --limit '22' \
    > test.out 2>&1
eval_tap $? 165 'AdminGetUserBanV3' test.out

#- 166 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'F5Vcph8gvTn0pVnz' \
    --body '{"ban": "1w35wAxYO8D2wvo9", "comment": "tJ7wLadhDWTEYFRw", "endDate": "EkFQwTXdxc5cGpjT", "reason": "RpO638uZN3RROffD", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 166 'AdminBanUserV3' test.out

#- 167 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YmlYrdxHXSvtXmb4' \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserBanSummaryV3' test.out

#- 168 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'DTwm9BgXIQ16bCur' \
    --namespace $AB_NAMESPACE \
    --userId 'OUBJytFG6IehWpLk' \
    --body '{"enabled": false, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 168 'AdminUpdateUserBanV3' test.out

#- 169 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId '02y1auUSjib6JASF' \
    --body '{"context": "Rmlb4ca3lhMUbZUM", "emailAddress": "ewy5Ml3yFVdB6aLt", "languageTag": "zNm5cAgzKTgTiK77"}' \
    > test.out 2>&1
eval_tap $? 169 'AdminSendVerificationCodeV3' test.out

#- 170 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vs8ClwzG64jDJsRT' \
    --body '{"Code": "TmgHAbcHl5LukfSt", "ContactType": "Glrmns9k131jrbGZ", "LanguageTag": "IlG52UN9IzaVq0TS", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 170 'AdminVerifyAccountV3' test.out

#- 171 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'IaPWVtn9CScQmAAY' \
    > test.out 2>&1
eval_tap $? 171 'GetUserVerificationCode' test.out

#- 172 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NyUGd3gTFi5O3yLb' \
    > test.out 2>&1
eval_tap $? 172 'AdminGetUserDeletionStatusV3' test.out

#- 173 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'aJ1H66EXbBp0OsG8' \
    --body '{"deletionDate": 48, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 173 'AdminUpdateUserDeletionStatusV3' test.out

#- 174 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QmccdBVv8Bv53wKt' \
    > test.out 2>&1
eval_tap $? 174 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 175 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'oeJpyng0NLZIW7uW' \
    --body '{"code": "P6fcAiDPN4N0HqlE", "country": "fi1brzgVMG5RHSsC", "dateOfBirth": "Uk8Unq3OXEz7YDz7", "displayName": "Ml5UyzbiRb6hO1sV", "emailAddress": "2ippRlGam4bEEsLo", "password": "f59u447UyRR06iwl", "uniqueDisplayName": "U5d7rTzyEv56RfAc", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 175 'AdminUpgradeHeadlessAccountV3' test.out

#- 176 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xOpKriFC4Ophiooi' \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserInformationV3' test.out

#- 177 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LnlPzs2K4Fic9Nb2' \
    --after '0.19067524254989276' \
    --before '0.9848964670408378' \
    --limit '90' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetUserLoginHistoriesV3' test.out

#- 178 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zjjIPWwLOeqG2DeY' \
    --body '{"languageTag": "Scsvs4mVZzT5Sj1G", "newPassword": "z2N9BdHGRmUvUOOC", "oldPassword": "Bs2KmbI5lBxtCE8m"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminResetPasswordV3' test.out

#- 179 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'yfKUl8fM90InBuRo' \
    --body '{"Permissions": [{"Action": 80, "Resource": "FMT0v4ax79IHl4Ij", "SchedAction": 1, "SchedCron": "fPajqguGRGuQeFlr", "SchedRange": ["6FCeE9rtVXttBRVQ", "9hVTdwEUxhJII4It", "oqIUpYqbjTW8svEu"]}, {"Action": 58, "Resource": "Fci9a5hd9nQNtMXl", "SchedAction": 20, "SchedCron": "sai7xscoV5xXFQlt", "SchedRange": ["qWwvOk902jPUhRNS", "pBHcpPrVki5cBkT5", "3OSSuaFxYube49Hl"]}, {"Action": 34, "Resource": "kYfuIDwHEzkhVVs6", "SchedAction": 48, "SchedCron": "aaZe3LdxqBYbrFWH", "SchedRange": ["nr4VHqqHUkWsaOPM", "fWPZVSeH0QNIkhg0", "l8eIwz9MlPsKdccq"]}]}' \
    > test.out 2>&1
eval_tap $? 179 'AdminUpdateUserPermissionV3' test.out

#- 180 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iS1cIi9ils8VspIp' \
    --body '{"Permissions": [{"Action": 26, "Resource": "XyEd1NQh78VTV8EY", "SchedAction": 26, "SchedCron": "l0YiZkRlQ2YfXjkM", "SchedRange": ["flZ6ZqVJyddNLT24", "A6X9PVuID6KXNvxh", "56NLxgDeRmmxdlQY"]}, {"Action": 53, "Resource": "XE9fuzJHMfmtLm7P", "SchedAction": 24, "SchedCron": "r6MicZ0cPohBKaVp", "SchedRange": ["G0XBlkfpZCymoO5d", "Qdh78kIvLfbGKWla", "6RGsEp0yzf5tyipZ"]}, {"Action": 65, "Resource": "HGOF1CsXPNWJMjr8", "SchedAction": 99, "SchedCron": "OI0X1WA8uxfL1kGs", "SchedRange": ["8zyzOlGxaCwOwqDJ", "gUc9sXvpU8IpkHIh", "XAusr8H9LcZ9OKPw"]}]}' \
    > test.out 2>&1
eval_tap $? 180 'AdminAddUserPermissionsV3' test.out

#- 181 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId '58LuJDBAdJCqXPaf' \
    --body '[{"Action": 49, "Resource": "g5eWMKt1eAy9YyeC"}, {"Action": 60, "Resource": "ObSFmkZRm7H9JfVt"}, {"Action": 17, "Resource": "eMf3eKjdcEq3ykef"}]' \
    > test.out 2>&1
eval_tap $? 181 'AdminDeleteUserPermissionBulkV3' test.out

#- 182 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '51' \
    --namespace $AB_NAMESPACE \
    --resource 'TIKPutfv0X3X4i4q' \
    --userId 'sLBiLgj50OQkNXWi' \
    > test.out 2>&1
eval_tap $? 182 'AdminDeleteUserPermissionV3' test.out

#- 183 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'uOduVFAbEAmRnSyg' \
    --after 'dkMvw08HvM4HOpdh' \
    --before 'Fp0M46lPMAR9U0ZT' \
    --limit '33' \
    --platformId '3uPD8iEqQO07Mzsa' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetUserPlatformAccountsV3' test.out

#- 184 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'tCFR87XXs20Ttzo2' \
    > test.out 2>&1
eval_tap $? 184 'AdminGetListJusticePlatformAccounts' test.out

#- 185 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'ORmcm4P8PzsGCk7N' \
    --userId 'VVTZQwfe8KzpcMq2' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetUserMapping' test.out

#- 186 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '2s8JvDBMofNof3Wt' \
    --userId 'tBc7Sqh2U8HewnyD' \
    > test.out 2>&1
eval_tap $? 186 'AdminCreateJusticeUser' test.out

#- 187 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'XOGPM4XG0yoeV5xe' \
    --skipConflict 'true' \
    --body '{"platformId": "utKVOgfwCRy7Rxl4", "platformUserId": "kNSbifyPdFpVk8J3"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminLinkPlatformAccount' test.out

#- 188 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'goF67lR1U69R5gWi' \
    --userId 'GyqDcyXFrRU9tw14' \
    --body '{"platformNamespace": "ciljftD4DoSRbtEs"}' \
    > test.out 2>&1
eval_tap $? 188 'AdminPlatformUnlinkV3' test.out

#- 189 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId '1dfrsYEnfoeVIf2i' \
    --userId 'Jokm1eujTDuV3mjd' \
    > test.out 2>&1
eval_tap $? 189 'AdminPlatformUnlinkAllV3' test.out

#- 190 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'nbm7lnDEW5JReViu' \
    --userId 'rUVrp1H8TSedgQHJ' \
    --ticket 'DgdSlIf18qqGFzXT' \
    > test.out 2>&1
eval_tap $? 190 'AdminPlatformLinkV3' test.out

#- 191 AdminDeleteUserLinkingHistoryByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingHistoryByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'LSIYgxw4OjM91Lcv' \
    --userId 'NLpN7aRoUZbL7WKn' \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserLinkingHistoryByPlatformIDV3' test.out

#- 192 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'gUqKW5hxjbgGqFpq' \
    --userId 'vvdeehZcIv4Fdpki' \
    --platformToken 'wnJkhFq1vRzPcb18' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 193 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'fGMtMzgQOau4ZW8C' \
    --userId 'auxLoyn712QIvoRg' \
    > test.out 2>&1
eval_tap $? 193 'AdminGetUserSinglePlatformAccount' test.out

#- 194 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'nwCTn9UaB3ks6dAW' \
    --body '["prIo7dJrDNVpltmZ", "AeCwIeIDrxmbQLaz", "SCHlIT5emaJonKAv"]' \
    > test.out 2>&1
eval_tap $? 194 'AdminDeleteUserRolesV3' test.out

#- 195 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bBXGlDPZxuEmmV2l' \
    --body '[{"namespace": "NBxJTZb9uAdbuNbX", "roleId": "CP7rVeKjsOWddyvz"}, {"namespace": "3fd2tQJIgGrcxiY4", "roleId": "KXPLdQEtjGjjvrVD"}, {"namespace": "2ykMljG3ryrGsmMF", "roleId": "AbWkqifQv4CZBfuG"}]' \
    > test.out 2>&1
eval_tap $? 195 'AdminSaveUserRoleV3' test.out

#- 196 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'ksXVvEdwkgLGGi7a' \
    --userId '6oDuilDmuxQoD1YZ' \
    > test.out 2>&1
eval_tap $? 196 'AdminAddUserRoleV3' test.out

#- 197 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'wnZrl4gPxlxHiIBG' \
    --userId 'pWthEo0QnYbVkJlx' \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteUserRoleV3' test.out

#- 198 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eXQFPSW7qW9MXTGo' \
    --body '{"enabled": false, "reason": "mcsqeGONHJVCASGF"}' \
    > test.out 2>&1
eval_tap $? 198 'AdminUpdateUserStatusV3' test.out

#- 199 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'iVuqZcbO93M9YKEI' \
    --body '{"emailAddress": "VS7LyaiUbma0x9FX", "password": "prQm30m0slHsj6xw"}' \
    > test.out 2>&1
eval_tap $? 199 'AdminTrustlyUpdateUserIdentity' test.out

#- 200 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Ai2atLOmPGvbWsd5' \
    > test.out 2>&1
eval_tap $? 200 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 201 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'tSUD81snUx3VTpvp' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "a7DMd5ksX8u0jKYc"}' \
    > test.out 2>&1
eval_tap $? 201 'AdminUpdateClientSecretV3' test.out

#- 202 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'QVFMWuAjBAsPpcqq' \
    > test.out 2>&1
eval_tap $? 202 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 203 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'maOLexRkYH8ns5mk' \
    --before 'Z5Z5rEp5CgNSG2In' \
    --isWildcard 'false' \
    --limit '32' \
    > test.out 2>&1
eval_tap $? 203 'AdminGetRolesV3' test.out

#- 204 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "managers": [{"displayName": "wnbX1JVwl3MKtvRb", "namespace": "oexeShpKQtqnJuaN", "userId": "2fFUsukZ59FdRdaX"}, {"displayName": "a13PglX2pFP2Fbsh", "namespace": "A7a7XcigHxSWCWa9", "userId": "M1vkLtweyflgtjQr"}, {"displayName": "9qmm4b6GID1tgULA", "namespace": "OqeuKjBeidRWcugV", "userId": "pntQu0UMPFPbtbN3"}], "members": [{"displayName": "wlewhyd3IZ5k6DUb", "namespace": "Vph001QXlpQ0veYf", "userId": "ltpCh0j8xVD5eT5d"}, {"displayName": "LsIoqvcY6889JKr8", "namespace": "kOmxzsaOulsMDnEd", "userId": "hGqf7DX278WU3s4Q"}, {"displayName": "wmWcHlFpyEe1nqqV", "namespace": "8uwjmHoujRaWZxq2", "userId": "hFK2fDCpMPMFkyPX"}], "permissions": [{"action": 94, "resource": "G62f3nReF3VLSFuX", "schedAction": 67, "schedCron": "BbaBsuTnfyvPD3XP", "schedRange": ["8EvuUdNilRdAeKuE", "KrM1yY5qdOJiQP5Q", "ln8OfBVjAs59qCAg"]}, {"action": 88, "resource": "1AoNrb23rsCmu4le", "schedAction": 71, "schedCron": "XJrYktUSW4JPXFhv", "schedRange": ["mB4XMsLBwpPbnSwK", "6xJ5HLYgXIPcXDR0", "3sHxunzFoEnaM6CB"]}, {"action": 100, "resource": "TvwwgsohT3SBuUii", "schedAction": 45, "schedCron": "vzfB9sAXlzF9rj4w", "schedRange": ["AYpKK33lc3lE80nX", "mzSEsPnfMG6itG1R", "Air1IQ4CklkaCUcD"]}], "roleName": "Zv352Et5UMERTIO3"}' \
    > test.out 2>&1
eval_tap $? 204 'AdminCreateRoleV3' test.out

#- 205 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'Vv9EiP3DuhBGJ0ch' \
    > test.out 2>&1
eval_tap $? 205 'AdminGetRoleV3' test.out

#- 206 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId '6ILIb4HicVWNbgGZ' \
    > test.out 2>&1
eval_tap $? 206 'AdminDeleteRoleV3' test.out

#- 207 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId '7HUOY6ESfS4Ot299' \
    --body '{"deletable": true, "isWildcard": true, "roleName": "cRPdb5V2mkIpitNn"}' \
    > test.out 2>&1
eval_tap $? 207 'AdminUpdateRoleV3' test.out

#- 208 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'CcoqqBSmHNNfCOJO' \
    > test.out 2>&1
eval_tap $? 208 'AdminGetRoleAdminStatusV3' test.out

#- 209 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'ZUUqsOJ9bnYCNalV' \
    > test.out 2>&1
eval_tap $? 209 'AdminUpdateAdminRoleStatusV3' test.out

#- 210 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'l8DulTQ8OsF0itqf' \
    > test.out 2>&1
eval_tap $? 210 'AdminRemoveRoleAdminV3' test.out

#- 211 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId '4qw6hWTUPr7ME06g' \
    --after '9jPojnYWZYgU6nCa' \
    --before 'D7dnrHTYcpaLtntP' \
    --limit '20' \
    > test.out 2>&1
eval_tap $? 211 'AdminGetRoleManagersV3' test.out

#- 212 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'E1laviN7UPmhog0r' \
    --body '{"managers": [{"displayName": "3SZgkSxUkV4Oijrs", "namespace": "KBT2fWioBWInsjRI", "userId": "X7dbzVCFQzkFmS7z"}, {"displayName": "nlGcuMnveYHVCmJU", "namespace": "FJUmjrNn0UVwDU09", "userId": "nhhYzMY8hJaKB67y"}, {"displayName": "rA6vThWjPkX2166H", "namespace": "0IJwqLpPoA81jInl", "userId": "mKnPfLRqmB3AGlWA"}]}' \
    > test.out 2>&1
eval_tap $? 212 'AdminAddRoleManagersV3' test.out

#- 213 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'W2zCyAryglGkXBwA' \
    --body '{"managers": [{"displayName": "YGaCFzgX2wXaHwhT", "namespace": "NGpnQ3gaaFX0fz77", "userId": "XjcZfUZZ9DEA3lfi"}, {"displayName": "G4Xg73OTofKbCtuD", "namespace": "k6dMjdKY9GrsvOlW", "userId": "Wxp3sXMJa7Bm5wMG"}, {"displayName": "wX9BnJ0acH9DTKwA", "namespace": "ih79y9DvQ934YniK", "userId": "sUNMYsXUi5J0wEIV"}]}' \
    > test.out 2>&1
eval_tap $? 213 'AdminRemoveRoleManagersV3' test.out

#- 214 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'YQPJBHSkLEdyeVo3' \
    --after '59KZxFoyh7NBldU0' \
    --before 'KJGqZmLTMsQTfqJx' \
    --limit '2' \
    > test.out 2>&1
eval_tap $? 214 'AdminGetRoleMembersV3' test.out

#- 215 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'E6nib3KITumviE02' \
    --body '{"members": [{"displayName": "uJU3jsiVEfoYl2Qw", "namespace": "U55WZ26ExrCCe04T", "userId": "QMgtkpwUdEVDDeKR"}, {"displayName": "hQdP8TjdpZeClyPK", "namespace": "P5Wma4rZPFDpGg0r", "userId": "mVs4IRv15GjkYR9H"}, {"displayName": "n9ArTrFkvjhDu0ph", "namespace": "sDzg6cgMyxxeD7HS", "userId": "o3QHE1xs4h7moQmu"}]}' \
    > test.out 2>&1
eval_tap $? 215 'AdminAddRoleMembersV3' test.out

#- 216 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'usXbGZmcJPtPCQmW' \
    --body '{"members": [{"displayName": "pdoG6SYZKAClmkrZ", "namespace": "agwHOQTSOv6j1Fwm", "userId": "np2nQZKqvwBlPwEo"}, {"displayName": "WfSaumkl3fQMoUop", "namespace": "0JVbdif2keKBWSiA", "userId": "A5KbmE9L0mHAFKOO"}, {"displayName": "hqbiQYoaWwqeAaai", "namespace": "NkYqGnJVljVKGLEf", "userId": "7rZZ7UI9Lxp965ot"}]}' \
    > test.out 2>&1
eval_tap $? 216 'AdminRemoveRoleMembersV3' test.out

#- 217 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'anRNounsPT8NdbWU' \
    --body '{"permissions": [{"action": 7, "resource": "xCu6PsfLfHq9CDwG", "schedAction": 98, "schedCron": "waqdg8zuEgqLr0nU", "schedRange": ["WQFWDDKj3WG6oSG4", "9acYMMuPHldPgriD", "aWlGuWupeikWcUA2"]}, {"action": 60, "resource": "cN7YReHM6IpJSpqt", "schedAction": 66, "schedCron": "zpjZXiWm20osBQkI", "schedRange": ["2MrKZUROa5204F93", "KuvkjSLj8oeSaGEG", "ZFyu74xeggtSJ7BM"]}, {"action": 20, "resource": "wHfnTCOelC3jpdY0", "schedAction": 37, "schedCron": "MBS84PZFN5yVtTex", "schedRange": ["7FglFwergQy4kLHD", "HYAZVtEs2AWW7UKu", "UvN3psq53DStu9l1"]}]}' \
    > test.out 2>&1
eval_tap $? 217 'AdminUpdateRolePermissionsV3' test.out

#- 218 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'JYV7jxy2RrkZxbTv' \
    --body '{"permissions": [{"action": 0, "resource": "2goh8b6kaEMzZYNv", "schedAction": 23, "schedCron": "QOGtSvtWsj3hpp9d", "schedRange": ["XqS6NmQQK6Cj6ivn", "XtSV92kPPjg9PXKt", "AyqDqtfS2gy2pEXl"]}, {"action": 19, "resource": "61sBIh9WK9JOcTyo", "schedAction": 36, "schedCron": "U6PnBQw3VSqFnqZb", "schedRange": ["e0I36ERggw0XPH7v", "w1A6lvv7GST2cFk4", "dUUKwwGol33eyePQ"]}, {"action": 19, "resource": "FuzdVJStFtrx81GL", "schedAction": 27, "schedCron": "0UMgzrwTawp2AL8F", "schedRange": ["tSY86cv18m4g9b7y", "5pOXPicI6LqVmCXa", "8N97y688Aiy0kgDl"]}]}' \
    > test.out 2>&1
eval_tap $? 218 'AdminAddRolePermissionsV3' test.out

#- 219 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'NvssOVz1j7GUohHb' \
    --body '["mEuR7BmNPDaGfPvZ", "XSCwvwjrB2sd2lVu", "0zzcBSSbl8QCIAkZ"]' \
    > test.out 2>&1
eval_tap $? 219 'AdminDeleteRolePermissionsV3' test.out

#- 220 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '49' \
    --resource 'k2RvstQBtXrjg1UW' \
    --roleId 'dBzmaF5pMa7bLdn2' \
    > test.out 2>&1
eval_tap $? 220 'AdminDeleteRolePermissionV3' test.out

#- 221 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 221 'AdminGetMyUserV3' test.out

#- 222 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'OXyp9RBegIyvpboP' \
    --extendExp 'false' \
    --redirectUri '20iBNSHOBUfYHfcC' \
    --password 'ikKgGpAZva9mA9ec' \
    --requestId 'GJWsdwOXOQU5Jg26' \
    --userName 'oDsubB6yog8MhXBs' \
    > test.out 2>&1
eval_tap $? 222 'UserAuthenticationV3' test.out

#- 223 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'FHGfpPb0ae6Bbd78' \
    --linkingToken 'mHKnpE16YAqvXKK0' \
    --password 'rjca6Nio4KSGSJQR' \
    --username '8pZ19HK2nXuJArAt' \
    > test.out 2>&1
eval_tap $? 223 'AuthenticationWithPlatformLinkV3' test.out

#- 224 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'SuYQml0WIongvap3' \
    --extendExp 'false' \
    --linkingToken 'ipK8loTepqgXHN3x' \
    > test.out 2>&1
eval_tap $? 224 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 225 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'F98t0ly2a65isK76' \
    > test.out 2>&1
eval_tap $? 225 'RequestOneTimeLinkingCodeV3' test.out

#- 226 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'U5sux3vdu0h6mhMX' \
    > test.out 2>&1
eval_tap $? 226 'ValidateOneTimeLinkingCodeV3' test.out

#- 227 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'QHBFUV0Hxq9CYeQN' \
    --isTransient 'true' \
    --clientId 'FwLT8r1qWVUrhz5O' \
    --oneTimeLinkCode 'PHyJjap9GXBfFVR4' \
    > test.out 2>&1
eval_tap $? 227 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 228 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 228 'GetCountryLocationV3' test.out

#- 229 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 229 'Logout' test.out

#- 230 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --codeChallenge 'SjdWCO2qNOOolUHS' \
    --codeChallengeMethod 'plain' \
    --clientId 'TotHjSHZFeflsAMO' \
    > test.out 2>&1
eval_tap $? 230 'RequestTokenExchangeCodeV3' test.out

#- 231 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'NYrgGZN5puB5atVO' \
    --userId 'HierXP0dhDoszAjG' \
    --platformUserId 'vSs91AUQnlmQb1jc' \
    > test.out 2>&1
eval_tap $? 231 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 232 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'S0hWasFejfol1qyc' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 232 'RevokeUserV3' test.out

#- 233 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge '1ehdEQHuF1DKSE6U' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'true' \
    --oneTimeLinkCode 'oAbsPGP8pwbQwZJV' \
    --redirectUri 'umgLC4yEFLuDk0ga' \
    --scope 'om6Xb4mf36cc4OyV' \
    --state 'HMsk4DisDhB8hGcn' \
    --targetAuthPage 'QPwXWxTTHOcJVHq6' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'y6ct9ESTBTSRFcdq' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 233 'AuthorizeV3' test.out

#- 234 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'd6nHKokZjWprxHFD' \
    > test.out 2>&1
eval_tap $? 234 'TokenIntrospectionV3' test.out

#- 235 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 235 'GetJWKSV3' test.out

#- 236 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId '0W9EhE9Tiuv6qtvm' \
    --factor 'XMidVKKs7BgToFLi' \
    --mfaToken 'mgem0kboWBiPiXh6' \
    > test.out 2>&1
eval_tap $? 236 'SendMFAAuthenticationCode' test.out

#- 237 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'M8TADkaCvb2Dwxy9' \
    --mfaToken 'yvVm308K8YNzMARe' \
    > test.out 2>&1
eval_tap $? 237 'Change2faMethod' test.out

#- 238 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'ZTV7eWicpbnCr6LZ' \
    --factor 'qjnfNUXHW4Web8F8' \
    --mfaToken '5J8rqjXlJbxR2qpa' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 238 'Verify2faCode' test.out

#- 239 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'rL3WAVzl9nIpX77y' \
    --userId 'whV7cg58aQxR23Oe' \
    > test.out 2>&1
eval_tap $? 239 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 240 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'W34QWrgAIZ1i5dOK' \
    --clientId '52CetOnRA050CeTs' \
    --redirectUri 'TzJqxYwAbf3IXe7Q' \
    --requestId 'fzLXbAvoDAjGPmI9' \
    > test.out 2>&1
eval_tap $? 240 'AuthCodeRequestV3' test.out

#- 241 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'ceHe6MIIaxTOt7Jc' \
    --additionalData 'ek3G3wthm00s2oUC' \
    --clientId 'B2ExoR2fO29Z5tas' \
    --createHeadless 'true' \
    --deviceId 'r1LwIBJcmbHE7mFS' \
    --macAddress 'YRlGrrbZnmDVeuSU' \
    --platformToken 'iabJxYZp43DHYkF1' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 241 'PlatformTokenGrantV3' test.out

#- 242 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 242 'GetRevocationListV3' test.out

#- 243 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'WJfgubaZ5f98W4Dn' \
    > test.out 2>&1
eval_tap $? 243 'TokenRevocationV3' test.out

#- 244 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'Yi5t31thHWcydkZ3' \
    --simultaneousTicket 'drlgnS0jdz1uogPP' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'VZn560x4P6mrRs3u' \
    > test.out 2>&1
eval_tap $? 244 'SimultaneousLoginV3' test.out

#- 245 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'u4Q9ip4Fxj5kcFRN' \
    --clientId 'yNYQ6EbbqWGw8q0R' \
    --code 'SmIqfF6acmlt4cg0' \
    --codeVerifier 'CSi7spSs3blY4sz2' \
    --extendNamespace 'qBg9PAVmALZK1EeN' \
    --extendExp 'false' \
    --password 'zSwmt52Fqqwi8ktT' \
    --redirectUri 'CpeKqaYdu3VubrZY' \
    --refreshToken 's5pmO42Lqeeh5s35' \
    --username 'lZFINsss3Pko8aNJ' \
    --grantType 'refresh_token' \
    > test.out 2>&1
eval_tap $? 245 'TokenGrantV3' test.out

#- 246 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'gEAM5ouAut7eMpxN' \
    > test.out 2>&1
eval_tap $? 246 'VerifyTokenV3' test.out

#- 247 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'P7ltBcnwTVFaiVPz' \
    --code 'dwakhw2ffNqHxLop' \
    --error 'uuZ2mxHS2CvoHWee' \
    --openidAssocHandle '07L1xK454PO9WqJz' \
    --openidClaimedId 'jRbJXPCgRwBdEl7l' \
    --openidIdentity 'TkezVXC9WsjdMhOj' \
    --openidMode '9N5ri1bNUPxBtMMC' \
    --openidNs 'BccrzuzQJwn9Dyq6' \
    --openidOpEndpoint 'vaL2J6DLozY2nb3o' \
    --openidResponseNonce 'cTj7aINlNzv07mLc' \
    --openidReturnTo 'wq17FJ7OCpPhlsof' \
    --openidSig '19qBD08PU0BRugHN' \
    --openidSigned 'KgNq5PfL7IVcz55a' \
    --state 'Ht8QRSAMENkT9mAx' \
    > test.out 2>&1
eval_tap $? 247 'PlatformAuthenticationV3' test.out

#- 248 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'IKAWZGK120dLs8ow' \
    --platformToken 'BzG4I6QXY7jhLkZd' \
    > test.out 2>&1
eval_tap $? 248 'PlatformTokenRefreshV3' test.out

#- 249 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'WYLWPQ2TtKJ12IGn' \
    > test.out 2>&1
eval_tap $? 249 'PublicGetInputValidations' test.out

#- 250 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'PJsBVUK2eOOYQVxU' \
    > test.out 2>&1
eval_tap $? 250 'PublicGetInputValidationByField' test.out

#- 251 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode '8wTjpQ0AkjSkkLIf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 251 'PublicGetCountryAgeRestrictionV3' test.out

#- 252 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'twmEfFRdPTaHPhex' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 252 'PublicGetConfigValueV3' test.out

#- 253 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 253 'PublicGetCountryListV3' test.out

#- 254 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 254 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 255 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'AMGzqgs2588OFEFe' \
    > test.out 2>&1
eval_tap $? 255 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 256 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'iRCAnDnd4chRXfbU' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["NDLAl1psHFO835PM", "VC6DH4hL9E5dK6VY", "6gCttLRQfQ0cFfJZ"]}' \
    > test.out 2>&1
eval_tap $? 256 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 257 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'hmpZpfU5IPnwrOb4' \
    --platformUserId 'j2aq99P7h8It32uN' \
    > test.out 2>&1
eval_tap $? 257 'PublicGetUserByPlatformUserIDV3' test.out

#- 258 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'AGiq3RACxQzB2780' \
    > test.out 2>&1
eval_tap $? 258 'PublicGetAsyncStatus' test.out

#- 259 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'Py8fx5IELsouimCv' \
    --limit '83' \
    --offset '7' \
    --platformBy 'd2HqDaYuAylXhR7K' \
    --platformId 'fYzS94CBSbKTIGyy' \
    --query 'ZiL4ufDCxhmfqtX6' \
    > test.out 2>&1
eval_tap $? 259 'PublicSearchUserV3' test.out

#- 260 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "iDiLGM9kBK22Vgt8", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "sIzzZUd8nMRW0JZI", "policyId": "EfhdsSOkzWHvc275", "policyVersionId": "7CEdjEsL47BOcqll"}, {"isAccepted": false, "localizedPolicyVersionId": "AdYk6Nlvoh2cRhiL", "policyId": "UCHzAB7WcKa0V4qc", "policyVersionId": "80VOM3D9ALaejfrP"}, {"isAccepted": false, "localizedPolicyVersionId": "Tc2VUZYlSiQMtunZ", "policyId": "gdSXwnWQ3xM5l67g", "policyVersionId": "IqNXaP1E2Bhwb9YJ"}], "authType": "W4ua9vVmPv6B9Xoo", "code": "7uHaHnqTMk7VbBqd", "country": "bYsitWZortuKj8Sy", "dateOfBirth": "21gdr3cRcfGR0e2s", "displayName": "zh4cGCrrZe22MagR", "emailAddress": "eRsBsJh2xmL1oGJj", "password": "Uvgb4IZcng27eLXp", "reachMinimumAge": true, "uniqueDisplayName": "b9r1zRV7bljbdRMM"}' \
    > test.out 2>&1
eval_tap $? 260 'PublicCreateUserV3' test.out

#- 261 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'fKZG1tQfEJy2AUdc' \
    --query 'SjeulsprWInajirN' \
    > test.out 2>&1
eval_tap $? 261 'CheckUserAvailability' test.out

#- 262 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["upQiKa5SyjBMBcAY", "2XjceLWz5PGCCD7G", "GatpMe0K0qwX2QjS"]}' \
    > test.out 2>&1
eval_tap $? 262 'PublicBulkGetUsers' test.out

#- 263 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "Gs4JYAbWwlgTTkd5", "languageTag": "inHz1fVArnC8e82W"}' \
    > test.out 2>&1
eval_tap $? 263 'PublicSendRegistrationCode' test.out

#- 264 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "BI6nWj6zVicUbL2G", "emailAddress": "zaS3isyK6frcKOa2"}' \
    > test.out 2>&1
eval_tap $? 264 'PublicVerifyRegistrationCode' test.out

#- 265 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "QnkWJKDoILBKynh6", "languageTag": "gX36iOddFxyDdTBa"}' \
    > test.out 2>&1
eval_tap $? 265 'PublicForgotPasswordV3' test.out

#- 266 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'PSwqRxaQJ0RPVd23' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 266 'GetAdminInvitationV3' test.out

#- 267 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'QXswEMM3cYD9zs9M' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "5ZwuPg4W7XWu7WfN", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "tedF3GkSqbfWlOpR", "policyId": "CcDoxRHTiZAkwzac", "policyVersionId": "5QvzV6aTASdOVQtU"}, {"isAccepted": false, "localizedPolicyVersionId": "4j9yMfIhzBIOcn92", "policyId": "AuGlLwu7yHFnGhkh", "policyVersionId": "1Lv5mP0oh7olkdUz"}, {"isAccepted": true, "localizedPolicyVersionId": "uAp64sy9hprTn811", "policyId": "UzDKxNPSkPkSi2VX", "policyVersionId": "wPmuWUAP8ATqD4mb"}], "authType": "yGFAcNd5qcA5o7bo", "code": "Io9bdVV4RGIYfDKh", "country": "2KvjF2OTSAx8pkGe", "dateOfBirth": "9mH967IReLpL3oFQ", "displayName": "46WTrtjJRR9HRbBg", "emailAddress": "P6ymZyjuFaBZtfa2", "password": "h60LX3X0mja2IwdB", "reachMinimumAge": true, "uniqueDisplayName": "b7DaCj7eSchwVTjc"}' \
    > test.out 2>&1
eval_tap $? 267 'CreateUserFromInvitationV3' test.out

#- 268 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "1LaXduQNGyEETzUZ", "country": "3oaCQq7r4CRsWTat", "dateOfBirth": "rvyZRV8XEa0QAoE9", "displayName": "Jfko1OiUJWdx2iH3", "languageTag": "gLWsopfTlePiQHkj", "uniqueDisplayName": "RNljKnLftYS64MmD", "userName": "0Le4RALdpSYFkeUu"}' \
    > test.out 2>&1
eval_tap $? 268 'UpdateUserV3' test.out

#- 269 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "2AaZFB9OQydGs7qZ", "country": "iEEYU1JCHp34kQSY", "dateOfBirth": "ViIxQEXYta7d6Xb9", "displayName": "yjl02RbUFBMlI0yL", "languageTag": "egTkJBUe2n7zTWjv", "uniqueDisplayName": "UbUwtgroZtDWZ1Rl", "userName": "OyH0fvLFYxhi9ZxB"}' \
    > test.out 2>&1
eval_tap $? 269 'PublicPartialUpdateUserV3' test.out

#- 270 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "EvESWUbubiLsFQHj", "emailAddress": "joWoMt34ORZOcfVn", "languageTag": "tR1dN75f7MjlCrGh"}' \
    > test.out 2>&1
eval_tap $? 270 'PublicSendVerificationCodeV3' test.out

#- 271 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "x9jYVsvPpH4SWKFy", "contactType": "GzFv1ZL9QAkydc2h", "languageTag": "cCUCbWjgh132c1lt", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 271 'PublicUserVerificationV3' test.out

#- 272 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "LC7lEeojCaryQvaZ", "country": "o8YhgAkMkdPjGO1Y", "dateOfBirth": "hF76yhdzWBU2w0SW", "displayName": "w4bgvnSW7C79aEsy", "emailAddress": "E04fkBKbdGnYlDiH", "password": "QLSDaVFuQR5tyFak", "uniqueDisplayName": "S94uJOyymFG2HVic", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 272 'PublicUpgradeHeadlessAccountV3' test.out

#- 273 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "fA0SZGOyWgSAejWv", "password": "oLn4BaZzdAUOAqdU"}' \
    > test.out 2>&1
eval_tap $? 273 'PublicVerifyHeadlessAccountV3' test.out

#- 274 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "7RwKF6mMy8SFnlXc", "newPassword": "ohhvAsjBVjTWYGRE", "oldPassword": "AczRgDn3SMhCP9Ta"}' \
    > test.out 2>&1
eval_tap $? 274 'PublicUpdatePasswordV3' test.out

#- 275 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'IcHBQoaQAROlb7vn' \
    > test.out 2>&1
eval_tap $? 275 'PublicCreateJusticeUser' test.out

#- 276 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'jrMB9aSTWRB88PLQ' \
    --redirectUri 'rQtZsxxAUFivYpaZ' \
    --ticket 'xjj1Mvym0TRnj4Lg' \
    > test.out 2>&1
eval_tap $? 276 'PublicPlatformLinkV3' test.out

#- 277 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'CAWddeFw5czEE4PZ' \
    --body '{"platformNamespace": "fkp3oZ3Eo7ZmzkFo"}' \
    > test.out 2>&1
eval_tap $? 277 'PublicPlatformUnlinkV3' test.out

#- 278 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'MVSxRUdwKcoct6pQ' \
    > test.out 2>&1
eval_tap $? 278 'PublicPlatformUnlinkAllV3' test.out

#- 279 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'X1XR3FOnT9z9NnKp' \
    --ticket 'K1l33ZqT84rJHk9Q' \
    > test.out 2>&1
eval_tap $? 279 'PublicForcePlatformLinkV3' test.out

#- 280 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId '0ep6lCtqPpIjOQU5' \
    --clientId 'D8Le06f1xjf0D9ww' \
    --redirectUri 'kNpdKyKEiQYwFfyE' \
    > test.out 2>&1
eval_tap $? 280 'PublicWebLinkPlatform' test.out

#- 281 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'Ug7CX7R4QL5eMgDP' \
    --code 'opahf2nOstrLoCwo' \
    --state 'JXwpMoTU4KI5la2X' \
    > test.out 2>&1
eval_tap $? 281 'PublicWebLinkPlatformEstablish' test.out

#- 282 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'sq0JUWVsEhfUgSBb' \
    --code 'pPEtKGYf62nfWyxR' \
    --state 'BAkGid99H1by2XDL' \
    > test.out 2>&1
eval_tap $? 282 'PublicProcessWebLinkPlatformV3' test.out

#- 283 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "HZ55E0i12Rnfmlz2", "userIds": ["GEaEqkdCWVI6hY4A", "Oa4ASS0GMuX6iYry", "puR4ogU6TsTgK5DF"]}' \
    > test.out 2>&1
eval_tap $? 283 'PublicGetUsersPlatformInfosV3' test.out

#- 284 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "42c0Mk1L2jq31SSC", "emailAddress": "c6gT8m4fXjG1Du8U", "newPassword": "Gkr6BNSD4MakNY5I"}' \
    > test.out 2>&1
eval_tap $? 284 'ResetPasswordV3' test.out

#- 285 PublicGetUserByUserIdV3
eval_tap 0 285 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 286 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId '12FtL6xyrFZP03yQ' \
    --activeOnly 'true' \
    --after 'cAHm2pRVOZZKSkZV' \
    --before 'mrAyJuVKgkZi7PRA' \
    --limit '65' \
    > test.out 2>&1
eval_tap $? 286 'PublicGetUserBanHistoryV3' test.out

#- 287 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'sMAD5X4OB8ucO4LG' \
    > test.out 2>&1
eval_tap $? 287 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 288 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'h5V2knOW3gCOFC7J' \
    > test.out 2>&1
eval_tap $? 288 'PublicGetUserInformationV3' test.out

#- 289 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gvVVesi7bcSYHsWD' \
    --after '0.2223376009982163' \
    --before '0.12020107788392076' \
    --limit '60' \
    > test.out 2>&1
eval_tap $? 289 'PublicGetUserLoginHistoriesV3' test.out

#- 290 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '9QKtX78s6brSVEtv' \
    --after 'aO3jITJigbVKd2QJ' \
    --before 'aCo1xv4XfuMWtNy2' \
    --limit '11' \
    --platformId 'bxLr0wudpvRE5RlO' \
    > test.out 2>&1
eval_tap $? 290 'PublicGetUserPlatformAccountsV3' test.out

#- 291 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'oKB1dhSZcD96FuP2' \
    > test.out 2>&1
eval_tap $? 291 'PublicListJusticePlatformAccountsV3' test.out

#- 292 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'vXHHTm5Bx2KPo4uE' \
    --body '{"platformId": "ZWUFYaixjWTHPXYA", "platformUserId": "i8yJZwCHCOKGvSl1"}' \
    > test.out 2>&1
eval_tap $? 292 'PublicLinkPlatformAccount' test.out

#- 293 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'VPnidc6veWAdnHzl' \
    --body '{"chosenNamespaces": ["wSfmRQlJNfpEwgMq", "Rm5FnIjdTc42pWjy", "jiuJa5CCAXtLxMSS"], "requestId": "6EbZJxtmhMkVqLS8"}' \
    > test.out 2>&1
eval_tap $? 293 'PublicForceLinkPlatformWithProgression' test.out

#- 294 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZPMe5feieWDCm2Hm' \
    > test.out 2>&1
eval_tap $? 294 'PublicGetPublisherUserV3' test.out

#- 295 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vS15muEiWQZqOzuU' \
    --password 'LDK1N9HgrVeS7zOV' \
    > test.out 2>&1
eval_tap $? 295 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 296 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'ZThMkkHfmuhrC2r1' \
    --before 'T7m630CwRFueaOyU' \
    --isWildcard 'true' \
    --limit '44' \
    > test.out 2>&1
eval_tap $? 296 'PublicGetRolesV3' test.out

#- 297 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'mThqkPQF0xOEU0lN' \
    > test.out 2>&1
eval_tap $? 297 'PublicGetRoleV3' test.out

#- 298 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'true' \
    > test.out 2>&1
eval_tap $? 298 'PublicGetMyUserV3' test.out

#- 299 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'bp3vrxEb061w5vLB' \
    > test.out 2>&1
eval_tap $? 299 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 300 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["GULlMfDg9cGThd60", "0RkBriRuu1wxNyJL", "PgyOyKbwVAHfUikB"], "oneTimeLinkCode": "j78sHialeWtwj7i8"}' \
    > test.out 2>&1
eval_tap $? 300 'LinkHeadlessAccountToMyAccountV3' test.out

#- 301 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "ieaDKmlojPCkksCl"}' \
    > test.out 2>&1
eval_tap $? 301 'PublicSendVerificationLinkV3' test.out

#- 302 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'kGaCh5lh7bn1f0IS' \
    > test.out 2>&1
eval_tap $? 302 'PublicVerifyUserByLinkV3' test.out

#- 303 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'k9kZtpEm77fvvWRT' \
    --code 't6YB1Bh0X8bjggEi' \
    --error 'LNeAfE85FRuNI4pF' \
    --state 'AIJ43wTqw9NSZD3b' \
    > test.out 2>&1
eval_tap $? 303 'PlatformAuthenticateSAMLV3Handler' test.out

#- 304 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'WBHOW575DDs73HMi' \
    --payload 'mcN82qNWZJVbZgJS' \
    > test.out 2>&1
eval_tap $? 304 'LoginSSOClient' test.out

#- 305 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'wj3i3MP6iwDyhnEw' \
    > test.out 2>&1
eval_tap $? 305 'LogoutSSOClient' test.out

#- 306 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'de3lWNBEjvtryHtt' \
    --code 'm8QC3csYmg86O3kM' \
    > test.out 2>&1
eval_tap $? 306 'RequestTargetTokenResponseV3' test.out

#- 307 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '92' \
    --namespace 'zYlnZR54JPS5Zq1r' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 307 'AdminListInvitationHistoriesV4' test.out

#- 308 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Drby8uFioWVhv3Fz' \
    > test.out 2>&1
eval_tap $? 308 'AdminGetDevicesByUserV4' test.out

#- 309 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'pY7Qyb1yPih0v1in' \
    --endDate '9spJGzLQkcMxaY0d' \
    --limit '17' \
    --offset '27' \
    --startDate 'TdTrPltYUX928xkM' \
    > test.out 2>&1
eval_tap $? 309 'AdminGetBannedDevicesV4' test.out

#- 310 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'L2YwBUeU8mz3Hx9l' \
    > test.out 2>&1
eval_tap $? 310 'AdminGetUserDeviceBansV4' test.out

#- 311 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "uZPBHQHZv4yBthub", "deviceId": "k2V7UsQkoGIZBpMX", "deviceType": "gPnw1aOTyHZKakX2", "enabled": true, "endDate": "ORi74QCdWxy6Szx2", "ext": {"qQFGd99nqEzy799N": {}, "s1xCJTKZMQ22HltW": {}, "yujWwVEjqfFZERyw": {}}, "reason": "EuBLWI5ifxVOgahW"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminBanDeviceV4' test.out

#- 312 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'C1Xo6X7grpWQCfSj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 312 'AdminGetDeviceBanV4' test.out

#- 313 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'Yp62sMRe7QUDPtHk' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 313 'AdminUpdateDeviceBanV4' test.out

#- 314 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'YDQXqr3Q9pc4o21p' \
    --startDate 'xU5lio2d4cJfusCc' \
    --deviceType 'ln5dIKKeWzHuOzUD' \
    > test.out 2>&1
eval_tap $? 314 'AdminGenerateReportV4' test.out

#- 315 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 315 'AdminGetDeviceTypesV4' test.out

#- 316 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'JmimdBQBYjDmAKvW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 316 'AdminGetDeviceBansV4' test.out

#- 317 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'aC4HZxLywvaVZAy3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 317 'AdminDecryptDeviceV4' test.out

#- 318 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'zKkmGEcYCUUgssO3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 318 'AdminUnbanDeviceV4' test.out

#- 319 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'QdBPRgfvEJfujboF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 319 'AdminGetUsersByDeviceV4' test.out

#- 320 AdminGetNamespaceInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 320 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 321 AdminGetNamespaceUserInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceUserInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 321 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 322 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 83}' \
    > test.out 2>&1
eval_tap $? 322 'AdminCreateTestUsersV4' test.out

#- 323 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "WkbLiQPoCIrvIB7V", "policyId": "DH8TBw7lQrDQS3fr", "policyVersionId": "nTgtp5K9XrZww3po"}, {"isAccepted": false, "localizedPolicyVersionId": "D7nTbQjpx1HbebWK", "policyId": "mCa9g5HdbX4mr2WZ", "policyVersionId": "Dw8TGLrSDt9oumBL"}, {"isAccepted": true, "localizedPolicyVersionId": "nBBWvTvzX5XNNeQO", "policyId": "S3yYyazq9wK58kMc", "policyVersionId": "R3l7va0Ka2IVFTfA"}], "authType": "EMAILPASSWD", "code": "FLzDm92enwdzwFpI", "country": "iBmZBR0fRqPlzUGw", "dateOfBirth": "Atd6SsqvTGJBsqL9", "displayName": "Sv6dBVnB39PdySr5", "emailAddress": "Psifz7NBuQPKNntE", "password": "lfdHE2jWLxufmXMf", "passwordMD5Sum": "cW6Bvgq1sOHmjP4G", "reachMinimumAge": true, "uniqueDisplayName": "tWJaJfbYWq0bORLe", "username": "tQGhpIEsK5SBVSfP"}' \
    > test.out 2>&1
eval_tap $? 323 'AdminCreateUserV4' test.out

#- 324 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": true, "userIds": ["kH1yySC242IH6dpY", "V2rmTPuzmfUs5B79", "wBKOyVtTkd4K8I0Y"]}' \
    > test.out 2>&1
eval_tap $? 324 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 325 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["0eIABElQK0CFFWgp", "aaPo1kW39MSKneXt", "RBOQM7tJWB10E2IL"]}' \
    > test.out 2>&1
eval_tap $? 325 'AdminBulkCheckValidUserIDV4' test.out

#- 326 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'SlcAqSC3RaTZbxKC' \
    --body '{"avatarUrl": "uXrddX4TRtkDKU2h", "country": "HvIpbBcFMgyEz0vd", "dateOfBirth": "MlVGYFsu18qYLrrD", "displayName": "4j6s5ypLbuEHq2DI", "languageTag": "qUz6qqQLIO0ycVKe", "skipLoginQueue": false, "uniqueDisplayName": "4DMbV8U6DqbiBVfH", "userName": "CENAmzqH6L3agJxi"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminUpdateUserV4' test.out

#- 327 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Xjjw3r9TPs7N5Szn' \
    --body '{"code": "Vi424F6ltBcwRxZK", "emailAddress": "7RzNnQY7HZAPmpz1"}' \
    > test.out 2>&1
eval_tap $? 327 'AdminUpdateUserEmailAddressV4' test.out

#- 328 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId '14XpiHFcHB5xPB7k' \
    > test.out 2>&1
eval_tap $? 328 'AdminDisableUserMFAV4' test.out

#- 329 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'T576f5UPFY2cE5jc' \
    > test.out 2>&1
eval_tap $? 329 'AdminListUserRolesV4' test.out

#- 330 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'LH2anFVDyFUpNEr3' \
    --body '{"assignedNamespaces": ["Rd8LX2aMyFFn5tlN", "vrYViU8tAPn2MZrT", "AwEhDNlCgWu6xsdI"], "roleId": "StM7uUQ3Q7FLG2bk"}' \
    > test.out 2>&1
eval_tap $? 330 'AdminUpdateUserRoleV4' test.out

#- 331 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'CazFQVzhL5VO4E0h' \
    --body '{"assignedNamespaces": ["a2YvnGPW55OOEJEh", "WF2HMpBDmlboX60A", "2bixwMvi76lbufwG"], "roleId": "KbgYsS6D397HEdW7"}' \
    > test.out 2>&1
eval_tap $? 331 'AdminAddUserRoleV4' test.out

#- 332 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'T1Ci2nmKw5hjuK4z' \
    --body '{"assignedNamespaces": ["GSaFyQokfZ3O5xXV", "a2P78oP6v6lJqihV", "iHmopfz55bhlIpWx"], "roleId": "8o4sTtSdVnuu2uEJ"}' \
    > test.out 2>&1
eval_tap $? 332 'AdminRemoveUserRoleV4' test.out

#- 333 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'true' \
    --limit '91' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 333 'AdminGetRolesV4' test.out

#- 334 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "nPMQmxCrNSDBYoE9"}' \
    > test.out 2>&1
eval_tap $? 334 'AdminCreateRoleV4' test.out

#- 335 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'Gteyd6TZ3txWB8Dz' \
    > test.out 2>&1
eval_tap $? 335 'AdminGetRoleV4' test.out

#- 336 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'QBQLLtCpgcEjuvig' \
    > test.out 2>&1
eval_tap $? 336 'AdminDeleteRoleV4' test.out

#- 337 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'XvmbdeLypMOririY' \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "VGoGsdALlF1rDLyx"}' \
    > test.out 2>&1
eval_tap $? 337 'AdminUpdateRoleV4' test.out

#- 338 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'gP8WHs7nwanSTlK8' \
    --body '{"permissions": [{"action": 35, "resource": "Ae3ZPWmy48MTrU9G", "schedAction": 66, "schedCron": "TgPVpjZHdkh0vaae", "schedRange": ["HOEat1ZThumHwQ3u", "Rs4s20DRnpa6OhqR", "mbIuYQAmmhfCCAmi"]}, {"action": 24, "resource": "nuwAO5GygdA8ZPYj", "schedAction": 25, "schedCron": "VVJ3q1DNSAovjEHM", "schedRange": ["A2OHj6viYb37ya0j", "Yperr0ZokxavD7KA", "sS3gOpQLAYkmif9G"]}, {"action": 32, "resource": "gxbB1AOKweeRoOuG", "schedAction": 55, "schedCron": "51ipZyZwGcGtw4WC", "schedRange": ["qAklOWf1I6StG13J", "u2EPDWisOt6iHbcc", "7LNDxjtxPDOrIkXL"]}]}' \
    > test.out 2>&1
eval_tap $? 338 'AdminUpdateRolePermissionsV4' test.out

#- 339 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'ejfEYsRhB1NPycCE' \
    --body '{"permissions": [{"action": 30, "resource": "QbESQkpaXmnRa405", "schedAction": 4, "schedCron": "Sto8LU02h0lErXED", "schedRange": ["BC7Dj4jalbfAEFwQ", "rcjJKpsJoz4Aos5h", "htHtbEGdOzMoch3i"]}, {"action": 43, "resource": "iXEqocAF1QxAHRKW", "schedAction": 97, "schedCron": "69csm4PXbYSFouXL", "schedRange": ["Hwso5TVCCWShBPKa", "ou2Mo59kIo6Pb0Yv", "V754D7LOnUJMg1w7"]}, {"action": 40, "resource": "QF91CEZ8zPlviP3a", "schedAction": 20, "schedCron": "KQhrtyXitsCxUYip", "schedRange": ["9hkCMvgVtumsTOT8", "NVy7dKmPLEVTFYvc", "tQclkbLxh9gzGxvQ"]}]}' \
    > test.out 2>&1
eval_tap $? 339 'AdminAddRolePermissionsV4' test.out

#- 340 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId '0cpdwOCLC74POxMw' \
    --body '["JvzCPB08peWe8dcd", "4txpQ7okwd0FmT5W", "VgznJ8AAtGTBXNhe"]' \
    > test.out 2>&1
eval_tap $? 340 'AdminDeleteRolePermissionsV4' test.out

#- 341 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'AiTxnqWJXlaoSq7j' \
    --after 'KHFbi2VAiR0FvpMK' \
    --before 'pWRo1RzIGBs3HgFP' \
    --limit '79' \
    > test.out 2>&1
eval_tap $? 341 'AdminListAssignedUsersV4' test.out

#- 342 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'YDtyUWFCOlHOtBvG' \
    --body '{"assignedNamespaces": ["cnSqh70of9UMVoWa", "skdHd9poOO7HIrAV", "YuOuRYWglnE0WZh6"], "namespace": "X2ku0QvbGUBeZa8G", "userId": "cTXlh1iGa46XoJ43"}' \
    > test.out 2>&1
eval_tap $? 342 'AdminAssignUserToRoleV4' test.out

#- 343 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'WftYjIucqFaCut0f' \
    --body '{"namespace": "pGrS3FNcZ44sqFAq", "userId": "NsCSQvrRluqjTdAb"}' \
    > test.out 2>&1
eval_tap $? 343 'AdminRevokeUserFromRoleV4' test.out

#- 344 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["fqIhDbuWup3QV0YR", "GSCYFSKPCaTN3zs3", "XvLrrvm6CBLaHTvg"], "emailAddresses": ["HgwsXG87eYTmG9V0", "mQnmK6vtjqEDRrpO", "GIGsuTCcaN02WwRq"], "isAdmin": true, "isNewStudio": true, "namespace": "iNedjIYyIrDapMuL", "roleId": "4ITRZhX9tgZ818ur"}' \
    > test.out 2>&1
eval_tap $? 344 'AdminInviteUserNewV4' test.out

#- 345 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "BGzghtiUWbTZZIvz", "country": "seiKvghRRmuNKiW9", "dateOfBirth": "KE0xVygGqgENA9I2", "displayName": "6CGPQCEyflcI9qHj", "languageTag": "t6Wjr87z7VpqL7Cz", "skipLoginQueue": true, "uniqueDisplayName": "dPUaenkVFr70LF5q", "userName": "tpc9KjViVoNcC6HO"}' \
    > test.out 2>&1
eval_tap $? 345 'AdminUpdateMyUserV4' test.out

#- 346 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 346 'AdminDisableMyAuthenticatorV4' test.out

#- 347 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code '6NAchs5QUxxtedmS' \
    > test.out 2>&1
eval_tap $? 347 'AdminEnableMyAuthenticatorV4' test.out

#- 348 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 348 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 349 AdminGetMyBackupCodesV4
eval_tap 0 349 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 350 AdminGenerateMyBackupCodesV4
eval_tap 0 350 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 351 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 351 'AdminDisableMyBackupCodesV4' test.out

#- 352 AdminDownloadMyBackupCodesV4
eval_tap 0 352 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 353 AdminEnableMyBackupCodesV4
eval_tap 0 353 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 354 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 354 'AdminGetBackupCodesV4' test.out

#- 355 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 355 'AdminGenerateBackupCodesV4' test.out

#- 356 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 356 'AdminEnableBackupCodesV4' test.out

#- 357 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 357 'AdminSendMyMFAEmailCodeV4' test.out

#- 358 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 358 'AdminDisableMyEmailV4' test.out

#- 359 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code '4BiD3QT4pRJ8S85c' \
    > test.out 2>&1
eval_tap $? 359 'AdminEnableMyEmailV4' test.out

#- 360 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 360 'AdminGetMyEnabledFactorsV4' test.out

#- 361 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'EsAeDdJHZb4XbltW' \
    > test.out 2>&1
eval_tap $? 361 'AdminMakeFactorMyDefaultV4' test.out

#- 362 AdminInviteUserV4
eval_tap 0 362 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 363 AuthenticationWithPlatformLinkV4
samples/cli/sample-apps Iam authenticationWithPlatformLinkV4 \
    --extendExp 'false' \
    --clientId 'OWBbVmXZ7CY5Wupx' \
    --linkingToken '4J2Oor7NdZ4JiSW6' \
    --password 'lJ3sZGgFprVZUHeI' \
    --username 'KQpqVt1vJbDpq9tS' \
    > test.out 2>&1
eval_tap $? 363 'AuthenticationWithPlatformLinkV4' test.out

#- 364 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'jZdF3kB9UxzWHc16' \
    --extendExp 'false' \
    --linkingToken 'jbPojcWTh8lWpGD5' \
    > test.out 2>&1
eval_tap $? 364 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 365 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'MqNWQzI4k6H5lwz6' \
    --factor 'lPFQA8FsvzW2IEEB' \
    --mfaToken 'iYp1CYL3IxclQSFw' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 365 'Verify2faCodeV4' test.out

#- 366 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'rLdSE8v4Ufgn4ZXl' \
    --codeChallenge 'QVxMktznQUCCOUU4' \
    --codeChallengeMethod 'plain' \
    --additionalData 'Q46xInX3aHpkaHmp' \
    --clientId 'sIH2zMSJien8uTJt' \
    --createHeadless 'true' \
    --deviceId 'k82IS5YHGHnyqM23' \
    --macAddress 'XPauCh4jCvIOMeyu' \
    --platformToken 'RhPSKwv2xNzTBxwV' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 366 'PlatformTokenGrantV4' test.out

#- 367 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'eXQlLqYsVxzO4tDp' \
    --codeChallengeMethod 'S256' \
    --simultaneousPlatform 'C6DOQrGNhCLnDY1l' \
    --simultaneousTicket 'KAUszkJ25MwWfvZL' \
    --nativePlatform 'steam' \
    --nativePlatformTicket '7lUrwbssk1S3LGoD' \
    > test.out 2>&1
eval_tap $? 367 'SimultaneousLoginV4' test.out

#- 368 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge 'WFO9ZMqwcO1iIaHk' \
    --codeChallengeMethod 'S256' \
    --additionalData 'NsfeNHa839X1ZqFw' \
    --clientId '5vzTdATgoeCbmfpW' \
    --code 'NXIWwFbR6EUtDHji' \
    --codeVerifier 'b3NgF2uPByN2w0uJ' \
    --extendNamespace 'mS3DtNwIEbnzBkZi' \
    --extendExp 'false' \
    --loginQueueTicket 'VoqAfR6ITqM2D0hd' \
    --password 'xb1P4T248Q1C8Fez' \
    --redirectUri 'eCkEffHXqSBsu6MU' \
    --refreshToken 'fTcOsXHUcOZzKBrY' \
    --username 'l3aF9HAABU7mHfqx' \
    --grantType 'urn:ietf:params:oauth:grant-type:login_queue_ticket' \
    > test.out 2>&1
eval_tap $? 368 'TokenGrantV4' test.out

#- 369 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData '0jABfWRDLcI0c5KF' \
    --code 'IcUSVb7Dy1uZAeFx' \
    > test.out 2>&1
eval_tap $? 369 'RequestTargetTokenResponseV4' test.out

#- 370 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "WymL5tdyWSeU1GCR", "policyId": "89upW5X5chbIE3HC", "policyVersionId": "Za6fAYSyv1qqvSd1"}, {"isAccepted": false, "localizedPolicyVersionId": "X2RY6yKNoWzTVopN", "policyId": "VuBFBiRAeQrGOa2V", "policyVersionId": "lGEnUdw1spApDlOC"}, {"isAccepted": true, "localizedPolicyVersionId": "8Q1KJD3AIvwiLzrO", "policyId": "izNWwSPEc5oD4LV3", "policyVersionId": "rXhBbReyX1ce5DKl"}], "authType": "EMAILPASSWD", "country": "BWDHWizgL13sWln5", "dateOfBirth": "HbEfUVYDeX8fhOjw", "displayName": "CsvDOCkXyW4t0WXR", "emailAddress": "XWjKZjhxtq2tHW2S", "password": "QOI36eTv8PZnpYlj", "passwordMD5Sum": "b7X3g9lrRp0x0Tmc", "uniqueDisplayName": "pVS7bMYHdPcg2TZd", "username": "hMr22tLvKVViz1g4", "verified": false}' \
    > test.out 2>&1
eval_tap $? 370 'PublicCreateTestUserV4' test.out

#- 371 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "sk3WQCl4M0uPRwOB", "policyId": "xJft3PPnNrwcmvU2", "policyVersionId": "Sce5smGrEu9OTel9"}, {"isAccepted": false, "localizedPolicyVersionId": "ictuQurWRqZv5Id3", "policyId": "yyFsKhINTDD515Q8", "policyVersionId": "qmgrlWIHtuq6Sd9N"}, {"isAccepted": true, "localizedPolicyVersionId": "SrCTHYyR956DG3W6", "policyId": "EzMOCUoezfasjArD", "policyVersionId": "ObZ2BH0HiEdsCNKD"}], "authType": "EMAILPASSWD", "code": "rrA0DND4LCAtnawG", "country": "zpIgTDl64k0LgTK9", "dateOfBirth": "y3hIp4DElqx7BZrF", "displayName": "ZyFhSrR8ixjwQBmr", "emailAddress": "9QhRwbt6k8zRAJMl", "password": "iFwwG33qcqv3epNI", "passwordMD5Sum": "XbEF2HMie2Y5Smvu", "reachMinimumAge": true, "uniqueDisplayName": "Z1s9n2aU1CyycqXY", "username": "XwTfQwDMPIBOc51n"}' \
    > test.out 2>&1
eval_tap $? 371 'PublicCreateUserV4' test.out

#- 372 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'QMZNDPr94ew3MsWL' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "StGEE7V62zGqAv1K", "policyId": "gp7zV749iQ9CUW5p", "policyVersionId": "I6asMImho0ngVBsR"}, {"isAccepted": true, "localizedPolicyVersionId": "Wba1wiqg04jYZkHn", "policyId": "AKDnxg1Qd45pP4SM", "policyVersionId": "X10MNMF5R8NXrO6D"}, {"isAccepted": true, "localizedPolicyVersionId": "OCx9k43OjlCKAJZO", "policyId": "DTAWjXWDLq48voAD", "policyVersionId": "7PtWcSJdlIs1rRUp"}], "authType": "EMAILPASSWD", "code": "iMIQa4g55QLrq7fe", "country": "31zWaIHnC6nODtuy", "dateOfBirth": "1AQt7QQNwLqNjHPF", "displayName": "2POb4zyvcjsAjosg", "emailAddress": "y8IGQxvDfhHLQx0m", "password": "F8DqfaHVNPx1JLeg", "passwordMD5Sum": "OpOWRBJq9xe5qdUP", "reachMinimumAge": false, "uniqueDisplayName": "De8HJXp87aKh6Rnz", "username": "3Pq2AVZIaeb1g0g9"}' \
    > test.out 2>&1
eval_tap $? 372 'CreateUserFromInvitationV4' test.out

#- 373 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "cPYDYUaWCDBnjlYE", "country": "wgYNYjIRMhXu73ok", "dateOfBirth": "1wXa0NWfOsD40nLM", "displayName": "4B85sr3fKQwTjkXW", "languageTag": "T7I8BYT0TGuGFnA8", "uniqueDisplayName": "wpBcRZy0swvGrMDH", "userName": "11gBjoz9oHQs9ybp"}' \
    > test.out 2>&1
eval_tap $? 373 'PublicUpdateUserV4' test.out

#- 374 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Yv3IufKyzJ3dSpN1", "emailAddress": "Fg9gJAX9GyZK6oAo"}' \
    > test.out 2>&1
eval_tap $? 374 'PublicUpdateUserEmailAddressV4' test.out

#- 375 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "1BSiVb9RCIOLKvAn", "country": "Wl4je49r7Kxj13Tj", "dateOfBirth": "WSdCTZSr2BzN0lAy", "displayName": "oRuu4zQhkDeKdBQn", "emailAddress": "blhm8LruZV6C2jZy", "password": "tyJUjzUG2MBrEagH", "reachMinimumAge": true, "uniqueDisplayName": "WRucXSSPNpZkMeWv", "username": "FgEZQ9v7em9jMGjQ", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 375 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 376 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "UZCKaaXaE9lVhyn7", "password": "bgj6uJpeEfJ6oNuq", "username": "RL9kbKN8a0JlRep5"}' \
    > test.out 2>&1
eval_tap $? 376 'PublicUpgradeHeadlessAccountV4' test.out

#- 377 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 377 'PublicDisableMyAuthenticatorV4' test.out

#- 378 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'BDmcYkgEx4NQVrmF' \
    > test.out 2>&1
eval_tap $? 378 'PublicEnableMyAuthenticatorV4' test.out

#- 379 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 379 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 380 PublicGetMyBackupCodesV4
eval_tap 0 380 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 381 PublicGenerateMyBackupCodesV4
eval_tap 0 381 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 382 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 382 'PublicDisableMyBackupCodesV4' test.out

#- 383 PublicDownloadMyBackupCodesV4
eval_tap 0 383 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 384 PublicEnableMyBackupCodesV4
eval_tap 0 384 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 385 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 385 'PublicGetBackupCodesV4' test.out

#- 386 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 386 'PublicGenerateBackupCodesV4' test.out

#- 387 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 387 'PublicEnableBackupCodesV4' test.out

#- 388 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 388 'PublicRemoveTrustedDeviceV4' test.out

#- 389 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 389 'PublicSendMyMFAEmailCodeV4' test.out

#- 390 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 390 'PublicDisableMyEmailV4' test.out

#- 391 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'huRnlO18UVVHxIjR' \
    > test.out 2>&1
eval_tap $? 391 'PublicEnableMyEmailV4' test.out

#- 392 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 392 'PublicGetMyEnabledFactorsV4' test.out

#- 393 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'G5Eq3DqSCgtN4EWy' \
    > test.out 2>&1
eval_tap $? 393 'PublicMakeFactorMyDefaultV4' test.out

#- 394 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'pkgzRaOLoI8DvbOe' \
    > test.out 2>&1
eval_tap $? 394 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 395 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "yvvfUosO9Z48UvsL", "emailAddress": "Wo30kmSetOZYNVk1", "namespace": "jTBKQQlCW0Rduah1", "namespaceDisplayName": "bDpnhdD9SJkyPVVa"}' \
    > test.out 2>&1
eval_tap $? 395 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE