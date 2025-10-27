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
echo "1..435"

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
    --body '{"modules": [{"docLink": "JhyLQSrWBbRSrlh5", "groups": [{"group": "GQjK6yqXC68WLDuL", "groupId": "lbzx4Vo7p8lNNFcm", "permissions": [{"allowedActions": [68, 56, 21], "resource": "CmKhinDQmPkcyYqM"}, {"allowedActions": [64, 72, 44], "resource": "aVhthyDnK4jmt2LX"}, {"allowedActions": [94, 81, 9], "resource": "32nnoIAl5mqrLIpS"}]}, {"group": "HAFJxneD3gQRzPe5", "groupId": "H6m1aoZ1WxohmPV0", "permissions": [{"allowedActions": [55, 68, 43], "resource": "1uQTzp1bxdJnB6bs"}, {"allowedActions": [90, 2, 82], "resource": "caSG2qcNsQwE84Fh"}, {"allowedActions": [47, 18, 23], "resource": "oO6Q7Xx96xNgMrkD"}]}, {"group": "td19JoeswZEu9cRc", "groupId": "0VYerGru69HvFKet", "permissions": [{"allowedActions": [25, 82, 46], "resource": "gYsQ8YObO8ipRMPg"}, {"allowedActions": [97, 40, 34], "resource": "KbjrnyueDBYfxJmi"}, {"allowedActions": [9, 11, 23], "resource": "T2TZlX3EHhlir4GR"}]}], "module": "DitrGL3EHzqS9d17", "moduleId": "1jffvGmnomW2OhGi"}, {"docLink": "5paZt2Lyg4OrEmAR", "groups": [{"group": "Awaouk31JLqunKy0", "groupId": "2XiRYieacWkYI58s", "permissions": [{"allowedActions": [77, 77, 18], "resource": "A2jZhztbDhOJQ63M"}, {"allowedActions": [96, 9, 69], "resource": "H1sdIF43EfvqKC5r"}, {"allowedActions": [65, 61, 7], "resource": "A3dC4x8lf5HPrdk9"}]}, {"group": "zHKMabk9CkfDpnxZ", "groupId": "9PI9SOPSjxWUQILZ", "permissions": [{"allowedActions": [7, 36, 32], "resource": "OLfJ3wrZ5I43cJq4"}, {"allowedActions": [70, 66, 54], "resource": "hMjxiH0ghV4MEZOP"}, {"allowedActions": [5, 70, 8], "resource": "Lc4zzcYi4k8C8wbr"}]}, {"group": "ZYue1DYjSqktxdwy", "groupId": "dCICCeJ7vwsrWyvi", "permissions": [{"allowedActions": [51, 53, 47], "resource": "InlT4VYMmXUP7EhQ"}, {"allowedActions": [95, 70, 100], "resource": "E7rXSI3MyG9Mus10"}, {"allowedActions": [59, 88, 79], "resource": "PjUMaxVk8Vz4TOaR"}]}], "module": "iUPMp231BaMKCqWK", "moduleId": "ckLUEg6mJzG2nRGs"}, {"docLink": "YMCPVnvA4ZpdNiB1", "groups": [{"group": "Zc8P1F8jxZogwzng", "groupId": "uQxIPizQrNExpH6t", "permissions": [{"allowedActions": [37, 43, 90], "resource": "CclDaMgpSgMChJsD"}, {"allowedActions": [47, 82, 35], "resource": "ylrSEKzPv0e3Kx5P"}, {"allowedActions": [9, 75, 94], "resource": "xDKeeZO0n7qicyvE"}]}, {"group": "7FcG25o9R9vYjppY", "groupId": "06oBreDE5CWsgAbp", "permissions": [{"allowedActions": [8, 24, 99], "resource": "Ojz1TxWOoKyy9Jd7"}, {"allowedActions": [77, 88, 47], "resource": "2MIIJKtaprkSHoxh"}, {"allowedActions": [22, 11, 23], "resource": "V3QlwtwGNqVJ1ETu"}]}, {"group": "IAnCZ7FjMinILiT2", "groupId": "jxFEH7Amdt3Ob8xn", "permissions": [{"allowedActions": [55, 1, 40], "resource": "DcknlD94vGzwfNbE"}, {"allowedActions": [38, 84, 99], "resource": "n03UiAW6i3OGnxte"}, {"allowedActions": [49, 7, 38], "resource": "4npBsMYPoJIClh2M"}]}], "module": "6FNgkr1acAL2guRz", "moduleId": "ZknDSv2B4tfuTTcw"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'true' \
    --body '{"groupId": "wYzChLCh5DVzlrtb", "moduleId": "euLe2NqXldaJ9eVA"}' \
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
    --body '[{"field": "BEVV4M6sgkconrHx", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["hYqeVqT3PcnTGmRk", "X95AiyKrkUToTRIJ", "h2XA5SMSnFkdIDam"], "preferRegex": true, "regex": "ggAM5CmxwNmKoBJ5"}, "blockedWord": ["WFt4j5rsiaQnHQJ6", "P5SpsJQ3KFDrC2Gw", "bAQ9PaaB5o6tQOKL"], "description": [{"language": "yYjyLbnuNI8ukETz", "message": ["kdB5EYwzLwLIxpLa", "zXI8wyn6fNuUkTqW", "GeeXTf2Cv4OBcn5Z"]}, {"language": "aRMgSazETyWKixrK", "message": ["WIvbHCSSSa0sgjD0", "7CZXR7Q3WgwqbIKy", "CjGMvVVLMdaNfGvQ"]}, {"language": "BywuPULcFhmuhMpx", "message": ["2OxeXVOI6TdP8jeJ", "QhacxkXy6OXYEZLp", "mxHwsyHVxkFBLDUi"]}], "isCustomRegex": false, "letterCase": "QX96GcFNNmptwLXG", "maxLength": 97, "maxRepeatingAlphaNum": 51, "maxRepeatingSpecialCharacter": 18, "minCharType": 20, "minLength": 52, "profanityFilter": "UQItdighmG0sWgR3", "regex": "wlEfWwX2copbIb15", "specialCharacterLocation": "z7SwqANf08AFf2wk", "specialCharacters": ["JaKx9LFzYsUNat9O", "MQ4evd49szSnMswN", "WJxBu0Jd4fftIDqk"]}}, {"field": "3R3t0eUZnSU9lLTr", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["IAHTleMzLRh56ens", "x3MDomjtrs0cLOxI", "smruIoAI3U2AGSEe"], "preferRegex": false, "regex": "XVLC6AdQYoFH4Nje"}, "blockedWord": ["1KWVeJ36s4EAJlCG", "py5JS7IQTPMkcIJt", "wO1x3f524tdYVyZc"], "description": [{"language": "8oBZObkMMdBO0s45", "message": ["7EX9xhKcjJ2aKk9Y", "mjEyi2Le237rx6As", "aMs43OnIROrtc6f6"]}, {"language": "AQvjM5ah4GkEKpbA", "message": ["xiAEP5nY1rzbLjq4", "QJw1P6HAyQaPWyio", "jVkKg7TTRCa2IgoD"]}, {"language": "5HLTaEWReVwP4v8K", "message": ["MOHNdYW0M0tdV0O3", "qXzTCUqwIyBgKtBX", "rGXzOiXg4awEcBTx"]}], "isCustomRegex": true, "letterCase": "ywQavAbjkFSiQdkX", "maxLength": 64, "maxRepeatingAlphaNum": 93, "maxRepeatingSpecialCharacter": 10, "minCharType": 83, "minLength": 81, "profanityFilter": "3zzkWY9A0EJ4fyv2", "regex": "d4c52li4dRNYCxKl", "specialCharacterLocation": "lum1XRtv5Ted7Fmx", "specialCharacters": ["9w1oAUFtLFt68UOO", "VMeYPOP6jIQG4aix", "c1l0Ul0ov2aFOQGW"]}}, {"field": "aB5peEihhJlxkKnl", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["2rXak15GSDDpbUIX", "tlV2Y8IXKtjvcVvy", "z0tgwWsipqOk7XIC"], "preferRegex": false, "regex": "kKQFp6JQYYyYBiMM"}, "blockedWord": ["0XZqkdilEHE33lNz", "MLMKu6RxhYm3ZskL", "YBFvbXByWSf2Ivb9"], "description": [{"language": "JRmmyb1VUIlrZp7z", "message": ["9Qvqxo7SPyfhUMUN", "vKQSojlALXN2qmGX", "tSGOZIYuznW6sr9A"]}, {"language": "SxKWUCLsgAtgbC7A", "message": ["WqjVegfS595dlmNx", "v0Z4TMcjcGYJMSdp", "dMLFcGBnM8C0HaXI"]}, {"language": "gIybDr1IzYExweaA", "message": ["tZYAS9zVVDZXYW7o", "SZYSxhBEAqRTNdaW", "WJ8gyKxQDzTcKxk4"]}], "isCustomRegex": false, "letterCase": "ShL6rk7KFOw4480O", "maxLength": 72, "maxRepeatingAlphaNum": 49, "maxRepeatingSpecialCharacter": 7, "minCharType": 90, "minLength": 2, "profanityFilter": "CpyfPFzwfS2Q5YLs", "regex": "60f1XqipEc2Ydsvh", "specialCharacterLocation": "oo4w31K8sdl62i7K", "specialCharacters": ["y2M5f0vEA47Nvzx1", "DsEUtUaVTR4OOoUc", "dfEgIWvo0Nzh0XZK"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'tOEUhbGMIIJHueK0' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after '1jn0gba56eIRNDp0' \
    --before 'ZlWBgWuyvoZRzsZ6' \
    --endDate 'Fw0UqNR367JD51a5' \
    --limit '36' \
    --query 'jBTPxKEwZEK531e5' \
    --roleId 'nZBLprjHo0CioIx0' \
    --startDate '3xqXxp9dkVtB3MQ6' \
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
    --body '{"ageRestriction": 13, "enable": false}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode '0BWlS0kAtktUGHpB' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 58}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'jzRLXhgWmNWyLKFq' \
    --limit '79' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "wVE3u5TXlUNHFKR1", "comment": "HfghgkL7tYgdc15S", "endDate": "oIaeBBQwiSD9ROKf", "reason": "uDf9Am8GJp3BoKD8", "skipNotif": true, "userIds": ["OFhuRt0O1wX6ROth", "YAZquTVsra9wJ7oH", "tvhbi7dgGGdsKHRI"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "PDLNIl9GXbWyII9z", "userId": "2sycW7zNZsRFCV6Q"}, {"banId": "qr6wPChqHoEtEBW0", "userId": "UhP3i0BxXaLHU0gV"}, {"banId": "O8NQWrJORQ3beHfb", "userId": "bamjKOBKGG0dtDpt"}]}' \
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
    --clientId 'Ob51fCep74IWtOMk' \
    --clientName 'FkADnH9dbFEBcigM' \
    --clientType 'zN6SanppNj4xAvY4' \
    --limit '99' \
    --offset '55' \
    --skipLoginQueue 'false' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["1EbLtujmPjYYNojd", "VN5WJD61JEsVnn72", "3VnmonJS7csuWRWF"], "clientUpdateRequest": {"audiences": ["dESLmYkD1He3vfZq", "V0RaDz8IGWk55r01", "bw1chqhnQ7iCtsd3"], "baseUri": "tE7g0XSiJwyYIOEe", "clientName": "xrdPmkt3VcdoK8Tn", "clientPermissions": [{"action": 99, "resource": "BGEIr1jfBVM9EL2c", "schedAction": 93, "schedCron": "F43xJz70578Pw86S", "schedRange": ["foLG33w5ndhnaszv", "6UTvLpUBokgTmio3", "lKXl8fhLmffe0LGw"]}, {"action": 48, "resource": "CP3dQcJtck7Nc8FC", "schedAction": 23, "schedCron": "uBjTIXJenYhYo0sG", "schedRange": ["tpEt1birvzhqT2nv", "Dejr9wKTUKrPNe53", "5zkkoBMRlAC7PTzC"]}, {"action": 2, "resource": "VkDkgJobT2rJlDYJ", "schedAction": 77, "schedCron": "luX51ehHHUCjV4F9", "schedRange": ["CAM09i2PQDUnKWVi", "SI3VTwZ4qIswrccQ", "GRAUSx6pnVPkfqsh"]}], "clientPlatform": "PtbEgxLdM7142Mkc", "deletable": false, "description": "R5XAybpFlmaOxx25", "modulePermissions": [{"moduleId": "K6OjmxTNiJ4iwqdz", "selectedGroups": [{"groupId": "4vyFxG0qNTCJSQvT", "selectedActions": [93, 79, 73]}, {"groupId": "pvsQFwYJtGtbPkvE", "selectedActions": [53, 75, 14]}, {"groupId": "RqX7xwhwJf3tYxqp", "selectedActions": [27, 27, 78]}]}, {"moduleId": "ZjR64rUjQSY5RqvQ", "selectedGroups": [{"groupId": "KykzLKAgVw25yXiF", "selectedActions": [61, 15, 6]}, {"groupId": "ErU48RXJvqwlKjI4", "selectedActions": [42, 38, 55]}, {"groupId": "MoGvdikPWe7idpqV", "selectedActions": [50, 26, 63]}]}, {"moduleId": "hcWAM8JeWRPx40FR", "selectedGroups": [{"groupId": "V912EWEhFSXrasWE", "selectedActions": [96, 86, 78]}, {"groupId": "WbBcBjzb0ef6GFlt", "selectedActions": [52, 95, 23]}, {"groupId": "d8TfyYRx3i435fmr", "selectedActions": [15, 24, 70]}]}], "namespace": "gZYW9RoYyD5YrQKG", "oauthAccessTokenExpiration": 8, "oauthAccessTokenExpirationTimeUnit": "OYIaVo58zLiNIRK5", "oauthRefreshTokenExpiration": 31, "oauthRefreshTokenExpirationTimeUnit": "29gFeHI9Py0HAygv", "redirectUri": "sRwAkPQNeCe4iTYq", "scopes": ["FCH02X4RU4LjmiyN", "yeZAjGJW1Pqw0ov3", "BDs1IrveMZ61uxHn"], "skipLoginQueue": true, "twoFactorEnabled": false}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["GAvE8LgUEhYbjz0y", "b8XM2BNfjszVfJa0", "RIuk2c8az9Hx2EWw"], "baseUri": "7EZEBZfmRAS9lnPk", "clientId": "u6TYpXgGYJqR3gu9", "clientName": "YZ1VPHPul4REpjfY", "clientPermissions": [{"action": 30, "resource": "9xWF4wLqx5gk9NnZ", "schedAction": 34, "schedCron": "NSAV8tBhxfAxtt3B", "schedRange": ["sokvgBGgntcCl0Uf", "cefYPs1sglcgaxh9", "KVzezMj8AX48buTs"]}, {"action": 39, "resource": "ugI0SuQ6dDSQc9ub", "schedAction": 3, "schedCron": "lN7TdrOeq4FUWa7d", "schedRange": ["C9qMGXiD1OemYWyB", "jMVpm2XzGRiW4MgR", "DckBlNcOsYZuGwpv"]}, {"action": 18, "resource": "YPUiVgH5u82wQSYx", "schedAction": 92, "schedCron": "V1RwefvuAk6nS1Ph", "schedRange": ["nW8iCGwKog7fqaDh", "9yTsv7hqoCDC07T7", "IZ8CMGnXnN3t5Rlq"]}], "clientPlatform": "TiqZZul8egdYAa76", "deletable": false, "description": "2eFiZL6DUDs2M5M7", "modulePermissions": [{"moduleId": "s1ADkDkEPxkHjDeb", "selectedGroups": [{"groupId": "qFe390PvtkQ6s8vS", "selectedActions": [64, 98, 44]}, {"groupId": "oX87AMlGkHqlufi1", "selectedActions": [81, 91, 41]}, {"groupId": "a5ndTnkdkkXciMHu", "selectedActions": [26, 54, 24]}]}, {"moduleId": "7Ns1UACzMBK2rw9I", "selectedGroups": [{"groupId": "bVrFesIKP74adop5", "selectedActions": [75, 96, 59]}, {"groupId": "0UdqkkSf0FFqVyFk", "selectedActions": [96, 42, 86]}, {"groupId": "MBFWOOSxy5RiHEKy", "selectedActions": [55, 27, 90]}]}, {"moduleId": "uM9gXQ49vE17SHeV", "selectedGroups": [{"groupId": "zFovfR1XIEKcZ1SR", "selectedActions": [45, 62, 56]}, {"groupId": "Gpb8v6XtlvBWcgy8", "selectedActions": [13, 32, 22]}, {"groupId": "LrZt69fJmGAE6JH6", "selectedActions": [18, 74, 45]}]}], "namespace": "35CBKEBAmWOhaEDq", "oauthAccessTokenExpiration": 74, "oauthAccessTokenExpirationTimeUnit": "xe960hx5MyXQBMyM", "oauthClientType": "3oL3bINYeFidmHMD", "oauthRefreshTokenExpiration": 15, "oauthRefreshTokenExpirationTimeUnit": "R3QqFwEg4ZHFJkVI", "parentNamespace": "sg5Qg50vE1nwYLpX", "redirectUri": "5F0bi0e1quTUTlh5", "scopes": ["WFN1gmfxZom1grtj", "8HGXBrxnZcoBcx8W", "OBeEXTLLMY7jIb30"], "secret": "xXvzzuowxJVhmyUD", "skipLoginQueue": true, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'jFGaV2emMXFP4bdC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'DYyX4RthR9vdrM9p' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId '5vwV2tDtQjfhrUta' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["pxXVARuZpjcDGg6E", "0GJFq56FsrRJq1tL", "BbzSVMhQvJXsKvEE"], "baseUri": "SIpE38KPGtZxLs6M", "clientName": "t2n8rIwBHMr8QoDu", "clientPermissions": [{"action": 67, "resource": "4853EXlcnvqPJJuQ", "schedAction": 52, "schedCron": "NhnryWuvLLMrTJxO", "schedRange": ["SQ8hj95W4zvPcdnC", "wwKoEeCCgcEXJ0mR", "pK9AkPQxvfBqMbbz"]}, {"action": 70, "resource": "AgXi3yjmS6POy0vj", "schedAction": 72, "schedCron": "7IdaiKZprNLWeF5Y", "schedRange": ["h085TGEfm1tn5gVM", "QnkcN4Z2nSgAPZk0", "N3OMEtyLvcwoHbIx"]}, {"action": 72, "resource": "IwBpNlXBOn0i0kng", "schedAction": 73, "schedCron": "w0o5bTQV40lXiZrk", "schedRange": ["4GhpNNvRHKIIXyFG", "94bQWF17LrwI7cx7", "ILtWCnshzc5rAqCP"]}], "clientPlatform": "YCBwkpkTSVwmrLLe", "deletable": false, "description": "B5b03ecVCzYqtspM", "modulePermissions": [{"moduleId": "gdf56qPw1zftx2iq", "selectedGroups": [{"groupId": "Sbj3qSse2vpn3N8k", "selectedActions": [59, 13, 29]}, {"groupId": "j0Al8EJFOcMeKeA8", "selectedActions": [66, 96, 93]}, {"groupId": "iRVDesDkvTiewg2a", "selectedActions": [24, 47, 15]}]}, {"moduleId": "0n713riPZd86x5Zp", "selectedGroups": [{"groupId": "HmUdqdjh4V6GaRQr", "selectedActions": [1, 25, 70]}, {"groupId": "lRTNTwafunvoRxAz", "selectedActions": [74, 11, 11]}, {"groupId": "C5yOoYxdQzxmutJK", "selectedActions": [49, 14, 54]}]}, {"moduleId": "TE93fysLuP0UGKtB", "selectedGroups": [{"groupId": "s0jrU5I9nX0sPZTD", "selectedActions": [81, 74, 80]}, {"groupId": "y7FfROiCRcFbo2j6", "selectedActions": [83, 44, 9]}, {"groupId": "ZxbgGVozYLO2nXla", "selectedActions": [84, 62, 15]}]}], "namespace": "tnonJzrlzJcHhTzI", "oauthAccessTokenExpiration": 81, "oauthAccessTokenExpirationTimeUnit": "QWLoRcSelK8rDOf0", "oauthRefreshTokenExpiration": 60, "oauthRefreshTokenExpirationTimeUnit": "QhgM6yWmYMdluqYT", "redirectUri": "DR1kzTHMYSeT6PDb", "scopes": ["iYmAIne0NRc4fmmN", "UQbmj5j0bCiC3YlD", "RJw4o2R7nrrqlJlg"], "skipLoginQueue": true, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'BzXqkhv8NYCqtQi0' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 52, "resource": "Xk9DnnMAQ5q33Ej8"}, {"action": 87, "resource": "egCm93Xe6YdmdGu0"}, {"action": 13, "resource": "ma4wjHPvmrePGGa8"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'mJB5mEwsqsxAUoHK' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 8, "resource": "8oN8ZGH5FYby6Upe"}, {"action": 63, "resource": "s8iGkaW4oaPdS5Ot"}, {"action": 40, "resource": "Pb0sYWjSWZYy7zIr"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '51' \
    --clientId 'zHNXr8XZsdDonS8w' \
    --namespace $AB_NAMESPACE \
    --resource '6FJQUB77lIEatDMp' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'r5oO5cTnBnh2uO4d' \
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
    --body '{"blacklist": ["mE43YXRzudHjHfFL", "RFNPQn5QZVhF7FTF", "LYDuxKaxSwuPvC9C"]}' \
    > test.out 2>&1
eval_tap $? 136 'AdminAddCountryBlacklistV3' test.out

#- 137 AdminGetLoginAllowlistV3
samples/cli/sample-apps Iam adminGetLoginAllowlistV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 137 'AdminGetLoginAllowlistV3' test.out

#- 138 AdminUpdateLoginAllowlistV3
samples/cli/sample-apps Iam adminUpdateLoginAllowlistV3 \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "roleIds": ["Uot0exHv8KHQOqbR", "ajYIIus8GC7AKRrn", "rXBGjGJLgcikWhzS"]}' \
    > test.out 2>&1
eval_tap $? 138 'AdminUpdateLoginAllowlistV3' test.out

#- 139 RetrieveAllThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 139 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 140 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 141 RetrieveAllSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 141 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 142 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'lHW0XbdfgUCc8AmX' \
    > test.out 2>&1
eval_tap $? 142 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 143 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'DCLmdbi5CCkZxe2f' \
    --body '{"ACSURL": "kl5XQNQxXkC5kDyy", "AWSCognitoRegion": "00CbOOuOlcL1OF6S", "AWSCognitoUserPool": "jdAR4tCkrIwkCHl6", "AllowedClients": ["2gedVuXFmCe8yHGF", "VvpgsdAteSvtvpqc", "KLfGbybtSpyG0YCv"], "AppId": "T72ujqFJCx9U3vtR", "AuthorizationEndpoint": "JsjpDU58uJ0thest", "ClientId": "Fz8jySrsgyuVSZXO", "EmptyStrFieldList": ["EyIawkXQux9AOF0R", "Hl9LYninyOBKA4BB", "GJGe3r53KBIPOZ0K"], "EnableServerLicenseValidation": true, "Environment": "splBZJk0pDNevkZO", "FederationMetadataURL": "lhPZXKM4oKFoYh0L", "GenericOauthFlow": true, "IncludePUID": true, "IsActive": true, "Issuer": "nOB6djjZDML0ttCb", "JWKSEndpoint": "2vDCh6ShtNZ9QRcJ", "KeyID": "0f1x6pvxBELw00JP", "LogoURL": "AewhAwAuyDORxTgH", "NetflixCertificates": {"encryptedPrivateKey": "pwjB5PZXzqnia9P7", "encryptedPrivateKeyName": "i9E5GvoHWGUguncR", "publicCertificate": "RpnwJjif0UWZXB7A", "publicCertificateName": "tkQTFtpbqXQm9Lnm", "rootCertificate": "dxG7qQnfjvTJzmJM", "rootCertificateName": "CVxhn1KlJWgl6Mac"}, "OrganizationId": "rKxD0AuiZdVSWXfF", "PlatformName": "3L451JQ8Ubvl0mUP", "PrivateKey": "k1wmQyzW3yZ3WqYH", "RedirectUri": "RqsNmCbXP2oraNTh", "RegisteredDomains": [{"affectedClientIDs": ["72Ui6IDabWbmts9n", "AKBEnhpbL3G8Gq72", "hoYicRaPRYirfxa2"], "domain": "FSTC0Q37Or0Y4LGL", "namespaces": ["BIZrAfpK4PnNzOYg", "nzEFJ1sjKOE68VBO", "RNuPBQVSSqDxJ3H0"], "roleId": "8nGFFfFXPUfcUZZW", "ssoCfg": {"googleKey": {"Z9lmRFaEFXrCcCUk": {}, "u9ZvvjbQeNSZDZpY": {}, "TmVR5MseZxIohPaI": {}}, "groupConfigs": [{"assignNamespaces": ["e9BCdcffrWZOa7rb", "fqccX8jj53Qnt639", "A2Xz4KAAiFbVFiYN"], "group": "0al47HrlAsrgbFLw", "roleId": "8ivAFgaucDhLweg3"}, {"assignNamespaces": ["aUSDZxK1rpJU33eQ", "LwDQbS70ksUQrTFX", "ZHVwfPwkU0ySjlPV"], "group": "ErTOtsAYkAsjWfOz", "roleId": "15KeQZ4MtSRGcEHj"}, {"assignNamespaces": ["HJhhW8OYcu93LXtw", "nXLNF7kDdcoLi3CS", "t847sqyMjFSJ2rZ5"], "group": "9VYgER61n8IE7dK2", "roleId": "SU3R1TfvaILUg94y"}]}}, {"affectedClientIDs": ["lept151Hx7vVE2B9", "moWrfWx96BJhHq8i", "JLMpPoolyGSj33Em"], "domain": "dNKQFPwUcbeTP9MK", "namespaces": ["iWYMDxY0SOg83qEi", "UxBrlmFrKWedHW0g", "B77okMsmQenivsGz"], "roleId": "fz8cYa79t1x9sglo", "ssoCfg": {"googleKey": {"5X8wzFglz5bI807c": {}, "LlZgSZVR4lYN1bZX": {}, "ZpYUbgLGcwlvPBKL": {}}, "groupConfigs": [{"assignNamespaces": ["kAF7AqY6xwee51vQ", "3fMmQseuMb3FBH57", "rtVGteexIYQ97X2L"], "group": "yDfm9DwvJSUOPdQx", "roleId": "7lyh2NelTDUHOP38"}, {"assignNamespaces": ["bJL481rQCYY239Ik", "0GYlvHArTE9HsGe8", "j4sVd0KHbHwKgbCo"], "group": "SpzLEJexO94yRhan", "roleId": "vCySjQ46uGmj1B7k"}, {"assignNamespaces": ["QmTXkYQnvYG6cVU6", "iBlbdPHWGI4ykkzn", "UIpHXvJb2LYWUdGY"], "group": "XI1ZnX3cAfj4cBaT", "roleId": "DnIKY7w1XUAJvHGR"}]}}, {"affectedClientIDs": ["WvqQNQ4CxowsU9Vk", "JOPC9MCZ0TVjnSau", "YJFCJTjszlt1GRWc"], "domain": "T0niLy22FHSh0qqV", "namespaces": ["kFOStzDS9ElxDKI5", "wAfSFDj9LMu29oBx", "u413zoDQBbjp5uYo"], "roleId": "Iu0RSLDruSBXNMfD", "ssoCfg": {"googleKey": {"u9HOkBrbsYMedq9R": {}, "XPbtZddmqYgFVFji": {}, "BItoJQEdg9wXbJYD": {}}, "groupConfigs": [{"assignNamespaces": ["0tNGivYlxoEZChOV", "V2YstkKdVqrewk7Z", "4kOQtXGtxiKtvWRe"], "group": "v2uEN2x0wK6g9WLx", "roleId": "UbVKNw5n4ClrDI44"}, {"assignNamespaces": ["371D6Iok2GIrlr9z", "xBUF7aRnnHM0rFtB", "Alv0JUWxyVFRblBp"], "group": "vd2SiMalmKZkdgrG", "roleId": "8LAvi6K3cbHMXfPt"}, {"assignNamespaces": ["qZvslqklOc8nVIAO", "1fu10vQNYvI32090", "Nyq1fFUYwJsmpoAO"], "group": "XCWuZwHrFE2QOkdC", "roleId": "RqziHVeoxXW3QGbZ"}]}}], "RelyingParty": "eWtGefcEQay6Zyk4", "SandboxId": "WwlnzlByHIp1O3Dh", "Secret": "fbEad92yNwBmrYTu", "TeamID": "KKan81xOR6k2sIfS", "TokenAuthenticationType": "sXL6nn0hIyHZHyfU", "TokenClaimsMapping": {"lqsTpeUPOO8EBvxI": "A0EzgD0he27p97IK", "B6135PpleFNIyHTK": "qIn5xzcPwMu28eeE", "I5bMMF4AJjMsibVO": "OXZTz3fnChtjkyDw"}, "TokenEndpoint": "fapQB5o5WmG6ACMe", "UserInfoEndpoint": "B96U4XuWHm7XwSLe", "UserInfoHTTPMethod": "TpyvB0A1eqUHIfEe", "googleAdminConsoleKey": "gk5VWndngcf2zUBt", "scopes": ["YxYelOQC35SkDXXK", "mebdtL5asNEUHStX", "ZGG2aISocR474btT"]}' \
    > test.out 2>&1
eval_tap $? 143 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 144 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '8TPtdudAqei0QDrt' \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 145 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'fJcxY1bKvCQsfHJL' \
    --body '{"ACSURL": "svpdVCouu4w5GA18", "AWSCognitoRegion": "JlptXBIhDUcxXzjn", "AWSCognitoUserPool": "tA4fDKSD9vFqbhNc", "AllowedClients": ["mBygfIpQYTF7Ner0", "JmkayGkY5EwOPRcj", "i2N4E2agFpXVn2ir"], "AppId": "YIeqxjTpFvEVEn0l", "AuthorizationEndpoint": "Q3lCyuKE2adroTgR", "ClientId": "aTfFy3u06xnnJzlU", "EmptyStrFieldList": ["F5c3o91Ci7m50Nys", "kcbzn9FDmpypXMFl", "TnwRSwvRL4X9jAef"], "EnableServerLicenseValidation": true, "Environment": "FZDVQsOClMRcwUj7", "FederationMetadataURL": "w3fHZjAVYe6p9uOA", "GenericOauthFlow": false, "IncludePUID": true, "IsActive": false, "Issuer": "daGFpRmTEHqDp3PB", "JWKSEndpoint": "Fiy4YzanXFnOyoJz", "KeyID": "hsD6XranyECL7Djc", "LogoURL": "EIQF8Urq4HTweoOy", "NetflixCertificates": {"encryptedPrivateKey": "r3isBAH7J8iU6MgD", "encryptedPrivateKeyName": "V65V8EiSbFwQLKeJ", "publicCertificate": "4NkxOFqiH98a2kKu", "publicCertificateName": "RUbCZTGifOtMHq6w", "rootCertificate": "dlrwx6EHqwmnLY3T", "rootCertificateName": "d28tLTYbzKt6JxPF"}, "OrganizationId": "szEmgrvV63Bo9P9n", "PlatformName": "F3GNEcKmWcLadcYR", "PrivateKey": "XoKWRhzdk6SrS9lv", "RedirectUri": "uZMKqegCJ6H1vLvZ", "RegisteredDomains": [{"affectedClientIDs": ["xi0UYigcTsjELSgg", "iDTfLq7CnlrHNrn8", "Y7kdTeYrXx9FUYpj"], "domain": "HdHnmFy1OISu9esV", "namespaces": ["GEklhbkff4FYB9Iq", "8rKHlR8hBtNlNxKp", "kvEoaaOP3JljyPfu"], "roleId": "uGLmOlIoEJVUM99F", "ssoCfg": {"googleKey": {"x39VYw5KZh47Ww0b": {}, "MdVxYrD6o8qf3RRP": {}, "r9mFsDc9pLX6iHvY": {}}, "groupConfigs": [{"assignNamespaces": ["Oagv1p5YzAE6f7CS", "nSCLwIoC172ZMoBN", "NOt5I6QZGCrKOXpr"], "group": "D8HB0eX5ZzQEaiMt", "roleId": "awqy3nBlgA1oKSmT"}, {"assignNamespaces": ["nYSnDX3E3WjdPFJt", "bZwnTUmUsQ8KhbXA", "27T8As4GitW2P24o"], "group": "agt6V3l1hPBbCUiN", "roleId": "6Lh4jafW9DxPiN30"}, {"assignNamespaces": ["QYKQRYVG4x6HjdDA", "kX7ue52lpn3urM91", "ey194f0z9DvWAwR9"], "group": "9xAlHh29ihsKUmgJ", "roleId": "OoNkKFiMhGiFZhiY"}]}}, {"affectedClientIDs": ["cqVFKZtD6BprCaG3", "Pp6yWj06hDYwhybJ", "sdNEb0gcipeepEPg"], "domain": "KB75i3xS8GOxQAbX", "namespaces": ["p5yKLdx4Y0x710vq", "O3MdT3OZT4Tf0OdC", "o24DTZ4L2aKWA6sd"], "roleId": "IAZYh78jTWs5PYxv", "ssoCfg": {"googleKey": {"aof9okYrSloIxSpp": {}, "cmGS92qQRnocPuK9": {}, "WSQsdzXdFc2S9WCb": {}}, "groupConfigs": [{"assignNamespaces": ["RK0djlTADpnyuUxT", "FZySXrMk1KbBdu8C", "IzD0Khu9FI3wm2Cz"], "group": "nS9iaeEDJYS0ZtKO", "roleId": "gFRKE4EwbGWw1Pya"}, {"assignNamespaces": ["j5rZjPY6lGxSm20i", "PXGOrWGfMWtryGZ1", "tYJkllQJLIxDO8uO"], "group": "cYqglu6eVDRwYThK", "roleId": "mXE6BiAAjDYFXCPc"}, {"assignNamespaces": ["uL6lQ3ZjaGUPZQYZ", "SkN9ImxVn9sTMy8Z", "mTks8Imz7BgnUsiL"], "group": "xkSCoHW89JOAo653", "roleId": "ltAxIS5kONuhPCF0"}]}}, {"affectedClientIDs": ["GhQ1QY6DJyHyAF2D", "LJ9qkKFpWqFkl5X5", "bSa5YuTkxZjXPpOM"], "domain": "y2taXOkDFQtQLEZm", "namespaces": ["EdunSrHcJdwW7cF7", "N6bW2JEzrcYEt4ro", "yg8ZQHvuXfrpQ6Uo"], "roleId": "bBR9FRi7sMfoBBiV", "ssoCfg": {"googleKey": {"LDAymIipGDPCChMV": {}, "D9eVo0gRzsIOgP4h": {}, "8yw56uaO1E7Y0Ixk": {}}, "groupConfigs": [{"assignNamespaces": ["KOfbjidgqjowkAek", "53Ab2U62Whv9m75k", "6cVnP5c5M4urpQLW"], "group": "kJVhxUavyEDDutCI", "roleId": "GDC2gUohLoV5wJ0Q"}, {"assignNamespaces": ["IbsztJ5qFFEwP1PV", "D2gQyEcyzOUQk5w5", "BQV2r6xLm3BXAomB"], "group": "BwPm130b3NCBO03l", "roleId": "QsMiQ7k1KXUGETO1"}, {"assignNamespaces": ["IVBgT5HnetGA4jRx", "tHk3w2zpMoXlxksm", "TTtNJtMYxY9Vn9H6"], "group": "wIK9VgLFS1Ub6Bcc", "roleId": "fxYkMZDLpFQiD2Ux"}]}}], "RelyingParty": "UO3E9TZbB3yyceJT", "SandboxId": "qiFw786409hF3r6z", "Secret": "7zUzaY9iO0qJSLdW", "TeamID": "OkBigIwd0tWBgMle", "TokenAuthenticationType": "ZNNyyF1TfxOu53oT", "TokenClaimsMapping": {"eECVuLVbRk1JURFi": "43tTA7FuIPiKyn4g", "52y3N2CAsH4mgZcv": "ZtT68TwmJkTWujG3", "Yom34A6LW5wrULQO": "Rfg8EMvFgdyodKlT"}, "TokenEndpoint": "bNmGFoxwllOwBOFC", "UserInfoEndpoint": "UzR55BSkO3xK77wY", "UserInfoHTTPMethod": "xyrfMIcgqY5bBXzf", "googleAdminConsoleKey": "Kti3MRwwvhhEr4fX", "scopes": ["ABqNvfUTdmlZc8ia", "Dtug3OtDcdv5IlYb", "7fsf6MtZy75Mp9Cx"]}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 146 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'zeBhZAceb4EzPCYo' \
    --body '{"affectedClientIDs": ["001ck8LLB7iuHujG", "G48OGDbg549vCUFM", "NqWWMifiRj9n4YXm"], "assignedNamespaces": ["boLEUie4dFnsgIMR", "JQ3tFtStfSk2Wrbd", "xrM3ver9X36SxxGY"], "domain": "0jF6bq1B2ETraTtM", "roleId": "1KbjmsbBVMZibIsm", "ssoCfg": {"googleKey": {"1We3HtvodhGpadpr": {}, "1lgXGoZzjxPkJw7X": {}, "psAYhJd5IVBTum5V": {}}, "groupConfigs": [{"assignNamespaces": ["SNkj2sDs8dNDqnAm", "GDK6YibGejfnaWfq", "WJkhTqFartwMHXpj"], "group": "TScNtbJ1c8CS95Mn", "roleId": "zq0gmCfaOp0VNqEc"}, {"assignNamespaces": ["7auelvU7ZDfID6DU", "AId7Vvs9j2FiAzZP", "l9MUggZHfmDXotnL"], "group": "f4oxmUyP4xIUa1oR", "roleId": "EmOiXlE4zun8wNTI"}, {"assignNamespaces": ["LuEUEHTSqQfFUNqY", "WBPxFl53mx5O8swW", "GWxyzLyK0n7d0vCr"], "group": "anvjVRESHJCMcCD6", "roleId": "ezui07P5e65UHgJr"}]}}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 147 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'DjCCNC8sopc9YFTK' \
    --body '{"domain": "TwHmqqR9IfYDpq8H", "ssoGroups": ["yvITljq1eY1o9Bwc", "Avihaw4Lt1YjMcvC", "p56U6obFnsRRlu4H"]}' \
    > test.out 2>&1
eval_tap $? 147 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 148 PartialUpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam partialUpdateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'DPHprCxbrbA5pUuk' \
    --body '{"affectedClientIDs": ["O719y3BmBRBZ4TL7", "49lKvZX0Dwj6CTfE", "ZvHxZ4oNBERCVrJO"], "assignedNamespaces": ["SKkjhiyAVunwi2wG", "TkiW0yvl08tJi98r", "d0qpRTfD1deXRDno"], "domain": "oyimnBkgH92xLODd", "roleId": "1G7gAbklzwHLjVuc", "ssoCfg": {"googleKey": {"BPspopbN3zP6jtcD": {}, "Mw47RsGCvi62fery": {}, "Xcx9W2qBwg2qSgHh": {}}, "groupConfigs": [{"assignNamespaces": ["vXDipkSA1wWUcC8P", "KILP3Mugx1c9UuCo", "r7Jqy4AxXot0H2zQ"], "group": "If0XsWu0FanG4Q31", "roleId": "PutKnSAosh6n9Wxy"}, {"assignNamespaces": ["IC0dUCNhF2Dlzv3B", "qOUOMH1OojRKpncu", "sPfoXuNimq8TGO2v"], "group": "xtXIZCBH4yIk3Lg3", "roleId": "5E7dI9PalkLLoARM"}, {"assignNamespaces": ["OswFBcF4JsSfmXYb", "wnI8wNFU8nHWwPbI", "U2uqi2HZzIgWLXjP"], "group": "mOvVfJrMjDh45Wet", "roleId": "vSjjFo6kx2QRBebu"}]}}' \
    > test.out 2>&1
eval_tap $? 148 'PartialUpdateThirdPartyLoginPlatformDomainV3' test.out

#- 149 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'MdB5hwANiHGhuBwk' \
    > test.out 2>&1
eval_tap $? 149 'RetrieveSSOLoginPlatformCredential' test.out

#- 150 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'wOMj7fZsYeJ5dPrt' \
    --body '{"acsUrl": "T2spqmrb2YaFqFSE", "apiKey": "UyZnNiRnyHIOHcEa", "appId": "j329ER2WL86pRFEE", "federationMetadataUrl": "34tlmBJuQues4UtO", "isActive": false, "redirectUri": "a9p0vGIEkuMq5Kmq", "secret": "8nxoSCfwyxMYxFaC", "ssoUrl": "jnxvIjnrJdid8wOz"}' \
    > test.out 2>&1
eval_tap $? 150 'AddSSOLoginPlatformCredential' test.out

#- 151 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'p2XNYf3GbowEms6I' \
    > test.out 2>&1
eval_tap $? 151 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 152 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'Qn3Kg1oQWemzzPEK' \
    --body '{"acsUrl": "4K7qgISGKbvp2wdB", "apiKey": "yvUi1qrn2TQsBaEy", "appId": "EXEg5vddoYIT7cx6", "federationMetadataUrl": "F4lv4cQbqcWrhud8", "isActive": true, "redirectUri": "To5gDYv6qF7M99OR", "secret": "vLzsjLoXdyrRWV3d", "ssoUrl": "EhjRno5thfY8cYh3"}' \
    > test.out 2>&1
eval_tap $? 152 'UpdateSSOPlatformCredential' test.out

#- 153 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Kw6d9X5iKRrgwW94' \
    --rawPID 'true' \
    --rawPUID 'false' \
    --body '{"platformUserIds": ["Lo2lV8t3WkDF5VqN", "wZe2ePWpHFR0MuFu", "1SRDaZsLbLnVq6Mm"]}' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 154 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'bHBlL7qTRdqAH7Pb' \
    --platformUserId 'PPRUzIfNnyb94CUl' \
    --pidType 'JKO36cfSI2HFeO4B' \
    > test.out 2>&1
eval_tap $? 154 'AdminGetUserByPlatformUserIDV3' test.out

#- 155 AdminGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'display_name' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetProfileUpdateStrategyV3' test.out

#- 156 AdminUpdateProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminUpdateProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'dob' \
    --body '{"config": {"minimumAllowedInterval": 28}, "type": "iRg4oTC2p1NR33df"}' \
    > test.out 2>&1
eval_tap $? 156 'AdminUpdateProfileUpdateStrategyV3' test.out

#- 157 AdminGetRoleOverrideConfigV3
samples/cli/sample-apps Iam adminGetRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'USER' \
    > test.out 2>&1
eval_tap $? 157 'AdminGetRoleOverrideConfigV3' test.out

#- 158 AdminUpdateRoleOverrideConfigV3
samples/cli/sample-apps Iam adminUpdateRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'VIEW_ONLY' \
    --body '{"additions": [{"actions": [27, 52, 55], "resource": "YYWd1A5KMsGadCM1"}, {"actions": [28, 51, 3], "resource": "7MYkCcdh0lywre1F"}, {"actions": [65, 32, 80], "resource": "b0vNCNbJ2Zqld1CR"}], "exclusions": [{"actions": [46, 46, 52], "resource": "C0uotBX2Ftv9J6e6"}, {"actions": [97, 32, 43], "resource": "miTk6ItiBTSkiNQP"}, {"actions": [10, 35, 91], "resource": "3rPhlhCYlZQi49hU"}], "overrides": [{"actions": [68, 40, 84], "resource": "VkMBTKGGZKbK6HIz"}, {"actions": [58, 69, 37], "resource": "fleRiYV617iBHFSO"}, {"actions": [81, 76, 70], "resource": "jwO0pPCZifDXRe7V"}], "replacements": [{"replacement": {"actions": [80, 19, 84], "resource": "benWzdjpK1C4Qpcz"}, "target": "JkZKAHSFxzyjZhj7"}, {"replacement": {"actions": [36, 32, 33], "resource": "Vw6AQBp3FjI00R9F"}, "target": "I7G0Dw2T08IcAcye"}, {"replacement": {"actions": [74, 12, 57], "resource": "xelGQWTjQ3q0zfNs"}, "target": "NrdNPq8IqnfAZNui"}]}' \
    > test.out 2>&1
eval_tap $? 158 'AdminUpdateRoleOverrideConfigV3' test.out

#- 159 AdminGetRoleSourceV3
samples/cli/sample-apps Iam adminGetRoleSourceV3 \
    --namespace $AB_NAMESPACE \
    --identity 'VIEW_ONLY' \
    > test.out 2>&1
eval_tap $? 159 'AdminGetRoleSourceV3' test.out

#- 160 AdminChangeRoleOverrideConfigStatusV3
samples/cli/sample-apps Iam adminChangeRoleOverrideConfigStatusV3 \
    --namespace $AB_NAMESPACE \
    --identity 'VIEW_ONLY' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 160 'AdminChangeRoleOverrideConfigStatusV3' test.out

#- 161 AdminGetRoleNamespacePermissionV3
samples/cli/sample-apps Iam adminGetRoleNamespacePermissionV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'REzvVluxvjLM8T4x' \
    > test.out 2>&1
eval_tap $? 161 'AdminGetRoleNamespacePermissionV3' test.out

#- 162 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'M1gYmm3VYxGL5PQO' \
    --after '30' \
    --before '0' \
    --limit '18' \
    > test.out 2>&1
eval_tap $? 162 'GetAdminUsersByRoleIdV3' test.out

#- 163 AdminQueryTagV3
samples/cli/sample-apps Iam adminQueryTagV3 \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '67' \
    --tagName 'ms66861HwI9kvZU6' \
    > test.out 2>&1
eval_tap $? 163 'AdminQueryTagV3' test.out

#- 164 AdminCreateTagV3
samples/cli/sample-apps Iam adminCreateTagV3 \
    --namespace $AB_NAMESPACE \
    --body '{"tagName": "SJPrOu5K9Zx8d5oY"}' \
    > test.out 2>&1
eval_tap $? 164 'AdminCreateTagV3' test.out

#- 165 AdminUpdateTagV3
samples/cli/sample-apps Iam adminUpdateTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'uO4yVaIfNYlt19Y0' \
    --body '{"tagName": "h4HHns0TtBC5YGRV"}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateTagV3' test.out

#- 166 AdminDeleteTagV3
samples/cli/sample-apps Iam adminDeleteTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'NroDHPJJB0U9FccH' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteTagV3' test.out

#- 167 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'Z4muxoEuqHXD9M9f' \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserByEmailAddressV3' test.out

#- 168 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": false}, "userIds": ["62xCddCcJ6EW6Bs9", "8FjfXxwMYGtG1ffr", "I8NeMCCzcaIzt1Ih"]}' \
    > test.out 2>&1
eval_tap $? 168 'AdminBulkUpdateUsersV3' test.out

#- 169 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'MYYRzpZKzeEFBsdP' \
    --body '{"bulkUserId": ["WA5vLRKOXYYi02Qf", "bavbCeoYg2flLWNf", "8iWDl4Nl07jBjsNr"]}' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetBulkUserBanV3' test.out

#- 170 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"findByPublisherNamespace": false, "userIds": ["6Zp0U7iw6b2oyV5E", "tGgaxyda0TXyPJ5K", "NKbj1B3RpYEU5eX3"]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminListUserIDByUserIDsV3' test.out

#- 171 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["8KZ1P8aiYjOmOT00", "dSi0WRP4ondksVMG", "8DRp3zUhgz3uDRDj"]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminBulkGetUsersPlatform' test.out

#- 172 AdminCursorGetUserV3
samples/cli/sample-apps Iam adminCursorGetUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"cursor": {"cursorTime": "t1RMxUfAhxa40BVd", "userId": "A7sD337nelGRUJ1X"}, "fields": ["B7gvo9dybny5J6Z6", "wVPnlVLA8ezaHLuS", "dpnvW5BrmRiZk0Z3"], "limit": 42}' \
    > test.out 2>&1
eval_tap $? 172 'AdminCursorGetUserV3' test.out

#- 173 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["Khg3ICnMbuDamUm1", "J3sm4URUrESkwOPe", "59Tm3jxS2lILtnVV"], "isAdmin": true, "languageTag": "ZD7JnIKGCj0BXdvC", "namespace": "5zTP5NR64ihF0ziG", "roles": ["0EKNTsdQNbQwtMsc", "Gg2W6r5QKT206ZlI", "rMqLPkQN0yjGgBEM"]}' \
    > test.out 2>&1
eval_tap $? 173 'AdminInviteUserV3' test.out

#- 174 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '84' \
    --platformUserId 'ZTGagcpp8v7TEGNn' \
    --platformId 'EDNIfuOYicrRQsRF' \
    > test.out 2>&1
eval_tap $? 174 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 175 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 175 'AdminListUsersV3' test.out

#- 176 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'DRLvK3hNRBJBXgvH' \
    --endDate '2XacNGTPEZi41N42' \
    --includeTotal 'true' \
    --limit '1' \
    --offset '45' \
    --platformBy 'LXcEvAvV3Ubet1LT' \
    --platformId 'piwYkbzzp2edfSmS' \
    --query 'pd3Lz98RrpqBfBnB' \
    --roleIds 'VWXpV1t3i6Wk3HP4' \
    --selectedFields 'CS6xvlcTymRNNjjx' \
    --skipLoginQueue 'false' \
    --startDate 'ElbqUavTlQx1CRZi' \
    --tagIds '0v7QGeX1dC59NGsw' \
    --testAccount 'true' \
    > test.out 2>&1
eval_tap $? 176 'AdminSearchUserV3' test.out

#- 177 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["ZHJC8CTlz7GGJY4n", "Typ3w27Sc2DWY2KC", "yoVDucPjGOcs4twt"]}' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetBulkUserByEmailAddressV3' test.out

#- 178 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'IXVnQ6ZPQK0o3GFU' \
    > test.out 2>&1
eval_tap $? 178 'AdminGetUserByUserIdV3' test.out

#- 179 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'O9KXocfMWqc35Hm9' \
    --body '{"avatarUrl": "s1SNMDI0oxNLOcPi", "country": "dVpyeuiaW7ZXo7Jo", "dateOfBirth": "ENK2BbKt49FcckOn", "displayName": "KwLViuCcr5xT6ttL", "languageTag": "GGUMJIExlfiFy2FL", "skipLoginQueue": false, "tags": ["dIJl0rHr80btJq8r", "9JkverELdBrtNtWi", "oAwHECeH4SPAztTI"], "uniqueDisplayName": "zQlme3TUge2H73eu", "userName": "au4hpJMSE41SIyzQ"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminUpdateUserV3' test.out

#- 180 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vZVnzECtzCi77bWY' \
    --activeOnly 'true' \
    --after '48CRxAf2kK8fEp7Z' \
    --before 'QvyuH3mKlPe0QBiC' \
    --limit '93' \
    > test.out 2>&1
eval_tap $? 180 'AdminGetUserBanV3' test.out

#- 181 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'u1Hzmj0QMrE8GKeT' \
    --body '{"ban": "pfMGiwcD3humXJjC", "comment": "kc1OHBppCQNKVlXD", "endDate": "M1USybQgyl4QwbcC", "reason": "9xq9LMDxrIRGTxVV", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 181 'AdminBanUserV3' test.out

#- 182 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId '4YlJtuXrAxj6RzhW' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserBanSummaryV3' test.out

#- 183 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'jkVJUOrv2Sva35R7' \
    --namespace $AB_NAMESPACE \
    --userId 'RH88AS0MOS0ffgho' \
    --body '{"enabled": false, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 183 'AdminUpdateUserBanV3' test.out

#- 184 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dJub9D3hTFNtpg9z' \
    --body '{"context": "uqsVWI5e49Fwjh7F", "emailAddress": "7Oy7VCh7gFrmy5Sa", "languageTag": "T4DrneOJZbw3HuXE", "upgradeToken": "0Sdc1UCIUnAslEHO"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminSendVerificationCodeV3' test.out

#- 185 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NfWYJSxz2tGXzBkq' \
    --body '{"Code": "paBmH9ttKMCepQhA", "ContactType": "4RAiybTZjFhCagdC", "LanguageTag": "5iu37xjmqksfqnbr", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 185 'AdminVerifyAccountV3' test.out

#- 186 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'Jk772FnF6yaZ8Asw' \
    > test.out 2>&1
eval_tap $? 186 'GetUserVerificationCode' test.out

#- 187 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'i92ql0Hr4JpJMBVO' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetUserDeletionStatusV3' test.out

#- 188 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wEGiZ4L0y8LHdVrM' \
    --body '{"deletionDate": 71, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserDeletionStatusV3' test.out

#- 189 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DIhjZM1MuwMN2FAH' \
    > test.out 2>&1
eval_tap $? 189 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 190 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Y4tDBEq2LBIjngv8' \
    --body '{"code": "DB4Qv31Fl7iseszg", "country": "3cvuEFRcTH6PgnN7", "dateOfBirth": "1sKAWLPKYk9QQ4m9", "displayName": "CaTkXZnh6sIGtXMb", "emailAddress": "MdEEEtWoD9bv6Xgm", "password": "lB8uEuVlaYTpJVOE", "uniqueDisplayName": "DTcngds8FI1eXHjO", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpgradeHeadlessAccountV3' test.out

#- 191 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mrqQrtigyFbtUPLd' \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserInformationV3' test.out

#- 192 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VxeVCgS6xfVIflgI' \
    --after '0.9745985284609757' \
    --before '0.01120244104287993' \
    --limit '84' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserLoginHistoriesV3' test.out

#- 193 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'F6RO2lPWahnWecv5' \
    --body '{"languageTag": "u5XRDwP9SHcoXwLp", "mfaToken": "9qK9Ry8rcWjDZ6pR", "newPassword": "XkKtdeIowiWJV6oV", "oldPassword": "13RBPIstwVKTzFRG"}' \
    > test.out 2>&1
eval_tap $? 193 'AdminResetPasswordV3' test.out

#- 194 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bi0ZWMubktyFdW8j' \
    --body '{"Permissions": [{"Action": 14, "Resource": "k8DA1TcKqHQBukUD", "SchedAction": 79, "SchedCron": "O7hzhB1Yw4lwlGzd", "SchedRange": ["rqEB0kkYTCo6ZpB8", "BOFbXJlqCfUqj1GO", "gjczBxVI8IykuWCx"]}, {"Action": 36, "Resource": "OQaGtsROwvqneuZw", "SchedAction": 58, "SchedCron": "3fTBKqGeo6gDRxlx", "SchedRange": ["NWemkRujcUGPxUVZ", "C8eGLy3ZEvxu6uCy", "CwzoTLlQXtLuO1Qf"]}, {"Action": 2, "Resource": "XwCK8WpwQyp1cnPE", "SchedAction": 85, "SchedCron": "7fs6sTVItFo35zsO", "SchedRange": ["RyTpkjXqrsrKR36L", "PzSSkQSvgtukFl4B", "F9c2rIgtBj5n3FWv"]}]}' \
    > test.out 2>&1
eval_tap $? 194 'AdminUpdateUserPermissionV3' test.out

#- 195 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Xwdyb2DrdiVoKNhk' \
    --body '{"Permissions": [{"Action": 52, "Resource": "LIA5PjJyb3WAjr7T", "SchedAction": 33, "SchedCron": "KBhZMYymUHZJ7mDz", "SchedRange": ["xcy5MZ1zM0NHZAqy", "xF1UTqed7NJBv2fJ", "JVUZwA4O6Fq6O2yo"]}, {"Action": 24, "Resource": "PwuaQCpadaIWIinI", "SchedAction": 14, "SchedCron": "FddmBUKrBR35Dj9h", "SchedRange": ["UMJXyMVPQTqHRSSU", "plHeDOdFNRuCDs8b", "9QE8fZYjY566m5za"]}, {"Action": 86, "Resource": "p1VsBFxwVCGe2pgn", "SchedAction": 17, "SchedCron": "vpObuGxWIlourliQ", "SchedRange": ["Ra6TUMi4QLmDvNu7", "shkWA5raJvrBJmWl", "jWBIqWztmdjAveFA"]}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddUserPermissionsV3' test.out

#- 196 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tagZ142GdDPKzkO3' \
    --body '[{"Action": 43, "Resource": "eVxQL0ykfIsSVYk1"}, {"Action": 9, "Resource": "075uUFgXkBDyBZGh"}, {"Action": 60, "Resource": "jKGTgcWcx0DqJGzK"}]' \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteUserPermissionBulkV3' test.out

#- 197 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '54' \
    --namespace $AB_NAMESPACE \
    --resource 'nHa9F1pmgV9H9BU3' \
    --userId 'rL6z8D20efRC5ROD' \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteUserPermissionV3' test.out

#- 198 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'HlK03XqOQ8oLRgtR' \
    --after 'H31qVj52z3h9nniX' \
    --before 'e1JwvDaYdfbaQJfW' \
    --limit '76' \
    --platformId 'LqshKx4BHIohk0aT' \
    --targetNamespace 'dge6Un9ANp1OwpPO' \
    > test.out 2>&1
eval_tap $? 198 'AdminGetUserPlatformAccountsV3' test.out

#- 199 AdminListAllDistinctPlatformAccountsV3
samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Wzz6E3M8iPtSXZuM' \
    --status 'gsDVWX6NRNYkO8CR' \
    > test.out 2>&1
eval_tap $? 199 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 200 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'XVVOgAR4gQubcJol' \
    > test.out 2>&1
eval_tap $? 200 'AdminGetListJusticePlatformAccounts' test.out

#- 201 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'O32tFIHG1Elqe9TY' \
    --userId 'OO8sXREVxP9BAAjP' \
    --createIfNotFound 'true' \
    > test.out 2>&1
eval_tap $? 201 'AdminGetUserMapping' test.out

#- 202 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'n86qRHTkLeNt0spS' \
    --userId '1KIoyEi5KDO5WW0K' \
    > test.out 2>&1
eval_tap $? 202 'AdminCreateJusticeUser' test.out

#- 203 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'ef076MWjSMCxOvON' \
    --skipConflict 'false' \
    --body '{"platformId": "4hQkcIWeupMwqnna", "platformUserId": "jRU7imXsLvPMvoST"}' \
    > test.out 2>&1
eval_tap $? 203 'AdminLinkPlatformAccount' test.out

#- 204 AdminGetUserLinkHistoriesV3
samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '5AH5uL4YR6ctoAFa' \
    --platformId 'A1vktl1a8P92P3AV' \
    > test.out 2>&1
eval_tap $? 204 'AdminGetUserLinkHistoriesV3' test.out

#- 205 AdminPlatformUnlinkV3
eval_tap 0 205 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 206 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId '4FSd8HPCJ7601JMg' \
    --userId '5kASWYTGKGpPRo1n' \
    > test.out 2>&1
eval_tap $? 206 'AdminPlatformUnlinkAllV3' test.out

#- 207 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'VnkAhv5mjcXWnlSu' \
    --userId 'CzxQaW62mzXyfuy8' \
    --ticket 'd50Rw4loYzAqazjC' \
    > test.out 2>&1
eval_tap $? 207 'AdminPlatformLinkV3' test.out

#- 208 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 208 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 209 AdminDeleteUserLinkingRestrictionByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '69b4mtOjuGYigFHP' \
    --userId '9S8KXx3XMuLKCFaX' \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 210 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'MzQHbPpF2HUA0bbb' \
    --userId 'L65bbxeWRwwEkU9A' \
    --platformToken '7hfJYmnMFApc9K7G' \
    > test.out 2>&1
eval_tap $? 210 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 211 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'lSpz1MNj0EgW5kcQ' \
    --userId 'FsZpRu7QzLEuSFat' \
    --crossNamespace 'true' \
    > test.out 2>&1
eval_tap $? 211 'AdminGetUserSinglePlatformAccount' test.out

#- 212 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DsknuexOguJDzEjl' \
    --body '["DpxlnfTvcbHQO7VP", "LNtbWErycCxHETOE", "kQmJAfAArVsfp92H"]' \
    > test.out 2>&1
eval_tap $? 212 'AdminDeleteUserRolesV3' test.out

#- 213 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'I6cCu6hrz5r44iOE' \
    --body '[{"namespace": "91FsjrU3J73dnCfQ", "roleId": "6UTDrWvKe3xF1xai"}, {"namespace": "oPLJHZrisyDHeXI2", "roleId": "sTaXKlJ0seYYPRaS"}, {"namespace": "F1xi3iAuxpTK5sbu", "roleId": "5g2ypKpX2ZDTvBuO"}]' \
    > test.out 2>&1
eval_tap $? 213 'AdminSaveUserRoleV3' test.out

#- 214 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'bUxgZVuhOIAvlHS5' \
    --userId 'pkSrgFm5IAu0vqdS' \
    > test.out 2>&1
eval_tap $? 214 'AdminAddUserRoleV3' test.out

#- 215 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'eTDZzK1dQUADoMri' \
    --userId 'edyCF0Ztn5UiROyQ' \
    > test.out 2>&1
eval_tap $? 215 'AdminDeleteUserRoleV3' test.out

#- 216 AdminGetUserStateByUserIdV3
samples/cli/sample-apps Iam adminGetUserStateByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId '9J2myrGTxYMgfF79' \
    > test.out 2>&1
eval_tap $? 216 'AdminGetUserStateByUserIdV3' test.out

#- 217 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rCJQHJpOqYIISmrt' \
    --body '{"enabled": true, "reason": "xTuJv6YDNiEBzGCA"}' \
    > test.out 2>&1
eval_tap $? 217 'AdminUpdateUserStatusV3' test.out

#- 218 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'PitXYUjUzAsGHUun' \
    --body '{"emailAddress": "c9lxDxetIJVYadOP", "password": "hRC8d0RGVVbSYxuo"}' \
    > test.out 2>&1
eval_tap $? 218 'AdminTrustlyUpdateUserIdentity' test.out

#- 219 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rT7CUdlPaaLpGTqq' \
    > test.out 2>&1
eval_tap $? 219 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 220 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'q8Nbjio95WrEETjz' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "zEEtBGiGx609VE5Z"}' \
    > test.out 2>&1
eval_tap $? 220 'AdminUpdateClientSecretV3' test.out

#- 221 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId '82AVLnxEsDKN3lZI' \
    > test.out 2>&1
eval_tap $? 221 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 222 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'nx9TtZ80K5tkfUNZ' \
    --before 'iVBhZLKfi15je699' \
    --isWildcard 'false' \
    --limit '20' \
    > test.out 2>&1
eval_tap $? 222 'AdminGetRolesV3' test.out

#- 223 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "managers": [{"displayName": "JSPmJ92sMZjuRsNz", "namespace": "IVvKRfYxZ7K0FHO5", "userId": "fodMcFclvH7TgeOC"}, {"displayName": "idF5CD5CCoEhP99Z", "namespace": "byNMhq54m6a4A3vP", "userId": "RyzBtUYTeKahLkx6"}, {"displayName": "91lYv0Irl4bE19RC", "namespace": "GcQiB1PWVFvMU3gk", "userId": "pdOSlmvOTEIIvd4o"}], "members": [{"displayName": "cYf0RgQq1KT8aaJY", "namespace": "VRY8bwzxdNS8sbVl", "userId": "DR4agyRMJaR6XyXY"}, {"displayName": "zIHh6WbQHQYQ3ubn", "namespace": "l6ryFW6NgJeMnH6G", "userId": "6AylJmfRsH59JPv4"}, {"displayName": "6tcQvik6S5PdOYbu", "namespace": "pcOX5oM6mjHZddvH", "userId": "lUKrMR45ptwd00QN"}], "permissions": [{"action": 56, "resource": "21T2NH1kw7PErWlS", "schedAction": 53, "schedCron": "EHnXpJfwMB8XnBcW", "schedRange": ["hqYxFSiBusK4d6Hx", "4E83cVEJQJQrLaJn", "kWjQTJ8tKtvqyA37"]}, {"action": 24, "resource": "EJ0dr3uqSESEZJ8F", "schedAction": 53, "schedCron": "F8tLaUnyDCwpQfsN", "schedRange": ["AnoWCVxPhZk1OBab", "06XGExWODun2Io4s", "rSdUNFiSTedlo3OY"]}, {"action": 23, "resource": "ePfjKFOrbPfueDum", "schedAction": 2, "schedCron": "9uVEJGj2zGmKZHr2", "schedRange": ["varuvK1ftRFhNcbv", "U9EaLM8DvmlHlwQd", "32vv0adCspgI0swj"]}], "roleName": "GZQzqjEp8y3kmtG5"}' \
    > test.out 2>&1
eval_tap $? 223 'AdminCreateRoleV3' test.out

#- 224 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId '8cpEzU7njZJOZrSl' \
    > test.out 2>&1
eval_tap $? 224 'AdminGetRoleV3' test.out

#- 225 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'J50ANNwyLhaEpf76' \
    > test.out 2>&1
eval_tap $? 225 'AdminDeleteRoleV3' test.out

#- 226 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'IUmoHlk7IcbX75c0' \
    --body '{"deletable": false, "isWildcard": true, "roleName": "tMBWHMp7acQF0yfQ"}' \
    > test.out 2>&1
eval_tap $? 226 'AdminUpdateRoleV3' test.out

#- 227 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'oDtr28XkYqLXPTS3' \
    > test.out 2>&1
eval_tap $? 227 'AdminGetRoleAdminStatusV3' test.out

#- 228 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'cpkAXksLlw3jSd1Z' \
    > test.out 2>&1
eval_tap $? 228 'AdminUpdateAdminRoleStatusV3' test.out

#- 229 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'oXPvIczwgYDTr6Gp' \
    > test.out 2>&1
eval_tap $? 229 'AdminRemoveRoleAdminV3' test.out

#- 230 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'fnKQSrNFiQCcrY0S' \
    --after 'CLL02UjxCEudYdGN' \
    --before '3q7zWBHJWFcaFOKg' \
    --limit '75' \
    > test.out 2>&1
eval_tap $? 230 'AdminGetRoleManagersV3' test.out

#- 231 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'xI7YmtBnVxk7ZfVr' \
    --body '{"managers": [{"displayName": "csWx6cSXQPxEjS6E", "namespace": "zaQmGCxjCphJMTKv", "userId": "n9vqj1nux7UOu4K8"}, {"displayName": "TFsZ6hoMfdjPFvl6", "namespace": "7lgylDXIh6Lu8Men", "userId": "NpkO1Q4z60VUlJPo"}, {"displayName": "zSoGLToJWrVR8YOx", "namespace": "0xaFFQaNbTr1CQo5", "userId": "K1AVbDPbrzm5c753"}]}' \
    > test.out 2>&1
eval_tap $? 231 'AdminAddRoleManagersV3' test.out

#- 232 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId '7ITzwDOyqKQOVdfE' \
    --body '{"managers": [{"displayName": "jZ4PbT4oF47KWjdW", "namespace": "HjjeQ5Zk25z5E0PB", "userId": "CCeU73dbbeFaFptN"}, {"displayName": "G9uV4xgZiElUZGQc", "namespace": "CtYk3wHl9vGv1LhD", "userId": "uIpm35mpSRZisMaK"}, {"displayName": "3JCSXkZjS6rYyn0m", "namespace": "x9AwNlfonzW2KMWD", "userId": "6iffyHIXT2eZMF25"}]}' \
    > test.out 2>&1
eval_tap $? 232 'AdminRemoveRoleManagersV3' test.out

#- 233 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'PmOlx2OL7ONg440m' \
    --after '8xaQLoSRL8482Qji' \
    --before 'scAHxp6I8LERDSRX' \
    --limit '44' \
    > test.out 2>&1
eval_tap $? 233 'AdminGetRoleMembersV3' test.out

#- 234 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'hV3YXcjtvfBP0GYU' \
    --body '{"members": [{"displayName": "ZeHnzMtKCpgZQy5y", "namespace": "T10RMX5ytlc2RMvM", "userId": "tdC13No24TZGIOFQ"}, {"displayName": "GYLXlFvMFbi1rSEL", "namespace": "jTDQjteW0OdjzE1N", "userId": "WRqhQBWcMHgrvmfL"}, {"displayName": "TpWIMc3P7qlWeAs7", "namespace": "2aEuoSmWcFCdPgUE", "userId": "xQq0TJoei5kIVod9"}]}' \
    > test.out 2>&1
eval_tap $? 234 'AdminAddRoleMembersV3' test.out

#- 235 AdminRemoveRoleMembersV3
eval_tap 0 235 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 236 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'r9xQTxAu0mQfx8c2' \
    --body '{"permissions": [{"action": 73, "resource": "gdpDU9QXwb9XOMas", "schedAction": 14, "schedCron": "ZCElPX6Ztmo5ZLHt", "schedRange": ["x8etGPNSzecjCpej", "G5VCdkQFSZfUUrYC", "KsvHJVtGin8DiwAK"]}, {"action": 58, "resource": "BXrcZbVFEIqGcAWJ", "schedAction": 71, "schedCron": "z41dj9wawSnarbc1", "schedRange": ["hQ1p5SDZs8WTAIF1", "0Tc7W6kFWoq7lxpb", "pPBvacl2Swd0pRld"]}, {"action": 92, "resource": "I1n8nb7T9sPnKprs", "schedAction": 49, "schedCron": "NdhbcguKQ1PNSUCE", "schedRange": ["FOZdfsqX5TtRyjGE", "y2SGhUc85QgKdXhi", "2XGMyRaeuYVUFlpa"]}]}' \
    > test.out 2>&1
eval_tap $? 236 'AdminUpdateRolePermissionsV3' test.out

#- 237 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId '8VgRomR69KOtAxoV' \
    --body '{"permissions": [{"action": 64, "resource": "TnggGOLNAeiZul74", "schedAction": 5, "schedCron": "Sw5tk11qtK77Xi9I", "schedRange": ["Ged0dbJJowQ814V2", "QYxSNbrxi1psTZ4b", "S5G85EamkXrmbH15"]}, {"action": 20, "resource": "1oVkEKSCegksE4IP", "schedAction": 26, "schedCron": "4Xp4H9y6pYkunu81", "schedRange": ["GIeTkjmKljTXOXK4", "fpt5oI5TSHqE2y5x", "wFW4NvSOJpMOP0m0"]}, {"action": 48, "resource": "Wln0L9KTn5D9RBrn", "schedAction": 25, "schedCron": "SXDFJss0zp0y6n8i", "schedRange": ["CKptHPM23jeMZKYh", "v3wt18yGBEcD4zaD", "6lbHEcJZNVADXIPn"]}]}' \
    > test.out 2>&1
eval_tap $? 237 'AdminAddRolePermissionsV3' test.out

#- 238 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'DAMaTYbJATAtolmw' \
    --body '["LXFdYUEsH4fJcicC", "Ywb1IFRuONHnOeGm", "wCshm8fGFuxIkplh"]' \
    > test.out 2>&1
eval_tap $? 238 'AdminDeleteRolePermissionsV3' test.out

#- 239 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '97' \
    --resource 'ak5nIuBapPDPJTv2' \
    --roleId 'yuzbPvO3PeN2Otdh' \
    > test.out 2>&1
eval_tap $? 239 'AdminDeleteRolePermissionV3' test.out

#- 240 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 240 'AdminGetMyUserV3' test.out

#- 241 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'yFv2tdKrjUsuITix' \
    --extendExp 'false' \
    --redirectUri 'V46DdsCiBjsGLlvA' \
    --password 'Iw0VfFXQcBNXY0KX' \
    --requestId 'qKCEd3jawGZaYlov' \
    --userName 'MYNlnRuT1uNu43ig' \
    > test.out 2>&1
eval_tap $? 241 'UserAuthenticationV3' test.out

#- 242 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'peO9ATb75SNNJzFC' \
    --linkingToken 'rlqGoZnUYyiNOleF' \
    --password 'uhmfRfQnXOBlNU5z' \
    --username 'Q8OsOO0ii2jkxnn5' \
    > test.out 2>&1
eval_tap $? 242 'AuthenticationWithPlatformLinkV3' test.out

#- 243 AuthenticateAndLinkForwardV3
samples/cli/sample-apps Iam authenticateAndLinkForwardV3 \
    --extendExp 'true' \
    --clientId 'QRWWuj7F9BJPNsLj' \
    --linkingToken 'WgGVAAmAIxtWojtC' \
    --password '1kAvxCKe1wzMFgR9' \
    --username 'F1liBLjGclWr3sQ2' \
    > test.out 2>&1
eval_tap $? 243 'AuthenticateAndLinkForwardV3' test.out

#- 244 PublicGetSystemConfigV3
samples/cli/sample-apps Iam publicGetSystemConfigV3 \
    > test.out 2>&1
eval_tap $? 244 'PublicGetSystemConfigV3' test.out

#- 245 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'ZXkDnXAVOB2C8fA7' \
    --extendExp 'false' \
    --linkingToken 'rNS8V4uFY9tnVaZE' \
    > test.out 2>&1
eval_tap $? 245 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 246 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --redirectUri 'DT0WYgWVqrFpj2Xs' \
    --state 'MwtDK6BeZJSxYLGf' \
    --platformId 'quddIgZfWNSL8QSk' \
    > test.out 2>&1
eval_tap $? 246 'RequestOneTimeLinkingCodeV3' test.out

#- 247 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'ujWBfFq0UNSHsO4E' \
    > test.out 2>&1
eval_tap $? 247 'ValidateOneTimeLinkingCodeV3' test.out

#- 248 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'HC4tAs3bUDN5FJzz' \
    --isTransient 'true' \
    --clientId 'zaKyfmjXF4MzVgSi' \
    --oneTimeLinkCode 'ovlRgOI3Xxf8lvpS' \
    > test.out 2>&1
eval_tap $? 248 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 249 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 249 'GetCountryLocationV3' test.out

#- 250 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 250 'Logout' test.out

#- 251 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --codeChallenge 'jPQrmrzIplVrUomr' \
    --codeChallengeMethod 'plain' \
    --clientId 'kWvR99Thy07YYb8c' \
    > test.out 2>&1
eval_tap $? 251 'RequestTokenExchangeCodeV3' test.out

#- 252 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZW3PhfLgERYPKB7R' \
    --userId 'WcUerNlvhJbRGU7V' \
    --platformUserId '3bTPcg7nZni1IKQU' \
    > test.out 2>&1
eval_tap $? 252 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 253 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dHoIVoqsJW5Rtr3Z' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 253 'RevokeUserV3' test.out

#- 254 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --blockedPlatformId '3iuJKcQh01tey1qU' \
    --codeChallenge 'b77QED0RdVvJ3ogS' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'true' \
    --loginWebBased 'false' \
    --nonce 'iLVrpI9yyfTSFtyG' \
    --oneTimeLinkCode 'HINgXaZQuONhtXA6' \
    --redirectUri 'IsD6MNdo28I9cCse' \
    --scope 'Pc1iuGfQduL7vPWp' \
    --state 'eU8m7hTN6UkejOKG' \
    --targetAuthPage '3QrG1O3Ifaeny0bn' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'x2CFXiEHV15McbB2' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 254 'AuthorizeV3' test.out

#- 255 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'v5NUNuvWSCkaniDZ' \
    > test.out 2>&1
eval_tap $? 255 'TokenIntrospectionV3' test.out

#- 256 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 256 'GetJWKSV3' test.out

#- 257 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'toCpPxDbENcA4cAp' \
    --factor 'Tnk5nngpScrloVkC' \
    --mfaToken 'ixBCE8yc0woiQSPR' \
    > test.out 2>&1
eval_tap $? 257 'SendMFAAuthenticationCode' test.out

#- 258 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'SzdLz94kZEr1KR0e' \
    --mfaToken 'wL6cdTqNjAY9bb90' \
    > test.out 2>&1
eval_tap $? 258 'Change2faMethod' test.out

#- 259 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'EC6bGD8bwTMTyUqX' \
    --factor 'MbKWlgJshcNU2zwa' \
    --mfaToken 'slKZq0V7OPIkNcCt' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 259 'Verify2faCode' test.out

#- 260 Verify2faCodeForward
samples/cli/sample-apps Iam verify2faCodeForward \
    --defaultFactor 'BFcRRywSg4vivaUa' \
    --factors 'WMO9UBlkKq8FVQw6' \
    --rememberDevice 'false' \
    --clientId 'WVm9cyGtJUbWKuqK' \
    --code 'MWlbC0xyk1TY3XIU' \
    --factor 'nxWXrDlrVPiwotlV' \
    --mfaToken 'g2Sl3iTjJT9rcIyj' \
    > test.out 2>&1
eval_tap $? 260 'Verify2faCodeForward' test.out

#- 261 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'reEcg9wCDygqabJO' \
    --userId 'USalQa9RLDssl3rg' \
    > test.out 2>&1
eval_tap $? 261 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 262 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'EJ2W5RTfsPOOmWGi' \
    --clientId 'VGcv6a1W2D7X3YIR' \
    --redirectUri '1s4ekSDZ4PnnhPxK' \
    --requestId 'tfKaI0ZUYVPfBKEB' \
    > test.out 2>&1
eval_tap $? 262 'AuthCodeRequestV3' test.out

#- 263 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId '8QWDdIQIyGKWCdwN' \
    --additionalData 'mgz8Nwpo477otSVc' \
    --clientId 'tjUssVlgqVkwY9I8' \
    --createHeadless 'false' \
    --deviceId 'LM50f1gAUbd9oblZ' \
    --macAddress 'lHDN4mN219QbhjO8' \
    --platformToken '2WBZxa5sg9EQ9qCd' \
    --serviceLabel '0.4445958821345405' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 263 'PlatformTokenGrantV3' test.out

#- 264 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 264 'GetRevocationListV3' test.out

#- 265 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'y3OEXCRNmKtjAl3c' \
    > test.out 2>&1
eval_tap $? 265 'TokenRevocationV3' test.out

#- 266 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'SsUQbTKKTXCpA6Sd' \
    --simultaneousTicket 'AtG0XsdIj3O0EeWN' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'FkprSAsLj6byqu7y' \
    > test.out 2>&1
eval_tap $? 266 'SimultaneousLoginV3' test.out

#- 267 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'N0ZgcxUwdo7WgFPq' \
    --clientId 'x46lXaxPKKzwSEve' \
    --clientSecret 'TaGIxvU633x1mn2Z' \
    --code 'P1AOYqqyWLbWGfdk' \
    --codeVerifier 'gCScJh8LrJvtzFzD' \
    --extendNamespace 'OmB0B669o0IL7TRa' \
    --extendExp 'false' \
    --password 'CTZzz6PhEv3i4B7e' \
    --redirectUri '4oSJbj5MYMJ84Jrt' \
    --refreshToken '6vHZ2QiufXEkuQyZ' \
    --scope 'Qxniol4BCmwi4yuK' \
    --username '0k1JYgjp2X1QYCEi' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 267 'TokenGrantV3' test.out

#- 268 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token '4gCsZUX1sSpiS7RP' \
    > test.out 2>&1
eval_tap $? 268 'VerifyTokenV3' test.out

#- 269 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'IuJmjyYsRmlUuZSI' \
    --code 'Bph50NVx5Az0UOE6' \
    --error 'rgrHuVVWIFe6wkk6' \
    --openidAssocHandle 'e3w5zvGYEJpfBgH6' \
    --openidClaimedId 'uMJAYDKQmLy4Twjg' \
    --openidIdentity 'Wh5yGGNt3INvI5al' \
    --openidMode 'YuH2cEHvpCbb2v2E' \
    --openidNs 'ihD3CS5NRLn8Y1Ta' \
    --openidOpEndpoint 'snfAY308bnKTodWW' \
    --openidResponseNonce 'LyUCtG0cBVlVyggM' \
    --openidReturnTo '82HDUu7mqU5vIKeZ' \
    --openidSig 'BdPQXkdO9Fe3O3A9' \
    --openidSigned 'kTWZUBXhrrmuRZwL' \
    --state 'ey0qiGDDcXf15HJd' \
    > test.out 2>&1
eval_tap $? 269 'PlatformAuthenticationV3' test.out

#- 270 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'Jw3nWMLivbBlYfyF' \
    --platformToken 'FnW1p7y1DKv0bo4c' \
    > test.out 2>&1
eval_tap $? 270 'PlatformTokenRefreshV3' test.out

#- 271 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'TeMwyTksym6mcBQE' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetInputValidations' test.out

#- 272 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'VIoYtJxn80Ou1Mos' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetInputValidationByField' test.out

#- 273 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'hzfUToAauYEuYzZs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 273 'PublicGetCountryAgeRestrictionV3' test.out

#- 274 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'TQeVwaozoMWp3FQQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 274 'PublicGetConfigValueV3' test.out

#- 275 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 275 'PublicGetCountryListV3' test.out

#- 276 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 276 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 277 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'qtjpUUzDsxoNZF9U' \
    > test.out 2>&1
eval_tap $? 277 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 278 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 278 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 279 PublicGetUserByPlatformUserIDV3
eval_tap 0 279 'PublicGetUserByPlatformUserIDV3 # SKIP deprecated' test.out

#- 280 PublicGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam publicGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'dob' \
    > test.out 2>&1
eval_tap $? 280 'PublicGetProfileUpdateStrategyV3' test.out

#- 281 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'x2Ens3zIoOiCUOE1' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetAsyncStatus' test.out

#- 282 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'rAzIJQMUASY4V0yk' \
    --limit '59' \
    --offset '55' \
    --platformBy 'VBKYn4OswDuWvMDh' \
    --platformId 'ADyw2y8DIXfHZENz' \
    --query 'WBWZCPxgqUwy5w8g' \
    > test.out 2>&1
eval_tap $? 282 'PublicSearchUserV3' test.out

#- 283 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "nBNEErm0HeC1V52s", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "zz0cYXS07vvj6D9I", "policyId": "fegKO71fBLxndKOP", "policyVersionId": "YkrZO8uNuaLCCfvL"}, {"isAccepted": true, "localizedPolicyVersionId": "vJIS4OMPsCIjuSAe", "policyId": "afsDD7nrbVgc1nw4", "policyVersionId": "aWsvkj801YvvLfwT"}, {"isAccepted": false, "localizedPolicyVersionId": "hCOFGaT0VSanq8J0", "policyId": "I8y0VZAANlRCVhOh", "policyVersionId": "zZJ0xAceCJxDg5oS"}], "authType": "W0QNQ9bGjqLCrKMd", "code": "JERPYCUmHe9ZfDYf", "country": "POELBzJvPpVjhNT8", "dateOfBirth": "dN7Y0qWFTLRXjveE", "displayName": "T3sDPvCwXmezMb4d", "emailAddress": "BG2DKKQFSoCVrNeB", "password": "yl3NdBfi04HzMEqq", "reachMinimumAge": false, "uniqueDisplayName": "4Xl26JkQWklq7SZz"}' \
    > test.out 2>&1
eval_tap $? 283 'PublicCreateUserV3' test.out

#- 284 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'CWneHh3gsBusWjY8' \
    --query 'yNCSsWMQO73Jduta' \
    > test.out 2>&1
eval_tap $? 284 'CheckUserAvailability' test.out

#- 285 PublicBulkGetUsers
eval_tap 0 285 'PublicBulkGetUsers # SKIP deprecated' test.out

#- 286 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "fl4LKCyxn3bFy7ui", "languageTag": "WcnneCmeRfoXnqk6"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicSendRegistrationCode' test.out

#- 287 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "lWIkvXy04wNYv4II", "emailAddress": "6CGIBnuKhjzLawAo"}' \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyRegistrationCode' test.out

#- 288 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "kn4ns9jE4AOMBtxh", "languageTag": "CQE4bDZ7SfiBoSeW"}' \
    > test.out 2>&1
eval_tap $? 288 'PublicForgotPasswordV3' test.out

#- 289 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "QeWr5sQgTj240HmB", "password": "FijQ6AWm3pnN2N5M", "uniqueDisplayName": "7NDajgIplexgBFKs", "username": "CRK5o1n0gAH7q2DO"}' \
    > test.out 2>&1
eval_tap $? 289 'PublicValidateUserInput' test.out

#- 290 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'qAHIWi9mP3wObqNm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'GetAdminInvitationV3' test.out

#- 291 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'S0pdiSHnge9by7dM' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "A70NxQDG4Dc8pXlN", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "fQVUNrrO81b8QSW0", "policyId": "Y2tPHDpHIRqSi2HV", "policyVersionId": "dnnzUPiKu2Hkht6H"}, {"isAccepted": false, "localizedPolicyVersionId": "4dXsOoIrJkM8Ez9T", "policyId": "ye4OyxXDBgPIIzvu", "policyVersionId": "aJdTgcCTHlIJ6M0i"}, {"isAccepted": false, "localizedPolicyVersionId": "nk50fxu0GXWD8YtH", "policyId": "c4KFwS5EbE7I7QIX", "policyVersionId": "GLu1eNN7CbyXuAgy"}], "authType": "CFG9w9jaJVWMbomi", "code": "vQaLdCYxCoXelIEd", "country": "s9WqSeYqMHZiNsJz", "dateOfBirth": "n03Kk4dSc62tsn1w", "displayName": "kRruTjcKWaS2k9f9", "emailAddress": "TGKxdbdBNRi6RnUa", "password": "LLyU4IVvp0ca8C0k", "reachMinimumAge": true, "uniqueDisplayName": "TVO2yDJJi5NwIu0I"}' \
    > test.out 2>&1
eval_tap $? 291 'CreateUserFromInvitationV3' test.out

#- 292 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "XZXtog17cysSpg7w", "country": "lXxB1e3N9rxr0KRN", "dateOfBirth": "nxfhvhrKntUpgMqe", "displayName": "kSrNkqO4zFPMH6J1", "languageTag": "v4WlNWdnx2dmLPzR", "uniqueDisplayName": "DUDcZkSmhY7yDfPK", "userName": "KaZMWnWAVty5bQqs"}' \
    > test.out 2>&1
eval_tap $? 292 'UpdateUserV3' test.out

#- 293 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "kImnjpH8N9hvDMLz", "country": "mw8IUBesp8wovBks", "dateOfBirth": "6msS6x0s41qWQkjf", "displayName": "eMFA6vGAwTFn9o1e", "languageTag": "NSUjxqDwPINsXDYl", "uniqueDisplayName": "1vRy2Su4XyLqHJ2f", "userName": "8C391C8wrP7AXkYN"}' \
    > test.out 2>&1
eval_tap $? 293 'PublicPartialUpdateUserV3' test.out

#- 294 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "nEpXa4fOk9nvbAnK", "emailAddress": "abzvaJHCc5Ah8BKJ", "languageTag": "JM90V7gYQHIetCdN", "upgradeToken": "cPqC1NQgUKSvJIZg"}' \
    > test.out 2>&1
eval_tap $? 294 'PublicSendVerificationCodeV3' test.out

#- 295 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "AJ9taqZk20ZMWxKP", "contactType": "N4tbV8EwgHIqy3Y9", "languageTag": "Ue1GIAgBqmzy19VV", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 295 'PublicUserVerificationV3' test.out

#- 296 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ybfiOqN2feoODqr2", "country": "5trQwvlIGuaVpsUt", "dateOfBirth": "FM5DczpAsKFshRrb", "displayName": "kCCwoJiPSc1BIqyp", "emailAddress": "2JLj7fjjKc2vasAV", "password": "j6F2b7ZNwvyBFDkR", "uniqueDisplayName": "JSyaO55WsrrcQ5DZ", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 296 'PublicUpgradeHeadlessAccountV3' test.out

#- 297 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "lXY7KlM4k6ZBKLzF", "password": "9BkeO1gW2lO5JhaS"}' \
    > test.out 2>&1
eval_tap $? 297 'PublicVerifyHeadlessAccountV3' test.out

#- 298 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "V0pu8AAyT5TJMHwz", "mfaToken": "2ekPOfmWfZqYyvF3", "newPassword": "wbPkAyjAPeT3pgDn", "oldPassword": "NG2NlRQIgJeEyoZ3"}' \
    > test.out 2>&1
eval_tap $? 298 'PublicUpdatePasswordV3' test.out

#- 299 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'CxGsCsPb3Ce8FwMk' \
    > test.out 2>&1
eval_tap $? 299 'PublicCreateJusticeUser' test.out

#- 300 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'pX8U670WyJdefTEo' \
    --redirectUri 'kaUiyMbTsY7Rz1Ex' \
    --ticket 'F4wzJ2Y6G5I3stoh' \
    > test.out 2>&1
eval_tap $? 300 'PublicPlatformLinkV3' test.out

#- 301 PublicPlatformUnlinkV3
eval_tap 0 301 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 302 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'PaAiD2YS81BwQrDP' \
    > test.out 2>&1
eval_tap $? 302 'PublicPlatformUnlinkAllV3' test.out

#- 303 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Qy6oUyHRx26Gn8Cq' \
    --ticket 'ZI8ZNbdmreqvDZX3' \
    > test.out 2>&1
eval_tap $? 303 'PublicForcePlatformLinkV3' test.out

#- 304 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId '1UerkbpkAYIkrXAx' \
    --clientId 'RNCXwBpDxdhLq4j1' \
    --redirectUri 'P7tKT9EPRU3Wbnzj' \
    > test.out 2>&1
eval_tap $? 304 'PublicWebLinkPlatform' test.out

#- 305 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'sJ4DANEfsCXFSkIa' \
    --code 'DohUjTBlXWM9xMIV' \
    --state 'KdVGUMPGHVMI9LFw' \
    > test.out 2>&1
eval_tap $? 305 'PublicWebLinkPlatformEstablish' test.out

#- 306 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9MDtrtM7wkdc6aLz' \
    --code 'X3nw0U6UZQl4DF2Y' \
    --state 'nDs5k64I8gQgG4H6' \
    > test.out 2>&1
eval_tap $? 306 'PublicProcessWebLinkPlatformV3' test.out

#- 307 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "f26F4Gv8ogZslFje", "userIds": ["K08DGwsHASvVSQRn", "1jhuFWlMzuQ38zsc", "I9XGgxCsjnx0C9J6"]}' \
    > test.out 2>&1
eval_tap $? 307 'PublicGetUsersPlatformInfosV3' test.out

#- 308 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "EFkBXzMN66Nbh2KY", "code": "MwsKmnkaMfsHRGn4", "emailAddress": "IeGOJIiYBKaQyaBL", "languageTag": "8JLBzYahfZfoZRVd", "newPassword": "L3ThH7XRK44IuAvY"}' \
    > test.out 2>&1
eval_tap $? 308 'ResetPasswordV3' test.out

#- 309 PublicGetUserByUserIdV3
eval_tap 0 309 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 310 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'GXgz9EYL2jNoxwv5' \
    --activeOnly 'false' \
    --after 'G0esScpRLeTkhLUf' \
    --before 'NTdrG74L0vDE0wdI' \
    --limit '57' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetUserBanHistoryV3' test.out

#- 311 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FZDh0K87hPTp9Qve' \
    > test.out 2>&1
eval_tap $? 311 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 312 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VqQWAPSBLBflQrwB' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetUserInformationV3' test.out

#- 313 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'i2RDmpwVauVGGPWt' \
    --after '0.6621601924260091' \
    --before '0.5976837896210753' \
    --limit '79' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetUserLoginHistoriesV3' test.out

#- 314 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '4hh0aaEBFu63KwUc' \
    --after '8kcU8NoXHi18dMLG' \
    --before 'k1DIC047de9DSgzq' \
    --limit '61' \
    --platformId '7VR4uGCac3Q7XolD' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetUserPlatformAccountsV3' test.out

#- 315 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'S9Rgs5938NtGeVip' \
    > test.out 2>&1
eval_tap $? 315 'PublicListJusticePlatformAccountsV3' test.out

#- 316 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'uJjdpztrX1V6Dd6q' \
    --body '{"platformId": "xMHQdaVEbBq1RauS", "platformUserId": "hjDEDtH4oE6CMPVd"}' \
    > test.out 2>&1
eval_tap $? 316 'PublicLinkPlatformAccount' test.out

#- 317 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'nQrCG6jhRzbDxHk5' \
    --body '{"chosenNamespaces": ["DKRGLXb3VC1yLivy", "Kh4pAurlkXrfC0a4", "x3uSrIwZ949POqVL"], "requestId": "hjnagBCdicGLHG85"}' \
    > test.out 2>&1
eval_tap $? 317 'PublicForceLinkPlatformWithProgression' test.out

#- 318 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '8et0qTd6dZHHb4DW' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetPublisherUserV3' test.out

#- 319 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CcDRcFrelQyulhn5' \
    --password 'rULqcXhnEspnuCCx' \
    > test.out 2>&1
eval_tap $? 319 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 320 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'mOi7kdG55Fvt3UAK' \
    --before 'gCGwns0ANOvj18K3' \
    --isWildcard 'true' \
    --limit '52' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetRolesV3' test.out

#- 321 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'Bx0vJottFkxz2xwY' \
    > test.out 2>&1
eval_tap $? 321 'PublicGetRoleV3' test.out

#- 322 PublicForgotPasswordWithoutNamespaceV3
samples/cli/sample-apps Iam publicForgotPasswordWithoutNamespaceV3 \
    --body '{"clientId": "DyNWcQXQ4wZExYxX", "emailAddress": "JgcrIchOBRbYgDnL", "languageTag": "2cGnmTaPf4l0fw8w"}' \
    > test.out 2>&1
eval_tap $? 322 'PublicForgotPasswordWithoutNamespaceV3' test.out

#- 323 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'false' \
    > test.out 2>&1
eval_tap $? 323 'PublicGetMyUserV3' test.out

#- 324 PublicSendCodeForwardV3
samples/cli/sample-apps Iam publicSendCodeForwardV3 \
    --body '{"context": "q9JhzqIa6hBsF6fB", "emailAddress": "rGT2fyqBJP84390L", "languageTag": "pacNQh2IV3vPKKuG", "upgradeToken": "wDos8uRZtdXrbfIz"}' \
    > test.out 2>&1
eval_tap $? 324 'PublicSendCodeForwardV3' test.out

#- 325 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode '4NHTcyALxagF0HRJ' \
    > test.out 2>&1
eval_tap $? 325 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 326 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["rcYmcWUcVre341Hy", "F0TFUczwT3xbdtYE", "Uii3pdsLaoZsfTc5"], "oneTimeLinkCode": "VgzdTi2yBfbvJyYt"}' \
    > test.out 2>&1
eval_tap $? 326 'LinkHeadlessAccountToMyAccountV3' test.out

#- 327 PublicGetMyRedirectionAfterLinkV3
samples/cli/sample-apps Iam publicGetMyRedirectionAfterLinkV3 \
    --oneTimeLinkCode 'coimWX0vuwNFA0QI' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetMyRedirectionAfterLinkV3' test.out

#- 328 PublicGetMyProfileAllowUpdateStatusV3
samples/cli/sample-apps Iam publicGetMyProfileAllowUpdateStatusV3 \
    > test.out 2>&1
eval_tap $? 328 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 329 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "nhrn78kGQASa4dus"}' \
    > test.out 2>&1
eval_tap $? 329 'PublicSendVerificationLinkV3' test.out

#- 330 PublicGetOpenidUserInfoV3
samples/cli/sample-apps Iam publicGetOpenidUserInfoV3 \
    > test.out 2>&1
eval_tap $? 330 'PublicGetOpenidUserInfoV3' test.out

#- 331 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'riiq6OwF2azpWeye' \
    > test.out 2>&1
eval_tap $? 331 'PublicVerifyUserByLinkV3' test.out

#- 332 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'kABQaSGFGVrqOZDI' \
    --code 'XanAOmX7HK3vc5LM' \
    --error 'pEIB56CaBhMVsfrW' \
    --state 'pF9v9gvrpS6tUcC3' \
    > test.out 2>&1
eval_tap $? 332 'PlatformAuthenticateSAMLV3Handler' test.out

#- 333 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'rIKmMEwZKClb75Oa' \
    --payload 'JiJX33rIQc4z0eep' \
    > test.out 2>&1
eval_tap $? 333 'LoginSSOClient' test.out

#- 334 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'eOD5J4iFs92PaeCG' \
    > test.out 2>&1
eval_tap $? 334 'LogoutSSOClient' test.out

#- 335 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'kaQAmaZmFzZHxUtR' \
    --code '2HIwCdzMkDjLSzUx' \
    > test.out 2>&1
eval_tap $? 335 'RequestTargetTokenResponseV3' test.out

#- 336 UpgradeAndAuthenticateForwardV3
samples/cli/sample-apps Iam upgradeAndAuthenticateForwardV3 \
    --clientId 'B9wgf56yFTBisGcU' \
    --upgradeSuccessToken '3IyS4GlceaDnbIJX' \
    > test.out 2>&1
eval_tap $? 336 'UpgradeAndAuthenticateForwardV3' test.out

#- 337 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '37' \
    --namespace 'hOFaa5EjDItakG1y' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 337 'AdminListInvitationHistoriesV4' test.out

#- 338 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '4G8vW0kEwWeyG2H9' \
    > test.out 2>&1
eval_tap $? 338 'AdminGetDevicesByUserV4' test.out

#- 339 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType '3b44O3wjM1Lv8kki' \
    --endDate '0geNHsrs19DRBmV3' \
    --limit '12' \
    --offset '82' \
    --startDate '5obPG1koELa4swl2' \
    > test.out 2>&1
eval_tap $? 339 'AdminGetBannedDevicesV4' test.out

#- 340 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'XkaN0hFAUDosVK05' \
    > test.out 2>&1
eval_tap $? 340 'AdminGetUserDeviceBansV4' test.out

#- 341 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "E0u2C5Q444EzvPad", "deviceId": "thQT5Raeob4CfIuU", "deviceType": "rm8JxBTzdhSihg4v", "enabled": false, "endDate": "yHTdEzPFfBymZRci", "ext": {"9hsdMdSmQe4vQmi9": {}, "MDEX90F2KQ2LFFrt": {}, "AK6EGyGIhTGQmIhi": {}}, "reason": "XKFcOuc0OhSdf8u9"}' \
    > test.out 2>&1
eval_tap $? 341 'AdminBanDeviceV4' test.out

#- 342 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'cLOGg9mxCgDnPIjb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'AdminGetDeviceBanV4' test.out

#- 343 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'Zy0hxXKQFOkWP1sy' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 343 'AdminUpdateDeviceBanV4' test.out

#- 344 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate '77loBZRCpzs5g7lD' \
    --startDate 'mNGp8r3vhdiZNUuB' \
    --deviceType '4re5vxyfRKf82hjY' \
    > test.out 2>&1
eval_tap $? 344 'AdminGenerateReportV4' test.out

#- 345 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 345 'AdminGetDeviceTypesV4' test.out

#- 346 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'XLtoK6m1tRQTg5Yu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 346 'AdminGetDeviceBansV4' test.out

#- 347 AdminDecryptDeviceV4
eval_tap 0 347 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 348 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'QvKv7eWE2hMssuw6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'AdminUnbanDeviceV4' test.out

#- 349 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId '16vEhID0RJnXjNAJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 349 'AdminGetUsersByDeviceV4' test.out

#- 350 AdminGetNamespaceInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 350 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 351 AdminGetNamespaceUserInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceUserInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 351 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 352 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "6JhuVxa8NpAzyuCk", "policyId": "RqSmSHd6hSWZo7xg", "policyVersionId": "MKzUDln3WUBDgYXS"}, {"isAccepted": true, "localizedPolicyVersionId": "HNYT4F5lqbRyF1S4", "policyId": "n8cG2tiSFvoXxI5X", "policyVersionId": "YVI66q53Lrwke3mn"}, {"isAccepted": true, "localizedPolicyVersionId": "PzNNYAiPVBAIJv3j", "policyId": "l7NJBBaGikvxZotx", "policyVersionId": "3Skr3UqQfMp2A0R6"}], "count": 14, "userInfo": {"country": "YYsj2stqPo591Www"}}' \
    > test.out 2>&1
eval_tap $? 352 'AdminCreateTestUsersV4' test.out

#- 353 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "vU2xOdJm1pWXtxWC", "policyId": "iR6rmplEmJJnBlUq", "policyVersionId": "aqaXuSpJZou9AIoE"}, {"isAccepted": false, "localizedPolicyVersionId": "kzANnbA0KXs2U6k6", "policyId": "M5JY89IQrvzBGDiH", "policyVersionId": "38spesrL67eCH3k0"}, {"isAccepted": true, "localizedPolicyVersionId": "AasUusupRLgpV5dK", "policyId": "Umi4mq8KTZi61kCl", "policyVersionId": "RsN84aTfs8ljyFXa"}], "authType": "EMAILPASSWD", "code": "wTic8NVMFw0KAu9u", "country": "aeT3gvjdV4pjtQyr", "dateOfBirth": "4ww6JELYgM0G9sQZ", "displayName": "oQQlEvYQS04uBl8C", "emailAddress": "qqDzEYXMLP74EJhC", "password": "B9j6JAQWyRfbbgbu", "passwordMD5Sum": "f5QP5SnDdbRa3he2", "reachMinimumAge": true, "uniqueDisplayName": "r4iSB1bdPDEUvl3G", "username": "UbKw5llTGB2eY4Dl"}' \
    > test.out 2>&1
eval_tap $? 353 'AdminCreateUserV4' test.out

#- 354 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": false, "userIds": ["PDDo8KWjqUFvcaJc", "riay7HEp1BTRxKjH", "CKEgAvG9V8Cv3hlu"]}' \
    > test.out 2>&1
eval_tap $? 354 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 355 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["O2rYhIyOjYFhrBLh", "SOSIZM7vnNupGqbe", "5LNjkqO7OX8v5OSf"]}' \
    > test.out 2>&1
eval_tap $? 355 'AdminBulkCheckValidUserIDV4' test.out

#- 356 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ACtnfXLfCZhN0qga' \
    --body '{"avatarUrl": "jLZaZyDVWiIjplu9", "country": "1b5SvZMTtsy71UCr", "dateOfBirth": "dTrq0EcQ5nDJNNp7", "displayName": "ZpFfRLxPqEq7JoU6", "languageTag": "1lGDQBj0JMgb3k0N", "skipLoginQueue": true, "tags": ["IVFecrx7LFkJs723", "aXurueLIzUWvjLcO", "mQympJWHBJkWcrgk"], "uniqueDisplayName": "N2cdkNeAgdudP6E8", "userName": "5mpru3LMbsgP85xd"}' \
    > test.out 2>&1
eval_tap $? 356 'AdminUpdateUserV4' test.out

#- 357 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'DiJnCggBoOcJIOQm' \
    --body '{"code": "KZcKZ0Bb0MLjWWWj", "emailAddress": "zI05ArmYMIP9AfXI"}' \
    > test.out 2>&1
eval_tap $? 357 'AdminUpdateUserEmailAddressV4' test.out

#- 358 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'pXvYAGYaDbkgkvD8' \
    --body '{"factor": "aYsa3PADtILVZk6s", "mfaToken": "xtgFkrh68sDPx5rT"}' \
    > test.out 2>&1
eval_tap $? 358 'AdminDisableUserMFAV4' test.out

#- 359 AdminGetUserMFAStatusV4
samples/cli/sample-apps Iam adminGetUserMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    --userId 'fuW8fH77Ni65lqLj' \
    > test.out 2>&1
eval_tap $? 359 'AdminGetUserMFAStatusV4' test.out

#- 360 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'z69ilR9NyAhv6yZM' \
    > test.out 2>&1
eval_tap $? 360 'AdminListUserRolesV4' test.out

#- 361 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '7F6P2X32BVqh3dEH' \
    --body '{"assignedNamespaces": ["htqEYA8TsE8HTVdg", "ealpe10xlDfMD9EB", "qUVzRBslBie40rhH"], "roleId": "R4pPVsmdrGdyuKGb"}' \
    > test.out 2>&1
eval_tap $? 361 'AdminUpdateUserRoleV4' test.out

#- 362 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '0ihEkLV6d8B4wjXc' \
    --body '{"assignedNamespaces": ["FdXk1c1RuSIMqbrw", "P3JBJnnwqy3Z9Zo0", "8P1Do350L4HW6QE5"], "roleId": "MQZZn77B89NjPZuW"}' \
    > test.out 2>&1
eval_tap $? 362 'AdminAddUserRoleV4' test.out

#- 363 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'F1zPrqKwHnb8yoau' \
    --body '{"assignedNamespaces": ["znK8IMQjsUrpJR2H", "jStZDpYWW45O81MU", "RxTlHHbJrZzxf10l"], "roleId": "PKe7bCb0xG4VHFBO"}' \
    > test.out 2>&1
eval_tap $? 363 'AdminRemoveUserRoleV4' test.out

#- 364 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'false' \
    --limit '22' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 364 'AdminGetRolesV4' test.out

#- 365 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "3RMORhAkWF1KVY0H"}' \
    > test.out 2>&1
eval_tap $? 365 'AdminCreateRoleV4' test.out

#- 366 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'XKFszSmXsclvr3zs' \
    > test.out 2>&1
eval_tap $? 366 'AdminGetRoleV4' test.out

#- 367 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'oUejKCvxSnINCmUw' \
    > test.out 2>&1
eval_tap $? 367 'AdminDeleteRoleV4' test.out

#- 368 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'SkQ8It5okKdCVfLF' \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "vkx6YqYoYHRCter6"}' \
    > test.out 2>&1
eval_tap $? 368 'AdminUpdateRoleV4' test.out

#- 369 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId '1Ysp4iDqMAGSiwvT' \
    --body '{"permissions": [{"action": 6, "resource": "4ddWxmc0h7hBE8O0", "schedAction": 92, "schedCron": "YPNzKgHPa7Q5Aens", "schedRange": ["tCFUar02vC8reWZc", "wovxJRl6szRazRbR", "deJuiV8FVHaYURYp"]}, {"action": 63, "resource": "zNyj0V7Ce96DTKBT", "schedAction": 36, "schedCron": "tgBzsYoMdHd1KObh", "schedRange": ["0nCZ34AvKBWT0DOG", "6g9avnpMzj3xv6Bh", "HKRyFO51huQAsCwC"]}, {"action": 95, "resource": "nOuM9kFGZVO4K6BJ", "schedAction": 60, "schedCron": "Zy3tlsh8pkWizF6j", "schedRange": ["KLPFAOVagOimZP9m", "bDo2jVH9nEYw0WM5", "kfT5MpGOO44M9sXU"]}]}' \
    > test.out 2>&1
eval_tap $? 369 'AdminUpdateRolePermissionsV4' test.out

#- 370 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'RYXfjKXbM49mO3nU' \
    --body '{"permissions": [{"action": 64, "resource": "zVQ2XArFgtfBGLLG", "schedAction": 19, "schedCron": "VjHVYYD7gVuMV8MD", "schedRange": ["LszyUjId9Val440Z", "ylYWA9QcG5amjnXi", "yqMrPjulmRJuH7gR"]}, {"action": 30, "resource": "Z3830pkFNYNkrvjF", "schedAction": 27, "schedCron": "3rcDR8O8o7fZ5xo2", "schedRange": ["mCcefxxwUdsLxfTr", "EQMcZ9Sgz55OCCqq", "Bxogbx0nBeTIpAmB"]}, {"action": 48, "resource": "h7h9lSOlgdXjAHUp", "schedAction": 40, "schedCron": "BKbo4luG77g9enIv", "schedRange": ["Q7x5ag4KhyHofBnx", "p7JcVsKnZN23ubYs", "67gJHuHYS4Vai6ae"]}]}' \
    > test.out 2>&1
eval_tap $? 370 'AdminAddRolePermissionsV4' test.out

#- 371 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'dtIiY79cYxeVhB5S' \
    --body '["CtvTAXQ0PMk67vJM", "I0QaKycAqPAHhZNo", "yJkMTxhW25lhH5Ot"]' \
    > test.out 2>&1
eval_tap $? 371 'AdminDeleteRolePermissionsV4' test.out

#- 372 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'akkiyOYtf2LfGG6m' \
    --after 'QdlXVLxnyqkkJYqZ' \
    --before 'OPuP4gtauWJIGeh3' \
    --limit '67' \
    > test.out 2>&1
eval_tap $? 372 'AdminListAssignedUsersV4' test.out

#- 373 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'wce01ocK4g2EpnD1' \
    --body '{"assignedNamespaces": ["jRoo0qCQoN8XV6w9", "7ktWB2WHzsRPOzLu", "OS5iILFePITUQTBb"], "namespace": "zsFy5VDgg3heG0w5", "userId": "dqns6UeQL0Ys92tP"}' \
    > test.out 2>&1
eval_tap $? 373 'AdminAssignUserToRoleV4' test.out

#- 374 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'nD0GcBK5WyVgpFyL' \
    --body '{"namespace": "eInzcGlN68EImZgj", "userId": "eDH6JjjqEJeeVjIm"}' \
    > test.out 2>&1
eval_tap $? 374 'AdminRevokeUserFromRoleV4' test.out

#- 375 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["UjRx8hPYVtw4gG8i", "sIAIxwXpUG73sxMn", "oDuuaKdLRRaa67Cg"], "emailAddresses": ["WQIBjovHxRYbmiwl", "mLpQMBJKgD5mJZ6P", "X2CbdZ5knpzJlIBi"], "isAdmin": false, "isNewStudio": true, "languageTag": "h3410vBXbEYIClab", "namespace": "mYPyBiJSVug7ALlA", "roleId": "kUWFrTelZKfNHvyV"}' \
    > test.out 2>&1
eval_tap $? 375 'AdminInviteUserNewV4' test.out

#- 376 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "wGZFR2UgETELFCae", "country": "MdrJa7quEXal37wU", "dateOfBirth": "6d9zvfaDGAqCZmd1", "displayName": "vkBbA7LniSRKhByO", "languageTag": "eC5wlP3GemIOdlp0", "skipLoginQueue": false, "tags": ["ZzvX4fnycpeDRVeh", "jNaKEDR76BhLsy2V", "lqebHURYtMuiayaJ"], "uniqueDisplayName": "Cy5vf0H1CEc8Jvui", "userName": "LlYaeFoV9A5fH6N3"}' \
    > test.out 2>&1
eval_tap $? 376 'AdminUpdateMyUserV4' test.out

#- 377 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"factor": "Iqv0qZ7xACJR0Cfg", "mfaToken": "g4d1Y8zeUWRpYE1L"}' \
    > test.out 2>&1
eval_tap $? 377 'AdminDisableMyAuthenticatorV4' test.out

#- 378 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'Ju62WzZcHWQAKO0d' \
    > test.out 2>&1
eval_tap $? 378 'AdminEnableMyAuthenticatorV4' test.out

#- 379 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 379 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 380 AdminGetMyBackupCodesV4
eval_tap 0 380 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 381 AdminGenerateMyBackupCodesV4
eval_tap 0 381 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 382 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    --body '{"factor": "gSC3FF23oqab6aZu", "mfaToken": "8xV3UDjqyxht3NT9"}' \
    > test.out 2>&1
eval_tap $? 382 'AdminDisableMyBackupCodesV4' test.out

#- 383 AdminDownloadMyBackupCodesV4
eval_tap 0 383 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 384 AdminEnableMyBackupCodesV4
eval_tap 0 384 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 385 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag '58t4W70cF0Xzbo6O' \
    > test.out 2>&1
eval_tap $? 385 'AdminGetBackupCodesV4' test.out

#- 386 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag 'tHpoFTX3RvCsmQjn' \
    > test.out 2>&1
eval_tap $? 386 'AdminGenerateBackupCodesV4' test.out

#- 387 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag 'S72VMEPwSeG3wN0e' \
    > test.out 2>&1
eval_tap $? 387 'AdminEnableBackupCodesV4' test.out

#- 388 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code 'uvfzVanWD61F9ASw' \
    --factor 'M7zcK1SlEcynWIYq' \
    > test.out 2>&1
eval_tap $? 388 'AdminChallengeMyMFAV4' test.out

#- 389 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action 'qYlVGltZ61NJTVbg' \
    --languageTag 'PJJlVmEOc9cSlFGz' \
    > test.out 2>&1
eval_tap $? 389 'AdminSendMyMFAEmailCodeV4' test.out

#- 390 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"factor": "b2NjiliDyBylbwmG", "mfaToken": "iYD5dhpDxqzMG8kO"}' \
    > test.out 2>&1
eval_tap $? 390 'AdminDisableMyEmailV4' test.out

#- 391 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'ZXjKBd5KWP7BzTaT' \
    > test.out 2>&1
eval_tap $? 391 'AdminEnableMyEmailV4' test.out

#- 392 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 392 'AdminGetMyEnabledFactorsV4' test.out

#- 393 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'i00I2SxnS9gYmRX5' \
    > test.out 2>&1
eval_tap $? 393 'AdminMakeFactorMyDefaultV4' test.out

#- 394 AdminGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam adminGetMyOwnMFAStatusV4 \
    > test.out 2>&1
eval_tap $? 394 'AdminGetMyOwnMFAStatusV4' test.out

#- 395 AdminGetMyMFAStatusV4
eval_tap 0 395 'AdminGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 396 AdminInviteUserV4
eval_tap 0 396 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 397 AuthenticationWithPlatformLinkV4
samples/cli/sample-apps Iam authenticationWithPlatformLinkV4 \
    --extendExp 'false' \
    --clientId 'NkbBNbvIbHTI9ndW' \
    --linkingToken '9cKE7atqNmRok9JI' \
    --password '7BbR3kL0oHmy3qNF' \
    --username 'sLDEAG76xaLrKiEM' \
    > test.out 2>&1
eval_tap $? 397 'AuthenticationWithPlatformLinkV4' test.out

#- 398 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'UGvxq5Vw372DPO6m' \
    --extendExp 'false' \
    --linkingToken 'MvwBLPFmo86dfjdk' \
    > test.out 2>&1
eval_tap $? 398 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 399 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'PXYwTOogrp7hIzbr' \
    --factor 'NVBR3HmWZVwdTm0K' \
    --mfaToken 'SHFMHsFhmhInokIn' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 399 'Verify2faCodeV4' test.out

#- 400 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'eCYy1PnoarIy5Kh7' \
    --codeChallenge 'a8EQSQcdyGNPGZcB' \
    --codeChallengeMethod 'plain' \
    --additionalData 'oBPVedFmQSw3TCgi' \
    --clientId 'H0LX0wR6qc4ZSn34' \
    --createHeadless 'false' \
    --deviceId 'UQEHRP9miaklwXNA' \
    --macAddress 'YVH8zTRRY9psFsLl' \
    --platformToken 'hHofVrgqMYiy45IL' \
    --serviceLabel '0.8094896374868112' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 400 'PlatformTokenGrantV4' test.out

#- 401 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'U3IpnE83e7YnYtMF' \
    --codeChallengeMethod 'plain' \
    --simultaneousPlatform '1Me7FKagLnLiAysi' \
    --simultaneousTicket 'J09AvXMelsnCVmZa' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'Wv4u5P7bULEyrotA' \
    > test.out 2>&1
eval_tap $? 401 'SimultaneousLoginV4' test.out

#- 402 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge 'Edag9QzPyT9J6e3K' \
    --codeChallengeMethod 'S256' \
    --additionalData 'p7VUGl9KYgllgn30' \
    --clientId 'yMX5LWnluixldPT4' \
    --clientSecret '0CS5y9MNkPfPnlva' \
    --code 'wVOtiiPOPqR7D2Wb' \
    --codeVerifier 'mDI7s8IWh9o7fRJf' \
    --extendNamespace 'S1Ed92pjqfesMCfv' \
    --extendExp 'true' \
    --loginQueueTicket 'aeOyYgDN6GEOjcxA' \
    --password '01YO8oWwnp4gzlzZ' \
    --redirectUri 'EjnnY5JJXCAhtR4c' \
    --refreshToken 'fIuSo2XIMVjHmyoK' \
    --scope 'BUSpxd81maC1eMkR' \
    --username 'c3ELYVYaSo78570Q' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 402 'TokenGrantV4' test.out

#- 403 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'S7glkAIq1mVGTJbu' \
    --code 'aAMOOx1Wv08S8E35' \
    > test.out 2>&1
eval_tap $? 403 'RequestTargetTokenResponseV4' test.out

#- 404 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId '0YU1pfoW1Z8i0jo4' \
    --rawPUID 'false' \
    --body '{"pidType": "WvCLjNqmi1hGe4s6", "platformUserIds": ["fIW6q7lJ6yhE1iKD", "JArLDBWgLzME2J6X", "t4LuaQNDHweTgOpw"]}' \
    > test.out 2>&1
eval_tap $? 404 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 405 PublicGetUserByPlatformUserIDV4
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'FJ2Zf6SPYl3eS7F0' \
    --platformUserId 'pNfCbmPY6huSI4Wg' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserByPlatformUserIDV4' test.out

#- 406 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "RMka8YT8c2PaSxYA", "policyId": "XgFRpMBeD5xKe6fU", "policyVersionId": "7ONHwy9NS21AcXXN"}, {"isAccepted": false, "localizedPolicyVersionId": "xIzLPTcRaijozQXX", "policyId": "Ittvq0iYzoDA6Uun", "policyVersionId": "zeEn15AuTCxtjaZV"}, {"isAccepted": false, "localizedPolicyVersionId": "CUvur9INNA3vjtzQ", "policyId": "HeoqL7u3fJPYNnS7", "policyVersionId": "DaKWNi1YJVHkXYNZ"}], "authType": "EMAILPASSWD", "country": "B9xCYqldMurbrWYz", "dateOfBirth": "LyYWspVKctV3P1VL", "displayName": "hjC5SsYp97opMoym", "emailAddress": "7o4F1na9Xr0nVYkl", "password": "G4MBxrfnj2630axy", "passwordMD5Sum": "4GFEVx557MlAQeZk", "uniqueDisplayName": "YFGVtTpSGYhzCztp", "username": "l09JnDCfLSTTlPzv", "verified": true}' \
    > test.out 2>&1
eval_tap $? 406 'PublicCreateTestUserV4' test.out

#- 407 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "07k1yuTyUOEeA9oM", "policyId": "8YPWZDJQZiswVNjN", "policyVersionId": "1PTOSdRCL97bR6TL"}, {"isAccepted": false, "localizedPolicyVersionId": "B4bCUXjeoBWjB9ku", "policyId": "pqCnTgrUScC6A007", "policyVersionId": "L0yOYPlhaZ8Tcmq9"}, {"isAccepted": false, "localizedPolicyVersionId": "WyLxqNd9MeMfsfC9", "policyId": "zjrjRroKlKzlONms", "policyVersionId": "bO6MfwjoZtSwqvRd"}], "authType": "EMAILPASSWD", "code": "wyHQTvJqlB4XsoW4", "country": "FZe928ybTzSRENyK", "dateOfBirth": "3IrUsJ00GauGx5UU", "displayName": "xIIKrWvdwjNYBRH8", "emailAddress": "KMWL9VvX7949HRYL", "password": "01tIsgAd6bBQLly4", "passwordMD5Sum": "BksLbVNI7360Rerx", "reachMinimumAge": true, "uniqueDisplayName": "BlugeFbODeUTaNEH", "username": "vvaY8DYmy9G2rKAA"}' \
    > test.out 2>&1
eval_tap $? 407 'PublicCreateUserV4' test.out

#- 408 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'bYE6RWOD5JqcCKNr' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "Mfes83I6Z9JMCTdq", "policyId": "pLJfzcMaLY922vuq", "policyVersionId": "i8DeWGNuMunIQnZ3"}, {"isAccepted": false, "localizedPolicyVersionId": "1hyOHDhERwCMlP6I", "policyId": "an8Kude5Y9appXzE", "policyVersionId": "iwOPM8GDMwebsVkg"}, {"isAccepted": false, "localizedPolicyVersionId": "tIC8O7uaJakukd3r", "policyId": "dQ4Giu0izK9SZMaV", "policyVersionId": "WRyBvycHYeU66u4C"}], "authType": "EMAILPASSWD", "code": "c6UykH2zF0Imp5oE", "country": "I63tvEzImtWIecyW", "dateOfBirth": "wgFOliOJq7XWD5iR", "displayName": "lgO76cVu4ptRjJEz", "emailAddress": "Ei3ILCEgrXK0Zo1w", "password": "n6fivpkPCEZ8Nwf7", "passwordMD5Sum": "jkYw3W3ocXODJrwZ", "reachMinimumAge": true, "uniqueDisplayName": "ZSQXcwx198uA0aEz", "username": "YimcG10AfdmYZAPr"}' \
    > test.out 2>&1
eval_tap $? 408 'CreateUserFromInvitationV4' test.out

#- 409 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "nTn7V9KPG3qtUnMz", "country": "E4ZMcDSAS1mXJyKl", "dateOfBirth": "0VKgMbhZFuSFi8Bm", "displayName": "a1TzkUGG4MfT2FcS", "languageTag": "bTpLF5ztYXfd06sC", "uniqueDisplayName": "gI4Fr0AChugiWenn", "userName": "5XQke27LRd7h5YeK"}' \
    > test.out 2>&1
eval_tap $? 409 'PublicUpdateUserV4' test.out

#- 410 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "EOb7PJdSpksCRhb9", "emailAddress": "fl3OM3zAm8VRkvpc"}' \
    > test.out 2>&1
eval_tap $? 410 'PublicUpdateUserEmailAddressV4' test.out

#- 411 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Auinxge8tubF3dvJ", "country": "QCuVhBnonUR2V1iT", "dateOfBirth": "66Y6Nz3IJG5NUpgJ", "displayName": "xOaQaUqKmx8LijJU", "emailAddress": "xK00R3mmNptzXnRN", "password": "NmB6qZ4SPFxPoZ9O", "reachMinimumAge": false, "uniqueDisplayName": "7i091xQv76oZVJKW", "username": "3OcyjGPn30RikiCL", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 411 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 412 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"dateOfBirth": "AJsNrRxDmmuiEV6h", "displayName": "dwG5TKTo9dmMJk9T", "emailAddress": "Du7ktkEFr3LUZR6i", "password": "f2nh1FaVztpi593j", "uniqueDisplayName": "vBDZDwRKHS3MYnGL", "username": "eZr3e6X35NdW3HwP"}' \
    > test.out 2>&1
eval_tap $? 412 'PublicUpgradeHeadlessAccountV4' test.out

#- 413 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "qIh6k1RoI1fCzCrT", "mfaToken": "KOkm2OtFOSaLnF1b"}' \
    > test.out 2>&1
eval_tap $? 413 'PublicDisableMyAuthenticatorV4' test.out

#- 414 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'MS42mqgkIUFkMSS2' \
    > test.out 2>&1
eval_tap $? 414 'PublicEnableMyAuthenticatorV4' test.out

#- 415 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 415 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 416 PublicGetMyBackupCodesV4
eval_tap 0 416 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 417 PublicGenerateMyBackupCodesV4
eval_tap 0 417 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 418 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "BzexkdWtt8AHx2pl", "mfaToken": "d4coxaycjpKZyyPJ"}' \
    > test.out 2>&1
eval_tap $? 418 'PublicDisableMyBackupCodesV4' test.out

#- 419 PublicDownloadMyBackupCodesV4
eval_tap 0 419 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 420 PublicEnableMyBackupCodesV4
eval_tap 0 420 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 421 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'i7ICgO73Ztc7JpLg' \
    > test.out 2>&1
eval_tap $? 421 'PublicGetBackupCodesV4' test.out

#- 422 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag '5bMQCPa61IkGv2eh' \
    > test.out 2>&1
eval_tap $? 422 'PublicGenerateBackupCodesV4' test.out

#- 423 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'ATFxEFvhtMzdnRwm' \
    > test.out 2>&1
eval_tap $? 423 'PublicEnableBackupCodesV4' test.out

#- 424 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code 'U6d6SDQOnU5ddtMl' \
    --factor 'zloGPDrw4cBpKskj' \
    > test.out 2>&1
eval_tap $? 424 'PublicChallengeMyMFAV4' test.out

#- 425 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 425 'PublicRemoveTrustedDeviceV4' test.out

#- 426 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    --action 'xpWO99J3vIsF7an6' \
    --languageTag 'RbfWbSfK5AnhfFZi' \
    > test.out 2>&1
eval_tap $? 426 'PublicSendMyMFAEmailCodeV4' test.out

#- 427 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "WX5ub5iU5GrMdgxx", "mfaToken": "l2LF5fWZrASlIyRQ"}' \
    > test.out 2>&1
eval_tap $? 427 'PublicDisableMyEmailV4' test.out

#- 428 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code '0ryEG3S02vWFZf1T' \
    > test.out 2>&1
eval_tap $? 428 'PublicEnableMyEmailV4' test.out

#- 429 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 429 'PublicGetMyEnabledFactorsV4' test.out

#- 430 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'yAgNn1v3LKombHGD' \
    > test.out 2>&1
eval_tap $? 430 'PublicMakeFactorMyDefaultV4' test.out

#- 431 PublicGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam publicGetMyOwnMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 431 'PublicGetMyOwnMFAStatusV4' test.out

#- 432 PublicGetMyMFAStatusV4
eval_tap 0 432 'PublicGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 433 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'zBOMBuEeIfdmxtmf' \
    > test.out 2>&1
eval_tap $? 433 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 434 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "85txbyRORez87tR4", "emailAddress": "uKA4U7ufg6TEY5r9", "languageTag": "re76dGb3LHq8OMHr", "namespace": "BKoD1Ea33lVUOCd0", "namespaceDisplayName": "JWNPxkg4aQLv9Ucb"}' \
    > test.out 2>&1
eval_tap $? 434 'PublicInviteUserV4' test.out

#- 435 PublicUpgradeHeadlessWithCodeV4Forward
samples/cli/sample-apps Iam publicUpgradeHeadlessWithCodeV4Forward \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "sEpYum9MfEBlAMLo", "policyId": "it7llhUGHt15xq2B", "policyVersionId": "foujHqonkZxqXvJI"}, {"isAccepted": true, "localizedPolicyVersionId": "26PGuFJF6KJXnm2U", "policyId": "RIUR4ZaCTDHGiWAe", "policyVersionId": "Krlirhxm7haqcf6p"}, {"isAccepted": false, "localizedPolicyVersionId": "8leyX4kWqD7VI2Ef", "policyId": "eeFdCnZ0ga5k50bm", "policyVersionId": "kEvVgGc7N8T6Sbjw"}], "code": "rLCWXvsxlt2zwnrF", "country": "Pkit8avu5x1THEBQ", "dateOfBirth": "p9U1A4BaUgHvG4vA", "displayName": "DsitxvTBogeMPdxQ", "emailAddress": "y12ETapPzXLUg7B8", "password": "FmejBFSV33qGsIOG", "reachMinimumAge": true, "uniqueDisplayName": "fNgdCUnf1Xo4ndIN", "username": "ZmxfwOaScvkt33M1", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 435 'PublicUpgradeHeadlessWithCodeV4Forward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE