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
    --body '{"modules": [{"docLink": "AOkGph98HyEriCQf", "groups": [{"group": "AN7FxqRHkVAXFgIv", "groupId": "b3QeTqLHhpPGL2Qr", "permissions": [{"allowedActions": [100, 4, 66], "resource": "ao9MeIlNgcGQt7aE"}, {"allowedActions": [69, 90, 4], "resource": "XU0uIsy7bPgnzM9P"}, {"allowedActions": [28, 10, 96], "resource": "qIcgiR73UIoV5sLb"}]}, {"group": "w4BeXGUtUJs5IPH0", "groupId": "FHOlvN96tlaNERtN", "permissions": [{"allowedActions": [10, 66, 28], "resource": "usEjSBNtJstw6ddm"}, {"allowedActions": [71, 16, 62], "resource": "Pmelq3BAQ2cDvb9L"}, {"allowedActions": [7, 57, 34], "resource": "aEZqGttdO0t83tpG"}]}, {"group": "EN5MIiOCEfRw1bIq", "groupId": "Sbdrd7fLRPe5gumP", "permissions": [{"allowedActions": [64, 13, 28], "resource": "t124KYcatpwYMKJu"}, {"allowedActions": [59, 82, 12], "resource": "Fti15NekGmqJQz0I"}, {"allowedActions": [22, 62, 6], "resource": "sD4SDtyH82C8DofE"}]}], "module": "ynOul2uvliQ6eXjN", "moduleId": "jCzOtEk4CaPj7kvR"}, {"docLink": "SFdfXJ0KDtg0sbOb", "groups": [{"group": "tplhF88UyGF69NE7", "groupId": "uLRBxD9X5IAdQ21a", "permissions": [{"allowedActions": [74, 78, 4], "resource": "C66oTytDYXkqyAUt"}, {"allowedActions": [63, 42, 97], "resource": "RUO3unV9SnA35oBT"}, {"allowedActions": [40, 2, 1], "resource": "CvxbAUGZfbz19k4Z"}]}, {"group": "pgwHUc5XGHpoy7FK", "groupId": "BsWiCZfOyFhqlCYB", "permissions": [{"allowedActions": [32, 64, 5], "resource": "tSLQDDEiZmiZpWJI"}, {"allowedActions": [88, 2, 69], "resource": "v6GBX9Zk4JTweMZm"}, {"allowedActions": [24, 61, 69], "resource": "hGn4d44hc39iB8YV"}]}, {"group": "agiSsdagKyab65OE", "groupId": "3A8PD3UwoqvSINH6", "permissions": [{"allowedActions": [77, 32, 0], "resource": "B3PyBQHcZ9KqunEX"}, {"allowedActions": [34, 18, 6], "resource": "bHp4K5zk29oIrgYV"}, {"allowedActions": [81, 99, 53], "resource": "OOMWZ1F2KcdGCTAL"}]}], "module": "lhXxszRhm7OgTz4F", "moduleId": "DOk24MeTvqx01xtS"}, {"docLink": "XOM7WYFaIM4jg98H", "groups": [{"group": "Ed53afm4jLx8jyB1", "groupId": "R2nv8voo505kbOi8", "permissions": [{"allowedActions": [2, 85, 7], "resource": "k6g9aKajtngZldRG"}, {"allowedActions": [89, 73, 64], "resource": "smCHiKwMYWg43Pdt"}, {"allowedActions": [50, 11, 30], "resource": "5GtRPsUpGpQZkYf8"}]}, {"group": "DAVFzaBNBzbjGzRv", "groupId": "NXp1x2o5740hVT9P", "permissions": [{"allowedActions": [33, 76, 66], "resource": "7rB8J86y55XOlSSF"}, {"allowedActions": [89, 21, 14], "resource": "5VpdFA3krwm9rAjd"}, {"allowedActions": [74, 55, 96], "resource": "vYxmcgfwqfQ1x8lO"}]}, {"group": "8hs5UYeyPVZq4fJP", "groupId": "vOJYtuwqvSbIeG9N", "permissions": [{"allowedActions": [67, 51, 6], "resource": "4oEZAG1agJO0SDNi"}, {"allowedActions": [20, 29, 87], "resource": "tjGWlYyf9HKQdOjN"}, {"allowedActions": [86, 97, 1], "resource": "naTvfyWQcLW4IL2d"}]}], "module": "DLM8G5yYypfg0thu", "moduleId": "vpkk2g7F3BvIKZsd"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'false' \
    --body '{"groupId": "HDoemj8VFfYxLde1", "moduleId": "vBegh0Btfzbvow5b"}' \
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
    --body '[{"field": "pi8twej6zsFk8o5l", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["FNQa25dTTTaqRnIL", "3XJ4fB1708pvRXir", "Gs3cUcqmJh85UGSr"], "preferRegex": true, "regex": "Ms4c4n7XU2vu18sT"}, "blockedWord": ["iq1lhMpKFpx63VQe", "eLfVDq2YdBJ6nCsB", "C8m6NmTx5sS4nTi5"], "description": [{"language": "oWcJaOFgX4uLgDzX", "message": ["UPZfpurcrd2LNjQY", "C9nydR83ZdAub46Z", "N0UfQREmJiezN9lb"]}, {"language": "4kwkkst4Em8MVS2F", "message": ["Li4ipgk5ZMC2bq87", "yB2VRd5sARGlm7Kq", "9YxCQLEgasVLZjUT"]}, {"language": "Xd08lJ9wkLvvDpJb", "message": ["LCqJnSj0KeahJhmm", "cbrpJWEkLaLqStaX", "FHw3q9yZPlENv8If"]}], "isCustomRegex": false, "letterCase": "uR2O9jhsPGY6Jalw", "maxLength": 90, "maxRepeatingAlphaNum": 57, "maxRepeatingSpecialCharacter": 31, "minCharType": 57, "minLength": 91, "profanityFilter": "jVw7wxuTbErJiYxH", "regex": "EYPuhKfbFaJJHngs", "specialCharacterLocation": "JXENHCvyImMrYVIF", "specialCharacters": ["szQv0zRnGIzLUuA8", "4JtoQVwJ0UUxpZ8o", "jpTWnoeNUgmnnJMJ"]}}, {"field": "EXHYMx4xaj3oV6JJ", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["3AUIP8jjHaIhObGs", "lOQFGgOqPl5JDhsM", "taMKyrzlgQqz174h"], "preferRegex": false, "regex": "BTNBpwGXk3r4yhnN"}, "blockedWord": ["BahtByvRBZDyVerU", "ZQSueRw1X7LP6Xd9", "m377x7qTJb6M29bG"], "description": [{"language": "dWjDV90QRqnIFZTT", "message": ["Ip6XipSYXdw7C576", "LyMUfN5ZJlMov2Kh", "FAyKOS3p5p6S76lZ"]}, {"language": "1GOUI8QHNMpGavb3", "message": ["zbkwX2b3GCQsRN43", "Yi3xh3iisR9U0h37", "wIoseCUuOBMgK1Q6"]}, {"language": "3EfcdUIqMPla7tkB", "message": ["Zbg46kDqgUwczsa8", "WNjYDZtbryoIcBcM", "N8Mn6TXIQeY9NYRM"]}], "isCustomRegex": true, "letterCase": "WMkD12geo6wMx2Vb", "maxLength": 1, "maxRepeatingAlphaNum": 94, "maxRepeatingSpecialCharacter": 54, "minCharType": 54, "minLength": 65, "profanityFilter": "yIPOzmFpCcYfbpPv", "regex": "GUfcmAGZ2gsDtDqn", "specialCharacterLocation": "K8ix6Q1jlsbfsq6O", "specialCharacters": ["xdFj3dMloH3GIUx7", "F7S5bDZPP9kydBRJ", "JdXZhnsqJOgBbZjJ"]}}, {"field": "qh7BJiv7rIMV2pLb", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["E78QzDItXkU7xRWv", "wBWJVnSlsJnWmM6g", "S4rthGjMSWNhiblg"], "preferRegex": true, "regex": "CofNH02NWbhyGOmr"}, "blockedWord": ["9ThsgosISe0OXnnQ", "kAIFwiFfYxYk4YXz", "xBFf6QMwMkGRrC5p"], "description": [{"language": "JRsslQ5JAedU0Tav", "message": ["a2FdyudzcMDfFehy", "dJ0guIhJE7BtcTFZ", "lJzB6nhSYH0w13u3"]}, {"language": "q2GZ90rfkTCpFzBM", "message": ["qbmzMs0KM3rqZxHB", "To3FdWsQ4HrtsuiZ", "13vc6vKB3SCg4UAM"]}, {"language": "9KMCU9nwSiURZk9R", "message": ["QwmI6GQvzmOaOwOl", "8f3bA5kvkypKfw8H", "T2ZQwuoLGA7eyMpj"]}], "isCustomRegex": false, "letterCase": "ayH4eeH5OTKFwbHG", "maxLength": 86, "maxRepeatingAlphaNum": 77, "maxRepeatingSpecialCharacter": 84, "minCharType": 33, "minLength": 79, "profanityFilter": "cCpkk744i78KIJAf", "regex": "CM8GiGWuY2olzOcv", "specialCharacterLocation": "MefxeOv0hXU6NavQ", "specialCharacters": ["S9tua6xnexCfTczk", "gLicA6x1HyqBozXD", "y5Lb8rYCNTZ1tTQw"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'kgryzQeRSmlFft9f' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after '2XasFqEp0LGQjH5a' \
    --before 'sfa5alRlWuFLbu6H' \
    --endDate 'JaLEUaJ8qxmTH9Nt' \
    --limit '18' \
    --query 'R9xxu46hA7D0HVz5' \
    --roleId '6a4tgoZtS6G13XaW' \
    --startDate 'YG6JjgdDL8joGyyN' \
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
    --body '{"ageRestriction": 77, "enable": false}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'ALptVFzqYpRZjOiI' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 52}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'dsgvIO3PO8XaCdCg' \
    --limit '42' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "GSNYAx2di0e3YNAv", "comment": "4KI5SpCeLuhKdTiL", "endDate": "xUaC2PJmsD23q0cH", "reason": "9MFpSwkgs8HueTw4", "skipNotif": false, "userIds": ["zcCzazQOW51PcvSv", "0q9MHmjHurSDKdw0", "ADC2Fs9Jg2ZSsvDs"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "UHfEXMXcJPj1YiX8", "userId": "8lj2QhAXXMe9qmJd"}, {"banId": "dfgcRWc4yDhl9gI1", "userId": "fog3peL6nbWew2KO"}, {"banId": "SzNPLvpRjIdCeY4s", "userId": "1pJKuWXH8rAPq1Ln"}]}' \
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
    --clientId 'cgMqJH2io0G70H3t' \
    --clientName 'DYom57hLqKMFUCIE' \
    --clientType 'A2K3TOagnDBoYKRT' \
    --limit '1' \
    --offset '92' \
    --skipLoginQueue 'false' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["cTSvWE1Xpt4BjNjC", "G7BwuCBz4npuCV9f", "q8Wul6tA05hHCWfY"], "clientUpdateRequest": {"audiences": ["qucafc7Annawoder", "1FSjYmLs0TxlQuhs", "0fqTi6Na7iEZFqWi"], "baseUri": "o9UNQyXZqxyUU2PK", "clientName": "NgAW3MtpbmeQCquj", "clientPermissions": [{"action": 46, "resource": "ValPNYir4gHpUVw1", "schedAction": 85, "schedCron": "1l49GhATBDUxjLWv", "schedRange": ["cGCmKq4Jwfy60QOn", "xK0IvqxLwnjN2GLf", "snFAbsWA8ceSbX5S"]}, {"action": 83, "resource": "RlDpSoBwrK1Zdlji", "schedAction": 79, "schedCron": "BNJOrGSSH0kOch5z", "schedRange": ["kiyexoq0I7u1k04a", "OIlyhLymzIeSa3NS", "9cwwT81fsjlQKc71"]}, {"action": 57, "resource": "IszyfJKrScHvf1jO", "schedAction": 74, "schedCron": "xeDmfeRKbRz1c4Y5", "schedRange": ["JEweGjN2W1thvxvu", "M7UQHnC4zjrQGMC7", "8QTOLrnju17niGCb"]}], "clientPlatform": "P7AbiQbJWqLYxxmK", "deletable": true, "description": "RTsMo1Z442jZ6OIs", "modulePermissions": [{"moduleId": "Ow5X3448pPP9vnlZ", "selectedGroups": [{"groupId": "TbFMKkXbuFtF4sqe", "selectedActions": [98, 85, 58]}, {"groupId": "lL2FXBLnUrBK3sOb", "selectedActions": [42, 64, 23]}, {"groupId": "ld8kNlUOO0BsBB3G", "selectedActions": [0, 84, 41]}]}, {"moduleId": "AWnf6UYytAzR6ith", "selectedGroups": [{"groupId": "QVtFjQuL9ey6IoxA", "selectedActions": [39, 65, 92]}, {"groupId": "HzL0XyUCJhPN7K7L", "selectedActions": [69, 4, 69]}, {"groupId": "Ss1h7E29shfrffyt", "selectedActions": [87, 18, 2]}]}, {"moduleId": "LMHp68gtEr56NrjX", "selectedGroups": [{"groupId": "GBdFIc3WMST4357b", "selectedActions": [52, 65, 85]}, {"groupId": "s3kddH8gjENZcwEl", "selectedActions": [49, 27, 79]}, {"groupId": "OQes5r3Dt3XMvr8K", "selectedActions": [29, 22, 99]}]}], "namespace": "tPuCQV48mrBjCzAt", "oauthAccessTokenExpiration": 19, "oauthAccessTokenExpirationTimeUnit": "JhsjgeHtEar9hkvj", "oauthRefreshTokenExpiration": 76, "oauthRefreshTokenExpirationTimeUnit": "u5kL121156uBcfQi", "redirectUri": "yc9WxFNmqzAMbNmY", "scopes": ["JiKgV7cmeCVwsEuj", "7LV2cR3Z50p9e2J8", "tTJ0uBohRgHcsdfW"], "skipLoginQueue": true, "twoFactorEnabled": true}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["2KKlGi0LvGlvDcdQ", "g7SDgTc4YWLqRUhJ", "WSnF6c8i4nn1yRl3"], "baseUri": "mfRrF7rN0YItQ0HP", "clientId": "8WMA65PwCbkR5qtv", "clientName": "6aBSSSfDea5SuUnd", "clientPermissions": [{"action": 5, "resource": "nbQxR2oEi3BrXqgt", "schedAction": 10, "schedCron": "LH7IBkVOSGdD4bqo", "schedRange": ["5IPOvnx4h2DNY9bN", "FY5Y7yW3R4022c46", "KKEVKTElYVmanpxc"]}, {"action": 12, "resource": "aTHw2krXoA9Y69lp", "schedAction": 56, "schedCron": "zZG72fmKtrKxNY9q", "schedRange": ["zNmfzeYcZFFQIhzb", "xwSwrnXMQm6HVBzr", "eybt8hpuOWNThTEl"]}, {"action": 64, "resource": "H1DefIlx1hpyVONi", "schedAction": 3, "schedCron": "Vp56IyV1qz55x5W1", "schedRange": ["lvDh0AHGSNh5CrNJ", "GDBmRcS5lvyV0bod", "eQlAQ5DHYHeYs2AS"]}], "clientPlatform": "8A9cSFnTwja6HvBb", "deletable": true, "description": "kGVuGkkfA7fuR4ki", "modulePermissions": [{"moduleId": "Nw7DLPHQseTapqKq", "selectedGroups": [{"groupId": "7zs5H1GJk62pNquV", "selectedActions": [11, 57, 38]}, {"groupId": "VI5AUgRA8fOYbUND", "selectedActions": [98, 29, 82]}, {"groupId": "d3wKdjODfG0rHIqu", "selectedActions": [50, 79, 20]}]}, {"moduleId": "3Zhgqk68zwJJAkIR", "selectedGroups": [{"groupId": "Ue5QrrzaD6Se3IX8", "selectedActions": [61, 47, 3]}, {"groupId": "p0QUEqZGbLruDJz1", "selectedActions": [50, 30, 58]}, {"groupId": "jx7Px1aQF5EgtBYi", "selectedActions": [55, 77, 55]}]}, {"moduleId": "V2HSDQk3FoOGCuJb", "selectedGroups": [{"groupId": "kGB3L0RKMAWUnPhz", "selectedActions": [42, 60, 58]}, {"groupId": "w2npdi7guVfyrbTq", "selectedActions": [40, 98, 61]}, {"groupId": "afhfKmohPcuPk9gw", "selectedActions": [71, 65, 100]}]}], "namespace": "WFoZAOAr47PLpZCh", "oauthAccessTokenExpiration": 40, "oauthAccessTokenExpirationTimeUnit": "5Lbl7S0QDKQKrPRx", "oauthClientType": "PW4C4AqJcQTPi4DH", "oauthRefreshTokenExpiration": 44, "oauthRefreshTokenExpirationTimeUnit": "LaEbaIWdUbSQb9Dj", "parentNamespace": "dqd9zKmjxxGQiMsk", "redirectUri": "Ad01CWBxbrDspYDw", "scopes": ["etkCbR8uDK7cy8yG", "AJBvxgNA7zMOX9ON", "7gwrYtnv2QsbiPSu"], "secret": "PNHKK9c69sEJZaNZ", "skipLoginQueue": true, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'SxyzpMF7KM6Y9nin' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'lV17HE1OU07xSn0N' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'KIPJN2wy8kel2ENt' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["37bCCBCOkF79dPGi", "JRMfBEKJ6sDQQRm8", "HJMNpX2Wg32QB2A4"], "baseUri": "Gb0UY9RlTy5RGKGB", "clientName": "mK3lynmrRdlQCQ9Z", "clientPermissions": [{"action": 66, "resource": "mnQnnmSaYQn7pbxg", "schedAction": 42, "schedCron": "nuoHDNmJQ1HqkuDK", "schedRange": ["xEC0Xn9Dx6ebNU73", "gWmonVzvoqSM3IHG", "kYFe7DtKhnTBJQUG"]}, {"action": 100, "resource": "W2PcqnnjS8lQjSvm", "schedAction": 83, "schedCron": "hAe9Yk6bTSs8JV7r", "schedRange": ["ee1xsptjsR4HProq", "3bptujmABIQg88B9", "oKvP4K1Q6Oya81B8"]}, {"action": 54, "resource": "EBBB8rSrbUNQe9aO", "schedAction": 72, "schedCron": "JhBuUBmjshiejaiY", "schedRange": ["9EcFbnn8e5oTLTAb", "IkWxvnW1UemULm93", "kU4uUrXtqzW4mQBl"]}], "clientPlatform": "j9Pm6Uz1G2iDUIC1", "deletable": false, "description": "JrUabXUEvPX2VjcB", "modulePermissions": [{"moduleId": "2gx0D6OQAwM58ejk", "selectedGroups": [{"groupId": "kHY3T5Pj1V969y5p", "selectedActions": [28, 66, 51]}, {"groupId": "kKQUllZJZLmkliGq", "selectedActions": [20, 5, 25]}, {"groupId": "fxuXrFOWK0QJ2AtI", "selectedActions": [91, 67, 94]}]}, {"moduleId": "LgjOEvQ1GRY8A6yN", "selectedGroups": [{"groupId": "rVnwYQQoXVRjT8nk", "selectedActions": [16, 66, 11]}, {"groupId": "FUJlUNJnJPp8iiyA", "selectedActions": [2, 63, 27]}, {"groupId": "kyVM2swEQMWXWqFt", "selectedActions": [73, 8, 70]}]}, {"moduleId": "DxarYdVW4mQfs83r", "selectedGroups": [{"groupId": "AasKU5c45XYgew3D", "selectedActions": [44, 23, 28]}, {"groupId": "LSwAgEwbGxzpqrct", "selectedActions": [92, 28, 83]}, {"groupId": "Nfvel6nT0XUiPSlt", "selectedActions": [87, 6, 53]}]}], "namespace": "Po6lbSybPaf9nHVj", "oauthAccessTokenExpiration": 87, "oauthAccessTokenExpirationTimeUnit": "Gx8g3doBWOSgOzCu", "oauthRefreshTokenExpiration": 25, "oauthRefreshTokenExpirationTimeUnit": "DGHpQ16QdNPKzRSR", "redirectUri": "gDBHb2jCQMX3OS1D", "scopes": ["DDMXD9YF56hdhEDd", "lc2fodbvZk8LKFxx", "cDNA1F1hChso5VWe"], "skipLoginQueue": false, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'SUjSFFcERIMOU5yK' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 76, "resource": "AR7NyH2ptgnNNciz"}, {"action": 13, "resource": "STu3dJcS3I2Vd7UH"}, {"action": 21, "resource": "GE9xAbuywHAsfu5U"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'M9kcFT5GYZacGmx0' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 7, "resource": "qAtgJjRnNt7R7MpX"}, {"action": 87, "resource": "JpCU3RGvD5yjNuSd"}, {"action": 98, "resource": "AJwlztVoy0xFsAAu"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '44' \
    --clientId 'yiuh6qFkVK6WxZHg' \
    --namespace $AB_NAMESPACE \
    --resource 'WqggLP45bpJzYeND' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey '2kQzYhn3M0SWFdkJ' \
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
    --body '{"blacklist": ["PZ3iVj3TWxirObBx", "8EzvEzecR5STv8Iv", "gxobYoKOPpklSfW1"]}' \
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
    --body '{"active": false, "roleIds": ["aYEkC5R9iWSqZyzF", "R7YcKcILlxzgrp3F", "OPOWuXFYWReabP8s"]}' \
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
    --limit '6' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 141 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 142 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'xqYm6c69UrC2gwik' \
    > test.out 2>&1
eval_tap $? 142 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 143 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'z4oG5dBykWy5Ygoh' \
    --body '{"ACSURL": "nZtFosCMVNmticBs", "AWSCognitoRegion": "6xCyqvVTtUsgt4Fr", "AWSCognitoUserPool": "QGa4XGCBwQVT8sOC", "AllowedClients": ["0R64ryHVkHCTyXx2", "h4nluQAsaRhrKa52", "xhZQyIcMGUGEbkW2"], "AppId": "UwlBc3W9CdDs8Dnq", "AuthorizationEndpoint": "0SccOeBqS1pmJP0e", "ClientId": "DIylgXR2WQpmvMmG", "EmptyStrFieldList": ["xkVMCzo6mumDVTVf", "OVsuVohuRR9MzIvK", "NwKXM51R8z5tcRyf"], "EnableServerLicenseValidation": false, "Environment": "7LiO6bwziMjiCuu2", "FederationMetadataURL": "zAx8EG84C5YusNg4", "GenericOauthFlow": true, "IncludePUID": false, "IsActive": false, "Issuer": "0RRZxCtsLasvgqn4", "JWKSEndpoint": "uFUWqNsJ7qXCQgpN", "KeyID": "UyBaO6RAkG7N417U", "LogoURL": "p6HBeCwLRU4MGYXU", "NetflixCertificates": {"encryptedPrivateKey": "VJmGBTf8zwdyHwfe", "encryptedPrivateKeyName": "gX7vo4AWk5HliA4h", "publicCertificate": "COc6LuzmLATRKFz6", "publicCertificateName": "pFNwlXT0hWbtmziK", "rootCertificate": "69owUpw6SVzEnxSd", "rootCertificateName": "zZfbmyFo4pIdAOvH"}, "OrganizationId": "bNCWPpCnwEkMsRaN", "PlatformName": "vaBh31U5wUF0P8b6", "PrivateKey": "IiWfGiOm2bcqTnpA", "RedirectUri": "ZgeWdmqBhLEJr5dk", "RegisteredDomains": [{"affectedClientIDs": ["K6LwTwczAGe1AgyB", "EoPVpTfKzdXsP77o", "omBQyVSmqzRl0YW7"], "domain": "1tbuUazDY8Uami9r", "namespaces": ["LXJpkRb8c2W1oc8F", "FJs25Hrqbb1EKCTC", "pY6rNSBbpub4veiZ"], "roleId": "5WU9UFiCuhXYgnX4", "ssoCfg": {"googleKey": {"JYzTtyrmNv6rXMFU": {}, "Fmw0PvEvEcNVRgsz": {}, "Wiso6eHto2xNWH6E": {}}, "groupConfigs": [{"assignNamespaces": ["HFKksd97x6tbsLdz", "p7oX2AjPjhlivanI", "PEPmVrYOgNY1Hddj"], "group": "X18oAf2GIQ6rcoBz", "roleId": "Vpt3yqTycrsWUMZG"}, {"assignNamespaces": ["7yvDX6Glhxp9g7OA", "rpxlPoQnjEayoNGl", "QN58sNRzGBiD378D"], "group": "01G7MmcRlEMcNdkU", "roleId": "9eAi1B2y4wZtCDzV"}, {"assignNamespaces": ["fxxBqIPWvbLsQ9qT", "IMUDrtnjnVIm91XI", "GqXPmNgLE43h5GH6"], "group": "9m1K3wj5AzCESF7A", "roleId": "BnD1MXkjvnv8z2La"}]}}, {"affectedClientIDs": ["MBmOn2wBXqxI6rQS", "xjFyH5b0NXiX30rQ", "M2ZMZNmX3BIGb42j"], "domain": "t2PnmvseONo2WfYx", "namespaces": ["5LjJsdo4UM3aGA9Z", "Q3jZ5QLl0Y4CnQBV", "mu0s26EgsO56BTfD"], "roleId": "8EyZPfF5NedL76PS", "ssoCfg": {"googleKey": {"jylrPdBgDLxmgQfc": {}, "nYTKcaFUtkiERlfF": {}, "nPPZHr23VrNtBQmx": {}}, "groupConfigs": [{"assignNamespaces": ["2lehktDxMozjdMqg", "6PlhW6uJZm54Waje", "yMVqEtus6eLmrPQz"], "group": "RLzQxkSTi10zPX8U", "roleId": "boOwTmN48wWZ6aZx"}, {"assignNamespaces": ["SVIFQfxPOW5gjb9h", "27rmrWL8ESK2aJWU", "GJVBf6nNXpJ6Xj2u"], "group": "p69ASRJvawrMO9zH", "roleId": "5fz9WPUQAnxSFVQ2"}, {"assignNamespaces": ["XeQSxoZnXgUlE7DH", "g2PiohXxieSAnzMQ", "DGaO4oU8B889pVIA"], "group": "ldpMyKivnR7r7ZHR", "roleId": "exSGaDSrRHK4jdCa"}]}}, {"affectedClientIDs": ["o0cYJ0aHmKDpOSjS", "Ir2BvpljPCWq3JfK", "O9UVbujlg4DevDlR"], "domain": "ksIREPlXBQbS8a4l", "namespaces": ["kxYkxr9h7uatyaz0", "6VyKldbb0vWVWDBq", "FpjLHFv4qkuVkTvj"], "roleId": "HYjGAHOMsGXT8S2X", "ssoCfg": {"googleKey": {"uk7Iwfmfz2MRfzUo": {}, "qKUCBgCzgdqwHHjl": {}, "V7NdcJfNAcpWepTE": {}}, "groupConfigs": [{"assignNamespaces": ["wEWaZKv14DpzDGyF", "bkoViKi2aMm6jlY1", "hq77p0QHfu1q0697"], "group": "x8YbXBfkrQcoyChR", "roleId": "WOlsHlGo8f0V2qPf"}, {"assignNamespaces": ["pEiEO0spnle93mRH", "VC7g2NpC4B1C4rAy", "cXnsniNsruPPcDT5"], "group": "0YtervWXqEkO19oM", "roleId": "kcf36OkvTQFFTazl"}, {"assignNamespaces": ["q2BiE2QsspATaiB5", "uRGAShPnJXcixxX9", "vGYEN8ICG5CHIHcJ"], "group": "TQBgxNifhF8b43ge", "roleId": "YVJMO8xjkvqHDysC"}]}}], "RelyingParty": "06SDK0yM9X4Q4a7k", "SandboxId": "8mH08gMCwH17Pekd", "Secret": "Q1ZFDLMVw54U1kif", "TeamID": "sMdyvOIlPXUKVCpi", "TokenAuthenticationType": "Dg7Lopt5Fz6kph9j", "TokenClaimsMapping": {"Z0S2MiTdEkrTjtkB": "XUhO7xG5IYtxhbJU", "ZS7aDQoiFtVeU2ic": "O7CbaHQv2R5N7pGV", "fJAUar3jCTEsAxF0": "uXT7HXQiLmVS1SAM"}, "TokenEndpoint": "Ixcpv1oHAodPtmM2", "UserInfoEndpoint": "8z2KNcEEyKB8bstA", "UserInfoHTTPMethod": "4yEXXJOkM46PUrQR", "googleAdminConsoleKey": "cE34wZYMfQHSvdHJ", "scopes": ["VI2z6ahdYhyNoxj7", "4Iv8PJzE2XHCioT7", "497oDaglzxHnt55S"]}' \
    > test.out 2>&1
eval_tap $? 143 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 144 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'zmIKEFPBanGwwGEB' \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 145 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'L4lvRqUi1oO22lAe' \
    --body '{"ACSURL": "xCjAJKPQvQKxFP3A", "AWSCognitoRegion": "PSeJRRFI6bg08yuu", "AWSCognitoUserPool": "mpHgklZoshblEhyu", "AllowedClients": ["XiMPn40Apf10zwnz", "8YMeJYUcqOYkE7tN", "7Ya44DsTsKAwUgGK"], "AppId": "Y2IwxF4KDGF677o0", "AuthorizationEndpoint": "GD6XvDGYFroTFS5F", "ClientId": "O0ykpRVODWNdImVy", "EmptyStrFieldList": ["nbVap90vIrDkX0Bb", "E7Avt8W23KXjLQJG", "kwPwjM80hOz5pKQU"], "EnableServerLicenseValidation": true, "Environment": "2vB3y7cmybh6M4Gx", "FederationMetadataURL": "eMCgRN1ELVhjJ4cy", "GenericOauthFlow": false, "IncludePUID": true, "IsActive": false, "Issuer": "GzgFsnxkodMlZAQn", "JWKSEndpoint": "oQ1sHtdEqMMNZr4x", "KeyID": "Xdk8nps3LahMgdR3", "LogoURL": "zyILurzuT8BgcGbh", "NetflixCertificates": {"encryptedPrivateKey": "rS6QXyjSx7bgDYTZ", "encryptedPrivateKeyName": "Evul6UnztEvOBmV0", "publicCertificate": "yUtHRlnY2BgSe81d", "publicCertificateName": "ShJjyzJctzM7jScs", "rootCertificate": "z3De92RM3tCYW3LF", "rootCertificateName": "kQEQbcPqcRgtrTku"}, "OrganizationId": "gKQIOUVKNgrvy46j", "PlatformName": "OvLDgGfD35B9Aca1", "PrivateKey": "zr8ihp1zWgeMgBVX", "RedirectUri": "Qaj0Tyv13F4F81qA", "RegisteredDomains": [{"affectedClientIDs": ["ReDrB8pneODkoCNZ", "NHAcFPCe2zgaig4G", "3yqUi7tKdcMbdhZA"], "domain": "T7FIyhXM9GncOAOl", "namespaces": ["2p316G80AcpUjgEK", "PoWeQgb5M52upE90", "PdzCQPNLzSLcYu8L"], "roleId": "NqsOerYLBoDz3Tu2", "ssoCfg": {"googleKey": {"sbKP4kjp8DAxvzbg": {}, "TZ3FH4v4oPpMe442": {}, "jARVYIkOoHqHGvW3": {}}, "groupConfigs": [{"assignNamespaces": ["76tPfxnUbd6EMthj", "C1H9WiciO5pMzCI7", "TRvbCvVmdrFPoBkd"], "group": "wM26AS8wfWhoW6ml", "roleId": "rwkayVj4yCoc9mmb"}, {"assignNamespaces": ["Vj2lK0CFFu2mWaJe", "uNDG50UEaBeUrxGr", "ZSNdSBEg9OnWSqIL"], "group": "lQ6hcT49UBRuO5qH", "roleId": "gMQn98P0zRQz37pN"}, {"assignNamespaces": ["PX7yhT13jns0kw58", "SkzgnAmgK6L9RwZV", "opuvKUHGeF7LXhN9"], "group": "q3qKsH4DPmF5g2Z1", "roleId": "E2UVHu4jC4z10k9J"}]}}, {"affectedClientIDs": ["Bk7KLxR8mW8W2RRW", "rcwPB79lK9nrXr15", "pFes1aGEgIBrE0qM"], "domain": "SlDVWIsvtHjOwXsJ", "namespaces": ["T1HpytBLKD75Py31", "0YxjilBM8VoVnxWF", "fcSAoZuycTbUcos0"], "roleId": "zG4yrZ6xh8XxZjuh", "ssoCfg": {"googleKey": {"w5g6XbTFcDE5tTDu": {}, "CqtI9J7ZUz6bl9vL": {}, "sNpnT34DmwV4zfK5": {}}, "groupConfigs": [{"assignNamespaces": ["iINNgmrEpcP9djdM", "x16BA5cSAnMZs9AH", "TU8d56dUOHVusrdk"], "group": "Im2S0wAh9wiMOHOk", "roleId": "19bmK85UyWpKC1i7"}, {"assignNamespaces": ["rOX75ppust7iICyb", "HAWz9DpLRxkNtcUa", "b4tPoQTLVlVGtHf9"], "group": "T7QY7M1OvJTEr0FX", "roleId": "7aNlsczY6IAFzDcr"}, {"assignNamespaces": ["Q2jHIrvAMJLxTTkU", "PNgdYArKAcGMxuks", "nJQBPGSKfUMP6QRt"], "group": "hmIf12GtHeD4f72z", "roleId": "dLXo3jvnnfF6W0kE"}]}}, {"affectedClientIDs": ["2NblGLLByLrNA4Tu", "hbtXOBKnk7IbxsiK", "5vmjRXqAgdYvGvHD"], "domain": "1QVzmbb1IzsRH6Gq", "namespaces": ["SO486XiYgX1g7WJi", "9afp1LW2I3vf6XsE", "XjOR8SsaYHx3q8C7"], "roleId": "ErI5knJ5KAMH8go7", "ssoCfg": {"googleKey": {"WLo3OmV4kCK46VlV": {}, "NzB0SsVxzzZlX0U3": {}, "gYv4wMDlWHv0EXqJ": {}}, "groupConfigs": [{"assignNamespaces": ["Jh8kl4aUgaLuZ2J2", "vuzMLtarzyVQn6o8", "dApevhZEY22V9CAz"], "group": "3Zp4nkYUip84IFIH", "roleId": "RjdaIeOGVQi72uqU"}, {"assignNamespaces": ["f7rHOWUo6KsrUpp7", "wpaWUK8CsdHf3Ga2", "AYHwZDHgsK8T570a"], "group": "HLJoHxERgRHzBe4i", "roleId": "SL3Scm0JYaFs3d41"}, {"assignNamespaces": ["PMBG2DYB5I22fvsF", "N8GvSGZva4Okxmtn", "z8RFjBuan7FpgGiw"], "group": "LNR5PNHROVxAIiAt", "roleId": "WwWVOVbX4j3KEWPi"}]}}], "RelyingParty": "HajlQoVUWScTvooS", "SandboxId": "3kQnPBc2fnHRcXSQ", "Secret": "nFqIvlRsdo1O2Oe7", "TeamID": "1JfvZOR6OFqNZhXN", "TokenAuthenticationType": "JQKlAI2WoNYrvTo2", "TokenClaimsMapping": {"y72zJYVAe8pleCe3": "Mz5y2jc2QAEZmSS8", "BhEt2wOeE9IKhMzz": "pu8QojgoYZ75PvSO", "G6VxmxbQB8wOEdr3": "UCsLZP7jRVkSNEwC"}, "TokenEndpoint": "MOlQaLMeQmjdIEpG", "UserInfoEndpoint": "9jN7scmxQBWIZ0V4", "UserInfoHTTPMethod": "xW52iqcP0Wr9FbhT", "googleAdminConsoleKey": "aXNYMuEwRcG5G4fo", "scopes": ["a2WJBLSzFlYdgGfL", "C2LVgQgBFsUcGwwr", "3bRXZgYQCALHt9Wu"]}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 146 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'flkvxZdXfigGAhUR' \
    --body '{"affectedClientIDs": ["mPGAACvPBI5FDGL8", "1OjuqrMeqolNV7XT", "XMqfZJyR8SvWsnMI"], "assignedNamespaces": ["RoY2guqM9iNSwrR0", "RlGvLMdd5obOK6b0", "UjaS3hcdeHIedjNr"], "domain": "aJWPnqZyl1ZB0a8S", "roleId": "PQmA3dyUie38WCDI", "ssoCfg": {"googleKey": {"B1MJYx4cEWBYFR8M": {}, "c9CZKCOyxJETvhMU": {}, "mn7GEbfXqgvFH7N0": {}}, "groupConfigs": [{"assignNamespaces": ["0KmrilUEXqp3OzPH", "mnuhof7sfojbvnp0", "cQ8ErKFgZZI7EVRv"], "group": "6NGIqWMs3B3GP7Cq", "roleId": "Pe7vtxc9vxylDaAS"}, {"assignNamespaces": ["wwkDVEcCK6JMpiWc", "6aCyXDmcaRX4cVN3", "mG0cQ6jojEoA1hsc"], "group": "t1pN3yKA0ZoDQyKP", "roleId": "rI109VEh7NgriUhb"}, {"assignNamespaces": ["YoHFBmM6hOfQyn8v", "Zep3urssVGJOoFHI", "EQibXuwpsN6TeyQ1"], "group": "KS0YQQseauo1eoP9", "roleId": "5VhbPjWNzBszZIUw"}]}}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 147 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'sg4rG18Iy090MgUT' \
    --body '{"domain": "TUUvHZmQwtaAUjwL", "ssoGroups": ["6BqCP5Tw2WlNg1fB", "4SUM0rbQLKTKAGGG", "WlC4tIaWS4fVJ41q"]}' \
    > test.out 2>&1
eval_tap $? 147 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 148 PartialUpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam partialUpdateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'HB7JmbiTydIzHcYp' \
    --body '{"affectedClientIDs": ["lVNs2q2TLw065Q5j", "8WLVmHd4E47RXazo", "UrGyV5XnjrcMzqeC"], "assignedNamespaces": ["BfjHuuuXzPdGetZY", "TWmTswyV1yaqrkUf", "YbTB0qpGkcMwJfzg"], "domain": "lZz8ufc2z0BSdOp6", "roleId": "vJfCN5fSSJYfduR0", "ssoCfg": {"googleKey": {"4pbQoIAnxpHaAEAa": {}, "FjccQdkY3TWoGiQs": {}, "PbTUrL6Xj9vb2iN9": {}}, "groupConfigs": [{"assignNamespaces": ["aMQyOmAOKI6zOESf", "R8y2bJlYOwJUgm6j", "SBsVmzZDOQLKLN4X"], "group": "KK7jgBrf5Iaw0ajh", "roleId": "elnbvOG04MNdsEBv"}, {"assignNamespaces": ["YBTuWqbe3ibSMOWp", "In9rD5sW8pj25S2U", "ebcl18zizqKWvfmd"], "group": "tWlgLfOaT4g49QIT", "roleId": "rBgNlM7HgAA0JPmB"}, {"assignNamespaces": ["dO1NdKYxC2yG8aXo", "8LMOLvfPVGyX2Ez1", "os0HD7WfFwxT6le5"], "group": "dTNj9l2Jml0EvERd", "roleId": "TORHWpDLEOO0WmkD"}]}}' \
    > test.out 2>&1
eval_tap $? 148 'PartialUpdateThirdPartyLoginPlatformDomainV3' test.out

#- 149 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'ZIInq1qM7wnEft2m' \
    > test.out 2>&1
eval_tap $? 149 'RetrieveSSOLoginPlatformCredential' test.out

#- 150 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '1OJh3Px7l3gWfGZj' \
    --body '{"acsUrl": "AZU8kIdsKw3sX4in", "apiKey": "1GhC79DiNJ362R7y", "appId": "YUAgtLPwhlXz2jdd", "federationMetadataUrl": "aI4tQYdHa0l8HZtt", "isActive": false, "redirectUri": "4TD0qUuPj08AZ7iV", "secret": "mT30cQpCcL1VmaJV", "ssoUrl": "dNeGejqoYjl5OHe2"}' \
    > test.out 2>&1
eval_tap $? 150 'AddSSOLoginPlatformCredential' test.out

#- 151 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'qW3pGvNDMgcYLZLU' \
    > test.out 2>&1
eval_tap $? 151 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 152 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'YRwKWeFuQJXXpBdz' \
    --body '{"acsUrl": "9WWqYhdt7DoWPvf0", "apiKey": "ZgpkIIJP4TSi9A7G", "appId": "E1QWJCzIOFhaMNXx", "federationMetadataUrl": "QJsdZzn8uv7xfJ7z", "isActive": true, "redirectUri": "htMEzMiJ4WKJbs3A", "secret": "CPsXqh2xYf6CGYhp", "ssoUrl": "gkAibFENs1OSanrW"}' \
    > test.out 2>&1
eval_tap $? 152 'UpdateSSOPlatformCredential' test.out

#- 153 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'oU13nVfL62fYy5Tc' \
    --rawPID 'true' \
    --rawPUID 'true' \
    --body '{"platformUserIds": ["1GMBcK6TLyc9McQ8", "3pHxrkUKDGhbKu1I", "iatxx2wmiyOaxOak"]}' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 154 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'kChu4e3FGitXrshr' \
    --platformUserId 'sVJgz5PhfTgoHXf8' \
    --pidType 'XolwXHHDC7uwho6T' \
    > test.out 2>&1
eval_tap $? 154 'AdminGetUserByPlatformUserIDV3' test.out

#- 155 AdminGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'username' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetProfileUpdateStrategyV3' test.out

#- 156 AdminUpdateProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminUpdateProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'username' \
    --body '{"config": {"minimumAllowedInterval": 2}, "type": "m0F7U3WAl49KdHdM"}' \
    > test.out 2>&1
eval_tap $? 156 'AdminUpdateProfileUpdateStrategyV3' test.out

#- 157 AdminGetRoleOverrideConfigV3
samples/cli/sample-apps Iam adminGetRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'VIEW_ONLY' \
    > test.out 2>&1
eval_tap $? 157 'AdminGetRoleOverrideConfigV3' test.out

#- 158 AdminUpdateRoleOverrideConfigV3
samples/cli/sample-apps Iam adminUpdateRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'VIEW_ONLY' \
    --body '{"additions": [{"actions": [98, 86, 63], "resource": "mFRLY7PY3rF4uSXT"}, {"actions": [23, 99, 89], "resource": "L82tNNUlT9sAaRoL"}, {"actions": [11, 77, 19], "resource": "FTWfdgMQTl3kPc0h"}], "exclusions": [{"actions": [41, 33, 26], "resource": "Dbk7LCbXbAXSge1c"}, {"actions": [91, 14, 81], "resource": "nVn8X1QoC9FLlLzT"}, {"actions": [54, 3, 82], "resource": "gCVHLVkUtQFVOZV2"}], "overrides": [{"actions": [100, 41, 57], "resource": "6s3KVp7xP7ioD2iu"}, {"actions": [74, 62, 60], "resource": "K4rKgNNLKMSFhTZi"}, {"actions": [41, 80, 97], "resource": "7eVJxgDYkfd4UnQ5"}], "replacements": [{"replacement": {"actions": [50, 83, 87], "resource": "JqDy61uXF2t9nSyp"}, "target": "ms7W7vW1Iguy9dOK"}, {"replacement": {"actions": [74, 80, 17], "resource": "iaAMw0aI6HZFOuS2"}, "target": "ynIPYQfOA0VGb4zb"}, {"replacement": {"actions": [79, 45, 85], "resource": "zwaDA1WgiamvJxmh"}, "target": "9wbINk9UOjTfxkNi"}]}' \
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
    --roleId 'NwjC1pXx2UF0Mrtj' \
    > test.out 2>&1
eval_tap $? 161 'AdminGetRoleNamespacePermissionV3' test.out

#- 162 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'qIFofUmKt9MJwQ87' \
    --after '100' \
    --before '68' \
    --limit '45' \
    > test.out 2>&1
eval_tap $? 162 'GetAdminUsersByRoleIdV3' test.out

#- 163 AdminQueryTagV3
samples/cli/sample-apps Iam adminQueryTagV3 \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '82' \
    --tagName '3siDFqma2QylWetD' \
    > test.out 2>&1
eval_tap $? 163 'AdminQueryTagV3' test.out

#- 164 AdminCreateTagV3
samples/cli/sample-apps Iam adminCreateTagV3 \
    --namespace $AB_NAMESPACE \
    --body '{"tagName": "pGXQWWBGc9HG9Ewf"}' \
    > test.out 2>&1
eval_tap $? 164 'AdminCreateTagV3' test.out

#- 165 AdminUpdateTagV3
samples/cli/sample-apps Iam adminUpdateTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'dFaEVtQe1AqhmGs3' \
    --body '{"tagName": "7OqxYs4rJxxkltx9"}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateTagV3' test.out

#- 166 AdminDeleteTagV3
samples/cli/sample-apps Iam adminDeleteTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'I8f6GzvPAsN1vROO' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteTagV3' test.out

#- 167 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'GB0KVbQ7U3NuscT1' \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserByEmailAddressV3' test.out

#- 168 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": false}, "userIds": ["ZHhA2KM4RabzvMJK", "NAZQhHBQ3zB5Uht9", "iSAWOStfLhTlWAEh"]}' \
    > test.out 2>&1
eval_tap $? 168 'AdminBulkUpdateUsersV3' test.out

#- 169 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'gHKpr8PMbAi0PMYX' \
    --body '{"bulkUserId": ["96rAqVQf6X6pmVPU", "L5khWZqWPjp15cZM", "uUWeINjvwAkMB2oY"]}' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetBulkUserBanV3' test.out

#- 170 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"findByPublisherNamespace": true, "userIds": ["okgTnUXeTIKZGaMN", "ZxERNlsrNuB1n0a5", "1NcnaJIOwrEeGbg8"]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminListUserIDByUserIDsV3' test.out

#- 171 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Pbo62QmKZaxdQlRF", "8aOr1Ac1BSvIiZQy", "XwsQotAl1BKdO4GN"]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminBulkGetUsersPlatform' test.out

#- 172 AdminCursorGetUserV3
samples/cli/sample-apps Iam adminCursorGetUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"cursor": {"cursorTime": "8y0OhZ1TcQdT9GYD", "userId": "Fk6PklDuePH7qacZ"}, "fields": ["cGt3DFMft049kKRR", "oqVogMADxdS0d0Wa", "ok3YzOYJYUvVs4Ow"], "limit": 28}' \
    > test.out 2>&1
eval_tap $? 172 'AdminCursorGetUserV3' test.out

#- 173 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["xbdOnsy6f8JDJEuC", "T5w0lo5c3AED9fBh", "uaiVFQa4509iPkaM"], "isAdmin": false, "languageTag": "1aqs8GotCDjvLi6A", "namespace": "SNGbmz7DjFAKIcbn", "roles": ["GIh6yZOlQBthK2oP", "Z6vBQTSyluhCpaE7", "M48GXfqDxXRBXcZv"]}' \
    > test.out 2>&1
eval_tap $? 173 'AdminInviteUserV3' test.out

#- 174 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '66' \
    --platformUserId 'ZLfJAHPPaSDSqsUP' \
    --platformId 'W3SUa9hZ9SpYkbFP' \
    > test.out 2>&1
eval_tap $? 174 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 175 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 175 'AdminListUsersV3' test.out

#- 176 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'kQCAIYqPcF2YSdk5' \
    --endDate 'MKvu0HiBGzpMMQ7h' \
    --includeTotal 'true' \
    --limit '27' \
    --offset '2' \
    --platformBy 'pntkX8xkvmWFomvQ' \
    --platformId 'lYjc0nUreRqVpsYf' \
    --query 'EOGVjI4juY0iwC7l' \
    --roleIds '4O9h2QSzg7o9MC02' \
    --selectedFields 'IrcS8H5hvnDdibWX' \
    --skipLoginQueue 'false' \
    --startDate 'PYjv1r8hS13JsWIU' \
    --tagIds 'C7ZULGccGgljwQUB' \
    --testAccount 'false' \
    > test.out 2>&1
eval_tap $? 176 'AdminSearchUserV3' test.out

#- 177 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["E1mYMoILoWIFki9q", "2967QETNAt3ob80D", "lbS02GzzkMT4E5hl"]}' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetBulkUserByEmailAddressV3' test.out

#- 178 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lPZBB2gzZIAm6E9P' \
    > test.out 2>&1
eval_tap $? 178 'AdminGetUserByUserIdV3' test.out

#- 179 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EfdyJvQlwkTmISSc' \
    --body '{"avatarUrl": "JDzTtYZfDX2tcYA0", "country": "0Cktno2LkudMiAJ1", "dateOfBirth": "inoTbxjwt8o5wYjN", "displayName": "EEsLaMmRh7W7Ih7P", "languageTag": "M7Mm64YGOfc9ahnf", "skipLoginQueue": true, "tags": ["XNUecNZcpdD6LwdH", "AytyRYQclB3KzhJu", "KmkE2KeurKlQIqJl"], "uniqueDisplayName": "vom1szUpaOUa7ilY", "userName": "QISrgp53k8Kjbclp"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminUpdateUserV3' test.out

#- 180 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'A4AkwBgLP3fdt38B' \
    --activeOnly 'false' \
    --after '3l8AoXSNGBxewHVt' \
    --before 'jZuHQWoQEN8HTPcu' \
    --limit '50' \
    > test.out 2>&1
eval_tap $? 180 'AdminGetUserBanV3' test.out

#- 181 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zfUYmHL9Plh446j4' \
    --body '{"ban": "IJZemimM61FcP7si", "comment": "UVdXXw80hifEdbrZ", "endDate": "QGMe6M0kVdzCsP9R", "reason": "BZkNF9W4IhOpnq57", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 181 'AdminBanUserV3' test.out

#- 182 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bKKvQ3trh3acoYCP' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserBanSummaryV3' test.out

#- 183 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'ujS726uTONLf2ua8' \
    --namespace $AB_NAMESPACE \
    --userId '4UjXcdGEFUYFKSwG' \
    --body '{"enabled": true, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 183 'AdminUpdateUserBanV3' test.out

#- 184 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iXge0xjT45UGsPt3' \
    --body '{"context": "M7MH5pjfLhzuaQo4", "emailAddress": "4JinKtPdA6Pr1QUM", "languageTag": "SmOMaZocZ5N0Zn8a", "upgradeToken": "cio9LIRS0cyylSSS"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminSendVerificationCodeV3' test.out

#- 185 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'AY8jANbKQo95arBy' \
    --body '{"Code": "QEGcReq21nBuEQTf", "ContactType": "v4z2LInnKkf0JJsg", "LanguageTag": "vTETL72TEnMtgg0X", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 185 'AdminVerifyAccountV3' test.out

#- 186 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'nl9INy8BvpRuA49l' \
    > test.out 2>&1
eval_tap $? 186 'GetUserVerificationCode' test.out

#- 187 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lvpoDUFSqOSx8FPX' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetUserDeletionStatusV3' test.out

#- 188 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'sR07gydlgYBwGgk4' \
    --body '{"deletionDate": 26, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserDeletionStatusV3' test.out

#- 189 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId '6gb0pBOpddRE8liQ' \
    > test.out 2>&1
eval_tap $? 189 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 190 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LLQxVnWz537PjjnA' \
    --body '{"code": "yDBtrcfV1QtoVdyj", "country": "JUeMBccYlrVm5mTL", "dateOfBirth": "4ByPmBtFQgP54zRY", "displayName": "M4qiCrL2tEonQLE9", "emailAddress": "NEkS3LYTTQiz54fo", "password": "WEwudIp35VnV56Yl", "uniqueDisplayName": "3K96MskMJmoVSBuj", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpgradeHeadlessAccountV3' test.out

#- 191 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'z7l3Z8ItCl65SZLr' \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserInformationV3' test.out

#- 192 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bPQthssSaqmzN1aU' \
    --after '0.8314618526539906' \
    --before '0.7106076198067363' \
    --limit '16' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserLoginHistoriesV3' test.out

#- 193 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xfkNw60Yh2agkzqQ' \
    --body '{"languageTag": "KLh5IOGGBXd09wRU", "mfaToken": "nk2C2UC3DTqJOjaz", "newPassword": "ci5Bq7f05h1ca730", "oldPassword": "EpTbwOIBKZtnmUNW"}' \
    > test.out 2>&1
eval_tap $? 193 'AdminResetPasswordV3' test.out

#- 194 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId '21xQILTncj6856Au' \
    --body '{"Permissions": [{"Action": 43, "Resource": "ZCpOb2YSNSSlW9MN", "SchedAction": 39, "SchedCron": "V65XgWhQJ5VaPpxG", "SchedRange": ["yBhKZ4eJl7wQEMPh", "UFDUmOYEKOoZDNH5", "sSi6CxvoSSdnqADM"]}, {"Action": 69, "Resource": "8LaT4sWkHGiaFDHr", "SchedAction": 86, "SchedCron": "vT1TMF76dD1YgR3e", "SchedRange": ["mpiW2zwx52fDLpgd", "0Ndb8cg8CgeFTBCu", "ejd13JjJsiDMTJgY"]}, {"Action": 70, "Resource": "cCEVQLIIwxG0TWMK", "SchedAction": 38, "SchedCron": "mdZNU0QtSLKfRnrB", "SchedRange": ["MgLP9X5geXyvOOy0", "yzNdfPjy4jjLbkmB", "47lmx21jm5WRJCWx"]}]}' \
    > test.out 2>&1
eval_tap $? 194 'AdminUpdateUserPermissionV3' test.out

#- 195 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xr4WqAWzlNAAh4QA' \
    --body '{"Permissions": [{"Action": 44, "Resource": "7K63HCP7ZNB4EzkP", "SchedAction": 48, "SchedCron": "9YNNMi8abrketw61", "SchedRange": ["4n1Qw9lMTUy1cm6u", "yWdtEwhIeuKGlyd0", "lbqyA8EHvOTbI1cJ"]}, {"Action": 47, "Resource": "dWju9ipZUCIAoIhS", "SchedAction": 38, "SchedCron": "Zi2MPA1X6PVAECqU", "SchedRange": ["7m5pLrxaLTbJSQKI", "ZFiKzDDGBPEfSKt7", "Fd810PQaZGVzU2cB"]}, {"Action": 44, "Resource": "eOjhrDvoT8mE1ZtH", "SchedAction": 83, "SchedCron": "li2KUw5GiDNlQvyv", "SchedRange": ["u5YAIa99Zbje98Es", "cESaWAtrUBzmTtcd", "EfAYQjQ0Aa6Hdd82"]}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddUserPermissionsV3' test.out

#- 196 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wuTk5gNl5CAssrPL' \
    --body '[{"Action": 67, "Resource": "2Hp7PGMB9M9SfugV"}, {"Action": 24, "Resource": "yzycL9KuxQpOsD24"}, {"Action": 50, "Resource": "O7B9HK7aw9fNUW40"}]' \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteUserPermissionBulkV3' test.out

#- 197 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '29' \
    --namespace $AB_NAMESPACE \
    --resource 'abYq6bNEv4EmbcAy' \
    --userId 'lq5aXwmwMYZUysJP' \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteUserPermissionV3' test.out

#- 198 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bOZksWcoApk2uoEe' \
    --after 'wYdmPT3vfVj78il9' \
    --before 'F4JOCmEy9HQyW51O' \
    --limit '0' \
    --platformId 'Uq7c6PSdYX3qMmU9' \
    --targetNamespace 'khHwrVlGWiFajHfx' \
    > test.out 2>&1
eval_tap $? 198 'AdminGetUserPlatformAccountsV3' test.out

#- 199 AdminListAllDistinctPlatformAccountsV3
samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wsoVkPOAJUOaacZF' \
    --status 'HEhQrQqcMkjKvTCN' \
    > test.out 2>&1
eval_tap $? 199 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 200 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'CzdaXQjRYJn780wo' \
    > test.out 2>&1
eval_tap $? 200 'AdminGetListJusticePlatformAccounts' test.out

#- 201 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'rFP3PPFS9ECrGe1I' \
    --userId 'OZ5lQf43iGfOKKPm' \
    --createIfNotFound 'false' \
    > test.out 2>&1
eval_tap $? 201 'AdminGetUserMapping' test.out

#- 202 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '1lkwwwwtn0qUy7Y9' \
    --userId 'rr3QHzNMHwaETxta' \
    > test.out 2>&1
eval_tap $? 202 'AdminCreateJusticeUser' test.out

#- 203 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'rlS3ikx2qfmaKVKY' \
    --skipConflict 'true' \
    --body '{"platformId": "KcbDtUwwgvdQjSN6", "platformUserId": "U4ZOGVHP6Pk0aQ8A"}' \
    > test.out 2>&1
eval_tap $? 203 'AdminLinkPlatformAccount' test.out

#- 204 AdminGetUserLinkHistoriesV3
samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rS843gk8dfdwRrLG' \
    --platformId '0fTYtIUSURdIkHQF' \
    > test.out 2>&1
eval_tap $? 204 'AdminGetUserLinkHistoriesV3' test.out

#- 205 AdminPlatformUnlinkV3
eval_tap 0 205 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 206 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'u1wIvtfTuukv76fD' \
    --userId 'ADnm8UCJgp9E8pSC' \
    > test.out 2>&1
eval_tap $? 206 'AdminPlatformUnlinkAllV3' test.out

#- 207 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'nzq3Z08uZvZjPU8J' \
    --userId 'PyYMucYtKuY29UkF' \
    --ticket 'ICAIAAU8X8599Xux' \
    > test.out 2>&1
eval_tap $? 207 'AdminPlatformLinkV3' test.out

#- 208 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 208 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 209 AdminDeleteUserLinkingRestrictionByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'kuKc9XxqnppEyIHw' \
    --userId 'XMhXtEEk1YpimmJq' \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 210 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Yc3kCLabrq2c04lb' \
    --userId 'K0VzJw6vijeOheZr' \
    --platformToken 'IjGIysB7fmCVOIa2' \
    > test.out 2>&1
eval_tap $? 210 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 211 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'sXmewDV247K1RndN' \
    --userId 'iueL6RCp5K1MimHz' \
    --crossNamespace 'true' \
    > test.out 2>&1
eval_tap $? 211 'AdminGetUserSinglePlatformAccount' test.out

#- 212 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RQqEM186yqhj7nOu' \
    --body '["vyLOrMwgG68oA3Ep", "tOk5wO7sOvS8m1C4", "nCB6CPS7pA5KIs7l"]' \
    > test.out 2>&1
eval_tap $? 212 'AdminDeleteUserRolesV3' test.out

#- 213 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId '92jJcG8OIuOKDIZl' \
    --body '[{"namespace": "N476Eou3djI4em1h", "roleId": "0YxpcvSpXa2ztZHf"}, {"namespace": "vjXNCVDisnJJBhYW", "roleId": "FdrPYe1IRAAP6eta"}, {"namespace": "C60cfBhA7WaI8VX0", "roleId": "7afRzvsCeGpTkCYp"}]' \
    > test.out 2>&1
eval_tap $? 213 'AdminSaveUserRoleV3' test.out

#- 214 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'sCAfRJtXc7Bvfrf5' \
    --userId 'uFJ8y5swcg2s122U' \
    > test.out 2>&1
eval_tap $? 214 'AdminAddUserRoleV3' test.out

#- 215 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId '0rQvw3Au7zYoSfmq' \
    --userId '1UhuNoqHOwwtX2eM' \
    > test.out 2>&1
eval_tap $? 215 'AdminDeleteUserRoleV3' test.out

#- 216 AdminGetUserStateByUserIdV3
samples/cli/sample-apps Iam adminGetUserStateByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'XMi9OkNK0gncgsKk' \
    > test.out 2>&1
eval_tap $? 216 'AdminGetUserStateByUserIdV3' test.out

#- 217 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'cd1QR6aEz9RZ7il8' \
    --body '{"enabled": true, "reason": "GEBoj57GLsyB9pMl"}' \
    > test.out 2>&1
eval_tap $? 217 'AdminUpdateUserStatusV3' test.out

#- 218 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'U1kcWvwaaLlfgE5I' \
    --body '{"emailAddress": "BOkxeBCVEiOeEDF3", "password": "VHR6qZvgSRK01IpA"}' \
    > test.out 2>&1
eval_tap $? 218 'AdminTrustlyUpdateUserIdentity' test.out

#- 219 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jU1VE9xur9NjYBwU' \
    > test.out 2>&1
eval_tap $? 219 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 220 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId '6KvbBJFJCvUciTQZ' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "nGiXU39xDqZWrY4z"}' \
    > test.out 2>&1
eval_tap $? 220 'AdminUpdateClientSecretV3' test.out

#- 221 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'qbpdBdhbpMniPBbR' \
    > test.out 2>&1
eval_tap $? 221 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 222 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'qNgg3Fg79s1soloA' \
    --before 'bmYVmHgSKx2fSo4n' \
    --isWildcard 'true' \
    --limit '0' \
    > test.out 2>&1
eval_tap $? 222 'AdminGetRolesV3' test.out

#- 223 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "gC4Z0LV3r6hWci0i", "namespace": "fEBvLIyyFQLGrhdu", "userId": "KQNArRbevhZ2gWN8"}, {"displayName": "dXtcHlod5JSwdE2J", "namespace": "FsoKJ66xJ931lB9o", "userId": "3xtaul9Yanr6MmUE"}, {"displayName": "WYf5S9ymNkvKrgTP", "namespace": "WFnolQaCna4BN2b2", "userId": "ejDRCMFaonTD9mlB"}], "members": [{"displayName": "ckd4uJIEu60Kfel2", "namespace": "tBXMPx8Njkxg8OTr", "userId": "XU9E3SjKnG38ontc"}, {"displayName": "FWy8BmTBcynz1mRK", "namespace": "JWE5qA7b3lhjSwrO", "userId": "7adEcCFX0lc2kx6W"}, {"displayName": "1CWbtNO0B59O32kU", "namespace": "RvIL4T1jWI0TYFQw", "userId": "2r93q21bm8M2yQGo"}], "permissions": [{"action": 76, "resource": "oHwtyYoLHdRLYZIs", "schedAction": 58, "schedCron": "fOADaq18W0wVQ5wT", "schedRange": ["J9TJVnhh8Y8qTfW4", "wJHClpEr22vvYL2k", "jJPtYCHAfNeoU8su"]}, {"action": 32, "resource": "FmdsEIRDil7djh99", "schedAction": 28, "schedCron": "Xe9Lc3g3DVmu3cCV", "schedRange": ["18AeGgfnRVOPTtjD", "xs2TNfVWXElK7xhV", "s9XHJfmEMvoa009P"]}, {"action": 37, "resource": "RWsEKIfNOS5i7wuf", "schedAction": 46, "schedCron": "LBOiMaMKdiKQbNCX", "schedRange": ["AnBuTXPOGma90eHH", "CxNlk3FgEsIEKZpa", "IZcLsjQZH22owcjE"]}], "roleName": "lwHhRnRrQOUBd1hZ"}' \
    > test.out 2>&1
eval_tap $? 223 'AdminCreateRoleV3' test.out

#- 224 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'KiUfiE7fP8gAAJFc' \
    > test.out 2>&1
eval_tap $? 224 'AdminGetRoleV3' test.out

#- 225 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'ASxJnw9KZwxB32Bv' \
    > test.out 2>&1
eval_tap $? 225 'AdminDeleteRoleV3' test.out

#- 226 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'hMMtvWwEZfSkgOBH' \
    --body '{"deletable": false, "isWildcard": false, "roleName": "dAvTieHUpnRYK373"}' \
    > test.out 2>&1
eval_tap $? 226 'AdminUpdateRoleV3' test.out

#- 227 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 't0XmcBPPsJ7SaZID' \
    > test.out 2>&1
eval_tap $? 227 'AdminGetRoleAdminStatusV3' test.out

#- 228 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'NVLejhFz5Bd3TSdZ' \
    > test.out 2>&1
eval_tap $? 228 'AdminUpdateAdminRoleStatusV3' test.out

#- 229 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'hnTTjqnVed9J5Q80' \
    > test.out 2>&1
eval_tap $? 229 'AdminRemoveRoleAdminV3' test.out

#- 230 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'y70Om288giqqfNYI' \
    --after 'Syazrby0E4jjNfHf' \
    --before 'J1sVq2aHAZiFwrYD' \
    --limit '48' \
    > test.out 2>&1
eval_tap $? 230 'AdminGetRoleManagersV3' test.out

#- 231 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'EXpTRo2AyYvzYdlm' \
    --body '{"managers": [{"displayName": "t4Ba7tulD1KlphKY", "namespace": "pqXiC8lQQhnPVFC7", "userId": "vEamI0dav1cJnvDJ"}, {"displayName": "2zaqHzwjgEbvc5by", "namespace": "OgHfMPMPomgBs2qg", "userId": "D70A3Fr9RX5Q3V7P"}, {"displayName": "5Ek3Bz0Sa7EMNj41", "namespace": "bPN4wj52ee1vTup1", "userId": "ZROpze43TNJoqZrG"}]}' \
    > test.out 2>&1
eval_tap $? 231 'AdminAddRoleManagersV3' test.out

#- 232 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'ZTHCGK16fCD8YzMS' \
    --body '{"managers": [{"displayName": "vooy88EBPUGC9aIs", "namespace": "10TSar5Cu1DhEQSp", "userId": "wftmxUPrZM5Q8J1j"}, {"displayName": "eOQkr3xQwY68ZWWi", "namespace": "j5X4B7loLoQFuTtP", "userId": "0LgfWI3VjW17xbA9"}, {"displayName": "6mzohbO6iUCmpoV7", "namespace": "ljhLvk9v3Fky4SUQ", "userId": "nSD3nci6OheWD6BQ"}]}' \
    > test.out 2>&1
eval_tap $? 232 'AdminRemoveRoleManagersV3' test.out

#- 233 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'lFhX8KrxrelmkQsO' \
    --after 'RJgubvpoqOsuw8ab' \
    --before 'iJJt9lcFw1JGwHSV' \
    --limit '1' \
    > test.out 2>&1
eval_tap $? 233 'AdminGetRoleMembersV3' test.out

#- 234 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'ZFqDivHUYaZ4nrUB' \
    --body '{"members": [{"displayName": "6JWG8XQudlTHUmcZ", "namespace": "YA2Cq33sCmWzuZHG", "userId": "v4D4bxiOjrtcub9F"}, {"displayName": "eNaqO6JuRfanxPMJ", "namespace": "osZMgKRjNqCSTbwJ", "userId": "RW41z9JcY60snNkj"}, {"displayName": "Twhzw2sUca3m6RN6", "namespace": "OX3aILOEFWSlZtFa", "userId": "jTIWsDOvy4dtVGmn"}]}' \
    > test.out 2>&1
eval_tap $? 234 'AdminAddRoleMembersV3' test.out

#- 235 AdminRemoveRoleMembersV3
eval_tap 0 235 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 236 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId '4S4ngkvkFbY52y4i' \
    --body '{"permissions": [{"action": 18, "resource": "KdaWPLKEyjVMrKZT", "schedAction": 29, "schedCron": "erPbmlBfcITXG0s1", "schedRange": ["GgsM540DAWF6AGwQ", "dJJYQOvWFUhf2KNu", "8KNNCjL0HxHxdLzy"]}, {"action": 6, "resource": "iWdtxPhn8hS6QN49", "schedAction": 55, "schedCron": "FjwcjQ1mnJtR08nT", "schedRange": ["9C0VcLsw75Wg5RYv", "HcAmUuf72MI72uec", "Or2hG32fJRidcAMQ"]}, {"action": 11, "resource": "vV1BAecelURMkxZt", "schedAction": 66, "schedCron": "uTQILePEuNaQNLYr", "schedRange": ["uof9s2N6VoH1Lzjy", "EqiS6dpfKYpKQ5me", "Z5tWBpmnYSwDJC0F"]}]}' \
    > test.out 2>&1
eval_tap $? 236 'AdminUpdateRolePermissionsV3' test.out

#- 237 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'R6FUVNBoWKWe9o1t' \
    --body '{"permissions": [{"action": 39, "resource": "Bb4WCq0jDpK49eQ7", "schedAction": 59, "schedCron": "fVeDf0Zq8mh2nMNl", "schedRange": ["58tPtzGoOp4TsuBJ", "7i3HLVnDZNtV5qO6", "Ok7RoOTPOmfcmS68"]}, {"action": 64, "resource": "vSal4HHY8xFGVVmF", "schedAction": 13, "schedCron": "wr5Lf5ZI2qLJ2Gfs", "schedRange": ["N7plWkdKdWMXUADr", "Jk0TkSdDoLNlVAQh", "CHCYPblDpLNr4iTs"]}, {"action": 35, "resource": "lCedn42NzbNEIMDS", "schedAction": 56, "schedCron": "m0S0RUwFcIvy9Bt8", "schedRange": ["5vVN9wcv5vRtDtYV", "l1wtAe5dOro8nZc4", "DOf7sG2ptFZd8ogY"]}]}' \
    > test.out 2>&1
eval_tap $? 237 'AdminAddRolePermissionsV3' test.out

#- 238 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'rJezpD0BZeLONQkM' \
    --body '["tAXd9vx1tP27TlWC", "2pdvPcwHSDgwfl6k", "3iu9RZFtOTPkYjPA"]' \
    > test.out 2>&1
eval_tap $? 238 'AdminDeleteRolePermissionsV3' test.out

#- 239 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '47' \
    --resource '68AazNFFbURJHPKN' \
    --roleId 'xYV7c55iwlD0WmOK' \
    > test.out 2>&1
eval_tap $? 239 'AdminDeleteRolePermissionV3' test.out

#- 240 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 240 'AdminGetMyUserV3' test.out

#- 241 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'jNJnfUdJAG8nv73u' \
    --extendExp 'true' \
    --redirectUri 's6HUtDzVDGLoKfGf' \
    --password 'xRKdiLMuvC3vbUW9' \
    --requestId 'CDYFsVY7a5n90m7S' \
    --userName 'ih6bBCpA6LZBaXUF' \
    > test.out 2>&1
eval_tap $? 241 'UserAuthenticationV3' test.out

#- 242 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId '2Fu3hcfYoMvcMxaA' \
    --linkingToken 'U0qVMMTiDOPTuZ26' \
    --password '5jRTXPM3NbjTtOi4' \
    --username 'VoplT2batpEljWsf' \
    > test.out 2>&1
eval_tap $? 242 'AuthenticationWithPlatformLinkV3' test.out

#- 243 AuthenticateAndLinkForwardV3
samples/cli/sample-apps Iam authenticateAndLinkForwardV3 \
    --extendExp 'true' \
    --clientId 'EDFJoUh38W41CN1A' \
    --linkingToken 'rCIWtznkRs01dKgH' \
    --password '8LyLoiRS25cOVU4j' \
    --username '1304mwNV6rl6KjOu' \
    > test.out 2>&1
eval_tap $? 243 'AuthenticateAndLinkForwardV3' test.out

#- 244 PublicGetSystemConfigV3
samples/cli/sample-apps Iam publicGetSystemConfigV3 \
    > test.out 2>&1
eval_tap $? 244 'PublicGetSystemConfigV3' test.out

#- 245 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'rahJmdj775Qn6AJ6' \
    --extendExp 'true' \
    --linkingToken '0jFGQZqRWlvmHDYX' \
    > test.out 2>&1
eval_tap $? 245 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 246 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --redirectUri 'v6gWnvq4MIlcKnFG' \
    --state 'u7hSGqDYLOnhLguq' \
    --platformId 'Yhp10NjPQEZPf1QV' \
    > test.out 2>&1
eval_tap $? 246 'RequestOneTimeLinkingCodeV3' test.out

#- 247 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode '0Dh5Nld0Ih4YvfCv' \
    > test.out 2>&1
eval_tap $? 247 'ValidateOneTimeLinkingCodeV3' test.out

#- 248 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'ZBBRWsFxNWeAEz9e' \
    --isTransient 'false' \
    --clientId 'nz5qVI8QFIU2hZXX' \
    --oneTimeLinkCode 'kkg7i9X1wETLu2DX' \
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
    --codeChallenge 'wuMUCdSo2wdar9sh' \
    --codeChallengeMethod 'S256' \
    --clientId 'OOr6kzphzAmEQbXj' \
    > test.out 2>&1
eval_tap $? 251 'RequestTokenExchangeCodeV3' test.out

#- 252 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId '3rvZaKfB7o0GepG4' \
    --userId 'Zyga67SUsquvvxtW' \
    --platformUserId '86x5OaP3yw2UuIH8' \
    > test.out 2>&1
eval_tap $? 252 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 253 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'u885UIn1kdgAaouH' \
    --includeGameNamespace 'true' \
    > test.out 2>&1
eval_tap $? 253 'RevokeUserV3' test.out

#- 254 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --blockedPlatformId 'Gbc7nMteqC00suts' \
    --codeChallenge 'aL4czsnlY4GZ8pDX' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'true' \
    --loginWebBased 'false' \
    --nonce 'aiDEoQ7eY4YZF8nj' \
    --oneTimeLinkCode 'udfbrOAag2itNPdT' \
    --redirectUri 'ZP0CjKHHfX1U5ooL' \
    --scope 'ETKdi2zQ3FXCCeG0' \
    --state 'TVos8WYWtsJ5hVeG' \
    --targetAuthPage 'OXcPmOofkbtip917' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'G4abzt9qjnPmphbl' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 254 'AuthorizeV3' test.out

#- 255 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'WcyOFEOhhgruV2Ze' \
    > test.out 2>&1
eval_tap $? 255 'TokenIntrospectionV3' test.out

#- 256 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 256 'GetJWKSV3' test.out

#- 257 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'bpuu2C7liUA6u4vJ' \
    --factor 'CYViLkZMGpwISdLs' \
    --mfaToken '1IUSyT9DC8d30XbF' \
    > test.out 2>&1
eval_tap $? 257 'SendMFAAuthenticationCode' test.out

#- 258 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'o6XlOapyyTIEpKmS' \
    --mfaToken '0gDfJZJkRCSWGq9Q' \
    > test.out 2>&1
eval_tap $? 258 'Change2faMethod' test.out

#- 259 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code '0cH8IDnMd9YJWQjT' \
    --factor 'HgiJKx3wsQUOGdoH' \
    --mfaToken 'Dz9j2PwuI72Rv8zm' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 259 'Verify2faCode' test.out

#- 260 Verify2faCodeForward
samples/cli/sample-apps Iam verify2faCodeForward \
    --defaultFactor 'keDI1h77o7EnnpCb' \
    --factors 'F4M8NbnLQtJq1WPQ' \
    --rememberDevice 'false' \
    --clientId '5fsFM5NeXIfXVh1Y' \
    --code 'Rq4Ceuf6bM3iBpCV' \
    --factor 'KkOOFYMM9REd773O' \
    --mfaToken 'T6OWmex8bhzdgWIW' \
    > test.out 2>&1
eval_tap $? 260 'Verify2faCodeForward' test.out

#- 261 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'krzfzWgQv9ufQF3e' \
    --userId 'm3UV4om2NbNAJovr' \
    > test.out 2>&1
eval_tap $? 261 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 262 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId '15XkpqriPg0ObdHn' \
    --clientId 'Th2HKTA9iRpcnxOP' \
    --redirectUri 'FYjnYs9vdezXZlRN' \
    --requestId 'Ew2jNQ0GGiu1yuRf' \
    > test.out 2>&1
eval_tap $? 262 'AuthCodeRequestV3' test.out

#- 263 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'sos8pqiXjqFmcyJX' \
    --additionalData 'unkLO7opHRLeykiN' \
    --clientId 'w6rwYKr6D1fgrMqA' \
    --createHeadless 'true' \
    --deviceId 'gzwNq7QyN5hGkwGf' \
    --macAddress 'fZpAoFmQueVOoFc6' \
    --platformToken 'PcLBwqZI3ntDCFKb' \
    --serviceLabel '0.8383710465127922' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 263 'PlatformTokenGrantV3' test.out

#- 264 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 264 'GetRevocationListV3' test.out

#- 265 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'wnNpFCvfunOi8Qmp' \
    > test.out 2>&1
eval_tap $? 265 'TokenRevocationV3' test.out

#- 266 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'pU7Qw4MKDTNZYWNU' \
    --simultaneousTicket '0gvQqkzxX2WY0LjJ' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket 'jfNz8qdOCkXPK8fV' \
    > test.out 2>&1
eval_tap $? 266 'SimultaneousLoginV3' test.out

#- 267 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'Pi0PkiZHP3nmjPRY' \
    --clientId 'tcvQD6sgtE4QJRZL' \
    --clientSecret '2Jcg4y23Mttiw2Ai' \
    --code 'Q19ZzPsb7EY75FvI' \
    --codeVerifier 'VXySmJwivIt9iVqz' \
    --extendNamespace 'pqxvdVzEbVE8WNd9' \
    --extendExp 'false' \
    --password 'd1fZypNqQz8ijLWa' \
    --redirectUri 'T0ItcnxEgYPCLign' \
    --refreshToken 'lNfkirVy4zZaxPdk' \
    --scope 'OijVbdVkj5aWPkfS' \
    --username 'OhkmKkAbddc2Jkre' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 267 'TokenGrantV3' test.out

#- 268 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'q1efyfSw5EFl0jq4' \
    > test.out 2>&1
eval_tap $? 268 'VerifyTokenV3' test.out

#- 269 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'inpHoQMkqr5mr4kH' \
    --code '9QDM3A2ue4EljXei' \
    --error 'PQi5MPb4QvfDlY2i' \
    --openidAssocHandle 'e9F9CKuwP27if2V6' \
    --openidClaimedId 'z6ibucYD2guWxKvO' \
    --openidIdentity 'tWZvZOUu8FUAMVhk' \
    --openidMode 'b01scnLHOXWKpBKI' \
    --openidNs 'hoKFgq3gXNyv9Ogc' \
    --openidOpEndpoint 'UtVuCyProo5kyiLW' \
    --openidResponseNonce 'ktsuajDXi7nbGvxR' \
    --openidReturnTo 'NYrJWJhF6jAtaKkq' \
    --openidSig 'hySSduFBXeP3Bhod' \
    --openidSigned 'JfXyfdoCdL73pSew' \
    --state 'bw8gvUQB6PxRxaDh' \
    > test.out 2>&1
eval_tap $? 269 'PlatformAuthenticationV3' test.out

#- 270 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'G7Ph72UKFyvpbyky' \
    --platformToken '0xqX3IEZS5Y714og' \
    > test.out 2>&1
eval_tap $? 270 'PlatformTokenRefreshV3' test.out

#- 271 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode 'k8Tb9IqDrc6eIA0H' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetInputValidations' test.out

#- 272 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'FA5WqZsacuGGt832' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetInputValidationByField' test.out

#- 273 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'P9HhCbrs1p3mOEmM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 273 'PublicGetCountryAgeRestrictionV3' test.out

#- 274 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey '1BXyWf8KCYETQc6W' \
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
    --clientId 'hNgT4C4s78bIZ8iF' \
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
    --requestId 'jDJrtAoRZZZqUqP8' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetAsyncStatus' test.out

#- 282 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'pJul0av27h349wxK' \
    --limit '76' \
    --offset '98' \
    --platformBy 'fhZczXqCG8reo4h7' \
    --platformId 'dLYcSgVIrXWm3rMw' \
    --query 'mE5IWdMlaN4GPiYu' \
    > test.out 2>&1
eval_tap $? 282 'PublicSearchUserV3' test.out

#- 283 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "BjU4OvxzAQlvxFwm", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "XQolhlvb0hCBfpsJ", "policyId": "QzR1ibX6GE8AzZji", "policyVersionId": "eAzU5n9OadUw2D2e"}, {"isAccepted": true, "localizedPolicyVersionId": "2bPn4XdHRL2ljflI", "policyId": "yPidSIZNuWRyWevu", "policyVersionId": "8APLi0OhKm8OqQUK"}, {"isAccepted": true, "localizedPolicyVersionId": "7kYpF2AG1N9Q9Mn6", "policyId": "PKhi6Y5EvTYvnjNd", "policyVersionId": "dolf1RAsV4kXkr5p"}], "authType": "neM2vSe4a38asCFJ", "code": "NhV4LqckWTkzXAp7", "country": "0wBVRIpSXmlPQscy", "dateOfBirth": "fGm4fY1RyLasPCz5", "displayName": "TLePaEij8cXvXZcb", "emailAddress": "SQWexmVdgIfFeSJb", "password": "pkbIOTEcLgW0zoof", "reachMinimumAge": false, "uniqueDisplayName": "Dhu3mXdWmd0gaxhI"}' \
    > test.out 2>&1
eval_tap $? 283 'PublicCreateUserV3' test.out

#- 284 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'Wm9QbQFWlQSoV45Q' \
    --query 'hdY0TR0qo2tuFTV7' \
    > test.out 2>&1
eval_tap $? 284 'CheckUserAvailability' test.out

#- 285 PublicBulkGetUsers
eval_tap 0 285 'PublicBulkGetUsers # SKIP deprecated' test.out

#- 286 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "WaSY4NCoRnktLTHD", "languageTag": "2vcZapd6Mb1oWn43"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicSendRegistrationCode' test.out

#- 287 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "epKAuSMzmGGN0m2h", "emailAddress": "LR1ljACAypK78nEP"}' \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyRegistrationCode' test.out

#- 288 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "UwR5N1fMbtmU43Gm", "languageTag": "vNJiMRe7kFfSC0LC"}' \
    > test.out 2>&1
eval_tap $? 288 'PublicForgotPasswordV3' test.out

#- 289 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "DoxWYiiodLYQzCMb", "password": "lx85CUkAnNtun8BW", "uniqueDisplayName": "ocN28J4Ct059gp3B", "username": "tDKIASHCSZJrIj3p"}' \
    > test.out 2>&1
eval_tap $? 289 'PublicValidateUserInput' test.out

#- 290 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'RUK5PSKzMeCefmvr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'GetAdminInvitationV3' test.out

#- 291 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'OMkxp9EznYzMCcR7' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "3rm7NX7YRdQqhH4F", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "bJFlNlEHdjDk0R5A", "policyId": "cHmvrJ9kp8ku1fwf", "policyVersionId": "ZO7ILRN22sAGZAxt"}, {"isAccepted": true, "localizedPolicyVersionId": "luwqiENnkTvsAQva", "policyId": "JgfPxkCZXPP8BdD5", "policyVersionId": "kzQ8LyzjTNGHziji"}, {"isAccepted": true, "localizedPolicyVersionId": "8VWyGjdVALbpwt4N", "policyId": "VBXdL9CnuBvZMW8Z", "policyVersionId": "0Omn2ccKPX7NT63W"}], "authType": "QyGeWuvaPTE6rTmq", "code": "YqpTqlmemrz7qVZV", "country": "xftqG1ZFuf2jxhJb", "dateOfBirth": "7Z52hr9NNY7Hk404", "displayName": "v6CgkmWAY8RARufN", "emailAddress": "bYrZHDRQiHm5PP45", "password": "dFQm09zpattZmumt", "reachMinimumAge": true, "uniqueDisplayName": "kDSeRrkajWuXOEn3"}' \
    > test.out 2>&1
eval_tap $? 291 'CreateUserFromInvitationV3' test.out

#- 292 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "hHFWetyO4e2B2EC4", "country": "Hfp7c81zFljLOdgE", "dateOfBirth": "yRgafKq0ws9kmeb7", "displayName": "l7sAdz1JkEilMB2V", "languageTag": "g5X9Dv7PitmHHCzl", "uniqueDisplayName": "RNhIC4r5ssQLs3tc", "userName": "OjYNHIvV6pIWBuxA"}' \
    > test.out 2>&1
eval_tap $? 292 'UpdateUserV3' test.out

#- 293 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "T1eOUygAikXiNjpX", "country": "4MpGZWD3kl99QGds", "dateOfBirth": "4LcrmhIDbxUDT9TI", "displayName": "ibWhhvWB3yICkmgt", "languageTag": "fysLjNUzHBz4sgIj", "uniqueDisplayName": "QKfu0mH6BKSKTBel", "userName": "fFKDEKcAkhZDaHCG"}' \
    > test.out 2>&1
eval_tap $? 293 'PublicPartialUpdateUserV3' test.out

#- 294 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "0337Xhmfku5AUh3r", "emailAddress": "60CEpG6FQgXTpdHj", "languageTag": "FBkpAz45UpV2hiA0", "upgradeToken": "HVtPRVw5oFtyW0PR"}' \
    > test.out 2>&1
eval_tap $? 294 'PublicSendVerificationCodeV3' test.out

#- 295 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "rR57n4RcBIwm8mSL", "contactType": "o8qM0OrckyncAzXy", "languageTag": "UrNhScvxlrwlj1c5", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 295 'PublicUserVerificationV3' test.out

#- 296 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "TtmTuIuV2ZwMhSDG", "country": "mTvK45gh1Z9zA7JH", "dateOfBirth": "lUr0bcFaNxc61K9r", "displayName": "eGeu89yLyGoFNOmv", "emailAddress": "HRnJxIEYMQQAEl09", "password": "nW9IfsbnrBu2FSw5", "uniqueDisplayName": "1TrfjabWVsn9Qr65", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 296 'PublicUpgradeHeadlessAccountV3' test.out

#- 297 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "9aNomeFXQVY2xWjy", "password": "HKQqb6zGUvGiHTTc"}' \
    > test.out 2>&1
eval_tap $? 297 'PublicVerifyHeadlessAccountV3' test.out

#- 298 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "bLh1dAJy9As71ynn", "mfaToken": "4oqmLb6MDbHBTd16", "newPassword": "4en54gXOhRB7IQkB", "oldPassword": "1r9EB9X375dWmzPF"}' \
    > test.out 2>&1
eval_tap $? 298 'PublicUpdatePasswordV3' test.out

#- 299 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'p4fEcwy9bpWFqR9J' \
    > test.out 2>&1
eval_tap $? 299 'PublicCreateJusticeUser' test.out

#- 300 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'xjue36FxNKGJWMtZ' \
    --redirectUri 'QdAiDfMFY9paV22C' \
    --ticket 'Di4dZ0GxAjRqVN5c' \
    > test.out 2>&1
eval_tap $? 300 'PublicPlatformLinkV3' test.out

#- 301 PublicPlatformUnlinkV3
eval_tap 0 301 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 302 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'NXFzl4GOuurlN1DC' \
    > test.out 2>&1
eval_tap $? 302 'PublicPlatformUnlinkAllV3' test.out

#- 303 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'LOsIs17maxuhlTcW' \
    --ticket 'duZOtv49mpDKPGTE' \
    > test.out 2>&1
eval_tap $? 303 'PublicForcePlatformLinkV3' test.out

#- 304 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'WlGeiRDcACLf6vER' \
    --clientId 'WmfsFXDeSpCubz6d' \
    --redirectUri 'TAOUiBGatJyXu5z1' \
    > test.out 2>&1
eval_tap $? 304 'PublicWebLinkPlatform' test.out

#- 305 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId '599C4nswaZzKTduH' \
    --code 'ng8dOLqOhNvNxOmc' \
    --state '9oOYkESXSb1USzSG' \
    > test.out 2>&1
eval_tap $? 305 'PublicWebLinkPlatformEstablish' test.out

#- 306 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId '5CW9aaQ0Pck2x0Ct' \
    --code 'YtGow347k2f8YDLh' \
    --state 'h9pA5srqBLyEw0BW' \
    > test.out 2>&1
eval_tap $? 306 'PublicProcessWebLinkPlatformV3' test.out

#- 307 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "RLLo7rVqsQoGsuJs", "userIds": ["Ed9pfjDl7LkAI3X4", "iRphiYwdR7hmMJKv", "1WTacrGxNbp5OgHX"]}' \
    > test.out 2>&1
eval_tap $? 307 'PublicGetUsersPlatformInfosV3' test.out

#- 308 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "sr1lGoIGBrrR7kAN", "code": "xEp2ENMgqNPwQtgQ", "emailAddress": "MXR6QmnuimbzA2qP", "languageTag": "v25nZiGQT7fwwh3t", "newPassword": "cPIcE287g0XTJaqB"}' \
    > test.out 2>&1
eval_tap $? 308 'ResetPasswordV3' test.out

#- 309 PublicGetUserByUserIdV3
eval_tap 0 309 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 310 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'MSOBnRZgqmui8SR8' \
    --activeOnly 'false' \
    --limit '99' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetUserBanHistoryV3' test.out

#- 311 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RuB7iDK9LWJQT4j9' \
    > test.out 2>&1
eval_tap $? 311 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 312 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dizTv4yHIkzfh3c1' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetUserInformationV3' test.out

#- 313 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NLdvMVAigNjT4qzB' \
    --after '0.0024627930061658088' \
    --before '0.06177390131397753' \
    --limit '71' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetUserLoginHistoriesV3' test.out

#- 314 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'g5P6nGmPgkYLMZfq' \
    --after '1amZRl3fQe57DFbx' \
    --before 'rJ8ERmGVk7Kl6EGI' \
    --limit '44' \
    --platformId 'B2M0CTikPKpTysb8' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetUserPlatformAccountsV3' test.out

#- 315 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dt6aHrIAaslXHthk' \
    > test.out 2>&1
eval_tap $? 315 'PublicListJusticePlatformAccountsV3' test.out

#- 316 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'L0DeJsBr8x3SZVeL' \
    --body '{"platformId": "kstedFvY8hyDetJe", "platformUserId": "tw3B73GaQBXuC2u9"}' \
    > test.out 2>&1
eval_tap $? 316 'PublicLinkPlatformAccount' test.out

#- 317 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'umoKIX2FWm0hmTiz' \
    --body '{"chosenNamespaces": ["C2rFYFAwqsmuV004", "jQinR3IwPLnmaBt2", "9LfOH45lwBQgCffS"], "requestId": "cfrbURpH9Xf8ua4N"}' \
    > test.out 2>&1
eval_tap $? 317 'PublicForceLinkPlatformWithProgression' test.out

#- 318 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BLWZo5vKMfeLoqmQ' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetPublisherUserV3' test.out

#- 319 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'MY2QyBgTKND3QghS' \
    --password 'LUoKJ9GZA4BVCSS7' \
    > test.out 2>&1
eval_tap $? 319 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 320 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'zJcs3Yc8YZONnTrX' \
    --before '6rnf9mTczi459Nr6' \
    --isWildcard 'true' \
    --limit '60' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetRolesV3' test.out

#- 321 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId '8UMBYUQ7cZ3wHPkU' \
    > test.out 2>&1
eval_tap $? 321 'PublicGetRoleV3' test.out

#- 322 PublicForgotPasswordWithoutNamespaceV3
samples/cli/sample-apps Iam publicForgotPasswordWithoutNamespaceV3 \
    --body '{"clientId": "yyOC1DEmlHLoccfz", "emailAddress": "0nhIoGPLSq02m7Fw", "languageTag": "7q7dSgaEhygLIaYR"}' \
    > test.out 2>&1
eval_tap $? 322 'PublicForgotPasswordWithoutNamespaceV3' test.out

#- 323 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'true' \
    > test.out 2>&1
eval_tap $? 323 'PublicGetMyUserV3' test.out

#- 324 PublicSendCodeForwardV3
samples/cli/sample-apps Iam publicSendCodeForwardV3 \
    --body '{"context": "ocfrcxrg1AGQzhdO", "emailAddress": "3mV2gekbCUwAnI0C", "languageTag": "hIiE7Bt6e3qd3BBT", "upgradeToken": "SApL8m8sKdB6Z2DT"}' \
    > test.out 2>&1
eval_tap $? 324 'PublicSendCodeForwardV3' test.out

#- 325 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'Ps0RxivsRe80dYZ9' \
    > test.out 2>&1
eval_tap $? 325 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 326 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["udmXxzfR7ynXh4nl", "EmWLmt2rSsKfmw7J", "IfaFvDeBhR48Ti0U"], "oneTimeLinkCode": "EH4j15m9FH69gG5s"}' \
    > test.out 2>&1
eval_tap $? 326 'LinkHeadlessAccountToMyAccountV3' test.out

#- 327 PublicGetMyRedirectionAfterLinkV3
samples/cli/sample-apps Iam publicGetMyRedirectionAfterLinkV3 \
    --oneTimeLinkCode 'YQiEvMGwqweRIQrh' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetMyRedirectionAfterLinkV3' test.out

#- 328 PublicGetMyProfileAllowUpdateStatusV3
samples/cli/sample-apps Iam publicGetMyProfileAllowUpdateStatusV3 \
    > test.out 2>&1
eval_tap $? 328 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 329 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "FwjzcJuoT5bcdr0d"}' \
    > test.out 2>&1
eval_tap $? 329 'PublicSendVerificationLinkV3' test.out

#- 330 PublicGetOpenidUserInfoV3
samples/cli/sample-apps Iam publicGetOpenidUserInfoV3 \
    > test.out 2>&1
eval_tap $? 330 'PublicGetOpenidUserInfoV3' test.out

#- 331 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'ujd81bcrSLxUue1u' \
    > test.out 2>&1
eval_tap $? 331 'PublicVerifyUserByLinkV3' test.out

#- 332 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'p4JpHhgzDA7wFm9u' \
    --code '43O8fM0Hy81boz8h' \
    --error 'ft7WmzpWIKntA9ds' \
    --state 'Xjd4cOKssV1RwZXe' \
    > test.out 2>&1
eval_tap $? 332 'PlatformAuthenticateSAMLV3Handler' test.out

#- 333 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 's7G5vKvN0Ln4QLvx' \
    --payload 'MHZ2Pne1wgkg9tMm' \
    > test.out 2>&1
eval_tap $? 333 'LoginSSOClient' test.out

#- 334 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId '9lkcxDzwv80LKdaw' \
    > test.out 2>&1
eval_tap $? 334 'LogoutSSOClient' test.out

#- 335 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData '5tBu5ZdAMCdtpRQz' \
    --code 'eE1Ezjfub9whmwdz' \
    > test.out 2>&1
eval_tap $? 335 'RequestTargetTokenResponseV3' test.out

#- 336 UpgradeAndAuthenticateForwardV3
samples/cli/sample-apps Iam upgradeAndAuthenticateForwardV3 \
    --clientId 'cg190rbUGcDRIEMj' \
    --upgradeSuccessToken 'Ixoa5GwXVWMXVJ6x' \
    > test.out 2>&1
eval_tap $? 336 'UpgradeAndAuthenticateForwardV3' test.out

#- 337 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '68' \
    --namespace 'gbUz8B1MRIDhcGbf' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 337 'AdminListInvitationHistoriesV4' test.out

#- 338 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ppuOaMnQ95mieLlx' \
    > test.out 2>&1
eval_tap $? 338 'AdminGetDevicesByUserV4' test.out

#- 339 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'BYhi1tWTEdg4ISJx' \
    --endDate 'iWHBjk71vCJQf10g' \
    --limit '20' \
    --offset '40' \
    --startDate 'wIQ4UumEQlZwdjP7' \
    > test.out 2>&1
eval_tap $? 339 'AdminGetBannedDevicesV4' test.out

#- 340 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'B8DSue9UlzPNhvbB' \
    > test.out 2>&1
eval_tap $? 340 'AdminGetUserDeviceBansV4' test.out

#- 341 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "x7LpkaDVq9HWjQI1", "deviceId": "zIGfHrbtH21Tpn5q", "deviceType": "DyHeOKqPTMIrAdv0", "enabled": false, "endDate": "52CNhbZMhr1f5UEY", "ext": {"rom9Kt47RnfbrTI2": {}, "Wx8C32wNuHVzIlXr": {}, "gU3O86DKiKsJ7WGA": {}}, "reason": "8Ntq5rtDm08CvutR"}' \
    > test.out 2>&1
eval_tap $? 341 'AdminBanDeviceV4' test.out

#- 342 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'tQ2SdafYccbB8MBs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'AdminGetDeviceBanV4' test.out

#- 343 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'bXoX5xuFdNWWf7c4' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 343 'AdminUpdateDeviceBanV4' test.out

#- 344 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'fHlfL1F9KkWL95Cb' \
    --startDate 'iXRVTruFJHlInnTN' \
    --deviceType 'NodZMZDvikBPqAPY' \
    > test.out 2>&1
eval_tap $? 344 'AdminGenerateReportV4' test.out

#- 345 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 345 'AdminGetDeviceTypesV4' test.out

#- 346 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'pIq2wzYUfBkqoVSg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 346 'AdminGetDeviceBansV4' test.out

#- 347 AdminDecryptDeviceV4
eval_tap 0 347 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 348 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'YkvcXcymWMduRmW0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'AdminUnbanDeviceV4' test.out

#- 349 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId '38nSGWQSb3aNusbj' \
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
    --limit '74' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 351 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 352 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "T3bdR7IhHcYpRyqs", "policyId": "swWKSAshZ34a1Lb6", "policyVersionId": "k8Cx1EXxLxp0SJ0t"}, {"isAccepted": false, "localizedPolicyVersionId": "LhRiOCNaRjYlSwfp", "policyId": "MwZ7UIhWQpNuxVWZ", "policyVersionId": "vsOvpAu3kWLhwynW"}, {"isAccepted": true, "localizedPolicyVersionId": "jv04Qma2B9CiY6fJ", "policyId": "g79e3VO5xuipC7YB", "policyVersionId": "hC8mhElq995SS1CX"}], "count": 14, "userInfo": {"country": "ocxJAqFdxvzOAbQR"}}' \
    > test.out 2>&1
eval_tap $? 352 'AdminCreateTestUsersV4' test.out

#- 353 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "mswogqJcOj7ffaMO", "policyId": "dVhh6hjt4DTr5wPB", "policyVersionId": "WPtqfvHErwHnotNC"}, {"isAccepted": false, "localizedPolicyVersionId": "1JJd09beG5wsprPA", "policyId": "1ZmZyEYOGoryWR7q", "policyVersionId": "UDd4H8HC8C2x3a3X"}, {"isAccepted": true, "localizedPolicyVersionId": "8quP5gzwyFQAWXqV", "policyId": "0rwmeQCsFxXNwTMp", "policyVersionId": "RGDd7XSMnePb7cwM"}], "authType": "EMAILPASSWD", "code": "gH26LYJaB3OtJ1w5", "country": "03i2yDpxYkevAhPX", "dateOfBirth": "gk9yIYwyGI7PY9kG", "displayName": "H6Sjv6MpjSrHbXJR", "emailAddress": "HQ7PnvKaXvNkQY3k", "password": "aXQdMevhs3PQlbxJ", "passwordMD5Sum": "QjQNXEtyVacI0Pae", "reachMinimumAge": true, "uniqueDisplayName": "7qQxgzU6VcmjqSZu", "username": "bNPLhYSLThL3wMJE"}' \
    > test.out 2>&1
eval_tap $? 353 'AdminCreateUserV4' test.out

#- 354 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": true, "userIds": ["9JokttJIeQ0C8Q0V", "P8SjfKqbbOerxhSx", "cR1QSjhF7mh3JB5r"]}' \
    > test.out 2>&1
eval_tap $? 354 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 355 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["aMGKuDNjXVyv8WGf", "bkFJZt6kANhFL7Ju", "ijMrsUjRzgBS8aP5"]}' \
    > test.out 2>&1
eval_tap $? 355 'AdminBulkCheckValidUserIDV4' test.out

#- 356 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '5W1VooQ5FNe5cX2t' \
    --body '{"avatarUrl": "3ETv221QmPDi8xAl", "country": "BLzbCZBLqhDBvgQp", "dateOfBirth": "hrzMnXhouz5t65Ve", "displayName": "ccX3UNVjaYY7VHcj", "languageTag": "CR95fdowlej9lR6x", "skipLoginQueue": false, "tags": ["6vMfiPq0SyI9Cp3Q", "TxnP96eUDWg9RY3q", "jbs2WhiRmkdkEGLX"], "uniqueDisplayName": "nuWDobxBjB4F7OKu", "userName": "dSrfVg0QHBm3xXVD"}' \
    > test.out 2>&1
eval_tap $? 356 'AdminUpdateUserV4' test.out

#- 357 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId '0WSBSjAuEwFCagF9' \
    --body '{"code": "7llXhpgg3vU8GqBx", "emailAddress": "YRmsRR6AlOwrZWwm"}' \
    > test.out 2>&1
eval_tap $? 357 'AdminUpdateUserEmailAddressV4' test.out

#- 358 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'AxtbUSSm9jweNZD9' \
    --body '{"factor": "E7SzJrDQz4ORna2n", "mfaToken": "o8HhwJY5vc5bHHRe"}' \
    > test.out 2>&1
eval_tap $? 358 'AdminDisableUserMFAV4' test.out

#- 359 AdminGetUserMFAStatusV4
samples/cli/sample-apps Iam adminGetUserMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    --userId 'r112Q9hNtiJacAbj' \
    > test.out 2>&1
eval_tap $? 359 'AdminGetUserMFAStatusV4' test.out

#- 360 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'C1lajzMbkaNTKR0l' \
    > test.out 2>&1
eval_tap $? 360 'AdminListUserRolesV4' test.out

#- 361 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'X5D2lhPFbQDXQTzE' \
    --body '{"assignedNamespaces": ["VWgBegzbOyPqFvK6", "ifsxSUE1v3TokkRB", "ib2UBOxrtqZ5qGQI"], "roleId": "2JLp26ll48R84Rux"}' \
    > test.out 2>&1
eval_tap $? 361 'AdminUpdateUserRoleV4' test.out

#- 362 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '31gQqds4IQY3Oakj' \
    --body '{"assignedNamespaces": ["pt8e92diNe5fDw1N", "HW9TylocdlUe1eJH", "67YvmvQ3feIBsYoX"], "roleId": "zOluAJcCVMi7QzGc"}' \
    > test.out 2>&1
eval_tap $? 362 'AdminAddUserRoleV4' test.out

#- 363 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'e8JsZaA4k0xC78R5' \
    --body '{"assignedNamespaces": ["FPsiR0tQw3opkZFJ", "H89yzE9GM098QrB4", "6YHitJ6uInQgcLFv"], "roleId": "VZqiAAzJo7Q0cS4s"}' \
    > test.out 2>&1
eval_tap $? 363 'AdminRemoveUserRoleV4' test.out

#- 364 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'false' \
    --limit '18' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 364 'AdminGetRolesV4' test.out

#- 365 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "OcynPSS0fJHzoFtQ"}' \
    > test.out 2>&1
eval_tap $? 365 'AdminCreateRoleV4' test.out

#- 366 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'ou4PlU7nGqBDo88v' \
    > test.out 2>&1
eval_tap $? 366 'AdminGetRoleV4' test.out

#- 367 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'D9TlRlB9xFxN3mzX' \
    > test.out 2>&1
eval_tap $? 367 'AdminDeleteRoleV4' test.out

#- 368 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId '6Ac0OJHBlD9lTwC0' \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "g4nRUdCPkXS7JSXo"}' \
    > test.out 2>&1
eval_tap $? 368 'AdminUpdateRoleV4' test.out

#- 369 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId '047kEu0V4QIgahE4' \
    --body '{"permissions": [{"action": 81, "resource": "tp5Fb9xdWNWGNC4C", "schedAction": 58, "schedCron": "NYgOw9LC548ZHh2e", "schedRange": ["7UnckUbgsJvFnY6f", "UyeBfaAGf2TBXAYB", "ndgaCvPiFwEb5uU7"]}, {"action": 47, "resource": "zh93BASURfUVLvPr", "schedAction": 67, "schedCron": "82985MCwMV1S8d4b", "schedRange": ["ShLyCdMELa5rLVti", "94pwvV5NVDWIinnn", "hB5Z8MfwK2W81A7m"]}, {"action": 40, "resource": "S8P0e7dnoEtC8GXL", "schedAction": 84, "schedCron": "xpR4bgmZm3siNHx3", "schedRange": ["XY9W3r3vwvigxPDo", "zP27GZ0Hj4wPAhni", "nP4VHEpbu4LM0DrQ"]}]}' \
    > test.out 2>&1
eval_tap $? 369 'AdminUpdateRolePermissionsV4' test.out

#- 370 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'EVXTTSAIgyutHrDb' \
    --body '{"permissions": [{"action": 98, "resource": "MQDBtJuasdlKZg3b", "schedAction": 31, "schedCron": "YeWuzpYz4P9IfEFe", "schedRange": ["a6Vdy7oj7NvPlK78", "pKdRtyrrakRln7Oy", "GwvL2hqj1YlTjUOZ"]}, {"action": 84, "resource": "5gKUl2RrG3rfal8C", "schedAction": 9, "schedCron": "Pwphuiy7acWA0wQf", "schedRange": ["eKB4QLcrMrLRJfOK", "TynxVZuurXcDmcs1", "XsUBWlaaoqDZWmi2"]}, {"action": 35, "resource": "o8AlENZJRx7m2IA9", "schedAction": 4, "schedCron": "dKJWsR9sPqrCh8fY", "schedRange": ["7OlnHz7xxghMJbRE", "zVp6YJQM22D8iuNk", "URBJrVqe9ZcsLeZt"]}]}' \
    > test.out 2>&1
eval_tap $? 370 'AdminAddRolePermissionsV4' test.out

#- 371 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'UhasleRVpl8RukeA' \
    --body '["ftL154MuhDFUJUR8", "YpN1Hd4GnTTduKU5", "mzE5TNC53EUAlEDB"]' \
    > test.out 2>&1
eval_tap $? 371 'AdminDeleteRolePermissionsV4' test.out

#- 372 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'Tp94QmgGwIJBYL98' \
    --after 'K5cTkhTZugFYlZYG' \
    --before 'qNPHctG6VG9ohkRE' \
    --limit '53' \
    > test.out 2>&1
eval_tap $? 372 'AdminListAssignedUsersV4' test.out

#- 373 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'I0gnmNIAAbUFWzrC' \
    --body '{"assignedNamespaces": ["SSTuBAXDfjH8ueG7", "gyirR6pOBUqt0W4i", "PW0WkuWkcGbCQiSc"], "namespace": "khNSrTyYBLU85ZQS", "userId": "7JaFjLWvGoWPJi5y"}' \
    > test.out 2>&1
eval_tap $? 373 'AdminAssignUserToRoleV4' test.out

#- 374 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'MdsUv6NBJNHHFg9d' \
    --body '{"namespace": "R6OB3Osu7D7mQux3", "userId": "I55SiW2uJ7RAzoZQ"}' \
    > test.out 2>&1
eval_tap $? 374 'AdminRevokeUserFromRoleV4' test.out

#- 375 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["9piZy7VTjqkizISs", "agPE63j0Zx9AxxOj", "DuRnDmnGty9Jcpg0"], "emailAddresses": ["YFUA70lgCQxx02Iy", "oWeC8ZI4oMRR9b5X", "37jRVErEeul4T90q"], "isAdmin": false, "isNewStudio": false, "languageTag": "FVAz2UanDxi5Dp6T", "namespace": "crCb7R9gI55cyrKk", "roleId": "Z4u7KphL3qMtNDyx"}' \
    > test.out 2>&1
eval_tap $? 375 'AdminInviteUserNewV4' test.out

#- 376 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "rEWOhPfz2koIn5U8", "country": "w9eF3K8581GoYTB8", "dateOfBirth": "BZyO1pSEd2dpfI2Z", "displayName": "YvSr9RB9KavLpRFf", "languageTag": "vRJXLZh7SM1R7HeK", "skipLoginQueue": true, "tags": ["ZdxIvRe4yvgLMstJ", "MqaGYuBUgK02snPr", "aRA6gKiKGaFXxwfd"], "uniqueDisplayName": "YTerzJbAeAXmIFNL", "userName": "JMfDtfyB6VbKaBCA"}' \
    > test.out 2>&1
eval_tap $? 376 'AdminUpdateMyUserV4' test.out

#- 377 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"factor": "Y6BNQGeA010BAqbv", "mfaToken": "30v5qVhTDwry30Vl"}' \
    > test.out 2>&1
eval_tap $? 377 'AdminDisableMyAuthenticatorV4' test.out

#- 378 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code '4zc2Rv9vaCWyF8BX' \
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
    --body '{"factor": "fK3nhQxz28qNPhZT", "mfaToken": "ctPYD3CWAkCMUdKw"}' \
    > test.out 2>&1
eval_tap $? 382 'AdminDisableMyBackupCodesV4' test.out

#- 383 AdminDownloadMyBackupCodesV4
eval_tap 0 383 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 384 AdminEnableMyBackupCodesV4
eval_tap 0 384 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 385 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag 'b8qClmbkNVWObuV4' \
    > test.out 2>&1
eval_tap $? 385 'AdminGetBackupCodesV4' test.out

#- 386 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag 'IJCeKIqtaHkpS3mi' \
    > test.out 2>&1
eval_tap $? 386 'AdminGenerateBackupCodesV4' test.out

#- 387 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag 'A8ANEIRWlkMfFwOZ' \
    > test.out 2>&1
eval_tap $? 387 'AdminEnableBackupCodesV4' test.out

#- 388 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code 'OTuY7xR51W4DxwFL' \
    --factor 'HhlX9VjvUUU3l4Pl' \
    > test.out 2>&1
eval_tap $? 388 'AdminChallengeMyMFAV4' test.out

#- 389 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action 'KvtygrOkQ1cwWuBL' \
    --languageTag 'Rdt1BNvMyzkgNLjM' \
    > test.out 2>&1
eval_tap $? 389 'AdminSendMyMFAEmailCodeV4' test.out

#- 390 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"factor": "vedeYMUHJ1ykcJfk", "mfaToken": "Qw0rP1OY1auy2Uyg"}' \
    > test.out 2>&1
eval_tap $? 390 'AdminDisableMyEmailV4' test.out

#- 391 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code '5olc1C0qKt35lCzl' \
    > test.out 2>&1
eval_tap $? 391 'AdminEnableMyEmailV4' test.out

#- 392 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 392 'AdminGetMyEnabledFactorsV4' test.out

#- 393 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'a3JRqdfDmkhcIoYN' \
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
    --clientId '0fKfGcVeWcWa5a4s' \
    --linkingToken 'M2783s8D1mw66PtM' \
    --password 'DysfiZqZuKpoWxAy' \
    --username 'DK3BbTyguOTnOaiK' \
    > test.out 2>&1
eval_tap $? 397 'AuthenticationWithPlatformLinkV4' test.out

#- 398 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'OIuEl4rv1MNyh9m3' \
    --extendExp 'false' \
    --linkingToken 'ETVN44rudxiHJv4k' \
    > test.out 2>&1
eval_tap $? 398 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 399 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'FkWuwCPynWUlJVAu' \
    --factor 'OdNw5Mc7i8dJulEe' \
    --mfaToken 'wXuwtfN6nnlSnUbV' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 399 'Verify2faCodeV4' test.out

#- 400 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'FNoXgByv799SUi4y' \
    --codeChallenge 'QmkxLxNCgiQaeBSb' \
    --codeChallengeMethod 'S256' \
    --additionalData 'k4TIBCjwkzJHz0oR' \
    --clientId 'bJ9s1l9acgLqmQTX' \
    --createHeadless 'false' \
    --deviceId 'ggs1moKXEFclO0Z0' \
    --macAddress 'smkbdlObHOl5IGo9' \
    --platformToken '8XitA0fkFqfuSoaV' \
    --serviceLabel '0.18875996944501938' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 400 'PlatformTokenGrantV4' test.out

#- 401 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'RNrxvRXROqRk6niE' \
    --codeChallengeMethod 'plain' \
    --simultaneousPlatform 'tYq6dUZ9GaCvnmLg' \
    --simultaneousTicket 'i7NpYdxi2dUPUOoJ' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket 'K7L3uILObHHpNnpc' \
    > test.out 2>&1
eval_tap $? 401 'SimultaneousLoginV4' test.out

#- 402 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge 'gzu1nAoHgsgB1cLp' \
    --codeChallengeMethod 'plain' \
    --additionalData 'YWViybagcNNueUj2' \
    --clientId 'fzfxKybfdKe4il8c' \
    --clientSecret 'k7rIuVLx9eNE9Fz4' \
    --code 'A1KEt6kOdAozC8wu' \
    --codeVerifier 'zBd2JeK3NO0ogSm1' \
    --extendNamespace 'eotkSxg5nMvTMmfk' \
    --extendExp 'false' \
    --loginQueueTicket 'yqetcyaZCZ0D69yG' \
    --password 'OQuEbTusJp6jY2sO' \
    --redirectUri 'ysSTNZjydTZfLyDf' \
    --refreshToken '3gVJgAAqbc6OurhY' \
    --scope 'vEMAqli7dSaxCprV' \
    --username 'Ax0WnHXMH8d8MHDu' \
    --grantType 'refresh_token' \
    > test.out 2>&1
eval_tap $? 402 'TokenGrantV4' test.out

#- 403 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'piHOk8Bw4coZsSCu' \
    --code 'iqFFkMv418sBl2ZO' \
    > test.out 2>&1
eval_tap $? 403 'RequestTargetTokenResponseV4' test.out

#- 404 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId '097n6NOql9cycuuo' \
    --rawPUID 'false' \
    --body '{"pidType": "EToU4vcahgBkCMox", "platformUserIds": ["iNMC1HZJi3MVKwIp", "clsNBmJEf6V7i4S9", "kXo7C5HcxuwR7Vf4"]}' \
    > test.out 2>&1
eval_tap $? 404 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 405 PublicGetUserByPlatformUserIDV4
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'ahiBxvBcnAuRvkq2' \
    --platformUserId 'Qh3IEVL6OgOMJJWr' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserByPlatformUserIDV4' test.out

#- 406 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "0cgZFEOgkATo8S15", "policyId": "hLLET65Z69NkVoWl", "policyVersionId": "SHLsG27w27XGIXEs"}, {"isAccepted": true, "localizedPolicyVersionId": "useszFnbynr0UmUo", "policyId": "Dzko0u9jdnsbHmad", "policyVersionId": "l4AjTNWqFEoDg65F"}, {"isAccepted": true, "localizedPolicyVersionId": "5QpkLhA6jFcDp2Ir", "policyId": "GcU4jnZBNbFmiBmK", "policyVersionId": "pKEwQVureagQn1bT"}], "authType": "EMAILPASSWD", "country": "xJXyaz2Zkj1yxmWF", "dateOfBirth": "Icq0JlO3JjE0xFm8", "displayName": "Rdzqt4bMumVmcRS5", "emailAddress": "laWD4Wj8jZVCyCi8", "password": "g9gQPYil2hs71kjN", "passwordMD5Sum": "iP5ClMdLj3RQeluG", "uniqueDisplayName": "FVTaWkseAtqQbPbZ", "username": "1PFMk0OGmnfP8SfW", "verified": false}' \
    > test.out 2>&1
eval_tap $? 406 'PublicCreateTestUserV4' test.out

#- 407 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "R2N0Du3EfpExuhK6", "policyId": "heNn2VhUP15ruEKx", "policyVersionId": "7m9Bg68UtXx8OpJv"}, {"isAccepted": false, "localizedPolicyVersionId": "fhsV5vV5m20qo4h9", "policyId": "18stLBpzQPWOjbzh", "policyVersionId": "49Y9pmtxWcGpvmx8"}, {"isAccepted": false, "localizedPolicyVersionId": "9aN9LBSdHAbyMGda", "policyId": "0362BScIHDEalfGh", "policyVersionId": "6zWX1pdJWFAqaLEr"}], "authType": "EMAILPASSWD", "code": "YWsHSxffahI30nyi", "country": "rKrfpQSJD7Mr876C", "dateOfBirth": "T1s1VUvWk13EkuhK", "displayName": "n1x2zWTicutq6eCj", "emailAddress": "1nPqepcLHQAbBl0g", "password": "cdgCkBc4iMo6BSBa", "passwordMD5Sum": "88MTmSePM7hIkomG", "reachMinimumAge": false, "uniqueDisplayName": "9yoZWTdsKfVuvcjW", "username": "0fq5sltIO7hLpXTu"}' \
    > test.out 2>&1
eval_tap $? 407 'PublicCreateUserV4' test.out

#- 408 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId '1vYIS1SYi9GMFIfF' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "M5dx9E24CIpXIxQJ", "policyId": "5hGv6UlmKYSrrvUn", "policyVersionId": "pkJtxMGxWu2BIuZ8"}, {"isAccepted": false, "localizedPolicyVersionId": "twTvXFBIppssKFsw", "policyId": "ZWzsmjEpDWme9RkX", "policyVersionId": "vbnaj8E9ZN2tkSDi"}, {"isAccepted": true, "localizedPolicyVersionId": "osdRk4gxK3iFspt5", "policyId": "JA5dkU240DGIvBfU", "policyVersionId": "Yb7fSENFsxesEj4j"}], "authType": "EMAILPASSWD", "code": "eM6alrx1y6QcELGA", "country": "QckCY68NepyOh7D6", "dateOfBirth": "IhaWyVTbKq03wEru", "displayName": "LoKyA6KJfoJctRvY", "emailAddress": "yJr4z5DdFcxE7ZNe", "password": "5XwOos1zNZwwBFOV", "passwordMD5Sum": "0ieHjR8ksufhc4fp", "reachMinimumAge": false, "uniqueDisplayName": "Rg019nQ0n55ziO2o", "username": "ME3qxUbkz58Rfaiu"}' \
    > test.out 2>&1
eval_tap $? 408 'CreateUserFromInvitationV4' test.out

#- 409 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "ZbfswP11GuX02Lfd", "country": "yZs0bhliu4hVFkPq", "dateOfBirth": "3zhIzmmJc4jb3Y3I", "displayName": "LcgpY3ADTW8NRX3K", "languageTag": "xU0FuD2Q4y4XwGcB", "uniqueDisplayName": "aNDfhvX1L8F6aHzj", "userName": "iZp1tv4r3AyV0MPV"}' \
    > test.out 2>&1
eval_tap $? 409 'PublicUpdateUserV4' test.out

#- 410 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "JYgKk70YLmo7n27J", "emailAddress": "uKFXSMvrZjES8pnj"}' \
    > test.out 2>&1
eval_tap $? 410 'PublicUpdateUserEmailAddressV4' test.out

#- 411 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "TIeOCawfAgJylQj7", "country": "6846B1eF2rJWXSN1", "dateOfBirth": "SrEX6o5bABkveVrW", "displayName": "51cDniBDK9e2OlyA", "emailAddress": "X1GTj0TZEpe5G17e", "password": "F4rrSSnqNK5g3Ldm", "reachMinimumAge": false, "uniqueDisplayName": "C3ERPcuanOYHtuHL", "username": "BwPuxF7RDmF5IQB4", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 411 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 412 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"dateOfBirth": "mx0b6NVmvclL1sGx", "displayName": "P1ze6gJw4g6gKkcn", "emailAddress": "MqpZdxWGE5XR9PpY", "password": "jcZzHImWTO3IHg5v", "uniqueDisplayName": "0Br7oSnbjnk27oW6", "username": "agDiNnMtsTU80UU9"}' \
    > test.out 2>&1
eval_tap $? 412 'PublicUpgradeHeadlessAccountV4' test.out

#- 413 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "Yb2CNQ9u5FAdjpjI", "mfaToken": "RelOC9ODIeKjEB9q"}' \
    > test.out 2>&1
eval_tap $? 413 'PublicDisableMyAuthenticatorV4' test.out

#- 414 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'aUAk25xHYJVODNba' \
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
    --body '{"factor": "Eb4tibSfDAZvNZil", "mfaToken": "je38paJi4ICVA5Vt"}' \
    > test.out 2>&1
eval_tap $? 418 'PublicDisableMyBackupCodesV4' test.out

#- 419 PublicDownloadMyBackupCodesV4
eval_tap 0 419 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 420 PublicEnableMyBackupCodesV4
eval_tap 0 420 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 421 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'cVe1Y4fXBwDVkU8o' \
    > test.out 2>&1
eval_tap $? 421 'PublicGetBackupCodesV4' test.out

#- 422 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'JG13oTOXjnWtIB17' \
    > test.out 2>&1
eval_tap $? 422 'PublicGenerateBackupCodesV4' test.out

#- 423 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'minf2FLj8cFsQ2hy' \
    > test.out 2>&1
eval_tap $? 423 'PublicEnableBackupCodesV4' test.out

#- 424 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code 'lohEv7BLGJh0H0yc' \
    --factor 'NFJ8jlzZC6UDeUHs' \
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
    --action 'NmvAXEawaM3dxW60' \
    --languageTag 'GSJV58c3zaS8UX6z' \
    > test.out 2>&1
eval_tap $? 426 'PublicSendMyMFAEmailCodeV4' test.out

#- 427 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "VX1gvsgzRSHfHyeR", "mfaToken": "AIRdTKh5t9NtS0LK"}' \
    > test.out 2>&1
eval_tap $? 427 'PublicDisableMyEmailV4' test.out

#- 428 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'RKLjUc1y5Sbc3e2u' \
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
    --factor 'Id1JAUAttvCrRzOH' \
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
    --userId '736NOuojkVkACUMw' \
    > test.out 2>&1
eval_tap $? 433 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 434 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "lPI2hpPLMAddpKqA", "emailAddress": "PG8ZE2rWUUIRBMRZ", "languageTag": "ZRteHCTJrJyqVDHi", "namespace": "dy2vBTDOOjYklbro", "namespaceDisplayName": "OlAQ2LyhJZoQJ1Cr"}' \
    > test.out 2>&1
eval_tap $? 434 'PublicInviteUserV4' test.out

#- 435 PublicUpgradeHeadlessWithCodeV4Forward
samples/cli/sample-apps Iam publicUpgradeHeadlessWithCodeV4Forward \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "VzXtpxCseJ2fB8FK", "policyId": "CCtMMIRznD361ugQ", "policyVersionId": "X6RcK3JWLVQ4K6nT"}, {"isAccepted": false, "localizedPolicyVersionId": "uP070yfRRreHxXED", "policyId": "kmBBwDpRD5cSCI3d", "policyVersionId": "5tA4Dwjjh55rbRmf"}, {"isAccepted": false, "localizedPolicyVersionId": "cO5O29qDFxERHFeC", "policyId": "EcTvkUSECY9AZ72u", "policyVersionId": "pG02SZRY0kM5LXf0"}], "code": "n3i77SF4b3kVYSQq", "country": "SYNoWsOkm614ROtL", "dateOfBirth": "8glwVSfh61VciMmm", "displayName": "KilSgNr5wCnu8ZKD", "emailAddress": "zNVGSLjSPygwfPtV", "password": "zjIFQWsDvlzpKAh5", "reachMinimumAge": false, "uniqueDisplayName": "lGBmAYa71TaG8xji", "username": "CFoEzS4S41PdXjpc", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 435 'PublicUpgradeHeadlessWithCodeV4Forward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE