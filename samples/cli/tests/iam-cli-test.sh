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
echo "1..411"

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
    --forceDelete 'false' \
    --body '{"modules": [{"docLink": "hfc6TQcZEqWpJgla", "groups": [{"group": "3a3FnD3KfnvzN8pf", "groupId": "L2LcJ42hYI681KDf", "permissions": [{"allowedActions": [40, 61, 100], "resource": "jo4qo612tUdBdmap"}, {"allowedActions": [59, 48, 14], "resource": "rkhYwLxsCg5ikLPs"}, {"allowedActions": [64, 72, 75], "resource": "OnlHHmeIHUQ3PXV8"}]}, {"group": "Bvd85p3GsSVb2QYv", "groupId": "J3S4f3PCEbsLz11q", "permissions": [{"allowedActions": [32, 51, 71], "resource": "vkcAoTdTJBgbXIzA"}, {"allowedActions": [70, 1, 22], "resource": "hY1IDPpYYZCrl6UH"}, {"allowedActions": [33, 45, 58], "resource": "eOxunzoXvFVkDdyj"}]}, {"group": "Mn4G964l3ZKnyTaa", "groupId": "Rl2vx9MjukuyDC3i", "permissions": [{"allowedActions": [17, 54, 10], "resource": "CxPfCTLIfCrlCHDL"}, {"allowedActions": [44, 40, 27], "resource": "H8T1KJOXNpKo2dmU"}, {"allowedActions": [84, 14, 87], "resource": "dTjMyoy7i5JJwZ1h"}]}], "module": "uJPIgANzw7vUcGwW", "moduleId": "fYCpH3p7jYHv0w8B"}, {"docLink": "X5lBBMvxhIfzmLmb", "groups": [{"group": "M7ATNDCTUzWSIDsE", "groupId": "OKIurYRNSlIWK0mi", "permissions": [{"allowedActions": [84, 67, 6], "resource": "0glSzqDNxXbkLxdw"}, {"allowedActions": [54, 88, 94], "resource": "IqWHhNBKN4a2afUO"}, {"allowedActions": [98, 70, 100], "resource": "Bo7Oyp9fHEdFMIwS"}]}, {"group": "St2lzQerlA9X1aBW", "groupId": "gWvwglek4nAatjmL", "permissions": [{"allowedActions": [11, 57, 99], "resource": "xVLpEdcuweWpQJ2k"}, {"allowedActions": [43, 96, 25], "resource": "S9oDbPtHKtTdkgeE"}, {"allowedActions": [37, 61, 21], "resource": "ModqQNvYeOPwsZv0"}]}, {"group": "ym0urJ30u4KGNPJM", "groupId": "q8MKKBgzL3PHfamz", "permissions": [{"allowedActions": [62, 70, 70], "resource": "orEnkXgNLiY55D4j"}, {"allowedActions": [12, 95, 46], "resource": "2SKuWINE1cEd2DvN"}, {"allowedActions": [94, 94, 58], "resource": "qKcVXTOMaCGKwQlH"}]}], "module": "2KoTsu4Jqhy3PXWw", "moduleId": "LTfOSLlHhZPRbF55"}, {"docLink": "zBUQXbuoJcB8k3es", "groups": [{"group": "XezfR3sr6GZMYnkc", "groupId": "WzaY2vmJ9kIQ77Zo", "permissions": [{"allowedActions": [20, 85, 90], "resource": "N6uEWlkXlVx2e00K"}, {"allowedActions": [40, 41, 7], "resource": "rOV1xtuae0V55OIk"}, {"allowedActions": [49, 90, 42], "resource": "tcHxMR1pIjVb4nrh"}]}, {"group": "gSqtjaoOV5p1b8Uy", "groupId": "aB6Ml755XEdLqhSL", "permissions": [{"allowedActions": [16, 30, 32], "resource": "uEj4Jl8ocLmzdoNm"}, {"allowedActions": [66, 1, 30], "resource": "TUytVtp8n4xxe1bi"}, {"allowedActions": [62, 58, 99], "resource": "I3jWqYItFNDEksxu"}]}, {"group": "TgapP4QSpdQ858S6", "groupId": "DWCquUcqHr1Vw7XS", "permissions": [{"allowedActions": [37, 24, 42], "resource": "nk3VsuAozpq6DdDH"}, {"allowedActions": [44, 25, 25], "resource": "7RessxQYVFTq4BA0"}, {"allowedActions": [53, 13, 48], "resource": "sU7EzyCk5oWBlpQU"}]}], "module": "PpF6hh7nn1zt7NRH", "moduleId": "zTRCBCdNi4dKlYua"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'true' \
    --body '{"groupId": "MdscYQseX02oExON", "moduleId": "KOnu1c76sBX0HDm2"}' \
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
    --body '[{"field": "ImAQAuc9k7hgz6Un", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["77Dryrc9oqlUM5rg", "4BpvC93fhWNck3AA", "95VujdrQ21o4NmRB"], "preferRegex": true, "regex": "cNLLC8Tzx3XtOZ92"}, "blockedWord": ["awUVKW3DXoFpUQcp", "n3p6O9nOLr2tjoFY", "xcTMyLduo5JyLr5P"], "description": [{"language": "tJebfmD01KDcQ2ZZ", "message": ["ZH498KyyVjXKtYgF", "0p8Hw3dqOk4roTRL", "LuiJaRvIbxoa8JNP"]}, {"language": "losn1PHpW4clUAbV", "message": ["2kZaD2OtugOm3sTR", "CkZp8c0deihwOdSb", "E0btyvZgOYdkmpuY"]}, {"language": "TAkQzH6e1nXSWbQY", "message": ["n9DblRkdM9m5PaG0", "B8ZGd0ALvd31wVzd", "FBGHijbVRdgUVuea"]}], "isCustomRegex": true, "letterCase": "ALnosLpDolpEOzar", "maxLength": 100, "maxRepeatingAlphaNum": 49, "maxRepeatingSpecialCharacter": 72, "minCharType": 64, "minLength": 64, "profanityFilter": "JevZdaiV1fKEsVBH", "regex": "kOxTSxldbWHa7WqO", "specialCharacterLocation": "2YOAlREXPCfz6kKX", "specialCharacters": ["R6WCQZcEeWLT7qQo", "DpHDU2TVhLh5NiOm", "eJcIL0Hv1m4HDHPC"]}}, {"field": "JBRomeVxdB7YFb2l", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["rUaZaNreA8KE8oqi", "QfnhZ2gGOVBPvI6e", "wgunaxYzOgOZkCFl"], "preferRegex": false, "regex": "1DVZjwPFxDR0g7Fa"}, "blockedWord": ["IZQgHryYadAj61g7", "08PScSfoYa6Io5vt", "OvMqX6FuO4o9obrx"], "description": [{"language": "ZKddm8LbBltm7CIE", "message": ["K0eU1vEqZKQtDnxz", "wTN8ZXv9zfaQxwMs", "QzeVZuvyi81NgVW3"]}, {"language": "iV3jXI3jFG3AJN4X", "message": ["Nmuvab0iaOUwiOvD", "JkEuzQ7HtGHx27HS", "YmBchBLnWO5Na6mW"]}, {"language": "PvuKy45D8fIqA55Q", "message": ["R4t64ABfWLXab0Qf", "qpeaQelptsMWgxii", "zsqGBwQPLrpsPg8V"]}], "isCustomRegex": false, "letterCase": "dwOAhiuzKdjF0rfa", "maxLength": 33, "maxRepeatingAlphaNum": 70, "maxRepeatingSpecialCharacter": 83, "minCharType": 33, "minLength": 54, "profanityFilter": "9ozeXuovKo80kTkB", "regex": "XoTFyUVduc3U8816", "specialCharacterLocation": "rurFdwzGTLJVeBkd", "specialCharacters": ["7beuXcC0uKuLRfwx", "tIUFVnjddI4PLiYY", "m1J1OdYeBa4J0pBY"]}}, {"field": "JMxUpjnMvecQKfBj", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["sQMlWv7W0LmbmzXf", "O84Qcx0t4DxCBowe", "oP3yZnLtsK9YmOXi"], "preferRegex": false, "regex": "2bubFMYafqfBxxSF"}, "blockedWord": ["3a819O2WaMgZGSlb", "lzT3eUTUD8XqEyV3", "yQebbeZibHtMGLZ4"], "description": [{"language": "KYdPsL8fiUG7G1tY", "message": ["K9KHPdrm6CTKFLcj", "2kEZSW4mnj8hpAiQ", "Z62oDhbNXLv72iba"]}, {"language": "sWL44yA7Ii6L46N6", "message": ["Dh2AfS4EHdohNFdf", "bat0QgpPyo9Xv5JG", "TcfdqxiF795HG0bK"]}, {"language": "Z9DVsjYyAtSYUqdK", "message": ["kLsdt6ZoGVDB300g", "yolR2MG9EfyxjVRG", "Riv6M3CYdjnTScy3"]}], "isCustomRegex": true, "letterCase": "pJ0NKYWZmU9f6c4V", "maxLength": 81, "maxRepeatingAlphaNum": 56, "maxRepeatingSpecialCharacter": 36, "minCharType": 99, "minLength": 60, "profanityFilter": "uSXRKFFST9AUfNSl", "regex": "96FczO1JhEfYdAUk", "specialCharacterLocation": "RXhV6MOlGmeBDOvS", "specialCharacters": ["PcOEecIMUp9YzOhA", "YO6agWC1aQKMNtqV", "WX7HyZ0QZcBzeUPS"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'A8cxBJV86V1v2GXP' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'vNHtULIdFSjaIK7I' \
    --before 'h1g1aoCaAbLFPcXr' \
    --endDate 'HjJGTGJIkWfmYqiL' \
    --limit '56' \
    --query '9m2LmyN3LvGyBNtO' \
    --roleId 'DRIKRp5ZgsdKtTOd' \
    --startDate 'l5gTQBNuY9vl15qq' \
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
    --body '{"ageRestriction": 72, "enable": true}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'hWXiYp9UaFXJKT8h' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 41}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'BFhT3mCDDUmfoXLI' \
    --limit '38' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "mJkY3YdjsRQJiqNN", "comment": "jBHBVrQbIfydLJGp", "endDate": "5QuYaUtxGj0FDXeV", "reason": "DEuJUA4kizwcuu0h", "skipNotif": false, "userIds": ["VPweQxnhoDKKXBVY", "8xbkLFVJIQCJhnMn", "gaAiN0KvrN1E8lML"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "mTDAITD6xjK7yXbS", "userId": "DWFJKXzP5uerMFnD"}, {"banId": "kSDscSgT7xiTg3qd", "userId": "ktDfHXk4AnfDonXH"}, {"banId": "AdFoFNs89hjugvRX", "userId": "M1Z20RjE2RXoTdvr"}]}' \
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
    --clientId '1dUgzGNxbrui2a9W' \
    --clientName 'TQATByeNS1oRwoXF' \
    --clientType 'iPrjnpC5eXhkW2Td' \
    --limit '12' \
    --offset '29' \
    --skipLoginQueue 'true' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["wb79BZGBR5OWPeBB", "i40PitsKgN7c8aOA", "2JeKEHrQSxPaUrqB"], "clientUpdateRequest": {"audiences": ["HWTEpl5BQ4f8emmu", "sz4FXZl0Xwn43D3K", "JDJAaOMDZvMVdoCa"], "baseUri": "047xuMuhGcTktB2q", "clientName": "2DwtaY1KGfbIALtK", "clientPermissions": [{"action": 3, "resource": "TkawB0llj3H7r6oA", "schedAction": 51, "schedCron": "S5RX5Pui7fH6omn9", "schedRange": ["5VML2BVL6XMmddWH", "IFLMNfcwWbCVXX1S", "w1iR0TibzDjfZqm9"]}, {"action": 78, "resource": "niilkwX2dO5k03T0", "schedAction": 76, "schedCron": "vhY6CfiXC15sOtoN", "schedRange": ["KgblaVTqkt2ZBsII", "QEvgUbtnjR5nd3AI", "L8akSTjbBV0vTpmV"]}, {"action": 50, "resource": "M6BJ0uMLQXpmE4tb", "schedAction": 31, "schedCron": "8ns5OWfccveKLsJw", "schedRange": ["p04tBEF2o8oXD2VS", "peNNu6RwJ71zGWWH", "5VCEaD4I7vsRlC5T"]}], "clientPlatform": "tACoewNIWBjH3CVS", "deletable": true, "description": "ScXSaczt794I9ECK", "modulePermissions": [{"moduleId": "olx2GxnBQtLKfulQ", "selectedGroups": [{"groupId": "Gl8Ld8B9M915cNQE", "selectedActions": [30, 15, 81]}, {"groupId": "qo6Vct72FkMVT1Yr", "selectedActions": [59, 27, 66]}, {"groupId": "Yprmf9bUpriafLSk", "selectedActions": [43, 88, 13]}]}, {"moduleId": "8X1xLJI96Dp1FRHq", "selectedGroups": [{"groupId": "6zzH7mVdtqhvNJdU", "selectedActions": [3, 2, 39]}, {"groupId": "3kJzrjbYdqJ9lyLI", "selectedActions": [72, 27, 69]}, {"groupId": "kTrM5C41yxu0hAsR", "selectedActions": [35, 91, 71]}]}, {"moduleId": "zTtaFuWnVJ4bDJNC", "selectedGroups": [{"groupId": "VV0vC2PbeG5F6GRi", "selectedActions": [89, 19, 45]}, {"groupId": "iFwqIZNANHZPVBxw", "selectedActions": [65, 0, 19]}, {"groupId": "AHKjrbr9B3wSFYKc", "selectedActions": [45, 63, 15]}]}], "namespace": "fbk2a6h6tW7n7tHE", "oauthAccessTokenExpiration": 31, "oauthAccessTokenExpirationTimeUnit": "91SWyI4F9xdBtDkF", "oauthRefreshTokenExpiration": 24, "oauthRefreshTokenExpirationTimeUnit": "dMHkjNVXJ2BTFEUq", "redirectUri": "jPPJKjF06Oyu2SUc", "scopes": ["Y7quaBkej07Dhhpq", "9eM8DWG3c6QVShgy", "NxPzEukRSoZRUKI4"], "skipLoginQueue": false, "twoFactorEnabled": true}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["7vyDDbJtvLqQnebG", "y9m3QzNQuz4anCC7", "8xa692uWIlFCibgu"], "baseUri": "IAx2gJvHDANzddHT", "clientId": "7cyfGJuBdE7epVNs", "clientName": "8DsBgcJvKfEwTb8T", "clientPermissions": [{"action": 2, "resource": "SOv4R3YEvz43SfeQ", "schedAction": 73, "schedCron": "CuI9cR1cUuzWowaX", "schedRange": ["li5oJ87Ra7PRs9tx", "hYIMVbRaQHLnfre6", "zdE5Vy5D219WurAz"]}, {"action": 54, "resource": "G5QqP3vGBmOxHWLK", "schedAction": 37, "schedCron": "709VneHC7AvIc1bi", "schedRange": ["3Yjl30BA3YmkMzvk", "leV2ExZ17XCgW0Dy", "TaAtyDx6q4kalW30"]}, {"action": 42, "resource": "p4VkKIKk8SlOrXgr", "schedAction": 95, "schedCron": "6cK7rk0EMN6ywzPD", "schedRange": ["qLjylEIxsODlur0p", "RZ4shAGaNWimfvwc", "shUqi9H1waY6UxW2"]}], "clientPlatform": "rpOAv5KXqt3WboZI", "deletable": true, "description": "dVOWQTJMD8KfgElf", "modulePermissions": [{"moduleId": "leD1rf63uWhYJTcg", "selectedGroups": [{"groupId": "SsZoPnqM6IjWZPva", "selectedActions": [30, 51, 13]}, {"groupId": "Qy94ZqceA1TzU72v", "selectedActions": [24, 8, 9]}, {"groupId": "3jCWWt6jV6xlMbra", "selectedActions": [61, 47, 15]}]}, {"moduleId": "J5c1IQcOjAQNdZLH", "selectedGroups": [{"groupId": "RwS8XOBSPdkUFiks", "selectedActions": [26, 7, 57]}, {"groupId": "c6yZ5kYVSw8o3iuX", "selectedActions": [89, 2, 6]}, {"groupId": "WIdTIzeZjCaI453K", "selectedActions": [21, 14, 50]}]}, {"moduleId": "rOGZvoqdBBgLs4PS", "selectedGroups": [{"groupId": "DkNvYZ9MxMqTgPWX", "selectedActions": [87, 42, 15]}, {"groupId": "Z9Fb0poARZajuYDQ", "selectedActions": [53, 99, 58]}, {"groupId": "GLkWNI4b4gYMekFo", "selectedActions": [82, 33, 56]}]}], "namespace": "K4exFFyHaWYuFzzU", "oauthAccessTokenExpiration": 24, "oauthAccessTokenExpirationTimeUnit": "qSQuDdj7yXIzHDER", "oauthClientType": "cZI8Q8pzRtxUd49D", "oauthRefreshTokenExpiration": 37, "oauthRefreshTokenExpirationTimeUnit": "uGpeKri0wwJ8jAA8", "parentNamespace": "GKrEDrvtlf5I7N51", "redirectUri": "avwaBdxlbrykJs53", "scopes": ["LIuPecamXWT0mbqW", "v3HRYxzCWweygkTy", "tQXHyvLAj4C68l2U"], "secret": "MENlFzabifnGlkLG", "skipLoginQueue": false, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'TdxuyIhzksdGiMcJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'Elc3JXdWUd85DzsT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'Fb9rFYCSXlgaPMVA' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["XuL4zOqTmkkwNjfy", "SgIqnxK9dT88iGvk", "Jpjmu2f8zAYBegLR"], "baseUri": "hhYCPVkyqDhV63vu", "clientName": "0lvhZJCs1JEgZIvL", "clientPermissions": [{"action": 5, "resource": "OLDF1B3BRbuSSfvr", "schedAction": 4, "schedCron": "WR3Lm1HkITzrBeoV", "schedRange": ["TnvyYMZeH3GhAsoY", "vq1vS6XdMxHM1Pvb", "iBELwEYjAJEHrhEY"]}, {"action": 30, "resource": "xZY4zoG2ONQbnJPw", "schedAction": 54, "schedCron": "ia7oTyUB2BmS6jnV", "schedRange": ["XRNBOF8CpDYJuhMn", "M9PcKCUouzXXiVWb", "zauTsRsBpTMMPoKM"]}, {"action": 0, "resource": "QOg3EwpA3fItyty2", "schedAction": 4, "schedCron": "BRIVKRI4aTfLaWFe", "schedRange": ["o5YAbM6MkToghLyW", "C2e4c9QjFqceQdqh", "EOvpryKPvmb78Ayv"]}], "clientPlatform": "gVrkT3mZ2MbMxlwH", "deletable": true, "description": "FV1JgEtaZ8SEtatb", "modulePermissions": [{"moduleId": "caV8cJFglIk5SWiw", "selectedGroups": [{"groupId": "dqzrIEV2HXXufsaL", "selectedActions": [89, 96, 27]}, {"groupId": "CYXhrKEpQom1bnZq", "selectedActions": [19, 26, 46]}, {"groupId": "R0sDbHM0Vt9CypP1", "selectedActions": [76, 89, 72]}]}, {"moduleId": "lLeFqcUf8W3LZtxc", "selectedGroups": [{"groupId": "GioyOFcaU9QjnjDl", "selectedActions": [43, 35, 44]}, {"groupId": "0rwCHR498eu5y9vq", "selectedActions": [83, 30, 61]}, {"groupId": "mfpMkrh7u4AiG24N", "selectedActions": [40, 11, 17]}]}, {"moduleId": "MCF6t0HcoEj5WhMl", "selectedGroups": [{"groupId": "76YesAapw6WECk7T", "selectedActions": [25, 3, 57]}, {"groupId": "3he8WIjMQVj1UkJc", "selectedActions": [81, 45, 53]}, {"groupId": "pOKZX0aHwbYjr9Te", "selectedActions": [33, 30, 13]}]}], "namespace": "Pte7RoEHHUds2lJ5", "oauthAccessTokenExpiration": 84, "oauthAccessTokenExpirationTimeUnit": "FmjxICAh1OFOBHTO", "oauthRefreshTokenExpiration": 58, "oauthRefreshTokenExpirationTimeUnit": "Nbz0REkrIHwv1BaI", "redirectUri": "ttc2aVCcJsrEuaUq", "scopes": ["PTnFtmhSxq7bQl5g", "OVlLlnEdlmKInu1d", "GOvQw2vwMtekrq4p"], "skipLoginQueue": false, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'wQoTvpSAPtHCVGa0' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 28, "resource": "NrWovItg32nDz795"}, {"action": 49, "resource": "jkXuVyU58teNUn7e"}, {"action": 39, "resource": "cfaOAbhdTuJIO8S2"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId '2xlB8MeGeQ5J9teg' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 48, "resource": "PLiT21KkMc1XXmBA"}, {"action": 61, "resource": "A9xldeLLKFT2fDXI"}, {"action": 16, "resource": "KcKBYKC0CrUQ3qCW"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '25' \
    --clientId 'Yeo5smigDVRXGwps' \
    --namespace $AB_NAMESPACE \
    --resource 'tZRJBbSn5GCjFrOc' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'EyjZ5zhOedNpOguU' \
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
    --body '{"blacklist": ["wOmtX8GccLpxqUFn", "4IXbf2SkcmuRxKbY", "9cXsvKSk9J9HPzmP"]}' \
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
    --limit '10' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 139 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 140 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'SG9rlW7ZbIgxQUOz' \
    > test.out 2>&1
eval_tap $? 140 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 141 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'kLgkp5Bq9yR7tfaL' \
    --body '{"ACSURL": "q0WL9VBMUVPmIwBP", "AWSCognitoRegion": "sEBKEOrXF2Uhm2oT", "AWSCognitoUserPool": "uC7ibfiltubksdif", "AllowedClients": ["LHeGYEgRmTTcBJ1X", "bcyNgyWhWQbQeRQh", "pATRQvqWrh198zfO"], "AppId": "OcxEKG5Cqc23AfyE", "AuthorizationEndpoint": "hCgDyYgLWMRLA9w0", "ClientId": "S7rYAWgymDWLebK4", "EmptyStrFieldList": ["7jU49mtxZ7To1l5b", "01MibEq4u7ewvnPa", "yk50fgdphhvK1bKM"], "EnableServerLicenseValidation": true, "Environment": "5RcYIjLzvEyvDRtE", "FederationMetadataURL": "VwsHQdoVY7FjywjD", "GenericOauthFlow": false, "IncludePUID": false, "IsActive": true, "Issuer": "DyCvd06zHglUHHTq", "JWKSEndpoint": "Wb3bgjGosxsJDmBz", "KeyID": "4xMpfT2ohrHzfqHG", "LogoURL": "GJCchDNnMjHMlTcW", "NetflixCertificates": {"encryptedPrivateKey": "HEGVNvLFpJvohajg", "encryptedPrivateKeyName": "k72idjqDZv5yOKJ7", "publicCertificate": "1mck1xxsS0WrhKwu", "publicCertificateName": "aFU7y61H4CyMcong", "rootCertificate": "lQmWOkxkV1yJaj7O", "rootCertificateName": "YoaecaE6Pnan85JV"}, "OrganizationId": "PZmt2hkuJYWjvae1", "PlatformName": "e9wcpbHrenxV12GF", "RedirectUri": "JISA4b1T5yJIraXV", "RegisteredDomains": [{"affectedClientIDs": ["7NIm29wdueEJcEr4", "5CE9O0HheHqPVteb", "lzFVvWfPK7zHInf9"], "domain": "YFw1pAJEnSWml8Px", "namespaces": ["utVtnw4Lct0KGJNH", "mAdGAMWqpr5G7TUT", "H8L8PW0lxQmrsnRx"], "roleId": "SSPk994rjonhcedD"}, {"affectedClientIDs": ["HnG6aFDyQmVXMQqc", "QyjBflrQzIXml6hG", "7Ih7U8QcQaY7YBRN"], "domain": "W04wTi14kWjNje7Q", "namespaces": ["X0eDJRwpHZ7odHRi", "8sc3qG8SlPCSiC4h", "0yEJMf6IdKRKSGTZ"], "roleId": "tWyrcpcIzCNvXXld"}, {"affectedClientIDs": ["7EMbwz3wEKVmw0yE", "GNPkkG8kEd0r1YD0", "ngvDqEjX6itotL1r"], "domain": "5Wg1k65qe9iZjuac", "namespaces": ["r26s7gpil53qcocO", "N7NvVZuTn0Z05rCg", "MmaQ0kHt1S1Qb8sH"], "roleId": "WqvARv8lfUlfAQQS"}], "Secret": "kvZWxcvDTKJEw8AH", "TeamID": "ut2F5PqZXvAoCxvf", "TokenAuthenticationType": "ZZy0dCnK1eRRtASI", "TokenClaimsMapping": {"tEMKhH6JFtNvXRZ2": "1EmEUIE9UykvpLRQ", "iLncwuLgTcGsRuac": "kA00SpFtrteA37qm", "BWxm9fKRnwSsCPBw": "DncM1GqLRZfxG0vs"}, "TokenEndpoint": "pcdl2Dc9nLG60h7K", "UserInfoEndpoint": "cQ913fuOkux7Ek2q", "UserInfoHTTPMethod": "vEOVBvJPhHt4XCAX", "scopes": ["KnrVhrruPfW16cra", "Q6hiTGhRwxWWGxke", "nLxcKwDKn7Igoo7G"]}' \
    > test.out 2>&1
eval_tap $? 141 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 142 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '8oipeKDOXyUS1vVD' \
    > test.out 2>&1
eval_tap $? 142 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 143 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Pmyedv02JJ8uu00L' \
    --body '{"ACSURL": "98aZd2qm4XgpElxz", "AWSCognitoRegion": "97vlfoN10wV9VbQH", "AWSCognitoUserPool": "P9I4aLqhqQuC4jXV", "AllowedClients": ["J1BUTfSesOEey6kE", "yRvYObmNJItbVNU3", "6wTg5iWYquqTK4wD"], "AppId": "Z6EfkSYKg3AoSsfj", "AuthorizationEndpoint": "HNxCb8etgpFEJVJK", "ClientId": "TXhvpoVh92P4ln5h", "EmptyStrFieldList": ["kX56uYzlVbx2ujMM", "JQ0EyYmUBoNzqUKO", "itoiDSEWiFK8n3aF"], "EnableServerLicenseValidation": true, "Environment": "XRDN3C1pkpKGHtM7", "FederationMetadataURL": "QKYMNEq4GARctBlD", "GenericOauthFlow": false, "IncludePUID": false, "IsActive": false, "Issuer": "tQ6aWoLAo0GPMLgC", "JWKSEndpoint": "5RVJjvQd0QbRr782", "KeyID": "88RdqJsCBVuWDcMl", "LogoURL": "QYOLHkruLaUlGQPS", "NetflixCertificates": {"encryptedPrivateKey": "NgZsUT4sJBPkoGLZ", "encryptedPrivateKeyName": "D1gKB8zryDGtY1pw", "publicCertificate": "PC17U0qtuPxyJf0U", "publicCertificateName": "Lyjh4bNYg6FmgSzP", "rootCertificate": "hYqJkg1Ak96Nfg1R", "rootCertificateName": "MMGaRNqXCRkqEJfo"}, "OrganizationId": "OK5b275MU6gnV6Sn", "PlatformName": "1llYKo14fV0AbYB1", "RedirectUri": "DC6wnR2xK80m1UtB", "RegisteredDomains": [{"affectedClientIDs": ["RnbtCOGhOag2Dn2o", "wiUXSldUwSaEPO0g", "WXSIrYREO2bBN1Xz"], "domain": "APj75rvtniocryot", "namespaces": ["OcFYyUz7Sel6Aj4p", "a37BQik3DmwFccRS", "IWHIIGjoKstoB1SZ"], "roleId": "HyAu7l2K0GEAYrIb"}, {"affectedClientIDs": ["t8n2qoAvvU2H1nc2", "SgGtKQaabvOUxWyJ", "3VuoODVciDXtWyLS"], "domain": "ZRK5vBlE3gITBv4T", "namespaces": ["rqbwbniLjZJUHVhg", "QTbFBB0Gmmhvp3q1", "i8G2YSVvIn0NFNNw"], "roleId": "Xiq0RvzxOK81izKV"}, {"affectedClientIDs": ["mkSNJLfKhnZLFFqx", "rBbeDPU6InqB5fp4", "1rsCl9YbUSog27j3"], "domain": "H0esH9O7lz7QMLoh", "namespaces": ["wTAKIr4h9mFTrlqK", "ecKk4PTSyjNxDywP", "TPYcy2U8iZcbcSSi"], "roleId": "kMi631mCGLC3sHLd"}], "Secret": "D1lRqhC0ISfD4lYy", "TeamID": "vz9ToGRACrKs1tm8", "TokenAuthenticationType": "liaAq8UATDLtojw6", "TokenClaimsMapping": {"TJjGpMimnvu0gR3V": "ErO10MV38dNwyjLB", "1XzqXt5ebl38feTI": "k6ITBpDnfilRpJpw", "Lk6z1Z10mwPHR88W": "CoBhc3rkPweB5ovL"}, "TokenEndpoint": "u1MrcMjQ2HSJdi8F", "UserInfoEndpoint": "FYejlr4upwFThQYK", "UserInfoHTTPMethod": "tZni0pojGZexsEyt", "scopes": ["ZgGG22gsJFLjOBzu", "CT0zwUKxINGvnB35", "3h66hSBWvTarAUdI"]}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 144 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'AnTWUggbdr1DmuY1' \
    --body '{"affectedClientIDs": ["w2r205kpg0bwQVs1", "neQ2mRssQH9c3VvG", "CbRL59vSqreeEF2j"], "assignedNamespaces": ["EjU2y4ZPwRRRvEXB", "eD1VvFnCIHm1Cw0W", "ZhMm0JesLpptt1BS"], "domain": "wgfFtXBnYepR1iXb", "roleId": "eM7RJZVTqQnetmli"}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 145 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'GG5le1ClT9nIyRA6' \
    --body '{"domain": "iKSN8WezeCci49MF"}' \
    > test.out 2>&1
eval_tap $? 145 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 146 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'gJUPNdHz2Wd2mpCZ' \
    > test.out 2>&1
eval_tap $? 146 'RetrieveSSOLoginPlatformCredential' test.out

#- 147 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'YM30UbKliEyGRTjh' \
    --body '{"acsUrl": "vdCtEVsxwfCTm42Q", "apiKey": "hrpB1wPH7uAnaBQQ", "appId": "eVRrTRzufGdQQJGB", "federationMetadataUrl": "WOcf2ZUw1o4K03lL", "isActive": true, "redirectUri": "FTUjX0zkbxgS6Aqo", "secret": "5g6S15WrOWTOji7d", "ssoUrl": "ggnO2GMMefoWtCJV"}' \
    > test.out 2>&1
eval_tap $? 147 'AddSSOLoginPlatformCredential' test.out

#- 148 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ULNejeTHDhSS2K0R' \
    > test.out 2>&1
eval_tap $? 148 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 149 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'mX4RtrVhZWEZ7MEG' \
    --body '{"acsUrl": "CoAO0tVr7i3hHaHE", "apiKey": "s3dkVbxoJoB1QAjZ", "appId": "cL57Se5NsDsnwfac", "federationMetadataUrl": "PhYrXcKuTO12cLey", "isActive": true, "redirectUri": "nI10PXPhRmYWfdZ8", "secret": "06TK4CQ6YAWmcVf6", "ssoUrl": "0KJZF4ALf6eYYMaa"}' \
    > test.out 2>&1
eval_tap $? 149 'UpdateSSOPlatformCredential' test.out

#- 150 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'rsEgi9lfqTIJRiXJ' \
    --rawPID 'false' \
    --rawPUID 'false' \
    --body '{"platformUserIds": ["LmWkOYeifRikWmxJ", "vXOTeeX6cvNCJsZg", "F0F1eRcXi1SIcBA4"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 151 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'o89tTTSJDYtN9S7q' \
    --platformUserId 'k9lgFmeXEabvwEa7' \
    > test.out 2>&1
eval_tap $? 151 'AdminGetUserByPlatformUserIDV3' test.out

#- 152 AdminGetRoleOverrideConfigV3
samples/cli/sample-apps Iam adminGetRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'GAME_ADMIN' \
    > test.out 2>&1
eval_tap $? 152 'AdminGetRoleOverrideConfigV3' test.out

#- 153 AdminUpdateRoleOverrideConfigV3
samples/cli/sample-apps Iam adminUpdateRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'GAME_ADMIN' \
    --body '{"additions": [{"actions": [38, 10, 21], "resource": "mR4CYBGpgFoWgqWb"}, {"actions": [19, 65, 49], "resource": "5ZsCGNphDO4I6vSo"}, {"actions": [49, 89, 87], "resource": "CqP5k1buFmFBiFaG"}], "exclusions": [{"actions": [18, 23, 49], "resource": "HhTqOPBDMUwezARk"}, {"actions": [54, 59, 78], "resource": "AaTYyEDcLOZoaxyz"}, {"actions": [68, 60, 98], "resource": "yeCoAV1gWGCX11vV"}], "overrides": [{"actions": [10, 46, 11], "resource": "jK53rUL58xIJITdh"}, {"actions": [32, 62, 61], "resource": "vqZGxVy89Ke6chxg"}, {"actions": [84, 58, 15], "resource": "b4EADItPlwInrmzf"}], "replacements": [{"replacement": {"actions": [45, 87, 54], "resource": "hQSXXsJUT9VEvHu7"}, "target": "LQG7vK2BhrXHHxyh"}, {"replacement": {"actions": [72, 26, 39], "resource": "qyZJ8mZF96HtSA1p"}, "target": "EhTpGWujrdWmEGlR"}, {"replacement": {"actions": [32, 62, 93], "resource": "kpzWXYEXTT72Cfeo"}, "target": "NPtRXRnF3DqnCtdI"}]}' \
    > test.out 2>&1
eval_tap $? 153 'AdminUpdateRoleOverrideConfigV3' test.out

#- 154 AdminGetRoleSourceV3
samples/cli/sample-apps Iam adminGetRoleSourceV3 \
    --namespace $AB_NAMESPACE \
    --identity 'USER' \
    > test.out 2>&1
eval_tap $? 154 'AdminGetRoleSourceV3' test.out

#- 155 AdminChangeRoleOverrideConfigStatusV3
samples/cli/sample-apps Iam adminChangeRoleOverrideConfigStatusV3 \
    --namespace $AB_NAMESPACE \
    --identity 'GAME_ADMIN' \
    --body '{"active": false}' \
    > test.out 2>&1
eval_tap $? 155 'AdminChangeRoleOverrideConfigStatusV3' test.out

#- 156 AdminGetRoleNamespacePermissionV3
samples/cli/sample-apps Iam adminGetRoleNamespacePermissionV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'we7bEobVGMZnRDkD' \
    > test.out 2>&1
eval_tap $? 156 'AdminGetRoleNamespacePermissionV3' test.out

#- 157 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'Pn6Ulbs1T4kH6tfk' \
    --after '24' \
    --before '58' \
    --limit '27' \
    > test.out 2>&1
eval_tap $? 157 'GetAdminUsersByRoleIdV3' test.out

#- 158 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'ggCCqFelBKY5Fy6A' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserByEmailAddressV3' test.out

#- 159 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": false}, "userIds": ["uCCxv1AHukonmcIH", "HND0Mt3PY8x5LsWZ", "cLYsZNQoQKKfYGv1"]}' \
    > test.out 2>&1
eval_tap $? 159 'AdminBulkUpdateUsersV3' test.out

#- 160 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'c7WYrAL6JSqO3raU' \
    --body '{"bulkUserId": ["K8tkmieRo3VRa4ig", "mUObhj2hGiKZS9uE", "ceSElrHj6ihC6qM4"]}' \
    > test.out 2>&1
eval_tap $? 160 'AdminGetBulkUserBanV3' test.out

#- 161 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["jbeM6AX6LUpkmZtt", "dBekjpitbN8z8Vgn", "pYoiz5kRlDIH5KyT"]}' \
    > test.out 2>&1
eval_tap $? 161 'AdminListUserIDByUserIDsV3' test.out

#- 162 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["2xgEmm7s0vXRlztp", "xI2VfgbOdclHhWLD", "Isk5UV4EnQZva5a4"]}' \
    > test.out 2>&1
eval_tap $? 162 'AdminBulkGetUsersPlatform' test.out

#- 163 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["CMavKrzWc6qZBXf0", "B9hUR3MUTchXOktb", "SjwSNf4Byy1f3fUG"], "isAdmin": false, "languageTag": "urgxmNKV02tXLkL1", "namespace": "GKfhgUc5FniSoPbT", "roles": ["JVqmSfTC072DfbfW", "Y0k0oteITdTa8Mh3", "VRsXbJkXkxoqxfKV"]}' \
    > test.out 2>&1
eval_tap $? 163 'AdminInviteUserV3' test.out

#- 164 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '0' \
    --platformUserId 'hcNdeVnX2adbkufq' \
    --platformId 'maS9zQCVFE4ceWLy' \
    > test.out 2>&1
eval_tap $? 164 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 165 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 165 'AdminListUsersV3' test.out

#- 166 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'A1wBdDqeqoRcLH1l' \
    --endDate 'uGhlXH4j8QY9Ar44' \
    --includeTotal 'true' \
    --limit '69' \
    --offset '14' \
    --platformBy 'GmLN6ajpBcYPJ3aM' \
    --platformId 'O20BopkHmnMplSrN' \
    --query 'ylHpr24uONr7Oopa' \
    --roleIds 'nWxDRweVBX4Yt1CZ' \
    --skipLoginQueue 'false' \
    --startDate 'ZGSlk7rzXDeo2jCo' \
    --testAccount 'true' \
    > test.out 2>&1
eval_tap $? 166 'AdminSearchUserV3' test.out

#- 167 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["RchJIJUkEVP3HPn6", "EUUOkCQfoi2chYRr", "HCCC4My1KmTtTpJO"]}' \
    > test.out 2>&1
eval_tap $? 167 'AdminGetBulkUserByEmailAddressV3' test.out

#- 168 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iKpAxoMNLiSVBh0H' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserByUserIdV3' test.out

#- 169 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NxEXfMuUZNt1xRce' \
    --body '{"avatarUrl": "Eyq7xGLL8ED7ce0E", "country": "KKhnsjLqDcvkGwNL", "dateOfBirth": "7BbwlGDSuHsDRVSx", "displayName": "G1umbiANeMPs2fyM", "languageTag": "lRUnb4HYMUT2LYGk", "skipLoginQueue": false, "uniqueDisplayName": "n2wc4Cdtr8dSZkF2", "userName": "ndwYxC6ZhWH6yIUb"}' \
    > test.out 2>&1
eval_tap $? 169 'AdminUpdateUserV3' test.out

#- 170 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eW6c9zHIEiVhFhwU' \
    --activeOnly 'false' \
    --after 'KZlz95ICEufDr9iR' \
    --before 'R68YafNzcHCDZVxR' \
    --limit '68' \
    > test.out 2>&1
eval_tap $? 170 'AdminGetUserBanV3' test.out

#- 171 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '78AEypchM5f0HxGU' \
    --body '{"ban": "sUhvrgzMJLjli7oV", "comment": "fMeelQpXsoW0e1qZ", "endDate": "Ttq2oHKxThi2nhRJ", "reason": "9o7pR5aIBJohQSQb", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 171 'AdminBanUserV3' test.out

#- 172 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vrgKYPNkJ3HYgq2c' \
    > test.out 2>&1
eval_tap $? 172 'AdminGetUserBanSummaryV3' test.out

#- 173 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'BupAVJz3KwvYcn76' \
    --namespace $AB_NAMESPACE \
    --userId 'nfxAwLQhDpRrCbdr' \
    --body '{"enabled": false, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 173 'AdminUpdateUserBanV3' test.out

#- 174 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mhYPKZ8LlYt2SrXb' \
    --body '{"context": "DD1XInz5bTDFAXyi", "emailAddress": "NfWL1MtDQ7E4yEJM", "languageTag": "PISY86dJm3rgLz16"}' \
    > test.out 2>&1
eval_tap $? 174 'AdminSendVerificationCodeV3' test.out

#- 175 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'qx1kTVQdsHlyIUnc' \
    --body '{"Code": "EkIqPICwoVDDWzrd", "ContactType": "h1NxpX4XjjKf6ZdQ", "LanguageTag": "II9mk7EmQkhldOTx", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 175 'AdminVerifyAccountV3' test.out

#- 176 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'mXF9umzvfjQhROQs' \
    > test.out 2>&1
eval_tap $? 176 'GetUserVerificationCode' test.out

#- 177 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'sk6YswnDXzvz113h' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetUserDeletionStatusV3' test.out

#- 178 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QFyTw1WkKRuFVpGE' \
    --body '{"deletionDate": 63, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 178 'AdminUpdateUserDeletionStatusV3' test.out

#- 179 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'sD5WRkly8zosDlVR' \
    > test.out 2>&1
eval_tap $? 179 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 180 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'z8UqIVx5ggu63pn9' \
    --body '{"code": "TkzvSv4K55KoW9rr", "country": "aerSpH4myw2ogmsS", "dateOfBirth": "4vOWh71rnFWWrYic", "displayName": "PMvmM9Klg4bGCIst", "emailAddress": "chZE6KX1a8eFz2Z8", "password": "FENKLZ3ZYPVvUhtO", "uniqueDisplayName": "bFreeTmwOkqu0mSP", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 180 'AdminUpgradeHeadlessAccountV3' test.out

#- 181 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'oLvew0qC7juAk2z2' \
    > test.out 2>&1
eval_tap $? 181 'AdminDeleteUserInformationV3' test.out

#- 182 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LjAg3QYWIbMQfUvJ' \
    --after '0.05098634603974217' \
    --before '0.7759252117627848' \
    --limit '13' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserLoginHistoriesV3' test.out

#- 183 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'SNjJLDOs9BqWmnMQ' \
    --body '{"languageTag": "eqBaZMT40Rx8SQkP", "mfaToken": "QkRSgGeXfaqjOde9", "newPassword": "6jsSK4HdNy3YQtaW", "oldPassword": "QOHD3CGYdlPi84Eh"}' \
    > test.out 2>&1
eval_tap $? 183 'AdminResetPasswordV3' test.out

#- 184 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'N1W2ecVxbc7eMTE3' \
    --body '{"Permissions": [{"Action": 31, "Resource": "vNa3f7IcsjJEdxDB", "SchedAction": 21, "SchedCron": "unG8dyb0X8haW4rL", "SchedRange": ["TeQcoQVz64C7WKAP", "OT43oY1MccoqcFng", "MmKbXI6NPohF1sLu"]}, {"Action": 22, "Resource": "MpuO8TdtviRSX32K", "SchedAction": 79, "SchedCron": "4nQgsElwYgc2jZkM", "SchedRange": ["UqpPXDJAi3J9Zr2n", "tIQvY7KKFC5IieJr", "YathW8RYJKR5VjSm"]}, {"Action": 74, "Resource": "SqSsjRhGjP07M2Qc", "SchedAction": 25, "SchedCron": "O6K4VTe6Gcyttmkz", "SchedRange": ["5dRUcaWVVHnMPtG9", "GYEnOdSwn30HqrtP", "shOf90nkDa73moxX"]}]}' \
    > test.out 2>&1
eval_tap $? 184 'AdminUpdateUserPermissionV3' test.out

#- 185 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Dn172P38o43Itw8g' \
    --body '{"Permissions": [{"Action": 1, "Resource": "WRCQvo4iQGXD7czM", "SchedAction": 43, "SchedCron": "BStlyZkxXyFFLWkR", "SchedRange": ["xjWKOcGhk11DSTVt", "YpyqK59rN0k3jEVI", "ZlHNhJfjhE1iCeCX"]}, {"Action": 7, "Resource": "leIRzaiqC2mRjDMS", "SchedAction": 85, "SchedCron": "Bl0t5q2HJKPg6AYy", "SchedRange": ["kWOflMdkOIGznuR2", "EBcqUBVeTWelKzgT", "vVOCoRVs1IQUpbPF"]}, {"Action": 18, "Resource": "GL27tkEfJexjqpDg", "SchedAction": 60, "SchedCron": "xAz8kOMdOCU1WwLt", "SchedRange": ["2LiQrpeNj8XRS4vC", "gJ8uHUuu2Wa2nfYw", "fbfhw3ITnT5kcxIA"]}]}' \
    > test.out 2>&1
eval_tap $? 185 'AdminAddUserPermissionsV3' test.out

#- 186 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ikC1eI0uCpMUsOmR' \
    --body '[{"Action": 46, "Resource": "Cy9M9yLc1l04Qt9Z"}, {"Action": 0, "Resource": "F16tbr7gaRlNy7K5"}, {"Action": 31, "Resource": "m7MCgDHUJWgvByAZ"}]' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteUserPermissionBulkV3' test.out

#- 187 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '14' \
    --namespace $AB_NAMESPACE \
    --resource 'p9nyMhf3HPMN3aZx' \
    --userId 'XIBbKoMSAVguuRWX' \
    > test.out 2>&1
eval_tap $? 187 'AdminDeleteUserPermissionV3' test.out

#- 188 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eWo99vKpARPDZ0V7' \
    --after 'G7aTKeysDf6OQhjV' \
    --before 'qz50nZcaEsJpvPBT' \
    --limit '8' \
    --platformId 'tPeqmzecLd9iBwjQ' \
    --targetNamespace 'fSmS8pUPVhATR8qd' \
    > test.out 2>&1
eval_tap $? 188 'AdminGetUserPlatformAccountsV3' test.out

#- 189 AdminListAllDistinctPlatformAccountsV3
samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Us9eflsOSh4GxrUT' \
    --status 'w7W4704LZHFVMBmD' \
    > test.out 2>&1
eval_tap $? 189 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 190 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'cpDzsPUI8DnUsM2I' \
    > test.out 2>&1
eval_tap $? 190 'AdminGetListJusticePlatformAccounts' test.out

#- 191 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'qo4WriVnGKtkGNKt' \
    --userId 'aWyHfUeZD4LOIusJ' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetUserMapping' test.out

#- 192 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'KBwhPWnP1kh7FCBf' \
    --userId 'oDn10f4DBaUF1zUd' \
    > test.out 2>&1
eval_tap $? 192 'AdminCreateJusticeUser' test.out

#- 193 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'YFPg63Sl3xDVxfyg' \
    --skipConflict 'false' \
    --body '{"platformId": "2q16hnZnVYcInRpZ", "platformUserId": "NuiEUuoCzMv4PW8Q"}' \
    > test.out 2>&1
eval_tap $? 193 'AdminLinkPlatformAccount' test.out

#- 194 AdminGetUserLinkHistoriesV3
samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'JWx0swQDFRZV9xad' \
    --platformId '7DyVTFUC27jdMAlY' \
    > test.out 2>&1
eval_tap $? 194 'AdminGetUserLinkHistoriesV3' test.out

#- 195 AdminPlatformUnlinkV3
eval_tap 0 195 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 196 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'EkDXF7mGjbv1aUqU' \
    --userId 'U25FOoacklI2CJWS' \
    > test.out 2>&1
eval_tap $? 196 'AdminPlatformUnlinkAllV3' test.out

#- 197 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'yReux0JwIuFcnhfZ' \
    --userId 'LBI1btQLOYX3cas2' \
    --ticket 'f9xv5yC1NJ3Cziij' \
    > test.out 2>&1
eval_tap $? 197 'AdminPlatformLinkV3' test.out

#- 198 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 198 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 199 AdminDeleteUserLinkingRestrictionByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'lFHjY9QkBKxCY4cK' \
    --userId 'ZgbuMpdhccGOf1ec' \
    > test.out 2>&1
eval_tap $? 199 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 200 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'nzqXhW3dYNvqo1Zv' \
    --userId 'N8tFJ29B7R9DKvHY' \
    --platformToken 'WedOmZ9JzIrudPJM' \
    > test.out 2>&1
eval_tap $? 200 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 201 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'u3gkpB4Xugsn3ppN' \
    --userId 'G4l5q6C5jgy0xtPo' \
    --crossNamespace 'false' \
    > test.out 2>&1
eval_tap $? 201 'AdminGetUserSinglePlatformAccount' test.out

#- 202 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId '1RpBcBrCchGCxiML' \
    --body '["SLi1GTxpGMWxfy0O", "Q2JalBXML0E6pHR9", "y6sAs79tyjUfNsdJ"]' \
    > test.out 2>&1
eval_tap $? 202 'AdminDeleteUserRolesV3' test.out

#- 203 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'nKVk0DEzLdmZpD1K' \
    --body '[{"namespace": "dOCB0ukLc2GztKkq", "roleId": "RBDgBZZsPoWGGR6K"}, {"namespace": "wgCwWbxHF8mG4AHM", "roleId": "ROGI8UcL931IsAIC"}, {"namespace": "VyXT3RPc6j4QZyKD", "roleId": "i1nU7AOrbBJzdVS2"}]' \
    > test.out 2>&1
eval_tap $? 203 'AdminSaveUserRoleV3' test.out

#- 204 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'e5fGYIqmyDrQ8UwK' \
    --userId 'kCkSEgynTK6QU4pZ' \
    > test.out 2>&1
eval_tap $? 204 'AdminAddUserRoleV3' test.out

#- 205 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'NBLSz10vlR05Xzqu' \
    --userId 'XLbboLBcIY70etG0' \
    > test.out 2>&1
eval_tap $? 205 'AdminDeleteUserRoleV3' test.out

#- 206 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vaSFDPRezV5rIut9' \
    --body '{"enabled": true, "reason": "HO5H6bKpoCFwDsrE"}' \
    > test.out 2>&1
eval_tap $? 206 'AdminUpdateUserStatusV3' test.out

#- 207 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId '9JE80LZHm33JnLfD' \
    --body '{"emailAddress": "Uom1UsqOdFJ2MICc", "password": "wCG9qbkKDtN67iiM"}' \
    > test.out 2>&1
eval_tap $? 207 'AdminTrustlyUpdateUserIdentity' test.out

#- 208 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QMFdKSt7tbR9dwaw' \
    > test.out 2>&1
eval_tap $? 208 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 209 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'Zttgk830Gy9sA1bh' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "wqxzTWMuFRQ5cjy3"}' \
    > test.out 2>&1
eval_tap $? 209 'AdminUpdateClientSecretV3' test.out

#- 210 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'ehAkBUO9vu1paSew' \
    > test.out 2>&1
eval_tap $? 210 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 211 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'wQKWXx6W3VAk6tfX' \
    --before 'vphmuxVXVwt3AauL' \
    --isWildcard 'false' \
    --limit '45' \
    > test.out 2>&1
eval_tap $? 211 'AdminGetRolesV3' test.out

#- 212 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "managers": [{"displayName": "CI9XmZMxqVeZ2790", "namespace": "B3FJi2Gzzm3kYsbu", "userId": "f2ixZAOLV7aJ3u8H"}, {"displayName": "FqVcPtmjue0ZpOuX", "namespace": "nX4n31nT7Yqgyu9q", "userId": "Rop94DXYt2q0poP1"}, {"displayName": "6OO1EjMTTTXhU35F", "namespace": "9eiz3Oso7xnKo7bf", "userId": "xvHZL1qP8x6K9Al8"}], "members": [{"displayName": "6FiMO7dheEmZhy2K", "namespace": "FYCJaozaVCXJHuge", "userId": "QgMLEyBWoXFFytGO"}, {"displayName": "jPaMVY9gg8IfEAUE", "namespace": "Hoxq6u50rwkdYtpG", "userId": "FKMI4bClNWJW4cfs"}, {"displayName": "cGBSWGzI5fYUdE1r", "namespace": "OAvInjtIT14o3lQA", "userId": "aYitG3fIFp5GAS1C"}], "permissions": [{"action": 16, "resource": "SY64ho6IggPNaRWA", "schedAction": 80, "schedCron": "OOKI5uV1ZdtdOqkV", "schedRange": ["WlOL04dk0s7m1BBG", "gLxnMsLNUw981k1p", "kgNi8S5cNII3VhoM"]}, {"action": 79, "resource": "o9YoFgUkk52KLTyc", "schedAction": 44, "schedCron": "8ltTWZ8vtD7SdZrv", "schedRange": ["B3lk6fJ3XaOtChJh", "ViZMIOhAV0dFBmg1", "Tpez0gidaWGXsSaH"]}, {"action": 99, "resource": "pudyNVWSoanvC2Xr", "schedAction": 59, "schedCron": "fkJROwzA5rWrTtXb", "schedRange": ["Ha4V1G9HYpOVGuMi", "UvAJGJdt09CfmUW6", "hYUiWVfywOGC8UIA"]}], "roleName": "70YgzgZ9LkQl8CQa"}' \
    > test.out 2>&1
eval_tap $? 212 'AdminCreateRoleV3' test.out

#- 213 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'rOPRG6VO4gcztrKS' \
    > test.out 2>&1
eval_tap $? 213 'AdminGetRoleV3' test.out

#- 214 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'Ce3EYXmYckybwLm2' \
    > test.out 2>&1
eval_tap $? 214 'AdminDeleteRoleV3' test.out

#- 215 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'LJj8hZ3WWhe5tXTt' \
    --body '{"deletable": true, "isWildcard": false, "roleName": "W8cUFFG3I8zqdO9k"}' \
    > test.out 2>&1
eval_tap $? 215 'AdminUpdateRoleV3' test.out

#- 216 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId '0HznjxzaPBnnvq8r' \
    > test.out 2>&1
eval_tap $? 216 'AdminGetRoleAdminStatusV3' test.out

#- 217 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'rILilEecqjtDCMxE' \
    > test.out 2>&1
eval_tap $? 217 'AdminUpdateAdminRoleStatusV3' test.out

#- 218 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'RrZuX4SzEwAiDzzF' \
    > test.out 2>&1
eval_tap $? 218 'AdminRemoveRoleAdminV3' test.out

#- 219 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'O9C6B6HhwB9IEbpE' \
    --after 'emnCb5TX1xz8hN2e' \
    --before '5P0noFKCQQDWLdEQ' \
    --limit '76' \
    > test.out 2>&1
eval_tap $? 219 'AdminGetRoleManagersV3' test.out

#- 220 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'lzwQM6tFw0ZGo6Bj' \
    --body '{"managers": [{"displayName": "1Q3xp9uWNy30E1Gq", "namespace": "wTOihPyKKNnZbyAB", "userId": "zlMDFoB33G34wrDO"}, {"displayName": "zUnHg8bxXuyHXyJX", "namespace": "TWILpmHY3WooULi5", "userId": "V7M0lxOXMgQeo3c8"}, {"displayName": "j1J7lJjKhaBgENrQ", "namespace": "Yn9qYn6UMdJ4VGXZ", "userId": "UfWWpzxA2FhqxJNi"}]}' \
    > test.out 2>&1
eval_tap $? 220 'AdminAddRoleManagersV3' test.out

#- 221 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'lS4U6wRYYIyBv5h2' \
    --body '{"managers": [{"displayName": "mJ17GD2UZ98EkXSz", "namespace": "J6aBb3cz0KtcWE9O", "userId": "KI8nS5VPaqcFvWRd"}, {"displayName": "taFW0bB6PChWIEjU", "namespace": "qrMFeX2nZ06eA4Ki", "userId": "Zk0csWruQsMJ7OqU"}, {"displayName": "Ed86f4sTjVC5MacC", "namespace": "UWDqSZsrh42fpFhW", "userId": "KY5hTtz8snok5c8e"}]}' \
    > test.out 2>&1
eval_tap $? 221 'AdminRemoveRoleManagersV3' test.out

#- 222 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'FbdTOyaAqA7xPLMh' \
    --after '76hRCZNUc3UetolG' \
    --before 'H5DVm1ll3yjipnkP' \
    --limit '54' \
    > test.out 2>&1
eval_tap $? 222 'AdminGetRoleMembersV3' test.out

#- 223 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'AWCpLTJ6oN9mb5TA' \
    --body '{"members": [{"displayName": "ni5k3XBXVypiPr6p", "namespace": "nuiIgATZn8CF1FJO", "userId": "izqfuNiHjbCMLCxb"}, {"displayName": "ybHr03N79Q3Y55lN", "namespace": "eKU6lrSYyeNTYOZV", "userId": "nlPeZyBc8QGr7J6M"}, {"displayName": "B8eeIqRj5sPG88YT", "namespace": "yGHHzVQqghU1wVVq", "userId": "eeGaVrc73dzrFgzv"}]}' \
    > test.out 2>&1
eval_tap $? 223 'AdminAddRoleMembersV3' test.out

#- 224 AdminRemoveRoleMembersV3
eval_tap 0 224 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 225 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'QBts8h13bT5nyBOm' \
    --body '{"permissions": [{"action": 75, "resource": "B1A4CSsSYmYw1JiL", "schedAction": 61, "schedCron": "iBHd7zmlkonN20IY", "schedRange": ["si7ORNDTC34993XZ", "pV7VTRWuxTHUDSlj", "CtCyOOchZXiTrL5k"]}, {"action": 57, "resource": "klks5JheEsuHpmdb", "schedAction": 69, "schedCron": "aVTvYdXBrDEVCPD7", "schedRange": ["86nkcaZuYPvJ2czm", "WJl743gbzzToeWoJ", "PZcT6y4utPZh9O6p"]}, {"action": 74, "resource": "vHbndB7fxG13XK5q", "schedAction": 94, "schedCron": "xsiiNTY3iL5IJIS5", "schedRange": ["48PzabnqDL1SLS84", "7Qqrai0SC1fsrQx2", "iRPuv8bocRVHq8Tq"]}]}' \
    > test.out 2>&1
eval_tap $? 225 'AdminUpdateRolePermissionsV3' test.out

#- 226 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'W9kXSxnkVpK37ut2' \
    --body '{"permissions": [{"action": 31, "resource": "w1F3R9338d8eyt0W", "schedAction": 69, "schedCron": "zkyxz8qOgn66794h", "schedRange": ["oicV4c7CEVe3qwHr", "eSSal7l9d0oOvxwy", "vuILCEBQ7Nwtn1vb"]}, {"action": 22, "resource": "P2swo3RdFvXp1330", "schedAction": 9, "schedCron": "3RbU33AuOJeEpa3S", "schedRange": ["tGU5fvwcxc0vz7wI", "02thZRJ63oXFi36e", "Yk7bV1FvTtFnE8zP"]}, {"action": 43, "resource": "GaT14zqRXyUL7QzO", "schedAction": 28, "schedCron": "8CuV303VnR12naqO", "schedRange": ["wKL14Iu8gk29HYGq", "qDbkFqX0xg717buK", "Q9ZOeixV6FA1o70h"]}]}' \
    > test.out 2>&1
eval_tap $? 226 'AdminAddRolePermissionsV3' test.out

#- 227 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'ckLzETkwQ76Bl5XS' \
    --body '["mbn5V5Er7OgxTS9V", "HjCSrv5NxB1cvJ54", "ciVLCWG22FhtcUNE"]' \
    > test.out 2>&1
eval_tap $? 227 'AdminDeleteRolePermissionsV3' test.out

#- 228 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '44' \
    --resource 'QWQVmbuAMhtMzvRo' \
    --roleId '52X8r6FOFlYgUtN1' \
    > test.out 2>&1
eval_tap $? 228 'AdminDeleteRolePermissionV3' test.out

#- 229 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 229 'AdminGetMyUserV3' test.out

#- 230 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId '02jp1mgCyMMgB7nv' \
    --extendExp 'false' \
    --redirectUri 'YthXbgdxVWJ5qrYl' \
    --password '3ZaU6hAwVNIx4nzP' \
    --requestId 'XjXWBQU7C2Zj0gIL' \
    --userName 'NnWuglgCEr0PWSQY' \
    > test.out 2>&1
eval_tap $? 230 'UserAuthenticationV3' test.out

#- 231 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'FNIxQCWRJEgxm4cJ' \
    --linkingToken 'XqEzg8fbhe4MTMl2' \
    --password 'vD8Q0glWq52lWWsJ' \
    --username 'FgZZ1IsiOHxXw9JA' \
    > test.out 2>&1
eval_tap $? 231 'AuthenticationWithPlatformLinkV3' test.out

#- 232 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData '6Y8yJm6REk8LARfW' \
    --extendExp 'false' \
    --linkingToken 'jth023SZkcXmVWfT' \
    > test.out 2>&1
eval_tap $? 232 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 233 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId '1g87iJRAK9UywhIs' \
    > test.out 2>&1
eval_tap $? 233 'RequestOneTimeLinkingCodeV3' test.out

#- 234 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode '2TR5TsDcp9Gz1gfC' \
    > test.out 2>&1
eval_tap $? 234 'ValidateOneTimeLinkingCodeV3' test.out

#- 235 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData '0s5FoS24Lc3tcWXn' \
    --isTransient 'true' \
    --clientId 'kJeqccLWcvm8F6sx' \
    --oneTimeLinkCode 'IHWHDshpmZFCS65i' \
    > test.out 2>&1
eval_tap $? 235 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 236 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 236 'GetCountryLocationV3' test.out

#- 237 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 237 'Logout' test.out

#- 238 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --codeChallenge 'pRHtjBb9Hzg3surg' \
    --codeChallengeMethod 'S256' \
    --clientId '82MLHpeoy6oMWeY1' \
    > test.out 2>&1
eval_tap $? 238 'RequestTokenExchangeCodeV3' test.out

#- 239 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'nAk0m7fBqSCOflsF' \
    --userId 'kSTqGSDkfjbILnCj' \
    --platformUserId '2ckxfeLnsg5LvHRq' \
    > test.out 2>&1
eval_tap $? 239 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 240 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RyDJeAuxahxu57XI' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 240 'RevokeUserV3' test.out

#- 241 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'HbLGqV6hFUGUhytg' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'sHfqsOZec9bVBKab' \
    --redirectUri '2s0f3clbk1pJ2YXx' \
    --scope 'ZXMP9U9NDGhFMT88' \
    --state 'L8whuTqyN0b5brjI' \
    --targetAuthPage 'lP6vqxilmHnwGgKM' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'EzAwFGfuy9OFwrRz' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 241 'AuthorizeV3' test.out

#- 242 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'aRD6dxeGKQw14OcG' \
    > test.out 2>&1
eval_tap $? 242 'TokenIntrospectionV3' test.out

#- 243 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 243 'GetJWKSV3' test.out

#- 244 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'masCJ5riW6sDb3mO' \
    --factor 'P2RQZ8d2RTiUOsJf' \
    --mfaToken 'tntooCpvXDHaPRLI' \
    > test.out 2>&1
eval_tap $? 244 'SendMFAAuthenticationCode' test.out

#- 245 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'l8cr7kUGRqjQutQc' \
    --mfaToken 'kzY5x2jBRDTaAG5L' \
    > test.out 2>&1
eval_tap $? 245 'Change2faMethod' test.out

#- 246 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'VVky9RinFXoypHVU' \
    --factor '7IY2rYq8iLn40I7p' \
    --mfaToken 'xHO1lkKBNZ6vWOl8' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 246 'Verify2faCode' test.out

#- 247 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'tEG6TBm5CJimtA6x' \
    --userId 'h4M739os2mRiMhXO' \
    > test.out 2>&1
eval_tap $? 247 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 248 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'hgavD9bZHeRBEoqf' \
    --clientId 'Zk5axOUDZrtvRIui' \
    --redirectUri 'UOhXTKBXjGwApOlk' \
    --requestId 'P9hvtcuArwSTdEdy' \
    > test.out 2>&1
eval_tap $? 248 'AuthCodeRequestV3' test.out

#- 249 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'pr2P4vVBNXUmEuAz' \
    --additionalData 'CPAHzMbx45oIxaYV' \
    --clientId 'sKT7yjV4DVIfmpUn' \
    --createHeadless 'true' \
    --deviceId 'CeCjHbNm9u03497T' \
    --macAddress 'PwlSxyULgEzGD0ZE' \
    --platformToken 'UjHldEbW0BOiAkUs' \
    --serviceLabel '0.02041989630323615' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 249 'PlatformTokenGrantV3' test.out

#- 250 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 250 'GetRevocationListV3' test.out

#- 251 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'ciVvj7DfexzqDsPA' \
    > test.out 2>&1
eval_tap $? 251 'TokenRevocationV3' test.out

#- 252 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'BeQcNqyvfHpq4x7p' \
    --simultaneousTicket 'wazfRjCHu8QTEK6Q' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket 'XasTRf5Y7HtPMuSB' \
    > test.out 2>&1
eval_tap $? 252 'SimultaneousLoginV3' test.out

#- 253 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'jfDCMrh2HD3DPzaw' \
    --clientId 'uNS9Xq9JTrIAHHVp' \
    --clientSecret '12vfpgRIfZ5UFJOc' \
    --code 'yvIw6DeeaxAAAc7B' \
    --codeVerifier 'cgMPVSGxCVStC2JC' \
    --extendNamespace 'SauVpAMYRQVkcT1w' \
    --extendExp 'false' \
    --password 'p1oxDtvGkJObjESz' \
    --redirectUri 'UaZFs7n0AsNcwO4w' \
    --refreshToken '1i3Q8qaEn4bpDCBl' \
    --username 'Y6TfwEmByn0qvDGo' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 253 'TokenGrantV3' test.out

#- 254 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'XplqUveN3HSptwiK' \
    > test.out 2>&1
eval_tap $? 254 'VerifyTokenV3' test.out

#- 255 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId '66XtyMYBpAyAOmPk' \
    --code 'bGZ80jMlMx27ijYN' \
    --error 't7mzg8ufRMwouVyg' \
    --openidAssocHandle 'aIZwOT3FBPUMANCy' \
    --openidClaimedId 'GY3uMiXMBuSZj0cO' \
    --openidIdentity '5vIXHPqVVeygW73n' \
    --openidMode '9IiIqLbxep84vSqT' \
    --openidNs 'nBj4Ad97wyHPXyKT' \
    --openidOpEndpoint 'uGFKTLznDf3ncHr7' \
    --openidResponseNonce '0b7o5701Fc2fUq4o' \
    --openidReturnTo '5tS91kF0zq1ziLGJ' \
    --openidSig 'ntA5Xl5fNgHVR5pu' \
    --openidSigned 'ncTC6VPcEv0ehVfQ' \
    --state 'STrQ5qyEGcljcthN' \
    > test.out 2>&1
eval_tap $? 255 'PlatformAuthenticationV3' test.out

#- 256 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'fwsZE2aGdP7G03hc' \
    --platformToken 'dgfVWylincHP5gyo' \
    > test.out 2>&1
eval_tap $? 256 'PlatformTokenRefreshV3' test.out

#- 257 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'pIXQ9bmrcUKIsana' \
    > test.out 2>&1
eval_tap $? 257 'PublicGetInputValidations' test.out

#- 258 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field '9mE3v66v8Pwxk0hz' \
    > test.out 2>&1
eval_tap $? 258 'PublicGetInputValidationByField' test.out

#- 259 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'peAOk4s7qKJZm6Xk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 259 'PublicGetCountryAgeRestrictionV3' test.out

#- 260 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'abhAyB2CxcWxoY4E' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 260 'PublicGetConfigValueV3' test.out

#- 261 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 261 'PublicGetCountryListV3' test.out

#- 262 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 262 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 263 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'hAtycJ3rX29qLS2Q' \
    > test.out 2>&1
eval_tap $? 263 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 264 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 264 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 265 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'pQJ2kxyX6hrt1Jty' \
    --platformUserId 'cNT1AlMuAMxelAJE' \
    > test.out 2>&1
eval_tap $? 265 'PublicGetUserByPlatformUserIDV3' test.out

#- 266 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'zmoKJ2fD002bQEfD' \
    > test.out 2>&1
eval_tap $? 266 'PublicGetAsyncStatus' test.out

#- 267 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'DDr0IACz6fYfj0al' \
    --limit '6' \
    --offset '53' \
    --platformBy 'xsNgy8a1ZM27vFvY' \
    --platformId 'U0L7w3hvmluwHXu7' \
    --query 'zN8hrVFXKGWGabIz' \
    > test.out 2>&1
eval_tap $? 267 'PublicSearchUserV3' test.out

#- 268 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "sHeryKl5jg416PPW", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "cARRfTPWC7Z3ut6c", "policyId": "6X2bP9uUncctvyAZ", "policyVersionId": "VmRKjf4HgB0KInB1"}, {"isAccepted": true, "localizedPolicyVersionId": "D3590J0cijBOKatV", "policyId": "T6yDPibbEuvExqxb", "policyVersionId": "dbGmZP9dNEMX4q8d"}, {"isAccepted": false, "localizedPolicyVersionId": "prPWqXh9cLKopKdR", "policyId": "5ZIrk6QG3eATz0Fg", "policyVersionId": "5VSqLvmuFkB31gfi"}], "authType": "uWFTqoiBMdtkJPT8", "code": "Mh5K8Obr1PkPNCul", "country": "242TUvHNc7zjw6cy", "dateOfBirth": "YFvOFx9qTcdsvMA7", "displayName": "MSHMTbkKZjak95Gs", "emailAddress": "sstj4T5ItbHuC7wx", "password": "xBE23knrmSPRteRW", "reachMinimumAge": true, "uniqueDisplayName": "zkpasP0v7qwCrrh0"}' \
    > test.out 2>&1
eval_tap $? 268 'PublicCreateUserV3' test.out

#- 269 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'Sv5lJEXKEFo03R2N' \
    --query 'brfqF3iVhUIySEru' \
    > test.out 2>&1
eval_tap $? 269 'CheckUserAvailability' test.out

#- 270 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["90GgYON6FcDg6GWJ", "0oVfzYzU6PLeNdLU", "kYZRowGw09eSVxPP"]}' \
    > test.out 2>&1
eval_tap $? 270 'PublicBulkGetUsers' test.out

#- 271 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "lRaZWRVcxJT9DS59", "languageTag": "CrwlWtMz6E1NrPwH"}' \
    > test.out 2>&1
eval_tap $? 271 'PublicSendRegistrationCode' test.out

#- 272 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "c1PC6Y4H5yUspuGA", "emailAddress": "TsBnIZBNfduOMrJY"}' \
    > test.out 2>&1
eval_tap $? 272 'PublicVerifyRegistrationCode' test.out

#- 273 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "ufoBDD2rQhSDIHAM", "languageTag": "ekS6j6bE6ZelUCaT"}' \
    > test.out 2>&1
eval_tap $? 273 'PublicForgotPasswordV3' test.out

#- 274 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "XyE2ZksLnTlZsr7D", "password": "bh2IJ8RHoG5pPCpe", "uniqueDisplayName": "ABNTZpqu046d3rYD", "username": "K7VnZ8ATbfRfV1uv"}' \
    > test.out 2>&1
eval_tap $? 274 'PublicValidateUserInput' test.out

#- 275 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'QgKqZJnlcusBt3BI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 275 'GetAdminInvitationV3' test.out

#- 276 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'Rz8y44dZlIE7AmgP' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "lHKc2bQL8MXCoTMB", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "9HCPwWR9dvqzl1la", "policyId": "GdnJxPtvd4UgNO0G", "policyVersionId": "7XuBhNR19uwplicV"}, {"isAccepted": false, "localizedPolicyVersionId": "IyBXTFwGev9zsJqJ", "policyId": "OmfWFR4vtepHym4m", "policyVersionId": "OjqxRJOZQIIvQgRx"}, {"isAccepted": false, "localizedPolicyVersionId": "V0nnxdMNxOvS9nAC", "policyId": "gYex8JIzmYsQKePA", "policyVersionId": "dbMCkRi03rvmna5z"}], "authType": "vTc65ORSWuqglFZb", "code": "2OTMvv0F9UzwNKoP", "country": "w0xMfIA42jkbUDVG", "dateOfBirth": "zqxkxfypjVzlbNPW", "displayName": "DOoOencJ7AKQ6I2j", "emailAddress": "WVcfBOunHeJKdeqx", "password": "yuZLP6ULr559Tlup", "reachMinimumAge": true, "uniqueDisplayName": "YpJ5nZcxDQELtWlG"}' \
    > test.out 2>&1
eval_tap $? 276 'CreateUserFromInvitationV3' test.out

#- 277 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "VZpoTg1PQqr95zQ6", "country": "abHctaPq0zdIElpL", "dateOfBirth": "eXTN3qsxhGdKHCxQ", "displayName": "eHRslM3mnnknZA6q", "languageTag": "Azm25LOeXh5YqRem", "uniqueDisplayName": "VlWkLA2yQxXFWFRD", "userName": "LVv9ueyIyBqlMFI8"}' \
    > test.out 2>&1
eval_tap $? 277 'UpdateUserV3' test.out

#- 278 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "yU4nJIEAwQOjQ8AM", "country": "Ll21QHJVmNpZ2EfV", "dateOfBirth": "VwNAFxa1o5obVOys", "displayName": "aAOybzfU4XKyTDxN", "languageTag": "ZfU4qB1xpXw9yq0h", "uniqueDisplayName": "Sdjz10Z0FZyh84Kx", "userName": "SFvvt0LComrleUxh"}' \
    > test.out 2>&1
eval_tap $? 278 'PublicPartialUpdateUserV3' test.out

#- 279 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "rZeTODf5OddZmXwu", "emailAddress": "OgYuede0IG90fMTw", "languageTag": "9eW3Nm7LFG5glSvs"}' \
    > test.out 2>&1
eval_tap $? 279 'PublicSendVerificationCodeV3' test.out

#- 280 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "pHE6Y5q5Bcajli07", "contactType": "EKTnAHjZVXdzRNRB", "languageTag": "AboDhA1r233zWoVM", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 280 'PublicUserVerificationV3' test.out

#- 281 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ZKXutoTDmHUGbdBZ", "country": "AQzXXfKCemYmN4lr", "dateOfBirth": "JjJj8bvZQrTh8Sr0", "displayName": "dHkHw0lcnTcLbrhF", "emailAddress": "M34Ys7P9CArt5lwe", "password": "ttY4NhKW4VtPN5sM", "uniqueDisplayName": "TuLYkrvowsF4V1tA", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 281 'PublicUpgradeHeadlessAccountV3' test.out

#- 282 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "BaBbvNEUlr5buUxg", "password": "grGB7VEswTBPK5wy"}' \
    > test.out 2>&1
eval_tap $? 282 'PublicVerifyHeadlessAccountV3' test.out

#- 283 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "ajc7flvCa54uqpNe", "mfaToken": "qHMDlY1dg3chnwJZ", "newPassword": "meuWBSvb72sDgJfF", "oldPassword": "B1j42m1Xlz5lc7ht"}' \
    > test.out 2>&1
eval_tap $? 283 'PublicUpdatePasswordV3' test.out

#- 284 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'm72VvAx6h54QttRb' \
    > test.out 2>&1
eval_tap $? 284 'PublicCreateJusticeUser' test.out

#- 285 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'nRRL4Q4HxDyZwtEb' \
    --redirectUri '1DN29XPzJa6IKADC' \
    --ticket 'RxDvA3fpskSJCpHt' \
    > test.out 2>&1
eval_tap $? 285 'PublicPlatformLinkV3' test.out

#- 286 PublicPlatformUnlinkV3
eval_tap 0 286 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 287 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Dc4fTyQ5VCjvXHyh' \
    > test.out 2>&1
eval_tap $? 287 'PublicPlatformUnlinkAllV3' test.out

#- 288 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7TEVC3rX5biBghdY' \
    --ticket 'yjwPDL8EhIIJDD0V' \
    > test.out 2>&1
eval_tap $? 288 'PublicForcePlatformLinkV3' test.out

#- 289 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'uXLZErvQrqImgTYN' \
    --clientId 'QYrwzlKFRfA9H4tG' \
    --redirectUri '78nWIhQOYfHYccDb' \
    > test.out 2>&1
eval_tap $? 289 'PublicWebLinkPlatform' test.out

#- 290 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'qUG8OBPMmwkZWqym' \
    --code 'cwu8pFs7aTOzXrFm' \
    --state 'oBTvDGuY4pbezzoi' \
    > test.out 2>&1
eval_tap $? 290 'PublicWebLinkPlatformEstablish' test.out

#- 291 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId '6PXwvxOmJPxJHX9y' \
    --code 'sODtPLUZ2jGWJaUH' \
    --state 'TlnocXPfz7JyWAIT' \
    > test.out 2>&1
eval_tap $? 291 'PublicProcessWebLinkPlatformV3' test.out

#- 292 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "TeVisrbX13IcBHEb", "userIds": ["Oek2CwvFDjRWQbIN", "bvLDyVVd8KBYiNIK", "EeK0UNnEyHsPeetT"]}' \
    > test.out 2>&1
eval_tap $? 292 'PublicGetUsersPlatformInfosV3' test.out

#- 293 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "fOpEvKmnALYCLwMq", "code": "ABf8HLk4rW9PhoOv", "emailAddress": "U2aqcxSl62H4pVTA", "languageTag": "nHkV2Z0jEDAr8eUq", "newPassword": "k9YDVO17e23IE09r"}' \
    > test.out 2>&1
eval_tap $? 293 'ResetPasswordV3' test.out

#- 294 PublicGetUserByUserIdV3
eval_tap 0 294 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 295 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'SuApUJun8rFfdYyI' \
    --activeOnly 'true' \
    --after 'kCsg5FM213nsX6f7' \
    --before 'FBbXttAwquudAz6O' \
    --limit '95' \
    > test.out 2>&1
eval_tap $? 295 'PublicGetUserBanHistoryV3' test.out

#- 296 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZUiydTRaWWe5QECx' \
    > test.out 2>&1
eval_tap $? 296 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 297 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mbxVuVq4fmqB0D1V' \
    > test.out 2>&1
eval_tap $? 297 'PublicGetUserInformationV3' test.out

#- 298 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PfNakk5bKWg546rq' \
    --after '0.1976120866440133' \
    --before '0.7452009388482517' \
    --limit '47' \
    > test.out 2>&1
eval_tap $? 298 'PublicGetUserLoginHistoriesV3' test.out

#- 299 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hhtDnsHPBbPG4UJc' \
    --after 'OAzynDDQhvJE9poF' \
    --before '7IpeJYWNrOsZgFkD' \
    --limit '8' \
    --platformId 'VNMTnpUHBaNCLVdy' \
    > test.out 2>&1
eval_tap $? 299 'PublicGetUserPlatformAccountsV3' test.out

#- 300 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Oy68nlkMcJfyHP3h' \
    > test.out 2>&1
eval_tap $? 300 'PublicListJusticePlatformAccountsV3' test.out

#- 301 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'tMm68gAiKwdYsiQc' \
    --body '{"platformId": "sAmIZoNCEhMGZ0IN", "platformUserId": "b6zxKLEMvAIiqDVp"}' \
    > test.out 2>&1
eval_tap $? 301 'PublicLinkPlatformAccount' test.out

#- 302 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'CwzRxaCbMh8MLbwY' \
    --body '{"chosenNamespaces": ["Bt8iam70mXZ7UnGm", "XxY5WoILBtrlqOaG", "CNLRCLAkI5FRkQQH"], "requestId": "yFqBu3HO4on8eDQa"}' \
    > test.out 2>&1
eval_tap $? 302 'PublicForceLinkPlatformWithProgression' test.out

#- 303 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gnr1mn76NYux5hah' \
    > test.out 2>&1
eval_tap $? 303 'PublicGetPublisherUserV3' test.out

#- 304 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Ez5196WYT4p2WeYh' \
    --password 'CvbIHSFBeftUQshi' \
    > test.out 2>&1
eval_tap $? 304 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 305 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'M6pVvw7TNegS9stk' \
    --before 'DJOLhEKbVvO96JRV' \
    --isWildcard 'false' \
    --limit '26' \
    > test.out 2>&1
eval_tap $? 305 'PublicGetRolesV3' test.out

#- 306 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'freKFFjLrRJiideL' \
    > test.out 2>&1
eval_tap $? 306 'PublicGetRoleV3' test.out

#- 307 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'true' \
    > test.out 2>&1
eval_tap $? 307 'PublicGetMyUserV3' test.out

#- 308 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'IY0l0ZVvycjTz5YT' \
    > test.out 2>&1
eval_tap $? 308 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 309 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["0xkLPG4lwLtpRQgk", "sicBofJ8NgPqN5zn", "ulCeFDALmgDKT8c9"], "oneTimeLinkCode": "cPdAlAwirySshnzv"}' \
    > test.out 2>&1
eval_tap $? 309 'LinkHeadlessAccountToMyAccountV3' test.out

#- 310 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "v8k6BL1TNPtghQlo"}' \
    > test.out 2>&1
eval_tap $? 310 'PublicSendVerificationLinkV3' test.out

#- 311 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'B7Zj2pPefxIwhXY0' \
    > test.out 2>&1
eval_tap $? 311 'PublicVerifyUserByLinkV3' test.out

#- 312 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'ku2vNbaWjOYoPW61' \
    --code 'PbH8cSRqyCNPjVXy' \
    --error 'wGHzIHg9Dh0CklWo' \
    --state 'XVR1pzh73WqZS28G' \
    > test.out 2>&1
eval_tap $? 312 'PlatformAuthenticateSAMLV3Handler' test.out

#- 313 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'UEMiUR3xD1szoO35' \
    --payload 'pyFxLAGbC9vWDk7v' \
    > test.out 2>&1
eval_tap $? 313 'LoginSSOClient' test.out

#- 314 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'eJeIdIoADn9ynno2' \
    > test.out 2>&1
eval_tap $? 314 'LogoutSSOClient' test.out

#- 315 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'ThvonPMp1tV5cMQu' \
    --code '6FNEOYD04pLYct7C' \
    > test.out 2>&1
eval_tap $? 315 'RequestTargetTokenResponseV3' test.out

#- 316 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '79' \
    --namespace 'n2zaSaJpgLLxSLSG' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 316 'AdminListInvitationHistoriesV4' test.out

#- 317 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'vxLQgsrLBtV1vaZb' \
    > test.out 2>&1
eval_tap $? 317 'AdminGetDevicesByUserV4' test.out

#- 318 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType '3uz7H3fwzweSOWK5' \
    --endDate 'fncUSjiHaHZcWh3G' \
    --limit '25' \
    --offset '26' \
    --startDate '1a1VZPlQ4DU6QobG' \
    > test.out 2>&1
eval_tap $? 318 'AdminGetBannedDevicesV4' test.out

#- 319 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'RaKp1kSfcLXgfjvZ' \
    > test.out 2>&1
eval_tap $? 319 'AdminGetUserDeviceBansV4' test.out

#- 320 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "W034oXyfgkeEISfR", "deviceId": "Am94ikDqD2N4PhYG", "deviceType": "buQbhPTrrThfWb7n", "enabled": false, "endDate": "vl9bEmcOPLe3Te3s", "ext": {"DITcuXhBZn3wnhE7": {}, "BQqEljiMOJjUyBC9": {}, "oxDfhhx1Pdb6qPUp": {}}, "reason": "cJ2GXfZ2VEJXmuN5"}' \
    > test.out 2>&1
eval_tap $? 320 'AdminBanDeviceV4' test.out

#- 321 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'QvjHJRenwTa7DqQ5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 321 'AdminGetDeviceBanV4' test.out

#- 322 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'JoDrRkPg85m75VXJ' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 322 'AdminUpdateDeviceBanV4' test.out

#- 323 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'uIh56u6ZQap6mH1H' \
    --startDate 'bM0v6xkTdoIy64cJ' \
    --deviceType 'PQXRWCGwq9xGROZE' \
    > test.out 2>&1
eval_tap $? 323 'AdminGenerateReportV4' test.out

#- 324 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 324 'AdminGetDeviceTypesV4' test.out

#- 325 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId '9d1wkSOJ2ph873zj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 325 'AdminGetDeviceBansV4' test.out

#- 326 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId '7wN7mPpLn1gX9nSC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 326 'AdminDecryptDeviceV4' test.out

#- 327 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId '5kE083zBvs745qfu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 327 'AdminUnbanDeviceV4' test.out

#- 328 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId '3uXFGZ7mETdwBiai' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 328 'AdminGetUsersByDeviceV4' test.out

#- 329 AdminGetNamespaceInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 329 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 330 AdminGetNamespaceUserInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceUserInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 330 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 331 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 71}' \
    > test.out 2>&1
eval_tap $? 331 'AdminCreateTestUsersV4' test.out

#- 332 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "XiGZGZd9BVoWJh4s", "policyId": "kToQlYJKlMtQSZ7k", "policyVersionId": "pczDlByiSBA6AlDf"}, {"isAccepted": true, "localizedPolicyVersionId": "Cu9nJqT6qAfi5gs7", "policyId": "dyjAyb3keOWWVUFw", "policyVersionId": "eM6tPBg1rSyx175G"}, {"isAccepted": false, "localizedPolicyVersionId": "tYfxIyJ7CzD38RsX", "policyId": "lK2v0m6DiKvrjySj", "policyVersionId": "KnmXRUrcaiwljuri"}], "authType": "EMAILPASSWD", "code": "5CRW81EEH6dMY6CL", "country": "KBuME4X8iVI3qnKP", "dateOfBirth": "01Q02Tj05B6VoNDn", "displayName": "mAFx7LkPchlXIvht", "emailAddress": "OmIf3O9kUe0nA04S", "password": "HBZufoP6CbvRnOiu", "passwordMD5Sum": "Ue44h4GzV4fMW7QM", "reachMinimumAge": false, "uniqueDisplayName": "kOPTue7dhoexvpOL", "username": "5ROnmRSG3lJQs7Ye"}' \
    > test.out 2>&1
eval_tap $? 332 'AdminCreateUserV4' test.out

#- 333 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": true, "userIds": ["jWnP36F1hwWihbmh", "DssSTvkEivpVSA9c", "xKuRrKbINv3pkEj3"]}' \
    > test.out 2>&1
eval_tap $? 333 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 334 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["w13V20Dl4YbEkOLs", "pUbbXXRHKqcAucKJ", "QQLtPkyCNjEWKxLt"]}' \
    > test.out 2>&1
eval_tap $? 334 'AdminBulkCheckValidUserIDV4' test.out

#- 335 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '1ABkKGP5t6JU7JaM' \
    --body '{"avatarUrl": "oBNQP69XnKK28Hxv", "country": "zemQxad4iZ88BFMe", "dateOfBirth": "N4rjV0W3CjPqjhFz", "displayName": "fZua3yFpwinMFyuf", "languageTag": "8HJ4OksR3xoko61s", "skipLoginQueue": true, "uniqueDisplayName": "bu49Zzujg6uDHi2x", "userName": "WRsArNjfi8bolpxS"}' \
    > test.out 2>&1
eval_tap $? 335 'AdminUpdateUserV4' test.out

#- 336 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'vmbmKPjV3ypffddL' \
    --body '{"code": "IUAbdMLCHPjXvKVb", "emailAddress": "ts3O8X3KMMy6tu9y"}' \
    > test.out 2>&1
eval_tap $? 336 'AdminUpdateUserEmailAddressV4' test.out

#- 337 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'NG6wqMz5eY5kvqpW' \
    > test.out 2>&1
eval_tap $? 337 'AdminDisableUserMFAV4' test.out

#- 338 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'kiPaE4BRCSXCQXgV' \
    > test.out 2>&1
eval_tap $? 338 'AdminListUserRolesV4' test.out

#- 339 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'IVorLN0pzcPDCnIS' \
    --body '{"assignedNamespaces": ["XAuHcnxCHJEI0tOv", "XXGHbKMGlmqqrbS5", "O35qvIlfToe7RBdx"], "roleId": "f2oumpWuq1IPYxJA"}' \
    > test.out 2>&1
eval_tap $? 339 'AdminUpdateUserRoleV4' test.out

#- 340 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'jtEXBOT10a8gGjLr' \
    --body '{"assignedNamespaces": ["47kYMI2bA38UtGwS", "UP6us23n5zhNNU3a", "xqGru9T0imIdsyI9"], "roleId": "ueEPaWYeIUaQ08Qc"}' \
    > test.out 2>&1
eval_tap $? 340 'AdminAddUserRoleV4' test.out

#- 341 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'V70jxL4xyWP5DRj6' \
    --body '{"assignedNamespaces": ["s464iNDj4gI6Xifn", "YKrqirxaxwRIrztT", "ItgBb24tnbaJq01X"], "roleId": "AaQiB1zjVTQ6SCfT"}' \
    > test.out 2>&1
eval_tap $? 341 'AdminRemoveUserRoleV4' test.out

#- 342 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'true' \
    --limit '71' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 342 'AdminGetRolesV4' test.out

#- 343 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "cuJIKkaKQPHgNOgg"}' \
    > test.out 2>&1
eval_tap $? 343 'AdminCreateRoleV4' test.out

#- 344 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'NhvkhZWjBfXUrLov' \
    > test.out 2>&1
eval_tap $? 344 'AdminGetRoleV4' test.out

#- 345 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'vPJX52ZVeC03KpQN' \
    > test.out 2>&1
eval_tap $? 345 'AdminDeleteRoleV4' test.out

#- 346 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'L3wO3FasyHaaBkuu' \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "Z6ceByCr4t1e9GAS"}' \
    > test.out 2>&1
eval_tap $? 346 'AdminUpdateRoleV4' test.out

#- 347 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId '0YKFvteQVKwnW9y5' \
    --body '{"permissions": [{"action": 24, "resource": "4QqKYXvKJjSXH5bq", "schedAction": 60, "schedCron": "qDRQaJSuRuSdwMBY", "schedRange": ["g9yBmEn8BcMNAVJ8", "gMeW4fe2tIUZXkSv", "bi2u0OhChWGeP9mc"]}, {"action": 52, "resource": "IftGS1lnrVyjkgUe", "schedAction": 28, "schedCron": "zYEFRBfNNVsMFA4q", "schedRange": ["dfuMnp2KW3olKq9j", "RRFgvNz9Ld4grbbe", "yY0ujEQAKw4tlqM3"]}, {"action": 94, "resource": "pEF3rn9sOIb67D5u", "schedAction": 48, "schedCron": "WuDuOtt86YJmpxfv", "schedRange": ["pBvrxiOLKYOdL39D", "WHHb6p9xTugWLAsu", "C6OWoFjlAoaXI5Zg"]}]}' \
    > test.out 2>&1
eval_tap $? 347 'AdminUpdateRolePermissionsV4' test.out

#- 348 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId '7QxoKF5R26SGVd41' \
    --body '{"permissions": [{"action": 71, "resource": "TItrcuVw1yBbKPb5", "schedAction": 76, "schedCron": "3SoRBDXT11t0BWiw", "schedRange": ["6a4OLgn8cFWhNDiE", "MZoNhhL7c2AoLcCL", "YAanYdAhnv3DpWbW"]}, {"action": 23, "resource": "2dhrIqgRaX2EQgvV", "schedAction": 47, "schedCron": "XKd6ZSB6Owopbkoo", "schedRange": ["yjdxmpVyoXelhCd1", "6Ml3FxiCH9qgl7TD", "QFXN5cPFfizgaReH"]}, {"action": 62, "resource": "hClk5HzyEJih2mnr", "schedAction": 98, "schedCron": "o119FvejLsC30T9F", "schedRange": ["UALm3PYUWySr5UBn", "af4Jnue449fVVuvI", "LEvYA705ltQPbFMP"]}]}' \
    > test.out 2>&1
eval_tap $? 348 'AdminAddRolePermissionsV4' test.out

#- 349 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'QY0p6YObNz3OTeBp' \
    --body '["GfCxY6sxm0fJqgAi", "DWxXuqvD3KKDaeOH", "UvZjtOc41Mzr5RKu"]' \
    > test.out 2>&1
eval_tap $? 349 'AdminDeleteRolePermissionsV4' test.out

#- 350 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'HequCwjo5kORvxvg' \
    --after 'v3KqGoC5DaaK1K6H' \
    --before 'ntszhbgLYLwqG9pQ' \
    --limit '17' \
    > test.out 2>&1
eval_tap $? 350 'AdminListAssignedUsersV4' test.out

#- 351 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'AZ4Dq74tSIySXAkS' \
    --body '{"assignedNamespaces": ["0lZABIjuG00PmDSe", "0GIxJcT04gF2uuWX", "VgOyv58reSoqpm7y"], "namespace": "k8IG1zVUMpR1HOzy", "userId": "l5VTa21jeaVeoIhF"}' \
    > test.out 2>&1
eval_tap $? 351 'AdminAssignUserToRoleV4' test.out

#- 352 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'w8CnU5LFNVCgcrHG' \
    --body '{"namespace": "PgXUbMhVvG4VSlh1", "userId": "68xsW3istlsI8I6p"}' \
    > test.out 2>&1
eval_tap $? 352 'AdminRevokeUserFromRoleV4' test.out

#- 353 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["62youA39yxhHV1dF", "g2qnj6y99tTukACf", "k2cE6ZILfmqjUdHd"], "emailAddresses": ["N6R1yNbQuiSkCUQk", "RBlLN2rnKICsKzzt", "jpeSOv6By1lpxJ44"], "isAdmin": true, "isNewStudio": false, "languageTag": "JEH0CO8ZDevntcqM", "namespace": "U5B7dxvUIbnnYIxF", "roleId": "O9vwSuZzVIB2MUd2"}' \
    > test.out 2>&1
eval_tap $? 353 'AdminInviteUserNewV4' test.out

#- 354 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "t8beJuueq6UV6tKd", "country": "yiYFJMisw0bsmN3U", "dateOfBirth": "FqjFe6hGmWcgFRU2", "displayName": "iyrYqwbx3lOpNQ8d", "languageTag": "auAc0dj45oaz5iWo", "skipLoginQueue": true, "uniqueDisplayName": "wMrwmL81ALFnzx7G", "userName": "ql7tpvKw4MCLCGNT"}' \
    > test.out 2>&1
eval_tap $? 354 'AdminUpdateMyUserV4' test.out

#- 355 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"mfaToken": "K2FZ8F55FUk6NgPE"}' \
    > test.out 2>&1
eval_tap $? 355 'AdminDisableMyAuthenticatorV4' test.out

#- 356 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'mnHKrXXIBp15srOx' \
    > test.out 2>&1
eval_tap $? 356 'AdminEnableMyAuthenticatorV4' test.out

#- 357 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 357 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 358 AdminGetMyBackupCodesV4
eval_tap 0 358 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 359 AdminGenerateMyBackupCodesV4
eval_tap 0 359 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 360 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    --body '{"mfaToken": "PJwpiatsOjm3L7TA"}' \
    > test.out 2>&1
eval_tap $? 360 'AdminDisableMyBackupCodesV4' test.out

#- 361 AdminDownloadMyBackupCodesV4
eval_tap 0 361 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 362 AdminEnableMyBackupCodesV4
eval_tap 0 362 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 363 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag '14lDmL3jtMY64C7M' \
    > test.out 2>&1
eval_tap $? 363 'AdminGetBackupCodesV4' test.out

#- 364 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag 'JCssCzKSoOssLwK1' \
    > test.out 2>&1
eval_tap $? 364 'AdminGenerateBackupCodesV4' test.out

#- 365 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag 'rE0XPTKCHfFrUhVe' \
    > test.out 2>&1
eval_tap $? 365 'AdminEnableBackupCodesV4' test.out

#- 366 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code 'YnOWfI1k5e1KEdcI' \
    --factor 'NObeZka1j2DKXX4F' \
    > test.out 2>&1
eval_tap $? 366 'AdminChallengeMyMFAV4' test.out

#- 367 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action '0dIwshDslExumvet' \
    --languageTag 'PehLB0bEQOuJIcUA' \
    > test.out 2>&1
eval_tap $? 367 'AdminSendMyMFAEmailCodeV4' test.out

#- 368 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"mfaToken": "NmaZZzuMv6mlyfre"}' \
    > test.out 2>&1
eval_tap $? 368 'AdminDisableMyEmailV4' test.out

#- 369 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'X3ydB9z3EsLhjyxN' \
    > test.out 2>&1
eval_tap $? 369 'AdminEnableMyEmailV4' test.out

#- 370 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 370 'AdminGetMyEnabledFactorsV4' test.out

#- 371 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'NZapiKNA7u7GsZHH' \
    > test.out 2>&1
eval_tap $? 371 'AdminMakeFactorMyDefaultV4' test.out

#- 372 AdminGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam adminGetMyOwnMFAStatusV4 \
    > test.out 2>&1
eval_tap $? 372 'AdminGetMyOwnMFAStatusV4' test.out

#- 373 AdminGetMyMFAStatusV4
eval_tap 0 373 'AdminGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 374 AdminInviteUserV4
eval_tap 0 374 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 375 AuthenticationWithPlatformLinkV4
samples/cli/sample-apps Iam authenticationWithPlatformLinkV4 \
    --extendExp 'true' \
    --clientId 'tikW3Ksj9pyC8e9X' \
    --linkingToken 'LylgnxKW8OS2heKj' \
    --password 'tdVmTMXgIy86gghR' \
    --username 'EwQEKrMWIuLa09Xz' \
    > test.out 2>&1
eval_tap $? 375 'AuthenticationWithPlatformLinkV4' test.out

#- 376 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData '0I6PMm5R36FyFmXm' \
    --extendExp 'false' \
    --linkingToken 'lNw12hfni4GC7VUU' \
    > test.out 2>&1
eval_tap $? 376 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 377 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'lKu7MCcWli2wCAik' \
    --factor 'jQ65FYUReoeaFmxV' \
    --mfaToken 'yz4Nr5A27d6IVcu8' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 377 'Verify2faCodeV4' test.out

#- 378 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'ERTpAtPw7AT1rLvy' \
    --codeChallenge 'rDfBc9U5MdrgacHC' \
    --codeChallengeMethod 'plain' \
    --additionalData 'XAnxleWwVPNHPSOf' \
    --clientId 'sKVVXyifDT3Rnx25' \
    --createHeadless 'true' \
    --deviceId 'anyk6O8PpuqIXXEI' \
    --macAddress 'uF7CU7us22JxbhGn' \
    --platformToken 'n3bSL4z1ylsaob9i' \
    --serviceLabel '0.18927655196491822' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 378 'PlatformTokenGrantV4' test.out

#- 379 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge '6TJBMk5LdF43eno2' \
    --codeChallengeMethod 'S256' \
    --simultaneousPlatform '0lLV7pbRP1beQtBw' \
    --simultaneousTicket 'A1XBTjRhDmeVIzaP' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket 'XyNhL9oXeprcEgDe' \
    > test.out 2>&1
eval_tap $? 379 'SimultaneousLoginV4' test.out

#- 380 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge 'GIi1SZlZDlAO5wHl' \
    --codeChallengeMethod 'plain' \
    --additionalData 'eHJ3CIh1y2VTm7wA' \
    --clientId '9AVjcku09gWWO6Vn' \
    --clientSecret 'LHrBm4tH3CliMi1R' \
    --code '3BvOZUUOawkjpmxH' \
    --codeVerifier 'Le8NUJL8CtGuEZ6V' \
    --extendNamespace '7B9swV99BsOMJP4r' \
    --extendExp 'false' \
    --loginQueueTicket '1iQ0C3VVyrYNsjNW' \
    --password 'mjgE34IyI4PdZKHp' \
    --redirectUri '3sWfekzMdkpD78AE' \
    --refreshToken 'mVBUCxozxNqF2c2D' \
    --username 'e49fvbJYq9i3y1N1' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 380 'TokenGrantV4' test.out

#- 381 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'OJ7ixyx1iB8NCyAI' \
    --code 'uoMt6LBOPmRENfa4' \
    > test.out 2>&1
eval_tap $? 381 'RequestTargetTokenResponseV4' test.out

#- 382 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'ccFgFSXroT0isein' \
    --rawPUID 'false' \
    --body '{"platformUserIds": ["7QLkMHS2i0Zxq1zV", "h4z5SSuQLfXcgEn1", "qNq4CryTwSFeR76N"]}' \
    > test.out 2>&1
eval_tap $? 382 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 383 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "WENsSFn7V4gFHC9R", "policyId": "Y02cFX9WCW9oXJrt", "policyVersionId": "qCSKWAQ6IlFAPasJ"}, {"isAccepted": false, "localizedPolicyVersionId": "EYLOexgGaC5cGnsX", "policyId": "GcY3iFQ5gljvAkPh", "policyVersionId": "B6HEPKkX3qCWjxll"}, {"isAccepted": false, "localizedPolicyVersionId": "wkE6cQWwVy7QLZgE", "policyId": "mNTHcWvYtMwBPPic", "policyVersionId": "WgxWKPXxz4LNXu3W"}], "authType": "EMAILPASSWD", "country": "bCOoxReoZ2ck9vrS", "dateOfBirth": "zgoY62i1JAaddxZP", "displayName": "DXcLxPF6AY3IHfl1", "emailAddress": "RIf9IpUiZi8sbTyq", "password": "1wTMUR8LTSOWzDvw", "passwordMD5Sum": "ykcbgFOpXl7m6DRK", "uniqueDisplayName": "v5o7Ux7qfbSbJjUx", "username": "lhn2fsNJNnV02CxM", "verified": false}' \
    > test.out 2>&1
eval_tap $? 383 'PublicCreateTestUserV4' test.out

#- 384 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "FuF5fxTRyeMjay2p", "policyId": "VYElTP9DJvXeTvCU", "policyVersionId": "r168I9L4hBlHLMlU"}, {"isAccepted": false, "localizedPolicyVersionId": "fwVJuHwew6Y2EtU1", "policyId": "p34UkVqyO7o9Jday", "policyVersionId": "gjClhbMRz6qKU6KY"}, {"isAccepted": true, "localizedPolicyVersionId": "dZ3ZExPwxgggVoaI", "policyId": "TSkdjYWQ23F2hvUQ", "policyVersionId": "kAQXY8biGr24I9q5"}], "authType": "EMAILPASSWD", "code": "iFJJ371kgSiiEd5C", "country": "1KVsXffef5ckpkpr", "dateOfBirth": "cc435M82ClsMKhR9", "displayName": "HviPXpTr8hJ5yVj3", "emailAddress": "a9mdHkiYXXct6fFa", "password": "urkVV1eeEFJrCJ5h", "passwordMD5Sum": "mt06sDsfDqM8G4SZ", "reachMinimumAge": false, "uniqueDisplayName": "HmjuoaE1lqk2WQMM", "username": "fOj23OlQa9nWr9RV"}' \
    > test.out 2>&1
eval_tap $? 384 'PublicCreateUserV4' test.out

#- 385 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'r60bF16ikmYm1hHx' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "UQgjE4O50y8CfRQH", "policyId": "0kr2m098p8YZ2VfG", "policyVersionId": "g84SFgS4ySI2dbx6"}, {"isAccepted": true, "localizedPolicyVersionId": "QzZXvMkpAS8bobBG", "policyId": "zxAqDqc4ZS6BFVNv", "policyVersionId": "SfJSzXUSHg6Anr1A"}, {"isAccepted": true, "localizedPolicyVersionId": "SFgpYUIAvpNWc6s5", "policyId": "dzBk1NDbnpsN9HhS", "policyVersionId": "8ynfgkMuLZnxi1l2"}], "authType": "EMAILPASSWD", "code": "hTXXEPdESCHn74gy", "country": "dxujfx4ThXT4Kk2Q", "dateOfBirth": "TT4MH8SbQmztlQtr", "displayName": "ueXTCovj739MjD5p", "emailAddress": "s1pDofvVaINyaqxl", "password": "yho6k73C2nJj4fRR", "passwordMD5Sum": "Pws07DaZazfdBq9i", "reachMinimumAge": false, "uniqueDisplayName": "AoJ7QBxAeMBZ6l6Y", "username": "nl2jjcqqmO6FxWEQ"}' \
    > test.out 2>&1
eval_tap $? 385 'CreateUserFromInvitationV4' test.out

#- 386 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "GkeFAjhbFYLwW4ke", "country": "gbhO5BsqqzODL9lU", "dateOfBirth": "Of9qqzgwGb3qMQl0", "displayName": "FVxXCxrBRsZUmSWx", "languageTag": "6ZBy5jTsJuhxvC2e", "uniqueDisplayName": "xcNngpULFEgL3MHt", "userName": "2GWeRyWgep3OxZc7"}' \
    > test.out 2>&1
eval_tap $? 386 'PublicUpdateUserV4' test.out

#- 387 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "GrWBZdqPtkGWuwKg", "emailAddress": "jCFClV9PaeD5eOCN"}' \
    > test.out 2>&1
eval_tap $? 387 'PublicUpdateUserEmailAddressV4' test.out

#- 388 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "2gw3nKZnfWw4twmf", "country": "YIBKwntNbnMHhXhA", "dateOfBirth": "HjHBgzhClL7NEHIb", "displayName": "gCQChIpG52bSnzGp", "emailAddress": "gcHxXBUWNTHBWx9W", "password": "Wo61dECgRsY9s76W", "reachMinimumAge": false, "uniqueDisplayName": "vUTD2hk0MFjqY2fm", "username": "lDZyCfL7sA0koYVa", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 388 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 389 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "wd62kBY44sAcMBOT", "password": "qWP83nuhnTLA7evK", "username": "hd5rf2FuFAG4DbLM"}' \
    > test.out 2>&1
eval_tap $? 389 'PublicUpgradeHeadlessAccountV4' test.out

#- 390 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"mfaToken": "ejXxmMqnuNiuo4d3"}' \
    > test.out 2>&1
eval_tap $? 390 'PublicDisableMyAuthenticatorV4' test.out

#- 391 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'vpQtFofPUkDFdvzX' \
    > test.out 2>&1
eval_tap $? 391 'PublicEnableMyAuthenticatorV4' test.out

#- 392 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 392 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 393 PublicGetMyBackupCodesV4
eval_tap 0 393 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 394 PublicGenerateMyBackupCodesV4
eval_tap 0 394 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 395 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --body '{"mfaToken": "lO9TeatbiM1LyVvS"}' \
    > test.out 2>&1
eval_tap $? 395 'PublicDisableMyBackupCodesV4' test.out

#- 396 PublicDownloadMyBackupCodesV4
eval_tap 0 396 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 397 PublicEnableMyBackupCodesV4
eval_tap 0 397 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 398 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'e7YpeH7cQaIXL9Zx' \
    > test.out 2>&1
eval_tap $? 398 'PublicGetBackupCodesV4' test.out

#- 399 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'aeFbauivp5od5GpS' \
    > test.out 2>&1
eval_tap $? 399 'PublicGenerateBackupCodesV4' test.out

#- 400 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'tqqClcCZNtK8iw94' \
    > test.out 2>&1
eval_tap $? 400 'PublicEnableBackupCodesV4' test.out

#- 401 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code 'FqRfeOd7TBoVhEa9' \
    --factor 'RHLe01ffHo1R9Yqf' \
    > test.out 2>&1
eval_tap $? 401 'PublicChallengeMyMFAV4' test.out

#- 402 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 402 'PublicRemoveTrustedDeviceV4' test.out

#- 403 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    --action 'qOXDaRqV9zYBvRcc' \
    --languageTag 'M4vRNk4Ys7gv7xKF' \
    > test.out 2>&1
eval_tap $? 403 'PublicSendMyMFAEmailCodeV4' test.out

#- 404 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"mfaToken": "W1QLjBVmDbceLhr8"}' \
    > test.out 2>&1
eval_tap $? 404 'PublicDisableMyEmailV4' test.out

#- 405 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'i6bmDD1rCQ9hmYGD' \
    > test.out 2>&1
eval_tap $? 405 'PublicEnableMyEmailV4' test.out

#- 406 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 406 'PublicGetMyEnabledFactorsV4' test.out

#- 407 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'ckkOViLP3Pqoir7i' \
    > test.out 2>&1
eval_tap $? 407 'PublicMakeFactorMyDefaultV4' test.out

#- 408 PublicGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam publicGetMyOwnMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 408 'PublicGetMyOwnMFAStatusV4' test.out

#- 409 PublicGetMyMFAStatusV4
eval_tap 0 409 'PublicGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 410 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'wY2IqhTS4QxRhjdP' \
    > test.out 2>&1
eval_tap $? 410 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 411 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "o4w7Z44N8gcjvzQf", "emailAddress": "xLrv3JfCPq9IPOoY", "languageTag": "FvGPhA4uqmuyIfjk", "namespace": "cGTKDZ5JeVKNpMbL", "namespaceDisplayName": "Raju51L25dhaSVy3"}' \
    > test.out 2>&1
eval_tap $? 411 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE