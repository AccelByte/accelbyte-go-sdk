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
echo "1..418"

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
    --body '{"modules": [{"docLink": "BXkckPbfH9QlX2o6", "groups": [{"group": "rQ8Z25zJ1QsfXuYe", "groupId": "WRR6oRjSvLkoHJPF", "permissions": [{"allowedActions": [66, 23, 62], "resource": "9c3x8NsTbufa8SN7"}, {"allowedActions": [76, 11, 7], "resource": "pllW40gdAlvZ90rL"}, {"allowedActions": [57, 99, 60], "resource": "5jXZJugiQYG4VBFD"}]}, {"group": "8CelTkninGazBOeJ", "groupId": "wH1lAP4ve2wy81Xu", "permissions": [{"allowedActions": [13, 52, 70], "resource": "viwLJND7HgWO90he"}, {"allowedActions": [23, 97, 69], "resource": "ygiZcXrQYnqBjav8"}, {"allowedActions": [72, 54, 66], "resource": "cuCzWS3Io9Xwq9oV"}]}, {"group": "D9I7HuAOU3NrTTGG", "groupId": "gTQ1xSKCJwDbuUQ3", "permissions": [{"allowedActions": [85, 85, 60], "resource": "ZaQyOZBafHLWQREg"}, {"allowedActions": [33, 19, 44], "resource": "KddA8J4ykyupvcAx"}, {"allowedActions": [37, 17, 46], "resource": "sLETDSYGhwjCAe1v"}]}], "module": "iLrbnyvHxWb46KgR", "moduleId": "XYYd5z2W6ToTxXd8"}, {"docLink": "ajcq2WfIwtY4fnCl", "groups": [{"group": "HCdLTju7FmSqDHFl", "groupId": "tkZifuRrkL0BWVh3", "permissions": [{"allowedActions": [20, 13, 66], "resource": "KcPUUZQdVsmjbC7Z"}, {"allowedActions": [74, 43, 6], "resource": "fvE4oAuB0N1MUy4z"}, {"allowedActions": [97, 83, 97], "resource": "coGRxeVwu41T89dH"}]}, {"group": "EGLyTHTub6OK7YEC", "groupId": "ewFOgdw72Us21Fwt", "permissions": [{"allowedActions": [92, 99, 67], "resource": "qlF6h2RTzRy4PWFq"}, {"allowedActions": [75, 91, 65], "resource": "qwsWWrUuuZDNoFkZ"}, {"allowedActions": [27, 91, 66], "resource": "xTeH0UkIpmGd0ZN8"}]}, {"group": "vcpct9sKwLqPfm3F", "groupId": "knKPiXb04rKX0A0t", "permissions": [{"allowedActions": [15, 69, 73], "resource": "ufNYHIbP9FLlpt2i"}, {"allowedActions": [72, 6, 7], "resource": "y3jM9yKGFdOrn66d"}, {"allowedActions": [93, 23, 10], "resource": "KNqXMKfUIQtjoZtb"}]}], "module": "6SJV7vP6tCLVXjBh", "moduleId": "kJKnRkBnZQpWhnFq"}, {"docLink": "psf48FcDwHBAef4g", "groups": [{"group": "A0vlPh4AQEDB8sMT", "groupId": "ev07jPpB1G3E2oYo", "permissions": [{"allowedActions": [72, 26, 91], "resource": "h4DjKtmtYam9xrU3"}, {"allowedActions": [67, 7, 53], "resource": "7YYwWSScD5Dtlpwx"}, {"allowedActions": [3, 8, 87], "resource": "hFo9CeextyGIhyoO"}]}, {"group": "8HagDAOaQDr5GKti", "groupId": "f8PHBmYQbzsnYSXZ", "permissions": [{"allowedActions": [41, 22, 83], "resource": "TMnZ1aFUQUfLcqer"}, {"allowedActions": [41, 85, 47], "resource": "3hw2InuAxiLGxBHp"}, {"allowedActions": [12, 16, 81], "resource": "mL0a8aQyKPHLyljF"}]}, {"group": "bqVBdAGAJ41q5Qqm", "groupId": "Hd6sKzpqbsnZ5ehM", "permissions": [{"allowedActions": [18, 91, 32], "resource": "b4NSqCrGikEg2QSl"}, {"allowedActions": [57, 74, 42], "resource": "Kfq8viIqtSX3lpSW"}, {"allowedActions": [39, 77, 12], "resource": "J4Qh3U3oetgO9uLc"}]}], "module": "H6VDau0AyFu9NRxa", "moduleId": "JCSc6Cl58NIKIxLh"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'false' \
    --body '{"groupId": "qF2s2quiQ7pOgJNG", "moduleId": "daBdwiD7QhVC4KlA"}' \
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
    --body '[{"field": "Xz28sAZV1F9EFrC2", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["r785YMG65JxI1hCW", "GVcKccfA2WXPP441", "7u8eODXjjnIkdPFr"], "preferRegex": true, "regex": "YJKRLx2A8RPPJobj"}, "blockedWord": ["4mHIiuEj0otc0feU", "176zf8k2bsK30jZ2", "bOl5HobwYoLiUisG"], "description": [{"language": "LLRK9CrDlYB67ioB", "message": ["tEDIG6nCJHu4EajJ", "WB8YtLFmqtZ2icLH", "FvOAg01ZCspMhk9m"]}, {"language": "jhte89RI68lbamgI", "message": ["OdGxYjVBaKHPX1xN", "vDyynnZ4s3EytpnJ", "T3bVa6H8UrGA7aIv"]}, {"language": "rQfI09wevkmxObl0", "message": ["UzIKsIaADAjd8oE5", "3o3cd9vnbgcsnjwT", "M2w5lLh7oy3BQdsS"]}], "isCustomRegex": false, "letterCase": "TZLaF5vZtAPRjpHd", "maxLength": 87, "maxRepeatingAlphaNum": 36, "maxRepeatingSpecialCharacter": 61, "minCharType": 40, "minLength": 88, "profanityFilter": "1CyvvxkSPvMPaQyn", "regex": "3TBEaTLvox85B7fu", "specialCharacterLocation": "dQWr0I4BJZk4FInE", "specialCharacters": ["DHt6HpFWWZJ5LY3l", "zPpjTTuceCeeeqQq", "FGUilYrlvisnYyOn"]}}, {"field": "plNw199jslq2kiDD", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["Uk5grl2s1DDvrd31", "8m6A5f047xJqbmsF", "OSJvmD5G69TBRe6m"], "preferRegex": true, "regex": "MXzYz9mDqKzOCjey"}, "blockedWord": ["0SYMIg38YlBolFpI", "4DkEefroCAugTVZy", "S3hscgINgr4kqdRG"], "description": [{"language": "32caIWPatvDKgtDj", "message": ["Jy9QRZmvqkySNuaN", "fyGo0JpLl3NBygHS", "HeW7PigOfxMpTe6k"]}, {"language": "3SVEqcOw9CxYQqJ6", "message": ["ef0CaChk5KSPEmG6", "NJ9cvNdIxx2lKSTq", "JS5bVNQgegBPaBQZ"]}, {"language": "dZPwIRWL3ZbeyMV5", "message": ["9eAc7E388REQpaqz", "HmqKF7OAujJEdHSd", "a5FxLFK1tb0CnNEx"]}], "isCustomRegex": true, "letterCase": "Ztspu5OdCXztUKWM", "maxLength": 90, "maxRepeatingAlphaNum": 19, "maxRepeatingSpecialCharacter": 8, "minCharType": 38, "minLength": 12, "profanityFilter": "aogd61uUKLozazdy", "regex": "HorBEipefxJPn4Ro", "specialCharacterLocation": "rBNwZGTGJqA9Xkkh", "specialCharacters": ["7mkbUDB8Yt0wcf1P", "1mhgiqERAa5XMcjv", "98GUJxKb65twYzMx"]}}, {"field": "2dbJnwXIgOiuVCXI", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["fWCsKUDoQa0wEFA3", "QRrfemTt9bIFVRnY", "FolSb4Ix5cTyUNKt"], "preferRegex": false, "regex": "0pimGBwafeoJt7MX"}, "blockedWord": ["SLpBZ4k4HqyMiNl6", "GhF1QliYSJplHp0M", "HrBTyzrqh1itO78t"], "description": [{"language": "4HYnRSciS9LpMnUj", "message": ["8ByfiPDqBPCnYkAX", "fT2Jsep41tJ22CE4", "zWvZfgoe2NSyAA0h"]}, {"language": "nF8YPBSdAja9XrEM", "message": ["vDl3fL3bd8m6Zyv0", "zrkAy9zJpRCCG0tG", "6ILjo6cd2H3zbCzJ"]}, {"language": "oQxmsqd28DCWU2ar", "message": ["Zef4pUCjPr1qpQhP", "2GR7V9WHkP5WbVmy", "3VYExbIrDROpdOHi"]}], "isCustomRegex": true, "letterCase": "McJ7Gxy2ORIzHjKk", "maxLength": 83, "maxRepeatingAlphaNum": 15, "maxRepeatingSpecialCharacter": 46, "minCharType": 62, "minLength": 37, "profanityFilter": "UZ8qLtlBe3ldyBqZ", "regex": "LecRddvuuIFPCy3h", "specialCharacterLocation": "hI7AwDCjZVv9Ib84", "specialCharacters": ["lbA76EjSyOAMrfb9", "mRnrHWEgcrxVg1J4", "2XjyhE4ax7eJnKKl"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'lOnU4696HOBhLnVg' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'mwovtzuxnCuiif7i' \
    --before 'nh3D8fa1f3yD80Hc' \
    --endDate 'dH5X6XcYSXISsqX7' \
    --limit '16' \
    --query 'B69yUNnu0dcoXGb8' \
    --roleId '1Cl7mUPlsksFuvFV' \
    --startDate 'tiHg6VR00HasAGlA' \
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
    --body '{"ageRestriction": 10, "enable": false}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'wqtcFGoTeuhY92qi' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 38}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'aF2kkuaKay9gxPtl' \
    --limit '56' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "mK22ecGWfSQPvrUm", "comment": "XDvUleiArGDuERoX", "endDate": "8aCVwbN9g4Q9eltD", "reason": "ZVIOvooOhqF95pNL", "skipNotif": false, "userIds": ["CAoKmWJUWYyN8Qy7", "axjjKVvKugOitynX", "L8VdtXDdE2XqWF2P"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "iY0XJmowNwCRXX8V", "userId": "UKiJjVqlq0yZ9iPp"}, {"banId": "sv3DhefpxXagYE64", "userId": "fc9m3FIzcuBNnS0L"}, {"banId": "Yepw9OhVFlqb16Q0", "userId": "7uQNXfONanhogV9l"}]}' \
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
    --clientId 'cX1RwB3tHixT6jCD' \
    --clientName 'YEisglztbsb0nqAK' \
    --clientType 'AzFht16CmsW2xZWf' \
    --limit '2' \
    --offset '78' \
    --skipLoginQueue 'true' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["eSSfMIXl4Af4vJal", "HmrFndDYGB4uN8xh", "zwzn4MvqzMNL2auJ"], "clientUpdateRequest": {"audiences": ["ffcOKTrG3y6N8DL9", "EJeVvqBzDdozpC2f", "nM96xDcNwwIwE1qQ"], "baseUri": "MtfOTOALhtlBSlop", "clientName": "5BsPv5NHr4dzDWjD", "clientPermissions": [{"action": 79, "resource": "2npW3bfZitdpDpiY", "schedAction": 26, "schedCron": "K5paXxbiaPWt5c8Y", "schedRange": ["B0i2isMXT8pZOvr0", "7dpGG3anVOcQ8OVB", "1NeOrBSsMPHPoD66"]}, {"action": 84, "resource": "TWHbReru8ga2pvhE", "schedAction": 61, "schedCron": "wpJdebgGK9fbJFh3", "schedRange": ["OwsbtxvQlAcRCMdI", "ipMYv3WCcY3jh2JH", "FVsCLuXYK1W3VmA6"]}, {"action": 50, "resource": "WpGFLt0X59WtxmIE", "schedAction": 40, "schedCron": "0MoGTTX7Ex6aEH6M", "schedRange": ["YVxfHApQazcSTITb", "THGHjqXCfIEIk40x", "0KPcroVrbAWe0v6T"]}], "clientPlatform": "fv30FfZE0r46Oh0R", "deletable": true, "description": "U99fJBnrjhnrdCj1", "modulePermissions": [{"moduleId": "UCNUhIJXkMmz17Cb", "selectedGroups": [{"groupId": "sefZZKjkndt8JerP", "selectedActions": [18, 34, 19]}, {"groupId": "h3JkgUg6v3HZj2o8", "selectedActions": [3, 31, 53]}, {"groupId": "XfSe0O5sU8GZNlZa", "selectedActions": [49, 8, 17]}]}, {"moduleId": "mkBY19h1kGkB7N8w", "selectedGroups": [{"groupId": "dlQETG8JCpiWseTD", "selectedActions": [53, 55, 6]}, {"groupId": "MOb6kZvspX6kvBMf", "selectedActions": [46, 7, 82]}, {"groupId": "0YZdWV4Rw6JUj1XH", "selectedActions": [57, 54, 95]}]}, {"moduleId": "82gtf8CIn44dDR1G", "selectedGroups": [{"groupId": "ewliuyqYSKeohIDu", "selectedActions": [1, 91, 81]}, {"groupId": "nq6MW0P5KbPDafov", "selectedActions": [74, 47, 61]}, {"groupId": "sfTuL0QP1yGpFRAf", "selectedActions": [100, 6, 14]}]}], "namespace": "3OmzabxWvQXB9o1g", "oauthAccessTokenExpiration": 7, "oauthAccessTokenExpirationTimeUnit": "c3okfDpy62zYNgaW", "oauthRefreshTokenExpiration": 77, "oauthRefreshTokenExpirationTimeUnit": "sP0WbliLVNcBP1LC", "redirectUri": "APMbgkWxGPPVTnQE", "scopes": ["KZqif7WNk4bdQkhn", "zlxuVW2auEBlYD5F", "fQat4IjCmYemCOe9"], "skipLoginQueue": false, "twoFactorEnabled": false}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["oLDltYEbKfDyW4IM", "oiR2vkWGe9dKiixl", "83OXMxgSt3onxlGJ"], "baseUri": "B1Z1ijJBzI7pvqCu", "clientId": "xMjw91IhyaAWMrTd", "clientName": "nuvT0JnWA2mY7z3S", "clientPermissions": [{"action": 63, "resource": "Dqfe1a2FIrumwUUg", "schedAction": 30, "schedCron": "LTpLf3N5pUJaONrB", "schedRange": ["7353m2VxybaLeB4u", "EH3zBDVBvABYtUJg", "LSFIYpVwn0IGKpBt"]}, {"action": 70, "resource": "bKenT17eUN4iMx2f", "schedAction": 61, "schedCron": "dJ6X6uUjgzEDxadZ", "schedRange": ["g1vGn1BxIRwF1qme", "0x2oHqdeAacIE0ay", "bHLM73dARhgIsbPk"]}, {"action": 22, "resource": "9NyTZuCAJDEQm0Zh", "schedAction": 89, "schedCron": "k0FtKLEMDekpUaeX", "schedRange": ["9uxP45oJbk97EcAa", "Pu2H2fnuYtMImXbK", "hBuaiZslYiOqKzsN"]}], "clientPlatform": "MU5oQ7V4sD1k7teU", "deletable": false, "description": "TjPx2NQcnOPJRN5a", "modulePermissions": [{"moduleId": "9y5DpZE1yVu0FoW4", "selectedGroups": [{"groupId": "fo6zgZUtmUVAITfW", "selectedActions": [85, 91, 82]}, {"groupId": "kcIdGC02qPAvB4VO", "selectedActions": [83, 41, 64]}, {"groupId": "j16IPyBocaBmbHUl", "selectedActions": [96, 28, 92]}]}, {"moduleId": "UXKA2AbH05BPlLGl", "selectedGroups": [{"groupId": "zWQY7tfUNfkSD4uW", "selectedActions": [55, 45, 63]}, {"groupId": "mt5npVg3anTLJGmK", "selectedActions": [78, 96, 84]}, {"groupId": "8AlcZxOtNQw29NmR", "selectedActions": [49, 33, 97]}]}, {"moduleId": "Rgm3zW4wtAidl8KS", "selectedGroups": [{"groupId": "gUQB4N2uzJxuOzSx", "selectedActions": [70, 38, 1]}, {"groupId": "nKhSAqvgjLXQ37fQ", "selectedActions": [90, 28, 38]}, {"groupId": "wEJJTmUgTlVDSuKl", "selectedActions": [63, 29, 3]}]}], "namespace": "fzize0zFBQ2jAmF0", "oauthAccessTokenExpiration": 24, "oauthAccessTokenExpirationTimeUnit": "Pa3CcPAYZl1tgjxl", "oauthClientType": "McGtjSijdsudwL5w", "oauthRefreshTokenExpiration": 5, "oauthRefreshTokenExpirationTimeUnit": "Bl8NcE0W8SRcFMD5", "parentNamespace": "60Y092avwkNA9q9u", "redirectUri": "YWz9vIjrJe7qnyIT", "scopes": ["zMsBL4kiO9Zw2MSK", "n6D0f0rQGSYHc9od", "GHcUOTvJN3nnSVA2"], "secret": "R2EUX2eAkpP1TWlV", "skipLoginQueue": true, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId '4KpG3AvUV3N1ePYM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'z13GKSeCDCUgVWG0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'OKjheekaOn51ZioP' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["NXAQ9xIHxrpmpPN8", "8c6mMsmwI0Qf62Ko", "5aHgqr77fkUlF8Z5"], "baseUri": "z81wkVYhSCQtqAZY", "clientName": "MT7uvtDe89J66FuO", "clientPermissions": [{"action": 56, "resource": "PRhJVEPkAUWQ4ok0", "schedAction": 65, "schedCron": "yG6ZwNpXfosn5Nir", "schedRange": ["aUTMM6gTtTb4vhZX", "z0RpFycEenRXrpr8", "9N5oROAYPDVR5W8u"]}, {"action": 94, "resource": "OBRswebrhGYN5KDq", "schedAction": 5, "schedCron": "WoTXNfRFPWnji2Gf", "schedRange": ["lwkND3UY7fT9BGW6", "MTf79zO3nfS2EKyZ", "tfRropJGyewm8zyP"]}, {"action": 33, "resource": "ruLnR6zbnBcrmiep", "schedAction": 42, "schedCron": "dpkXWg1nFW33moQr", "schedRange": ["m2gAcgmsctUhsxGw", "Rm0zRMvv3a0CdKKL", "PFmb4nD2xmiDcEZn"]}], "clientPlatform": "5PnMAO7d83zr2MfX", "deletable": true, "description": "iqfFWJLSDeLRBMPd", "modulePermissions": [{"moduleId": "I14hqGSeZ4tCOxfW", "selectedGroups": [{"groupId": "2NCNKEucr7PgnscM", "selectedActions": [69, 36, 64]}, {"groupId": "qU0jLKFXmAlch6kI", "selectedActions": [78, 91, 60]}, {"groupId": "vkohLIioJhoEBj42", "selectedActions": [32, 71, 95]}]}, {"moduleId": "JTnzzB9vbr140vqY", "selectedGroups": [{"groupId": "X4w6axOE3kMNn6Tr", "selectedActions": [59, 17, 67]}, {"groupId": "9qQvbpD67shbbtPc", "selectedActions": [59, 67, 30]}, {"groupId": "kwotrqcHPv0O8BnI", "selectedActions": [87, 89, 54]}]}, {"moduleId": "0euWLP1gfvAQf1z1", "selectedGroups": [{"groupId": "ZoHih3yo0LuYx8np", "selectedActions": [23, 98, 89]}, {"groupId": "jnADKeuK4w2GWuXG", "selectedActions": [42, 44, 6]}, {"groupId": "kb6soB90hWOexzzR", "selectedActions": [52, 98, 57]}]}], "namespace": "wkyx5medfbD6Xbhn", "oauthAccessTokenExpiration": 60, "oauthAccessTokenExpirationTimeUnit": "d2n6bEiModyw1fvx", "oauthRefreshTokenExpiration": 64, "oauthRefreshTokenExpirationTimeUnit": "2CvIVAIgRPEkuZYC", "redirectUri": "YRUnbokoJZU5JIVJ", "scopes": ["qINM9gmEp1dNVlJj", "UiykQhYCbQ5f0owu", "9GKu8U4jjZbuFnxZ"], "skipLoginQueue": false, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'vQEA7mQrOXQIPTr6' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 80, "resource": "W8erBU5xnOhDBsBm"}, {"action": 29, "resource": "PfVfNCgp8dYjEzDt"}, {"action": 98, "resource": "cywKHCFpcjJkGx5E"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'jQzGlLN5yEZomDTj' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 4, "resource": "HcIlymtD3vgr1cQp"}, {"action": 4, "resource": "ig5LoSETjFLMFQmV"}, {"action": 9, "resource": "xeS1LvaSe5AmTLoH"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '29' \
    --clientId 'QbpOUUpf4WXzhb28' \
    --namespace $AB_NAMESPACE \
    --resource '9SeThEP1ZATTc7cD' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey '58hoe3nE7biv6x8b' \
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
    --body '{"blacklist": ["qZRdjiP9B0hpZoM1", "xl51nCCabPN9tp9h", "zXZ0UiCaqrBQ5aG9"]}' \
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
    --body '{"active": true, "roleIds": ["V2AOSfukATOpx94F", "AmSVsadTyYgITaBp", "mSBb0ISrkbLanaAy"]}' \
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
    --limit '44' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 141 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 142 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'myBJVTWootpJXRbd' \
    > test.out 2>&1
eval_tap $? 142 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 143 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'bRxeiXzVU1FS7g8A' \
    --body '{"ACSURL": "qjbTAi2qiojWWWrw", "AWSCognitoRegion": "pUzPjmJk2gKy4SJv", "AWSCognitoUserPool": "IznHfSP32PWA2LJw", "AllowedClients": ["qu1cnKNNSauHV2Wt", "GJc8EwjrNsbUgBsL", "bTJXv7ccvCmcKzmk"], "AppId": "vrqRjpPQK93Pyxac", "AuthorizationEndpoint": "VJJsTITYWZzNcHPo", "ClientId": "tIKttSpgqREWbjTb", "EmptyStrFieldList": ["4GpffUZMF2eeKrrc", "eHIpMOHPuOHuUuMi", "TzxvhvsDRTvsw6Mt"], "EnableServerLicenseValidation": false, "Environment": "uENekQTUo8drQ2cN", "FederationMetadataURL": "vKYT8F3ePMnYZEFw", "GenericOauthFlow": true, "IncludePUID": true, "IsActive": true, "Issuer": "qejPEkUTyWjRoz5h", "JWKSEndpoint": "PFieCwqT9qIWgg5n", "KeyID": "qSy72hhpENJYd68O", "LogoURL": "D8f5Cr4VPMOpvP0l", "NetflixCertificates": {"encryptedPrivateKey": "qlSgMPgbmYVR3mU9", "encryptedPrivateKeyName": "iJd9rhNpeOM24p27", "publicCertificate": "vLtunQvFjgO5pThB", "publicCertificateName": "SxAuwjVagExryjVp", "rootCertificate": "3IiKvd8LG6eLE4TV", "rootCertificateName": "rr4R5888yD0xuTF0"}, "OrganizationId": "MVO4bssVF2e8CmXS", "PlatformName": "wG4P0lsjoFZ3LUVJ", "RedirectUri": "UhonZcpvZpKUhoz6", "RegisteredDomains": [{"affectedClientIDs": ["cLByMjN2sm0i5RFJ", "itNTEpAH88OXi0d8", "OXx4shmjZgDrZM5c"], "domain": "uPTwnW4WQcgEY4Uo", "namespaces": ["tlX6GGc1dWmYjZAW", "DYuxfwnWyDPQjstR", "ioJp6pooZT8ohKsn"], "roleId": "fiG0xoyfTDAKqMop"}, {"affectedClientIDs": ["OF5rRZkwETO6fEE1", "RcunnP80RovxJaVf", "2ylUQNCwFFGDM7uE"], "domain": "rDiDvvKLvDeIxgcr", "namespaces": ["nqE1J9e2wS9dqJz3", "Aj69zSA0CLvXH42n", "JGDZtmfAXCk10U9V"], "roleId": "SpVwpfNHzDizD3cW"}, {"affectedClientIDs": ["VVHMuQfBeoPSfmwv", "YAEaPi2wP1Nd7WIL", "cX8S2X4ByfWm7k4v"], "domain": "6TSOBWX8aL1PJT2t", "namespaces": ["4G1nL7UCw49h5qMY", "r2VZh3X2bzCElIZX", "ynpBto2lwr4vNSvx"], "roleId": "3QLQbfmq5EEGq8uS"}], "Secret": "7wj3zKLZBeDUFgvF", "TeamID": "vPAh3gtXaIion6Oo", "TokenAuthenticationType": "kWn6p844ejoFErb0", "TokenClaimsMapping": {"iJ8wTFN5wFoCuoqA": "auVuDhY7I4eBdcHl", "8OqpTJCBCUfwHXdB": "pCxpsYhZlLxVBXtu", "Mh5k3pMwdSM5m3gi": "vN0fnbK3Nnz4b8Ze"}, "TokenEndpoint": "cjaTiKL5rS1TX1Z2", "UserInfoEndpoint": "700ck3Kv2JxMU00R", "UserInfoHTTPMethod": "S2sQBA39yxc2TgFh", "scopes": ["bpMKj0YW4rk3GRFD", "YQ8Qe0oRrc3sP5Qi", "AhCo6kIu3AehFRQy"]}' \
    > test.out 2>&1
eval_tap $? 143 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 144 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ggxmVqYyUxJ0Yr2a' \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 145 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'JtUdpfE6mNjL3dDF' \
    --body '{"ACSURL": "1jblUZONO9wgvK3c", "AWSCognitoRegion": "CZ9IjgjYs3gGwSoZ", "AWSCognitoUserPool": "zLiHKA25PQb4gyIO", "AllowedClients": ["7sN2p2A3Jzrilnem", "qeYYZ7M3FtqfH3dg", "ZTYKMdwmo6SRN2Pa"], "AppId": "Z5CaFcnl8xmkO3Wt", "AuthorizationEndpoint": "8ZuCncG2vPqi6Zr9", "ClientId": "nOHkSoGveKi4EfPB", "EmptyStrFieldList": ["Al6z1qodJB6GiwNB", "midNCbPppVLZUr7G", "rLPiPrgREuIzF6KB"], "EnableServerLicenseValidation": false, "Environment": "0Taq1YwAflIZFnbh", "FederationMetadataURL": "dOn40GLo3e4wmj3d", "GenericOauthFlow": false, "IncludePUID": true, "IsActive": true, "Issuer": "08QNJeW8R3HJtgMK", "JWKSEndpoint": "RyUL3WOee90ynrlt", "KeyID": "5haFOYVSOC1I9krf", "LogoURL": "O9jMCH70txlp6qr8", "NetflixCertificates": {"encryptedPrivateKey": "yC4SBwjx0Txzbpg4", "encryptedPrivateKeyName": "cZwU2FwG3NI0AEE8", "publicCertificate": "PwVBL30pBJnbsjew", "publicCertificateName": "8Ohubzrf6uoHXLZz", "rootCertificate": "KUMydpvYP9LsnmnV", "rootCertificateName": "g7HAh94KtKqhOKXF"}, "OrganizationId": "5123atVbsMdQxtZM", "PlatformName": "C3iNYNIVkO6IZHdy", "RedirectUri": "ymogMS2Cla9NIZtP", "RegisteredDomains": [{"affectedClientIDs": ["Uz03NNyHmGia0mGb", "Cf8E87SwfZEbnY1v", "6J9O9xAT85Gsz4JD"], "domain": "PGpLWhhIIgbVv3eT", "namespaces": ["OXLUCakYqZ1uIc1S", "PTeAsekCOlZ98nwV", "RzHzFo2icaYPyGqL"], "roleId": "VTBjBJLo7vyMjATE"}, {"affectedClientIDs": ["XplkaNIXwaaZZwmU", "vE4MFyLtTcb8Fj9j", "r64Ni0krHO9E7bw8"], "domain": "ii5nDYxxZYqkMBQP", "namespaces": ["ON0RN5N4e5OE7T9s", "Hx3JMvVXDoaWaEiS", "m8XbbtbZSl9gexiu"], "roleId": "s0YNPQJ5ASmX5QZX"}, {"affectedClientIDs": ["NoRMXZqpbnJEI3Gf", "a5bF4BaN3DRvVGIm", "YiDsX3MnTzRVQ08e"], "domain": "yfHzu8SoKEbmJ7D1", "namespaces": ["vtQsczgu1m2tk3Q0", "ReTgYiukGOgeGmOq", "87dpQ8w6ozUOAZPJ"], "roleId": "9AmfHhEbWXyfhK2z"}], "Secret": "7YmJz3OEpmlVJxMb", "TeamID": "WChBmonxFmvw8l4O", "TokenAuthenticationType": "oACidRsZ0mcZuPGn", "TokenClaimsMapping": {"YQQWJ2lVxDZDCPQx": "4dKAGaXswykTLAcF", "j3jUZryLobE8halE": "Cj2cLObemQ89uPpH", "mZJpHa4sABqEUq60": "lZOoJhnpx9bZIcNg"}, "TokenEndpoint": "ACqCDZh3BPM6wjMl", "UserInfoEndpoint": "3Z0zxLu02kRXuV9o", "UserInfoHTTPMethod": "229q2ssrOMKs7O5i", "scopes": ["TBIec5zG9brkOofa", "LePe0Gapdmj1nsRZ", "cGQYolug4ILlQbGv"]}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 146 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'lSCYRsYAhhiZIjYz' \
    --body '{"affectedClientIDs": ["N20lvoVNv2MtVZQA", "kUXUqe6RilEO2ejN", "LAhjRVQa2n0ycEZ1"], "assignedNamespaces": ["rWVuH5rG8E0gVmMt", "sAyTJt2k9E8pf44O", "790fAbyVZOBMpa0Q"], "domain": "FQX4wbRdaQNzMoR2", "roleId": "bvFAJJimVyjp9OZo"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 147 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId '5Qf8H4MP72S4ZxEk' \
    --body '{"domain": "Z5Nm0Y8WPs2OyGjn"}' \
    > test.out 2>&1
eval_tap $? 147 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 148 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'HbV221HhxFvwqOl4' \
    > test.out 2>&1
eval_tap $? 148 'RetrieveSSOLoginPlatformCredential' test.out

#- 149 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'YEV25nrtICtjhIQT' \
    --body '{"acsUrl": "StHhPpemDiQt2fAG", "apiKey": "jr1HOStQcvCKxF5o", "appId": "cNc5TLz2aQTamtPm", "federationMetadataUrl": "M5fxGzNNbm7oqNkY", "isActive": true, "redirectUri": "UXkyqCc7gvwWlIvj", "secret": "3B6H4bLOmgdbWIir", "ssoUrl": "5yOyMZaNIEJ3LgGl"}' \
    > test.out 2>&1
eval_tap $? 149 'AddSSOLoginPlatformCredential' test.out

#- 150 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'CroyRH9er2mLLKk6' \
    > test.out 2>&1
eval_tap $? 150 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 151 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'cSrmshriQqNICyGI' \
    --body '{"acsUrl": "P4f8yfKfn5sKC5aQ", "apiKey": "XluK22jycxj3kyI3", "appId": "KK1Bqs5LDIE4Tnbo", "federationMetadataUrl": "3wpz5FVvshWAf9s9", "isActive": true, "redirectUri": "pampGXWdpMdYzoOa", "secret": "zAkNgtrag1fHXO12", "ssoUrl": "RNYw3pgvsaZj88hw"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateSSOPlatformCredential' test.out

#- 152 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9iQXINZbyK9Wh3Dm' \
    --rawPID 'true' \
    --rawPUID 'false' \
    --body '{"platformUserIds": ["ufegSuXhn5VJ1jjp", "W5sLHNMkxb7o37Up", "WUxVUWTz0brtnMKb"]}' \
    > test.out 2>&1
eval_tap $? 152 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 153 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'zbUi7AFa3wxR6C42' \
    --platformUserId '6Faimi3g1gHNiNGn' \
    > test.out 2>&1
eval_tap $? 153 'AdminGetUserByPlatformUserIDV3' test.out

#- 154 AdminGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'username' \
    > test.out 2>&1
eval_tap $? 154 'AdminGetProfileUpdateStrategyV3' test.out

#- 155 AdminUpdateProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminUpdateProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'display_name' \
    --body '{"config": {"minimumAllowedInterval": 42}, "type": "pVET61KsdH0nSU0R"}' \
    > test.out 2>&1
eval_tap $? 155 'AdminUpdateProfileUpdateStrategyV3' test.out

#- 156 AdminGetRoleOverrideConfigV3
samples/cli/sample-apps Iam adminGetRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'USER' \
    > test.out 2>&1
eval_tap $? 156 'AdminGetRoleOverrideConfigV3' test.out

#- 157 AdminUpdateRoleOverrideConfigV3
samples/cli/sample-apps Iam adminUpdateRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'VIEW_ONLY' \
    --body '{"additions": [{"actions": [26, 10, 70], "resource": "VwvjADmAofHiQaWU"}, {"actions": [87, 36, 98], "resource": "AHKExIDjutKW895e"}, {"actions": [24, 37, 93], "resource": "ZvFkKyQRk8EvPfjn"}], "exclusions": [{"actions": [55, 48, 65], "resource": "TrZVBJtQb9pBYy5s"}, {"actions": [30, 45, 24], "resource": "lGgtiXEQYmkRzOwT"}, {"actions": [54, 48, 41], "resource": "W4QdfqYdJQdONvvU"}], "overrides": [{"actions": [99, 18, 88], "resource": "wtVGu30s51mboJbJ"}, {"actions": [66, 62, 43], "resource": "B7ZDKTYI9Z2mgVnY"}, {"actions": [76, 23, 12], "resource": "EIWvBtDN11MFDM5T"}], "replacements": [{"replacement": {"actions": [79, 53, 53], "resource": "hv0GDgbMwtJgwzco"}, "target": "QWT2AO8vQHdW0C3N"}, {"replacement": {"actions": [24, 38, 35], "resource": "lyH7PjbqOHJXwFuO"}, "target": "lLw4Mo0Ksfci3tu9"}, {"replacement": {"actions": [85, 100, 46], "resource": "s40mRYfH3FTdbehR"}, "target": "4DKFQdx2gJU9Ebrt"}]}' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpdateRoleOverrideConfigV3' test.out

#- 158 AdminGetRoleSourceV3
samples/cli/sample-apps Iam adminGetRoleSourceV3 \
    --namespace $AB_NAMESPACE \
    --identity 'VIEW_ONLY' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetRoleSourceV3' test.out

#- 159 AdminChangeRoleOverrideConfigStatusV3
samples/cli/sample-apps Iam adminChangeRoleOverrideConfigStatusV3 \
    --namespace $AB_NAMESPACE \
    --identity 'VIEW_ONLY' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 159 'AdminChangeRoleOverrideConfigStatusV3' test.out

#- 160 AdminGetRoleNamespacePermissionV3
samples/cli/sample-apps Iam adminGetRoleNamespacePermissionV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'jSgX5DGCTDKgBxwQ' \
    > test.out 2>&1
eval_tap $? 160 'AdminGetRoleNamespacePermissionV3' test.out

#- 161 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 't13RTzyJAycuSnPQ' \
    --after '69' \
    --before '61' \
    --limit '100' \
    > test.out 2>&1
eval_tap $? 161 'GetAdminUsersByRoleIdV3' test.out

#- 162 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'fwNjgGkhjmSwei4f' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserByEmailAddressV3' test.out

#- 163 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": false}, "userIds": ["08GvbqzNakTDarWv", "DvfCwjRETmfzYa64", "tQ07AS4Yb8dAj1st"]}' \
    > test.out 2>&1
eval_tap $? 163 'AdminBulkUpdateUsersV3' test.out

#- 164 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'qb5WvkfvqNX1mt9o' \
    --body '{"bulkUserId": ["YSzjEakrE0fdENO8", "j7c4qmiNfH1p0cXE", "uf22uPeGX4p2DhZQ"]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetBulkUserBanV3' test.out

#- 165 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Iy2aRzmAbHu80F03", "nqHOZXdnIXYl6cZe", "zRt82mujWP9N6wKU"]}' \
    > test.out 2>&1
eval_tap $? 165 'AdminListUserIDByUserIDsV3' test.out

#- 166 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["D2nV3wU0pFmaFiIN", "JnPCafZn92ZRtsLe", "68Wb09hgJVFvkKCv"]}' \
    > test.out 2>&1
eval_tap $? 166 'AdminBulkGetUsersPlatform' test.out

#- 167 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["lIKkReeGrbKfNBDv", "x0ixSbyAMiFfeSFu", "rM9lBUh3HhmEcGQh"], "isAdmin": true, "languageTag": "gaEC7s4yYqsjUYAe", "namespace": "6v7e81J3ocnSWtlW", "roles": ["OrHZ1OLHf3tjHHrl", "cDEV9s13ON0kW52A", "nNPul9Y7d54fbCCi"]}' \
    > test.out 2>&1
eval_tap $? 167 'AdminInviteUserV3' test.out

#- 168 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '73' \
    --platformUserId 'nUTzBjJRlNqzDhKg' \
    --platformId 'HbVTBJ59NfYoT6kr' \
    > test.out 2>&1
eval_tap $? 168 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 169 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 169 'AdminListUsersV3' test.out

#- 170 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'hbX3ho5pXxZvYZtn' \
    --endDate 'CuhBYtIJCVYVrbYe' \
    --includeTotal 'true' \
    --limit '92' \
    --offset '28' \
    --platformBy '5sdrbb7RAY2jrHx2' \
    --platformId '9RvwtFSKeZiRASm2' \
    --query 'QyRALnvDALkpEIYm' \
    --roleIds 'jFVrGWSkNsedge3w' \
    --skipLoginQueue 'true' \
    --startDate 'SdM1ukWipW0sqddV' \
    --testAccount 'false' \
    > test.out 2>&1
eval_tap $? 170 'AdminSearchUserV3' test.out

#- 171 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["PjK33V9gWjoF0t8Y", "frCnT4yPiGNVIVZp", "txKGaIlZGRg5AgUR"]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminGetBulkUserByEmailAddressV3' test.out

#- 172 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId '34W9ZbNTOx9OT6He' \
    > test.out 2>&1
eval_tap $? 172 'AdminGetUserByUserIdV3' test.out

#- 173 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'cWbjgXdeSENdh6XQ' \
    --body '{"avatarUrl": "88keWqd2OoMYNot3", "country": "BzZbChMwcNcUe1cN", "dateOfBirth": "ePMuQ5p2m7q2g6rw", "displayName": "dF0LL6x9MwC6wCIu", "languageTag": "UMp2OPlTha5gus5A", "skipLoginQueue": true, "uniqueDisplayName": "0RXtTkgNNSifA1M9", "userName": "V4jpuxHyOD7aPfPc"}' \
    > test.out 2>&1
eval_tap $? 173 'AdminUpdateUserV3' test.out

#- 174 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DScpmowbzrKGG59s' \
    --activeOnly 'true' \
    --after 'jdnq6jH8A6I7Vm8H' \
    --before 'BcKUB5Lhrg1JXz7u' \
    --limit '99' \
    > test.out 2>&1
eval_tap $? 174 'AdminGetUserBanV3' test.out

#- 175 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'q1ieBsazfTwBlJ8K' \
    --body '{"ban": "4JibyPHp2jhpYBbm", "comment": "gCWAhRAaEB51vMcq", "endDate": "hMfY3emFMMLBBUOx", "reason": "2GfLuMdXpbeloGZH", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 175 'AdminBanUserV3' test.out

#- 176 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId '0BIpFgXI3XA8r8o8' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserBanSummaryV3' test.out

#- 177 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'lawpTe6UqGh0hRI7' \
    --namespace $AB_NAMESPACE \
    --userId 'nx6el5F1uJ5Tupem' \
    --body '{"enabled": false, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 177 'AdminUpdateUserBanV3' test.out

#- 178 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ddK0WY3vcfSARqOi' \
    --body '{"context": "qVXs7xIUg88ZpYke", "emailAddress": "rP5tw8cfGHWWuYbu", "languageTag": "bqAoOJDImrkBZNEG"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminSendVerificationCodeV3' test.out

#- 179 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DtnoBW7DEGjYaSL4' \
    --body '{"Code": "EVyVMgOQGilB8qTS", "ContactType": "mvpc9C0oyUB4fNi4", "LanguageTag": "rabhx6uiqYQroswu", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 179 'AdminVerifyAccountV3' test.out

#- 180 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'zqJjCuXX3LbhAsX8' \
    > test.out 2>&1
eval_tap $? 180 'GetUserVerificationCode' test.out

#- 181 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dOqeQn0bR7rwqZ9Q' \
    > test.out 2>&1
eval_tap $? 181 'AdminGetUserDeletionStatusV3' test.out

#- 182 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'V7ydtl8uUIhqdHnc' \
    --body '{"deletionDate": 7, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateUserDeletionStatusV3' test.out

#- 183 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FXI739kcxGlUwrGq' \
    > test.out 2>&1
eval_tap $? 183 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 184 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YUYgYVj8ZxqrXiy3' \
    --body '{"code": "Z6x9iKRS7wB3TqzR", "country": "ffGGrr12hgs4vdU0", "dateOfBirth": "qFu0pnDY1oP2Xn7h", "displayName": "iEPSYzMGCAMS4kQe", "emailAddress": "0Ao1bbi49nguM25w", "password": "sV91QhcTK0AenNiR", "uniqueDisplayName": "5oYQx99IGd6Ois6O", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 184 'AdminUpgradeHeadlessAccountV3' test.out

#- 185 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'XRtk9LfU6F7abJ4Y' \
    > test.out 2>&1
eval_tap $? 185 'AdminDeleteUserInformationV3' test.out

#- 186 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LXeBljcF3WiZ2Ir5' \
    --after '0.0999817314534388' \
    --before '0.577065518988002' \
    --limit '47' \
    > test.out 2>&1
eval_tap $? 186 'AdminGetUserLoginHistoriesV3' test.out

#- 187 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TacN2nZNNBkMujyi' \
    --body '{"languageTag": "kBU6usVkmNzmnlPn", "mfaToken": "LnVXU2VY4eSczIxN", "newPassword": "pUGi36NY7jJvAvln", "oldPassword": "6xCiceB85joieIrR"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminResetPasswordV3' test.out

#- 188 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'z8ZnVTqwPC2T7ClY' \
    --body '{"Permissions": [{"Action": 5, "Resource": "OidedX9FMmd4xaCS", "SchedAction": 77, "SchedCron": "7FXM50naoEOImV5e", "SchedRange": ["JMMJ2VBTv30WytLY", "Gshsmq5em2BMP2e8", "ULuDRidSO16kmb9s"]}, {"Action": 32, "Resource": "2IcRiZHT99bA2BIT", "SchedAction": 87, "SchedCron": "gsFvF647S7Ny63TF", "SchedRange": ["Tc0t0m9AjdYbF4kT", "c0LNd2GhTY5t5wzE", "qdLdjxfU36aZgbtG"]}, {"Action": 98, "Resource": "5Y2POtREwY46iajs", "SchedAction": 68, "SchedCron": "G5FIO8tt2GTgJprp", "SchedRange": ["0QidBncHshZFQ8sr", "oTKVDygwW5Awe84m", "MRuOdNEgzXOGIQRM"]}]}' \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserPermissionV3' test.out

#- 189 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LmRRorrUBXKsyvJV' \
    --body '{"Permissions": [{"Action": 88, "Resource": "N8h7G1ITxUA1C9jP", "SchedAction": 63, "SchedCron": "R9ARf83alOVM6kBh", "SchedRange": ["K02nxi1oUffLqzZV", "njc0ky6JGKvwDOd8", "ogoDnYV385b27vN3"]}, {"Action": 87, "Resource": "7a01b89jAdmEE5JN", "SchedAction": 67, "SchedCron": "5eEYwWj4gyTMzDOy", "SchedRange": ["X9FueBDIyaX1mSNT", "cV5u0QlqE5I4qa8o", "8KfaMEXofKvGUbSM"]}, {"Action": 27, "Resource": "C7bSLOjdWIMrHx67", "SchedAction": 43, "SchedCron": "mpLbafcTEhcsRZx6", "SchedRange": ["1c3S1PNQxynAJLy1", "EC6V1U7j4A5VAt35", "BHIT7p69mEEGvAQp"]}]}' \
    > test.out 2>&1
eval_tap $? 189 'AdminAddUserPermissionsV3' test.out

#- 190 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId '8g6GD6UtaqdyiZqT' \
    --body '[{"Action": 54, "Resource": "7WRdcfOUFDaQVfzG"}, {"Action": 94, "Resource": "52evUqpwR6BbZ2Zm"}, {"Action": 85, "Resource": "doAHoeafC38T5AIa"}]' \
    > test.out 2>&1
eval_tap $? 190 'AdminDeleteUserPermissionBulkV3' test.out

#- 191 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '62' \
    --namespace $AB_NAMESPACE \
    --resource 'KX54wuhLaXZTeM8U' \
    --userId 'P6AGnrqVcgurDyNx' \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserPermissionV3' test.out

#- 192 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'cabKp5bIkUUwyhj6' \
    --after '9osT535uCZ0xmIjn' \
    --before 'PlCQ3zxmfLCvSqCR' \
    --limit '89' \
    --platformId 'WNC1wGiFBqPs2o7N' \
    --targetNamespace 'mVTQmD8TpLBt4JbZ' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserPlatformAccountsV3' test.out

#- 193 AdminListAllDistinctPlatformAccountsV3
samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '3zfWjWYMjrO3NtLx' \
    --status 'oLrAlbQz8vMZH5uy' \
    > test.out 2>&1
eval_tap $? 193 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 194 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'r3H4fY8sK74qGTes' \
    > test.out 2>&1
eval_tap $? 194 'AdminGetListJusticePlatformAccounts' test.out

#- 195 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'zdLXR475laGwj1ts' \
    --userId 'FvbMDxkz4ffu0UGl' \
    > test.out 2>&1
eval_tap $? 195 'AdminGetUserMapping' test.out

#- 196 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '4Q8nnJcOSunMoCVC' \
    --userId 'kO4lSe4FavB1cWXZ' \
    > test.out 2>&1
eval_tap $? 196 'AdminCreateJusticeUser' test.out

#- 197 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '6U7stNMrKy4TY7Eb' \
    --skipConflict 'false' \
    --body '{"platformId": "J1RTapzuycSAS0kr", "platformUserId": "tUwV35SGsTEUIFxS"}' \
    > test.out 2>&1
eval_tap $? 197 'AdminLinkPlatformAccount' test.out

#- 198 AdminGetUserLinkHistoriesV3
samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rMXphXXTull3BwpA' \
    --platformId '1NQklyMX40MhzmlW' \
    > test.out 2>&1
eval_tap $? 198 'AdminGetUserLinkHistoriesV3' test.out

#- 199 AdminPlatformUnlinkV3
eval_tap 0 199 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 200 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'FRiIkC2MjzJosN35' \
    --userId 'PbBLnVgjPZrRNkLc' \
    > test.out 2>&1
eval_tap $? 200 'AdminPlatformUnlinkAllV3' test.out

#- 201 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'BPnqgupJO6HnNXNx' \
    --userId 'Wi7QPbYdR8eycRuj' \
    --ticket 'H5lo346PQRu34fPZ' \
    > test.out 2>&1
eval_tap $? 201 'AdminPlatformLinkV3' test.out

#- 202 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 202 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 203 AdminDeleteUserLinkingRestrictionByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'pY3ZpVhZKNLMCCxk' \
    --userId 'zfqUqVsoJgJcczwJ' \
    > test.out 2>&1
eval_tap $? 203 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 204 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'IUuZTbAj3nZ5H2Zu' \
    --userId 'EBKZadoYWVKu3u1D' \
    --platformToken '3hCfxWepl2i2KBmy' \
    > test.out 2>&1
eval_tap $? 204 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 205 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'nWZvaIFcrl3RsF7k' \
    --userId 'thUJsr5Qxa17Pzb5' \
    --crossNamespace 'true' \
    > test.out 2>&1
eval_tap $? 205 'AdminGetUserSinglePlatformAccount' test.out

#- 206 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'M6027vyjPstLzA8W' \
    --body '["CIgTFAO3Fx2emsSK", "OqmSHvRnvqLPVJxH", "NbtS2D5ECo8kjAx2"]' \
    > test.out 2>&1
eval_tap $? 206 'AdminDeleteUserRolesV3' test.out

#- 207 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'z2FAg6hhufx7lS3j' \
    --body '[{"namespace": "9B5YUAB79MoSxdSm", "roleId": "0c6xCRt9MJGWx0Gp"}, {"namespace": "foEIzDp8nyeuw9he", "roleId": "gDFcsvFPAMs6KkJJ"}, {"namespace": "klyEbxl5ZaJBXhJS", "roleId": "c9mG0fyn6CZ2anDB"}]' \
    > test.out 2>&1
eval_tap $? 207 'AdminSaveUserRoleV3' test.out

#- 208 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'ENQnqjYdEbEdU0oj' \
    --userId 'tV3YT6edT8iCU3kX' \
    > test.out 2>&1
eval_tap $? 208 'AdminAddUserRoleV3' test.out

#- 209 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'vJtZoy88TA2UZITY' \
    --userId 'PwIePx5QOik1rlKT' \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteUserRoleV3' test.out

#- 210 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '3TyTRYbYdq1Y35kK' \
    --body '{"enabled": false, "reason": "xzVSuhQsFs1XstaG"}' \
    > test.out 2>&1
eval_tap $? 210 'AdminUpdateUserStatusV3' test.out

#- 211 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId '5YXjp9WQFXXJevVG' \
    --body '{"emailAddress": "8Ni7a7aIQFPUFbaX", "password": "G5PRqQR0AOk1NU4A"}' \
    > test.out 2>&1
eval_tap $? 211 'AdminTrustlyUpdateUserIdentity' test.out

#- 212 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'MY3qEFUjrxMkYtCu' \
    > test.out 2>&1
eval_tap $? 212 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 213 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'P4YUs6momcQk37He' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "G0RT0ftUOXa29Aur"}' \
    > test.out 2>&1
eval_tap $? 213 'AdminUpdateClientSecretV3' test.out

#- 214 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'nKDSt9k5c47QxDGj' \
    > test.out 2>&1
eval_tap $? 214 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 215 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'GOD5sCgeWBgJzvah' \
    --before 'SKsom8XF771ETc6z' \
    --isWildcard 'false' \
    --limit '7' \
    > test.out 2>&1
eval_tap $? 215 'AdminGetRolesV3' test.out

#- 216 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "managers": [{"displayName": "Ec3wsKh9m3lvz3G0", "namespace": "Nt83VwCGy4ziEVYr", "userId": "SDeBMIzK5RZ9h6rr"}, {"displayName": "sfu3wQheNr8vgbvN", "namespace": "bTbkOCuOGi7MzqaZ", "userId": "427iA5vBA2rLsnxP"}, {"displayName": "z7b0U3HW58Ta6Uf3", "namespace": "pBwRh28oBO9X8zjV", "userId": "6XCYurnyoFrJRXuB"}], "members": [{"displayName": "Q9gzWhr5ODkYwSEd", "namespace": "c8gZb3nyFLNOKY8Q", "userId": "3xujKPU4UrFYSbgs"}, {"displayName": "gRJrh6gIPgBPxXuf", "namespace": "xDyQvmJ1Jt7WWt8q", "userId": "EAIjBa9kZSmb88Wl"}, {"displayName": "8UmPvYv2t78H66iA", "namespace": "n4SLdMlhQHTQ4apy", "userId": "3mIJIjgCNIJJMMN0"}], "permissions": [{"action": 28, "resource": "cIIfcOIhYbw6ryJQ", "schedAction": 51, "schedCron": "Uui3qImscZvVC05I", "schedRange": ["JYFQajmCHx3aV4lm", "3hv165yCWEqzaRFJ", "FsX1IKR2quTnWOjK"]}, {"action": 55, "resource": "SPsRMX11d4YL0RVX", "schedAction": 15, "schedCron": "91PcafnYEi4w0u0O", "schedRange": ["LIf1g6YunS0L01ut", "zHD1mY6QdkKBeCTc", "opFkUIvgYl2M0FBV"]}, {"action": 11, "resource": "r9b1Y65BJ4OhLvve", "schedAction": 8, "schedCron": "LZnbwHe0GCHloC8r", "schedRange": ["P0mGiRguKplTdxID", "osXon1fzW7Or7FFj", "Zy3vZtQeDkh8BA4o"]}], "roleName": "hGJmcQ7rQePT4zwQ"}' \
    > test.out 2>&1
eval_tap $? 216 'AdminCreateRoleV3' test.out

#- 217 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'OnIkXh0gr3pPpOEG' \
    > test.out 2>&1
eval_tap $? 217 'AdminGetRoleV3' test.out

#- 218 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'ZraJRa84GDFBIYTi' \
    > test.out 2>&1
eval_tap $? 218 'AdminDeleteRoleV3' test.out

#- 219 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId '9936kaHgerbs9Kw7' \
    --body '{"deletable": false, "isWildcard": false, "roleName": "YFkqTT362FoJ76h3"}' \
    > test.out 2>&1
eval_tap $? 219 'AdminUpdateRoleV3' test.out

#- 220 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'V0nccoK5nb0apFPj' \
    > test.out 2>&1
eval_tap $? 220 'AdminGetRoleAdminStatusV3' test.out

#- 221 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'EtoGzW5PbQYD3cis' \
    > test.out 2>&1
eval_tap $? 221 'AdminUpdateAdminRoleStatusV3' test.out

#- 222 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'VicjlT3ZEVmRrifl' \
    > test.out 2>&1
eval_tap $? 222 'AdminRemoveRoleAdminV3' test.out

#- 223 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'uV3l9fZqM1xspUT4' \
    --after 'e8aaeKPQs7e07uTm' \
    --before 'AnroitlMGpafaxk0' \
    --limit '70' \
    > test.out 2>&1
eval_tap $? 223 'AdminGetRoleManagersV3' test.out

#- 224 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId '77p4Vmglfo5JGYEo' \
    --body '{"managers": [{"displayName": "XcT0l0EQRrIrctJc", "namespace": "NskApkEALOVUQB1R", "userId": "hJmYyJ8nv226WCt3"}, {"displayName": "AA9H3PccxV6RuvIc", "namespace": "N72Tn1FPYeV8rGKP", "userId": "9hcqlz5zQiiHs7W1"}, {"displayName": "RtFD9rLIRtZVXVHL", "namespace": "63C3rPFAbWguAW4F", "userId": "jz4CQBPP3mreQrZE"}]}' \
    > test.out 2>&1
eval_tap $? 224 'AdminAddRoleManagersV3' test.out

#- 225 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'eJCPqjaXE1L7TxYh' \
    --body '{"managers": [{"displayName": "UyhwZNQP61R9c12O", "namespace": "JSsnULmBuvX6rQKi", "userId": "8gv7uGx0zGy35hgD"}, {"displayName": "UCXrmX3yR810JxrS", "namespace": "vMosRnEDuov2Y6Kr", "userId": "0k5LtgCp5QpCJxEM"}, {"displayName": "rnt6NxOlxVwbV4Xd", "namespace": "qIQhU2PEHui818Tk", "userId": "o6faDOqrO6Ko55Bl"}]}' \
    > test.out 2>&1
eval_tap $? 225 'AdminRemoveRoleManagersV3' test.out

#- 226 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'JNmc7GekwFS6Vzg5' \
    --after 'KWNpnFxX4D6RVyLl' \
    --before '06Zb6MUZ0tMK2qOS' \
    --limit '53' \
    > test.out 2>&1
eval_tap $? 226 'AdminGetRoleMembersV3' test.out

#- 227 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'SdIrZniHHEUJfZWg' \
    --body '{"members": [{"displayName": "7Ud8FKrPa00NNTRI", "namespace": "8D6LJd4Ld3A9LrMe", "userId": "pvn0jNyIzTfu5OQA"}, {"displayName": "wDQQpUFOEbTXXodQ", "namespace": "PoCtysPm0FUhxam6", "userId": "v5hxvAOWzfF4qFxR"}, {"displayName": "5ICC6SbRjqqPknVJ", "namespace": "PhB6I9xVTdPlXQe7", "userId": "1tg22oYOFhBZN6lo"}]}' \
    > test.out 2>&1
eval_tap $? 227 'AdminAddRoleMembersV3' test.out

#- 228 AdminRemoveRoleMembersV3
eval_tap 0 228 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 229 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'AIAjKlQsnDVZzCWQ' \
    --body '{"permissions": [{"action": 60, "resource": "EPDo42UgOV30TjJJ", "schedAction": 42, "schedCron": "6o2ebcCeUUGn57h5", "schedRange": ["eXtvwEGxyr1JCNOE", "IMEK5VVXIrTlwkPK", "aTwoWT6AYq8rOc0c"]}, {"action": 10, "resource": "mUJBg9MjlTyxpFaR", "schedAction": 61, "schedCron": "13IkSVhzUt7OwsWP", "schedRange": ["DsdcqRHGKgoBGeeF", "zdBP90CpLH9bt6md", "NxlQoLoKHtshbKdZ"]}, {"action": 43, "resource": "hhh2ttsIXweF9klF", "schedAction": 67, "schedCron": "s4dLwItAzFXHI6Pc", "schedRange": ["mVPzWiHWJRFetpkM", "KLAvSlUA8qhOYnUh", "gOYmlaD2VUdHAjpn"]}]}' \
    > test.out 2>&1
eval_tap $? 229 'AdminUpdateRolePermissionsV3' test.out

#- 230 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'nVA9Ty7nXAAySxHC' \
    --body '{"permissions": [{"action": 2, "resource": "lQb1mQiwq8IsOgBq", "schedAction": 62, "schedCron": "zYfMOKnMyKgyeFsI", "schedRange": ["0kuBGeaxkPtit6k1", "3EtqUgjzcdOktQs9", "unJ1gSArj75qmmQa"]}, {"action": 98, "resource": "t6Yecpy1HfLsvHY7", "schedAction": 14, "schedCron": "iNSSBud1BS0ZaK4T", "schedRange": ["8vy3VhIdT2eoICw3", "OHEK1zaKRkxtUwes", "o0ngSdLOK2XA9bDI"]}, {"action": 45, "resource": "DRMNNKd7c5MjQxlu", "schedAction": 21, "schedCron": "SuDxzEmCPS6yZLhj", "schedRange": ["mioCEmBVa0I6od72", "Tcm0JsSM3z3M4I0A", "rb3h8lMYpW8tgnfC"]}]}' \
    > test.out 2>&1
eval_tap $? 230 'AdminAddRolePermissionsV3' test.out

#- 231 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'Cypu5JJ8NWL5Y6tL' \
    --body '["Sw84IpsKdV1SAOBi", "FUNtXqGhpyaYtggD", "aHW7sZMhlcdHAh0X"]' \
    > test.out 2>&1
eval_tap $? 231 'AdminDeleteRolePermissionsV3' test.out

#- 232 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '93' \
    --resource 'FFQXIinEeoDOWBep' \
    --roleId 'DQQvdegkaHo66W0v' \
    > test.out 2>&1
eval_tap $? 232 'AdminDeleteRolePermissionV3' test.out

#- 233 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 233 'AdminGetMyUserV3' test.out

#- 234 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'eoAvlyySJV7wvcdz' \
    --extendExp 'false' \
    --redirectUri '6YrEcUuva4vsXyVd' \
    --password 'c9IJFj3nfdEZxk82' \
    --requestId 'JYUI9HSxTzE7g3Xg' \
    --userName 'HIbJxYai32L14COB' \
    > test.out 2>&1
eval_tap $? 234 'UserAuthenticationV3' test.out

#- 235 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'fsEMkWvxgBkglOFN' \
    --linkingToken 'RvQjlxfTrlnCqzoT' \
    --password 'hcQ3JLy5lLtpSR3J' \
    --username 'WFCgD4r0khpQav9Y' \
    > test.out 2>&1
eval_tap $? 235 'AuthenticationWithPlatformLinkV3' test.out

#- 236 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'IrGlICIlRBp0UG4Y' \
    --extendExp 'true' \
    --linkingToken 'LdtiKnddN0qY9UWl' \
    > test.out 2>&1
eval_tap $? 236 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 237 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'Gp4LKSq0ZUlzs7pU' \
    > test.out 2>&1
eval_tap $? 237 'RequestOneTimeLinkingCodeV3' test.out

#- 238 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'ftmAIKpwjkRoCMW6' \
    > test.out 2>&1
eval_tap $? 238 'ValidateOneTimeLinkingCodeV3' test.out

#- 239 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'GcJo2q0STMTjWnjh' \
    --isTransient 'true' \
    --clientId '73f027nYuBXyEfS4' \
    --oneTimeLinkCode 'fX8KVkxjkF3CnKol' \
    > test.out 2>&1
eval_tap $? 239 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 240 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 240 'GetCountryLocationV3' test.out

#- 241 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 241 'Logout' test.out

#- 242 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --codeChallenge 'TfhPGy0mXRJ6agZQ' \
    --codeChallengeMethod 'plain' \
    --clientId 'bllMN0Kn7GhiUC2Y' \
    > test.out 2>&1
eval_tap $? 242 'RequestTokenExchangeCodeV3' test.out

#- 243 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'njJJCmQ179cjVLVO' \
    --userId 'R31oqC5T0YFyo7zn' \
    --platformUserId 'xsJXTSTjz3dwPdoj' \
    > test.out 2>&1
eval_tap $? 243 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 244 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'sgV8iYA7i53kU0Wx' \
    --includeGameNamespace 'true' \
    > test.out 2>&1
eval_tap $? 244 'RevokeUserV3' test.out

#- 245 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'pAVzE7ZKqX6LgKsR' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'jt97j77OWXgRg42F' \
    --redirectUri 'pKdOVxaotWXnkJwq' \
    --scope 'oQEpwsgHQ2ztzoKl' \
    --state 'biNhIX5hUl8JPfVL' \
    --targetAuthPage 'IXEcC2lX8exS2OQz' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'oNac0bs63kblyo2j' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 245 'AuthorizeV3' test.out

#- 246 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'amClgIoPKJUtfLCe' \
    > test.out 2>&1
eval_tap $? 246 'TokenIntrospectionV3' test.out

#- 247 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 247 'GetJWKSV3' test.out

#- 248 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId '6KkLm26yJRiviXvh' \
    --factor 'kr6sXY9AiinG7OMe' \
    --mfaToken 'bhUYvs5A18w6Zsox' \
    > test.out 2>&1
eval_tap $? 248 'SendMFAAuthenticationCode' test.out

#- 249 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'Amt5rfWG8DhivjVH' \
    --mfaToken 'xsyvHzVXqTyxTfwT' \
    > test.out 2>&1
eval_tap $? 249 'Change2faMethod' test.out

#- 250 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'ORq0rSh4sOoqntZB' \
    --factor '4J9uOyUR2fw8h7vC' \
    --mfaToken 'WXqFYmFLdEOY2Cfv' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 250 'Verify2faCode' test.out

#- 251 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'WNnT36m4lQm4tFjd' \
    --userId '7r7U1gksZEidr4Mk' \
    > test.out 2>&1
eval_tap $? 251 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 252 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'AdhJQfZV8AjDzw6U' \
    --clientId 'aDQdo7WASmoJHwjH' \
    --redirectUri 'ygrHUZPuQABySrbN' \
    --requestId 'bQ7uhG08eGRP5hFl' \
    > test.out 2>&1
eval_tap $? 252 'AuthCodeRequestV3' test.out

#- 253 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'Mb1rwWia1pbwFInM' \
    --additionalData '2PBYLhh6badNsKzE' \
    --clientId 'pXtNwMe5My0XOiCh' \
    --createHeadless 'true' \
    --deviceId 'PtPDxFOFybQnbrJV' \
    --macAddress 'jYykJTuZxH4GqUqx' \
    --platformToken 'Wirw8J2yMBubVIaR' \
    --serviceLabel '0.3481071371732738' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 253 'PlatformTokenGrantV3' test.out

#- 254 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 254 'GetRevocationListV3' test.out

#- 255 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'ci7yYxww3YruczBO' \
    > test.out 2>&1
eval_tap $? 255 'TokenRevocationV3' test.out

#- 256 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'qxnkm25iWHXW4L5V' \
    --simultaneousTicket 'Lqv4Sa3eNVOI2XNq' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'iY48NuxhOsmzMPZz' \
    > test.out 2>&1
eval_tap $? 256 'SimultaneousLoginV3' test.out

#- 257 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'VfQdBHoCCtLCXEoB' \
    --clientId 'kGcputHOR28do0nS' \
    --clientSecret '79TFiYuSpV88Ergo' \
    --code 'sAwZPlHCcr9sWd9z' \
    --codeVerifier '5ZbblR30OAVQmJE9' \
    --extendNamespace 'XfjCZQdWlGJl3k5d' \
    --extendExp 'false' \
    --password '9523rVSTCBLY6NgL' \
    --redirectUri 'LTxZT8CWuZvjq8tq' \
    --refreshToken 'zRPHkKAM1cT939B1' \
    --username 'TCsSWMhpIoRO4V0e' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 257 'TokenGrantV3' test.out

#- 258 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'wLWiCXyvdJJoHV6s' \
    > test.out 2>&1
eval_tap $? 258 'VerifyTokenV3' test.out

#- 259 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'h5Uwe4Odf5wrjc1K' \
    --code '2w4RChENJDALKxLi' \
    --error 'pFBynAutK0eFjNer' \
    --openidAssocHandle 'Ub4AMvaou3NC6YBH' \
    --openidClaimedId '2iVrc3FyZR81xeR4' \
    --openidIdentity 'Pt1uYNphPHvPgYne' \
    --openidMode 'gAv2Osy4oWmjjye3' \
    --openidNs 'boBE9pWfB61nwOAV' \
    --openidOpEndpoint '6BvmuxpHIDSCeUNh' \
    --openidResponseNonce 'BDYrrE8s3jHTQedg' \
    --openidReturnTo '8FINlLxtRCpWX0Qu' \
    --openidSig 'Cz8anBUsLKYQhEJh' \
    --openidSigned 's8q2YoScag9zl62n' \
    --state 'FdMMUhOtyIS0zq7s' \
    > test.out 2>&1
eval_tap $? 259 'PlatformAuthenticationV3' test.out

#- 260 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'RZYm55TnjOunHTOP' \
    --platformToken 'fltWrKflnRaL9Y0u' \
    > test.out 2>&1
eval_tap $? 260 'PlatformTokenRefreshV3' test.out

#- 261 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode 'XZxQVxoW0fOVZh18' \
    > test.out 2>&1
eval_tap $? 261 'PublicGetInputValidations' test.out

#- 262 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'HetoghN0gEUXtnVd' \
    > test.out 2>&1
eval_tap $? 262 'PublicGetInputValidationByField' test.out

#- 263 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'cF2lYtcxzJ7BrxUi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 263 'PublicGetCountryAgeRestrictionV3' test.out

#- 264 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'XZkOsIpq128ibG5T' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 264 'PublicGetConfigValueV3' test.out

#- 265 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 265 'PublicGetCountryListV3' test.out

#- 266 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 266 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 267 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'aBsweekaPfdoe8gT' \
    > test.out 2>&1
eval_tap $? 267 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 268 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 268 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 269 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'AEeCSKOtfQKqQbba' \
    --platformUserId 'cJUgKYWc70gRawii' \
    > test.out 2>&1
eval_tap $? 269 'PublicGetUserByPlatformUserIDV3' test.out

#- 270 PublicGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam publicGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'display_name' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetProfileUpdateStrategyV3' test.out

#- 271 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'FEiJ89E7L0vU7pFj' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetAsyncStatus' test.out

#- 272 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '5SuE5D9HXMmE16WQ' \
    --limit '98' \
    --offset '37' \
    --platformBy 'vDbwPOi2uGTNi8wZ' \
    --platformId 'Af4riIY9awJaQeek' \
    --query 'ahOf9QZ262qOTwKD' \
    > test.out 2>&1
eval_tap $? 272 'PublicSearchUserV3' test.out

#- 273 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "LonOJKj7YO3YAsVh", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "B4X4i1VQRrKef27r", "policyId": "a0qrqYFWS2c8gq0o", "policyVersionId": "d1aDHaBGgda9RZKe"}, {"isAccepted": false, "localizedPolicyVersionId": "nCoLi0Pw66yJaJFX", "policyId": "X1PnTe0OLgk7NEh8", "policyVersionId": "LwsMTWcM8EHvH2Lc"}, {"isAccepted": false, "localizedPolicyVersionId": "3Ja1hPmcOrTxP8RY", "policyId": "qAoOayaY6iHU0M7N", "policyVersionId": "UboyDEDu9tvc2xGp"}], "authType": "i1QtyH52wztrS4ms", "code": "ocn8dAlCZbNEPPCv", "country": "MdqmDQ8tSv5Yj1V2", "dateOfBirth": "VYSVbZ9AaWANQqTv", "displayName": "fsk49AD2Q9owcPcF", "emailAddress": "k25KVaT8RwNTFXDN", "password": "LSaqyRKD00k7KcBn", "reachMinimumAge": true, "uniqueDisplayName": "IdshGGlvyhTE2uPa"}' \
    > test.out 2>&1
eval_tap $? 273 'PublicCreateUserV3' test.out

#- 274 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'T3IeU9uzTeFSBSH5' \
    --query 'b2THpB12y1x6vetZ' \
    > test.out 2>&1
eval_tap $? 274 'CheckUserAvailability' test.out

#- 275 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["GXRWZVK5X1ghkGnB", "kOibzsCbKsmQyyDF", "ykZOshGc3TRBm8W5"]}' \
    > test.out 2>&1
eval_tap $? 275 'PublicBulkGetUsers' test.out

#- 276 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "9IHjdHuT2yL9APbh", "languageTag": "kxzP6HuEiHpOOJ5g"}' \
    > test.out 2>&1
eval_tap $? 276 'PublicSendRegistrationCode' test.out

#- 277 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "h58we4QKBsfrLsyu", "emailAddress": "hElnVz91nfRhSWxt"}' \
    > test.out 2>&1
eval_tap $? 277 'PublicVerifyRegistrationCode' test.out

#- 278 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "rSmMnmKMjRRNZRLC", "languageTag": "e6rGPaUkhyW48ktn"}' \
    > test.out 2>&1
eval_tap $? 278 'PublicForgotPasswordV3' test.out

#- 279 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "TDQ1pe0i1v0mJlL2", "password": "pgU9X2kVsnzswFAM", "uniqueDisplayName": "PT80DtVWal8cylv1", "username": "qZPUV03Z9T72b9sv"}' \
    > test.out 2>&1
eval_tap $? 279 'PublicValidateUserInput' test.out

#- 280 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'XxfpNmiJtUxkPxi6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 280 'GetAdminInvitationV3' test.out

#- 281 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'LsGN8Azzocqylb4C' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "sfBd1kV7UgFYB8YI", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "KMsL9XkrxoYSqCwr", "policyId": "QCBRbuFWwyXqZ3kS", "policyVersionId": "6JUmY82aJjxpM20c"}, {"isAccepted": true, "localizedPolicyVersionId": "yfuWtLhvWEqPkSX2", "policyId": "HXBTHVgmR47jXmxn", "policyVersionId": "NhsMiqTEKhqYiWRU"}, {"isAccepted": false, "localizedPolicyVersionId": "oGHpsg7npNl0PTKa", "policyId": "kh7iIIurOcS40nvQ", "policyVersionId": "bjFdwiyR67Gzd2YI"}], "authType": "EFri4TQ9SwlyCPTU", "code": "rGeAAaVyEbD8fwTz", "country": "vzKx8zSGXakvUPfK", "dateOfBirth": "Xi9rpEdrxyw8lqdm", "displayName": "L8MxERAX359zbERt", "emailAddress": "Sml8G2jhqGxJQTDz", "password": "0QtkwbomkN8heEey", "reachMinimumAge": true, "uniqueDisplayName": "JNEATqa4U8byLHnX"}' \
    > test.out 2>&1
eval_tap $? 281 'CreateUserFromInvitationV3' test.out

#- 282 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "YTyIOPExsC76y26Y", "country": "2Te6NnxBrxczD0iv", "dateOfBirth": "WErAhgQAOOwVcGMh", "displayName": "JgDN8cxt8IDFFsLB", "languageTag": "itW3cGbQ7kei312V", "uniqueDisplayName": "oBiD3twGFHFwbJU7", "userName": "8GA8ls7jxIXByDpN"}' \
    > test.out 2>&1
eval_tap $? 282 'UpdateUserV3' test.out

#- 283 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "hxMZUiAff9zarswI", "country": "PMhKr6r0EjXj2Z5u", "dateOfBirth": "CBBjyvb3gBEBY1f8", "displayName": "bKykLbccwGa0Ccsc", "languageTag": "kzAuSR8ulQSP7tkQ", "uniqueDisplayName": "pLAj4zrQ8HLkdV7n", "userName": "B1yh0SyURkwjqUHR"}' \
    > test.out 2>&1
eval_tap $? 283 'PublicPartialUpdateUserV3' test.out

#- 284 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "5I7MvwgKsVBe5yiK", "emailAddress": "lV2aafRgB4kQHBtc", "languageTag": "BwFksDe5bcysO7ND"}' \
    > test.out 2>&1
eval_tap $? 284 'PublicSendVerificationCodeV3' test.out

#- 285 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "dAriW5cNCTecr4cd", "contactType": "D67GByLkyUvjW83A", "languageTag": "Oiw8Uzd3xLKvxA0j", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 285 'PublicUserVerificationV3' test.out

#- 286 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "TgLqBzbnXPoclrTz", "country": "4d0JZ9GI60G0Isov", "dateOfBirth": "usrAjikUFxr9YK33", "displayName": "s3lsSEYgb5hxROHS", "emailAddress": "vAsOigoCkvaMoztu", "password": "wvZnWqc36KXnQrIU", "uniqueDisplayName": "479KVHXYquvWtFg1", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 286 'PublicUpgradeHeadlessAccountV3' test.out

#- 287 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "sXTmH8jp6xS2ClTI", "password": "0Kx6s9ZvuJII2pm0"}' \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyHeadlessAccountV3' test.out

#- 288 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "YxBZySGyEeyyl3ju", "mfaToken": "Y8HSFXYAcL6u5e4t", "newPassword": "L6A27n48uD2i4g3m", "oldPassword": "1AQsyE4WrZ26xhdn"}' \
    > test.out 2>&1
eval_tap $? 288 'PublicUpdatePasswordV3' test.out

#- 289 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'x4yhTwpnm3rSmiT7' \
    > test.out 2>&1
eval_tap $? 289 'PublicCreateJusticeUser' test.out

#- 290 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'dApE2e8guuWXzZHU' \
    --redirectUri 'eyRqK6nMMt8XGe5g' \
    --ticket 'fQHoTqxVL2KUkt8b' \
    > test.out 2>&1
eval_tap $? 290 'PublicPlatformLinkV3' test.out

#- 291 PublicPlatformUnlinkV3
eval_tap 0 291 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 292 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Zrz5PbZDe9YwVCb8' \
    > test.out 2>&1
eval_tap $? 292 'PublicPlatformUnlinkAllV3' test.out

#- 293 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '4Npw3IuzbjKSuiKx' \
    --ticket 'lNUG9WbKYgS4rWWR' \
    > test.out 2>&1
eval_tap $? 293 'PublicForcePlatformLinkV3' test.out

#- 294 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'lbO1TFSObRuipykC' \
    --clientId 'glKZAFdsPA4RtbUn' \
    --redirectUri 'yHqWCvJ1W2vKIWZM' \
    > test.out 2>&1
eval_tap $? 294 'PublicWebLinkPlatform' test.out

#- 295 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'RZZOLvjAS1eHzT1l' \
    --code '4nIiO7GJJavkxpsV' \
    --state '0UwTH8X4prSvA0dV' \
    > test.out 2>&1
eval_tap $? 295 'PublicWebLinkPlatformEstablish' test.out

#- 296 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'fyGKzNc2IhZSwIZ8' \
    --code 'BOYmyrLHUH6LkleL' \
    --state 'hUGH0ykhyuZQoXfa' \
    > test.out 2>&1
eval_tap $? 296 'PublicProcessWebLinkPlatformV3' test.out

#- 297 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "R3JjyLEwjAA5jTuF", "userIds": ["R2C0E0tNBr1KWwDJ", "9wL3DDZ06UFLKAz9", "vIdya6SUg73KAeyG"]}' \
    > test.out 2>&1
eval_tap $? 297 'PublicGetUsersPlatformInfosV3' test.out

#- 298 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "GgCfCTkrgfkeyzKi", "code": "elkcV0jzMkaA8yJJ", "emailAddress": "O4D8tbN9S0aq8cUY", "languageTag": "LF9wV7iaXgcscPOf", "newPassword": "tAXvt22lIOL8h3xy"}' \
    > test.out 2>&1
eval_tap $? 298 'ResetPasswordV3' test.out

#- 299 PublicGetUserByUserIdV3
eval_tap 0 299 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 300 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZMUQYRqsLjcwheNw' \
    --activeOnly 'true' \
    --after '8RhTJwvyBtMnB1J0' \
    --before 'n2bKrIG42KeO0mP5' \
    --limit '66' \
    > test.out 2>&1
eval_tap $? 300 'PublicGetUserBanHistoryV3' test.out

#- 301 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ctZBhkRe0Cmynirf' \
    > test.out 2>&1
eval_tap $? 301 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 302 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DOA62jLBcrZhbWJK' \
    > test.out 2>&1
eval_tap $? 302 'PublicGetUserInformationV3' test.out

#- 303 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'HhQsa4SfUl7zrd6Q' \
    --after '0.5365340533603683' \
    --before '0.0533394076338678' \
    --limit '79' \
    > test.out 2>&1
eval_tap $? 303 'PublicGetUserLoginHistoriesV3' test.out

#- 304 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'edGY6FUDQWQUY68B' \
    --after '9XaeUY3oSsNHaZhJ' \
    --before 'UZL5RNVjhyBnJSmJ' \
    --limit '16' \
    --platformId 'YwaAMlPZajTZIDpi' \
    > test.out 2>&1
eval_tap $? 304 'PublicGetUserPlatformAccountsV3' test.out

#- 305 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VDpLZQfbg8dEHXw9' \
    > test.out 2>&1
eval_tap $? 305 'PublicListJusticePlatformAccountsV3' test.out

#- 306 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '8atrBCAbapNnYflx' \
    --body '{"platformId": "VQzfSYMfZGMchrn7", "platformUserId": "hf3Fn8i6anQJLaAv"}' \
    > test.out 2>&1
eval_tap $? 306 'PublicLinkPlatformAccount' test.out

#- 307 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'w7iLaQ5p0KJUznke' \
    --body '{"chosenNamespaces": ["V8NAmQozXJ8LeYr1", "7kNn5PuUfixbfv6u", "9F1IOUMiI0mmpwUP"], "requestId": "ikaNgeypRhDr6u1t"}' \
    > test.out 2>&1
eval_tap $? 307 'PublicForceLinkPlatformWithProgression' test.out

#- 308 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'qKrcOiID44vVqJgt' \
    > test.out 2>&1
eval_tap $? 308 'PublicGetPublisherUserV3' test.out

#- 309 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ENc1eZ3QqI7CGHg3' \
    --password 'dkAo9B0u2Iy9yQCn' \
    > test.out 2>&1
eval_tap $? 309 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 310 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'nGD8Kzz5od98pihB' \
    --before 'KnyS55mLRweNlzSc' \
    --isWildcard 'false' \
    --limit '97' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetRolesV3' test.out

#- 311 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'OCbp6uOZ9OTMW6JY' \
    > test.out 2>&1
eval_tap $? 311 'PublicGetRoleV3' test.out

#- 312 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'false' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetMyUserV3' test.out

#- 313 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'LXYTLjk6OzxOstao' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 314 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["l6F6YjhxC7EBRjqp", "YaavAOkWbUy0jUCE", "F0Ysc2d0FPMHbJRo"], "oneTimeLinkCode": "3T0ijwV0qw0ZeLdO"}' \
    > test.out 2>&1
eval_tap $? 314 'LinkHeadlessAccountToMyAccountV3' test.out

#- 315 PublicGetMyProfileAllowUpdateStatusV3
samples/cli/sample-apps Iam publicGetMyProfileAllowUpdateStatusV3 \
    > test.out 2>&1
eval_tap $? 315 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 316 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "vNgzQ0cvhE7gTrH9"}' \
    > test.out 2>&1
eval_tap $? 316 'PublicSendVerificationLinkV3' test.out

#- 317 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'GVxIkteogjKxX6Qq' \
    > test.out 2>&1
eval_tap $? 317 'PublicVerifyUserByLinkV3' test.out

#- 318 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId '4YsScqiyUm4weyng' \
    --code 'IgCO8OdEOwvQCu65' \
    --error 'Olavg6RhhnmtnnKJ' \
    --state 'EDj5hqA382nAEx6P' \
    > test.out 2>&1
eval_tap $? 318 'PlatformAuthenticateSAMLV3Handler' test.out

#- 319 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'Wn1vzz2YI6coYVcb' \
    --payload '8BdKJNR6ZgveQ3hW' \
    > test.out 2>&1
eval_tap $? 319 'LoginSSOClient' test.out

#- 320 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'zNWsjUJnPxj0lgKT' \
    > test.out 2>&1
eval_tap $? 320 'LogoutSSOClient' test.out

#- 321 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'E7YJMEeH6Rk7a6RQ' \
    --code 'HzWntclsar2TxEuu' \
    > test.out 2>&1
eval_tap $? 321 'RequestTargetTokenResponseV3' test.out

#- 322 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '96' \
    --namespace 'nTzkBKJoaxwEtlC1' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 322 'AdminListInvitationHistoriesV4' test.out

#- 323 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'TnkNizomEXFMQpNY' \
    > test.out 2>&1
eval_tap $? 323 'AdminGetDevicesByUserV4' test.out

#- 324 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'biQOjE67A28NMBNG' \
    --endDate '6SaTUq0kbQhIX8W7' \
    --limit '53' \
    --offset '65' \
    --startDate 'wbkdlI3PCLod2uIa' \
    > test.out 2>&1
eval_tap $? 324 'AdminGetBannedDevicesV4' test.out

#- 325 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'SNKOYG118M7jRq4k' \
    > test.out 2>&1
eval_tap $? 325 'AdminGetUserDeviceBansV4' test.out

#- 326 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "DJE8DJNJP5wjcZsc", "deviceId": "Brc1q8u6ZrVXTsik", "deviceType": "Q0pZgUFW83vJkesW", "enabled": false, "endDate": "11kdK3bYSojcvybA", "ext": {"bUlmHnK0PlilaSA7": {}, "JZtKf2Ofm2qtHgSk": {}, "LVor5cKnpxebmcnw": {}}, "reason": "55EypUd2tbxnsaHW"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminBanDeviceV4' test.out

#- 327 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'Bv9X8iGeC7ulAt43' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 327 'AdminGetDeviceBanV4' test.out

#- 328 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'jEtOh6S8SOInBsev' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 328 'AdminUpdateDeviceBanV4' test.out

#- 329 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'dVrjaL1By6NQpmJ4' \
    --startDate 'Ybawjza1P08yznpZ' \
    --deviceType '0QDgzlWgudESkCt9' \
    > test.out 2>&1
eval_tap $? 329 'AdminGenerateReportV4' test.out

#- 330 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 330 'AdminGetDeviceTypesV4' test.out

#- 331 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'bcAhl5SZI3RvZTVH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 331 'AdminGetDeviceBansV4' test.out

#- 332 AdminDecryptDeviceV4
eval_tap 0 332 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 333 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'YC7OwCfDQzjyUMVl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 333 'AdminUnbanDeviceV4' test.out

#- 334 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'drTbVK3cn7xMOuGH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 334 'AdminGetUsersByDeviceV4' test.out

#- 335 AdminGetNamespaceInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 335 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 336 AdminGetNamespaceUserInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceUserInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 336 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 337 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 11, "userInfo": {"country": "fXVQhBo8G9vPnHDh"}}' \
    > test.out 2>&1
eval_tap $? 337 'AdminCreateTestUsersV4' test.out

#- 338 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "t9U1UsSJXQd0huLN", "policyId": "VTSnZDRTWPLT3mhj", "policyVersionId": "jqx86BPgkWyomq4G"}, {"isAccepted": true, "localizedPolicyVersionId": "tCdKWnebN2ySIbFP", "policyId": "kqKZpwS9OL8yzrT9", "policyVersionId": "ga0AWVTLbjcJEnQl"}, {"isAccepted": true, "localizedPolicyVersionId": "xXOicJzWlX5EUwGz", "policyId": "eADyZixofBA8W2aO", "policyVersionId": "cYOjmE19wtqZ0SFv"}], "authType": "EMAILPASSWD", "code": "dmeNElgjUOWrQJ8J", "country": "1OloZ2IXidaDxlR8", "dateOfBirth": "0GqhoK0bYnxMyPlL", "displayName": "zlEgcBquO9RG6eeI", "emailAddress": "uCU6q3nB6Ka5fXAD", "password": "rMjzTKuFlYpfrlbU", "passwordMD5Sum": "HWoT4Wnv15QUfNBU", "reachMinimumAge": false, "uniqueDisplayName": "Fv68cT9mr8ZztkLP", "username": "BGMqzIVDhXtwql3P"}' \
    > test.out 2>&1
eval_tap $? 338 'AdminCreateUserV4' test.out

#- 339 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": true, "userIds": ["bhiga03uVhl8jizx", "gsWQPP2AciFzmc5Y", "2lbGd7UP3EG0KdJO"]}' \
    > test.out 2>&1
eval_tap $? 339 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 340 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["ojfxBKR8jollIL6w", "V7C4xYZP20Szown0", "m1Pdt5wtVpG2UdMs"]}' \
    > test.out 2>&1
eval_tap $? 340 'AdminBulkCheckValidUserIDV4' test.out

#- 341 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'l1pRVYFUqYFnWKO8' \
    --body '{"avatarUrl": "cyI4MM4ImMFcS53z", "country": "CZgQ8s97xwrENk92", "dateOfBirth": "KvZ2DcGGux6AqhCc", "displayName": "omAzOBMB4nIP0OCU", "languageTag": "eHF4sNoGA7A0YH3F", "skipLoginQueue": true, "uniqueDisplayName": "8YqWHlG3rB3jQFxd", "userName": "f4JAgYYLMTQqic9L"}' \
    > test.out 2>&1
eval_tap $? 341 'AdminUpdateUserV4' test.out

#- 342 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'zblhIB7lOUAoEaC0' \
    --body '{"code": "X2h88sd0yQnhizBM", "emailAddress": "evMThjeCLrXcU8zI"}' \
    > test.out 2>&1
eval_tap $? 342 'AdminUpdateUserEmailAddressV4' test.out

#- 343 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'B0xdS43sQPV0zAXX' \
    --body '{"factor": "2EaQnOKndZSiu0x2", "mfaToken": "yS68HQzzksBi2CYK"}' \
    > test.out 2>&1
eval_tap $? 343 'AdminDisableUserMFAV4' test.out

#- 344 AdminGetUserMFAStatusV4
samples/cli/sample-apps Iam adminGetUserMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    --userId 'tUgrVvjDjFQxeeop' \
    > test.out 2>&1
eval_tap $? 344 'AdminGetUserMFAStatusV4' test.out

#- 345 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'UuzWFTFtL6WeKMr4' \
    > test.out 2>&1
eval_tap $? 345 'AdminListUserRolesV4' test.out

#- 346 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'RppfwkosUbfHDvdR' \
    --body '{"assignedNamespaces": ["q9GWlkCkcqZHY1el", "pCHPipOO2XOytqfp", "jKQHP0lPJCPqCYgJ"], "roleId": "K3PYu7jVB0AZL7ST"}' \
    > test.out 2>&1
eval_tap $? 346 'AdminUpdateUserRoleV4' test.out

#- 347 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'yEeg3PHXwwXwCCtE' \
    --body '{"assignedNamespaces": ["dSKb0XgnfnyX8Hti", "aRcPWI7GnESyrHNo", "1MNiorK5UaUh8UcD"], "roleId": "vX0ZCg9ZxJ9JdYCG"}' \
    > test.out 2>&1
eval_tap $? 347 'AdminAddUserRoleV4' test.out

#- 348 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '8dnHlW2M9DJ8V2OM' \
    --body '{"assignedNamespaces": ["oif6tUwE9J76slWt", "6C61lvnZ5Siel28Z", "Nzn6qO0erI3egTyZ"], "roleId": "quIe2efoURERSeNP"}' \
    > test.out 2>&1
eval_tap $? 348 'AdminRemoveUserRoleV4' test.out

#- 349 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'false' \
    --limit '100' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 349 'AdminGetRolesV4' test.out

#- 350 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "UZbqdK30JTBGIOwN"}' \
    > test.out 2>&1
eval_tap $? 350 'AdminCreateRoleV4' test.out

#- 351 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'IEWFG1nWQK6wc96Q' \
    > test.out 2>&1
eval_tap $? 351 'AdminGetRoleV4' test.out

#- 352 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'S5wULBqXxhcjEjR2' \
    > test.out 2>&1
eval_tap $? 352 'AdminDeleteRoleV4' test.out

#- 353 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'DyIAzodJzLvyjtze' \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "B4W9VvC3mEhtV2nt"}' \
    > test.out 2>&1
eval_tap $? 353 'AdminUpdateRoleV4' test.out

#- 354 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'iqUqwh7rB5eAXJEM' \
    --body '{"permissions": [{"action": 83, "resource": "vfeppkd7gvJMA4qn", "schedAction": 36, "schedCron": "Ue1xjdB0YfVq8wQ2", "schedRange": ["X2lbeU5c5IOkpIKJ", "4X77Yj7ZztCV9ojN", "0yXz07qwiwmvXp3t"]}, {"action": 48, "resource": "XZrhXhWbRAaVGo3C", "schedAction": 60, "schedCron": "BuKk1ypDe1YflvtX", "schedRange": ["GrcyrC1k1TusNeog", "vi74ZuAJZwLtfK35", "9xPAYt91PVFszyK1"]}, {"action": 48, "resource": "Y5oayS2fvyWHsulG", "schedAction": 28, "schedCron": "aqenfYzcnb6eLCMg", "schedRange": ["fBbGUsEh9I6X0Dwg", "mHjtS7DOUxgWxL9K", "vzYzi9w1g2xzmg1o"]}]}' \
    > test.out 2>&1
eval_tap $? 354 'AdminUpdateRolePermissionsV4' test.out

#- 355 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'yr1qwBQgatj7dsgo' \
    --body '{"permissions": [{"action": 89, "resource": "vwLUDP0dmh0JTsxa", "schedAction": 85, "schedCron": "hSInSjkJDTRSo1DB", "schedRange": ["nldvZbSCmMmEbwGB", "qAIX09Mf9av766XZ", "2BaP7Z6zBZmJbUk6"]}, {"action": 42, "resource": "23R7pScJydttXMwE", "schedAction": 83, "schedCron": "pQVyihUSJkoPBOei", "schedRange": ["oP50yYzNzfzgwoJk", "HVePcHsUPCQCcM8K", "TDG6UbfejD7aZbxA"]}, {"action": 12, "resource": "bWtBvHWeMiEkjs1x", "schedAction": 85, "schedCron": "6gY6TTi6XSzEnc6L", "schedRange": ["boHAkIh1WYKhdslV", "QqDmugrOw8f1Hn4B", "q6A1V9AcYlNLF6hO"]}]}' \
    > test.out 2>&1
eval_tap $? 355 'AdminAddRolePermissionsV4' test.out

#- 356 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'RrlxHfsR6EkPnc5r' \
    --body '["NraAdI2NQXcQRCEY", "bhFC5SKCOoD40Icc", "yUCal0vNo27tjsJX"]' \
    > test.out 2>&1
eval_tap $? 356 'AdminDeleteRolePermissionsV4' test.out

#- 357 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId '3QsfDjtLAkHHqkv8' \
    --after 'FzSPweouRj1mvxls' \
    --before 'iMdUlOzPxeaR0ixG' \
    --limit '14' \
    > test.out 2>&1
eval_tap $? 357 'AdminListAssignedUsersV4' test.out

#- 358 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'KMwwTFg1dtKUdYc0' \
    --body '{"assignedNamespaces": ["oImsqZuLHl7K0E28", "4pu24wohTNFi7yBi", "dtA5Wlz4QttZqVP5"], "namespace": "Ek0MN11zRoqt3mXK", "userId": "Y8i5rtzXDtAfpIfF"}' \
    > test.out 2>&1
eval_tap $? 358 'AdminAssignUserToRoleV4' test.out

#- 359 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'bzqdOqCu3WUNZwNU' \
    --body '{"namespace": "00ePiMOiBU0LuexS", "userId": "z2XhtKMOBjJb39AP"}' \
    > test.out 2>&1
eval_tap $? 359 'AdminRevokeUserFromRoleV4' test.out

#- 360 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["4RMJREzTraE5UgJH", "eq4roSzSShPf4lMy", "xQkJ8n8SjAAc6Es9"], "emailAddresses": ["LNJjCSDB2Tsucs01", "bn3k7aZO6X3303GU", "4ZnVeBqkyNLWC1TK"], "isAdmin": true, "isNewStudio": true, "languageTag": "1Lo32Vh21lp5anMj", "namespace": "b7Wh9Ff1SRGs4cJK", "roleId": "X1TFGEboPCjDBLzr"}' \
    > test.out 2>&1
eval_tap $? 360 'AdminInviteUserNewV4' test.out

#- 361 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "kbEan9V1Rn5TK3Jl", "country": "nLa23ZUpRHgZgGZV", "dateOfBirth": "NkUCsjgXcu7Y8mKf", "displayName": "KfXsmYyFtf6ba4fG", "languageTag": "Qj6WKcKZJlbh2BfE", "skipLoginQueue": true, "uniqueDisplayName": "Bmb7NbiekRTysa3s", "userName": "8wFXOexxIQQDAWQ7"}' \
    > test.out 2>&1
eval_tap $? 361 'AdminUpdateMyUserV4' test.out

#- 362 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"factor": "k35nMoGxCjFG77wa", "mfaToken": "S3kHZjlrJ9yQzslv"}' \
    > test.out 2>&1
eval_tap $? 362 'AdminDisableMyAuthenticatorV4' test.out

#- 363 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code '3TqLBPXkAEVfPzYv' \
    > test.out 2>&1
eval_tap $? 363 'AdminEnableMyAuthenticatorV4' test.out

#- 364 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 364 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 365 AdminGetMyBackupCodesV4
eval_tap 0 365 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 366 AdminGenerateMyBackupCodesV4
eval_tap 0 366 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 367 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    --body '{"factor": "MwYSDCpOTCLVQUGG", "mfaToken": "C9PnryPcmetJN4TX"}' \
    > test.out 2>&1
eval_tap $? 367 'AdminDisableMyBackupCodesV4' test.out

#- 368 AdminDownloadMyBackupCodesV4
eval_tap 0 368 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 369 AdminEnableMyBackupCodesV4
eval_tap 0 369 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 370 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag '5vfr0U8PmjfgimlS' \
    > test.out 2>&1
eval_tap $? 370 'AdminGetBackupCodesV4' test.out

#- 371 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag 'nxz5aGp5ZUvTXNhM' \
    > test.out 2>&1
eval_tap $? 371 'AdminGenerateBackupCodesV4' test.out

#- 372 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag 'CLYV20hNIfSjFrBL' \
    > test.out 2>&1
eval_tap $? 372 'AdminEnableBackupCodesV4' test.out

#- 373 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code 'rBamtVZsHuUF5etM' \
    --factor 'YpBy6v8I2VsrUQCA' \
    > test.out 2>&1
eval_tap $? 373 'AdminChallengeMyMFAV4' test.out

#- 374 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action 'd11uzvL7MfumyLpj' \
    --languageTag 'ybF1SNT2zbFe4iqG' \
    > test.out 2>&1
eval_tap $? 374 'AdminSendMyMFAEmailCodeV4' test.out

#- 375 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"factor": "TjEir2bczpqi50q8", "mfaToken": "fc9fs2iPy06T3Kfi"}' \
    > test.out 2>&1
eval_tap $? 375 'AdminDisableMyEmailV4' test.out

#- 376 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'wEnNc3ZoVMHXGdch' \
    > test.out 2>&1
eval_tap $? 376 'AdminEnableMyEmailV4' test.out

#- 377 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 377 'AdminGetMyEnabledFactorsV4' test.out

#- 378 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'iib3SSUN7wNiYUfk' \
    > test.out 2>&1
eval_tap $? 378 'AdminMakeFactorMyDefaultV4' test.out

#- 379 AdminGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam adminGetMyOwnMFAStatusV4 \
    > test.out 2>&1
eval_tap $? 379 'AdminGetMyOwnMFAStatusV4' test.out

#- 380 AdminGetMyMFAStatusV4
eval_tap 0 380 'AdminGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 381 AdminInviteUserV4
eval_tap 0 381 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 382 AuthenticationWithPlatformLinkV4
samples/cli/sample-apps Iam authenticationWithPlatformLinkV4 \
    --extendExp 'false' \
    --clientId 'I7j0ltUOkA39NA0x' \
    --linkingToken 'FK7XD1tTUuwqy4dW' \
    --password 'Vujmbd2Vs6HvTpHc' \
    --username '1W0DIlczsYetOa4K' \
    > test.out 2>&1
eval_tap $? 382 'AuthenticationWithPlatformLinkV4' test.out

#- 383 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'w9pHrpAqTqDM2ZmB' \
    --extendExp 'false' \
    --linkingToken '2jMUuFAOMtx1gTbl' \
    > test.out 2>&1
eval_tap $? 383 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 384 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'ZssVubE9OOX8WHX0' \
    --factor '2ym09gSiOeCip21o' \
    --mfaToken 'Lfvp55iWbOnWs1I6' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 384 'Verify2faCodeV4' test.out

#- 385 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'vxbV5ODFRW05tQyl' \
    --codeChallenge 'QY3CQp9BrdcYY5wZ' \
    --codeChallengeMethod 'plain' \
    --additionalData 'WXzzQ2Nut4wt3noY' \
    --clientId 'bfmwl6aCwSXtLhNo' \
    --createHeadless 'true' \
    --deviceId 'PUnWxJHdqf0SQVhQ' \
    --macAddress 'Ni0t3A9wwddRqeFl' \
    --platformToken 'q5L55sJPeYnFDiNP' \
    --serviceLabel '0.535123248782758' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 385 'PlatformTokenGrantV4' test.out

#- 386 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'ca7pPMb8t8O76YtG' \
    --codeChallengeMethod 'plain' \
    --simultaneousPlatform 'X0SlFmc34AcbS4LN' \
    --simultaneousTicket 'fRhalXHcrP7jUUKY' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'cpl94kD4mXQCCksj' \
    > test.out 2>&1
eval_tap $? 386 'SimultaneousLoginV4' test.out

#- 387 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge 'JL9mYJHHHzRsHhPg' \
    --codeChallengeMethod 'S256' \
    --additionalData 'taK1eQONvQKLOzG4' \
    --clientId '54yJLkbN5piqtfLN' \
    --clientSecret 'mBsEVlc9lpGk6ODn' \
    --code 'cJ3CqRfTNisqrHyl' \
    --codeVerifier 'F2siiR8STahPWXfE' \
    --extendNamespace 'cMDvIwfscUG8B5ay' \
    --extendExp 'false' \
    --loginQueueTicket 'nnpywGuhy2vNfmqj' \
    --password 'F6bW6S51RC8eG0rB' \
    --redirectUri 's5ZX0axd46x2mTpK' \
    --refreshToken 'GO36IrYJz2riNGF5' \
    --username 'bcPFpLHiKCt7kK6X' \
    --grantType 'client_credentials' \
    > test.out 2>&1
eval_tap $? 387 'TokenGrantV4' test.out

#- 388 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'vi7t2lTJQ7llUKhE' \
    --code 'BrsFLLWr8SfacX9f' \
    > test.out 2>&1
eval_tap $? 388 'RequestTargetTokenResponseV4' test.out

#- 389 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'lZuC9qImxhNX2KMA' \
    --rawPUID 'true' \
    --body '{"pidType": "skHvOU231Z9cVyyU", "platformUserIds": ["arA8Gg6bnG1ol7J2", "ziR0PWgmyYyZZF4a", "JzWa9o4f4JCLH6z4"]}' \
    > test.out 2>&1
eval_tap $? 389 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 390 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "phQf94Q3bX7jNL1h", "policyId": "lrURlK0czyy65CR7", "policyVersionId": "zsMIzZInriIr7nQD"}, {"isAccepted": true, "localizedPolicyVersionId": "LlXpHD9W0K6nKsXZ", "policyId": "KrOn8oOKgBTvcF5m", "policyVersionId": "9qgyq09mEZc25EQM"}, {"isAccepted": true, "localizedPolicyVersionId": "naMcRzXoAkxxyMPJ", "policyId": "Mx6MoLdezkC1DccK", "policyVersionId": "gdHXrIYJMADMUEXm"}], "authType": "EMAILPASSWD", "country": "8zPmabignWaHY6SP", "dateOfBirth": "3EVkrTpPwqT1bRsm", "displayName": "0Hzxchhm6KAc3cnV", "emailAddress": "267Hi7oIvSH6lFMG", "password": "euMRDIE6ZlHc7dkk", "passwordMD5Sum": "UKBiAPZ9150a0Y7p", "uniqueDisplayName": "F2BQQznxQSSEBPSb", "username": "zn5eAQWbz0rwpX2r", "verified": true}' \
    > test.out 2>&1
eval_tap $? 390 'PublicCreateTestUserV4' test.out

#- 391 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "rVE24FV1tKJnUYUX", "policyId": "Y7yqKM15opHmz6RI", "policyVersionId": "LbxccpL4gwZm9UhJ"}, {"isAccepted": true, "localizedPolicyVersionId": "NdP2HfYyCbE7RzJ9", "policyId": "u7RQtqNPInh0CtXr", "policyVersionId": "M4Z9qqn6RrcJq49l"}, {"isAccepted": false, "localizedPolicyVersionId": "78qK4zxXylIa4aDn", "policyId": "2QWHy2Ornj5hIolY", "policyVersionId": "rfZq38YecoJRr362"}], "authType": "EMAILPASSWD", "code": "oxklIpbb1PxjLA8n", "country": "Z1ck1sW4lHAXWHKs", "dateOfBirth": "ZEprlOx0gnLdi7ZD", "displayName": "EId72aApayO0fRm4", "emailAddress": "kg5IDqrvZXwnqNRe", "password": "qSCssBzGgMI2hrCg", "passwordMD5Sum": "jPlyUL3mEsi6Wv4I", "reachMinimumAge": true, "uniqueDisplayName": "JqAxjVA7wAKsnVQt", "username": "9mjMjhdBYwSSxl7L"}' \
    > test.out 2>&1
eval_tap $? 391 'PublicCreateUserV4' test.out

#- 392 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'U4XKFeQzMMeyD7rv' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "LfW5zu2n1omE2EGN", "policyId": "Mw8HRYhkKI7jDZEI", "policyVersionId": "rPpV65zYpD2tyidA"}, {"isAccepted": false, "localizedPolicyVersionId": "HsQ7UcFkK8tNW80L", "policyId": "Y0cuG5kzFfBbnPaZ", "policyVersionId": "QSTURQGEY80PYzdG"}, {"isAccepted": true, "localizedPolicyVersionId": "cEysxX0WbDI7bHYS", "policyId": "eaaeqaeehK9YOkqd", "policyVersionId": "FSxXvt42Ek6bLorR"}], "authType": "EMAILPASSWD", "code": "I0BTnettqzoVhyit", "country": "WaFKdhnLdoydibyl", "dateOfBirth": "yLFjaeBkgGAUdHuh", "displayName": "53R1S4CzYtzJdEcg", "emailAddress": "g8EBMkqglQWEh0FQ", "password": "yHRVLQU8N5DkbfN6", "passwordMD5Sum": "km3lR1yPdvNeHKqO", "reachMinimumAge": true, "uniqueDisplayName": "Ae69eiiENelhtppi", "username": "fDjSU88PYD6TLu2y"}' \
    > test.out 2>&1
eval_tap $? 392 'CreateUserFromInvitationV4' test.out

#- 393 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "kTdqcz6mmOyMn01f", "country": "r6imUMv6S8dgTRBO", "dateOfBirth": "5UhC6Mp411rafUFo", "displayName": "vy3KpAPLhQzFoqfC", "languageTag": "EEgH4rtzd6sqD07k", "uniqueDisplayName": "TwuVCy0ZAWljwjos", "userName": "3uJTb580eb08Mgj7"}' \
    > test.out 2>&1
eval_tap $? 393 'PublicUpdateUserV4' test.out

#- 394 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "0J5uZhBeqUjAjQPH", "emailAddress": "y47H91jKV2AjJbfm"}' \
    > test.out 2>&1
eval_tap $? 394 'PublicUpdateUserEmailAddressV4' test.out

#- 395 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ZpF1zg0VyuZ6fagw", "country": "M9ARn1wSErM4DBhP", "dateOfBirth": "tZIc5wufYAsGaCx5", "displayName": "QwRB1THxVyGsQgil", "emailAddress": "TJjr3VukSY0WE1Sj", "password": "QQGfhFBgdUpKunH9", "reachMinimumAge": false, "uniqueDisplayName": "xMv5I0mItsBI6zey", "username": "IoJ88E0YslcizjXC", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 395 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 396 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"dateOfBirth": "OXk7kOxtZyehaY5v", "displayName": "ucPNtbOkLyW0e9u2", "emailAddress": "nPqXvKALJ6BivThk", "password": "Vj1m39EKOcuIUZVG", "uniqueDisplayName": "BHI5WQ7W25P8zuUK", "username": "IBWGUa6EaaF7cC2s"}' \
    > test.out 2>&1
eval_tap $? 396 'PublicUpgradeHeadlessAccountV4' test.out

#- 397 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "ocvbvJ0URzkvfk0S", "mfaToken": "AShZ9uvsbccjnyVr"}' \
    > test.out 2>&1
eval_tap $? 397 'PublicDisableMyAuthenticatorV4' test.out

#- 398 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'plXkAu4Qbt82hTaQ' \
    > test.out 2>&1
eval_tap $? 398 'PublicEnableMyAuthenticatorV4' test.out

#- 399 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 399 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 400 PublicGetMyBackupCodesV4
eval_tap 0 400 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 401 PublicGenerateMyBackupCodesV4
eval_tap 0 401 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 402 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "0irjsMtMJ0vuZsWg", "mfaToken": "GvGbSKOioA1Yytqw"}' \
    > test.out 2>&1
eval_tap $? 402 'PublicDisableMyBackupCodesV4' test.out

#- 403 PublicDownloadMyBackupCodesV4
eval_tap 0 403 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 404 PublicEnableMyBackupCodesV4
eval_tap 0 404 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 405 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'xDn3dqYx2SeOzh1e' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetBackupCodesV4' test.out

#- 406 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag '2pohNxQbCHvUfjEe' \
    > test.out 2>&1
eval_tap $? 406 'PublicGenerateBackupCodesV4' test.out

#- 407 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'nbYDkYagCn4X8qsY' \
    > test.out 2>&1
eval_tap $? 407 'PublicEnableBackupCodesV4' test.out

#- 408 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code 'AWqXzgkEyTHMWgla' \
    --factor 'd43BmxxmfUMI6FrA' \
    > test.out 2>&1
eval_tap $? 408 'PublicChallengeMyMFAV4' test.out

#- 409 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 409 'PublicRemoveTrustedDeviceV4' test.out

#- 410 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    --action 'OLUnDBQYqOqwdHin' \
    --languageTag 'twtjFLILLk3TqXu6' \
    > test.out 2>&1
eval_tap $? 410 'PublicSendMyMFAEmailCodeV4' test.out

#- 411 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "FU2Krq5lvYGcjs1c", "mfaToken": "2KG1iMx0gxbfKxrj"}' \
    > test.out 2>&1
eval_tap $? 411 'PublicDisableMyEmailV4' test.out

#- 412 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'QoDbAtBvH14brShX' \
    > test.out 2>&1
eval_tap $? 412 'PublicEnableMyEmailV4' test.out

#- 413 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 413 'PublicGetMyEnabledFactorsV4' test.out

#- 414 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'L29ic5XWkBLeCseB' \
    > test.out 2>&1
eval_tap $? 414 'PublicMakeFactorMyDefaultV4' test.out

#- 415 PublicGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam publicGetMyOwnMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 415 'PublicGetMyOwnMFAStatusV4' test.out

#- 416 PublicGetMyMFAStatusV4
eval_tap 0 416 'PublicGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 417 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'daROvQVthdU1HNDa' \
    > test.out 2>&1
eval_tap $? 417 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 418 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "6kHxnQ43GMtoEeks", "emailAddress": "c7TMufeYWqdk75qB", "languageTag": "PYzvZE7jTKkQOHXW", "namespace": "KxGQMqnwWs9wPVTR", "namespaceDisplayName": "4rFiNjDC6bRS39qB"}' \
    > test.out 2>&1
eval_tap $? 418 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE