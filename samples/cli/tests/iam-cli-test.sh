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
echo "1..432"

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
    --body '{"modules": [{"docLink": "okmxFTYCr5aac98v", "groups": [{"group": "yVbmzkbjtCQPHyGq", "groupId": "tdkdkuqCH6t3CorE", "permissions": [{"allowedActions": [90, 52, 35], "resource": "HAU8j7K8VzI9gIy3"}, {"allowedActions": [44, 1, 27], "resource": "K5yustoNvjRab6p2"}, {"allowedActions": [2, 12, 95], "resource": "EjEtxpLi1xoPMZI8"}]}, {"group": "VKM822nKvbsOAamc", "groupId": "2oBjy9etqfakoLoK", "permissions": [{"allowedActions": [73, 24, 13], "resource": "JyMa6m96u95Nm3BH"}, {"allowedActions": [18, 94, 68], "resource": "m7Ek55Jt1q2pPiRl"}, {"allowedActions": [67, 70, 14], "resource": "tjRtnZlYv03Uhzk2"}]}, {"group": "uZt8SEvvfZz78zBR", "groupId": "SVWwZ1YXr9fE88fs", "permissions": [{"allowedActions": [2, 83, 3], "resource": "OhhVwLX9ZSqWYvy1"}, {"allowedActions": [65, 14, 41], "resource": "BWsomVN5sn8q0y0Q"}, {"allowedActions": [44, 77, 27], "resource": "6D0aLLTXAoNQysbC"}]}], "module": "3BQc3QFbynwgmnyk", "moduleId": "Gixz9QmJJs6slMmh"}, {"docLink": "71g2apjTCFwYr3pC", "groups": [{"group": "hazoXER5GLNiZYrk", "groupId": "OV96I390QrHjzWFQ", "permissions": [{"allowedActions": [82, 32, 24], "resource": "pwf7iKAMA4kEzody"}, {"allowedActions": [75, 29, 48], "resource": "CJdEhWEVriO2sxrl"}, {"allowedActions": [67, 73, 78], "resource": "CKXr0A2Udv11HaAj"}]}, {"group": "CjTy9ZixfnR2mmt9", "groupId": "N61D1RY3zhzaxrGo", "permissions": [{"allowedActions": [19, 18, 20], "resource": "lE1HZQdorW9mG9ax"}, {"allowedActions": [2, 25, 80], "resource": "nwsvT3gmBzfp5PK5"}, {"allowedActions": [90, 40, 35], "resource": "dmRHSluWx2Ve82UM"}]}, {"group": "gPwwwHVbqmVy3XA6", "groupId": "1UkRtY4qFrfyhMaK", "permissions": [{"allowedActions": [23, 96, 54], "resource": "IqqmIEztaEH4h8sZ"}, {"allowedActions": [73, 13, 74], "resource": "6UfzkkR4W3bRGEA6"}, {"allowedActions": [76, 2, 58], "resource": "6xNOLzfbBMMRYJ2O"}]}], "module": "ejSzB2JTuFHdLho5", "moduleId": "Mbn8X6kJFsn1sU1a"}, {"docLink": "5dbrpAolYOcxCW4f", "groups": [{"group": "kw1AcuFjtfPDrgFC", "groupId": "AbrxSkTPeU1285Mt", "permissions": [{"allowedActions": [56, 98, 76], "resource": "bvnJyIXle0bSFxQV"}, {"allowedActions": [48, 86, 46], "resource": "R2lo5I31gxOBJq7B"}, {"allowedActions": [5, 65, 62], "resource": "9vWluV6qT7G73M9v"}]}, {"group": "vyaIUw1aqlJOl7Ag", "groupId": "DLusbdXZEv4c83Ir", "permissions": [{"allowedActions": [67, 48, 87], "resource": "M6LEBR2581TargNg"}, {"allowedActions": [55, 50, 86], "resource": "MwbvHwn51RQMUaXR"}, {"allowedActions": [98, 0, 34], "resource": "XDtTA1yBXtUuwBU1"}]}, {"group": "JauWn9c5UHrqjUXQ", "groupId": "BFAss6bySbR4QME2", "permissions": [{"allowedActions": [37, 22, 66], "resource": "y16M520iSCjtKOU1"}, {"allowedActions": [65, 63, 94], "resource": "oUtsU19nwSKlX5XW"}, {"allowedActions": [51, 62, 95], "resource": "XNhruL6aIi5T5tpb"}]}], "module": "TcAiDq7yJyE65jHK", "moduleId": "KOUVcrN6ytW5304I"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'false' \
    --body '{"groupId": "2ycO4RqefiB5zCR8", "moduleId": "wQZoE6BntE1cr5cR"}' \
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
    --body '[{"field": "5wcSJVbkM8Fu6Vc3", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["VuaJ92Ra9r8jOlL1", "KmliwqMzQ0GPbdDY", "eqQpi4HE9IFzNyDX"], "preferRegex": false, "regex": "ZwO7vb2RpxnUFCgl"}, "blockedWord": ["Dgf0tLtTdbnmRT6e", "BgLmIjC0WltQl5WW", "cAoSOSo1w01HhrRM"], "description": [{"language": "XfP8OBu6lddPemYJ", "message": ["UXe6jGyYkIq0JMvT", "nM7sWtxxWxakF4D1", "Vkr8R97QpImjxdS7"]}, {"language": "wlIFuxS97dTiffRJ", "message": ["2IOmEz9kFlnKKZRY", "QblacIRgZW5E69qa", "YRzMXjNugGweHxLa"]}, {"language": "AsTIKhIOou9iS47A", "message": ["Hi7ooMs7OQpouSKw", "yPRwqnTFGIcJwhSq", "TDfw4XcE7dMtC1wk"]}], "isCustomRegex": false, "letterCase": "8fhya4rVULTyr49f", "maxLength": 25, "maxRepeatingAlphaNum": 32, "maxRepeatingSpecialCharacter": 96, "minCharType": 81, "minLength": 74, "profanityFilter": "1312CFuL0LzhfaWa", "regex": "IdVYiG1RF0nUV44J", "specialCharacterLocation": "aSVHyivgPBNfcEbJ", "specialCharacters": ["mV7RL1UU6LgLxikT", "9HY83PYS5uoqyiEL", "6IWFn8cQTm5b0YdF"]}}, {"field": "rgS34rIa1P9KHEjw", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["JN4uR3G0Qyzz0Oux", "QXzjtiFEnICj0hCX", "n7G1ksUI6qHe3YPE"], "preferRegex": true, "regex": "5NGmqcaU7v5OwToz"}, "blockedWord": ["iivBgfaPgnCCxW2A", "FGLAXWrSh2SCCM2J", "cIbTg3e77yeQD18W"], "description": [{"language": "B6qF4f23qJoZ8IAU", "message": ["qk7F3hrsh7o084D8", "Scg3GLGOis9zLVeS", "0Imu3TuE8MVrl99g"]}, {"language": "nEgfuZNI0htPh7LC", "message": ["nrpSHFqsRoZLj2xx", "ugHhwqbHMvHfyT2e", "exZ3cgGXe5OQSplL"]}, {"language": "MnfwF2TnrTQAuKKE", "message": ["EcHC303XevnXzPfl", "jKvugevUb9MquTHK", "jZjgNoEDWbBxMsvu"]}], "isCustomRegex": false, "letterCase": "aRlbkgXvIubdy2J2", "maxLength": 100, "maxRepeatingAlphaNum": 33, "maxRepeatingSpecialCharacter": 38, "minCharType": 1, "minLength": 9, "profanityFilter": "udiWCZjJdPpQ8rF1", "regex": "yXW6WV9QYaC0biPk", "specialCharacterLocation": "bYCtXreQoSYtoILd", "specialCharacters": ["oqz3DPVirasshOBS", "tYbXLZ0xlVINbXLP", "9TVV7qipP9a1W8Hm"]}}, {"field": "n2Op7gj9htHIv7eG", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["2dLu4zCS5Mk4oiig", "rZrSWzmSmQy1zzG3", "6EHBfMIzWRAPTL5R"], "preferRegex": true, "regex": "rWf6dyJUd1d4RuEe"}, "blockedWord": ["FTLIAlQ6oI2eO0XK", "x5PidylkeFhclY3W", "419KsbVLRRGwJTD8"], "description": [{"language": "0e5UJ2FOUQ1J8yYE", "message": ["GG9X4Wx1RNap5tsp", "s5wtlhG2X3HOCEFp", "Xy0jsZycw4mlTPjy"]}, {"language": "59AAGhJp6f539GYx", "message": ["V5eGzAcvttL7Lbgq", "LB4ldMQrehWuR9Y6", "VFgHTT5hBB2KQEMt"]}, {"language": "1FDWXQ6Ire2OWkm2", "message": ["Bs75XHXoi7W1h8AX", "MfZE6LIs8g5qP0oX", "v4pkyvSVRJZqL7lS"]}], "isCustomRegex": false, "letterCase": "fcHar4PWepsh0J5l", "maxLength": 48, "maxRepeatingAlphaNum": 90, "maxRepeatingSpecialCharacter": 88, "minCharType": 19, "minLength": 65, "profanityFilter": "211kH5YT9bkuz5Dz", "regex": "MYDKpWgrqHDhOED4", "specialCharacterLocation": "Ora4G5uoM6rOlcPX", "specialCharacters": ["FEBWaiHdiXGvjBvU", "dKKndRqn6MNfFfW9", "nt5t67G8z91ulWuz"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'DX128qBXA7T3X8Or' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'dpNMtlppyPwR9GeD' \
    --before '3kR7hpBP61UmBdYT' \
    --endDate '2F89pYDS0L72hik5' \
    --limit '5' \
    --query 'C6LrIxIwaOy4dRwG' \
    --roleId 'MZgBsQRYxadJdtuu' \
    --startDate 'z9zEHRodjqjiauTp' \
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
    --body '{"ageRestriction": 3, "enable": false}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'oxrTEQxqIDS1vDaS' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 74}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'MglVR9F3WxYhTKcg' \
    --limit '2' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "QIiKoNyWeSgz3cqA", "comment": "LxiBHwhwcUhYy1fF", "endDate": "fmS1yzK5EhLvUkVw", "reason": "dZYFhNfOs6HDJFSc", "skipNotif": true, "userIds": ["AjHKCc2r3YkKdVOK", "cJKQJfxGgTnoH4IY", "Oafee59WKWEF7nUA"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "sL0fRxL7KFZWwpDc", "userId": "wKmwC9qVO356Vz4B"}, {"banId": "94vzz8yWt6NeQGyc", "userId": "0BuROEbJwGr3nqT8"}, {"banId": "e1x5pgCfrksaQxQq", "userId": "v230iaFVwiTnOV3v"}]}' \
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
    --clientId 'RI31rE3NqOb9PTye' \
    --clientName 'ZktSLHLdR3rIHPhG' \
    --clientType 'mtjfKS9ZFNhpHXlW' \
    --limit '66' \
    --offset '75' \
    --skipLoginQueue 'true' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["rVP7hb8MYcToNkKU", "g5dy95ZYo0ZnKmZi", "HAtP4Lz63VPUObz8"], "clientUpdateRequest": {"audiences": ["H1HExmMls6C3xhEO", "gDulh4DsyDYKqBXb", "F1AMPY9HjjZIbabA"], "baseUri": "iRGXwKtvoMGCXUhs", "clientName": "9RQK7U0aJU8Ur8io", "clientPermissions": [{"action": 41, "resource": "6oiWPkDluMNmdZV6", "schedAction": 27, "schedCron": "h2J4tLftwaXTwd2s", "schedRange": ["olHILtHkkT1q5RpO", "QJcwrMcC5UoYuHgi", "ykeTjtPRayWu7acO"]}, {"action": 53, "resource": "Dd3MXJPH5fyhEdyY", "schedAction": 55, "schedCron": "e7lZ1F3i1AkGRrIg", "schedRange": ["tA0qtq2P5jWfy4At", "MN8gYm9YsOcYz9Km", "TKaiFtowNmN7DNh7"]}, {"action": 37, "resource": "G1uF7YBgRbN8LmiU", "schedAction": 85, "schedCron": "axnaoBuJ1TRaU8o8", "schedRange": ["1dIkpzffHWbq907x", "bQyK9pAYW1RfDA77", "P20RXeTIT0bxzEcq"]}], "clientPlatform": "IPrsNEEkzwbxvics", "deletable": false, "description": "ksxqqrIbPNDCQ7gq", "modulePermissions": [{"moduleId": "LDNZp5mv1LCD5Oab", "selectedGroups": [{"groupId": "k66XWd4hHBU0vX3A", "selectedActions": [97, 54, 73]}, {"groupId": "puLsySxrPl5sdm1Y", "selectedActions": [66, 5, 87]}, {"groupId": "yMcyGSfz2PBgjfO9", "selectedActions": [67, 11, 44]}]}, {"moduleId": "zFDlxiFzwzdqkp8Y", "selectedGroups": [{"groupId": "l11CCYL1wEda4iAa", "selectedActions": [17, 86, 78]}, {"groupId": "ZmtMcZKzwmTXgDB7", "selectedActions": [14, 37, 11]}, {"groupId": "tNWJf9nDEXtTWVTv", "selectedActions": [57, 56, 98]}]}, {"moduleId": "M2MSWd0ln5NGqqB7", "selectedGroups": [{"groupId": "8hz9U271zLK8yYMk", "selectedActions": [96, 72, 23]}, {"groupId": "GcOR6k35nQb9rSKN", "selectedActions": [41, 47, 25]}, {"groupId": "4TFkSvSJ6t6QPUWp", "selectedActions": [40, 15, 70]}]}], "namespace": "AIYWqnpoj59GzyxI", "oauthAccessTokenExpiration": 1, "oauthAccessTokenExpirationTimeUnit": "nyvsgzmwu0iDO8jl", "oauthRefreshTokenExpiration": 37, "oauthRefreshTokenExpirationTimeUnit": "ALBU3st4jkLzrBgM", "redirectUri": "bPfHRfZJrm7HwzKP", "scopes": ["DRWLhQ19THn2HEKe", "jtHP9jqpg39S2Bri", "4yl5NvRsTnjlMU5H"], "skipLoginQueue": true, "twoFactorEnabled": false}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["mMf8J2dXZxQS6hRo", "0qz15UHX8Mp8891W", "pgtQgoCs1iZqGE1p"], "baseUri": "mK1sOGquL3jRwuaz", "clientId": "AW5W2ow33624r2zh", "clientName": "13m8XAkmGW3n5W50", "clientPermissions": [{"action": 48, "resource": "Oht4bNMCXDGO7FO4", "schedAction": 81, "schedCron": "Q2a6g2mMFsFLK5AF", "schedRange": ["1cpMO7HJ01U2lskQ", "8DAWpcZUYPiIIsok", "rKtBh7NsHw4Uc9IB"]}, {"action": 35, "resource": "SekA4I0WPkdgtV7w", "schedAction": 72, "schedCron": "K4ZgTY5wY33RpP84", "schedRange": ["qf3zzyVD4qeA07mc", "Fte0e70UDSqY2sS3", "fFH96NdyGgaVT9GD"]}, {"action": 79, "resource": "kDoJmhhotJJRX1OX", "schedAction": 93, "schedCron": "hyCUGVXbbhViFQ1W", "schedRange": ["FYbpXUQG0vZ9O9O4", "iptEb07BUEFhBJYB", "xGOY5dILWLowX7JJ"]}], "clientPlatform": "Ci0GciDtWv5nJfeW", "deletable": false, "description": "6MsclXaUFPwaKGeS", "modulePermissions": [{"moduleId": "TGnaEwxd6zmcjJa0", "selectedGroups": [{"groupId": "pxRIUjgn3bMO7V5p", "selectedActions": [75, 93, 40]}, {"groupId": "cOYkuSonaXzILIE3", "selectedActions": [90, 100, 50]}, {"groupId": "6SEsRsX1XUCfRsye", "selectedActions": [13, 75, 26]}]}, {"moduleId": "KtZixnyHrVQKFZQR", "selectedGroups": [{"groupId": "CJYpKTX6M7qj9l2d", "selectedActions": [90, 19, 90]}, {"groupId": "sLO7KFv2DLEzU9hY", "selectedActions": [96, 74, 74]}, {"groupId": "QtDxSFcoGN6nEGh0", "selectedActions": [65, 81, 18]}]}, {"moduleId": "7INNVEDDfYqhEWwG", "selectedGroups": [{"groupId": "0YVC1WXLrOw0pwfx", "selectedActions": [65, 40, 7]}, {"groupId": "rTJVY3WWmBOIyZBa", "selectedActions": [82, 40, 12]}, {"groupId": "iN5sdwoO7h5S0Pay", "selectedActions": [82, 66, 3]}]}], "namespace": "ym5VFf7gfXZKc5Zd", "oauthAccessTokenExpiration": 8, "oauthAccessTokenExpirationTimeUnit": "LV5xcyphuLCOmHBU", "oauthClientType": "ZtDnAlSmJxI35fXX", "oauthRefreshTokenExpiration": 25, "oauthRefreshTokenExpirationTimeUnit": "EZIWzyCgGFTABODR", "parentNamespace": "YvnERuaQruWsOy4v", "redirectUri": "hKvjE629ur8mP8TY", "scopes": ["OSFmqRS7MzwLPMaL", "iS3tMPAR9SbTAsDr", "k9u3yJslPASwNH5v"], "secret": "bcm9fBR5AV0h4GUX", "skipLoginQueue": true, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'JONfv62DdXOB9qIs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId '7LtZIk0J2lzWtZfR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'dqJszNJDo3zaYLyb' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["rflAxU99MDgbue4S", "f4x3UPb3S2tr9hvO", "ncyzAGuY5UE0RIeU"], "baseUri": "YeJ0E1ZMJcNZ7tAK", "clientName": "5rRpMgmUET9CHZ3m", "clientPermissions": [{"action": 64, "resource": "XdIhw0XB1I4gI9Z6", "schedAction": 79, "schedCron": "SnbtvdjoV3Ph9Rt4", "schedRange": ["Ka4xmo4fcjITe9pX", "EGcVIiFOErgaK8mp", "JtHRDHK82BvsyFPm"]}, {"action": 97, "resource": "u18qWGPoFPm4VzSW", "schedAction": 98, "schedCron": "SL8BkZSKYvoTZtb7", "schedRange": ["1Nv2ZHXPgUhY9Y7p", "VXuT5NcBnRM04bAI", "HWWUzpimTA61Q0mG"]}, {"action": 63, "resource": "mh306UkAiXaM1aQU", "schedAction": 49, "schedCron": "FSFIiR42bR3tcD1D", "schedRange": ["hvaj4jaMEYzTpMwg", "veNDM6VPwAaP1wm2", "hHLmjTtQ0V9Mn05p"]}], "clientPlatform": "FHWq4l2G15uN99ny", "deletable": false, "description": "edTYhoCRFhIkEO2v", "modulePermissions": [{"moduleId": "phWmvBqXQYIHaI45", "selectedGroups": [{"groupId": "GLq3y6T1epvghTnZ", "selectedActions": [66, 63, 67]}, {"groupId": "Lt6WdQOo1ClZi6gp", "selectedActions": [25, 84, 18]}, {"groupId": "VgWNp2Xbo6bvdxiC", "selectedActions": [49, 26, 1]}]}, {"moduleId": "iTiBHnNDehW8Kqvi", "selectedGroups": [{"groupId": "Mum2XxCVvOOMh7CR", "selectedActions": [26, 86, 91]}, {"groupId": "3uGgimMCQfUxDy8m", "selectedActions": [93, 100, 9]}, {"groupId": "91xDTZGzjxzdZ8js", "selectedActions": [71, 14, 18]}]}, {"moduleId": "hLyGSPnQCMj1WvYx", "selectedGroups": [{"groupId": "EWcCu2qMGz5SnmT4", "selectedActions": [55, 25, 40]}, {"groupId": "HGPaftmUkc76uwiE", "selectedActions": [34, 95, 0]}, {"groupId": "pvw9Atlsx574odky", "selectedActions": [2, 10, 87]}]}], "namespace": "MgjbRPpga4gW9Yvc", "oauthAccessTokenExpiration": 91, "oauthAccessTokenExpirationTimeUnit": "oNX34P6zM6Wn8fq6", "oauthRefreshTokenExpiration": 10, "oauthRefreshTokenExpirationTimeUnit": "K17ddWGzo1MTDp58", "redirectUri": "Aq7w4TJ7eQbnF3Rt", "scopes": ["mNsc40Q0GfOJW5K3", "rrSlwGd2kxegKgpi", "hMV9yvOC8RzVZsO2"], "skipLoginQueue": true, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'gFMHonoUCbgI8bbK' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 6, "resource": "6rTiuKgWLPaDMHCA"}, {"action": 11, "resource": "R8SOZdC6njUAwtNT"}, {"action": 39, "resource": "6aQxkQEfo530J7dV"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'xuCCcv8SkqFMwk0d' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 75, "resource": "3LlyzSwBD5zQYsTD"}, {"action": 85, "resource": "L65jFOlJNRKkDvkg"}, {"action": 64, "resource": "3oB6O1L1xGel83s1"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '55' \
    --clientId 'kQsqDIOb01uYMHKb' \
    --namespace $AB_NAMESPACE \
    --resource 'syc8wxCpUmkaztHu' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'bnG5jEWgAnMg9bT8' \
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
    --body '{"blacklist": ["wl0JxuBiDSX8gtyq", "o4Y1QArWuaP46oFj", "HZ2Y5spi00zYn9vx"]}' \
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
    --body '{"active": true, "roleIds": ["MDygdscHSNXkT4Uj", "HY26D1v68atNNDoz", "FH3ENYoJu304RTs7"]}' \
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
    --limit '13' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 141 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 142 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'HrezjLfs8WM9icNc' \
    > test.out 2>&1
eval_tap $? 142 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 143 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'cFOIl5yPs507nE2O' \
    --body '{"ACSURL": "AAfRTdGf2tRCbEy0", "AWSCognitoRegion": "ftbfBVRkvpfOdoir", "AWSCognitoUserPool": "cU49WUtEWpUYv65Q", "AllowedClients": ["LIbcwSt8e8KOCKeQ", "AK8hO7F3A6YDY7Py", "dDHe1yRksPSmNxjB"], "AppId": "IXobyvb1rhb6BiTN", "AuthorizationEndpoint": "OefFCFv5yOTQVHVN", "ClientId": "vCYknbzWT0m6e7vE", "EmptyStrFieldList": ["pPbhtrr3E8rDqUVV", "YepwkTbjs6hS8zel", "Z3Bj2WAZUtfzKRVp"], "EnableServerLicenseValidation": false, "Environment": "smkL0k6d412XhQce", "FederationMetadataURL": "W4v9GQDtBYk9sZcw", "GenericOauthFlow": true, "IncludePUID": true, "IsActive": false, "Issuer": "dv7fcc40r0v9KTUc", "JWKSEndpoint": "ZjdISPHWthgptaIM", "KeyID": "evWFDBgdc9QWC9x4", "LogoURL": "jEvB1N1sdU3t4M15", "NetflixCertificates": {"encryptedPrivateKey": "fI1WSkFpjkCzG4Fy", "encryptedPrivateKeyName": "0dIZ2YvX07d3W3mh", "publicCertificate": "AC9qX0TmZe4MaMmQ", "publicCertificateName": "NX65PpyJbQgbotMX", "rootCertificate": "t8aS69YTrIW4lOYi", "rootCertificateName": "EhlrgZj6CyesbBOg"}, "OrganizationId": "tv9dEj8dypepF296", "PlatformName": "CfAgST1xEgufAvMP", "RedirectUri": "YkYnAKVJJFpmTDM4", "RegisteredDomains": [{"affectedClientIDs": ["WxN2lSCK1iLt6FQ8", "pqXmjsNRkWVYY8me", "mGPE8pphZEWGUQtp"], "domain": "QZ8pTsZr5XOeIrDi", "namespaces": ["P4RBmuOBHXwkc67E", "VZBU4TQettfdVpUw", "aoQhXtgEwDOR8Rxk"], "roleId": "yQPT9TXNHQamAHty", "ssoCfg": {"googleKey": {"3XENTAqSoZiuS6ho": {}, "8shrIYxy6NZTKMdJ": {}, "yPG9wGVwaMNORTml": {}}, "groupConfigs": [{"assignNamespaces": ["q0hGM5XlNAc9SB5x", "kRn9ZcUw402bZSg3", "YLomGTyyuD1w5ECf"], "group": "heX733sAHz5LhLjr", "roleId": "rgHQDUOfjb8dFyLc"}, {"assignNamespaces": ["XQm9FS46kz1yyO9E", "F9U1rwOMYcum4tR8", "ORUYySPi138YOl2G"], "group": "ElJYwZqo0sQ4TzMy", "roleId": "CWqZ3mxAWHQYU84n"}, {"assignNamespaces": ["74Kuk40Gwk1MZKkn", "AZqz4165AajWxoDa", "6zaK3yaqMclq7S4D"], "group": "MElxytFVISwZpvXU", "roleId": "zmNwaWJilqVtesXk"}]}}, {"affectedClientIDs": ["IRVZ6m7qdq43zQLc", "BYAlMqTCd6RXPKo0", "wEXJ4d1W89dTUjnJ"], "domain": "AoxFnG1HKUhsxbg8", "namespaces": ["JwHuqKtmNDi3Gk3h", "23te18gtuhOMZjsZ", "zerYUUpdA6dguBgc"], "roleId": "ZGrNLEUND4u0JEKc", "ssoCfg": {"googleKey": {"HQ4rUYMln8PQJzzt": {}, "Dalq59trH6pIJ7WT": {}, "iuEsjOijZPnw4xLI": {}}, "groupConfigs": [{"assignNamespaces": ["z6BhjEZ7Zo044K6C", "cVP6CchpVN7IkuqN", "HgyzY4o1NVsuQ9Pk"], "group": "KFUD6ozeJivimE88", "roleId": "9jyuSEvGGtF5Rd0J"}, {"assignNamespaces": ["yrNzDO0HcUyxItvE", "uzYfGZz4ST3ZWwK3", "hX0d28FBnR2nnXbc"], "group": "TDzQbijamJK8AoiD", "roleId": "5VmcScu2UleLHuH6"}, {"assignNamespaces": ["FHjMtcrm8mPw2XgK", "vjbBU1P2wTAwTHiX", "RorPFrYsYAbLhVCd"], "group": "I0hfSOKhKR8GaTPn", "roleId": "w5y4NyeJHrvLgVWf"}]}}, {"affectedClientIDs": ["qRd3MhiU5TMf0roh", "txExCRhcnWSSckN2", "rmNaicKPnL34Emrj"], "domain": "iVwxzmc8I9ejmqYT", "namespaces": ["qVUMIrICA7u2vc6j", "UXtERwUKNocJtFsc", "e7muwQEtjoSCzurx"], "roleId": "5zLxdyqvUI9ByfYZ", "ssoCfg": {"googleKey": {"yS36hbfUbhGCG0ew": {}, "ddUxPDotVZvWmVIu": {}, "NLKH2jbhlodHauoC": {}}, "groupConfigs": [{"assignNamespaces": ["cmDFONhN9wOLi3b1", "OlTNejVoOwI990JL", "pfeIuLch4fbTZIkz"], "group": "ILlbMXSpyfoqW4Ky", "roleId": "39MlCzHuMneERz5P"}, {"assignNamespaces": ["4wAfk98TuJ00JvB2", "dacIVh6EllZ70P2X", "kTfVc3tYeuHryqdU"], "group": "baQJQe31aPQvdCy8", "roleId": "5f6b2DeVxja2Hea6"}, {"assignNamespaces": ["l5wZBxit6KDP83pR", "0oyeJ7wT3tKtvUh4", "RCOUZXFk4eKnBQLc"], "group": "9LZtQnQmLK4YNTMU", "roleId": "vVIBHPFKQRFGGsOW"}]}}], "Secret": "0yekC8jldx1l2VF8", "TeamID": "q6R8Jgj8p0aXbmqU", "TokenAuthenticationType": "WeYiWdmpHeUO6vYz", "TokenClaimsMapping": {"RBoxGPbMK6ynwX7s": "R7yD04nfzMwYNsVF", "algF1PZY7PKeS5Rj": "KZ2BZJeQlYqDu3zx", "paJb3OghvjgIcFMR": "Yvy2V7XWpX2Uy7NK"}, "TokenEndpoint": "nJ4hvEigcJuZCwwx", "UserInfoEndpoint": "Gx0MJT38XrG6e4Rt", "UserInfoHTTPMethod": "MhpwjaIEKZrWEIs8", "googleAdminConsoleKey": "rN3NQUi8kJxTSq3S", "scopes": ["jEaXGRDMogi8LrPX", "HVc3x9U3gQsqoGUs", "rvVs6vAlPuZI5Gl7"]}' \
    > test.out 2>&1
eval_tap $? 143 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 144 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'RELnVsERJi80n80L' \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 145 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'H3jrLJbxRY80NT8m' \
    --body '{"ACSURL": "aWkwl5XgwwcdgSqx", "AWSCognitoRegion": "jarPsdm5laUfHHU6", "AWSCognitoUserPool": "bXGFivKyRQs1NyMz", "AllowedClients": ["2wmlYDRgU4VubUtl", "GEUht4tAZvuKyH5s", "zxXZjqng08ZfKIS7"], "AppId": "LP4dHPEnWNqm7xeH", "AuthorizationEndpoint": "78G79tIzMtvFxtEr", "ClientId": "xluGC0m5YjU4ysI0", "EmptyStrFieldList": ["4sSyRsKn0nwDJ9pV", "7c9SBZB2ZQunb6im", "NSmmiqYis43ywzOb"], "EnableServerLicenseValidation": true, "Environment": "vhZZncDZKu87xfWv", "FederationMetadataURL": "7rvAeI5T9GyfXuvq", "GenericOauthFlow": false, "IncludePUID": true, "IsActive": false, "Issuer": "0bYFaTKQX7k4poin", "JWKSEndpoint": "QrldC5hlmri0OjYk", "KeyID": "jSn0wN3eDYBaeJAu", "LogoURL": "3TnHZp3WVgoqIIvr", "NetflixCertificates": {"encryptedPrivateKey": "cz3ZwxahVwTtfHZ4", "encryptedPrivateKeyName": "G0daPWlVqu4FkqNV", "publicCertificate": "wDzB5vy5uKjOuipz", "publicCertificateName": "ZYxKmNvTizVN3wV5", "rootCertificate": "yIdtW8tvj0g3ECpg", "rootCertificateName": "TCjYtFvryjVnNZkC"}, "OrganizationId": "YxHDgdiMdB9BtZQb", "PlatformName": "5u144pUeIMQw7uvs", "RedirectUri": "d9Umz8BBvhuIOo5p", "RegisteredDomains": [{"affectedClientIDs": ["r090DJEngbauOsfX", "ZSs1WFUBpxSAOyIx", "oDK5KidKDWrD1Fu4"], "domain": "BVJ3LLiJevGLJkzT", "namespaces": ["awpedHULCbyhFwds", "7YaLTX8WrLVE741g", "oKIT1WorDwiA0uyB"], "roleId": "HNbqyocpn6IKH4dC", "ssoCfg": {"googleKey": {"a4A8sCFMplygS7L5": {}, "WzmJsofeYRzjrK7H": {}, "Czi7hkw8QMYubaiT": {}}, "groupConfigs": [{"assignNamespaces": ["qQOFpS6ueERvRQWY", "rmXK4B9giOj0BPgQ", "KgA2GElkIWnAUnil"], "group": "zqNnltjkB9JBQxgi", "roleId": "ZakK63WwzE4EOrxS"}, {"assignNamespaces": ["3P8vHSfwHLcRXWg7", "gOse6Sxj4I3PhJKv", "g61y7l2XgujeNnli"], "group": "dhvqhsydsUJVFapm", "roleId": "PlC5HdEi4GVffJ2B"}, {"assignNamespaces": ["FJKf3ljshGhlPZwC", "zHkeD2ZQm1FBms5M", "dHcDYDkn03ac0zpD"], "group": "PeXpo5nZCDj9PFIt", "roleId": "mntopZInLWeC8CjI"}]}}, {"affectedClientIDs": ["4XMlNlVOVXnmACCp", "6TusJflrW0DKV8xe", "vbdsc6vBcslyqCmW"], "domain": "bcCXBFOYz9bL3BtZ", "namespaces": ["uNwXAEA8cpKn932n", "C2pq1R6kAcuWUMAw", "vtJuE3LptpJtdl2j"], "roleId": "IN1Zw3RELfuCzhzO", "ssoCfg": {"googleKey": {"3O0s9GXmBN7oeE4N": {}, "kGHNCzzGwVQNnL9h": {}, "GI1xMjwJ2me1Qhgh": {}}, "groupConfigs": [{"assignNamespaces": ["2a6tuzVaKrnd7b9m", "6wAEzhH3koHNtxFp", "wTPOcdMZiHeH98DO"], "group": "sOtpxFOfTGZasvWD", "roleId": "uzpnck5rjxGHeCMo"}, {"assignNamespaces": ["9QLAIsbw1fszB86J", "Cgg6hJfWTEfxvXbC", "oExZxjbPE4txeSTS"], "group": "YRSTiNdTwhGvfIpY", "roleId": "AxkigPKP1hg47aZA"}, {"assignNamespaces": ["xG6V8YXIRUEjU1NE", "KURCTALh4XmEOAWn", "PWIyTptFfzaOOVjO"], "group": "4YTRFQ1bXcZGb0d5", "roleId": "QgC694ktNX1BXPOj"}]}}, {"affectedClientIDs": ["ub69cFN22nD7p0sn", "zDdK49GxgtYkZn5k", "X0sKfK6DZ7BYeEgt"], "domain": "W3PMRKmq0jMyi0e1", "namespaces": ["AhNuJbEjW6mABI2Y", "o6LqqwWM9XNScRF5", "QrSvMeIP43s8S3hh"], "roleId": "uRbD2Dr0LyT5VbsZ", "ssoCfg": {"googleKey": {"06pCgxDJPvtARR0e": {}, "7KGl4KaRgmEKxowC": {}, "bt6qNs1z63XLXTpg": {}}, "groupConfigs": [{"assignNamespaces": ["IUyzohGUxP0CBoLW", "FNyznzwftrIWdzTN", "Vl1azgUldXIPJ4yE"], "group": "Nwgw8RpoNG4hDZsi", "roleId": "sytfNLbyYPyLVfsm"}, {"assignNamespaces": ["bsFPGPnXqIdelPyT", "7cjHAW6sYZUqXdw7", "OqkuNuVYmB5H6IAc"], "group": "j295v5dx7ZVny1rE", "roleId": "c7Dn9EjYRPsj5eiC"}, {"assignNamespaces": ["vjOyg3beoP2bBzpL", "UiwrXghEOhcGsIRt", "SBgpq6mDZwZxOqyZ"], "group": "XOrBR6JSoXlIS6Cp", "roleId": "6NwXxsDRQl1nYf2d"}]}}], "Secret": "984Q9nH1nJQe2tXA", "TeamID": "A2BJk3OQmUnA8P6f", "TokenAuthenticationType": "jFivOv1qbymBTTI2", "TokenClaimsMapping": {"10PqoEbbdmwxMmea": "CDLfCXGVCin30cEh", "mA8HczSDVfUMT1vP": "IIkL1QpMTZhbBx0p", "JpehOm2rMoIAvopu": "gTsdFSSQuImPVhED"}, "TokenEndpoint": "CpZ19YUbBHNhbAhT", "UserInfoEndpoint": "7D67hYHdcHfCwRAK", "UserInfoHTTPMethod": "IGzcN0rzaAHrVYqs", "googleAdminConsoleKey": "6nUV6C14XUk1Dpsc", "scopes": ["V1sC2yCEC1gLZnRP", "3mVOFCoH9GTJ8ZEz", "mKiDOcRwqjpdXwsk"]}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 146 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'SHi9hWjF4sCzxUyi' \
    --body '{"affectedClientIDs": ["dcMyfCPJgUbz8Ilu", "4LDEjikdLUm5uMv4", "oW9ibwhDmepO9GGy"], "assignedNamespaces": ["rWRzIkFMdgIza5kr", "uQ7rfDLL61FhQlmA", "in7mJcPQ0UaJ26nA"], "domain": "6INhkO7ZKbyFs2BV", "roleId": "unwNfsY2N0NOA7Qy", "ssoCfg": {"googleKey": {"Wp7NvmlvDVtX23jD": {}, "nFNSZPylhhmyAelG": {}, "u6NQXPIP4Tx58iHq": {}}, "groupConfigs": [{"assignNamespaces": ["lWFlPvTWYmwaISr4", "MTCbPwbuUeCARLeQ", "eZMe7Z5qPhgpYrES"], "group": "aTp3Gj4n7tKraKPz", "roleId": "UWoBs1UbxR0dQji1"}, {"assignNamespaces": ["SEfWCcDp4CA9otm7", "H8ORCs5JBiFLXopH", "OBwinKyLe03cZHCJ"], "group": "aaBFITVvGnqKkkCV", "roleId": "GEZLZXxQst7KVuWV"}, {"assignNamespaces": ["NiFJa7dKIKLChZFv", "mC2ChKVP2482UhFR", "xL72sadvyZRN690F"], "group": "FnjhjlyoEjHTDjVO", "roleId": "3SG1JGRZjNNoiVw4"}]}}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 147 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'SqaOXkZ3xS0Uy78a' \
    --body '{"domain": "pwJtGwx9ZYsHyr3h", "ssoGroups": ["Gidvp4uPtmDB2sZ6", "elxIIUuVmUj7h5Nt", "3aqU8fgTVa0rYXMn"]}' \
    > test.out 2>&1
eval_tap $? 147 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 148 PartialUpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam partialUpdateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'OhH2XyOEQsG3p9zU' \
    --body '{"affectedClientIDs": ["NboAKB47k5QnJUxI", "fnH9uqQbY6pdcDwL", "6FogL1qw6i6qQyt5"], "assignedNamespaces": ["fYnsXz4s3giDWHXl", "JRHJATiq5x9GyGf2", "IH6hjZQnrtkCVXWd"], "domain": "0hGRNHTxz1JQosWT", "roleId": "3UFMzGu4jcNE8LJE", "ssoCfg": {"googleKey": {"ZlHUytp8V0v5fpEY": {}, "X7plSWpJJ8mu6e1x": {}, "R8L3edwDx2QE5Z9i": {}}, "groupConfigs": [{"assignNamespaces": ["zR5yT2fuTLjBnrvP", "5KTmURk4V7byRljm", "iAidUtFf4JBQCRd6"], "group": "nBUHa7UtaPDldUmu", "roleId": "d06MBcnY6JjE6yNk"}, {"assignNamespaces": ["I5Y0e4syMnBWx4YC", "Nb8TlEuxzPBgJpot", "c0az4CAI15j4d7Q1"], "group": "llfkkLsKFv6DVM28", "roleId": "mxmmXE2ws4FMj8Pa"}, {"assignNamespaces": ["VzQZjWX6k6VWTFfY", "gSDassVYZqQL2h8a", "JnsIay2bZQdfaf77"], "group": "3d5dzYykugFrfdDL", "roleId": "C1J8j3uQa9H6d0ud"}]}}' \
    > test.out 2>&1
eval_tap $? 148 'PartialUpdateThirdPartyLoginPlatformDomainV3' test.out

#- 149 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'Xgbkkfb9ckSxSDcZ' \
    > test.out 2>&1
eval_tap $? 149 'RetrieveSSOLoginPlatformCredential' test.out

#- 150 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'pkc8qMoJfz3hRW8d' \
    --body '{"acsUrl": "oVj4wj09cC99uKCg", "apiKey": "B2xwqpILHcy8iome", "appId": "vjRN4tAkAwzNOMvk", "federationMetadataUrl": "u0Pwak563gSbXAml", "isActive": false, "redirectUri": "0qUpF5etbUFiT0bC", "secret": "OkkM247dwdyH3t92", "ssoUrl": "O2DzwJZ40kLwVd8B"}' \
    > test.out 2>&1
eval_tap $? 150 'AddSSOLoginPlatformCredential' test.out

#- 151 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'NiWkkazXDfBkAFXy' \
    > test.out 2>&1
eval_tap $? 151 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 152 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'YV0OWRXaVJJaDSQL' \
    --body '{"acsUrl": "m09uoDPNWLb4pbVb", "apiKey": "erjjrktms63Ww41k", "appId": "T4iEyVT3yygN3sUB", "federationMetadataUrl": "yWxUPSQsYa2UFIUD", "isActive": true, "redirectUri": "3mNhscaOD9wG5xoW", "secret": "iwF1wCYyBgND2P8G", "ssoUrl": "lWwKk7EhdHkoQTwN"}' \
    > test.out 2>&1
eval_tap $? 152 'UpdateSSOPlatformCredential' test.out

#- 153 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'UXQ5XzOZvq67FoPv' \
    --rawPID 'true' \
    --rawPUID 'true' \
    --body '{"platformUserIds": ["Lw4WAW3IOxYhesAo", "DpfQ8pOo6qH9D3CR", "lsC8nSmakLGZlyPP"]}' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 154 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ktbsLJKTYUuL4C2H' \
    --platformUserId 'e6Rk9ashiHaJlSNj' \
    > test.out 2>&1
eval_tap $? 154 'AdminGetUserByPlatformUserIDV3' test.out

#- 155 AdminGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'dob' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetProfileUpdateStrategyV3' test.out

#- 156 AdminUpdateProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminUpdateProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'dob' \
    --body '{"config": {"minimumAllowedInterval": 68}, "type": "zbqGQsvXo1ai4Gpa"}' \
    > test.out 2>&1
eval_tap $? 156 'AdminUpdateProfileUpdateStrategyV3' test.out

#- 157 AdminGetRoleOverrideConfigV3
samples/cli/sample-apps Iam adminGetRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'GAME_ADMIN' \
    > test.out 2>&1
eval_tap $? 157 'AdminGetRoleOverrideConfigV3' test.out

#- 158 AdminUpdateRoleOverrideConfigV3
samples/cli/sample-apps Iam adminUpdateRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'USER' \
    --body '{"additions": [{"actions": [22, 92, 40], "resource": "owRxiU0CRuar7BWX"}, {"actions": [40, 52, 74], "resource": "jh6zBGLGlojkAfFi"}, {"actions": [54, 37, 93], "resource": "5K21gINhkauuhWa8"}], "exclusions": [{"actions": [8, 43, 7], "resource": "I7AC08ABwFny6xVa"}, {"actions": [16, 67, 86], "resource": "nIUBzvThpCImdF04"}, {"actions": [20, 85, 82], "resource": "ju7V7NlAGV8FRMJO"}], "overrides": [{"actions": [13, 88, 71], "resource": "zeYrS0L9Skg8WTkC"}, {"actions": [5, 48, 18], "resource": "HUliDLR2y0OT6IRJ"}, {"actions": [90, 97, 17], "resource": "cjkQHZ9hRLYPSPKE"}], "replacements": [{"replacement": {"actions": [65, 87, 59], "resource": "mbrIsSyJ51p2jFwT"}, "target": "BbKtJuN2T5r8RqZY"}, {"replacement": {"actions": [65, 0, 33], "resource": "yYZRolCrinBFgELR"}, "target": "SosaeEKkaozE9QU2"}, {"replacement": {"actions": [19, 46, 23], "resource": "yOAkLdEFnXp8qAl9"}, "target": "KbHyUzTvOdxNfx9F"}]}' \
    > test.out 2>&1
eval_tap $? 158 'AdminUpdateRoleOverrideConfigV3' test.out

#- 159 AdminGetRoleSourceV3
samples/cli/sample-apps Iam adminGetRoleSourceV3 \
    --namespace $AB_NAMESPACE \
    --identity 'USER' \
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
    --roleId 'NYNdRyJuVdUkpS6y' \
    > test.out 2>&1
eval_tap $? 161 'AdminGetRoleNamespacePermissionV3' test.out

#- 162 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'C0IlIsv9f01EwBc5' \
    --after '65' \
    --before '44' \
    --limit '4' \
    > test.out 2>&1
eval_tap $? 162 'GetAdminUsersByRoleIdV3' test.out

#- 163 AdminQueryTagV3
samples/cli/sample-apps Iam adminQueryTagV3 \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '66' \
    --tagName '5208F84qV6lzND6F' \
    > test.out 2>&1
eval_tap $? 163 'AdminQueryTagV3' test.out

#- 164 AdminCreateTagV3
samples/cli/sample-apps Iam adminCreateTagV3 \
    --namespace $AB_NAMESPACE \
    --body '{"tagName": "G7IdqPFtcwA6Ld1W"}' \
    > test.out 2>&1
eval_tap $? 164 'AdminCreateTagV3' test.out

#- 165 AdminUpdateTagV3
samples/cli/sample-apps Iam adminUpdateTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'IgEJbj9h3NqoW5eG' \
    --body '{"tagName": "2kUgMScPsKGMsdx4"}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateTagV3' test.out

#- 166 AdminDeleteTagV3
samples/cli/sample-apps Iam adminDeleteTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'XtPFKQxPgGsIHwWl' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteTagV3' test.out

#- 167 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'fMUnqBh2xSXq3Ufc' \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserByEmailAddressV3' test.out

#- 168 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": true}, "userIds": ["b3PdFF7pxFtp6Zoe", "C105SbW3MhOyZID0", "yK9a9j5jVtjvcHKc"]}' \
    > test.out 2>&1
eval_tap $? 168 'AdminBulkUpdateUsersV3' test.out

#- 169 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'TBm3OozN6PNfrKk9' \
    --body '{"bulkUserId": ["fSwslD5Oeyu6Cm7c", "hiG4DC9LzjnphnlL", "8k4bS1ihNOZ52MLH"]}' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetBulkUserBanV3' test.out

#- 170 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["DhAlGryvBRRFqTmV", "m1NWqE6h407ZbQIm", "pexSF2M88oqwbv65"]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminListUserIDByUserIDsV3' test.out

#- 171 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["QbJ0Dvgi39I5m2tG", "JMgelMvtUNtRm4k6", "uMGbdvWEWW3H9JLf"]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminBulkGetUsersPlatform' test.out

#- 172 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["wad3YBbumuSLOepy", "52PysqeQ0ex8xM2A", "H3we3vyUMMlfNNrI"], "isAdmin": false, "languageTag": "7JSMvUOYTnhduped", "namespace": "g3eyaJKQ4LGbKTTi", "roles": ["DITgUDywS46sevba", "HyHRzwYArckEFIvt", "RZcbyY3iFhJKmo9j"]}' \
    > test.out 2>&1
eval_tap $? 172 'AdminInviteUserV3' test.out

#- 173 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '99' \
    --platformUserId 'HptQ8BXsEMKuiiCk' \
    --platformId 'MQlHST7Z2sIFsrY3' \
    > test.out 2>&1
eval_tap $? 173 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 174 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 174 'AdminListUsersV3' test.out

#- 175 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '0AU0ZFsLyTSkSZBH' \
    --endDate 'tK6WOl9WY21paPKU' \
    --includeTotal 'true' \
    --limit '30' \
    --offset '80' \
    --platformBy 'q4u7ADG3SvN22k7W' \
    --platformId 'TU6rOGgQwBrAK3jp' \
    --query 'JWdCZktsJPlT7erB' \
    --roleIds 'oSumuVzggjEXprrI' \
    --skipLoginQueue 'true' \
    --startDate 'kVvV3Lo2YEOmO1QI' \
    --testAccount 'false' \
    > test.out 2>&1
eval_tap $? 175 'AdminSearchUserV3' test.out

#- 176 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["r2NYlSfDsbcAIT6N", "3BBt1v63wLR1qUH5", "S4IiPof6cQnmUgvz"]}' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetBulkUserByEmailAddressV3' test.out

#- 177 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'sht7c9ZGusIXBUka' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetUserByUserIdV3' test.out

#- 178 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'nS11HbIjSEwpFGiQ' \
    --body '{"avatarUrl": "DMdAbEKLT6lRyJSi", "country": "L4Dg6peVEajGzZda", "dateOfBirth": "Pem3rcjc7osrgGvU", "displayName": "8YzICi7tVl86RqKF", "languageTag": "9orfu4VBQylwXiCZ", "skipLoginQueue": true, "tags": ["AUMkxuF5w3t2haQ7", "6Tnb5MPRVqCtTm7Q", "6tZnDkf6DMTlEUcp"], "uniqueDisplayName": "GeV4wV0fsVkk64vA", "userName": "8IL3mAxHOSR1yR9l"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminUpdateUserV3' test.out

#- 179 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TGxwNGVLAhhueFMT' \
    --activeOnly 'false' \
    --after 'dpqFXVahNk6WkvwP' \
    --before 'uadjKeheHyRteS9E' \
    --limit '79' \
    > test.out 2>&1
eval_tap $? 179 'AdminGetUserBanV3' test.out

#- 180 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'T1tFYSeg3n7ronxk' \
    --body '{"ban": "WB6xJOiCqSct75q7", "comment": "CzG8VgdhgSOQyz4u", "endDate": "7FC7uaFMqGsm4BfP", "reason": "h0ekpaI2SYiI94aW", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 180 'AdminBanUserV3' test.out

#- 181 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BYM1bp7ylg2izAUO' \
    > test.out 2>&1
eval_tap $? 181 'AdminGetUserBanSummaryV3' test.out

#- 182 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'YDcoPlRR4MEXxhqo' \
    --namespace $AB_NAMESPACE \
    --userId 'bHoaRDQyOoF5wiPz' \
    --body '{"enabled": true, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateUserBanV3' test.out

#- 183 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eNEX6s22eYGuGnCC' \
    --body '{"context": "xGXBKXQkrhxYwv8g", "emailAddress": "iC3vzhF7t0ytfIkr", "languageTag": "15K8TWccmKQ44ilb", "upgradeToken": "10IMHxHGtbPnD8KA"}' \
    > test.out 2>&1
eval_tap $? 183 'AdminSendVerificationCodeV3' test.out

#- 184 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zoXzg5vGQ9AsZpIP' \
    --body '{"Code": "OO7UxLGQQPLvwJWF", "ContactType": "6bbTeU64Bhrpfu9b", "LanguageTag": "VMoI0EgJ9nZBWTKO", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 184 'AdminVerifyAccountV3' test.out

#- 185 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'Is4n3LdiVkjhOwkR' \
    > test.out 2>&1
eval_tap $? 185 'GetUserVerificationCode' test.out

#- 186 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kj2ffy2J9WqwEVcW' \
    > test.out 2>&1
eval_tap $? 186 'AdminGetUserDeletionStatusV3' test.out

#- 187 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'K1AkSWrOu3KiPbVR' \
    --body '{"deletionDate": 3, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateUserDeletionStatusV3' test.out

#- 188 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId '9JOEdCZ0R8jB4Q4V' \
    > test.out 2>&1
eval_tap $? 188 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 189 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FgCjBrktGkMcjtpF' \
    --body '{"code": "q6yc5WozOkNo3MMY", "country": "N0mm7nSpf1XNZlsC", "dateOfBirth": "dG5ZnqXdryXQ5ND0", "displayName": "NAgRWQERVrigZAQE", "emailAddress": "hv2MDI88jvj16IXv", "password": "iDFTAMTdv5HE2JvY", "uniqueDisplayName": "RKj8WmaAY73juZSa", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 189 'AdminUpgradeHeadlessAccountV3' test.out

#- 190 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'unnFKnz1ewYE43fa' \
    > test.out 2>&1
eval_tap $? 190 'AdminDeleteUserInformationV3' test.out

#- 191 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'KTk9taxLWeiZmhQU' \
    --after '0.584734942226753' \
    --before '0.8141483665679646' \
    --limit '55' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetUserLoginHistoriesV3' test.out

#- 192 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zPZVyryjhAcuf95l' \
    --body '{"languageTag": "XTh60GUTZKyNBzS6", "mfaToken": "dQYuazkbWsNbaqmo", "newPassword": "ci3RZTwSVi7qN1k6", "oldPassword": "Gj8RGycqVqMnTxJp"}' \
    > test.out 2>&1
eval_tap $? 192 'AdminResetPasswordV3' test.out

#- 193 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xo278vO7wjhCHlXH' \
    --body '{"Permissions": [{"Action": 25, "Resource": "E2o4CVsNUKfuqivQ", "SchedAction": 42, "SchedCron": "s2cfbvBz5dNzccwQ", "SchedRange": ["FqT5OFQhKc76smk9", "XaCZcXJINV8KskNQ", "7lbtr9qJRV0uiuiX"]}, {"Action": 47, "Resource": "71ZMd7n3E2IEArra", "SchedAction": 6, "SchedCron": "iqskidviTZB49Zmg", "SchedRange": ["8wPlnOaOWzoDmxHi", "cxzkHRgA2Wfjwc57", "h1rZyI6bItpE8QBS"]}, {"Action": 47, "Resource": "HNsX8NvbsdXIGA0M", "SchedAction": 7, "SchedCron": "i1OcGPOIkiz0jpAO", "SchedRange": ["1GUHW83K56Ph7fnY", "wzQRQyZimB8fqlLQ", "eQlB7X85oc4nwp6s"]}]}' \
    > test.out 2>&1
eval_tap $? 193 'AdminUpdateUserPermissionV3' test.out

#- 194 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'e7OYxQGQ3Ug4he6M' \
    --body '{"Permissions": [{"Action": 36, "Resource": "3XQBwRiqIm7npUnO", "SchedAction": 89, "SchedCron": "kOxBT31ifvsAv6B2", "SchedRange": ["I90HLabFn2wDxqss", "Qox2UFudqtxFkoGl", "6IMgRcfxjid2XFZz"]}, {"Action": 85, "Resource": "8CHaW3fCvbCAfRHB", "SchedAction": 89, "SchedCron": "3ySEarNjjxhiSxJ9", "SchedRange": ["21Hs0lRP4wknXBjb", "fa9Ir7aFcl4IoTBC", "Erjp6Ioh4xDfepUO"]}, {"Action": 84, "Resource": "TSmRgHGA6YEyYIpR", "SchedAction": 59, "SchedCron": "CfW3AzYikpxzYnh3", "SchedRange": ["SeDPKUnSEqvfunbE", "tF0NHb2V0IlXPidt", "t69IjEoyDblsEg3k"]}]}' \
    > test.out 2>&1
eval_tap $? 194 'AdminAddUserPermissionsV3' test.out

#- 195 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fo6fBfTuiGs5eiJy' \
    --body '[{"Action": 51, "Resource": "s1tesk8RB3OqfdpG"}, {"Action": 61, "Resource": "D9uozleyS9RLjBNN"}, {"Action": 40, "Resource": "acbxdNSNK0RSu5Iz"}]' \
    > test.out 2>&1
eval_tap $? 195 'AdminDeleteUserPermissionBulkV3' test.out

#- 196 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '8' \
    --namespace $AB_NAMESPACE \
    --resource 'ZrOwqbyzCUSN6EvZ' \
    --userId 'dN8gHWAtApTPHzIy' \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteUserPermissionV3' test.out

#- 197 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gYKurij8tp7H0NbP' \
    --after '2gh14OngwPeZa4Qf' \
    --before 'hsnt3dWOetMyHd5R' \
    --limit '83' \
    --platformId 'm1lJ1jw1x0Hr84jC' \
    --targetNamespace 'PkYashR7McbrHqMj' \
    > test.out 2>&1
eval_tap $? 197 'AdminGetUserPlatformAccountsV3' test.out

#- 198 AdminListAllDistinctPlatformAccountsV3
samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'udLcpEBKMwf83FuY' \
    --status 'kCLgt6uqTTBwoTKX' \
    > test.out 2>&1
eval_tap $? 198 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 199 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'vOSQi2Aq815LQ7HP' \
    > test.out 2>&1
eval_tap $? 199 'AdminGetListJusticePlatformAccounts' test.out

#- 200 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'E88E90ooXSP5Itfn' \
    --userId 'XcAinysm1ea4ZUwY' \
    > test.out 2>&1
eval_tap $? 200 'AdminGetUserMapping' test.out

#- 201 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'ardVPjES06aUzSA9' \
    --userId 'nxAaikh6LH6zjvRz' \
    > test.out 2>&1
eval_tap $? 201 'AdminCreateJusticeUser' test.out

#- 202 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'OfF7yLuecSaWWd55' \
    --skipConflict 'false' \
    --body '{"platformId": "Hxo9mAq1oIHcIQKk", "platformUserId": "gNJy9Yb1R30P7d6V"}' \
    > test.out 2>&1
eval_tap $? 202 'AdminLinkPlatformAccount' test.out

#- 203 AdminGetUserLinkHistoriesV3
samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FTzSU5KMC9P7xWVW' \
    --platformId 'VS4FjnsPVxyJfQ9Q' \
    > test.out 2>&1
eval_tap $? 203 'AdminGetUserLinkHistoriesV3' test.out

#- 204 AdminPlatformUnlinkV3
eval_tap 0 204 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 205 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'UJUHJMwRncjodUNY' \
    --userId 'Tptw9tVkmtpMV22d' \
    > test.out 2>&1
eval_tap $? 205 'AdminPlatformUnlinkAllV3' test.out

#- 206 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'uUyMzVceYDOiFNml' \
    --userId 'tqVqrv1siyLz0P8P' \
    --ticket 'dHC5LBU5T4XTwPhT' \
    > test.out 2>&1
eval_tap $? 206 'AdminPlatformLinkV3' test.out

#- 207 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 207 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 208 AdminDeleteUserLinkingRestrictionByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Iz4SClH0lxozfZ5c' \
    --userId 'Cw2XEYn9roR3dlEY' \
    > test.out 2>&1
eval_tap $? 208 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 209 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'XgK98N8bOEbFJHju' \
    --userId 'giEsdG5AiDiGcF3N' \
    --platformToken 'wgVUQbJqe2VXVSWN' \
    > test.out 2>&1
eval_tap $? 209 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 210 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'NTNokjyciiEmM6fP' \
    --userId 'OSflVnHneAbZg4Jx' \
    --crossNamespace 'true' \
    > test.out 2>&1
eval_tap $? 210 'AdminGetUserSinglePlatformAccount' test.out

#- 211 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'IAEhcLbCnmfhoTyM' \
    --body '["YdeAGmsCZ0AynoT7", "hx5SJBT49X0bpJCm", "vS245o09NvOCRIgD"]' \
    > test.out 2>&1
eval_tap $? 211 'AdminDeleteUserRolesV3' test.out

#- 212 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId '3R8djdnLdwtc6Yv1' \
    --body '[{"namespace": "gEwnMxbvbxzTYc8w", "roleId": "B32z3hslIqWdxTk2"}, {"namespace": "qKscRGYOL47eLUBi", "roleId": "aRAfaXO2IziMFq31"}, {"namespace": "glVkSE5RgFbOYcXs", "roleId": "FlLfPD3TCQfnZgxv"}]' \
    > test.out 2>&1
eval_tap $? 212 'AdminSaveUserRoleV3' test.out

#- 213 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'SVpUZvAh0uS4FF1H' \
    --userId 'QddyEHnmNndvISQj' \
    > test.out 2>&1
eval_tap $? 213 'AdminAddUserRoleV3' test.out

#- 214 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'bD9gGCzeNc5Mv1mh' \
    --userId 'JYDgNBvDElVZmqKj' \
    > test.out 2>&1
eval_tap $? 214 'AdminDeleteUserRoleV3' test.out

#- 215 AdminGetUserStateByUserIdV3
samples/cli/sample-apps Iam adminGetUserStateByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'P9T5lBbU9My5SECQ' \
    > test.out 2>&1
eval_tap $? 215 'AdminGetUserStateByUserIdV3' test.out

#- 216 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zsh1Yh9uP0wgh55O' \
    --body '{"enabled": true, "reason": "VqYh8SCJeFfA7LtJ"}' \
    > test.out 2>&1
eval_tap $? 216 'AdminUpdateUserStatusV3' test.out

#- 217 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'akF9chonf6ZJFo9U' \
    --body '{"emailAddress": "5bNyV0egrZax6gEL", "password": "jpBXH6cOXXV8JmVw"}' \
    > test.out 2>&1
eval_tap $? 217 'AdminTrustlyUpdateUserIdentity' test.out

#- 218 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId '3jWmPVJKZjH0Y1Rv' \
    > test.out 2>&1
eval_tap $? 218 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 219 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId '3WvkqFd2PVi5CTLc' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "Fg8wpVGXbJZNT9FJ"}' \
    > test.out 2>&1
eval_tap $? 219 'AdminUpdateClientSecretV3' test.out

#- 220 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'q7BmJf9X1akPBiy1' \
    > test.out 2>&1
eval_tap $? 220 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 221 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'am6FYvTzfY5TvQM2' \
    --before 'WNmdiUALHMhEuyJo' \
    --isWildcard 'false' \
    --limit '11' \
    > test.out 2>&1
eval_tap $? 221 'AdminGetRolesV3' test.out

#- 222 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "managers": [{"displayName": "L3Ptu0in4jud0ozN", "namespace": "uMASxYwNpPDKag6o", "userId": "rMjdL4pHtUst3Fh2"}, {"displayName": "60sW2ACQhUQehha7", "namespace": "eDKyzURiuoe4kNh1", "userId": "KVWJArmUfmwZlV1f"}, {"displayName": "yKz3lYjdS9DmVUul", "namespace": "3StiFmMJopRIaavQ", "userId": "HPoosC1aQLXpm4iz"}], "members": [{"displayName": "Rgx7hH5vlTOc83Oy", "namespace": "xysgk6IhRLO0fCLi", "userId": "5KNWzqGumobECVK7"}, {"displayName": "dVbsgxuZW5imkJ6I", "namespace": "lc60VR8Kj6CBPaJu", "userId": "LidBnd4VWLteS4rp"}, {"displayName": "5HPKu6kEW8KJI0eB", "namespace": "LfpIR7Dj8r52mFtr", "userId": "zJyFFTJmX3quFGpR"}], "permissions": [{"action": 71, "resource": "ZMNNFK0fCuBd1tkk", "schedAction": 63, "schedCron": "ipJN8nHSItpK0GhH", "schedRange": ["27ybZp8phNHOvJWk", "wVu4PdvWa0e9kN7L", "XjKnBOS5d8R4RqPI"]}, {"action": 37, "resource": "42ozudzLh3uDsuHK", "schedAction": 28, "schedCron": "tXaYLdVREKZP7liB", "schedRange": ["SQjtnUOzUPePJmnt", "wIBz2OCKExWkEgZC", "7GzcbNjI8tZDi0vM"]}, {"action": 23, "resource": "rb3WgkEOBAJfZzVL", "schedAction": 0, "schedCron": "7syIi440VNjVkkjX", "schedRange": ["nP5UZjsguH2MYN15", "WhxaWXYe1dsm4D9T", "g6MDCMswBvUh27qV"]}], "roleName": "QWPxjxy1XETD9UUJ"}' \
    > test.out 2>&1
eval_tap $? 222 'AdminCreateRoleV3' test.out

#- 223 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId '6R7PlsAmry5YTdJO' \
    > test.out 2>&1
eval_tap $? 223 'AdminGetRoleV3' test.out

#- 224 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'I0kKPa8ByCYdV0ae' \
    > test.out 2>&1
eval_tap $? 224 'AdminDeleteRoleV3' test.out

#- 225 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'tR2XVFIJMNyFFYpX' \
    --body '{"deletable": false, "isWildcard": false, "roleName": "O3LZmJA3VEQz6aiT"}' \
    > test.out 2>&1
eval_tap $? 225 'AdminUpdateRoleV3' test.out

#- 226 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'RWiLdgasZG3r1dju' \
    > test.out 2>&1
eval_tap $? 226 'AdminGetRoleAdminStatusV3' test.out

#- 227 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'F8cPT38k08TU5bwE' \
    > test.out 2>&1
eval_tap $? 227 'AdminUpdateAdminRoleStatusV3' test.out

#- 228 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'WTfmaxmYLZCyFcF8' \
    > test.out 2>&1
eval_tap $? 228 'AdminRemoveRoleAdminV3' test.out

#- 229 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'QycBnQS3MsWM45PJ' \
    --after 'ZlqIjEuUB7kZI8B1' \
    --before 'MbwGTmZ3zdw1j4KH' \
    --limit '66' \
    > test.out 2>&1
eval_tap $? 229 'AdminGetRoleManagersV3' test.out

#- 230 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'YVDroGv2hERUoUEo' \
    --body '{"managers": [{"displayName": "y1CJMSmoDWBJtNhh", "namespace": "RGwzTBs6p1pw3Rcd", "userId": "cAaCpCpm5e2LwQqg"}, {"displayName": "6PTmoblUppddVb2O", "namespace": "Wgus8EL4OK8VSwBF", "userId": "s9XA1cEUUzLl58WX"}, {"displayName": "qPTH0KLuKXvRD4J5", "namespace": "Pmsmxv2uF2hHilfW", "userId": "bx6rtFyAYJBGbahl"}]}' \
    > test.out 2>&1
eval_tap $? 230 'AdminAddRoleManagersV3' test.out

#- 231 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'MAFu8KXLSJMlYjcl' \
    --body '{"managers": [{"displayName": "Qvs6droeY6sZeJil", "namespace": "ZrLIfp5jjDKmqcrS", "userId": "fzcZy4s8DWGoACU9"}, {"displayName": "VrXxbQKk4ycipGB8", "namespace": "dUeopCrfSuAiP3aF", "userId": "eEKNuiDAktZvX7jc"}, {"displayName": "wHHoHTgbBuVTJPOD", "namespace": "ljT1L2OXuqhL5YR1", "userId": "UWtYNPxWwhLdJEBf"}]}' \
    > test.out 2>&1
eval_tap $? 231 'AdminRemoveRoleManagersV3' test.out

#- 232 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'h7pQDlMtEnoNOv4T' \
    --after 'UFSt0XMJJA8nOifN' \
    --before 'ILGQNLkEQ33gJeRE' \
    --limit '63' \
    > test.out 2>&1
eval_tap $? 232 'AdminGetRoleMembersV3' test.out

#- 233 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'aLfq5vbdb1WXRaLG' \
    --body '{"members": [{"displayName": "uahQoxBAS1JdXAY6", "namespace": "XiHaXBLAnsL1v4zo", "userId": "WrVJb6geX6XVuzAn"}, {"displayName": "58ljJglvL7vtcWHm", "namespace": "oYb4AL5uWGQBhAaU", "userId": "A35b08H3f1MuUkli"}, {"displayName": "QhwFbzej1q2wXo5c", "namespace": "cDcHFo6yrzZDTBQc", "userId": "IjdlSMFKABrGbNVk"}]}' \
    > test.out 2>&1
eval_tap $? 233 'AdminAddRoleMembersV3' test.out

#- 234 AdminRemoveRoleMembersV3
eval_tap 0 234 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 235 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'UYhbL4VcQndETxNQ' \
    --body '{"permissions": [{"action": 37, "resource": "Yo5SbkD43zyXs2FN", "schedAction": 80, "schedCron": "2mDeQi3ZCTisaFkA", "schedRange": ["lT8lcOdqU6t4YnNp", "lNlnkGAFsqPPlUgJ", "m8Ezq7cN0MDQlRrP"]}, {"action": 45, "resource": "dZL0UEy0H1B1u6lW", "schedAction": 35, "schedCron": "vCOgJm9x6g8U5aZH", "schedRange": ["3CzNXJIuTQMjqpwM", "zf5UuVpy2TUUlb2n", "VFyPFCyZb9wZoUoL"]}, {"action": 17, "resource": "JgqJPSkEruMCFzz9", "schedAction": 76, "schedCron": "AhDpa03ZI2qKPu5b", "schedRange": ["aykZbFQ5a9eBhFUi", "WOFH1kXQwuZKmZNC", "dj6FIhGBMOxI75cc"]}]}' \
    > test.out 2>&1
eval_tap $? 235 'AdminUpdateRolePermissionsV3' test.out

#- 236 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'yv5z8W696Q7HPpGm' \
    --body '{"permissions": [{"action": 59, "resource": "MZkkjndltthZ24vV", "schedAction": 65, "schedCron": "ygMGS0uMl6gUiEIO", "schedRange": ["XwOeF45CAB0y9C0m", "AUGX1XjHypBOEOXk", "KguGtNz3LBexd61a"]}, {"action": 4, "resource": "kQpOzL4NGtTnhNc4", "schedAction": 86, "schedCron": "MtSb6jh2OhiOoGF9", "schedRange": ["1ki7yJ6f7C80qPPZ", "cvDjoLDw6dCfcXIi", "oJWksNR5a2g9hLTs"]}, {"action": 94, "resource": "xZTz7VjD22IwGv9y", "schedAction": 90, "schedCron": "oL0gVTusrQKW6jbf", "schedRange": ["52GDYq0LvXW3Pj5a", "lz1SifDTIxlxxM5O", "0CYhIIQlqIiu9ail"]}]}' \
    > test.out 2>&1
eval_tap $? 236 'AdminAddRolePermissionsV3' test.out

#- 237 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId '7hO91F7GGQkQaAel' \
    --body '["A6z0OImrEHhsn6nU", "UvX3Zxggf85MDVEk", "0HUxiHfPjEhUwL9f"]' \
    > test.out 2>&1
eval_tap $? 237 'AdminDeleteRolePermissionsV3' test.out

#- 238 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '86' \
    --resource '1KMPabuD8pyVBICh' \
    --roleId 'TqdK64FkQ5IqfKga' \
    > test.out 2>&1
eval_tap $? 238 'AdminDeleteRolePermissionV3' test.out

#- 239 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 239 'AdminGetMyUserV3' test.out

#- 240 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'L59xTmNgK1LKQHnl' \
    --extendExp 'false' \
    --redirectUri '5kYOJAKhCSifpraF' \
    --password 'ajUsL74yhUKSjvfe' \
    --requestId 'ux8Vy4cycCp8Rh7E' \
    --userName 'KWaWSESjD3xtPMFX' \
    > test.out 2>&1
eval_tap $? 240 'UserAuthenticationV3' test.out

#- 241 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId '2Rz6Arb2q2boLWnq' \
    --linkingToken 'hMk0UfDEj9oAvQj8' \
    --password 'LqmNvouCy9S33hPp' \
    --username 'WnvK7SrxnY0egyqH' \
    > test.out 2>&1
eval_tap $? 241 'AuthenticationWithPlatformLinkV3' test.out

#- 242 AuthenticateAndLinkForwardV3
samples/cli/sample-apps Iam authenticateAndLinkForwardV3 \
    --extendExp 'false' \
    --clientId 'lH3HEa1BzdqhzMfb' \
    --linkingToken 'Klg2rKxYYyxzDL2e' \
    --password 'emmOrzYWoEho20Gb' \
    --username 'zbJJFafy4BjrDclz' \
    > test.out 2>&1
eval_tap $? 242 'AuthenticateAndLinkForwardV3' test.out

#- 243 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'eXGSBoDB3581PNQ8' \
    --extendExp 'false' \
    --linkingToken 'yz2YkR7wR0t8mDCD' \
    > test.out 2>&1
eval_tap $? 243 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 244 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --redirectUri '7aw8my3It0CALo7o' \
    --state 'jNj76KKHXursTM8B' \
    --platformId 'LZEg4dopsgTV6fj5' \
    > test.out 2>&1
eval_tap $? 244 'RequestOneTimeLinkingCodeV3' test.out

#- 245 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'E9PeFJkj6uxZmenK' \
    > test.out 2>&1
eval_tap $? 245 'ValidateOneTimeLinkingCodeV3' test.out

#- 246 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'kaGzJfPVrjmxe9Zx' \
    --isTransient 'true' \
    --clientId '8GtrCb5P1cyefMUW' \
    --oneTimeLinkCode 'ybhUkUhdNsELhXUt' \
    > test.out 2>&1
eval_tap $? 246 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 247 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 247 'GetCountryLocationV3' test.out

#- 248 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 248 'Logout' test.out

#- 249 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --codeChallenge 'H5UREUaYOGleBDCU' \
    --codeChallengeMethod 'plain' \
    --clientId '2w3kUOh9qMhVM3jU' \
    > test.out 2>&1
eval_tap $? 249 'RequestTokenExchangeCodeV3' test.out

#- 250 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId '87qfx9z0n02ODG2x' \
    --userId 'eWy4zXIYCFD6bXYO' \
    --platformUserId 'hSB18SRQ1G1dvgnZ' \
    > test.out 2>&1
eval_tap $? 250 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 251 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WEfponIRRq8dEENX' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 251 'RevokeUserV3' test.out

#- 252 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --blockedPlatformId '8BbgtNtqlhyyFOUk' \
    --codeChallenge 'oh1cyV4DazqlRE0I' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'true' \
    --loginWebBased 'false' \
    --nonce '9iFI0x92YbMyCMR2' \
    --oneTimeLinkCode 'oUU795b6QzjfRVEc' \
    --redirectUri 'R7a2mZJOu7Hris7f' \
    --scope '3BtRszcDmevq6BSj' \
    --state 'Dv8qWAqelw2gHs4a' \
    --targetAuthPage 'uH0f6KDGttzQ4FuQ' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId '4WdBaikpkdeq7W2v' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 252 'AuthorizeV3' test.out

#- 253 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'MUgSLSqqZjAGwDtP' \
    > test.out 2>&1
eval_tap $? 253 'TokenIntrospectionV3' test.out

#- 254 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 254 'GetJWKSV3' test.out

#- 255 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'I7YYBwgJhJr01Y4Q' \
    --factor 'InTi0fiFcB8r8hTO' \
    --mfaToken 'FQyaj4aoSVSBW1VU' \
    > test.out 2>&1
eval_tap $? 255 'SendMFAAuthenticationCode' test.out

#- 256 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'TIzz0UYQ9dbCNLYa' \
    --mfaToken 'DdHEQgCnsy9EJpej' \
    > test.out 2>&1
eval_tap $? 256 'Change2faMethod' test.out

#- 257 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'Vb5RrmyxmMc1NR5x' \
    --factor '6Ylwi9RtbdebTHqb' \
    --mfaToken 'cQEbJHNzPh4p8e1X' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 257 'Verify2faCode' test.out

#- 258 Verify2faCodeForward
samples/cli/sample-apps Iam verify2faCodeForward \
    --defaultFactor '292gwC3YGolyWL4j' \
    --factors '9TIOXgYtl2B3nBz6' \
    --rememberDevice 'true' \
    --clientId 'bOn3uRNZPwVhPbnH' \
    --code 'nWSWA26XREaLBnbl' \
    --factor 'R4DHK6UYiI5rb5Za' \
    --mfaToken 'khUhPQJA9002e6tS' \
    > test.out 2>&1
eval_tap $? 258 'Verify2faCodeForward' test.out

#- 259 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Jm8cznc1mDW9O7eR' \
    --userId '1aUBKo2NIUlhLjZR' \
    > test.out 2>&1
eval_tap $? 259 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 260 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'zdpnYvz7ARMXeu23' \
    --clientId 'wSsvVbi8EbUe9doR' \
    --redirectUri 'iweGR14iUhYccAPi' \
    --requestId 'i0OHMgpulg5mTw2d' \
    > test.out 2>&1
eval_tap $? 260 'AuthCodeRequestV3' test.out

#- 261 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'jRgPBizjPuGqCwQH' \
    --additionalData 'CtBUxpElU8C1XXVP' \
    --clientId 'frKMeuZ8mSbaZB85' \
    --createHeadless 'true' \
    --deviceId 'eBEHPLWETjH4dLUL' \
    --macAddress '4ec6aUOuwN4xDWi0' \
    --platformToken '4G984HPEqbKhAgoE' \
    --serviceLabel '0.24756062733589035' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 261 'PlatformTokenGrantV3' test.out

#- 262 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 262 'GetRevocationListV3' test.out

#- 263 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'C6NWyW0BmT063bHE' \
    > test.out 2>&1
eval_tap $? 263 'TokenRevocationV3' test.out

#- 264 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'anWHPQWWz3ZPhgwi' \
    --simultaneousTicket 'IhPd5ci7p4JZZdHg' \
    --nativePlatform 'steam' \
    --nativePlatformTicket '3A4gzcl0C20KvLza' \
    > test.out 2>&1
eval_tap $? 264 'SimultaneousLoginV3' test.out

#- 265 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData '5iEWoTJPglf7BTsy' \
    --clientId 'svBivNicYwQ0qOOx' \
    --clientSecret 'gOEFwJZo7tJnbgdB' \
    --code 'YJSN7HMKfKPmCeQb' \
    --codeVerifier 'NBgPAflseDfUrzhw' \
    --extendNamespace 'otRbDiPXhLiKq51z' \
    --extendExp 'true' \
    --password 'Z5L3SlxsnUwqTLvQ' \
    --redirectUri 'nbzB71gEVRYagnPi' \
    --refreshToken 'pqtttRvdDynlGFEk' \
    --scope 'oOvkryj80RAj7nby' \
    --username 'fQ03CW7DRd1rUQXK' \
    --grantType 'refresh_token' \
    > test.out 2>&1
eval_tap $? 265 'TokenGrantV3' test.out

#- 266 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'E2kBWGr15RXlx1nh' \
    > test.out 2>&1
eval_tap $? 266 'VerifyTokenV3' test.out

#- 267 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'myB2ePyRdj3GkWdg' \
    --code 'lhN0awdCDIZwwFB8' \
    --error 'ygRP2gpju5KgRYg8' \
    --openidAssocHandle 'g4JJRMvbGtRw478b' \
    --openidClaimedId 'Tsax9e5ccwMLOw6o' \
    --openidIdentity 'IHXtuj1b8fRn1pw5' \
    --openidMode 'SmKF2xiVnX7vlgMa' \
    --openidNs 'Yr88KYp4EGrTCrd2' \
    --openidOpEndpoint 'A3eOom6KAB94RStT' \
    --openidResponseNonce 'E4QRwRXrwgPKBa0L' \
    --openidReturnTo 'oYLqp3aVh99hvm3T' \
    --openidSig 'IeHY9A0TD0cTgQtO' \
    --openidSigned 'Sh05eWE2XNuSrN3p' \
    --state 'e89BmCEgcjlgbF1I' \
    > test.out 2>&1
eval_tap $? 267 'PlatformAuthenticationV3' test.out

#- 268 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'Afhe9CnlWu5Ip5cA' \
    --platformToken 'Oj5U9OkK4Fufo7jR' \
    > test.out 2>&1
eval_tap $? 268 'PlatformTokenRefreshV3' test.out

#- 269 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode 'ZYpZuMC530HmrJ4G' \
    > test.out 2>&1
eval_tap $? 269 'PublicGetInputValidations' test.out

#- 270 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'KlbASD5SN5loPQJl' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetInputValidationByField' test.out

#- 271 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'pLPkS4jfF62x63UA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 271 'PublicGetCountryAgeRestrictionV3' test.out

#- 272 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'MzsUHo41AxFQqXoP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 272 'PublicGetConfigValueV3' test.out

#- 273 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 273 'PublicGetCountryListV3' test.out

#- 274 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 274 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 275 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'py6gk3fb9896XS2K' \
    > test.out 2>&1
eval_tap $? 275 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 276 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 276 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 277 PublicGetUserByPlatformUserIDV3
eval_tap 0 277 'PublicGetUserByPlatformUserIDV3 # SKIP deprecated' test.out

#- 278 PublicGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam publicGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'dob' \
    > test.out 2>&1
eval_tap $? 278 'PublicGetProfileUpdateStrategyV3' test.out

#- 279 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'gZp3dYO8YF2c8Y3b' \
    > test.out 2>&1
eval_tap $? 279 'PublicGetAsyncStatus' test.out

#- 280 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'LtxxDq8FhoCRVj2d' \
    --limit '38' \
    --offset '34' \
    --platformBy '9ePuLeQdp7Vg3e6u' \
    --platformId 'xKDJzx5qSwpPWcfI' \
    --query '2S6XclfZqzXtd0kv' \
    > test.out 2>&1
eval_tap $? 280 'PublicSearchUserV3' test.out

#- 281 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "ltD01dSwZhC9LVKx", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "ySFUakv73Ujmdlk3", "policyId": "TS9C1xgPrmHnTpUQ", "policyVersionId": "8jG7QBxiwk2YzUH9"}, {"isAccepted": false, "localizedPolicyVersionId": "eIvVBGyagreeYPsP", "policyId": "8TCKnWRkkaWhrlIk", "policyVersionId": "BZRYnGys2vtmunVX"}, {"isAccepted": false, "localizedPolicyVersionId": "EHGems3vJ4peEi5P", "policyId": "gkp0XQwDDZGRd27s", "policyVersionId": "pIJpBNovGZbSKB5R"}], "authType": "vSFnSshKHDtS8OE0", "code": "UgoHv8PAjeEWrndU", "country": "mghdlvHjwTEnrenh", "dateOfBirth": "sY952aZd5p3gADbg", "displayName": "dRSHpiQi9Q2A5z1C", "emailAddress": "df3FCLjPTSBDwGGh", "password": "G3FMhK1PkEDgdxCh", "reachMinimumAge": false, "uniqueDisplayName": "p8jgEimoRBMGQ11b"}' \
    > test.out 2>&1
eval_tap $? 281 'PublicCreateUserV3' test.out

#- 282 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'BU7Sph1hHx7rtxsT' \
    --query '41HUYQjXL4PEafx4' \
    > test.out 2>&1
eval_tap $? 282 'CheckUserAvailability' test.out

#- 283 PublicBulkGetUsers
eval_tap 0 283 'PublicBulkGetUsers # SKIP deprecated' test.out

#- 284 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "UR7pFmaNSoSNHXOS", "languageTag": "wAejykS31o4NqQtr"}' \
    > test.out 2>&1
eval_tap $? 284 'PublicSendRegistrationCode' test.out

#- 285 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Dz47oJuOTQD6LxGo", "emailAddress": "MkqMgF9QdSB1ySKz"}' \
    > test.out 2>&1
eval_tap $? 285 'PublicVerifyRegistrationCode' test.out

#- 286 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "Hc5rRTvqcjuwwxCh", "languageTag": "KgBiFaGfDfM1Whoh"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicForgotPasswordV3' test.out

#- 287 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "8798it3YeSmBBVQF", "password": "fdB9EUmHEinhZ6GH", "uniqueDisplayName": "lZfJHylLZSbHES0s", "username": "GkxdK5MhOswzZo1u"}' \
    > test.out 2>&1
eval_tap $? 287 'PublicValidateUserInput' test.out

#- 288 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'hnqbpSmCXx0ejXeP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 288 'GetAdminInvitationV3' test.out

#- 289 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId '5Ua0bJ61sUY6G5KK' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "PREI5Q34mh5TWucB", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "KaaNcKAJ6YWzbXoy", "policyId": "gawqwICNpBwY1Fam", "policyVersionId": "0KXxSsmKGtJyobnQ"}, {"isAccepted": false, "localizedPolicyVersionId": "GctafG4m8rUKtZXD", "policyId": "3DqgSFMzyV53Mms7", "policyVersionId": "Wj1e1vJHXASNhEl5"}, {"isAccepted": false, "localizedPolicyVersionId": "hSdFGxxHmcAchbgb", "policyId": "qAQpcZaslzyl5qiD", "policyVersionId": "Ns7ZNmsVMI0vL7Kd"}], "authType": "Ft75tRABJVdf7T0S", "code": "vYWSlHAjYAEohyCu", "country": "QPkgxc7w20Rh1sm4", "dateOfBirth": "6lMCER9QQ7RUEkcu", "displayName": "jJRkCIJEPxpFKvn5", "emailAddress": "lAA8kHW6fm7IxvQC", "password": "Rv92eITKYpdj6SRj", "reachMinimumAge": false, "uniqueDisplayName": "rufc2QWWbttzk2t1"}' \
    > test.out 2>&1
eval_tap $? 289 'CreateUserFromInvitationV3' test.out

#- 290 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "CAFKuZz7fYb5ABGi", "country": "DAo1FEDtTME2SQZ2", "dateOfBirth": "wbX4O91WyU3D1mA7", "displayName": "LgH5lf5jVBEufYUX", "languageTag": "wiluCPWvBHI0zkKW", "uniqueDisplayName": "TgnwozWZ9O0AUZXS", "userName": "igIDR9mf3qUwqehB"}' \
    > test.out 2>&1
eval_tap $? 290 'UpdateUserV3' test.out

#- 291 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "XbWUCGxuXZWLYg7o", "country": "zup6PC4GtiJr2GUE", "dateOfBirth": "rlgS7o5yxZn9Ajcy", "displayName": "zg8EG3ioCEBWsGdp", "languageTag": "wOuO8d8oxv3ulIUR", "uniqueDisplayName": "uF8kHJwu1egmZg9H", "userName": "VilBEHMmdJAJMWpQ"}' \
    > test.out 2>&1
eval_tap $? 291 'PublicPartialUpdateUserV3' test.out

#- 292 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "d2BlocEkasAGQPRm", "emailAddress": "on8bjsqx261Sylm6", "languageTag": "Xoicc0U4ziwNaqTX", "upgradeToken": "4cWRr5msCXTsRaAp"}' \
    > test.out 2>&1
eval_tap $? 292 'PublicSendVerificationCodeV3' test.out

#- 293 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "xj4GuvJZNbIMdrjB", "contactType": "SGsHWiBivU84BRWD", "languageTag": "x8azaHPfE7jSBJnB", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 293 'PublicUserVerificationV3' test.out

#- 294 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "kaaSUOzC4n0X7qd1", "country": "nxOucsYjH9OaxBSZ", "dateOfBirth": "ZL69RD4uGKxSPWVZ", "displayName": "zu2xh9yUNT02aAvh", "emailAddress": "VPtoSLNjYJLdibZb", "password": "kN0C5whwpLaaICCR", "uniqueDisplayName": "gp4ms5Q5cOS0Avsi", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 294 'PublicUpgradeHeadlessAccountV3' test.out

#- 295 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "TcdA3g9y0qVjIgEE", "password": "SX2WIFpsWxnTVR8n"}' \
    > test.out 2>&1
eval_tap $? 295 'PublicVerifyHeadlessAccountV3' test.out

#- 296 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "wmHOvzOuNrBzBanu", "mfaToken": "BWrI4X3gMwVHmCRv", "newPassword": "yhLw7ryqPlfU6hOP", "oldPassword": "spZMaVAOiVSyjMZ7"}' \
    > test.out 2>&1
eval_tap $? 296 'PublicUpdatePasswordV3' test.out

#- 297 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '2TRcAPvPoiXDK4IG' \
    > test.out 2>&1
eval_tap $? 297 'PublicCreateJusticeUser' test.out

#- 298 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'cExjadOtEPMyZe2s' \
    --redirectUri 'cq9iN751gSYdaWg9' \
    --ticket 'VSVM5kyehCkND5HO' \
    > test.out 2>&1
eval_tap $? 298 'PublicPlatformLinkV3' test.out

#- 299 PublicPlatformUnlinkV3
eval_tap 0 299 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 300 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Id08mUjjHpGi7Opj' \
    > test.out 2>&1
eval_tap $? 300 'PublicPlatformUnlinkAllV3' test.out

#- 301 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'zd5nGYWQFK5lhdLI' \
    --ticket '058ZQRixMJmr4G12' \
    > test.out 2>&1
eval_tap $? 301 'PublicForcePlatformLinkV3' test.out

#- 302 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'XdcPBcIAASJJg9cT' \
    --clientId 'Y1SPUQiKCVDdB7Js' \
    --redirectUri 'BnmTBCRFY3Wl8Bqn' \
    > test.out 2>&1
eval_tap $? 302 'PublicWebLinkPlatform' test.out

#- 303 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'ZaEInLwc7sxpJZKO' \
    --code 'ihBvkk75j03ha3yC' \
    --state 'rVCrLszMp0FaAo1K' \
    > test.out 2>&1
eval_tap $? 303 'PublicWebLinkPlatformEstablish' test.out

#- 304 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'CMiRuJuG6esxh7wK' \
    --code '8UVQT9aCE95D7Zv6' \
    --state '39Ds34oo7TYe4sDG' \
    > test.out 2>&1
eval_tap $? 304 'PublicProcessWebLinkPlatformV3' test.out

#- 305 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "iW2d5GHPzB95QCF4", "userIds": ["C7oQylyQLqX8ZtdJ", "xCkAaZj5lSi4RTi2", "wvtDqLXKO3aUavNB"]}' \
    > test.out 2>&1
eval_tap $? 305 'PublicGetUsersPlatformInfosV3' test.out

#- 306 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "F4qvSSxlYnbUP3ez", "code": "yvXTlLrXgMb7Z0ve", "emailAddress": "NvI5AM6bOliUNyV3", "languageTag": "SfcuGmyPRyxKg6oH", "newPassword": "DXDRIWyXzVb1YNHz"}' \
    > test.out 2>&1
eval_tap $? 306 'ResetPasswordV3' test.out

#- 307 PublicGetUserByUserIdV3
eval_tap 0 307 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 308 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LYMbmEmafZvtc4Vq' \
    --activeOnly 'true' \
    --after 'H6TZRvbgKzBlzZQM' \
    --before 'MOs4fGJgaaWRJ0ob' \
    --limit '20' \
    > test.out 2>&1
eval_tap $? 308 'PublicGetUserBanHistoryV3' test.out

#- 309 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'MoLl9s6SI3MIEdkc' \
    > test.out 2>&1
eval_tap $? 309 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 310 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WL6D6xvmymTw1tgp' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetUserInformationV3' test.out

#- 311 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'JeEAaFdjUNaaZiHw' \
    --after '0.064707136818829' \
    --before '0.496321337387272' \
    --limit '57' \
    > test.out 2>&1
eval_tap $? 311 'PublicGetUserLoginHistoriesV3' test.out

#- 312 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BwHAcL0cX3Zg1j6m' \
    --after 'm5RRGdpVmJJSu20d' \
    --before 'DprrDg8hXJaL3Gvw' \
    --limit '26' \
    --platformId 'GUuFoH9ndiJryc9q' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetUserPlatformAccountsV3' test.out

#- 313 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'D3AVqJysIdexUmwK' \
    > test.out 2>&1
eval_tap $? 313 'PublicListJusticePlatformAccountsV3' test.out

#- 314 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '8j6lmB7CrcyphxKw' \
    --body '{"platformId": "t2NgdqPaPBh2XqhP", "platformUserId": "MIkvkuMAIYW36O7k"}' \
    > test.out 2>&1
eval_tap $? 314 'PublicLinkPlatformAccount' test.out

#- 315 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId '6YOMX9kpOj5EIBYB' \
    --body '{"chosenNamespaces": ["F8CqNMLHOQ2QvWNI", "DxYvHYryulwWPA9e", "wvbevY9FjDqKTwsD"], "requestId": "QD0uPR1KOEr1Gdf6"}' \
    > test.out 2>&1
eval_tap $? 315 'PublicForceLinkPlatformWithProgression' test.out

#- 316 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'SNgycD7o1fmVCUvc' \
    > test.out 2>&1
eval_tap $? 316 'PublicGetPublisherUserV3' test.out

#- 317 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BxVKmiCnIoDvpM9i' \
    --password 'VbYWhnSaRCRdWMzW' \
    > test.out 2>&1
eval_tap $? 317 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 318 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'XPv4KEupn5u64cyl' \
    --before '2Hz2xShQw2c1Mqn1' \
    --isWildcard 'true' \
    --limit '48' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetRolesV3' test.out

#- 319 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'zAsgBinAdRSYDXCX' \
    > test.out 2>&1
eval_tap $? 319 'PublicGetRoleV3' test.out

#- 320 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'true' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetMyUserV3' test.out

#- 321 PublicSendCodeForwardV3
samples/cli/sample-apps Iam publicSendCodeForwardV3 \
    --body '{"context": "MLLVdBXQwBKg4iIR", "emailAddress": "nLZ2a4edsZudKplo", "languageTag": "ziu2Gpqe0TORNA0Q", "upgradeToken": "vy5onbQIIuJk2y9h"}' \
    > test.out 2>&1
eval_tap $? 321 'PublicSendCodeForwardV3' test.out

#- 322 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'yOogjofHYYH4jyuo' \
    > test.out 2>&1
eval_tap $? 322 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 323 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["bBWkytwy7hkl3Cze", "4RVNg8miVUFoWtnY", "5s7irV6X9hOyLXLr"], "oneTimeLinkCode": "Ze1vA0ixqoWniWwD"}' \
    > test.out 2>&1
eval_tap $? 323 'LinkHeadlessAccountToMyAccountV3' test.out

#- 324 PublicGetMyRedirectionAfterLinkV3
samples/cli/sample-apps Iam publicGetMyRedirectionAfterLinkV3 \
    --oneTimeLinkCode 'ouwNJahCJNpxAqpt' \
    > test.out 2>&1
eval_tap $? 324 'PublicGetMyRedirectionAfterLinkV3' test.out

#- 325 PublicGetMyProfileAllowUpdateStatusV3
samples/cli/sample-apps Iam publicGetMyProfileAllowUpdateStatusV3 \
    > test.out 2>&1
eval_tap $? 325 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 326 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "iuccgKKmTp2WMRS8"}' \
    > test.out 2>&1
eval_tap $? 326 'PublicSendVerificationLinkV3' test.out

#- 327 PublicGetOpenidUserInfoV3
samples/cli/sample-apps Iam publicGetOpenidUserInfoV3 \
    > test.out 2>&1
eval_tap $? 327 'PublicGetOpenidUserInfoV3' test.out

#- 328 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code '0A1X3hUBcwxACMjj' \
    > test.out 2>&1
eval_tap $? 328 'PublicVerifyUserByLinkV3' test.out

#- 329 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'ucPsHJndjR4fI3Hb' \
    --code 'PhKBeBBZcQ3WBbPO' \
    --error 'eDZHxjkcASEJNs3P' \
    --state 'oLvrF4mLBPeO8zEA' \
    > test.out 2>&1
eval_tap $? 329 'PlatformAuthenticateSAMLV3Handler' test.out

#- 330 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'DQrxlBsfVUUc3e0e' \
    --payload 'TgIv1ggRkd309YWx' \
    > test.out 2>&1
eval_tap $? 330 'LoginSSOClient' test.out

#- 331 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'zfQAdvrNobuAxujG' \
    > test.out 2>&1
eval_tap $? 331 'LogoutSSOClient' test.out

#- 332 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'X4LpqWfaM5tJdOqf' \
    --code 'uL0NHWu5tKw6KMFz' \
    > test.out 2>&1
eval_tap $? 332 'RequestTargetTokenResponseV3' test.out

#- 333 UpgradeAndAuthenticateForwardV3
samples/cli/sample-apps Iam upgradeAndAuthenticateForwardV3 \
    --clientId 'uVvDbgZWVZnT16Q7' \
    --upgradeSuccessToken 'ifROx2O3ieNvmEPD' \
    > test.out 2>&1
eval_tap $? 333 'UpgradeAndAuthenticateForwardV3' test.out

#- 334 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '32' \
    --namespace 'ofxBll7TQzHpYva6' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 334 'AdminListInvitationHistoriesV4' test.out

#- 335 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ECBILHjVea0QbheF' \
    > test.out 2>&1
eval_tap $? 335 'AdminGetDevicesByUserV4' test.out

#- 336 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'eWxgDzDum0LfM0X4' \
    --endDate 'Nx18Ml3uhr5nSak2' \
    --limit '96' \
    --offset '66' \
    --startDate 'p58ioo4EHigxQe4O' \
    > test.out 2>&1
eval_tap $? 336 'AdminGetBannedDevicesV4' test.out

#- 337 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'rnJ4nmVK3ykDmwZU' \
    > test.out 2>&1
eval_tap $? 337 'AdminGetUserDeviceBansV4' test.out

#- 338 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "Ts7S0sKP77ZmjviI", "deviceId": "FeZZzZLevlp3jiaA", "deviceType": "EXALqkPRm0TVJkkH", "enabled": false, "endDate": "WTdAI1L04mNNj0sU", "ext": {"QifyBqUQnVS6gIG7": {}, "KraskwXF8YalGVuI": {}, "s7NyFgsXKhgmiyYS": {}}, "reason": "Aj2jUCJMRzj0AX94"}' \
    > test.out 2>&1
eval_tap $? 338 'AdminBanDeviceV4' test.out

#- 339 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'KmrpljtJ47Q1P6vy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 339 'AdminGetDeviceBanV4' test.out

#- 340 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'pRwAUEDfdLhwXZ5t' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 340 'AdminUpdateDeviceBanV4' test.out

#- 341 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'xZVpu9DCXHS0igde' \
    --startDate 'y1gKn6gVp8sINVVP' \
    --deviceType '1ci6sRkoxavzFRgD' \
    > test.out 2>&1
eval_tap $? 341 'AdminGenerateReportV4' test.out

#- 342 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'AdminGetDeviceTypesV4' test.out

#- 343 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'K8cQZTT238ViLsNa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 343 'AdminGetDeviceBansV4' test.out

#- 344 AdminDecryptDeviceV4
eval_tap 0 344 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 345 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'TKmz7dKFf8OD4vg5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 345 'AdminUnbanDeviceV4' test.out

#- 346 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'ZN760WKWhs91SYb5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 346 'AdminGetUsersByDeviceV4' test.out

#- 347 AdminGetNamespaceInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 347 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 348 AdminGetNamespaceUserInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceUserInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 348 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 349 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 28, "userInfo": {"country": "2NspIBGakXBp7H96"}}' \
    > test.out 2>&1
eval_tap $? 349 'AdminCreateTestUsersV4' test.out

#- 350 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "0YoGwMLhbem3cy1p", "policyId": "dSqmnpT4Q3C8CHWZ", "policyVersionId": "UXVjPjbl26UUejOj"}, {"isAccepted": true, "localizedPolicyVersionId": "XRPHU8qC3rBSGnq5", "policyId": "pnjFbCqEFlEbl8Th", "policyVersionId": "VgiVG2mn3gx4tkYs"}, {"isAccepted": true, "localizedPolicyVersionId": "4W9nc70JYdtUzWN2", "policyId": "OEpNktClBMPxxjQs", "policyVersionId": "XfH1AFZqEMypm7ai"}], "authType": "EMAILPASSWD", "code": "xIHZDF1kwZD2sZVT", "country": "ho30lGTHfNCORbfq", "dateOfBirth": "aPR8PV3wE3uY3Iqq", "displayName": "8sS3ru1acX7QI17F", "emailAddress": "2lX2cvR9AWLrRqdy", "password": "Iwr7ZrWF39zDEoVs", "passwordMD5Sum": "AwAlZz5BLQ75atcb", "reachMinimumAge": true, "uniqueDisplayName": "M0byKm7iGkF3tjOf", "username": "wKaTfIUSq6jEHcBl"}' \
    > test.out 2>&1
eval_tap $? 350 'AdminCreateUserV4' test.out

#- 351 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": true, "userIds": ["WAUR2sSyWbyfZqpH", "3Ya2qfNdfJL8LnEk", "UTkOfPkhGN1v7XBF"]}' \
    > test.out 2>&1
eval_tap $? 351 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 352 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["XWVGJ9tfkTLQB7gH", "xbhD4ovcWXI09LDL", "Hp0qsJnA8Vwp9K81"]}' \
    > test.out 2>&1
eval_tap $? 352 'AdminBulkCheckValidUserIDV4' test.out

#- 353 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'x3vOeuRR79nvyZJa' \
    --body '{"avatarUrl": "nE5dD1sfSs3zK7KD", "country": "XoFCmGPV2DtkkZXQ", "dateOfBirth": "IUyuNibtRDOptWHr", "displayName": "g397QqN1yasWgrxl", "languageTag": "4lmgNT7tNhp6p3Y9", "skipLoginQueue": false, "tags": ["XcwMNVImzgu22htd", "9oL0qsydncMAiXeY", "xrnxnmIGTLPwrNcc"], "uniqueDisplayName": "I1OTUI7HLf25CkNk", "userName": "pK5T7Otf8T5vFvXV"}' \
    > test.out 2>&1
eval_tap $? 353 'AdminUpdateUserV4' test.out

#- 354 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId '5B6FZuh9OcT1AsCs' \
    --body '{"code": "95cwGHdZhIVxnWzQ", "emailAddress": "f05cO896FqYyICLO"}' \
    > test.out 2>&1
eval_tap $? 354 'AdminUpdateUserEmailAddressV4' test.out

#- 355 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'o0Nc6WNHZevTqTzb' \
    --body '{"factor": "lVaIUp3in94Mvbhm", "mfaToken": "XOkPE9Hzon57RBps"}' \
    > test.out 2>&1
eval_tap $? 355 'AdminDisableUserMFAV4' test.out

#- 356 AdminGetUserMFAStatusV4
samples/cli/sample-apps Iam adminGetUserMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    --userId 'lPIdKhLbZ0ic3rIs' \
    > test.out 2>&1
eval_tap $? 356 'AdminGetUserMFAStatusV4' test.out

#- 357 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'YVQezXOBm0jXbba8' \
    > test.out 2>&1
eval_tap $? 357 'AdminListUserRolesV4' test.out

#- 358 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Qcodpx4no30fyM2H' \
    --body '{"assignedNamespaces": ["UkAoBAdAEIMLOJLw", "3qDNhM8XmjJVFzww", "ADFAiZNLVMD6pKO0"], "roleId": "P0XsfUQ6cI57Jbcf"}' \
    > test.out 2>&1
eval_tap $? 358 'AdminUpdateUserRoleV4' test.out

#- 359 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '7aBuq1PE9yjUDz3a' \
    --body '{"assignedNamespaces": ["yWWl87c8ycr0fBjT", "uCQoz8D7CXEkNn6m", "OO3VstQKos8bZyoc"], "roleId": "ehEwEoeeLU6LFbCX"}' \
    > test.out 2>&1
eval_tap $? 359 'AdminAddUserRoleV4' test.out

#- 360 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ZUnXLO9IS7QIT4NJ' \
    --body '{"assignedNamespaces": ["Y8kyCXtQQ6ryITda", "PvpkZEv0C4iwazBT", "PjVhwZJv5okkTcH3"], "roleId": "xAZtKHzQVP6HBKl7"}' \
    > test.out 2>&1
eval_tap $? 360 'AdminRemoveUserRoleV4' test.out

#- 361 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'true' \
    --limit '7' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 361 'AdminGetRolesV4' test.out

#- 362 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "T96jH5hgfRkX8GZk"}' \
    > test.out 2>&1
eval_tap $? 362 'AdminCreateRoleV4' test.out

#- 363 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId '2xuIzYToprw3DLWB' \
    > test.out 2>&1
eval_tap $? 363 'AdminGetRoleV4' test.out

#- 364 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'A6tcVjIzBgXhn7Su' \
    > test.out 2>&1
eval_tap $? 364 'AdminDeleteRoleV4' test.out

#- 365 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'cWMPKTRWSKTBnm0V' \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "jOUlUUX9bvAvlnEh"}' \
    > test.out 2>&1
eval_tap $? 365 'AdminUpdateRoleV4' test.out

#- 366 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId '6c5ZRAxfaq6izXuq' \
    --body '{"permissions": [{"action": 42, "resource": "bwQGAMnFsLcJtcfH", "schedAction": 48, "schedCron": "P73olv4vIdxYT3T9", "schedRange": ["kOb5YeCiyxLTiFaG", "nY7OF20cLL1xxC46", "p0RfuWn07JhHmDlo"]}, {"action": 33, "resource": "8DHdLUchDnv06G7N", "schedAction": 97, "schedCron": "LVDNmFPYyOESUcgw", "schedRange": ["NNhriXh7zvv1XSbc", "XBktVcMGHSP5A9V3", "xh80sjCHAAbyHVUf"]}, {"action": 6, "resource": "kE5HDztGBnrd3lnz", "schedAction": 36, "schedCron": "zT0uLaaO4DzKDUpE", "schedRange": ["m9Iqi8EqOmIS3UEz", "1mQdPJ7Ho91wf9cE", "p4AbV9NME91WpOnU"]}]}' \
    > test.out 2>&1
eval_tap $? 366 'AdminUpdateRolePermissionsV4' test.out

#- 367 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'spVBlkGfX8pQAU8n' \
    --body '{"permissions": [{"action": 56, "resource": "snqLT0EUMwIIC3dz", "schedAction": 95, "schedCron": "ToKIvYQNILaPEZuw", "schedRange": ["90IOkn35TGPx46OK", "ak3HJILdLjA4CoO6", "iVrneUkeXkdP8Ulh"]}, {"action": 18, "resource": "oRXMZiQWYkn1SfiW", "schedAction": 75, "schedCron": "1MwnGA1kUEHmi3lO", "schedRange": ["LGOvWWGzVse2SSO9", "lQ67QIXjEMeTQC5H", "FTmZw6M5AFWLC90D"]}, {"action": 86, "resource": "6qBits6H3iitgcGF", "schedAction": 10, "schedCron": "zURFdXjK52tuVZ1R", "schedRange": ["vvrHUZ22BBY3ReTg", "pJjIofNSWu4QRa6O", "AT91EZncqXGq6qoy"]}]}' \
    > test.out 2>&1
eval_tap $? 367 'AdminAddRolePermissionsV4' test.out

#- 368 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'N16sTcOlepOSAPIX' \
    --body '["UYcTWvxMYaRpHeqk", "LmdxVU7Zp0febPRn", "RkheY9CYUWIUpwr7"]' \
    > test.out 2>&1
eval_tap $? 368 'AdminDeleteRolePermissionsV4' test.out

#- 369 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'UshHDaP58CNruIQ6' \
    --after 'MSXhjYktrUzM6CXn' \
    --before '4JjJ3a5al1cQPCkK' \
    --limit '57' \
    > test.out 2>&1
eval_tap $? 369 'AdminListAssignedUsersV4' test.out

#- 370 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'vb7nK92HMeVyJjqB' \
    --body '{"assignedNamespaces": ["Nv9fgD2reRES5gFD", "zfCAz4oN9YMb203Y", "Wq7h0Py1Yv4ZqzgW"], "namespace": "UxqQIUxEV4hgztma", "userId": "Uz3cAjzt4AMx0UI2"}' \
    > test.out 2>&1
eval_tap $? 370 'AdminAssignUserToRoleV4' test.out

#- 371 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId '7PzoFhM3jrKQC1Qh' \
    --body '{"namespace": "NV6yBzJu7oixaMAJ", "userId": "e9RPqFhisSZGY2ah"}' \
    > test.out 2>&1
eval_tap $? 371 'AdminRevokeUserFromRoleV4' test.out

#- 372 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["VXD1mpE90hcVzCjb", "027RGUTDQINauPfh", "ysVUY9LIVwAMFteg"], "emailAddresses": ["lk9KRYAaif6CcktD", "8Iy0G04sbLnXRw1y", "OSzCqpuRzgEgIZhm"], "isAdmin": true, "isNewStudio": false, "languageTag": "P2PBjJWD4S2G668l", "namespace": "pcWGAc0ZJvlTAXsy", "roleId": "3Fh2TW0NJGflQiZX"}' \
    > test.out 2>&1
eval_tap $? 372 'AdminInviteUserNewV4' test.out

#- 373 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "EKHbfBFagDVZZJq8", "country": "ojWNkdA8GjLr5Orc", "dateOfBirth": "gF4ox498VndGicB2", "displayName": "6hFHKz9gcKSEp8gv", "languageTag": "rmbFo3Iphr9tYTHm", "skipLoginQueue": true, "tags": ["ED2ii0k2l1y4q4G0", "D948MT0tNjmRPb1E", "ZmBMK1oFdAWKwfNa"], "uniqueDisplayName": "4AP8Ft9A2Qff1rda", "userName": "VPiwOj2HI9aSUFn1"}' \
    > test.out 2>&1
eval_tap $? 373 'AdminUpdateMyUserV4' test.out

#- 374 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"factor": "HBK2GrnXyVU97Hjs", "mfaToken": "mASsMLxYFcTLeeIZ"}' \
    > test.out 2>&1
eval_tap $? 374 'AdminDisableMyAuthenticatorV4' test.out

#- 375 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'kPdxaGq4v57a2U01' \
    > test.out 2>&1
eval_tap $? 375 'AdminEnableMyAuthenticatorV4' test.out

#- 376 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 376 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 377 AdminGetMyBackupCodesV4
eval_tap 0 377 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 378 AdminGenerateMyBackupCodesV4
eval_tap 0 378 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 379 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    --body '{"factor": "SjKjAsSiGo7EnPP6", "mfaToken": "tY0cSFzB6UKN1lBj"}' \
    > test.out 2>&1
eval_tap $? 379 'AdminDisableMyBackupCodesV4' test.out

#- 380 AdminDownloadMyBackupCodesV4
eval_tap 0 380 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 381 AdminEnableMyBackupCodesV4
eval_tap 0 381 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 382 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag '4boOzxdYEhpqliiu' \
    > test.out 2>&1
eval_tap $? 382 'AdminGetBackupCodesV4' test.out

#- 383 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag 'sQLtZh1W1loXKeNX' \
    > test.out 2>&1
eval_tap $? 383 'AdminGenerateBackupCodesV4' test.out

#- 384 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag 'QOXXgu5t0NXMzVCQ' \
    > test.out 2>&1
eval_tap $? 384 'AdminEnableBackupCodesV4' test.out

#- 385 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code 'Ze4i4c7oXBNs4N3F' \
    --factor 'H3P6SjIyImrsshpb' \
    > test.out 2>&1
eval_tap $? 385 'AdminChallengeMyMFAV4' test.out

#- 386 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action 'N16TFjMFuErOIKlz' \
    --languageTag '1OP4f4OOUWSGcbtj' \
    > test.out 2>&1
eval_tap $? 386 'AdminSendMyMFAEmailCodeV4' test.out

#- 387 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"factor": "KGoK0Ija4XNJNNHq", "mfaToken": "JLe3gk3UPluyphE4"}' \
    > test.out 2>&1
eval_tap $? 387 'AdminDisableMyEmailV4' test.out

#- 388 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'iTnFMpx6IRLyKtYs' \
    > test.out 2>&1
eval_tap $? 388 'AdminEnableMyEmailV4' test.out

#- 389 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 389 'AdminGetMyEnabledFactorsV4' test.out

#- 390 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'siA7UkI4z0QiXFav' \
    > test.out 2>&1
eval_tap $? 390 'AdminMakeFactorMyDefaultV4' test.out

#- 391 AdminGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam adminGetMyOwnMFAStatusV4 \
    > test.out 2>&1
eval_tap $? 391 'AdminGetMyOwnMFAStatusV4' test.out

#- 392 AdminGetMyMFAStatusV4
eval_tap 0 392 'AdminGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 393 AdminInviteUserV4
eval_tap 0 393 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 394 AuthenticationWithPlatformLinkV4
samples/cli/sample-apps Iam authenticationWithPlatformLinkV4 \
    --extendExp 'false' \
    --clientId 'sbox1IKpFCgjxISY' \
    --linkingToken 'bOBmF3nxKlkYyQGa' \
    --password 'X3WXHcbwtHeY7LgB' \
    --username 'nsZmynp1MQXD1No7' \
    > test.out 2>&1
eval_tap $? 394 'AuthenticationWithPlatformLinkV4' test.out

#- 395 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'VFUh9sB7MKuvpznX' \
    --extendExp 'false' \
    --linkingToken 'ch1i3LekbbJ0d0Q4' \
    > test.out 2>&1
eval_tap $? 395 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 396 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'z13aInuUygVUgEXD' \
    --factor 'nSAx24z7ssZ6uWlW' \
    --mfaToken 'sLalNMkepSNfY8Zh' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 396 'Verify2faCodeV4' test.out

#- 397 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'G0qatK9iWjBPmZfK' \
    --codeChallenge 'rATx1efxu9sQ5I60' \
    --codeChallengeMethod 'S256' \
    --additionalData 'LxRSKBxezypaOj8j' \
    --clientId 'zeZKlLXlys5hqNVq' \
    --createHeadless 'false' \
    --deviceId 'm5Cjg8CYlxsgvLFH' \
    --macAddress 'v0Pd0wFOqGVMkatJ' \
    --platformToken 'qYKShvY29seCh68L' \
    --serviceLabel '0.10696155595642565' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 397 'PlatformTokenGrantV4' test.out

#- 398 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'JfFkUhbdOhdoNOkl' \
    --codeChallengeMethod 'plain' \
    --simultaneousPlatform 'z6BUlcBOMxBNOQar' \
    --simultaneousTicket 'dNmYnlaQxjshsGut' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket 'LXmkbipK913pNsb0' \
    > test.out 2>&1
eval_tap $? 398 'SimultaneousLoginV4' test.out

#- 399 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge 'y0b0SquaF41ugfaI' \
    --codeChallengeMethod 'plain' \
    --additionalData 'hchifTaqg8yMRkNn' \
    --clientId 'RjmGbtz26TMBvD0z' \
    --clientSecret 'ydjS6iQGPZzfwQnb' \
    --code 'xSqbmhcAjUbsVa4z' \
    --codeVerifier 'D8cahrRa3BjElS2S' \
    --extendNamespace 'Ti0wnP26rVtIhhHj' \
    --extendExp 'false' \
    --loginQueueTicket 'TXubgIuOEEEuM1jp' \
    --password 'IaM4mjWPy4ve1kMm' \
    --redirectUri 'ovEbaVM6LFQVDaVf' \
    --refreshToken 'pvtAxDYVWvZpdj3q' \
    --scope 'm3ObHLtu7EJK9ZxI' \
    --username 'Lwv9TheoNwf1W2Jg' \
    --grantType 'client_credentials' \
    > test.out 2>&1
eval_tap $? 399 'TokenGrantV4' test.out

#- 400 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'wvtx7ElCwxScedBi' \
    --code 'nM606NrzeOME21Cm' \
    > test.out 2>&1
eval_tap $? 400 'RequestTargetTokenResponseV4' test.out

#- 401 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId 's9l9hxehVUdje041' \
    --rawPUID 'true' \
    --body '{"pidType": "ws9DBtRGiOwI3n7X", "platformUserIds": ["uZniDeNC5Mm9vYQf", "SJQXKkQEuCJigyOb", "OKN7Q7amR0FNekdj"]}' \
    > test.out 2>&1
eval_tap $? 401 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 402 PublicGetUserByPlatformUserIDV4
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'C66InGYU1vLLTvq1' \
    --platformUserId 'fOMixaDN8L2wqx0M' \
    > test.out 2>&1
eval_tap $? 402 'PublicGetUserByPlatformUserIDV4' test.out

#- 403 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "SESJt0yCLZKQtnN9", "policyId": "0fCIFJCs8oPZScku", "policyVersionId": "orzHzasnhBLzRQIH"}, {"isAccepted": true, "localizedPolicyVersionId": "vU8TuRt27NPhb7zn", "policyId": "0NDyMIvMipCummCW", "policyVersionId": "EnhylnKd5XGfRzAa"}, {"isAccepted": false, "localizedPolicyVersionId": "fwH7TtWxue6Pmfm6", "policyId": "y4tUcfrTcf7urhIO", "policyVersionId": "hzXs9sEAMIc0ywyp"}], "authType": "EMAILPASSWD", "country": "QeEtwMdjoxs06IV5", "dateOfBirth": "AsadjvGlAeg12bHk", "displayName": "5G58DhWlsCrdgVSK", "emailAddress": "Neku0lxo7buzFR7F", "password": "uzW41bK1UdTYA1ky", "passwordMD5Sum": "tROpjlvgp3S2UOBc", "uniqueDisplayName": "I9OUdRNquijVPqjJ", "username": "jpOvkfWgEzuZ49wp", "verified": true}' \
    > test.out 2>&1
eval_tap $? 403 'PublicCreateTestUserV4' test.out

#- 404 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "rsA94fJa6ZXA2bFh", "policyId": "dUuBRZbaSjPLfgTA", "policyVersionId": "QOLDw80i4SCgx1Qz"}, {"isAccepted": false, "localizedPolicyVersionId": "mbJQXPR6vixCaSBZ", "policyId": "RXZ7rNqQ9nSTLQqj", "policyVersionId": "pvUuEmNvRmW5BAEx"}, {"isAccepted": false, "localizedPolicyVersionId": "PdEcZWoIZ8Ikjc9F", "policyId": "m8iTGQmHiYUSL3Vw", "policyVersionId": "4GquS5yKEVBhopZu"}], "authType": "EMAILPASSWD", "code": "p5zYH868UvnwQ4yc", "country": "0GwLsFVfN2a7zHc3", "dateOfBirth": "lmG16oOv26LIfLnM", "displayName": "MmXkd5wCZfz7r70r", "emailAddress": "JyLVPU09DF01v8hR", "password": "uM6kZmWkYUA8U8WS", "passwordMD5Sum": "ag3sHsunkJapjGtJ", "reachMinimumAge": false, "uniqueDisplayName": "iCf51E7KeHNHadT4", "username": "DxafV2Jr3Sgzb3Rz"}' \
    > test.out 2>&1
eval_tap $? 404 'PublicCreateUserV4' test.out

#- 405 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'pme8CxhROAq75Mgj' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "EopOEup8yd9L9iML", "policyId": "SrOtmfDxfm8I0MN5", "policyVersionId": "Wg36CAr6j17zeVqV"}, {"isAccepted": true, "localizedPolicyVersionId": "uF1DuAnNdEAa1pa4", "policyId": "trCB7ukFMdcy68cr", "policyVersionId": "PXD2KnthNEEDSCkt"}, {"isAccepted": true, "localizedPolicyVersionId": "EcpvatuAP5Amwmxd", "policyId": "zVCx5WjDpnrYu1hW", "policyVersionId": "VACAbPdlQvBj9b7E"}], "authType": "EMAILPASSWD", "code": "Vuwd7T8NCed3DRJq", "country": "5zowdBFYa87m4HDy", "dateOfBirth": "8lpZKoD02wLDnPss", "displayName": "oD32tEmRIe7Tt0Yd", "emailAddress": "bfDi6zCYewD1aHH5", "password": "XLkHDJQpBHGhNxr2", "passwordMD5Sum": "9UoscKa3KixuWlw7", "reachMinimumAge": true, "uniqueDisplayName": "AqpkdjC6zYXtN9GW", "username": "lF2nxPIlnxfiIhhT"}' \
    > test.out 2>&1
eval_tap $? 405 'CreateUserFromInvitationV4' test.out

#- 406 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "zzauLQsAW3VSuaiv", "country": "aki2VZthjKEIFray", "dateOfBirth": "udcfE4TeuIkgfokl", "displayName": "t5Wst8gR943Eij7q", "languageTag": "mhwTUAeqPITb1n8x", "uniqueDisplayName": "YnaosLmZHVw93H6y", "userName": "Qk4snHgCpRCYTzHa"}' \
    > test.out 2>&1
eval_tap $? 406 'PublicUpdateUserV4' test.out

#- 407 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "wBjwRRJvhtmHGegP", "emailAddress": "8hdGxQwWeObjLy3D"}' \
    > test.out 2>&1
eval_tap $? 407 'PublicUpdateUserEmailAddressV4' test.out

#- 408 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "LIl5x0osNkFZtXTu", "country": "WGSqSnaEb8UI4xjh", "dateOfBirth": "6XT98mqd1gGwlZHO", "displayName": "BzWE5iGdnF4DVXI2", "emailAddress": "fWSLO0mDHhSQCOJA", "password": "qohVzJfKTIRQGBCa", "reachMinimumAge": false, "uniqueDisplayName": "XC1IgnNFVRPCQ1XX", "username": "nGNPd2BujZpzMGGT", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 408 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 409 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"dateOfBirth": "RCQyfukA6ewC5qzO", "displayName": "heYOZ3JPNmFmAY4H", "emailAddress": "Q5s4QBev0ERDTQHG", "password": "V5VwrzUok5DitLy1", "uniqueDisplayName": "wTp9JSOtRyWRsrH3", "username": "FjPaqnq87LtaDJLj"}' \
    > test.out 2>&1
eval_tap $? 409 'PublicUpgradeHeadlessAccountV4' test.out

#- 410 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "fgh2OPUwcIwBJRud", "mfaToken": "HKRy8awpyJDC00lt"}' \
    > test.out 2>&1
eval_tap $? 410 'PublicDisableMyAuthenticatorV4' test.out

#- 411 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'EhuVsM491No9Rbgx' \
    > test.out 2>&1
eval_tap $? 411 'PublicEnableMyAuthenticatorV4' test.out

#- 412 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 412 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 413 PublicGetMyBackupCodesV4
eval_tap 0 413 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 414 PublicGenerateMyBackupCodesV4
eval_tap 0 414 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 415 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "v1GUANrSiMOSl3zE", "mfaToken": "poWUqaeOzbL6eFVX"}' \
    > test.out 2>&1
eval_tap $? 415 'PublicDisableMyBackupCodesV4' test.out

#- 416 PublicDownloadMyBackupCodesV4
eval_tap 0 416 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 417 PublicEnableMyBackupCodesV4
eval_tap 0 417 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 418 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'mm44XveiitD9vxaH' \
    > test.out 2>&1
eval_tap $? 418 'PublicGetBackupCodesV4' test.out

#- 419 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'x8fzOHG3MB9UzE1u' \
    > test.out 2>&1
eval_tap $? 419 'PublicGenerateBackupCodesV4' test.out

#- 420 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'dEU1clRh55fXcN70' \
    > test.out 2>&1
eval_tap $? 420 'PublicEnableBackupCodesV4' test.out

#- 421 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code '6JExJXWkfdDgE1Lf' \
    --factor 'RllymOegjcjvCKCp' \
    > test.out 2>&1
eval_tap $? 421 'PublicChallengeMyMFAV4' test.out

#- 422 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 422 'PublicRemoveTrustedDeviceV4' test.out

#- 423 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    --action '56tBSfSq824OObXm' \
    --languageTag 'eaooszBHz8dUTxgx' \
    > test.out 2>&1
eval_tap $? 423 'PublicSendMyMFAEmailCodeV4' test.out

#- 424 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "EiiQcAN7ScJT56CV", "mfaToken": "OWpDyf1XB7QoWHpK"}' \
    > test.out 2>&1
eval_tap $? 424 'PublicDisableMyEmailV4' test.out

#- 425 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code '7br9fYU9ltVomnSC' \
    > test.out 2>&1
eval_tap $? 425 'PublicEnableMyEmailV4' test.out

#- 426 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 426 'PublicGetMyEnabledFactorsV4' test.out

#- 427 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'X3W8XptCzuFpX3Qt' \
    > test.out 2>&1
eval_tap $? 427 'PublicMakeFactorMyDefaultV4' test.out

#- 428 PublicGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam publicGetMyOwnMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 428 'PublicGetMyOwnMFAStatusV4' test.out

#- 429 PublicGetMyMFAStatusV4
eval_tap 0 429 'PublicGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 430 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId '3GaBVEpyPIz8NFlU' \
    > test.out 2>&1
eval_tap $? 430 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 431 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "YoDzqNFsnsYYnlnV", "emailAddress": "xUeIhRBtMwUYSo6d", "languageTag": "0nDC2eLpjwizes9E", "namespace": "XnmjgKFBSZRE2aum", "namespaceDisplayName": "U8eGu4MjrA5zrOdH"}' \
    > test.out 2>&1
eval_tap $? 431 'PublicInviteUserV4' test.out

#- 432 PublicUpgradeHeadlessWithCodeV4Forward
samples/cli/sample-apps Iam publicUpgradeHeadlessWithCodeV4Forward \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "s4Wjc3WDNf1BorKD", "policyId": "bGLEoiJBI2zMB2mB", "policyVersionId": "b0OQXvZLhLWeaGOB"}, {"isAccepted": true, "localizedPolicyVersionId": "saqusE24BtlfSws1", "policyId": "wwnP4xpkUJ6l0U8P", "policyVersionId": "ye9eBX5uGrfige02"}, {"isAccepted": true, "localizedPolicyVersionId": "u6GmfVaArFbTR11p", "policyId": "G1YzXimbm9prs4vy", "policyVersionId": "UjTxVQo9SJlCo0w6"}], "code": "WFD87efbYezZ2w4h", "country": "oESgkSG7a4tFXf9v", "dateOfBirth": "Bb6YjUyJfrgK0Umf", "displayName": "qSZSs0IGekP5as3m", "emailAddress": "nFj0mTgJu8FsMNMR", "password": "Q1q4cMaHpEp7VWTw", "reachMinimumAge": false, "uniqueDisplayName": "LSicr7QpZkAky2XB", "username": "BRhzVWI5nGcprANH", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 432 'PublicUpgradeHeadlessWithCodeV4Forward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE