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
echo "1..425"

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
    --body '{"modules": [{"docLink": "N7rTdDprkbsjxWE1", "groups": [{"group": "6TtlEVWZq8CTxRN4", "groupId": "AScaekeCiHJC9FN1", "permissions": [{"allowedActions": [24, 19, 44], "resource": "W7r3bMIzNx1TD8X4"}, {"allowedActions": [51, 76, 76], "resource": "Yhoc5d2HHdV7hbM4"}, {"allowedActions": [46, 81, 78], "resource": "BjJqYczdeJ9t9bc1"}]}, {"group": "Wu2gsswmuM6xUeMr", "groupId": "V1GyFSuh2Oldax2F", "permissions": [{"allowedActions": [22, 81, 16], "resource": "s6AXPUcHhnUokKcn"}, {"allowedActions": [32, 70, 5], "resource": "rRy1czcZxmgGCu6J"}, {"allowedActions": [44, 57, 54], "resource": "V2wmsvomxL5qLGae"}]}, {"group": "wEHtaZkXNxhfcaC5", "groupId": "UQkivIwodi6SbAuq", "permissions": [{"allowedActions": [65, 62, 13], "resource": "63dR5JxG0lom4ktY"}, {"allowedActions": [50, 58, 96], "resource": "grDlaG8dsdfk1wVC"}, {"allowedActions": [84, 27, 70], "resource": "MfKtVFuontXO2eVU"}]}], "module": "PnNBjMlXYXuW2sHw", "moduleId": "ML2Mn1uwnhtVRlfE"}, {"docLink": "oerVKenhRAq1UeVM", "groups": [{"group": "eeoWBwFOX3wXeDUB", "groupId": "rlWBtpBTBO98GuW5", "permissions": [{"allowedActions": [100, 60, 43], "resource": "g0M3DW1lPQ8M1Mcc"}, {"allowedActions": [18, 96, 70], "resource": "UKPWV8FDLAw9tDmJ"}, {"allowedActions": [52, 74, 82], "resource": "7GIcEB6ygGM7NWgk"}]}, {"group": "13vxiyX0eUKLKLi3", "groupId": "JQzDD63sGZleEijr", "permissions": [{"allowedActions": [26, 42, 1], "resource": "g1zkEv1eXdIDd5st"}, {"allowedActions": [62, 32, 40], "resource": "0sLqA44HQ0cpji9y"}, {"allowedActions": [31, 61, 83], "resource": "o7zM1Ghu7ulGEGlu"}]}, {"group": "25I2G09EuBSQAFpF", "groupId": "S1qEMcXVYzyyx0oI", "permissions": [{"allowedActions": [19, 56, 48], "resource": "wNVXbb7HX3lkMAuI"}, {"allowedActions": [75, 91, 42], "resource": "8YZJdxHLOoSAU3uk"}, {"allowedActions": [95, 11, 74], "resource": "pJldCDxH5tIucZVg"}]}], "module": "PiERRD90qeiRz39Q", "moduleId": "n24bAh7dXfRNJNcg"}, {"docLink": "Kd9WQ1Th4cCIg9lH", "groups": [{"group": "4zjs99PGiZZoNip5", "groupId": "urJqXRKAm7z397mf", "permissions": [{"allowedActions": [19, 97, 20], "resource": "JR6SQQeZsVyeuqXt"}, {"allowedActions": [64, 67, 81], "resource": "I57GIyjRW24gt9Zw"}, {"allowedActions": [78, 31, 2], "resource": "s6smR85SmPDwXv6C"}]}, {"group": "GxcQOyDd5pNk9iTx", "groupId": "3nSno90sLEnp6YKw", "permissions": [{"allowedActions": [80, 21, 59], "resource": "tvmgZkNPzUelcncx"}, {"allowedActions": [5, 51, 39], "resource": "74DkD8EiD2khgHm0"}, {"allowedActions": [52, 22, 71], "resource": "mXVyUuoy8qQB8lvm"}]}, {"group": "vbJjfoBlqimpD31q", "groupId": "Xnz5vYgRUTQe6ok8", "permissions": [{"allowedActions": [67, 85, 89], "resource": "Cc3KCkTsSjgKyfmB"}, {"allowedActions": [4, 40, 94], "resource": "3FJ6jUulDoHPerjS"}, {"allowedActions": [56, 91, 23], "resource": "L1EZMmsBUn5ZZ059"}]}], "module": "LYDSY4gOuyhzegR8", "moduleId": "GG2y4AJ2TNK7eyiw"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'false' \
    --body '{"groupId": "qyWZ8JPJIatqX9aV", "moduleId": "jrdmIfuS5odO6f2v"}' \
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
    --body '[{"field": "INPqkq47UaTPEhiG", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["pYMZtJPhimxKlKyZ", "9kaAc9AB6p9LWKgI", "zYnaTWvKxtzbboA7"], "preferRegex": true, "regex": "AUl9N42GtXD08xlj"}, "blockedWord": ["c8zECMSUAokW43Ne", "PNJJd2Edq62oBScu", "TLV8DXETA9nisd7b"], "description": [{"language": "lMk2vQh4k5TRpQb6", "message": ["H2W2eTqNsL2QmaYW", "FRaHniIByrDXdud9", "wv1qcegbX4Tn3vsV"]}, {"language": "qPWR9zjatGV148Xi", "message": ["jiwt2cZ52jwJttC4", "lwupONpgAGF08vIl", "fgYOXJ0ZKPuH4HwC"]}, {"language": "77WfWHkCpmN0SQZ6", "message": ["i0D584KKzn7kcoPm", "Rz94s7gIvVBhgclF", "3KfcqPaEgq5SHNuP"]}], "isCustomRegex": true, "letterCase": "X6Ngln3BHUhvrpBR", "maxLength": 34, "maxRepeatingAlphaNum": 56, "maxRepeatingSpecialCharacter": 18, "minCharType": 0, "minLength": 66, "profanityFilter": "xLX8WbfaYWLinr5C", "regex": "PhOI1LivWQ1am8EM", "specialCharacterLocation": "abS8904GqynvYJhB", "specialCharacters": ["URQgJsKoQ1UgMtty", "lquTIYcVSA7GBlV9", "XqJ3GnTojOCAdEwd"]}}, {"field": "uPRAlPV286pjuRqI", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["QtJ7XgZR28EJkmaS", "3rK4Pkisq9qLM0ca", "mi8YB6F6PQxpWXPF"], "preferRegex": true, "regex": "nHy8CBXczz7nDSo6"}, "blockedWord": ["0qVCwRHyxj1FsecP", "0QHkCKcxZt8d9ORB", "UQcKpDc7bsyC4nKB"], "description": [{"language": "iNSTANvlVBeVIrzX", "message": ["nseQU9cjMteAK2xF", "1KvNwkXgg5h6H5x9", "tgQRedI6kif6Vog6"]}, {"language": "ErrIWJslUMYp2QDl", "message": ["XAgjDcx7EnJrd9JS", "KskZ84nKNHtZ1W7z", "QkyQQXGJB1RFWKoA"]}, {"language": "NvBikZWG0RMGEoOA", "message": ["dmG3xUJQxbDy9lYD", "o4YHDNMioro0jKLM", "9Wufib9Ln2uiXvOe"]}], "isCustomRegex": false, "letterCase": "3eX6p47PP14lxbDf", "maxLength": 29, "maxRepeatingAlphaNum": 91, "maxRepeatingSpecialCharacter": 93, "minCharType": 7, "minLength": 54, "profanityFilter": "JjXgnDY3rC4vQvbM", "regex": "AUoA55XCMQaHhFiq", "specialCharacterLocation": "urPgfkPtmLH3g4w7", "specialCharacters": ["R1I5tEMBi7fTeTGV", "XvyRLOevNio5H4ko", "l8SdYbRUSH0pWHl4"]}}, {"field": "FlyeR8Lp4q9SuB2d", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["V514Vswj9Zh6XtOL", "x6PFKQYAyAstYXmA", "7AkNpSxph3UbjyfH"], "preferRegex": false, "regex": "XGPbkuLRgNrTpJwi"}, "blockedWord": ["rKwA1erdvashkDrs", "9rH4QWhsa8oeiPZD", "dsHdj5fClAt9ybh0"], "description": [{"language": "6JxXBnpQ55zrkp2b", "message": ["0umYKJSCLBBkrJ2c", "h5MI9MfApsas9hE0", "DScNc8QllkPzUmio"]}, {"language": "9ctOs4fQmMcPQTay", "message": ["w7EDliOH3MCXuZhC", "s3ouURsK8TBcE6Dt", "EGE3F8Kv2JsGZU0s"]}, {"language": "YfN3ev9bnwASsGq5", "message": ["tYt3GhiMlnvRuNpH", "KVPTgJjF3p3HqOaQ", "iYJis432k4FSVr6P"]}], "isCustomRegex": true, "letterCase": "N7rXVpRq8ohagjpe", "maxLength": 5, "maxRepeatingAlphaNum": 77, "maxRepeatingSpecialCharacter": 10, "minCharType": 0, "minLength": 84, "profanityFilter": "c1YUFvG82P2kYgo7", "regex": "dIxmZ2hgTUaqWuKQ", "specialCharacterLocation": "DWqz5qJ8CCoNWfQW", "specialCharacters": ["oZNkVhlEvcYbqLiG", "RBLTpdf8tUe6pVzJ", "IrDxSKaEHvYfmffr"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'F40ko1qTEEfH6xQe' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'Ln3ud38raNOyfoW7' \
    --before 'f6gNKTf6jgcvtfnw' \
    --endDate 'vGMDeTP9scj00ydN' \
    --limit '76' \
    --query 'm4FgJnTEChIWqcSm' \
    --roleId 'oOUEW7L61FlcizIZ' \
    --startDate 'khuJlQmSrvl55GOy' \
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
    --body '{"ageRestriction": 45, "enable": false}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'lC0z1D4eIxgJrMfR' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 40}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'rUKR6dgHaaCqGUB0' \
    --limit '14' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "48CHZRCbRbUdmL6b", "comment": "jVwIwVjJRA73nxxh", "endDate": "y9yJBoM4k0LgFb89", "reason": "u1hC0Tt47TMfFn9R", "skipNotif": false, "userIds": ["3kcAGbIa6mbXA6OS", "KfnEJ02QwJvigng8", "mlgubxpr0jPpn3xF"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "VAPz5QDg1yB9QTer", "userId": "lRUtXJgAsEsqJKII"}, {"banId": "SOTJHSmLkdIFUbrv", "userId": "LK2uWvpZpJESlmXS"}, {"banId": "gyFWCyazxMCJMp8V", "userId": "P90HEtfFEjxRMnia"}]}' \
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
    --clientId 'WFRujSe0RR7pubG2' \
    --clientName 'XRKqYZDOhGWKC2XZ' \
    --clientType 'fqPQgiXKNufoNNgY' \
    --limit '27' \
    --offset '45' \
    --skipLoginQueue 'false' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["94TT72ybdo8lTlTy", "uQBt02YcMffvyTDh", "V5kjknpQVYblIHXL"], "clientUpdateRequest": {"audiences": ["gBE9MlmqchLLYseQ", "FPnurZMbo9ydUAhD", "IeDRUfNhR1vbTok1"], "baseUri": "YPjIuw0ni0HTuNPG", "clientName": "htPntC2ruf3ph31j", "clientPermissions": [{"action": 76, "resource": "55ZuXOuBl8zAdXq5", "schedAction": 44, "schedCron": "PqsHtDyw9p8dBQ3W", "schedRange": ["NT5txvpOkPPomrwC", "Tc41owN29QhENpCl", "zrml3JlpesjGQtIL"]}, {"action": 70, "resource": "YIIojP5Z03cm9x0w", "schedAction": 84, "schedCron": "UAeTpgpT14tfykzs", "schedRange": ["dNBWZIwkQ4vJ3xSV", "erLl5kSGKrmmWghJ", "nnNnR7yMRxWC3fR8"]}, {"action": 99, "resource": "vsWDO6kbt3yrgrEV", "schedAction": 61, "schedCron": "T2EFz7hU9gJJfKjQ", "schedRange": ["NVCVLIwXSJ6jnIKz", "NsacCwdqcMoWvbuX", "qgM60NSr8KsmHmLA"]}], "clientPlatform": "Rsi2XGEu3enm8sPa", "deletable": false, "description": "vuz5gq957VsbWg1u", "modulePermissions": [{"moduleId": "JyOot55oxvPPGe6T", "selectedGroups": [{"groupId": "830AeHHRRLLozQOw", "selectedActions": [24, 75, 60]}, {"groupId": "H7zRhQYmWeYb7mtq", "selectedActions": [54, 79, 92]}, {"groupId": "aNr7PVhmKyYmBusr", "selectedActions": [89, 48, 40]}]}, {"moduleId": "KC7vBGsvS6Mekmjo", "selectedGroups": [{"groupId": "vEyOipIzm4HTd5Oq", "selectedActions": [74, 26, 85]}, {"groupId": "gcbgf6woKEDharuJ", "selectedActions": [88, 95, 49]}, {"groupId": "RuITl905lEzlCwTN", "selectedActions": [0, 47, 20]}]}, {"moduleId": "2lzM7KwGVjIzBgXh", "selectedGroups": [{"groupId": "kRC1ONIn0jsBZN9n", "selectedActions": [99, 69, 27]}, {"groupId": "v5bWRLo2MipkO52X", "selectedActions": [61, 76, 32]}, {"groupId": "sxx5ENepmc8qmL54", "selectedActions": [30, 52, 58]}]}], "namespace": "6sAfdLhpZWLRw2MN", "oauthAccessTokenExpiration": 48, "oauthAccessTokenExpirationTimeUnit": "kPF7rdz7mZe6K9Yl", "oauthRefreshTokenExpiration": 21, "oauthRefreshTokenExpirationTimeUnit": "tyKoLOI09M7Somnz", "redirectUri": "HK1OwlghxOQZPTGH", "scopes": ["7RYAKm9YEvqohUEC", "WaPod9xdfsXAPkuF", "3UUTqA3ZIzgwECZJ"], "skipLoginQueue": false, "twoFactorEnabled": true}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["0h98CnFOusOl4B7K", "Z6ntqR8hZMDra7Ik", "A0reAbGPGeSwOSRX"], "baseUri": "UXmEE3edUwjCqLZe", "clientId": "an4a13LPXSnBBi6U", "clientName": "ojEbinN3J8EfsnAj", "clientPermissions": [{"action": 45, "resource": "HpNCd3T3Mg5uizH4", "schedAction": 80, "schedCron": "VcLsv6Rs7qcJAi7l", "schedRange": ["vGBGJuTMjc4rTS6g", "VbGef9SZViZnszBd", "kUZew1s3A9zdRjwq"]}, {"action": 63, "resource": "Wq3q3cBXuWLKKJxb", "schedAction": 99, "schedCron": "tzCOPbIg7KDxsU9I", "schedRange": ["HoGwTQ1mO93S3dw2", "Wzv9ek38vWiYFG9V", "zAdIItQ8GuzAt31D"]}, {"action": 89, "resource": "zUD2XhCJTkKj8Vxs", "schedAction": 31, "schedCron": "DkrrD6wZAqLDKPWD", "schedRange": ["C44kTszh7wRl9JoQ", "YpsHjZRWJmbnx3gv", "xui0xeKPamDtiFe6"]}], "clientPlatform": "rqZ7Id6XIOvuLfBB", "deletable": false, "description": "QVmczZ6ZBcd82StU", "modulePermissions": [{"moduleId": "Gft9rR8vesualTKv", "selectedGroups": [{"groupId": "Dz8FlX8w6lZddwEa", "selectedActions": [41, 25, 76]}, {"groupId": "SBDGtUvdrg60pfVt", "selectedActions": [1, 29, 83]}, {"groupId": "EHmFL8CxMveFmd8p", "selectedActions": [61, 35, 35]}]}, {"moduleId": "drjC2ShwmL6j0HCK", "selectedGroups": [{"groupId": "XwK1d9Pcb28E6N4B", "selectedActions": [31, 66, 82]}, {"groupId": "WH5u6qtr6tTjQymk", "selectedActions": [85, 87, 7]}, {"groupId": "9xoUM5rhQ7M6Dxf4", "selectedActions": [17, 62, 68]}]}, {"moduleId": "uP09Z8lK6S1WU9ai", "selectedGroups": [{"groupId": "3aEFMrNk2XsWgbGv", "selectedActions": [74, 15, 72]}, {"groupId": "eU87FHQAIn3uH3X9", "selectedActions": [57, 60, 89]}, {"groupId": "7cFij2oy0sQ6ChHH", "selectedActions": [67, 25, 86]}]}], "namespace": "Egj1ZzibJu53zkxW", "oauthAccessTokenExpiration": 54, "oauthAccessTokenExpirationTimeUnit": "ObsK1fILJlvwKBY8", "oauthClientType": "qbYuYrAw72bsj2JC", "oauthRefreshTokenExpiration": 95, "oauthRefreshTokenExpirationTimeUnit": "5BctuXkI5d8RO5mW", "parentNamespace": "MrbCGKdMS24lQlsk", "redirectUri": "oLZiOu5OAG4NgRpv", "scopes": ["ejZv5lz24zSRIAdT", "zz12xesP1VWBtI5o", "Zkt4f7Qd0PB4zflv"], "secret": "WMJ57I2ulQRQaz7h", "skipLoginQueue": true, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'rxmYMIgQ0vx0IwGf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'tXVdHb54p6m2gv1F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'CWQxUiZMYIbF7oos' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["2y3JuM0CrtXRZb2f", "N2PZXsb80LHBDseg", "HLEE85B950YmnS7s"], "baseUri": "WGLkKvm5maVtgOkj", "clientName": "zo550J6mjCg8dNRL", "clientPermissions": [{"action": 16, "resource": "2Q2DiVSocOQ52tkf", "schedAction": 76, "schedCron": "bn1xEff9pdNn1iDJ", "schedRange": ["2pEKB6WshgUrFchm", "zMSwfHnkpaA4vvFj", "Jftbp4pjKj6Z8Bku"]}, {"action": 98, "resource": "DCcexbipI5U5zj3e", "schedAction": 20, "schedCron": "gMKOze8vk1VYhAb7", "schedRange": ["eXSPadIQJ2IoKs5Z", "4LWIUf6Oepw5drFg", "GzdcICECAf9ES3Yb"]}, {"action": 33, "resource": "Z4LhoqhfMspTksnj", "schedAction": 45, "schedCron": "KVk440ZtOxMpnXTR", "schedRange": ["trwwA3Q9W2NhmUIj", "voymu8fBtohYQYO8", "qsMKRFBr5GfpLBFJ"]}], "clientPlatform": "HIbYNCaeZp5JOSlf", "deletable": false, "description": "gRHk2NYV9JYLvCdx", "modulePermissions": [{"moduleId": "AVYzG7P7L2B4EA3d", "selectedGroups": [{"groupId": "iQ7euJaDLvOeA0gJ", "selectedActions": [78, 87, 60]}, {"groupId": "pJlgkKXAP5cqcsVr", "selectedActions": [31, 86, 71]}, {"groupId": "jILys4QCiXsCLQVJ", "selectedActions": [45, 45, 71]}]}, {"moduleId": "nBwBwVHNmcVGWdhl", "selectedGroups": [{"groupId": "9Gnnp0qfeCET5uwX", "selectedActions": [86, 18, 43]}, {"groupId": "O2pLaFuh7i0IW38p", "selectedActions": [83, 82, 58]}, {"groupId": "FLBMv3o6xWrCnPNd", "selectedActions": [14, 52, 16]}]}, {"moduleId": "R6qlDdvfSqYdayLE", "selectedGroups": [{"groupId": "YQlGYt7826bN59DW", "selectedActions": [49, 57, 17]}, {"groupId": "6oSTSKy4LOaI7Tjg", "selectedActions": [31, 88, 100]}, {"groupId": "LM0qm1P9CRtM48RW", "selectedActions": [54, 90, 5]}]}], "namespace": "vokU5FhV46IsKi6F", "oauthAccessTokenExpiration": 5, "oauthAccessTokenExpirationTimeUnit": "N8JCcLoKSr2j1atc", "oauthRefreshTokenExpiration": 27, "oauthRefreshTokenExpirationTimeUnit": "dwKHwo5LF5mZ6zje", "redirectUri": "3xLMGqEpXroyvOuG", "scopes": ["3G506YB9FZ9iui73", "r9sCumBITD8gv0Mq", "NUYCWRVyNHmHxfQw"], "skipLoginQueue": false, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'b4ZlMJy9VvaOc2Xa' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 44, "resource": "OeVZ0YNBq6QJuvDq"}, {"action": 47, "resource": "sqL9AQQ6zqD7dWXh"}, {"action": 7, "resource": "d9c0x3hdfRaTEhWW"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'zsa6yM7qL7yYCsHu' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 82, "resource": "JmM6gK1yKLLzemD2"}, {"action": 11, "resource": "eHl3ObErAlIgEEB5"}, {"action": 82, "resource": "YnE3wq2VBasTdWmB"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '35' \
    --clientId '6nPVAg1APQCsyAHU' \
    --namespace $AB_NAMESPACE \
    --resource 'wIdbLmrocvouGUwY' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey '6S6RH2KIdlhX9oAu' \
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
    --body '{"blacklist": ["ku9BB2CQ1K9PtLfC", "N7GGMQsi4OESgTio", "Smn33RKvaFGcMNv6"]}' \
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
    --body '{"active": false, "roleIds": ["zeNQUH8RVwu5wtrb", "27A7MqW4X8wNUGHh", "zuP6WuxaYUj8uAxx"]}' \
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
    --limit '9' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 141 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 142 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'sqzwX2WBMBcR5vIr' \
    > test.out 2>&1
eval_tap $? 142 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 143 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'UQsgNTM6aSeYUfrv' \
    --body '{"ACSURL": "aWwVol5ULQmUnD7i", "AWSCognitoRegion": "mKhXL2sX2Vj8qKd3", "AWSCognitoUserPool": "vIecuJgiVdx4NJc2", "AllowedClients": ["vSPxrrVBMhVBnkay", "2nQVznFV2IA0fgy1", "VjVeUQfMs5qz1ev1"], "AppId": "nRvV62DnwNVI0Wz9", "AuthorizationEndpoint": "T2e5mJm4qO8BWPhY", "ClientId": "XPW4u5xn9HESFG3L", "EmptyStrFieldList": ["Y5eeHXBX8c4dUyKj", "IpviaMnxTY7TdCpW", "06m3USk4244VgItM"], "EnableServerLicenseValidation": false, "Environment": "sDqCA9rwjmYLORuI", "FederationMetadataURL": "JhGuFZoTrXtjb4mH", "GenericOauthFlow": true, "IncludePUID": false, "IsActive": true, "Issuer": "d0r2qxLp38e9uUTX", "JWKSEndpoint": "7GJOpDJTtBQM0BeA", "KeyID": "BuZ2Mm3HoFd7T6Nt", "LogoURL": "Q3oZ9JjCEVutfxTG", "NetflixCertificates": {"encryptedPrivateKey": "Fz1uM0YOD51hDD1N", "encryptedPrivateKeyName": "2pW6esg8ERvofQ1X", "publicCertificate": "NdzJQAvjQUjKXl5m", "publicCertificateName": "zfz8c61dulCPvknH", "rootCertificate": "gFNIstGdYzG0LEgT", "rootCertificateName": "A91vfCJcVXZpAaU5"}, "OrganizationId": "9qijZ5nwPWuk0zna", "PlatformName": "0o6DUSYTFYCu7HEw", "RedirectUri": "Tk0iba0YCKrgvvBj", "RegisteredDomains": [{"affectedClientIDs": ["CCNoyqsH67n9Qbps", "WYM4S12XCuVO97Bc", "0pywaHLzQImgeJiW"], "domain": "YXIN07cg8GkYAi9K", "namespaces": ["S5GgxiXVmI0LPR2I", "NnF7mxDavPiLSz0h", "uiYJp261ISMDc93K"], "roleId": "81BkeW7dxTyXOjAQ"}, {"affectedClientIDs": ["Lt9VxtfI8oxT9poD", "6LZH2cvmz24ElRvN", "Jz6sgKyIKOtDml3A"], "domain": "4gowWcZzo90SKYTc", "namespaces": ["c1xPZZL75oWWUY2C", "ksSqEwcupaDME1Pe", "pE4wWpbOm5BcURmh"], "roleId": "Qon8FMgMNkrUfe62"}, {"affectedClientIDs": ["lbN8JY5GMixeFXfk", "tTlbVvD4Q4TVXGcd", "caN7ZpsLkAooju0p"], "domain": "vSQ0gN9IOrhM7d4X", "namespaces": ["wHOAmhq3UhgV0jpu", "6eflLTOl1ycakOPJ", "fYi88e0lVQM8cLx9"], "roleId": "xLPmwqsBzBeUfE7f"}], "Secret": "tYjsMinxi5ZhyRdp", "TeamID": "PYvp8vEInAmcgZ8K", "TokenAuthenticationType": "7sIQ8j4yGPRv6hWI", "TokenClaimsMapping": {"27SjqqXLhWqUnXFd": "BWHFL46dLNutEzcq", "PMSG4r7aSoeVPkA2": "TuCpZ5xTyMjrCwrg", "c5Pc5z7FP3QDOaXd": "i5DAq9HgOif73usl"}, "TokenEndpoint": "FCygIZIhT8avJBVp", "UserInfoEndpoint": "XpC3V9QAuPl4YszB", "UserInfoHTTPMethod": "xU7wAyo7NTYKaeB5", "scopes": ["cxlHWX8McKfxgN68", "NerwHrhPHHt9bezM", "8BON61TCquEQ6OMa"]}' \
    > test.out 2>&1
eval_tap $? 143 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 144 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'tf3wWewEc5YphkdB' \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 145 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '1LUogovbwjf8DsEY' \
    --body '{"ACSURL": "M5AMh0yAzN9tLnwZ", "AWSCognitoRegion": "HTWAnRbQyHZYfdso", "AWSCognitoUserPool": "WbhcwJ1K5X6MdXKZ", "AllowedClients": ["7LD2sU9W1L28UtYf", "gATAFX4xQqLNSBUC", "hE5NwQ3SMupwR0Rt"], "AppId": "6FK2t6uyrHkgirEz", "AuthorizationEndpoint": "RIsCwNq1lKuNNqp3", "ClientId": "ws8NHl4f0VtRX71W", "EmptyStrFieldList": ["xyuho36dAZQudM63", "tsVjIhqtK3bHZWK8", "paWk64VwYN69wEsi"], "EnableServerLicenseValidation": false, "Environment": "9YtRzoMZrMc5A0HS", "FederationMetadataURL": "ONYzog0l4M15Moz2", "GenericOauthFlow": true, "IncludePUID": false, "IsActive": true, "Issuer": "FF7vj3Bz9NT6vbWF", "JWKSEndpoint": "nVoQQEIodQQIKxDy", "KeyID": "Q6U8UFdj96Fpt8rB", "LogoURL": "g24aAA81UtLVQDWS", "NetflixCertificates": {"encryptedPrivateKey": "egPfVYDYFac73HYl", "encryptedPrivateKeyName": "BhZ487XG6q8WutS9", "publicCertificate": "88IZr5PLx4uHDOKe", "publicCertificateName": "5HsgoPajpxZvM7S5", "rootCertificate": "ZMQexUBzxhGYqRyf", "rootCertificateName": "Cb0RtbK8fmkfVii4"}, "OrganizationId": "SoqXfrTMXQ55fByy", "PlatformName": "wcymVX5SQZ3SMTl5", "RedirectUri": "ZAUDaeUXslysoi6j", "RegisteredDomains": [{"affectedClientIDs": ["b7qT0uz9VokTgCX0", "EhzBQgQXsFVtDXng", "3UGkFAf5K9W9fG1M"], "domain": "urvpKmBcOuwCc5U8", "namespaces": ["tQa97nsMgLLAqeZz", "z1ComcBdFKmKcGks", "xQ25O5oFe6YpnLKN"], "roleId": "B69dGKgj12Q3xsrB"}, {"affectedClientIDs": ["coFDhAeWIyP0lZSb", "JwbK3YrgDKksfShC", "apHBBJvhgT6zAsBv"], "domain": "1bFPEuIl7IpoVOws", "namespaces": ["REGxx0rpoapVtGI3", "mEEieWSdyl5rbvfg", "RqVkzhaHyiZYpi3g"], "roleId": "yGt5J2Y1EEgvmKdv"}, {"affectedClientIDs": ["szaE2F1l5WLtwqZT", "hMi08DR1HvihE4Or", "NeCapglajdXxYYOE"], "domain": "SBf5TGSy6pNHH8AU", "namespaces": ["v0ws807bIeiKModm", "Pt6YefN2mPHxwTyU", "2f7yzhpznkCkZwin"], "roleId": "8rNLj6PRJOKuPTVp"}], "Secret": "6mP5km2LlOqRrljc", "TeamID": "Lyciu5TbxC5jDZYO", "TokenAuthenticationType": "DmAaE3473c6BypUq", "TokenClaimsMapping": {"RHw4vl0CLNs8JQQA": "S3E1llg7TXIiK4F4", "XdhBnCj4KOEj95eA": "k7Hzx9CfLhS3uY7E", "Z8BJfqCFctCl7rVD": "B8Aeh0HrpUe0Zo0t"}, "TokenEndpoint": "y6tuhMXoGeLlfrgW", "UserInfoEndpoint": "CFWi3w8hHEU7DkMR", "UserInfoHTTPMethod": "7PPTt140Zo4kUwPD", "scopes": ["n7It3ESKNFhSra4j", "JMujjXjdFBI6YblY", "2PiJ1tjIJmjihxee"]}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 146 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId '4iVa93y3PSTpObp8' \
    --body '{"affectedClientIDs": ["QdK06Cslfn2DIxzU", "dWV34UkUaldxiCAF", "cV0zdqR36qFBNoF9"], "assignedNamespaces": ["es3OqEpfJPRy2P78", "WB6EXQpkjidPGhk7", "oqXUMopcy2dSdj5f"], "domain": "QQbVJvJHUIwH9KxF", "roleId": "PHdscLSO2i7pZJ6k"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 147 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'HQ9KrJXy3kvikeSz' \
    --body '{"domain": "nTWE3MBAMN241PNu"}' \
    > test.out 2>&1
eval_tap $? 147 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 148 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'CMgB1JEU5j9xGINa' \
    > test.out 2>&1
eval_tap $? 148 'RetrieveSSOLoginPlatformCredential' test.out

#- 149 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'RuWD5YaXOPgeQ3tf' \
    --body '{"acsUrl": "FUSm8luExFOpyL6l", "apiKey": "dZUn4sIkt7zAjOit", "appId": "Ts1UXXypmBpsJJ8Y", "federationMetadataUrl": "bvUMjbaH9TFDC4hd", "isActive": false, "redirectUri": "34LsghAq4mCRNoci", "secret": "Wnzu7GXIwBIGXwAm", "ssoUrl": "oDz2m21zlrO3QhVD"}' \
    > test.out 2>&1
eval_tap $? 149 'AddSSOLoginPlatformCredential' test.out

#- 150 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Ezuk8iS2cyWorW4I' \
    > test.out 2>&1
eval_tap $? 150 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 151 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'M6idL3WQ8iYQweLg' \
    --body '{"acsUrl": "AFXMawLXZD6nRAMq", "apiKey": "pgJaFAcq6Wabexcn", "appId": "xVUIOjwZkrEVD9IP", "federationMetadataUrl": "jNRDnNV7ULgfw1QC", "isActive": false, "redirectUri": "qohmosF7OGjrOt7h", "secret": "k3JgJP7Sb61kfyNa", "ssoUrl": "PKfXnxUhXrCCuvdZ"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateSSOPlatformCredential' test.out

#- 152 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'OnKZI0mBudHJCEYv' \
    --rawPID 'false' \
    --rawPUID 'false' \
    --body '{"platformUserIds": ["Nmw6IHymRnqofmfq", "rkrFPHRMV07pfZs4", "h8nHAiRUrDV0ji5E"]}' \
    > test.out 2>&1
eval_tap $? 152 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 153 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'LQn2Uo8vZEasC2mB' \
    --platformUserId '0Hu62GZYmHc6sX9b' \
    > test.out 2>&1
eval_tap $? 153 'AdminGetUserByPlatformUserIDV3' test.out

#- 154 AdminGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'dob' \
    > test.out 2>&1
eval_tap $? 154 'AdminGetProfileUpdateStrategyV3' test.out

#- 155 AdminUpdateProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminUpdateProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'country' \
    --body '{"config": {"minimumAllowedInterval": 9}, "type": "hBZddfTY85yoj4TD"}' \
    > test.out 2>&1
eval_tap $? 155 'AdminUpdateProfileUpdateStrategyV3' test.out

#- 156 AdminGetRoleOverrideConfigV3
samples/cli/sample-apps Iam adminGetRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'VIEW_ONLY' \
    > test.out 2>&1
eval_tap $? 156 'AdminGetRoleOverrideConfigV3' test.out

#- 157 AdminUpdateRoleOverrideConfigV3
samples/cli/sample-apps Iam adminUpdateRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'USER' \
    --body '{"additions": [{"actions": [72, 47, 13], "resource": "hIQJkcHuT3q7MjWC"}, {"actions": [29, 71, 48], "resource": "41QcB5TiWdpHeNLE"}, {"actions": [83, 61, 11], "resource": "DD4FoHJmDojzyHxo"}], "exclusions": [{"actions": [50, 36, 68], "resource": "LcjTUMODoEp9oRge"}, {"actions": [64, 73, 10], "resource": "tAIikGvCuwRS0fuF"}, {"actions": [29, 79, 35], "resource": "hgxGorJQyVA7zQ2A"}], "overrides": [{"actions": [42, 21, 9], "resource": "LX7nWYHMR9ajsQSb"}, {"actions": [16, 37, 85], "resource": "MH6WQ9e5F8onqlyd"}, {"actions": [0, 27, 86], "resource": "NK711EL67kVWEPwK"}], "replacements": [{"replacement": {"actions": [57, 1, 5], "resource": "bEwxDaiJLHsHcDV0"}, "target": "ZjiSeBsd8ibfGV7m"}, {"replacement": {"actions": [49, 60, 33], "resource": "o29shi9G5ZvW6yzQ"}, "target": "B9Al4yENYpnQ55Wj"}, {"replacement": {"actions": [44, 15, 73], "resource": "ZGYQhlmz3ppNhjyk"}, "target": "KgRBEWswU5nzuHS4"}]}' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpdateRoleOverrideConfigV3' test.out

#- 158 AdminGetRoleSourceV3
samples/cli/sample-apps Iam adminGetRoleSourceV3 \
    --namespace $AB_NAMESPACE \
    --identity 'USER' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetRoleSourceV3' test.out

#- 159 AdminChangeRoleOverrideConfigStatusV3
samples/cli/sample-apps Iam adminChangeRoleOverrideConfigStatusV3 \
    --namespace $AB_NAMESPACE \
    --identity 'USER' \
    --body '{"active": false}' \
    > test.out 2>&1
eval_tap $? 159 'AdminChangeRoleOverrideConfigStatusV3' test.out

#- 160 AdminGetRoleNamespacePermissionV3
samples/cli/sample-apps Iam adminGetRoleNamespacePermissionV3 \
    --namespace $AB_NAMESPACE \
    --roleId '53pxRWWIDYyRazEL' \
    > test.out 2>&1
eval_tap $? 160 'AdminGetRoleNamespacePermissionV3' test.out

#- 161 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId '9nTKIbyGVcTsQWMT' \
    --after '88' \
    --before '82' \
    --limit '100' \
    > test.out 2>&1
eval_tap $? 161 'GetAdminUsersByRoleIdV3' test.out

#- 162 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'pGgbWQ358pqaryTm' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserByEmailAddressV3' test.out

#- 163 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": true}, "userIds": ["xOcDwhUGSM4hu4Qb", "EezZCUf9XqpPmjsG", "AUIxU6urBj93xIZJ"]}' \
    > test.out 2>&1
eval_tap $? 163 'AdminBulkUpdateUsersV3' test.out

#- 164 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'xnZuKZnMZ6xx9mMf' \
    --body '{"bulkUserId": ["gLadmB7qOTOKQl2v", "CFmrlZXuTAEuxtME", "ou1eZaR9ZPfmHRHg"]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetBulkUserBanV3' test.out

#- 165 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["oAgPHuKwDMlBttzY", "VbXgnir5rcLX65EG", "YomEQ76U4NfjXO0U"]}' \
    > test.out 2>&1
eval_tap $? 165 'AdminListUserIDByUserIDsV3' test.out

#- 166 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["yNyn0sz4rXqyS96j", "g07DJoib0EOQUt2D", "pabNy0R8aJ9WPqLR"]}' \
    > test.out 2>&1
eval_tap $? 166 'AdminBulkGetUsersPlatform' test.out

#- 167 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["UvONJAwfnMJb7Fdg", "uM05JCneXXRTcfzP", "8llARBoqVgFmpFVk"], "isAdmin": true, "languageTag": "SQA7uQ0jAvMDnYZ0", "namespace": "HQaZZZlgkxwwPPYa", "roles": ["tQXadlyCv5lyaaZy", "hYAMj239j4gL49O8", "S6CUaY72qws4vwzz"]}' \
    > test.out 2>&1
eval_tap $? 167 'AdminInviteUserV3' test.out

#- 168 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '49' \
    --platformUserId '5AXn6m4M1b0EokRS' \
    --platformId 'xOBZrW5Md1gPIuh9' \
    > test.out 2>&1
eval_tap $? 168 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 169 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 169 'AdminListUsersV3' test.out

#- 170 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'Tylb5yUVYXMneUmk' \
    --endDate 'HgFmaVmESRPCqRYQ' \
    --includeTotal 'true' \
    --limit '19' \
    --offset '5' \
    --platformBy 'lEP6L3DDEXRPpUbv' \
    --platformId '0miKBpnxIApXMVpf' \
    --query 'R4jr0yVbahVJD6qr' \
    --roleIds 'gdMI16eXGgBrMIoQ' \
    --skipLoginQueue 'false' \
    --startDate '9qgNt3rLBThwAcf7' \
    --testAccount 'true' \
    > test.out 2>&1
eval_tap $? 170 'AdminSearchUserV3' test.out

#- 171 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["9JGt486ZPmWy2aUF", "aWuUNWeGw1NTWde7", "L3SNYrg0siJsDHCk"]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminGetBulkUserByEmailAddressV3' test.out

#- 172 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId '3JActsCmRifzlZgh' \
    > test.out 2>&1
eval_tap $? 172 'AdminGetUserByUserIdV3' test.out

#- 173 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xRhwRcrbJQtYCEwd' \
    --body '{"avatarUrl": "mbzOamVwimEsXMza", "country": "eUzDmR5yRLZiWq5r", "dateOfBirth": "nb813NVSbo1cTUP8", "displayName": "I9n8RFhNR7LQAwjh", "languageTag": "GHEBMHeGFYFezYSC", "skipLoginQueue": false, "uniqueDisplayName": "jt9kYh4pceTqN3zg", "userName": "8MXzkT0ozxNFfdZI"}' \
    > test.out 2>&1
eval_tap $? 173 'AdminUpdateUserV3' test.out

#- 174 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'w6MtngwBGPjOrcik' \
    --activeOnly 'false' \
    --after '1h928JDgHq8tiZkq' \
    --before 'TV2DfTflGVc7nGVD' \
    --limit '53' \
    > test.out 2>&1
eval_tap $? 174 'AdminGetUserBanV3' test.out

#- 175 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Mo6HXXj9F30Z9zxC' \
    --body '{"ban": "cJsiIq9neIY3xzaw", "comment": "zdnPTy1pQhNIp6bB", "endDate": "3LhgGQ7pe7AP1UJb", "reason": "uRgM2KxclUZNpJ2Y", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 175 'AdminBanUserV3' test.out

#- 176 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UfXUcqDCaMKd0tZJ' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserBanSummaryV3' test.out

#- 177 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'pFcxugms82cbJ3Zj' \
    --namespace $AB_NAMESPACE \
    --userId 'a2xJMHzekdygGp4Q' \
    --body '{"enabled": true, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 177 'AdminUpdateUserBanV3' test.out

#- 178 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jaWOZAig6HiyN3ll' \
    --body '{"context": "n9WG6WDxxuX0SDvN", "emailAddress": "8vgPm5E7nuaCDcUy", "languageTag": "7mTEztbRTssIRXHh", "upgradeToken": "TJ7Sl6Sb7E1bts37"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminSendVerificationCodeV3' test.out

#- 179 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rRS4kAbm4ErzoB85' \
    --body '{"Code": "NuCxkRFLixeGfKVw", "ContactType": "Feyd2B3s6Pdfzbmt", "LanguageTag": "4HxY2UnYv6qEExPD", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 179 'AdminVerifyAccountV3' test.out

#- 180 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'ANGzrG70hr1FPFNw' \
    > test.out 2>&1
eval_tap $? 180 'GetUserVerificationCode' test.out

#- 181 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lRosUKqCZwV6VX6A' \
    > test.out 2>&1
eval_tap $? 181 'AdminGetUserDeletionStatusV3' test.out

#- 182 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Yk60z4Ehq6Lh5jtA' \
    --body '{"deletionDate": 80, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateUserDeletionStatusV3' test.out

#- 183 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'KEcGw96Gd1lRmv3g' \
    > test.out 2>&1
eval_tap $? 183 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 184 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hSvvpIgOy1yqzxC7' \
    --body '{"code": "sz3D4CKT25bMF514", "country": "QTAxtbJyouf9Tz2N", "dateOfBirth": "lyGxjRzoszvblvmP", "displayName": "BxBuFgbyjGxbmJlT", "emailAddress": "cYVEjavmtt2CZlYq", "password": "TGHrjyzI45tgBJcL", "uniqueDisplayName": "99DO4dJmXOprkSlB", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 184 'AdminUpgradeHeadlessAccountV3' test.out

#- 185 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RZW2W75WqVHH636u' \
    > test.out 2>&1
eval_tap $? 185 'AdminDeleteUserInformationV3' test.out

#- 186 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'HVBK5ALELmyN7me1' \
    --after '0.8769837346909835' \
    --before '0.9396845328338919' \
    --limit '24' \
    > test.out 2>&1
eval_tap $? 186 'AdminGetUserLoginHistoriesV3' test.out

#- 187 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tUCEP1FU0q3t3KrS' \
    --body '{"languageTag": "si5oEVngoXj3yCnB", "mfaToken": "p0GY5pNsoJdx8Ubj", "newPassword": "VEV6lX8EbDjCcryI", "oldPassword": "dsaPS11sDZec3wiw"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminResetPasswordV3' test.out

#- 188 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dYfsO9NEnakROwcj' \
    --body '{"Permissions": [{"Action": 87, "Resource": "RSyHD8ZmkZaJNEsG", "SchedAction": 39, "SchedCron": "0gnZqLbPlNiycUSZ", "SchedRange": ["gG6pcKFfWUMxRhbR", "N1ZnUOXzWb0aXAMm", "KyENUmrUxGWP5FNe"]}, {"Action": 13, "Resource": "gZAYmLKfGpQ4CWFp", "SchedAction": 87, "SchedCron": "Zc6TAlkrXo0ileOj", "SchedRange": ["BuydCTtv1nFG4vol", "YgXcEV4Poicy0dsH", "N4XLimSyh4DstGq4"]}, {"Action": 34, "Resource": "6uJRwXPVEXviMWRn", "SchedAction": 41, "SchedCron": "pdTJ2bVdMkSrSR8F", "SchedRange": ["SD0B2P39hvfv3r9P", "QT6bV1q90ZxnxPi4", "CCW9gSVnfW0nGO6k"]}]}' \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserPermissionV3' test.out

#- 189 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vTAnxhpDEafNl0L1' \
    --body '{"Permissions": [{"Action": 51, "Resource": "HLXl8PJ7Df9uFQcB", "SchedAction": 56, "SchedCron": "aV40SxxHNMA2JizE", "SchedRange": ["OZw0ecUmhfsYXlqL", "H1PR74uexhmgEHc7", "08xblIoPKGKJK7ka"]}, {"Action": 4, "Resource": "ChjELz6tzWTR88pe", "SchedAction": 1, "SchedCron": "02dCICAULv31hiUz", "SchedRange": ["1VqwJZAx2Jo4TeEL", "qCbQulTdF9Ea0YWm", "iTaBzkPOlAUf8pxd"]}, {"Action": 43, "Resource": "d2W5y0Y1ge2uIbAU", "SchedAction": 31, "SchedCron": "0HvJxRB9kDzHg2JU", "SchedRange": ["HJC8JZgKvZBh1BOa", "NFdIQf9v75yv5KSm", "XiUzeznRUWhM1dSu"]}]}' \
    > test.out 2>&1
eval_tap $? 189 'AdminAddUserPermissionsV3' test.out

#- 190 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dF3cfWZQTObu6yrK' \
    --body '[{"Action": 100, "Resource": "JNbfXy4EkxRZukyZ"}, {"Action": 18, "Resource": "sfGrRYtnBeLcCh0B"}, {"Action": 25, "Resource": "WGQpu7dV3csiJr5P"}]' \
    > test.out 2>&1
eval_tap $? 190 'AdminDeleteUserPermissionBulkV3' test.out

#- 191 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '94' \
    --namespace $AB_NAMESPACE \
    --resource 'GRofNOYhieEl9ciy' \
    --userId 'yUezeoWS3qk6sRoW' \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserPermissionV3' test.out

#- 192 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'H97bACB2eO6OXLi7' \
    --after 'CkIeJZWlzyIogX50' \
    --before 'euse6qQsAqgFSN55' \
    --limit '10' \
    --platformId 'eX3MPdlPOklHGcAT' \
    --targetNamespace 'UdnOU3I7mdiKs2wR' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserPlatformAccountsV3' test.out

#- 193 AdminListAllDistinctPlatformAccountsV3
samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'W5VkaY4NomN6peSy' \
    --status 'WMCjKYp1crIfxYl2' \
    > test.out 2>&1
eval_tap $? 193 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 194 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'E1BGk2vAQvb2FKxf' \
    > test.out 2>&1
eval_tap $? 194 'AdminGetListJusticePlatformAccounts' test.out

#- 195 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'uOOX1BjB9b5NkIKO' \
    --userId 'bfmkZBJeIfqPzfca' \
    > test.out 2>&1
eval_tap $? 195 'AdminGetUserMapping' test.out

#- 196 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '2LshCZmeMmUuZ5Qf' \
    --userId 'X2rFtovnhtAArWkV' \
    > test.out 2>&1
eval_tap $? 196 'AdminCreateJusticeUser' test.out

#- 197 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'pVbxqzR319YK0NNn' \
    --skipConflict 'false' \
    --body '{"platformId": "MJRCOWOMxWclcX45", "platformUserId": "uVzq3AAXQipueQBn"}' \
    > test.out 2>&1
eval_tap $? 197 'AdminLinkPlatformAccount' test.out

#- 198 AdminGetUserLinkHistoriesV3
samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zKwuK8WCM6XxGeLQ' \
    --platformId '4HUq3hHf5i76ZtXO' \
    > test.out 2>&1
eval_tap $? 198 'AdminGetUserLinkHistoriesV3' test.out

#- 199 AdminPlatformUnlinkV3
eval_tap 0 199 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 200 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'K0kLf6qR27Lr11zF' \
    --userId 'pMEPVmVcMpyHkJ2n' \
    > test.out 2>&1
eval_tap $? 200 'AdminPlatformUnlinkAllV3' test.out

#- 201 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'SEeLnJ1mJtoSIfgz' \
    --userId 'lvilTUGdcBbFJ0AC' \
    --ticket 'sbdxlZlve6ejDOOQ' \
    > test.out 2>&1
eval_tap $? 201 'AdminPlatformLinkV3' test.out

#- 202 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 202 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 203 AdminDeleteUserLinkingRestrictionByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'v7uLzQIVAKZ4VkMy' \
    --userId 'WW3CtaNiAVyX0ecy' \
    > test.out 2>&1
eval_tap $? 203 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 204 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'TIQOsjoZPQ73sxM5' \
    --userId 'XV1cmstQXwcxQItx' \
    --platformToken 'KzBQ2yJP2IoT1RtQ' \
    > test.out 2>&1
eval_tap $? 204 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 205 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId '9D8Y9QlFOzOuf3zV' \
    --userId 'qRpXMtuzDsG67SYW' \
    --crossNamespace 'false' \
    > test.out 2>&1
eval_tap $? 205 'AdminGetUserSinglePlatformAccount' test.out

#- 206 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Q69VN99Tb6LsAqwk' \
    --body '["bsxuhUFh9S4YtEpx", "780wfMo7ZVsD1s2n", "3mvwNo7FABLfqSO3"]' \
    > test.out 2>&1
eval_tap $? 206 'AdminDeleteUserRolesV3' test.out

#- 207 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'd8SFy7CRMnzQgBuw' \
    --body '[{"namespace": "rICnZ6UWYKVNkjd7", "roleId": "3AZnmwLumrR2Wk6e"}, {"namespace": "3FU4z1QzQkzQ5bjm", "roleId": "GaeDCCtZyauKeYXE"}, {"namespace": "lfYd30NVyYaZEWCq", "roleId": "4AoALZt9JdbWJpP3"}]' \
    > test.out 2>&1
eval_tap $? 207 'AdminSaveUserRoleV3' test.out

#- 208 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'GYdA1bTjkFDi2su4' \
    --userId 'kI2s0IU0kxplDPmo' \
    > test.out 2>&1
eval_tap $? 208 'AdminAddUserRoleV3' test.out

#- 209 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'OnCpbcybcAk1RQNb' \
    --userId 'PPYsGAcw2ya7Zfxh' \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteUserRoleV3' test.out

#- 210 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mBRnIrSRuazEElbv' \
    --body '{"enabled": false, "reason": "RO3JMGF9nIMyROeH"}' \
    > test.out 2>&1
eval_tap $? 210 'AdminUpdateUserStatusV3' test.out

#- 211 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId '2czUCy1vtrdSWyx4' \
    --body '{"emailAddress": "cH2MTIrFw4ZZTu9Z", "password": "B79QQXKU0sQEFCEw"}' \
    > test.out 2>&1
eval_tap $? 211 'AdminTrustlyUpdateUserIdentity' test.out

#- 212 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId '0b6WeOZE0KVBCbX8' \
    > test.out 2>&1
eval_tap $? 212 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 213 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'xYD95GQc3lctKsWd' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "HfNqiJPmrBA3vIM8"}' \
    > test.out 2>&1
eval_tap $? 213 'AdminUpdateClientSecretV3' test.out

#- 214 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId '6aMAkAFq4ii9eg6r' \
    > test.out 2>&1
eval_tap $? 214 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 215 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'jqNi9Q2WnpQg9VJ8' \
    --before '9BGuqdTGrfFhfGlN' \
    --isWildcard 'true' \
    --limit '96' \
    > test.out 2>&1
eval_tap $? 215 'AdminGetRolesV3' test.out

#- 216 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "managers": [{"displayName": "sgrgQAsrRqmXwJxW", "namespace": "fKyGA9aFKXjsL0th", "userId": "JDDkwOCwzdxjyS0E"}, {"displayName": "o6J1fueXBgwiU8bV", "namespace": "Y7HGycYI8MgwW2rl", "userId": "v3eWYaGnUS9biS2z"}, {"displayName": "64xUs6jl5ja8gVtM", "namespace": "bAetESNquz3m1DG1", "userId": "IsnwLK35WO7GtzdB"}], "members": [{"displayName": "zrOKPTUoN5p1GPzZ", "namespace": "Xm1Y19j51ggiXEQF", "userId": "CbARGec2XVfmfBS8"}, {"displayName": "0ykjjwCobNPvH8Hj", "namespace": "CKwxGybNrtqTPOh9", "userId": "F3VbJHVrEYYEmIGQ"}, {"displayName": "xeVRjjWeuVoPUjUe", "namespace": "VQwBskO6iRF4N1To", "userId": "Nh955rWrq14yVysN"}], "permissions": [{"action": 58, "resource": "o4Zk7yqtwxj5kY4m", "schedAction": 41, "schedCron": "CUPfvuGLflpPhsm1", "schedRange": ["d718IA1mWwmWX2IU", "LAiQzMGF9RypWLi7", "4t5OjSiio26fc9dq"]}, {"action": 4, "resource": "E63mSn3KiiEtSB0M", "schedAction": 11, "schedCron": "Wp7DlTVYnOMsmjhP", "schedRange": ["x1EQBBORzEEycjnq", "X8uODPVQtz9IrH0p", "3Un14ozk6rL9Suzv"]}, {"action": 27, "resource": "BY8Dfcunf3mhL0DC", "schedAction": 30, "schedCron": "cdvE22UjJ68nniAl", "schedRange": ["LdXqwzxCvmx1aXlm", "LjvxRqBgqjYGTK6R", "ZE0q8yp3KTZr7Z49"]}], "roleName": "zfQHus05OJkigoOX"}' \
    > test.out 2>&1
eval_tap $? 216 'AdminCreateRoleV3' test.out

#- 217 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'eeRjTPSmW7HtqamE' \
    > test.out 2>&1
eval_tap $? 217 'AdminGetRoleV3' test.out

#- 218 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'tKo0h2YZxhnCn8vM' \
    > test.out 2>&1
eval_tap $? 218 'AdminDeleteRoleV3' test.out

#- 219 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'iXc65Eu4TvAOOzNZ' \
    --body '{"deletable": false, "isWildcard": false, "roleName": "5a0pSLj1f3jUOydG"}' \
    > test.out 2>&1
eval_tap $? 219 'AdminUpdateRoleV3' test.out

#- 220 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'owA8IQf6vP4QjkLp' \
    > test.out 2>&1
eval_tap $? 220 'AdminGetRoleAdminStatusV3' test.out

#- 221 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId '78xM5ZEdnF53agAd' \
    > test.out 2>&1
eval_tap $? 221 'AdminUpdateAdminRoleStatusV3' test.out

#- 222 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId '5GX1jUcftCIipRdz' \
    > test.out 2>&1
eval_tap $? 222 'AdminRemoveRoleAdminV3' test.out

#- 223 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'Xi90w13TbocUxtdk' \
    --after '4VZ45jv7lLbFkNh4' \
    --before 'zqoE03LpJEt9x68x' \
    --limit '19' \
    > test.out 2>&1
eval_tap $? 223 'AdminGetRoleManagersV3' test.out

#- 224 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'w2yVHKvIwtgypcy9' \
    --body '{"managers": [{"displayName": "FTwUD2NrLlLJpoZI", "namespace": "pgyDw1EVp6fwW4lE", "userId": "tTdx43epbrRLnqq1"}, {"displayName": "4nCpxqIjsYqXlj5y", "namespace": "ynhjg7obe185oUga", "userId": "JKgo01EObwAVGwPo"}, {"displayName": "k0ihsFe5HkTKmnt8", "namespace": "hSc9cOP6OIvjG6C5", "userId": "qiUrH99SmA8o6xvN"}]}' \
    > test.out 2>&1
eval_tap $? 224 'AdminAddRoleManagersV3' test.out

#- 225 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'CRIKh1XuW7SqyNV1' \
    --body '{"managers": [{"displayName": "9SQiMMzAIQx9uoD0", "namespace": "2Z7zHKpR42GKsXOt", "userId": "VoGf2RuPccayyTXn"}, {"displayName": "lBwYNSUBxfAFyUJK", "namespace": "U8hSEBuXvcVAUdiN", "userId": "ZwORjl22xloKO35u"}, {"displayName": "iMpa5udbNaMwWvnR", "namespace": "b0xaitPO55NKuQkb", "userId": "D1zOqnjprnPuEEIi"}]}' \
    > test.out 2>&1
eval_tap $? 225 'AdminRemoveRoleManagersV3' test.out

#- 226 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'MFp2TAIyyo5m8qvr' \
    --after 'Tc0x82xWzaNknmqI' \
    --before 'RDmozdbDNDiQBN02' \
    --limit '5' \
    > test.out 2>&1
eval_tap $? 226 'AdminGetRoleMembersV3' test.out

#- 227 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'MkoPT97xiX4u21bW' \
    --body '{"members": [{"displayName": "D28T8wMCxTCczhkf", "namespace": "DQLbZLi95TgUGBss", "userId": "Dp0PA19ElLCXekpz"}, {"displayName": "zb08OxI700u1vPCd", "namespace": "hbcE3sevkJxLxlOj", "userId": "gshtStbshXSlUG2w"}, {"displayName": "AuQTKJ7sdeeq88L3", "namespace": "6O3FnNLs8RYDjzIG", "userId": "c5D28fmlrgOoDIRt"}]}' \
    > test.out 2>&1
eval_tap $? 227 'AdminAddRoleMembersV3' test.out

#- 228 AdminRemoveRoleMembersV3
eval_tap 0 228 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 229 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId '7m83BYM3P4wT5jzq' \
    --body '{"permissions": [{"action": 19, "resource": "nezKCCBqFjGHHi7K", "schedAction": 9, "schedCron": "Tssjtx0blO8x3B1I", "schedRange": ["9SPdoNyrlyZrjk6Y", "qNQcGahKW5pJarLq", "aRuZRWGFpnSpbRNr"]}, {"action": 76, "resource": "lEA6XSZOONEAePyk", "schedAction": 5, "schedCron": "5UnoydcKiWZJnapj", "schedRange": ["sDNX0sSglpyFWcxo", "M40kuLsiybWM0BEz", "nfJyRuF4t1q7Q8bg"]}, {"action": 30, "resource": "X0TSdL2AsyGPMzgu", "schedAction": 14, "schedCron": "RJfDI6D7gRG1u9h3", "schedRange": ["EvPF4NnMCT6uuVA0", "EDf1OYsk70JIfwX9", "Tk9H7P5BeXJLuvsu"]}]}' \
    > test.out 2>&1
eval_tap $? 229 'AdminUpdateRolePermissionsV3' test.out

#- 230 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'w42UVpQW3lcPCRrG' \
    --body '{"permissions": [{"action": 43, "resource": "4OgG9st0pl84jAVf", "schedAction": 50, "schedCron": "75A47mn4X4Slri8U", "schedRange": ["a8z3NGL8zDfmfnB9", "V4K0Y15EnLNz7RkS", "nMMgsPweYNSGoO6S"]}, {"action": 88, "resource": "fzJ8ZSWt4Wy5tlzj", "schedAction": 59, "schedCron": "KG1REVp7A7aDGxvm", "schedRange": ["nFMoIu44Uqahv1aF", "GwyKsDRekqKKcGlE", "v5I8tbVWtURI5zFX"]}, {"action": 8, "resource": "lykr8P5TO1rVjzkk", "schedAction": 13, "schedCron": "2yoaHSUYMYS1D4oP", "schedRange": ["RbJbzzh8xVStQeGG", "mSSgoK7meXQ9CoQF", "MW6uP8zFFm1vQNWY"]}]}' \
    > test.out 2>&1
eval_tap $? 230 'AdminAddRolePermissionsV3' test.out

#- 231 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'uX5Ws4Jug99TBCyg' \
    --body '["doX89Qe4B4f5nYqY", "mEVnK8e4OD3oOmc1", "EIUANvo75KwEixq6"]' \
    > test.out 2>&1
eval_tap $? 231 'AdminDeleteRolePermissionsV3' test.out

#- 232 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '6' \
    --resource 'MCLeK9L0F310TZ6V' \
    --roleId 'Whczi4PrFAFLig40' \
    > test.out 2>&1
eval_tap $? 232 'AdminDeleteRolePermissionV3' test.out

#- 233 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 233 'AdminGetMyUserV3' test.out

#- 234 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'RNfO97wREERrrn0W' \
    --extendExp 'true' \
    --redirectUri 'TQKL7CWPiBqCXEJK' \
    --password 'MDuTz11x8xFXk4ug' \
    --requestId 'sgEY6BtqVVKZscwj' \
    --userName '9bJtNDavqfMPSd83' \
    > test.out 2>&1
eval_tap $? 234 'UserAuthenticationV3' test.out

#- 235 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'XchMnZWOE0D8uqKD' \
    --linkingToken 'epuprwX6krypQE57' \
    --password 'KUscXlsQY5OVOZDK' \
    --username 'fG3MjwCbqbaTYDFk' \
    > test.out 2>&1
eval_tap $? 235 'AuthenticationWithPlatformLinkV3' test.out

#- 236 AuthenticateAndLinkForwardV3
samples/cli/sample-apps Iam authenticateAndLinkForwardV3 \
    --extendExp 'true' \
    --clientId '7WmV9fO7rJhZMP6y' \
    --linkingToken 'bNcJ8urr6irXG2oy' \
    --password '1dWQOCXg9db0gbUd' \
    --username 'Bm40oPKyCJzaWhep' \
    > test.out 2>&1
eval_tap $? 236 'AuthenticateAndLinkForwardV3' test.out

#- 237 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'pbVfLhnAD7SqZy9x' \
    --extendExp 'true' \
    --linkingToken 'iwPzooESRKEO6J6O' \
    > test.out 2>&1
eval_tap $? 237 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 238 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --redirectUri 'BOxELQPDYUXpcij6' \
    --state 'jwuanta5vMGS2Lyp' \
    --platformId 'qXJS1TavfnJ5qD1D' \
    > test.out 2>&1
eval_tap $? 238 'RequestOneTimeLinkingCodeV3' test.out

#- 239 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'yVWZ34lrZt6O8lZD' \
    > test.out 2>&1
eval_tap $? 239 'ValidateOneTimeLinkingCodeV3' test.out

#- 240 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'FspI3KFKhllBjSHr' \
    --isTransient 'false' \
    --clientId '0TS00L51A5E90cvv' \
    --oneTimeLinkCode 'cshZG7T5aCPZ0oDN' \
    > test.out 2>&1
eval_tap $? 240 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 241 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 241 'GetCountryLocationV3' test.out

#- 242 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 242 'Logout' test.out

#- 243 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --codeChallenge 'VZeWoWdmYXVpeqqb' \
    --codeChallengeMethod 'S256' \
    --clientId 'dAZC2y4JQOBibRhR' \
    > test.out 2>&1
eval_tap $? 243 'RequestTokenExchangeCodeV3' test.out

#- 244 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZcZqFk0QQbaKOjWS' \
    --userId 'JCQHUBHvN721kOAM' \
    --platformUserId 'k2lOHjh6pIecLAiu' \
    > test.out 2>&1
eval_tap $? 244 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 245 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vH6NMFS712yfNfII' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 245 'RevokeUserV3' test.out

#- 246 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --blockedPlatformId 'NWLw7ePuQvEBApaj' \
    --codeChallenge 'd8N8fiNLpBJWE6Ni' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'false' \
    --loginWebBased 'true' \
    --nonce '8C3CoSDumlvKjxWU' \
    --oneTimeLinkCode 'ttT0khOIlr5yser4' \
    --redirectUri 'rjjW51SHoKNIAGPu' \
    --scope 'TPIIZdsRmF1B9fW2' \
    --state 'sfQal2oThhMIOPsL' \
    --targetAuthPage 'HJGX0uLQAYnhQPsF' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'Y8KR4XjYULKxuWxW' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 246 'AuthorizeV3' test.out

#- 247 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'k0NJgO7parxFdTQ5' \
    > test.out 2>&1
eval_tap $? 247 'TokenIntrospectionV3' test.out

#- 248 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 248 'GetJWKSV3' test.out

#- 249 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'krNPdg7roQc5ybP5' \
    --factor 'Aky18YWQKN0pVgJc' \
    --mfaToken 'Zncmy4b4qOMIB0yD' \
    > test.out 2>&1
eval_tap $? 249 'SendMFAAuthenticationCode' test.out

#- 250 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'J0QQHulkxvQhfQaA' \
    --mfaToken 'UuF5UiyuQzpxKQx1' \
    > test.out 2>&1
eval_tap $? 250 'Change2faMethod' test.out

#- 251 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'vIhbpUplxxWCODSq' \
    --factor 'kAyybn71wztuwn0W' \
    --mfaToken 'so535sB0PijwyI8d' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 251 'Verify2faCode' test.out

#- 252 Verify2faCodeForward
samples/cli/sample-apps Iam verify2faCodeForward \
    --defaultFactor 'cMrFRiIpcT7ESRQK' \
    --factors 'lhpBAt9vaFXSxbqd' \
    --rememberDevice 'false' \
    --clientId 'yLYhjJrpg4349PRt' \
    --code 'GwClecIBeO2r6X3o' \
    --factor 'JcLKUWTAnE62lCx4' \
    --mfaToken 'd7834oROTviJmJQ9' \
    > test.out 2>&1
eval_tap $? 252 'Verify2faCodeForward' test.out

#- 253 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'dcQNBvxkmfjxM4Ez' \
    --userId 'Xmy5YyArBF6Ixl4m' \
    > test.out 2>&1
eval_tap $? 253 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 254 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId '9LHma8qPxUrWnxS6' \
    --clientId 'xV8pz7K55W7LIVE6' \
    --redirectUri 'APKhcopPETH1siOo' \
    --requestId 'yYDczYLDlR0W9chN' \
    > test.out 2>&1
eval_tap $? 254 'AuthCodeRequestV3' test.out

#- 255 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'nneLouQWtcNg8CIe' \
    --additionalData 'v038Hhsm1QrQbC6E' \
    --clientId 'gJAHebBnneBtGY9M' \
    --createHeadless 'false' \
    --deviceId 'orCL1pBGeunfu9xS' \
    --macAddress 'RjPSdiZBUTGfh6G1' \
    --platformToken 'yIazzg6zsaesBrn2' \
    --serviceLabel '0.00812160022800723' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 255 'PlatformTokenGrantV3' test.out

#- 256 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 256 'GetRevocationListV3' test.out

#- 257 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'q9wg28AD06eW6bDM' \
    > test.out 2>&1
eval_tap $? 257 'TokenRevocationV3' test.out

#- 258 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'k5nPCgM8jLKCLGrJ' \
    --simultaneousTicket 'n9ujCnUh2XUs4xDW' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket '9OiZj09iH0BIwWcf' \
    > test.out 2>&1
eval_tap $? 258 'SimultaneousLoginV3' test.out

#- 259 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'QBVFhFbe5VpZ2dUS' \
    --clientId 'KDX6JYdMVin2PhKf' \
    --clientSecret 'bLGA2negGOHLRqie' \
    --code 'rK4Jd8uUFNXAidD1' \
    --codeVerifier 'zZBqCRChM13I3TCv' \
    --extendNamespace 'T9zxsxU76yJC68Yr' \
    --extendExp 'false' \
    --password 'KKVT03Vj6v63VqO6' \
    --redirectUri 'E4tEwGBQJyiJ4tNx' \
    --refreshToken 'vLHhLG23Scoq26U1' \
    --username 'fdwAOSL8PpQDo6ev' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 259 'TokenGrantV3' test.out

#- 260 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'znskQEEufylFzfoG' \
    > test.out 2>&1
eval_tap $? 260 'VerifyTokenV3' test.out

#- 261 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'O2vYCIz1txJ8otZh' \
    --code 'vhEza7mE6168DY1B' \
    --error 'DEp1p8m9AfkCiuCg' \
    --openidAssocHandle 'WhYwvNfYXX7dyWHL' \
    --openidClaimedId '3g3ZvcNdLfhAwIiC' \
    --openidIdentity '0H3xEgkdAhpEgUES' \
    --openidMode 'SwwVdIe7948BJDBk' \
    --openidNs 'LJ4YZHneTvWrkafy' \
    --openidOpEndpoint '0DMADORzFd8jCbKb' \
    --openidResponseNonce 'KKrFrTXr3yL32ntW' \
    --openidReturnTo 'D4fmsBoHRcafJoc9' \
    --openidSig 'ASSVv1EihI4rTC80' \
    --openidSigned 'NF9rlTzfZwgJsF1L' \
    --state 'ftXwyDyTbaWLTjhw' \
    > test.out 2>&1
eval_tap $? 261 'PlatformAuthenticationV3' test.out

#- 262 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'GEbKbh7lFpX3LrRw' \
    --platformToken '0m1nMs8JbH0qk2dh' \
    > test.out 2>&1
eval_tap $? 262 'PlatformTokenRefreshV3' test.out

#- 263 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'XvDYtSkJwN6Yc4Yb' \
    > test.out 2>&1
eval_tap $? 263 'PublicGetInputValidations' test.out

#- 264 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'wNW4sVfYkI9NiSbX' \
    > test.out 2>&1
eval_tap $? 264 'PublicGetInputValidationByField' test.out

#- 265 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'RggZwstO0QCbItP2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 265 'PublicGetCountryAgeRestrictionV3' test.out

#- 266 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'afGXn4GvhjfRQKD3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 266 'PublicGetConfigValueV3' test.out

#- 267 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 267 'PublicGetCountryListV3' test.out

#- 268 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 268 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 269 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'pfY77UKrtKQ0zYnG' \
    > test.out 2>&1
eval_tap $? 269 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 270 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 270 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 271 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '1lfweI4151HpEflr' \
    --platformUserId 'dAftZ09s1IcYkdlw' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetUserByPlatformUserIDV3' test.out

#- 272 PublicGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam publicGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'username' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetProfileUpdateStrategyV3' test.out

#- 273 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'xTrFKCtdRcI5PXmZ' \
    > test.out 2>&1
eval_tap $? 273 'PublicGetAsyncStatus' test.out

#- 274 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'uETmHJNUadZiZdiL' \
    --limit '13' \
    --offset '31' \
    --platformBy 'YGOtIoCMDodhahbv' \
    --platformId 'yz4LyMBVoupW3Oyg' \
    --query 'Ldj38g9cpsvqoiJG' \
    > test.out 2>&1
eval_tap $? 274 'PublicSearchUserV3' test.out

#- 275 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "v9Y5DUclRcRg44P4", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "LPSMUfT8kSRZz7qu", "policyId": "PDkxBCgvQHBIerIp", "policyVersionId": "yfAU26jLnss3D6HN"}, {"isAccepted": true, "localizedPolicyVersionId": "Y4WfdgXQBll7MjGw", "policyId": "UWV8QE1TcvYDrWdI", "policyVersionId": "OSIvMyno1gb7KjRr"}, {"isAccepted": false, "localizedPolicyVersionId": "ZkUOwHCuUu35Wgte", "policyId": "GCumwciz1sGFxWYW", "policyVersionId": "pxWBHOdyxWJAX0W8"}], "authType": "vAA4KKHJzwuYWLVA", "code": "ngbxsUuQ7ivg5uAW", "country": "kPWOHD3qBcf17ORB", "dateOfBirth": "UnDxm9VUrZLzZwH6", "displayName": "h2386aJsPnnDpJDV", "emailAddress": "tShBlidIYNWDlzcY", "password": "31TsW3bUdsOs12Qe", "reachMinimumAge": true, "uniqueDisplayName": "FqsWgPfAIgN8LoaX"}' \
    > test.out 2>&1
eval_tap $? 275 'PublicCreateUserV3' test.out

#- 276 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field '53TYfgJMqZuHNUFt' \
    --query 'xYa46BaQ9Odp70Im' \
    > test.out 2>&1
eval_tap $? 276 'CheckUserAvailability' test.out

#- 277 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["6Yye0onV4AIRbTbC", "DjmtVFeYFavRbndP", "1ypAThi8L7Qs4Kv8"]}' \
    > test.out 2>&1
eval_tap $? 277 'PublicBulkGetUsers' test.out

#- 278 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "0asWIGyl0TRBdezq", "languageTag": "Z3uGY0xK5cRt1biX"}' \
    > test.out 2>&1
eval_tap $? 278 'PublicSendRegistrationCode' test.out

#- 279 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "dDvFXjWhGs1HfO2j", "emailAddress": "abLU9gZbWR4pmq0C"}' \
    > test.out 2>&1
eval_tap $? 279 'PublicVerifyRegistrationCode' test.out

#- 280 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "xMLFzftbmEpXx0ms", "languageTag": "fPMy1FvOGoIeoC9n"}' \
    > test.out 2>&1
eval_tap $? 280 'PublicForgotPasswordV3' test.out

#- 281 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "cSSrukHNDqMEDriE", "password": "YyJOefAHZYE8e0Ge", "uniqueDisplayName": "s2MknnWw9Ube0oaL", "username": "ThG9sxbccFWaECRY"}' \
    > test.out 2>&1
eval_tap $? 281 'PublicValidateUserInput' test.out

#- 282 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'NBhLb9nBY7WD42DV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 282 'GetAdminInvitationV3' test.out

#- 283 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId '0s1tpr9Fc6KdxJHr' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "MauxoNSTgkM0hJZF", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "43twqaqx8nvEVQNr", "policyId": "e8y8ZsRCg1whXhmA", "policyVersionId": "XhxIszMDt0H1lBw7"}, {"isAccepted": true, "localizedPolicyVersionId": "jRFu5aSJL1EuttVc", "policyId": "ApThAvtxjXxiZG4M", "policyVersionId": "qaXaaIJV8QoGxhxV"}, {"isAccepted": true, "localizedPolicyVersionId": "tXOlY0i6IAntmef8", "policyId": "P46CP4IBuVwfVDWv", "policyVersionId": "KBWEAXbJC3ofkQLk"}], "authType": "hNXMaFWeuCcJQoCM", "code": "UUj8pDzmuNgZTbcq", "country": "3iAWglU7ND3mNlGy", "dateOfBirth": "6sUBBiWDvne0bssd", "displayName": "tSdDjvnBTx84ywRD", "emailAddress": "SU44SCdLdk4LOOmS", "password": "KfjQSsA08IXNXCuC", "reachMinimumAge": false, "uniqueDisplayName": "KdiTSkf8bdAk6t01"}' \
    > test.out 2>&1
eval_tap $? 283 'CreateUserFromInvitationV3' test.out

#- 284 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "npwkWg2BsStUhML1", "country": "xYErlalvjqOQnALX", "dateOfBirth": "nbHzvU4Vhw11OBF6", "displayName": "lDN8xTRQhQXY12Ke", "languageTag": "dAqeb4QbsXFogW2W", "uniqueDisplayName": "eJinMZeUElvDeXmP", "userName": "WoNYsWab2gxu3TTM"}' \
    > test.out 2>&1
eval_tap $? 284 'UpdateUserV3' test.out

#- 285 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "MTrkYNkqDrDi9oVP", "country": "13pNZXGbyXGk9Ycu", "dateOfBirth": "5XOaSfOq065eii1o", "displayName": "gfPf2zn1JjK6oNxI", "languageTag": "DEIsSZIi1vnX251y", "uniqueDisplayName": "5GRDu3cJAGrhixrL", "userName": "1mwTtwJp2b5Dh052"}' \
    > test.out 2>&1
eval_tap $? 285 'PublicPartialUpdateUserV3' test.out

#- 286 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "LltrORL3BdfhwfoA", "emailAddress": "R8B3ET4ujZyPGJfa", "languageTag": "pARKYRjxddQiG9EI", "upgradeToken": "eZwsK9afbfLyTNFn"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicSendVerificationCodeV3' test.out

#- 287 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "bykh48CEPYARiXni", "contactType": "y5eYrGSPCPDeOEnm", "languageTag": "82iZx8cA5Xe0Ws53", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 287 'PublicUserVerificationV3' test.out

#- 288 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "FAPULSNcXvDLVpG6", "country": "bvc2YYUEsXvaSCt2", "dateOfBirth": "hD593Mg6MGSurbch", "displayName": "SzM8lVZoCxXquOOK", "emailAddress": "MOWEmS2dzZJ29P41", "password": "ibhaVA615NKGAzR2", "uniqueDisplayName": "5QKoMuQszzkZor3G", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 288 'PublicUpgradeHeadlessAccountV3' test.out

#- 289 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "xwJo0OBBJZU1bNLw", "password": "eenoBy8Ovse5Z9qW"}' \
    > test.out 2>&1
eval_tap $? 289 'PublicVerifyHeadlessAccountV3' test.out

#- 290 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "jSlOutoeClVNMO5b", "mfaToken": "N14Rv55wb7kUMeKQ", "newPassword": "9lsDvUBFk4xlOTJz", "oldPassword": "hjIa9R3fE5LHN3La"}' \
    > test.out 2>&1
eval_tap $? 290 'PublicUpdatePasswordV3' test.out

#- 291 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'SYrCgUSnCeb1AEKz' \
    > test.out 2>&1
eval_tap $? 291 'PublicCreateJusticeUser' test.out

#- 292 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'otozklIQEpA4RFSq' \
    --redirectUri '0Ylgj7XT81d4trMk' \
    --ticket 'g2Z7CxMBoYooPcOX' \
    > test.out 2>&1
eval_tap $? 292 'PublicPlatformLinkV3' test.out

#- 293 PublicPlatformUnlinkV3
eval_tap 0 293 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 294 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'hAzEkA6tvV6woyGf' \
    > test.out 2>&1
eval_tap $? 294 'PublicPlatformUnlinkAllV3' test.out

#- 295 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Cf0dTtIEFjQZlckA' \
    --ticket 'l1elmIOoU5jYc3GH' \
    > test.out 2>&1
eval_tap $? 295 'PublicForcePlatformLinkV3' test.out

#- 296 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId '4VC80JBZyw27R6xq' \
    --clientId '81PpwBS7T0OqwcK3' \
    --redirectUri 'zeAFId3tRtkR4e5s' \
    > test.out 2>&1
eval_tap $? 296 'PublicWebLinkPlatform' test.out

#- 297 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'M262Kbxz4Z61KHjW' \
    --code '0470RhMhB5SJtYzH' \
    --state 'uqreFisIDpi6r9wK' \
    > test.out 2>&1
eval_tap $? 297 'PublicWebLinkPlatformEstablish' test.out

#- 298 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'MLvEbA2RFvT2Q3Ki' \
    --code 'bsHYVSZzKORy1LVo' \
    --state 'Ep1Uoe5KCxyGZ0eq' \
    > test.out 2>&1
eval_tap $? 298 'PublicProcessWebLinkPlatformV3' test.out

#- 299 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "eN8l5nRWZycGjBUz", "userIds": ["6SwOb7sWfMnxKud2", "94Gxg0h3NWx8vFuQ", "YGD8eEzoCGGYn9xR"]}' \
    > test.out 2>&1
eval_tap $? 299 'PublicGetUsersPlatformInfosV3' test.out

#- 300 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "vXG3NJMki84NVTiL", "code": "atBUsCmH4lnb0pw6", "emailAddress": "IBrG3hl5Wt5wURWU", "languageTag": "qDaRi6kyuOmsRGAN", "newPassword": "L9bIF1vGWhI37pZl"}' \
    > test.out 2>&1
eval_tap $? 300 'ResetPasswordV3' test.out

#- 301 PublicGetUserByUserIdV3
eval_tap 0 301 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 302 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'sEjn37mme7zyOGnM' \
    --activeOnly 'false' \
    --after 'FuEU8JvfgvGux3ak' \
    --before 'JmMwBU2bO2n2v8sf' \
    --limit '95' \
    > test.out 2>&1
eval_tap $? 302 'PublicGetUserBanHistoryV3' test.out

#- 303 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'erzEumo4f9ggBczi' \
    > test.out 2>&1
eval_tap $? 303 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 304 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bV4jpSZwbILUx49I' \
    > test.out 2>&1
eval_tap $? 304 'PublicGetUserInformationV3' test.out

#- 305 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'c1VhPgwVsOk8dKNY' \
    --after '0.5307121795808737' \
    --before '0.8376364227765164' \
    --limit '88' \
    > test.out 2>&1
eval_tap $? 305 'PublicGetUserLoginHistoriesV3' test.out

#- 306 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'n3Z8nLKaLqQUn0Gk' \
    --after 'xM0xxW0dmO7rV7Zo' \
    --before 'NkPdDSHe4h4pocL6' \
    --limit '39' \
    --platformId 'DLLk1jJ6itWeOSPg' \
    > test.out 2>&1
eval_tap $? 306 'PublicGetUserPlatformAccountsV3' test.out

#- 307 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '62gZhXd6FMUNzMMH' \
    > test.out 2>&1
eval_tap $? 307 'PublicListJusticePlatformAccountsV3' test.out

#- 308 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'aj8LdP6K614HsTS6' \
    --body '{"platformId": "HqCW3tpKkFjS8tz9", "platformUserId": "f80r2gQWDXvMp5T4"}' \
    > test.out 2>&1
eval_tap $? 308 'PublicLinkPlatformAccount' test.out

#- 309 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'dqO1qbHkKjecieZH' \
    --body '{"chosenNamespaces": ["9Ms9j7YIVO5n21vf", "SwmiU8ksSlb6Qla9", "vLfApt3VAjVHU2Hy"], "requestId": "e8Yf2KJ8LelzIvMP"}' \
    > test.out 2>&1
eval_tap $? 309 'PublicForceLinkPlatformWithProgression' test.out

#- 310 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UNINwwye27L754Pi' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetPublisherUserV3' test.out

#- 311 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'KRZpxErl3q3KIhN3' \
    --password 'Iofbl3ZYrA2HL0UA' \
    > test.out 2>&1
eval_tap $? 311 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 312 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after '1nhy4iG12jB5bTtb' \
    --before 'oZSe6dl9Wr0U167h' \
    --isWildcard 'true' \
    --limit '54' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetRolesV3' test.out

#- 313 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'IBNooU3ftkaqGIaQ' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetRoleV3' test.out

#- 314 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'false' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetMyUserV3' test.out

#- 315 PublicSendCodeForwardV3
samples/cli/sample-apps Iam publicSendCodeForwardV3 \
    --body '{"context": "xNBTl6IrEMpWrNlg", "emailAddress": "r7yHdP3s0c2spyuc", "languageTag": "M27vvyPnEpamqmv9", "upgradeToken": "DFDV6mpjBH6nQ8xC"}' \
    > test.out 2>&1
eval_tap $? 315 'PublicSendCodeForwardV3' test.out

#- 316 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode '1mwz9Pyk36C95aF8' \
    > test.out 2>&1
eval_tap $? 316 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 317 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["bEBa4vJSS1AGx4Sp", "as6ednnHTWfnLr4S", "ZXpPFfLUR3LwQs4l"], "oneTimeLinkCode": "gNPT738gZyRbT6Zr"}' \
    > test.out 2>&1
eval_tap $? 317 'LinkHeadlessAccountToMyAccountV3' test.out

#- 318 PublicGetMyRedirectionAfterLinkV3
samples/cli/sample-apps Iam publicGetMyRedirectionAfterLinkV3 \
    --oneTimeLinkCode 'M0UKHbSoEqMiQ307' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetMyRedirectionAfterLinkV3' test.out

#- 319 PublicGetMyProfileAllowUpdateStatusV3
samples/cli/sample-apps Iam publicGetMyProfileAllowUpdateStatusV3 \
    > test.out 2>&1
eval_tap $? 319 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 320 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "PgupaFAfuuXunSku"}' \
    > test.out 2>&1
eval_tap $? 320 'PublicSendVerificationLinkV3' test.out

#- 321 PublicGetOpenidUserInfoV3
samples/cli/sample-apps Iam publicGetOpenidUserInfoV3 \
    > test.out 2>&1
eval_tap $? 321 'PublicGetOpenidUserInfoV3' test.out

#- 322 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'zIYXDce3Q1Alaj1d' \
    > test.out 2>&1
eval_tap $? 322 'PublicVerifyUserByLinkV3' test.out

#- 323 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'kh57IPGAohds6GIC' \
    --code 'KvaI7vbJH2So6ngm' \
    --error 'vEgGf2Hq2w2w2Xo5' \
    --state '5Q017ACykT2zFrX0' \
    > test.out 2>&1
eval_tap $? 323 'PlatformAuthenticateSAMLV3Handler' test.out

#- 324 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId '8QoCBIbRSKgXZjPt' \
    --payload 'bC6Lsq01c6td3XWT' \
    > test.out 2>&1
eval_tap $? 324 'LoginSSOClient' test.out

#- 325 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId '8ueZXdgxUJiTLaO6' \
    > test.out 2>&1
eval_tap $? 325 'LogoutSSOClient' test.out

#- 326 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData '5YtB6mOmxf2KEdgm' \
    --code '25Qq1CGNAoYiAsuq' \
    > test.out 2>&1
eval_tap $? 326 'RequestTargetTokenResponseV3' test.out

#- 327 UpgradeAndAuthenticateForwardV3
samples/cli/sample-apps Iam upgradeAndAuthenticateForwardV3 \
    --clientId 'N6uyWvsYos0sx5qu' \
    --upgradeSuccessToken 'MggydB2F6TeNaSgZ' \
    > test.out 2>&1
eval_tap $? 327 'UpgradeAndAuthenticateForwardV3' test.out

#- 328 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '98' \
    --namespace '6FFRejCDY7XZ1B1d' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 328 'AdminListInvitationHistoriesV4' test.out

#- 329 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'voxLpErXMToi8fiP' \
    > test.out 2>&1
eval_tap $? 329 'AdminGetDevicesByUserV4' test.out

#- 330 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'Yeu2vjbbG3gzFIZd' \
    --endDate 'yBXweRjxl7cyosMG' \
    --limit '79' \
    --offset '25' \
    --startDate '32FLTydKYQzmc9kT' \
    > test.out 2>&1
eval_tap $? 330 'AdminGetBannedDevicesV4' test.out

#- 331 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ydKkXMAbZyOOFX6Y' \
    > test.out 2>&1
eval_tap $? 331 'AdminGetUserDeviceBansV4' test.out

#- 332 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "hSYExPAgQIQFt8Is", "deviceId": "zYZjYtjjlMyBVeB7", "deviceType": "FFZjN6tGMF8H6NS1", "enabled": false, "endDate": "0veC3L2jsYOOeewz", "ext": {"3ec8yYi8IabYTxXC": {}, "WvietbBqfNv8lLDK": {}, "5EkzXkenKmuYgI3M": {}}, "reason": "VOMv1sEQ8e8bOM2S"}' \
    > test.out 2>&1
eval_tap $? 332 'AdminBanDeviceV4' test.out

#- 333 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'og2SSv4CsEKKBStB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 333 'AdminGetDeviceBanV4' test.out

#- 334 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'cz5ACuP8tqHJF5UI' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 334 'AdminUpdateDeviceBanV4' test.out

#- 335 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'b8mxoLgmG9xAJ7c4' \
    --startDate 'MysmxPdygluxbFR3' \
    --deviceType 'j02J0zPi0ShVzPry' \
    > test.out 2>&1
eval_tap $? 335 'AdminGenerateReportV4' test.out

#- 336 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 336 'AdminGetDeviceTypesV4' test.out

#- 337 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId '7gYgONBPI90p3rmI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 337 'AdminGetDeviceBansV4' test.out

#- 338 AdminDecryptDeviceV4
eval_tap 0 338 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 339 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'zArZityuGB4OhVkj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 339 'AdminUnbanDeviceV4' test.out

#- 340 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'n1NPzZMF1Te50Fql' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 340 'AdminGetUsersByDeviceV4' test.out

#- 341 AdminGetNamespaceInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 341 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 342 AdminGetNamespaceUserInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceUserInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 342 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 343 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 99, "userInfo": {"country": "eKMyOS1zg4bF1zKk"}}' \
    > test.out 2>&1
eval_tap $? 343 'AdminCreateTestUsersV4' test.out

#- 344 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "cNjvDqPT8soKBP3f", "policyId": "NDZjY6Hcw0yYodax", "policyVersionId": "tIcqBiR5eaX34GCv"}, {"isAccepted": false, "localizedPolicyVersionId": "dGzGojmFtdyse7cl", "policyId": "yQG3Smuw6k4YAL11", "policyVersionId": "ZsngZW2P2gkehhAi"}, {"isAccepted": true, "localizedPolicyVersionId": "u12Y8K4MNG34G7zI", "policyId": "n66WlyO5UrDzs1UA", "policyVersionId": "ugsSEcE8TN1Z6ZqL"}], "authType": "EMAILPASSWD", "code": "yhK3aPCco22NgyNo", "country": "fJnhnD3lAY706y5a", "dateOfBirth": "5b7gnFubIZne9zTg", "displayName": "8mUTDHiiOERKAgyo", "emailAddress": "ws0YxfLUxvnCqcV5", "password": "RSL5JZaddJdgeZWu", "passwordMD5Sum": "21lKUupgoXBgBb9N", "reachMinimumAge": true, "uniqueDisplayName": "xpMGKyAJtMVmzgDW", "username": "VutfubdieRnW8L5X"}' \
    > test.out 2>&1
eval_tap $? 344 'AdminCreateUserV4' test.out

#- 345 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": true, "userIds": ["TVthdg2NFL7EMnkP", "myIAqxsQeX5eAy7I", "0cqN73lcEqM7hrNT"]}' \
    > test.out 2>&1
eval_tap $? 345 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 346 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["qfhcd7lRUqYp3vyw", "ZhwOZ95RuCV2roae", "xtswr08CIxFdRjXO"]}' \
    > test.out 2>&1
eval_tap $? 346 'AdminBulkCheckValidUserIDV4' test.out

#- 347 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'oE7MuDEuKzmKQjqo' \
    --body '{"avatarUrl": "V5gKszt9CVxLD6UE", "country": "HsEbjM2enAdKUPT1", "dateOfBirth": "xJeUWzsU88OidnNJ", "displayName": "uie1Xxjy31TpOeNg", "languageTag": "Rb9DKGZtqYeRApBw", "skipLoginQueue": false, "uniqueDisplayName": "xbxSKSU6NFLuVSh4", "userName": "CD95qou9g1qg9B1Q"}' \
    > test.out 2>&1
eval_tap $? 347 'AdminUpdateUserV4' test.out

#- 348 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'GOapCVlNkFODqInb' \
    --body '{"code": "6ENl1aTrAo6YLvEo", "emailAddress": "eKIVnsOTO9cmKG8t"}' \
    > test.out 2>&1
eval_tap $? 348 'AdminUpdateUserEmailAddressV4' test.out

#- 349 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId '4hW8fpmos887Lad4' \
    --body '{"factor": "oLEi5A3O841Dv2SM", "mfaToken": "bvygKrOf93xOyz5O"}' \
    > test.out 2>&1
eval_tap $? 349 'AdminDisableUserMFAV4' test.out

#- 350 AdminGetUserMFAStatusV4
samples/cli/sample-apps Iam adminGetUserMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    --userId '7YqimI6022qpJc8k' \
    > test.out 2>&1
eval_tap $? 350 'AdminGetUserMFAStatusV4' test.out

#- 351 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId '49lcnnSMf0LjXZRn' \
    > test.out 2>&1
eval_tap $? 351 'AdminListUserRolesV4' test.out

#- 352 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'T4mrFDIOQgFrFB3w' \
    --body '{"assignedNamespaces": ["i6XiA05S2A8TueHV", "oDnDS5hwazMrFXKB", "UQXS4yLVDPsnFxkc"], "roleId": "ZPJJHsYAxIh0UHAZ"}' \
    > test.out 2>&1
eval_tap $? 352 'AdminUpdateUserRoleV4' test.out

#- 353 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '3YJtGVZejoYLbiMI' \
    --body '{"assignedNamespaces": ["chCXDowf3XpoyLL9", "2TFmQ4NIrNTd1qwT", "L69q7CztnPIQ870J"], "roleId": "rIzbtVTOojO81iom"}' \
    > test.out 2>&1
eval_tap $? 353 'AdminAddUserRoleV4' test.out

#- 354 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '3k3FivbkqkiGNUvv' \
    --body '{"assignedNamespaces": ["aRuXYVeQSroOl4hU", "MPAmpSq0e7G5TQeq", "KWkq3DecqMbvNrsb"], "roleId": "fIKNMnVbeP80GR7l"}' \
    > test.out 2>&1
eval_tap $? 354 'AdminRemoveUserRoleV4' test.out

#- 355 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'false' \
    --limit '0' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 355 'AdminGetRolesV4' test.out

#- 356 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "0v4IxhvHqB8tTQ9X"}' \
    > test.out 2>&1
eval_tap $? 356 'AdminCreateRoleV4' test.out

#- 357 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'It9axyP7rNoWRoe0' \
    > test.out 2>&1
eval_tap $? 357 'AdminGetRoleV4' test.out

#- 358 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'ZTDkYBsbinFUOwYy' \
    > test.out 2>&1
eval_tap $? 358 'AdminDeleteRoleV4' test.out

#- 359 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'umka8oduKrLhnPVo' \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "R9ckhYgg3Cf5P9Oz"}' \
    > test.out 2>&1
eval_tap $? 359 'AdminUpdateRoleV4' test.out

#- 360 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'Z9Oy7tDgGzMGLtFH' \
    --body '{"permissions": [{"action": 9, "resource": "KmrhWUOj6sDuUXOQ", "schedAction": 92, "schedCron": "GK4ZQKtb0uxd3Nyl", "schedRange": ["XmOfyZnXVZu5mSjG", "TuEAnAOX8SSppC4N", "fXwP6N8mAwhwLQo0"]}, {"action": 69, "resource": "rlyC5xzAQk2Rc8MG", "schedAction": 22, "schedCron": "SY3taxwk3EHcGxJW", "schedRange": ["n2hAUmq4054HZCTE", "4QxYfuqmhYje6rov", "TwPLqjpC2wk1Qonr"]}, {"action": 63, "resource": "hgKZnMnOw9FdHAbI", "schedAction": 57, "schedCron": "DzfGgrO1iSs2cNJH", "schedRange": ["HCNxTwteM99BN8IO", "4EIn5Ra6SawETWWe", "LJyeul1uBdYrYynI"]}]}' \
    > test.out 2>&1
eval_tap $? 360 'AdminUpdateRolePermissionsV4' test.out

#- 361 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId '5TF4U2cZm1xySxL0' \
    --body '{"permissions": [{"action": 2, "resource": "Fh2M9Q4yL0A50oab", "schedAction": 19, "schedCron": "200vR43FMWwA720Z", "schedRange": ["wZDpqSofUVo7Z7Lg", "Am0ID7ctuqmQN66V", "FdGwGtjX8U9zZDsR"]}, {"action": 87, "resource": "hZjxlaaF33dbveHb", "schedAction": 38, "schedCron": "O6z9spjMlmzGHgNJ", "schedRange": ["MdS9JTa3dthmqx1a", "yn1KNmLIQB1nek26", "vRM0T3QQdWbfFpBF"]}, {"action": 53, "resource": "J8sdzOZ835ZzP7wb", "schedAction": 18, "schedCron": "kXA8GDLIsrdDVrhM", "schedRange": ["wKWVIOJwUBcV4olk", "5avn8XKUmuTJAHnR", "NGtPY4P93CmPBm4M"]}]}' \
    > test.out 2>&1
eval_tap $? 361 'AdminAddRolePermissionsV4' test.out

#- 362 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'KnVOzBEUclBnvKsa' \
    --body '["p9j6pqY3KcQAHUIA", "aliPqYAjzdFtOLgl", "NyNQxmOWSu6LWgMV"]' \
    > test.out 2>&1
eval_tap $? 362 'AdminDeleteRolePermissionsV4' test.out

#- 363 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'ScazpcIgmCmi8l1w' \
    --after '1GasNQoa1dLoQxoK' \
    --before 'QMdzZyRJuSs7lFUH' \
    --limit '46' \
    > test.out 2>&1
eval_tap $? 363 'AdminListAssignedUsersV4' test.out

#- 364 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'yIKJQ8mgvdJEEya9' \
    --body '{"assignedNamespaces": ["lCJhTVm8HCTHSG7z", "1kiHFIF89z5C1P9k", "EPMIIR9l51DYSq7t"], "namespace": "TtpPli5tl3X861u7", "userId": "20BgcY5AeO0zXO6N"}' \
    > test.out 2>&1
eval_tap $? 364 'AdminAssignUserToRoleV4' test.out

#- 365 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'lukRxhGe16wLJ2Yo' \
    --body '{"namespace": "fJXXDYPMLtmAxzu3", "userId": "BOppoj9TtnHBloEd"}' \
    > test.out 2>&1
eval_tap $? 365 'AdminRevokeUserFromRoleV4' test.out

#- 366 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["iAKGSXDcHvSgOLCQ", "SAuU1pbA8sYYDQH1", "9riBcidlfdAzOTry"], "emailAddresses": ["StdvQXUavgkPMPWr", "vYKlXoOQpYDEHttm", "bgayHhtGVrKcIwhT"], "isAdmin": true, "isNewStudio": true, "languageTag": "NQzkHK9aYovexDOj", "namespace": "vYZ0apODhzyYV1zN", "roleId": "CO6hGgM3WCvd2beo"}' \
    > test.out 2>&1
eval_tap $? 366 'AdminInviteUserNewV4' test.out

#- 367 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "mA3qt6rpmKmO0s6R", "country": "6iDYXdkbTKHH5pBL", "dateOfBirth": "oAtVNlgss4WsLX2X", "displayName": "CCULOi17o11rQED2", "languageTag": "rlp3FJ5MVBN6goBa", "skipLoginQueue": true, "uniqueDisplayName": "ZpWPUfHRVHv6iG8v", "userName": "zcBJq3H2mgizYKEn"}' \
    > test.out 2>&1
eval_tap $? 367 'AdminUpdateMyUserV4' test.out

#- 368 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"factor": "dIv6aE1p11IyaI1u", "mfaToken": "v8xaISILJ59a1js2"}' \
    > test.out 2>&1
eval_tap $? 368 'AdminDisableMyAuthenticatorV4' test.out

#- 369 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'X3YqzWKI0dmJSWAZ' \
    > test.out 2>&1
eval_tap $? 369 'AdminEnableMyAuthenticatorV4' test.out

#- 370 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 370 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 371 AdminGetMyBackupCodesV4
eval_tap 0 371 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 372 AdminGenerateMyBackupCodesV4
eval_tap 0 372 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 373 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    --body '{"factor": "FyczxEvi6yZV50Km", "mfaToken": "xOjIKb9RX3XMp6io"}' \
    > test.out 2>&1
eval_tap $? 373 'AdminDisableMyBackupCodesV4' test.out

#- 374 AdminDownloadMyBackupCodesV4
eval_tap 0 374 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 375 AdminEnableMyBackupCodesV4
eval_tap 0 375 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 376 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag 'BX3QVzAtJ9wmgunl' \
    > test.out 2>&1
eval_tap $? 376 'AdminGetBackupCodesV4' test.out

#- 377 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag 'ZHEAQTBzoXkA7ja4' \
    > test.out 2>&1
eval_tap $? 377 'AdminGenerateBackupCodesV4' test.out

#- 378 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag '3fl8QfQCTy6GVTYr' \
    > test.out 2>&1
eval_tap $? 378 'AdminEnableBackupCodesV4' test.out

#- 379 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code 'FkNXBrPhT0g9vQkk' \
    --factor 'RMGACyuGsnrw05yl' \
    > test.out 2>&1
eval_tap $? 379 'AdminChallengeMyMFAV4' test.out

#- 380 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action 'bGbIrbsJRGjh7XuV' \
    --languageTag 'rBtZjh7DwqQGZKhc' \
    > test.out 2>&1
eval_tap $? 380 'AdminSendMyMFAEmailCodeV4' test.out

#- 381 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"factor": "HYnVATnsLD90VSJB", "mfaToken": "yEB3wlGRkh3FEEXu"}' \
    > test.out 2>&1
eval_tap $? 381 'AdminDisableMyEmailV4' test.out

#- 382 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'V5bxuY90rSEXaBol' \
    > test.out 2>&1
eval_tap $? 382 'AdminEnableMyEmailV4' test.out

#- 383 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 383 'AdminGetMyEnabledFactorsV4' test.out

#- 384 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor '0QaF3DcFsbc7ywT8' \
    > test.out 2>&1
eval_tap $? 384 'AdminMakeFactorMyDefaultV4' test.out

#- 385 AdminGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam adminGetMyOwnMFAStatusV4 \
    > test.out 2>&1
eval_tap $? 385 'AdminGetMyOwnMFAStatusV4' test.out

#- 386 AdminGetMyMFAStatusV4
eval_tap 0 386 'AdminGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 387 AdminInviteUserV4
eval_tap 0 387 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 388 AuthenticationWithPlatformLinkV4
samples/cli/sample-apps Iam authenticationWithPlatformLinkV4 \
    --extendExp 'true' \
    --clientId 'swO9WT1yZTee1TDl' \
    --linkingToken 'lDLPqohzRQfesKyZ' \
    --password 'iPGwPjnA74GzZ00k' \
    --username '2kmL6g8NDHHBIyCY' \
    > test.out 2>&1
eval_tap $? 388 'AuthenticationWithPlatformLinkV4' test.out

#- 389 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'fdisMrBdZ7lcG62z' \
    --extendExp 'true' \
    --linkingToken 'Cmr5iLpQt7Ye4uIK' \
    > test.out 2>&1
eval_tap $? 389 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 390 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'OitRjYlaFydMorRU' \
    --factor 'enNW3bJt9rlGjiNS' \
    --mfaToken 'rX50GL6PHHrntMcn' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 390 'Verify2faCodeV4' test.out

#- 391 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'Fe7JSiwP0en295vY' \
    --codeChallenge 'fuxWYoxRQXEFL9H3' \
    --codeChallengeMethod 'plain' \
    --additionalData 'TWqjOoAEsPMMRZg3' \
    --clientId 'VkpvZaunxfHp2PDu' \
    --createHeadless 'false' \
    --deviceId 'g7rhLcNUKAa3pqso' \
    --macAddress 'hWxxOhJdhhgO5Vzz' \
    --platformToken 'q2JBkbtGY8Ut9lH0' \
    --serviceLabel '0.43934591033595016' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 391 'PlatformTokenGrantV4' test.out

#- 392 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge '2kNyD2R6qpcAKftY' \
    --codeChallengeMethod 'S256' \
    --simultaneousPlatform '1zuUmdEGtA34sOxC' \
    --simultaneousTicket 'lYqmMnzbqh08QhIH' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket 'kazjj9s4ZBfI9wX8' \
    > test.out 2>&1
eval_tap $? 392 'SimultaneousLoginV4' test.out

#- 393 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge 'GMSBAD17oSnoTpAE' \
    --codeChallengeMethod 'plain' \
    --additionalData 'iSNCCJImgvmpJQhv' \
    --clientId 'HagWHZMnNen7Go5o' \
    --clientSecret 'ARiLvW9sQUh4v0bl' \
    --code 'ufYCyb3iH46iKFZy' \
    --codeVerifier 'Cx9rJ6Je1wZzFMqP' \
    --extendNamespace '36LVN2ZGMffXzB5v' \
    --extendExp 'false' \
    --loginQueueTicket 'YkwiZQtUaGsfDHLQ' \
    --password 'qp9gmo27ggT0nAtv' \
    --redirectUri 'jCTgvkWa4yzmOTMh' \
    --refreshToken 'oeEUdvGyMUj3W3Pl' \
    --username '67TbDRhUARfNXJNi' \
    --grantType 'urn:ietf:params:oauth:grant-type:login_queue_ticket' \
    > test.out 2>&1
eval_tap $? 393 'TokenGrantV4' test.out

#- 394 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData '73445SrCJprn0RxC' \
    --code 'APy0nVUQ0BqjxE4l' \
    > test.out 2>&1
eval_tap $? 394 'RequestTargetTokenResponseV4' test.out

#- 395 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'beoaCXmVwymTXxBo' \
    --rawPUID 'true' \
    --body '{"pidType": "QdKVqZX680p5Zqiz", "platformUserIds": ["KxUOg2NUWOzJ3imP", "cbEqaS0ZC5jaFWCT", "nYEEIza9yqJE4YJU"]}' \
    > test.out 2>&1
eval_tap $? 395 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 396 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "z3L35HnmZtGEUrVn", "policyId": "PREwnyW5li6GOURA", "policyVersionId": "EXm0k3jnjs6zJeuW"}, {"isAccepted": true, "localizedPolicyVersionId": "osVM5p6kHtWcEHeo", "policyId": "h0LFnKQq5tTFAgdx", "policyVersionId": "BCD2bz2EKfCkFXSY"}, {"isAccepted": false, "localizedPolicyVersionId": "XLUKzSJfxAEaGSjl", "policyId": "Bn60X87z4mpi0PEI", "policyVersionId": "uZ9AKhmtp0JsyN7g"}], "authType": "EMAILPASSWD", "country": "3bjDZ572I2SM53S5", "dateOfBirth": "BWhy5sYOwWCBeTo1", "displayName": "jHSYGg6INaHESU1i", "emailAddress": "9KGCSfSmdgt0LPPz", "password": "znPNBIZVsJyBvE7r", "passwordMD5Sum": "nYsbQozBdyGxYYwg", "uniqueDisplayName": "5WiYBYgHJ5TSyBUX", "username": "GxgH2O3qTpOuq0U0", "verified": true}' \
    > test.out 2>&1
eval_tap $? 396 'PublicCreateTestUserV4' test.out

#- 397 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "SVfPiinFNj1kxiCK", "policyId": "81cD9DNU4lesHkEo", "policyVersionId": "QCwcRdabWlic6qOh"}, {"isAccepted": false, "localizedPolicyVersionId": "FZBWAvOCVR3RgWmK", "policyId": "hLz5Q6EDGzTtqrpe", "policyVersionId": "ZXmXatjzVmkL99yi"}, {"isAccepted": false, "localizedPolicyVersionId": "zWIOXa10uDuZnzoJ", "policyId": "J3hsDEJUDvYNFre4", "policyVersionId": "ECX9C3YdjjuUy3hq"}], "authType": "EMAILPASSWD", "code": "ft8jEGMLiYpHF0Xo", "country": "jSzM46zcJVn2vHo7", "dateOfBirth": "uTzSuI2aGz08GSBU", "displayName": "Eqi1nSDvh3UCE0no", "emailAddress": "FBfuKGHe48lS7KcU", "password": "4DSk1i95x2URKoIP", "passwordMD5Sum": "eaXLuwaRBoRbWOxD", "reachMinimumAge": true, "uniqueDisplayName": "1A3SV8xBvMY1kgPU", "username": "eMUHlQZD6ksczJnQ"}' \
    > test.out 2>&1
eval_tap $? 397 'PublicCreateUserV4' test.out

#- 398 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId '4RbKjJRovcjEjBtD' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Z0ZXNn9veQHqZe72", "policyId": "xsh1IMgcsKV2lM46", "policyVersionId": "nRiWsMtSieMWsTtA"}, {"isAccepted": true, "localizedPolicyVersionId": "zqQsPjtc7gr4ayx7", "policyId": "3nDeFNyaXuxhRYhl", "policyVersionId": "zUAWS4UBt0WSPaB9"}, {"isAccepted": true, "localizedPolicyVersionId": "ETCpbEqLM4OHoygV", "policyId": "h4zt8ikI9Vh0DaJT", "policyVersionId": "wQWuZPr0lpPCrQMg"}], "authType": "EMAILPASSWD", "code": "0kGLWO7HFVX4qR1K", "country": "AoZnaMV78wdC5Cx2", "dateOfBirth": "5Oz6VSVc3wMSCMea", "displayName": "8JPhnSR6Ir3ChNEW", "emailAddress": "LAtLin8yCDOLAa2W", "password": "HdGZbM1YpPuOlC9R", "passwordMD5Sum": "g2fz1E3O78sX9uCL", "reachMinimumAge": false, "uniqueDisplayName": "RFLVuwYQ8Kmt96AN", "username": "JC8Gk2pPpPMi7BFz"}' \
    > test.out 2>&1
eval_tap $? 398 'CreateUserFromInvitationV4' test.out

#- 399 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "QnbaZIZPr3318f26", "country": "TooKX4qKz9IZ1ulJ", "dateOfBirth": "kJumWpXox3IpdeDI", "displayName": "J9b0jGDLV2NO9rvr", "languageTag": "2QhyMYtk4SjJRCPI", "uniqueDisplayName": "jXZncsvMFoI5PXMG", "userName": "JKPEQlqzfbbid5zM"}' \
    > test.out 2>&1
eval_tap $? 399 'PublicUpdateUserV4' test.out

#- 400 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "j2MPTJg9xTqc4nqs", "emailAddress": "2qCqVZQbnK7DtJ4u"}' \
    > test.out 2>&1
eval_tap $? 400 'PublicUpdateUserEmailAddressV4' test.out

#- 401 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "xlMoTHI5x8hFQxP4", "country": "K27UZKjImez8Gb68", "dateOfBirth": "6jh6lmlheeWc9mgF", "displayName": "ZLnewSQwIHsA3lxa", "emailAddress": "l2yKV7U1ZftjqD1h", "password": "mKJcsFYcnVTfBK3L", "reachMinimumAge": false, "uniqueDisplayName": "gltu9g78fUEiDXW3", "username": "77TekIezbI5KnY4C", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 401 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 402 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"dateOfBirth": "Z5jL9T8CfpSmNddx", "displayName": "nu6nJgQqaKq78pdk", "emailAddress": "bqjGMNcRISAwsjx3", "password": "l8gmV8hR2kHazSJN", "uniqueDisplayName": "H0RW74Vd5X793N09", "username": "t5SgnBoZrXfyXwXY"}' \
    > test.out 2>&1
eval_tap $? 402 'PublicUpgradeHeadlessAccountV4' test.out

#- 403 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "CSUKHJNb8gd8iW69", "mfaToken": "ml8T9QR8DRFNrfHC"}' \
    > test.out 2>&1
eval_tap $? 403 'PublicDisableMyAuthenticatorV4' test.out

#- 404 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code '4ATNDBnSqBx1jkYV' \
    > test.out 2>&1
eval_tap $? 404 'PublicEnableMyAuthenticatorV4' test.out

#- 405 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 405 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 406 PublicGetMyBackupCodesV4
eval_tap 0 406 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 407 PublicGenerateMyBackupCodesV4
eval_tap 0 407 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 408 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "BDii73YONsi7Rh63", "mfaToken": "cMEusU8YavbLTru0"}' \
    > test.out 2>&1
eval_tap $? 408 'PublicDisableMyBackupCodesV4' test.out

#- 409 PublicDownloadMyBackupCodesV4
eval_tap 0 409 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 410 PublicEnableMyBackupCodesV4
eval_tap 0 410 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 411 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag '4p9S3FiRH3gughPt' \
    > test.out 2>&1
eval_tap $? 411 'PublicGetBackupCodesV4' test.out

#- 412 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'PyKxPZYyYyNDHGrX' \
    > test.out 2>&1
eval_tap $? 412 'PublicGenerateBackupCodesV4' test.out

#- 413 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'ryUITGgSVcPi2Bv4' \
    > test.out 2>&1
eval_tap $? 413 'PublicEnableBackupCodesV4' test.out

#- 414 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code 'cbxxzMuLsJVoIqRm' \
    --factor 'qmfExdVmn2KUnGE6' \
    > test.out 2>&1
eval_tap $? 414 'PublicChallengeMyMFAV4' test.out

#- 415 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 415 'PublicRemoveTrustedDeviceV4' test.out

#- 416 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    --action 'RRmVdPN9KZtplj7R' \
    --languageTag '0VUOwfYo1hblRV9G' \
    > test.out 2>&1
eval_tap $? 416 'PublicSendMyMFAEmailCodeV4' test.out

#- 417 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "l1GlmtnpWe3H0f43", "mfaToken": "R9maVLSE2GeGTVHp"}' \
    > test.out 2>&1
eval_tap $? 417 'PublicDisableMyEmailV4' test.out

#- 418 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'Tr22CJBFi1FXxBW8' \
    > test.out 2>&1
eval_tap $? 418 'PublicEnableMyEmailV4' test.out

#- 419 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 419 'PublicGetMyEnabledFactorsV4' test.out

#- 420 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'MPDf8Z23pkHWGQ1O' \
    > test.out 2>&1
eval_tap $? 420 'PublicMakeFactorMyDefaultV4' test.out

#- 421 PublicGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam publicGetMyOwnMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 421 'PublicGetMyOwnMFAStatusV4' test.out

#- 422 PublicGetMyMFAStatusV4
eval_tap 0 422 'PublicGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 423 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'n1wEO8p5DfB7WRl5' \
    > test.out 2>&1
eval_tap $? 423 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 424 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "GLWWlk2yyfp0oyXx", "emailAddress": "lYdz8PoGkbaOvxDt", "languageTag": "90sqDfqTmHWaRHeu", "namespace": "a6CnKavVf9WnEFQX", "namespaceDisplayName": "DNlHC2i01EtmXkzK"}' \
    > test.out 2>&1
eval_tap $? 424 'PublicInviteUserV4' test.out

#- 425 PublicUpgradeHeadlessWithCodeV4Forward
samples/cli/sample-apps Iam publicUpgradeHeadlessWithCodeV4Forward \
    --body '{"code": "eFT8S35SSzbyPWFZ", "country": "hknthuYBhpIkLagX", "dateOfBirth": "pFXMzp32LaWZAEu5", "displayName": "NVBOMR2t5vaKcXGa", "emailAddress": "OJ2RgSk19F1O3Yoq", "password": "YC1NlWuyETZYxsGi", "reachMinimumAge": false, "uniqueDisplayName": "ZYFotVnq5YXJ9UjF", "username": "p3sbyXrvpd9zgtr3", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 425 'PublicUpgradeHeadlessWithCodeV4Forward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE