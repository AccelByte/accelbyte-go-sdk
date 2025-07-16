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
    --excludePermissions 'true' \
    > test.out 2>&1
eval_tap $? 108 'AdminListClientAvailablePermissions' test.out

#- 109 AdminUpdateAvailablePermissionsByModule
samples/cli/sample-apps Iam adminUpdateAvailablePermissionsByModule \
    --forceDelete 'false' \
    --body '{"modules": [{"docLink": "PK9zwkWJq0umuYYj", "groups": [{"group": "wCweCOxwiiJzSrWe", "groupId": "cGbIfiQlLdlTb9oS", "permissions": [{"allowedActions": [52, 54, 78], "resource": "JzWQEkMc4HtZsPWa"}, {"allowedActions": [51, 40, 39], "resource": "DfinDG9zoGpJAh7Q"}, {"allowedActions": [11, 18, 40], "resource": "jeTN0hxqx8gKehvo"}]}, {"group": "Xj1urAhus8Yiew1n", "groupId": "BOx889soOV6CsOg7", "permissions": [{"allowedActions": [80, 15, 0], "resource": "po8cQjaBaCn9mlZX"}, {"allowedActions": [91, 90, 88], "resource": "ZK2NdzS0QCYgykYY"}, {"allowedActions": [67, 17, 96], "resource": "sxBrHmputEBCAd8p"}]}, {"group": "t178LbQaMeXtWOhb", "groupId": "HroR2d1XoBc6ZtQY", "permissions": [{"allowedActions": [24, 12, 36], "resource": "02YJeQ7E86ejHTbY"}, {"allowedActions": [49, 90, 26], "resource": "cd2mk65bHlJP3tJt"}, {"allowedActions": [8, 90, 3], "resource": "kwxr2UJSrwWOzpMN"}]}], "module": "kQsbgu0sYGuqJB0O", "moduleId": "unDApqyieL4bCcXo"}, {"docLink": "tYT49JnmSLLPyN0x", "groups": [{"group": "gEphdMNrm0iQF9pU", "groupId": "onyP6M1h2l6r7V5u", "permissions": [{"allowedActions": [84, 65, 57], "resource": "qHFip4NYw6ICefYV"}, {"allowedActions": [92, 47, 99], "resource": "pcJ7phNl9SfY5QaN"}, {"allowedActions": [54, 81, 45], "resource": "Az1Bp42p120hpoW3"}]}, {"group": "H3fc1WdabPT0pWzp", "groupId": "7mYV0s8mqrixyGL0", "permissions": [{"allowedActions": [98, 29, 49], "resource": "0hoUSnMOlDK8HWqT"}, {"allowedActions": [31, 40, 38], "resource": "UPytMNXP8tuNDZQz"}, {"allowedActions": [77, 81, 8], "resource": "PJyFWP6zolFDtJwc"}]}, {"group": "JsrDMNFjXtdybPsB", "groupId": "apqyrRfLoP0rcQla", "permissions": [{"allowedActions": [76, 40, 75], "resource": "a8EoLc5JHaCDRsVC"}, {"allowedActions": [29, 98, 41], "resource": "rQuaZ3msq7iCC58g"}, {"allowedActions": [95, 5, 65], "resource": "ABRco1nT7rDBjQ1y"}]}], "module": "1fRedY9y80zJaBsY", "moduleId": "WACGapI2c5TqjpRY"}, {"docLink": "SzejtwfCFOD8x6tV", "groups": [{"group": "Se8n6VGYjawWTcD0", "groupId": "kGKhrbCvBvceZKhL", "permissions": [{"allowedActions": [46, 73, 89], "resource": "C7AD0DPb84K7ZbTd"}, {"allowedActions": [34, 11, 47], "resource": "I36rExsB19CdX42d"}, {"allowedActions": [69, 18, 34], "resource": "LIkz4pm0wMiOcmft"}]}, {"group": "xRIlICqC5wfpPMmP", "groupId": "NVPg9lkHIucQphXv", "permissions": [{"allowedActions": [56, 95, 59], "resource": "keju0avh0OpXq7Jt"}, {"allowedActions": [8, 27, 60], "resource": "03GR0ifmXpblji1c"}, {"allowedActions": [29, 70, 52], "resource": "of3SWBRSU55xbQnc"}]}, {"group": "q5QjUty7gyBSuZTe", "groupId": "HSFh8aYwqefjbG52", "permissions": [{"allowedActions": [14, 71, 84], "resource": "tq297itQxmMMcjHa"}, {"allowedActions": [57, 53, 18], "resource": "N6T4G3elkMxbMgW0"}, {"allowedActions": [14, 66, 72], "resource": "5M8JdIajZyHoNhN5"}]}], "module": "FbIH562fxEuPG2Sr", "moduleId": "sItYBKbUsCnwc2Ci"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'false' \
    --body '{"groupId": "fMku0jPeQUukw20w", "moduleId": "OimF9KJR3qcqGStU"}' \
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
    --body '[{"field": "kkiDF1NC3XOf6vLd", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["F4xZaW4kSmEEul4H", "Zr992VNGJWmTFXue", "QcblyYKDOhVvKpBG"], "preferRegex": false, "regex": "Et5bx7ULMFQiaTy5"}, "blockedWord": ["VrgdGHHGkiN66vSW", "IoYLAaHwgnkvsKBF", "aE9sMfJCmEcmh0oo"], "description": [{"language": "odXLOSyAo9oQamCR", "message": ["ynA4elXCRelcoYzV", "zHaFb5vJ0gxF3Ojo", "KbwlelmG3aRZmyzn"]}, {"language": "tsNrScLeDLI1NGQs", "message": ["A0l31Ms8VoB6474H", "KJJfSuqRPr9LDwnz", "hrYDmT8sQfbOshJm"]}, {"language": "OWppoaMcTRn9iSXb", "message": ["vRcrTV5UwRGtFdYy", "4chEiGafkpmoppO9", "vRwItWELC4v19omD"]}], "isCustomRegex": true, "letterCase": "LskS2sm8aO55zzVi", "maxLength": 16, "maxRepeatingAlphaNum": 81, "maxRepeatingSpecialCharacter": 36, "minCharType": 49, "minLength": 90, "profanityFilter": "Eqw547u9ias0fTqr", "regex": "km7ZQtlekzl54H2Q", "specialCharacterLocation": "mtEc0qMHAJK0OBkV", "specialCharacters": ["A3e7Yfs2PIUG9Xr4", "dHtSpZHVaBNObxrF", "iRJaAbfHtAB1Mq45"]}}, {"field": "1XVOkhc9I9qOMoJp", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["duOesU96RKEM5DO1", "o1YxpfalHTJhTM0N", "k71BSnVviNq4v0PS"], "preferRegex": true, "regex": "cnJwxPpOVu0STkwr"}, "blockedWord": ["Zw1TUI1z6J8rAsek", "0NdTshk6JS6m3SLx", "UPj76hmBhy3NFx9p"], "description": [{"language": "Qk5V9YEzeVlWwUtr", "message": ["Ttg0x7nudMrRxT2r", "PDKfCFrPADx7dOSp", "CevU0hiHJsLI6JFo"]}, {"language": "M4bI6gLhEcp4cLKV", "message": ["PNtICSVT32LPJo4g", "NrbTPq8N7Jn80Lmo", "jvjgwD4VZtp27wWK"]}, {"language": "uuA4ZQjyy5FiD399", "message": ["3OVXKjnkYiQpv1ze", "MMmAxMfe4KZ8d6qB", "RLmT3SNyKd6qCD8B"]}], "isCustomRegex": false, "letterCase": "thbQHQxTIHJXFDaz", "maxLength": 10, "maxRepeatingAlphaNum": 26, "maxRepeatingSpecialCharacter": 1, "minCharType": 52, "minLength": 69, "profanityFilter": "ZBl76ZvN9G7xsFhC", "regex": "CZbxDnyoKZ10Gh0P", "specialCharacterLocation": "lFJZtVJcV3AwviLB", "specialCharacters": ["rWJcWLCiLBBMJQ6t", "IYolREypchM28uGu", "obH4Qf3TW9kDavBt"]}}, {"field": "i16VAZjziT8jRkUy", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["psfh1RzWdrDvh1yR", "FCidMupSqY0kOf2F", "yzHOQiDLFY4JBhom"], "preferRegex": true, "regex": "xJ1HfgjfPwRKrHRX"}, "blockedWord": ["UbGsFvidDYEVV3uq", "qYOPDNKzK94TnV7q", "bkLeAKdpkvbKQyiN"], "description": [{"language": "bjA0BpxVl4JeNpAN", "message": ["6aOjfG8yKCkLjgpk", "HtbEiEBv1ZEBBfA1", "SYSHj3DftWraEGN7"]}, {"language": "9TOX376t5LKxSmeL", "message": ["10EuWKCE60ai4Xf1", "zAhYpU15znUqeXWo", "oEWmLEIMMB6lyoUq"]}, {"language": "rM2r0FsdzaPBW8ql", "message": ["RDa6MKpBEsFy5S5q", "FQZBscR0glYOZXF3", "XyJ5YhDGLHoYH498"]}], "isCustomRegex": true, "letterCase": "lBPMxgV2ZGYkYtJa", "maxLength": 46, "maxRepeatingAlphaNum": 64, "maxRepeatingSpecialCharacter": 40, "minCharType": 97, "minLength": 84, "profanityFilter": "D04JrVGzaeJx1xhj", "regex": "IGl5OxehN23xrNg6", "specialCharacterLocation": "JKTprJxSGQvKK5Fb", "specialCharacters": ["clu7QzBm15mTITjm", "Nqmvlwa0b9qPaCHt", "DG3zsYnQYXx4s0ks"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'Q5eikFBt7RjKGl7F' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'Nlzj6AAAtksFBbFN' \
    --before 'zQNa08RL1waffTC3' \
    --endDate 'fU1e0CKTESptNLhi' \
    --limit '70' \
    --query 'i0m90moV2RrcfKLK' \
    --roleId 'zlFtl3ojPz4XV3GJ' \
    --startDate '2rHP9vWJbk5yIZsz' \
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
    --body '{"ageRestriction": 95, "enable": true}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'XKtKHHnTEmmLvkos' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 77}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'GvOwrbZxUOwlb5Z1' \
    --limit '22' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "c0UfSoGu0DqJ93j7", "comment": "rC2tLUJBWZFKGjY5", "endDate": "NR0Drp9p72EcZBoO", "reason": "yaEm4CxWEMYnm1p5", "skipNotif": false, "userIds": ["3cFFlp3rgx2LQapx", "H9KEvNHrssbOh8wu", "nz1qRQv3N4KoHwb2"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "WEdFgxLHmFmyXVoI", "userId": "14xeNPYLuUSLDIH4"}, {"banId": "26f78jE5KxieZO7C", "userId": "dsFEbZZzFZTrHWY0"}, {"banId": "Fh0uYxCCgRfxCgHZ", "userId": "oF74bowrMawihV9U"}]}' \
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
    --clientId '7pvjfZblJF64Nwsm' \
    --clientName '9pxG22o936JP1VFE' \
    --clientType 'BewfPVFucb2UCa7Q' \
    --limit '23' \
    --offset '25' \
    --skipLoginQueue 'false' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["oIZHcbyIy5UBrc2E", "nD1EbjXNLVaJnFiz", "QrOhuShFEqE3f3RN"], "clientUpdateRequest": {"audiences": ["S3zX33GzhHpFXhl3", "Y5E65FaOg9EhsAGZ", "tiAoKTPdb9rOEkjn"], "baseUri": "ZqChN6vK7EwXnHql", "clientName": "UHZuyuCWYKvPRDj9", "clientPermissions": [{"action": 13, "resource": "mTxQyPvIgXzSiMNx", "schedAction": 100, "schedCron": "tWhceVucUkSMSNuJ", "schedRange": ["1MUsBdOsUqvOmDHr", "FyMV1GirBQzibpPB", "OFM1DdOOA5roSzYF"]}, {"action": 92, "resource": "3UbpXeeYkbRUsfx0", "schedAction": 36, "schedCron": "iOHLknp1DxWeK8tR", "schedRange": ["AGsPyZw8xLVm8HwN", "BwtxQAuNXqEjAIMf", "29Y4PVJEGGkWsd5z"]}, {"action": 76, "resource": "oE8x2jAPbLrZlf9q", "schedAction": 40, "schedCron": "qjtKi2T4oq03oYfO", "schedRange": ["s34X2o6nFU7Xiu6A", "ocwmwhs8Du1aragD", "IBHDLYAW1R944Tjv"]}], "clientPlatform": "ApOYqzARx4IdvYAx", "deletable": true, "description": "KpdbLna8x97GMZlf", "modulePermissions": [{"moduleId": "fBT0ipMJKN4RRssN", "selectedGroups": [{"groupId": "8Py1O56GGsVSGS1Y", "selectedActions": [88, 58, 10]}, {"groupId": "KyDOzMOhiipl32kn", "selectedActions": [3, 52, 33]}, {"groupId": "kejJKiE2stB1AQUJ", "selectedActions": [44, 43, 32]}]}, {"moduleId": "OIiwWRDWknqcvs7B", "selectedGroups": [{"groupId": "jtDHwOvtzp6xjWC5", "selectedActions": [92, 29, 58]}, {"groupId": "8Rlol4E1MrpwREpR", "selectedActions": [60, 28, 83]}, {"groupId": "rmOlYSIzr2TswgZa", "selectedActions": [77, 23, 61]}]}, {"moduleId": "SQfxZQz71PJNid55", "selectedGroups": [{"groupId": "mWcGyxTtGCXxiLoL", "selectedActions": [59, 47, 75]}, {"groupId": "83PZ3kf2NpERZ1bN", "selectedActions": [23, 65, 41]}, {"groupId": "1xu4oiyIoLqcEtcb", "selectedActions": [93, 6, 4]}]}], "namespace": "xJXx4uMop8Q0TFxf", "oauthAccessTokenExpiration": 85, "oauthAccessTokenExpirationTimeUnit": "lEPnBrlQooyCDspY", "oauthRefreshTokenExpiration": 62, "oauthRefreshTokenExpirationTimeUnit": "Vyjvk1hk6kHsuILt", "redirectUri": "gZlUXWje8UMT0seH", "scopes": ["z4CVtpWUQIwnTcFl", "xufRc1xg9Mo0GnHz", "KQK0rS6rEP8MlHW9"], "skipLoginQueue": true, "twoFactorEnabled": true}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["Tqi38a7R3ugRFd00", "i27V69IKPgNZxG3h", "w2v7l7fQBnIHmbRX"], "baseUri": "s1Kh3sUC3UHGPxxD", "clientId": "9oxrB3LZ1fum796H", "clientName": "jhEtm4tX7X2v6nmR", "clientPermissions": [{"action": 67, "resource": "bXeOgUv1O0aPkW4r", "schedAction": 14, "schedCron": "1D31vFERwAUWWdZC", "schedRange": ["ALHbQWZrf6HLHq4y", "q70Qfs8E65rRJLsb", "TeBVQroT5AZSixtY"]}, {"action": 35, "resource": "5nsRbe3HWI8kIo8F", "schedAction": 70, "schedCron": "MMv6U8Stkvgqy9mK", "schedRange": ["gYBhPYZzBPkKVdRR", "WnxBH5XK19cTPgwq", "5hYuarhVBxh4VHsK"]}, {"action": 24, "resource": "QwmlY1HskCaOq3ha", "schedAction": 18, "schedCron": "kD7eTz1yULypz7mt", "schedRange": ["Sejp5dmxcky40kMO", "Sz3i5JQnvKUAHGNi", "QRiwPeih8LeVfAku"]}], "clientPlatform": "FBbrsk8ohqkp1B3h", "deletable": true, "description": "TSgEb6qeDj5aapAk", "modulePermissions": [{"moduleId": "0NXqvdmKIX8XdgiT", "selectedGroups": [{"groupId": "MHNm1tBGMfvED9rL", "selectedActions": [61, 99, 49]}, {"groupId": "dExIzN7vdN0O0wJH", "selectedActions": [97, 50, 16]}, {"groupId": "uEFCofS70WkvTeCE", "selectedActions": [50, 89, 96]}]}, {"moduleId": "9ZghX4O7dixKXzi3", "selectedGroups": [{"groupId": "cVtdr3admwzR9JCB", "selectedActions": [11, 27, 22]}, {"groupId": "1VSXRVGwhlHSvA6n", "selectedActions": [39, 19, 74]}, {"groupId": "7CO2Oe8tqlycrkEs", "selectedActions": [94, 31, 82]}]}, {"moduleId": "y7LcQ9HYi3EJ3vsv", "selectedGroups": [{"groupId": "kbNDEzWe1AnDcR5e", "selectedActions": [90, 90, 57]}, {"groupId": "LDQM4FjQ2pvBr3Kd", "selectedActions": [60, 56, 0]}, {"groupId": "z122cQ6m5KjSaR3e", "selectedActions": [38, 45, 83]}]}], "namespace": "F8f9NQFlsokBhXx5", "oauthAccessTokenExpiration": 23, "oauthAccessTokenExpirationTimeUnit": "NHFbmVOVYEQiJGCb", "oauthClientType": "yWma2tteG2PdzakA", "oauthRefreshTokenExpiration": 90, "oauthRefreshTokenExpirationTimeUnit": "2Fm0k6cs9t0pWYcP", "parentNamespace": "MUcuXieyRk4CoaKN", "redirectUri": "WXwI0BWi9AJdKheW", "scopes": ["mtduOpdnDJ7m1DlA", "xV2mk2yQrZ0BQvfv", "oHV0ujcoUQxI18Vx"], "secret": "A2rEZFCzRvxdsnzZ", "skipLoginQueue": false, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'tBv1e1szzKZd3NrK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId '2nl2QVw9wZ2JWzYP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'nvYZZUg02KQFp8nE' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["xOgmKjbjLOnPv4rt", "JnSjiIwqVL97GFvr", "NNtjzuiCjXB8WEDs"], "baseUri": "F2O1o56HjxKb0y6V", "clientName": "uUoR6W7mXb641QtZ", "clientPermissions": [{"action": 79, "resource": "4vUEQ8pZoLhqXQV3", "schedAction": 29, "schedCron": "kMbt2UDcpOvBMDwL", "schedRange": ["OONmGAjrQgfstFUt", "Qe2MxpFKVS86DSyB", "ySLzX1Xn34pLKnDM"]}, {"action": 89, "resource": "5B6qUz3w6hZI0Kz6", "schedAction": 70, "schedCron": "Lnp44cTAjMwZVgAK", "schedRange": ["1gPutobDbSsbRay6", "teZztlzblALwXnWU", "T1jrCEGNBpZuRamX"]}, {"action": 34, "resource": "5LyeFx1Tvh4l9Coe", "schedAction": 79, "schedCron": "SKFz4AXO14Q4WGax", "schedRange": ["vyzCOHRCyeLDHooF", "xjzXsQTBuCbntFuy", "qj8HUYq0YKwOsPdV"]}], "clientPlatform": "fbhAcpWBgzi2eUS6", "deletable": true, "description": "CnMUOMpnrK1iCbvo", "modulePermissions": [{"moduleId": "erp4FqUy9YrVCbtU", "selectedGroups": [{"groupId": "CsNpQJn4OwPmTOkM", "selectedActions": [37, 72, 19]}, {"groupId": "L9PlJ7gYrgN9vM71", "selectedActions": [37, 27, 26]}, {"groupId": "xytgrABRcXb7CjH6", "selectedActions": [14, 3, 96]}]}, {"moduleId": "nDMYHqFrSUNHREIp", "selectedGroups": [{"groupId": "NP21jLvt1CyG1PLw", "selectedActions": [92, 76, 80]}, {"groupId": "Pbqtu8XBvkMAzURn", "selectedActions": [94, 90, 92]}, {"groupId": "voawL3ol8SRoby40", "selectedActions": [59, 18, 34]}]}, {"moduleId": "P63u4BCPx4jIIFu0", "selectedGroups": [{"groupId": "dZjHm4eXyhkEK8jD", "selectedActions": [71, 28, 88]}, {"groupId": "GuXWJx2I4I6A6XjM", "selectedActions": [88, 48, 99]}, {"groupId": "dExiw6B9zLnZjYTP", "selectedActions": [95, 23, 14]}]}], "namespace": "oUv02CcMQGqnC8VV", "oauthAccessTokenExpiration": 98, "oauthAccessTokenExpirationTimeUnit": "iUYItYOvGTTQKgCm", "oauthRefreshTokenExpiration": 83, "oauthRefreshTokenExpirationTimeUnit": "rzf7w1T1Mhn702I1", "redirectUri": "dVPnn5wLZyt93R7L", "scopes": ["qPwOA0Lqh8SGctpo", "YDkTvDDaRho9ygn3", "6V3LTQocDuhe2S1Q"], "skipLoginQueue": false, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'KMDmvh3P44Mw0xUl' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 72, "resource": "QYMjdkjaL3By5b0A"}, {"action": 70, "resource": "xaGHXAB1ZwG6vwrw"}, {"action": 7, "resource": "D7j1mS0WSFJsjdTZ"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'ZtEaWs3m0oUUbtc0' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 92, "resource": "nf0C3YSnEfbCZLVl"}, {"action": 97, "resource": "Jv45aiurAYz1HVtd"}, {"action": 15, "resource": "cc8P7K6QR5Q9zebA"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '7' \
    --clientId 'VYzcztVzj4JiQvpK' \
    --namespace $AB_NAMESPACE \
    --resource 'WeUVP5NnFP4MFqkM' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'Ioea0Lll9MOdXoLm' \
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
    --body '{"blacklist": ["BA7c5tio0pre8jxO", "JtCeQyrMVv3FLTum", "bY5AJSt9anG0cb7q"]}' \
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
    --body '{"active": false, "roleIds": ["6uHZQf2XxCTEhLKI", "prsYYByC9SUYO0al", "zMKhOPD0SeMhqaMF"]}' \
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
    --limit '72' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 141 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 142 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'jTrnKzVnVfkTEhJI' \
    > test.out 2>&1
eval_tap $? 142 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 143 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Y4MXKpjdKo924EIZ' \
    --body '{"ACSURL": "MRlnuJrVI7Wz1Vtd", "AWSCognitoRegion": "eEaP0YvyM3qSPR80", "AWSCognitoUserPool": "CwxgwCZX0nPBNZq6", "AllowedClients": ["Xl6l4lrinHSAnOCm", "PuYZCXesprbjU2vK", "bTsunTGE5zBzZFhB"], "AppId": "2mCMbldo5Nv1QeKu", "AuthorizationEndpoint": "9i6fDIp3KmOjKDuQ", "ClientId": "bUjeAUAKwcUMexAp", "EmptyStrFieldList": ["f3WTgNeC3bXKBgr0", "rqcVnZeFcnfGd47a", "cnJH5Jz0CMlDhkEl"], "EnableServerLicenseValidation": false, "Environment": "qeuoxC5X2tI6gr2o", "FederationMetadataURL": "eUMAhwUPczCCVcsa", "GenericOauthFlow": false, "IncludePUID": false, "IsActive": true, "Issuer": "xrv6I26fpIKdbPlc", "JWKSEndpoint": "MBO2QR05egiNwxSb", "KeyID": "KOhVRZnirxxFDTix", "LogoURL": "FbiXhDEIFuY6FY7x", "NetflixCertificates": {"encryptedPrivateKey": "iG5rwbHzeNxPRXeC", "encryptedPrivateKeyName": "ya3HbhHOcpp6MUiz", "publicCertificate": "6WOjgSceJaTCBftC", "publicCertificateName": "ggu8fJ6VX6fdEytr", "rootCertificate": "uL0Mo3lqpCRUD6iL", "rootCertificateName": "TmMfu2kUidfAPjIq"}, "OrganizationId": "8FddRAIOX4D0WklW", "PlatformName": "c7A63iF7BkOj0ttQ", "PrivateKey": "dcGLrwwuics38lMb", "RedirectUri": "TTmK4yEKadHXqemj", "RegisteredDomains": [{"affectedClientIDs": ["E05GlUrZdCTz7EMC", "x6HMqBez8MzYh33j", "TfZPuEMVrmYM2cF2"], "domain": "uJOQjtchbfaginIf", "namespaces": ["1WqXWc0yzQ0yDnpD", "oxxCt0waTGkcgCi8", "JXLtAsuoeHNutgfA"], "roleId": "ZPJIPFTewGtCE1tL", "ssoCfg": {"googleKey": {"5FQtUfJBAmlqlgmz": {}, "RerKaRN8NYmD3i77": {}, "7MjgXQXTKxKHDpzV": {}}, "groupConfigs": [{"assignNamespaces": ["psOrBw7JB9YaZLwt", "qIzdg9IsqZlIwLnT", "oNOjJEIrwOcS3HWt"], "group": "1GNTdow89cU21fl4", "roleId": "i94OPXO9daWrq3lE"}, {"assignNamespaces": ["mI0kjnsehAzpc6yG", "L5xR7kfxOTKdfVcj", "aViO9jObFCOGkfUI"], "group": "zspcHuKVZhhizxxd", "roleId": "2jJgrq5msZR26RyI"}, {"assignNamespaces": ["F4SBpZmxhvEAf0De", "OBH5I875hHRA4mES", "q69UMEar0QZ2y51n"], "group": "LFBm6STUG0dtvhmn", "roleId": "lwbh0lpEdRYYxJjB"}]}}, {"affectedClientIDs": ["XAk1i9sZFdQ4fE9g", "kMFri2ARJlGamWsC", "P5cPgNgynKXCEDwF"], "domain": "JVOdGYeEdnwSoDqn", "namespaces": ["CcsAUZX6Nl8gZzmp", "2a4rJ9KT8kwxL56J", "Pir7z9xFmEtOZyyd"], "roleId": "d13cfuJ97DH00mFx", "ssoCfg": {"googleKey": {"wIe5fB0uFLQQPEsf": {}, "Op7szpgV2yRguMW8": {}, "7WHdkQw4QNsV8Pee": {}}, "groupConfigs": [{"assignNamespaces": ["celM6rhHHpXFRS7W", "O6RYyI1RBEI7PnID", "FIEWsf5ccW9Gp9he"], "group": "DkOkWgWu7BOOw3MN", "roleId": "gvGAeacREKhgSW9x"}, {"assignNamespaces": ["Ke0satcoW0nzZhH8", "v4ORGutkNETrFnlJ", "yi2dpkLZZ88sJvYn"], "group": "0PV8Qw8OQf6MdkjV", "roleId": "Fvu1R7QsFnmlnEcQ"}, {"assignNamespaces": ["h5PRWMOaCQVjjDhu", "66eBxSfX7pceD8UL", "wSy16E32Mqo9mznl"], "group": "U5o8eud8DIIHRhUL", "roleId": "Q2M1ybBTgF7W1AnM"}]}}, {"affectedClientIDs": ["Ros2FLzaYHov3Pwq", "7eF4ZMu6HmF92hWu", "71T7SmBfPmVgVoO4"], "domain": "8I5foVHDbGioSiCv", "namespaces": ["TjWEXmEPk7VvQ7Cz", "o3Enpduuxe0KpMo7", "nZMZhXyGFe7jgsft"], "roleId": "fXm5hH4bxIZmUBpx", "ssoCfg": {"googleKey": {"NSedulozkMXlyopz": {}, "Od9G7aAmotGDO4rY": {}, "sO7nfnuCoOVTQ9mk": {}}, "groupConfigs": [{"assignNamespaces": ["2s8ZRUj3xHQTuWPJ", "ODB7fxHjPHm9kFox", "ngayoSSojptYJw3T"], "group": "gNsI2qhddnbub4PP", "roleId": "YIUv7etNOLZLuqVQ"}, {"assignNamespaces": ["JBPPbAHB9lr8XypO", "VAEx4iHLjuFLMyC3", "b1WYMUT1QjSCJY6f"], "group": "ncV8zCHZG85aUATQ", "roleId": "WMZEFe7FVUCwfzr7"}, {"assignNamespaces": ["sVaOjtIYDzUwOjEH", "VR8S2Uw3v2nD1zwN", "NsvTMH15cMrNNewk"], "group": "XkveGgCQpIL2goT6", "roleId": "FgRzPTglLSVIAp29"}]}}], "RelyingParty": "ylsQrQyMSQQ36SSc", "SandboxId": "h405ekJ3H8f4DY66", "Secret": "AbHzeQb6a4kGhSJ8", "TeamID": "SaSvo7MZVpkPBqdx", "TokenAuthenticationType": "q94xwuD1vEvNenyX", "TokenClaimsMapping": {"VkqPWMXAHZaRh5wV": "pGVxNcKDogyeF0cj", "T7L8v71UhrgH3gZR": "MgPr7FxFnOFVYK1y", "r8MlmySdfBgs2hJK": "TB4wk3Hm8ED5y3k5"}, "TokenEndpoint": "8tNTe1eyZFbz5AbJ", "UserInfoEndpoint": "3WwwrdrbLidbzYZm", "UserInfoHTTPMethod": "Gz0jYM8RPoHjymhQ", "googleAdminConsoleKey": "CqJe4JWXWVdQPlTo", "scopes": ["zhZH1ukE4X6eQ8hU", "nvEgHizKwMN3zMZx", "kEmhSpptcynmJM8P"]}' \
    > test.out 2>&1
eval_tap $? 143 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 144 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'h7USeOwFhfGFcd4U' \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 145 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'MQkJDMEnE3NuWq7d' \
    --body '{"ACSURL": "AojHVBJxtATaeqAn", "AWSCognitoRegion": "NoApwLk3gLxFLEib", "AWSCognitoUserPool": "fVzZk9KfejKHqM8E", "AllowedClients": ["vcmEPpOi6GNwPFZ1", "UkNhYULoQ7moPB9h", "GFScyeW0X9G3uKFV"], "AppId": "Abqf920XIPJXAAhX", "AuthorizationEndpoint": "qj3afhWrMx3QvbTi", "ClientId": "5spZjwPPa0MO6Ly8", "EmptyStrFieldList": ["8pWEh4PuzIGT0TAe", "nCCUBA6j6ESxTpoj", "KjX5uvF2pcd5jqF8"], "EnableServerLicenseValidation": false, "Environment": "LciJCB3Ue2I2M9PP", "FederationMetadataURL": "wq03IMKQLbMLPvzm", "GenericOauthFlow": false, "IncludePUID": false, "IsActive": true, "Issuer": "7AWU46F0YQaoj37g", "JWKSEndpoint": "oGfzr5BhvNYH8xEn", "KeyID": "hKC36FjYN2klVqFk", "LogoURL": "4topjW0eDpzaIQYc", "NetflixCertificates": {"encryptedPrivateKey": "pyTEAcGVSnJWYp2s", "encryptedPrivateKeyName": "AdKVKUIi39HVG17m", "publicCertificate": "fw4x48gYHotp76rN", "publicCertificateName": "o5L0EUL70z6eLjHE", "rootCertificate": "UxyGj82nP3hTG5hE", "rootCertificateName": "Diea7c0jHbXn6zfn"}, "OrganizationId": "AJUKRsttdtf5Yiff", "PlatformName": "crC88L65sRivfSOz", "PrivateKey": "zK0mZiCTlfBdtg8K", "RedirectUri": "j9CCbu691rNJxUy7", "RegisteredDomains": [{"affectedClientIDs": ["qQtTTiMJsAk8nMd5", "G3ZDwkNOQuGrgyUs", "XJAdgXuHESr3W7RS"], "domain": "IK9YvRySYF1o2cdq", "namespaces": ["D1I8wxArNLZG2up0", "VFZXmC1KTUyJ4EM1", "gIBOI7gvBHhQMeeB"], "roleId": "FG9GA24K6MdwIPBC", "ssoCfg": {"googleKey": {"F8Xb2ihvM5otoRLv": {}, "ORljNx4NMJWwzCAC": {}, "oRFAj8qGOOpAMZn7": {}}, "groupConfigs": [{"assignNamespaces": ["wFmjLVCRYO42n13l", "XYb5y33s4DmT4x57", "J7nYD3zUWw34ZdO6"], "group": "9FwYIflKKs0Y3gUv", "roleId": "WGmh8kdZDSyP1Xby"}, {"assignNamespaces": ["0RAKHO2wyvqIkCUE", "Ztttcji6cBVOzgzR", "pLmEt1g6Cx7w5CxI"], "group": "OIcwg1rwRgKAhTlB", "roleId": "yLHB6q0uxHQWbbIn"}, {"assignNamespaces": ["7U9g1cnpy9nui4WL", "yzAkHKLjAvqoqm0p", "gtZqrpRzUl6sGwnu"], "group": "h1WACOtVeGEc40cR", "roleId": "GZVNxAvvuf9xz9mM"}]}}, {"affectedClientIDs": ["hfgnhWU8siTeHJYC", "Oe02fPWf0UAhYCDk", "1IbdVnRSS8NYgfYe"], "domain": "GM7HGm29rT7KgOU9", "namespaces": ["l0OKN19lHAtjCVGl", "1HqaS1cZKjLWjo8p", "FW89upIZyjF5O9nd"], "roleId": "1gv5tuHGHVKgFCA1", "ssoCfg": {"googleKey": {"gso33vrYBBwdYqBa": {}, "hPJj8R9GjcmaC4TY": {}, "DLPnYySBLxevLwq6": {}}, "groupConfigs": [{"assignNamespaces": ["eoCOEaneG23j0sEf", "NA8s0NlWwK7iqbIH", "G3QiXJqnKHy1j0Tx"], "group": "qby6shtiZgyrbfPh", "roleId": "tzE92QBOoWZR4fVh"}, {"assignNamespaces": ["DyRPCyKrSGUrxkh8", "9tAYLW1DCO6Osuyw", "hDInX3s8PJeAjsF7"], "group": "kiErVARAElx7V3aA", "roleId": "O4DHxwFRbEZKnb3I"}, {"assignNamespaces": ["UqAyrBGIEvKKphV9", "tYSXFKawTtwf1dbT", "uIr9m0qBybeiZATJ"], "group": "VKmZtda06nP9nEzi", "roleId": "O6YICocHlGITnIGV"}]}}, {"affectedClientIDs": ["m8nBQp3EI9FEJ3xI", "yEnSf1At3Xhcgx9n", "yYmZ8tcPVt7ulTLO"], "domain": "bQ2TS4rHWTqdGkOS", "namespaces": ["4JMgfLaUYQDVW2uK", "F54doArGHxoCLEPB", "F0zFAbJSdEE2LeGH"], "roleId": "ujTIr5vPyWEeB4BI", "ssoCfg": {"googleKey": {"WTrsjmseYfNsNwt5": {}, "GJTFMUb1nvLCULJD": {}, "R75NhbRJ9EpbixSO": {}}, "groupConfigs": [{"assignNamespaces": ["0DgDOHDUdGNN1uhN", "fdejDzjKJ3tSRJ52", "cL3bc9uWBDJMUo67"], "group": "L839WSxyW6f1HIUi", "roleId": "kGAOBMEsEEuqMmwH"}, {"assignNamespaces": ["GulTXl716c8Hnbn8", "qQJgOY27Jh7q3aFV", "tCbQCJJzS90vZKLX"], "group": "6G4c5ASUQbbNIELG", "roleId": "I30dHHsoftjANNso"}, {"assignNamespaces": ["LZA8NWa9gZEXaUSO", "tAqH2GkOmpkjgdTA", "Jf2y8BrXgBd0nGCj"], "group": "k0P7NVRN7jUFCCzx", "roleId": "zYIzVssmQSgaL79i"}]}}], "RelyingParty": "wBeVks5kERN9BXXv", "SandboxId": "OrQedz7aCxJxU8sB", "Secret": "8uwL9ryOkEl71ysn", "TeamID": "zzazvGLajUMzPx4E", "TokenAuthenticationType": "YRg9MRnnI8btPJdG", "TokenClaimsMapping": {"sS6NTp2ux2NT3bVX": "MqQRk055vPxrZiq1", "po0TtWbNiznrCNh7": "rZHVLkPIqvL17Pec", "KG9idxVNgK5pgs15": "3sVu8t0rCzsQpfvO"}, "TokenEndpoint": "oIGVrhkOKIJ50xNl", "UserInfoEndpoint": "DthwB0r9yzDNTCbA", "UserInfoHTTPMethod": "gVpW2W1ZkF35zs1K", "googleAdminConsoleKey": "AzhubJCRWZDJKY4G", "scopes": ["tArCwYYcDfdPio12", "982a5xo5sFAOGLaf", "pyFZERf82DgL08ud"]}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 146 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'DFMxybJ4XsIYEgMI' \
    --body '{"affectedClientIDs": ["NaNgCFlnDQ2DYFWn", "dLra3tnVBppJEgqm", "87wJDn3Zm3G88c5M"], "assignedNamespaces": ["tt8HEUfd3UfSfprH", "IDFwrbjYRGdEzvGJ", "Vdq7zvHkBa0S7Lv1"], "domain": "74j5Aekrfz06z5MN", "roleId": "E4uP6Wjp65g8Rj4D", "ssoCfg": {"googleKey": {"ia3GiAxXr4YdVkcy": {}, "RsVpIMx4TFOfleeJ": {}, "he3lfV9nJYlxOmM9": {}}, "groupConfigs": [{"assignNamespaces": ["me0JXSqXDsqfsXw1", "hgJUwCeyAiHJ4iDr", "otxe0rLXZ7pBiXoa"], "group": "WHB0OyDWIbU5RgXW", "roleId": "qJ9I8SM2AXiEGJTT"}, {"assignNamespaces": ["dGsZABOnGVmfUGMK", "LU7yuBD8BAiknLEa", "3VMpcWhLI2gGHLRr"], "group": "13Zfq8LAWqRr46E5", "roleId": "zwzDbnmlwDLQCFRy"}, {"assignNamespaces": ["j3T1UsNA0DAyz5nK", "h3UzK2jDNTwD6KOI", "eWybsFYsCsIvQSpH"], "group": "Wy4xMbzdTDlnvyAl", "roleId": "pBP4I7tvBkin3ZAE"}]}}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 147 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'w6kk6f0A86JsZ2KP' \
    --body '{"domain": "rPTAl1eTQ8Lx1ZBe", "ssoGroups": ["71FjpiKsvIFKiWzB", "awCSsfnW8aHJU2ur", "zUQz8efvPu8O8nX2"]}' \
    > test.out 2>&1
eval_tap $? 147 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 148 PartialUpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam partialUpdateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'qGyLCP1Kllw22j1F' \
    --body '{"affectedClientIDs": ["ESEMyiBvuKNl6VXa", "oXWOeXqoa7FkbFsP", "OckpwKwxq4QRDFfQ"], "assignedNamespaces": ["cNRJFdvSsQTqaPnG", "WCyhS68FZGk58k2D", "dkg8PvlnUpEaiOsG"], "domain": "Coh2VwWDJjPbAsRj", "roleId": "V4toDYN6Y61s5hq7", "ssoCfg": {"googleKey": {"ymsrFtzrdL2EPs3o": {}, "y74jdi8PDA6XkVZX": {}, "L9mkZVTYY3WLCVxa": {}}, "groupConfigs": [{"assignNamespaces": ["6kyZyp4YMnU5PAu2", "EwzezeWPlj9dhTGI", "2f6ygjmvgvxExCCz"], "group": "0sRKeb1QAQ8g2vkZ", "roleId": "abRrmLgmcsPVCW3g"}, {"assignNamespaces": ["TJJg03m9kSWAM6Sw", "Hz2180EN4BmJJRq3", "ASIhzvmro8kgJr4C"], "group": "Hggr6tvc74cSVuKy", "roleId": "RpOWFgNBCTJ4XUl0"}, {"assignNamespaces": ["rqNnxBh3veXGt1MB", "ERH5HFSUwn9sdDTM", "BMYdeiGVcyXnMZAN"], "group": "YJ1K8GLt6iIu7fut", "roleId": "zB8SiCd3SJImX6y5"}]}}' \
    > test.out 2>&1
eval_tap $? 148 'PartialUpdateThirdPartyLoginPlatformDomainV3' test.out

#- 149 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '0o2ikwHHApQWcVZX' \
    > test.out 2>&1
eval_tap $? 149 'RetrieveSSOLoginPlatformCredential' test.out

#- 150 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '9dBga9Wmp91Ar4kS' \
    --body '{"acsUrl": "3XExxcvhUMSWsT9c", "apiKey": "reH2bw0Fn6KnOa0e", "appId": "ZcHTs9LRXHgWPC3o", "federationMetadataUrl": "n5P9sgOlPRKryGLY", "isActive": true, "redirectUri": "VU7eA1IjZ0QW3xv3", "secret": "x2yrIBw4qZGUAZZe", "ssoUrl": "SqN0o9EAxbGMAk9J"}' \
    > test.out 2>&1
eval_tap $? 150 'AddSSOLoginPlatformCredential' test.out

#- 151 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'cs2aFWnCHQLD7QII' \
    > test.out 2>&1
eval_tap $? 151 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 152 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'Kz0aLzlqZ6oM06tK' \
    --body '{"acsUrl": "K4RlHnX4ev1SmkBL", "apiKey": "Qr9SDncfbAgu5jGn", "appId": "0JpFtw8mWipYSwAi", "federationMetadataUrl": "ceSmV6TBlV1m9iTa", "isActive": true, "redirectUri": "sYEibqbMa7S3jU19", "secret": "HkfNzDGK3VpEGDQN", "ssoUrl": "hRHEhm0IDjNVfvNN"}' \
    > test.out 2>&1
eval_tap $? 152 'UpdateSSOPlatformCredential' test.out

#- 153 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Yy9FQMHdiutsV1Xy' \
    --rawPID 'false' \
    --rawPUID 'false' \
    --body '{"platformUserIds": ["HZzmMQtEJpby4g2k", "h4O6KLyA8o6xutvf", "hwdXXkT4iegHZeVk"]}' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 154 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'jpVmWOurdExkVPXi' \
    --platformUserId 'SSLEejFM1ofHojQ9' \
    --pidType 'yFr99DfLZtfDJNpS' \
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
    --field 'display_name' \
    --body '{"config": {"minimumAllowedInterval": 63}, "type": "SSuvZnGbmhjGib0H"}' \
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
    --body '{"additions": [{"actions": [94, 24, 57], "resource": "cn7aRAeRN0gO7YE7"}, {"actions": [95, 96, 86], "resource": "YWSWeiJ5wlnM7qh5"}, {"actions": [27, 23, 92], "resource": "KY0COS5KtoLtpaJJ"}], "exclusions": [{"actions": [73, 75, 24], "resource": "0IOK72Fd3GI65o3p"}, {"actions": [99, 59, 11], "resource": "bCbBbh12hcFhThbM"}, {"actions": [1, 49, 24], "resource": "AElwZZj3cZGxxmmu"}], "overrides": [{"actions": [87, 92, 63], "resource": "WSXCtno7uPgEqRjY"}, {"actions": [76, 84, 93], "resource": "m6JI6ru7w9bugUNA"}, {"actions": [75, 100, 14], "resource": "UcfHJavhO5SlmQ4W"}], "replacements": [{"replacement": {"actions": [96, 71, 74], "resource": "UtKl7LLeoNiFvj9M"}, "target": "RlL7UWAhbdBhfjzD"}, {"replacement": {"actions": [73, 62, 74], "resource": "t6dfZJwHZ12UycPa"}, "target": "6XBq7GbvgFg6CsmS"}, {"replacement": {"actions": [77, 65, 95], "resource": "TgMXqpfXeAoTmjcQ"}, "target": "7kDTKh8EN3m0RtGg"}]}' \
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
    --identity 'GAME_ADMIN' \
    --body '{"active": false}' \
    > test.out 2>&1
eval_tap $? 160 'AdminChangeRoleOverrideConfigStatusV3' test.out

#- 161 AdminGetRoleNamespacePermissionV3
samples/cli/sample-apps Iam adminGetRoleNamespacePermissionV3 \
    --namespace $AB_NAMESPACE \
    --roleId '7jCv1xE3NdHVnhU0' \
    > test.out 2>&1
eval_tap $? 161 'AdminGetRoleNamespacePermissionV3' test.out

#- 162 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'WizF4FryLaGorhUD' \
    --after '27' \
    --before '81' \
    --limit '69' \
    > test.out 2>&1
eval_tap $? 162 'GetAdminUsersByRoleIdV3' test.out

#- 163 AdminQueryTagV3
samples/cli/sample-apps Iam adminQueryTagV3 \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '59' \
    --tagName 'UST87ruhmTCy982R' \
    > test.out 2>&1
eval_tap $? 163 'AdminQueryTagV3' test.out

#- 164 AdminCreateTagV3
samples/cli/sample-apps Iam adminCreateTagV3 \
    --namespace $AB_NAMESPACE \
    --body '{"tagName": "JP1MoUQ3edELkund"}' \
    > test.out 2>&1
eval_tap $? 164 'AdminCreateTagV3' test.out

#- 165 AdminUpdateTagV3
samples/cli/sample-apps Iam adminUpdateTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId '1UVmezK0b9Vp6qFz' \
    --body '{"tagName": "rwuP6M4LZMILAcOB"}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateTagV3' test.out

#- 166 AdminDeleteTagV3
samples/cli/sample-apps Iam adminDeleteTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'UYVmcZNYbaAjNW5X' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteTagV3' test.out

#- 167 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'fkyIMc4rJQrbvjGF' \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserByEmailAddressV3' test.out

#- 168 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": true}, "userIds": ["sU1Ro1B8TSi1s9uj", "wytWOuMngVNL3eH9", "7cYaYVlGNwBGUaMb"]}' \
    > test.out 2>&1
eval_tap $? 168 'AdminBulkUpdateUsersV3' test.out

#- 169 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'yswHqRbRePs2kvbl' \
    --body '{"bulkUserId": ["5hJgY4ZGdcgX7AMe", "VuktwJ7MQ6EIDIYG", "VR9oUnMtkgJ1IHiW"]}' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetBulkUserBanV3' test.out

#- 170 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"findByPublisherNamespace": true, "userIds": ["KXz0IPdfJy6ytIp7", "5SrdUsgALvhjtxC0", "lfPsbkBcMpbDT0wi"]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminListUserIDByUserIDsV3' test.out

#- 171 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["R1gaR4sEi8uGrAu1", "gq9WI7cvDA9nAX5V", "7rhPIU3hDZ71L7X3"]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminBulkGetUsersPlatform' test.out

#- 172 AdminCursorGetUserV3
samples/cli/sample-apps Iam adminCursorGetUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"cursor": {"cursorTime": "Aqepu96QI27BbTsf", "userId": "J6EchC7ermLWrgW2"}, "fields": ["VFQ3rDZT36PJtFX1", "chUbDSuHJX9hPXho", "IQbty9rahBubxY9i"], "limit": 89}' \
    > test.out 2>&1
eval_tap $? 172 'AdminCursorGetUserV3' test.out

#- 173 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["ssjpjbv7edMki0c8", "9reWQHaLGuVna5ry", "CSyu5E7Rg6baeVN7"], "isAdmin": true, "languageTag": "dlUXEshLbBgVdJNQ", "namespace": "7Zp2FzZEe6XFjiCX", "roles": ["0tIRBcQ6Jq4ZWrdC", "HDwcWKHpuW37Ec4y", "eS5Jj165698tfytk"]}' \
    > test.out 2>&1
eval_tap $? 173 'AdminInviteUserV3' test.out

#- 174 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '1' \
    --platformUserId '0GGGbmWMWNmdaXv8' \
    --platformId '67AAm8W8pd3wZJ79' \
    > test.out 2>&1
eval_tap $? 174 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 175 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 175 'AdminListUsersV3' test.out

#- 176 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'V9MIm0cqQorXBlwN' \
    --endDate '77GIIFoNENfF9iR7' \
    --includeTotal 'false' \
    --limit '21' \
    --offset '60' \
    --platformBy '6d7eW8mIxl95wyPD' \
    --platformId 'QEx3ZDMeveVCTYYz' \
    --query 'izLjiGvqlsSmD8lP' \
    --roleIds 'YZBK9GW0lnVtXdp1' \
    --selectedFields 'W54Sgk7Ft8ECNOJq' \
    --skipLoginQueue 'false' \
    --startDate 'qK3mUUEgDcljK6Hb' \
    --tagIds 'eNWB0ZFlx7kVonak' \
    --testAccount 'true' \
    > test.out 2>&1
eval_tap $? 176 'AdminSearchUserV3' test.out

#- 177 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["LEUhWLBy9rVy68lu", "qXKVwJOh5IEv3JVP", "ZTFeHuz1EPmu64A1"]}' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetBulkUserByEmailAddressV3' test.out

#- 178 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'oHsvFand3gzZ8daB' \
    > test.out 2>&1
eval_tap $? 178 'AdminGetUserByUserIdV3' test.out

#- 179 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '56qZgXgYqDSDhtjb' \
    --body '{"avatarUrl": "chIb1Y0Zrgf5Zvkr", "country": "twhn9xTvoLFHvXqt", "dateOfBirth": "T9R3nBMqRL90c3BU", "displayName": "dJntBhkBtYeuePD4", "languageTag": "qQwRrCQQZPUG6Emm", "skipLoginQueue": false, "tags": ["4EIGZtE1CtWfqG7M", "Kb7vCr1tqsqxR6TB", "2ZHVW2kYWfVwVFFs"], "uniqueDisplayName": "BwMIhDn9letSbfdz", "userName": "eDBK5vPlhhSXU5hF"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminUpdateUserV3' test.out

#- 180 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mayPAK5mDgJEZJGl' \
    --activeOnly 'false' \
    --after 'AU8fkrOzPS2XqAAb' \
    --before 'QWG7tK3gpKPyxHK6' \
    --limit '0' \
    > test.out 2>&1
eval_tap $? 180 'AdminGetUserBanV3' test.out

#- 181 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '8Gi7DsLrn8LjIfPS' \
    --body '{"ban": "LM2KuKMO23aI8MPk", "comment": "erVKYBfArK3impfA", "endDate": "CricefHE5HymoQDN", "reason": "JM5Ru8okY4HLc37E", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 181 'AdminBanUserV3' test.out

#- 182 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dRQvjYwZ8AS2WgZG' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserBanSummaryV3' test.out

#- 183 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'FPOaovxry4rkvLpn' \
    --namespace $AB_NAMESPACE \
    --userId 'dmINqafOVkKFtYFX' \
    --body '{"enabled": false, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 183 'AdminUpdateUserBanV3' test.out

#- 184 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tWApW1obrnQJq5VV' \
    --body '{"context": "iIcXlo8kygYbKfF4", "emailAddress": "IKhjJEjIIzZYU5VE", "languageTag": "TaOhRwslBn4UjxMq", "upgradeToken": "4h03X4Q2DMXXvXgL"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminSendVerificationCodeV3' test.out

#- 185 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'C10iXorG123Y2DxI' \
    --body '{"Code": "POCTl782sA2fFuUa", "ContactType": "lmeuxlSVvrckJ4jw", "LanguageTag": "txQuxxqKaMoBxnot", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 185 'AdminVerifyAccountV3' test.out

#- 186 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId '6KWayShoMokqgviz' \
    > test.out 2>&1
eval_tap $? 186 'GetUserVerificationCode' test.out

#- 187 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fxixrxvvMGyCKOzg' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetUserDeletionStatusV3' test.out

#- 188 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rXkJJzAXxEkiGFKy' \
    --body '{"deletionDate": 95, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserDeletionStatusV3' test.out

#- 189 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jmWC6yrHB98NbC91' \
    > test.out 2>&1
eval_tap $? 189 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 190 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId '6reawDmEOkFahlZ3' \
    --body '{"code": "hFWjX8hz9HjcEiV8", "country": "Ki856rQkruyX3qwR", "dateOfBirth": "3iWChyDumZTGfWeW", "displayName": "oyCppbWZS7seKdZc", "emailAddress": "6u632gb9RrIkXB3T", "password": "ujbf9oxfKIdHr6sK", "uniqueDisplayName": "7KaANR6jnWWoTMRv", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpgradeHeadlessAccountV3' test.out

#- 191 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kulYBvRIl7fVUggJ' \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserInformationV3' test.out

#- 192 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FSMJfKdYl0IVB42a' \
    --after '0.7952510214265894' \
    --before '0.5546990918581108' \
    --limit '99' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserLoginHistoriesV3' test.out

#- 193 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Q3vsdTJ92f2Fz7cs' \
    --body '{"languageTag": "sJRhYW4gdXzh4mWE", "mfaToken": "Kwd47fJWMVjkVVEt", "newPassword": "oYp4eZ0zUU8vMHqw", "oldPassword": "mCH8qk1MISXNsBO7"}' \
    > test.out 2>&1
eval_tap $? 193 'AdminResetPasswordV3' test.out

#- 194 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PZ57FTbLlLxcNM2t' \
    --body '{"Permissions": [{"Action": 68, "Resource": "SLI8yMWTOgccOMyE", "SchedAction": 11, "SchedCron": "V4COiMxlbFxoYi2U", "SchedRange": ["L4OTRhG8WuNvMj0m", "IPz8FSs2IgstnxNb", "SUC7bxg6tjNwqucg"]}, {"Action": 72, "Resource": "yEHc3jG1Eze8uruz", "SchedAction": 78, "SchedCron": "P75FDz0RYjwGNVY8", "SchedRange": ["z9mVf62EgZiPNX1S", "hyxFvnXlh0o4NSAT", "4mWPq2oVEBlfn7EV"]}, {"Action": 89, "Resource": "IhTvpYTYILtI7ThT", "SchedAction": 44, "SchedCron": "HNKc1FVtc0TqaPlz", "SchedRange": ["YEuR0suTgJx9M5DE", "kjQzlYtg9e7nw6Tb", "YWDQfOJ8I6WeqN02"]}]}' \
    > test.out 2>&1
eval_tap $? 194 'AdminUpdateUserPermissionV3' test.out

#- 195 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId '7twpCjdsqi53MMVL' \
    --body '{"Permissions": [{"Action": 56, "Resource": "d3LoiZUc4w8UULL1", "SchedAction": 57, "SchedCron": "pgdRcnCU03q4d9cE", "SchedRange": ["V4e3do4WyxLLCb21", "mhPZpo9vnBXvbAve", "IeYylN9ERFIGYf19"]}, {"Action": 78, "Resource": "nrf2bbmjzGHbmRbG", "SchedAction": 98, "SchedCron": "CEKj1Z0RtdKK528e", "SchedRange": ["QnOg6O8vcX1ZAGvX", "lw82ZcNoeGluh787", "HEcwNVQlXQkkpr4Z"]}, {"Action": 37, "Resource": "2o2eJ8e9N3i5gokG", "SchedAction": 76, "SchedCron": "xhO57mWo5Qtz1zQQ", "SchedRange": ["9sTK8y5k2GmvM0SD", "OCgQNVQtJ68M4Px0", "sfYFiVNaRVCiioNF"]}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddUserPermissionsV3' test.out

#- 196 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId '0bvVw9RPgCCGLTfW' \
    --body '[{"Action": 11, "Resource": "4VKvlwhyeFSgUShr"}, {"Action": 98, "Resource": "VDtI75jv0M94wmFB"}, {"Action": 71, "Resource": "zslIkwGuGUON6UUh"}]' \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteUserPermissionBulkV3' test.out

#- 197 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '50' \
    --namespace $AB_NAMESPACE \
    --resource 'p3JzLROIRwqjdU3L' \
    --userId 'HudWsLvzg6IZ5m4f' \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteUserPermissionV3' test.out

#- 198 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'M2NawZOGiXbIBmtj' \
    --after 'hHdD0kwdOyc9VFqM' \
    --before 'V5INpHxDaKoS0fjL' \
    --limit '94' \
    --platformId 'ggpkPGWJxGv886dd' \
    --targetNamespace 'wQLftS85JauJvCvn' \
    > test.out 2>&1
eval_tap $? 198 'AdminGetUserPlatformAccountsV3' test.out

#- 199 AdminListAllDistinctPlatformAccountsV3
samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '0hAutSxh61cVVcOY' \
    --status '4FeFkFPeoSggepFr' \
    > test.out 2>&1
eval_tap $? 199 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 200 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'CRAeXgp1ivofRQXW' \
    > test.out 2>&1
eval_tap $? 200 'AdminGetListJusticePlatformAccounts' test.out

#- 201 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'FhkIApEg4kIHLm2F' \
    --userId 'tbZ6Lez3SUhx9x3l' \
    --createIfNotFound 'false' \
    > test.out 2>&1
eval_tap $? 201 'AdminGetUserMapping' test.out

#- 202 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '2oL00c94GsfKF8P5' \
    --userId 'QXi5oRuvCzCX02zm' \
    > test.out 2>&1
eval_tap $? 202 'AdminCreateJusticeUser' test.out

#- 203 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'wKw0Jg6PEKvNZj3w' \
    --skipConflict 'false' \
    --body '{"platformId": "mws6qnJ4xu6vTLXC", "platformUserId": "uQHRvlYzfQ6xzLxU"}' \
    > test.out 2>&1
eval_tap $? 203 'AdminLinkPlatformAccount' test.out

#- 204 AdminGetUserLinkHistoriesV3
samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'OXtMY13MAMqdWf9B' \
    --platformId 'R3FxMAVlxhjqZnUt' \
    > test.out 2>&1
eval_tap $? 204 'AdminGetUserLinkHistoriesV3' test.out

#- 205 AdminPlatformUnlinkV3
eval_tap 0 205 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 206 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7Ulv1xndPKeh6imy' \
    --userId '0D2lFyHcGOvjT8oS' \
    > test.out 2>&1
eval_tap $? 206 'AdminPlatformUnlinkAllV3' test.out

#- 207 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'j32z4pKaEKl4NsyX' \
    --userId 'gFo3AE69pIrcVRzZ' \
    --ticket '3EagfzcV604MMKOK' \
    > test.out 2>&1
eval_tap $? 207 'AdminPlatformLinkV3' test.out

#- 208 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 208 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 209 AdminDeleteUserLinkingRestrictionByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ysTjuKbsSzRjMXHM' \
    --userId 'KgLCyQCUItwHkeI9' \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 210 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'v0sTAlR33ahcq8YW' \
    --userId 'BvTGV65IOyRuNCCj' \
    --platformToken 'FlViqXVVm4fmWcsX' \
    > test.out 2>&1
eval_tap $? 210 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 211 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'IBh1YQiiUnwUOsei' \
    --userId 'ZdxxDFO9Y6pADvfE' \
    --crossNamespace 'false' \
    > test.out 2>&1
eval_tap $? 211 'AdminGetUserSinglePlatformAccount' test.out

#- 212 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eJKVYa3vd70XSWZr' \
    --body '["4cNQECEhbNJCZuBs", "2Ko7F6OjFLqvJKFw", "gATTaU4aV2dXfH2e"]' \
    > test.out 2>&1
eval_tap $? 212 'AdminDeleteUserRolesV3' test.out

#- 213 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tPBOThW3eZUqR0iT' \
    --body '[{"namespace": "vJ6fW5bUIXSTxhUb", "roleId": "rWPsCzAX6Hr5v7BO"}, {"namespace": "x1EGiY2qKLpLwN0H", "roleId": "ZNW41yHubsGHf3Np"}, {"namespace": "W9B0BQs6faWAPjMe", "roleId": "G6rokXm3F5AImWw4"}]' \
    > test.out 2>&1
eval_tap $? 213 'AdminSaveUserRoleV3' test.out

#- 214 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'EpigPcWNd8ZxMSu0' \
    --userId 'Hpmy5tpuTVC7soSc' \
    > test.out 2>&1
eval_tap $? 214 'AdminAddUserRoleV3' test.out

#- 215 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'TOnncDm52dack1UP' \
    --userId '7QPwFiP03l1fGLXC' \
    > test.out 2>&1
eval_tap $? 215 'AdminDeleteUserRoleV3' test.out

#- 216 AdminGetUserStateByUserIdV3
samples/cli/sample-apps Iam adminGetUserStateByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'onF2xQUrc2XiHZWW' \
    > test.out 2>&1
eval_tap $? 216 'AdminGetUserStateByUserIdV3' test.out

#- 217 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'nhwWsQPv6nOTqE9k' \
    --body '{"enabled": true, "reason": "MkA1IWvdiOPBSfa2"}' \
    > test.out 2>&1
eval_tap $? 217 'AdminUpdateUserStatusV3' test.out

#- 218 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'gvPl7OgJ3bmLPbhI' \
    --body '{"emailAddress": "BhEqtRB8rHHnrtDL", "password": "255GjGYP4CRXwqGo"}' \
    > test.out 2>&1
eval_tap $? 218 'AdminTrustlyUpdateUserIdentity' test.out

#- 219 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lWxshcWIo5TyyXqE' \
    > test.out 2>&1
eval_tap $? 219 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 220 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'KS7OEi9ZHupsrNbJ' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "2JpfybaEwSrMETxL"}' \
    > test.out 2>&1
eval_tap $? 220 'AdminUpdateClientSecretV3' test.out

#- 221 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'udDI96bCDzlGC59Y' \
    > test.out 2>&1
eval_tap $? 221 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 222 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'mySC9m1EQ3gEN7XI' \
    --before '1drvuMbkxkobwOFM' \
    --isWildcard 'false' \
    --limit '23' \
    > test.out 2>&1
eval_tap $? 222 'AdminGetRolesV3' test.out

#- 223 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "managers": [{"displayName": "6XIJSahRVx1jbZTl", "namespace": "wd1eTq7h6n7mnuK0", "userId": "29BnqzH5YyJOgnUA"}, {"displayName": "7peO5s6cnSwCGFDH", "namespace": "BfeVooTiXQtzZ6OV", "userId": "uGeUqMz6Yz49NWhF"}, {"displayName": "a1bWapXUgTIGyghf", "namespace": "IdIeIAbypzfNDVI3", "userId": "idXwgRgGW1VP7I1h"}], "members": [{"displayName": "AkwLalW0zjN7Ht1b", "namespace": "kE2e4TnEFO0YGWur", "userId": "f2FMhSyZpX7gf6nk"}, {"displayName": "HNOegW7YOmqg1UxZ", "namespace": "HtAcvAOyLwlgy29S", "userId": "gndYO1qL5Knp7X7L"}, {"displayName": "DpPAdAzEVbsqrKNX", "namespace": "JEpsE5KiLDQm7Eea", "userId": "OXqfU9fhagI4tr7W"}], "permissions": [{"action": 99, "resource": "skW9SVhizVEW26IE", "schedAction": 73, "schedCron": "FQ2SeIftbozOvlPE", "schedRange": ["ogoivt7tf89a9LiV", "10OHKcQuizYyNSfY", "yU0rz3FKndlpochX"]}, {"action": 49, "resource": "WIM7nhbEetjCNEML", "schedAction": 24, "schedCron": "vb1DqqBrkgmSZJMT", "schedRange": ["Wps4zT3f9Zu3dDUL", "PrUt7GhvMgeB3YLF", "cOStaJyYtiy6eEc1"]}, {"action": 10, "resource": "14j21iq4FWfvK5iL", "schedAction": 4, "schedCron": "KTnnOW13RIOnf8p8", "schedRange": ["AXLfUEOECnyLD3y1", "pm7kcT1ASfe3jApW", "ClOaXhzCpksE1cRI"]}], "roleName": "jrYqP2rCb8bbTF0N"}' \
    > test.out 2>&1
eval_tap $? 223 'AdminCreateRoleV3' test.out

#- 224 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'hCGBkYsBFEUOXDzX' \
    > test.out 2>&1
eval_tap $? 224 'AdminGetRoleV3' test.out

#- 225 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'Fa1FFUcKB2YhC24k' \
    > test.out 2>&1
eval_tap $? 225 'AdminDeleteRoleV3' test.out

#- 226 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'uI1otrwByOAWxPel' \
    --body '{"deletable": false, "isWildcard": false, "roleName": "HNiB1s0nv4muYW7c"}' \
    > test.out 2>&1
eval_tap $? 226 'AdminUpdateRoleV3' test.out

#- 227 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'aVC8YBWyRyUdG3kl' \
    > test.out 2>&1
eval_tap $? 227 'AdminGetRoleAdminStatusV3' test.out

#- 228 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'mKphVmardfc5t0gZ' \
    > test.out 2>&1
eval_tap $? 228 'AdminUpdateAdminRoleStatusV3' test.out

#- 229 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'qdKUiAAe5VMvfy9Q' \
    > test.out 2>&1
eval_tap $? 229 'AdminRemoveRoleAdminV3' test.out

#- 230 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'svrWKHdSHiZdqb7V' \
    --after 's7o66Bf7bREK3ZEW' \
    --before 'CnX7FBU3yPmHLdFu' \
    --limit '98' \
    > test.out 2>&1
eval_tap $? 230 'AdminGetRoleManagersV3' test.out

#- 231 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'Rbhkcf6jDOqXOHPc' \
    --body '{"managers": [{"displayName": "GBncbPFsbl3ubCz2", "namespace": "ZDt28rjmqqyoOZA0", "userId": "YBvooZWflIynNYNF"}, {"displayName": "DwQuJjJJL5w1RN84", "namespace": "C6FeZXLasfgSNz7l", "userId": "5uq1ciZkK2Usi8gN"}, {"displayName": "WTmvg7DqSZGQdvDs", "namespace": "kaWokVrAN0Bf5csd", "userId": "XTVzSKqemiZzQdRn"}]}' \
    > test.out 2>&1
eval_tap $? 231 'AdminAddRoleManagersV3' test.out

#- 232 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId '8JwR6zmEjR0Hn9Yi' \
    --body '{"managers": [{"displayName": "d719f7AuT0Acn9OQ", "namespace": "hkd9EuGi0St1CHvF", "userId": "Crx5WKqShwyQ9Azv"}, {"displayName": "H7Ke33ZS7bIOPiji", "namespace": "DrjZbfFP98bJ5mS0", "userId": "EIQRXioZaWqWUtu3"}, {"displayName": "0LK6kRb66x4C58Lj", "namespace": "lep15E4EsimRL1yq", "userId": "DWTEyMIwrcpFQ241"}]}' \
    > test.out 2>&1
eval_tap $? 232 'AdminRemoveRoleManagersV3' test.out

#- 233 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'VyGEUflkLk4084Bs' \
    --after 'bcqSQjjr8oJR9lqS' \
    --before 'u3NnQDxdtEHDLg1w' \
    --limit '54' \
    > test.out 2>&1
eval_tap $? 233 'AdminGetRoleMembersV3' test.out

#- 234 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'xueK8ReU8LGZUQ1k' \
    --body '{"members": [{"displayName": "hliUKMM0miiaw7ci", "namespace": "TknsfKiQ9ZW2xJsS", "userId": "XlykPgHgpUI8NgZ2"}, {"displayName": "jNalG6upCA5E7D03", "namespace": "9ciVkcGOjaqrJgCK", "userId": "wYC29yAClIMZVdvp"}, {"displayName": "PJT22rYVPZ3bGqDQ", "namespace": "8CvKwaxHfyuYOUSo", "userId": "7ckCMVu4G0TxbYZd"}]}' \
    > test.out 2>&1
eval_tap $? 234 'AdminAddRoleMembersV3' test.out

#- 235 AdminRemoveRoleMembersV3
eval_tap 0 235 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 236 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'XTWzLx65yWl9M4zA' \
    --body '{"permissions": [{"action": 33, "resource": "gdfhy6cHzJeSJGsD", "schedAction": 77, "schedCron": "vZWyQ8tmef868RoL", "schedRange": ["AJZmFZISsS3s7oEF", "0tXKdpNFPGxEeTGg", "vUKK8xhpMZPFrAyi"]}, {"action": 19, "resource": "07ZfJyWbXB6xkbRg", "schedAction": 1, "schedCron": "jwe3Gj2En3X32T1D", "schedRange": ["bmHBcbSgTOvnQEdw", "pw0z3JB4cWE6IiYL", "dJgCw3SfYsOfkWTD"]}, {"action": 28, "resource": "V9ZzfIdU4LcxTm5W", "schedAction": 51, "schedCron": "nKSrRua0AThQFtaF", "schedRange": ["ZIOiHodrFYkcoZuX", "WEaq16KigdjOaNFU", "0yAcR2JLm1FFGHIi"]}]}' \
    > test.out 2>&1
eval_tap $? 236 'AdminUpdateRolePermissionsV3' test.out

#- 237 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'V7BKzOBFK3g4Fosc' \
    --body '{"permissions": [{"action": 30, "resource": "Fp0SpkzDp0pjFYbc", "schedAction": 59, "schedCron": "hdZV79rLK4CwNcFo", "schedRange": ["0CzcB4SNhjJHPUiK", "KNN5OMqeFNNEkPfY", "S5aUvfyygadIC3g0"]}, {"action": 5, "resource": "NYv51cDkrUvo26sI", "schedAction": 95, "schedCron": "wTS57Uh8z4GQfB8B", "schedRange": ["33Jy99ecUGSfaIgy", "5s9ZEfkY4dox1iTK", "8S5RCaou4VehPXco"]}, {"action": 15, "resource": "nL63LM8UF7VgRNMI", "schedAction": 15, "schedCron": "LbIj07X2NKhgUYu2", "schedRange": ["zOoM1nIjhO8Vohjw", "pLO2iA11y3c924qZ", "Ur7aouh3W0ylAH1c"]}]}' \
    > test.out 2>&1
eval_tap $? 237 'AdminAddRolePermissionsV3' test.out

#- 238 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'qtTFG7ce4plpWakQ' \
    --body '["50QIah9I59xDjpOY", "et4S8WXc9BJGsVm9", "3zuk1qt5NVVJpL9t"]' \
    > test.out 2>&1
eval_tap $? 238 'AdminDeleteRolePermissionsV3' test.out

#- 239 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '73' \
    --resource '8VhrxXHn8vSWVt0M' \
    --roleId '4rw0zemkulCq0QOb' \
    > test.out 2>&1
eval_tap $? 239 'AdminDeleteRolePermissionV3' test.out

#- 240 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 240 'AdminGetMyUserV3' test.out

#- 241 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'dhkkKa49afyET0Uq' \
    --extendExp 'true' \
    --redirectUri 'HuwOl1LbhVYgwN8A' \
    --password 'wgS8HqI6FD4wVZI4' \
    --requestId 'ai0GuTCvIZTrZuqH' \
    --userName 'jDKjoqJUx05LWlea' \
    > test.out 2>&1
eval_tap $? 241 'UserAuthenticationV3' test.out

#- 242 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'yjdaLMw8IKrYJ2dy' \
    --linkingToken 'WPLs4G4heGfYNKWb' \
    --password 'TfTxNlt4ewZzoUu9' \
    --username 'R9nIV5aGo7fWpbSO' \
    > test.out 2>&1
eval_tap $? 242 'AuthenticationWithPlatformLinkV3' test.out

#- 243 AuthenticateAndLinkForwardV3
samples/cli/sample-apps Iam authenticateAndLinkForwardV3 \
    --extendExp 'true' \
    --clientId 'UddRo99lcR275ryH' \
    --linkingToken 'Ejlkx1NNdnXgeDJd' \
    --password 'JrO8tuXfWsDzw3a9' \
    --username 'WlMaQzyLjNcvpSJm' \
    > test.out 2>&1
eval_tap $? 243 'AuthenticateAndLinkForwardV3' test.out

#- 244 PublicGetSystemConfigV3
samples/cli/sample-apps Iam publicGetSystemConfigV3 \
    > test.out 2>&1
eval_tap $? 244 'PublicGetSystemConfigV3' test.out

#- 245 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'NPdymqaVq0sUxaB9' \
    --extendExp 'false' \
    --linkingToken 'jAQoEkgeKjgr0zWC' \
    > test.out 2>&1
eval_tap $? 245 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 246 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --redirectUri '0YG9eHBjN6KLqP3H' \
    --state '1568FvosK3AJhxWu' \
    --platformId 'FKRdQfGToXsW3auh' \
    > test.out 2>&1
eval_tap $? 246 'RequestOneTimeLinkingCodeV3' test.out

#- 247 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'DTf3IvIG9ZLQRf50' \
    > test.out 2>&1
eval_tap $? 247 'ValidateOneTimeLinkingCodeV3' test.out

#- 248 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'h1ntcOLWunOjvlyM' \
    --isTransient 'true' \
    --clientId 'E0NBQK808x9sfndm' \
    --oneTimeLinkCode 'r2Y3vQjgGWBi2ZzG' \
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
    --codeChallenge 'GNI8ofH6j1dGcmmT' \
    --codeChallengeMethod 'S256' \
    --clientId 'ne8vrUFDxmKJjs5W' \
    > test.out 2>&1
eval_tap $? 251 'RequestTokenExchangeCodeV3' test.out

#- 252 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'yPZi7SH2DSx64Sj4' \
    --userId 'UThjM9E5PaOhHv5I' \
    --platformUserId 'Cxp9N1SNkaHxOou7' \
    > test.out 2>&1
eval_tap $? 252 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 253 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZkqkoZmQAwGzjwnf' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 253 'RevokeUserV3' test.out

#- 254 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --blockedPlatformId '6DAHZRFcb6KEXgtl' \
    --codeChallenge 'J8sNKkNLu4ZzuRvN' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'false' \
    --loginWebBased 'false' \
    --nonce 'U2baUUXkKWSQP46r' \
    --oneTimeLinkCode 'INVuIGVMa9JXq7Xj' \
    --redirectUri 'vnP4vSfNG5JNBFmq' \
    --scope '5gARw8eB2O1gWxf2' \
    --state 'F6S7XupOYG6lNfyU' \
    --targetAuthPage 'TL0tK0DVcX9cX4Aq' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'MRjZOhLTfoBbGjK0' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 254 'AuthorizeV3' test.out

#- 255 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'wzDLuNLQQCg8XvFm' \
    > test.out 2>&1
eval_tap $? 255 'TokenIntrospectionV3' test.out

#- 256 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 256 'GetJWKSV3' test.out

#- 257 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'v7s6rmpcg5j8pzHx' \
    --factor 'wQdauQGhifYotiUt' \
    --mfaToken 'DxizxyYmWtbj25Id' \
    > test.out 2>&1
eval_tap $? 257 'SendMFAAuthenticationCode' test.out

#- 258 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor '05zHnX1bPvAdAk1p' \
    --mfaToken 'FsUG4Hr4EfGAN88Q' \
    > test.out 2>&1
eval_tap $? 258 'Change2faMethod' test.out

#- 259 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'mIktlkm23QEYVn2i' \
    --factor 'GHaqvyKfpbXhFZ8R' \
    --mfaToken 'nciL2xtyIioPBN31' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 259 'Verify2faCode' test.out

#- 260 Verify2faCodeForward
samples/cli/sample-apps Iam verify2faCodeForward \
    --defaultFactor 'CCwWs1mSg23ijm1n' \
    --factors 'ZKrFzjTSxMJBJJBM' \
    --rememberDevice 'true' \
    --clientId 'GwjUIL8UgUbee2sz' \
    --code '9RztoRo53TBEX3JT' \
    --factor 'FbxvCL3DvOrTYaN1' \
    --mfaToken '8rQrEbfrQZ5JV1IG' \
    > test.out 2>&1
eval_tap $? 260 'Verify2faCodeForward' test.out

#- 261 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ToaQfwW8HBaBRgO7' \
    --userId '4zxGUQFgVaoeMjNI' \
    > test.out 2>&1
eval_tap $? 261 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 262 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId '9jGlGiU6RpcRbBpZ' \
    --clientId 'R3XlMNOHuQ2A8ox8' \
    --redirectUri 'YA72L6UO3ytevtcu' \
    --requestId 'JZRt2YQiGCIDRpCw' \
    > test.out 2>&1
eval_tap $? 262 'AuthCodeRequestV3' test.out

#- 263 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'RJNOCVJ21fceciyC' \
    --additionalData 'W0dHXKBC0f0QcmMA' \
    --clientId 'oXTO6tj9ePkqkC3Q' \
    --createHeadless 'false' \
    --deviceId '48Dd1PEYnXYRODAl' \
    --macAddress 'RjN6aDn78zyJp9Zd' \
    --platformToken 'IvrUgENbvPa4aNOW' \
    --serviceLabel '0.8986546591754716' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 263 'PlatformTokenGrantV3' test.out

#- 264 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 264 'GetRevocationListV3' test.out

#- 265 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'Bu2b4DzEWsKmxFV5' \
    > test.out 2>&1
eval_tap $? 265 'TokenRevocationV3' test.out

#- 266 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'PzuKT9MCbw8zKtld' \
    --simultaneousTicket 'Zix4StIwgKMw6yQd' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'PdLKXPL2QEAh0J3A' \
    > test.out 2>&1
eval_tap $? 266 'SimultaneousLoginV3' test.out

#- 267 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'i2HFslXDA8a6QVWL' \
    --clientId '9gF74mAZHjmOHdWE' \
    --clientSecret '2YrbR9PMNBRcvUGZ' \
    --code 'woFfL1Vf25i22Ufe' \
    --codeVerifier '9hefpTjPyIEZsuo3' \
    --extendNamespace 'EpS6djEhEVGZ8kRO' \
    --extendExp 'true' \
    --password 'wtWIRw9hoMi74AmJ' \
    --redirectUri 'Pzega6GvoCceKJWA' \
    --refreshToken 'EGc9qXroTRmMrAOs' \
    --scope 'Whx5FT83WaqNv1Wf' \
    --username 'Vuee5wQeGMJgSGQe' \
    --grantType 'client_credentials' \
    > test.out 2>&1
eval_tap $? 267 'TokenGrantV3' test.out

#- 268 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'e1MZsn0jx4m2dgBD' \
    > test.out 2>&1
eval_tap $? 268 'VerifyTokenV3' test.out

#- 269 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'dXEH99AMygOC8YXM' \
    --code 'D8FMRFFfW3TAiMSu' \
    --error 'WtWbRSfD9oZpLyiL' \
    --openidAssocHandle 'w4lm67GMR2oFR3v1' \
    --openidClaimedId 'wweiC04qr1UPJSVS' \
    --openidIdentity 'UUjGg4DOQjseupn7' \
    --openidMode 'YbPzy2ig8h1c30Ih' \
    --openidNs 'w5YgA5Psh6OW83Yc' \
    --openidOpEndpoint 'ed2bHRC6q4Edd1XF' \
    --openidResponseNonce 'iH8Hz1l2T7b8Ivwv' \
    --openidReturnTo 'JzgbX4EzqzGoQqhA' \
    --openidSig 'kQCCtt5G3whRWjyy' \
    --openidSigned 'DSfNEk3m9Ha4zMom' \
    --state 'gC3wjjN1sN1FWT8c' \
    > test.out 2>&1
eval_tap $? 269 'PlatformAuthenticationV3' test.out

#- 270 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'ReCRa6nAJkRiTtrJ' \
    --platformToken 'q3sA09bHbVE9c8Cg' \
    > test.out 2>&1
eval_tap $? 270 'PlatformTokenRefreshV3' test.out

#- 271 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'IHxuHxoVYVObwRg9' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetInputValidations' test.out

#- 272 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'oFWvPmpNubeRzKBM' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetInputValidationByField' test.out

#- 273 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'jNim1u1BwvObeT0s' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 273 'PublicGetCountryAgeRestrictionV3' test.out

#- 274 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'QipY66siTyygsqe3' \
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
    --clientId 'K6HhtER5a9oyLbUb' \
    > test.out 2>&1
eval_tap $? 277 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 278 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 278 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 279 PublicGetUserByPlatformUserIDV3
eval_tap 0 279 'PublicGetUserByPlatformUserIDV3 # SKIP deprecated' test.out

#- 280 PublicGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam publicGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'country' \
    > test.out 2>&1
eval_tap $? 280 'PublicGetProfileUpdateStrategyV3' test.out

#- 281 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'nBO0rUfdXxCMf4J5' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetAsyncStatus' test.out

#- 282 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'c5Ydyqww8BxGWR4E' \
    --limit '4' \
    --offset '52' \
    --platformBy 'onc8HYC8twQmlTjv' \
    --platformId 'p4Jm5WNunG0FZ0cm' \
    --query 'Ze4ArqeI0RL5gJKm' \
    > test.out 2>&1
eval_tap $? 282 'PublicSearchUserV3' test.out

#- 283 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "SPqqjuYtMi1KxBZ4", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "rZ4HPBdiyGPshZ0s", "policyId": "nFoy8wOIBpyW6Dk3", "policyVersionId": "1O4uMYf29oXA0nsz"}, {"isAccepted": false, "localizedPolicyVersionId": "8C5LKOJLJOePJR6c", "policyId": "DhiMmfOKlWbxoVXI", "policyVersionId": "D7XcQlA56QyA0WO2"}, {"isAccepted": false, "localizedPolicyVersionId": "7625qP1wh06UmE4e", "policyId": "SAlt2lOz8c6OnxML", "policyVersionId": "lvdTK9G7EzaX8Ac3"}], "authType": "T7zJoueBo6t7QAUO", "code": "BsJsW1LaA7L6Brjz", "country": "XwQK5aecHE5w5jGN", "dateOfBirth": "xIFOJebkZXvwnyAW", "displayName": "k9xET1N4mwwjvgsZ", "emailAddress": "nSXZmD6M5PCcmPpX", "password": "3wTMxP9uZ62pw2BY", "reachMinimumAge": true, "uniqueDisplayName": "GDvu12oSc0Dpcz8T"}' \
    > test.out 2>&1
eval_tap $? 283 'PublicCreateUserV3' test.out

#- 284 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'SDGIlf9KsVMhGqZK' \
    --query 'tsne7kwOTXBBsVL6' \
    > test.out 2>&1
eval_tap $? 284 'CheckUserAvailability' test.out

#- 285 PublicBulkGetUsers
eval_tap 0 285 'PublicBulkGetUsers # SKIP deprecated' test.out

#- 286 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "1qyHqIymFwibymLB", "languageTag": "bf1f9Tp9BwSLQAaH"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicSendRegistrationCode' test.out

#- 287 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "5kxEg4xqlilESuNz", "emailAddress": "xk6CAwM4kOttVfmb"}' \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyRegistrationCode' test.out

#- 288 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "bNGYUVAsIqxyI7k8", "languageTag": "7W5XgW5uiTmh2S6y"}' \
    > test.out 2>&1
eval_tap $? 288 'PublicForgotPasswordV3' test.out

#- 289 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "IwZhKp25KQ3cqhM1", "password": "578lKMlowIHeLja1", "uniqueDisplayName": "Pl2hNCCdZoi12E2w", "username": "s6GNGIwM41yQk8W4"}' \
    > test.out 2>&1
eval_tap $? 289 'PublicValidateUserInput' test.out

#- 290 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'L0eTXI0Ti3458IUY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'GetAdminInvitationV3' test.out

#- 291 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'n4dzneZmKqWnHZtz' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "Owb7L4bkpZGLQOQg", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "cNpMAnXsdHah4gKp", "policyId": "WV2wI60wnDfTaYaY", "policyVersionId": "npdnfUPuqrsvb2AG"}, {"isAccepted": true, "localizedPolicyVersionId": "hCzRTUiXts75VETJ", "policyId": "ScdBoNjgijm74VqM", "policyVersionId": "o51RwPJgYMd8aEl8"}, {"isAccepted": true, "localizedPolicyVersionId": "YIDJ7CgvOBLpVpeI", "policyId": "ZJ2ztCLxcTqfo91S", "policyVersionId": "fgFKVteWUlSESnPe"}], "authType": "7xqtlofWx74lSlvw", "code": "C7YuknigP7mPPlnV", "country": "ofWGWn1dj3GMhIxF", "dateOfBirth": "RrcLXTd9Gviw5mOp", "displayName": "1zF92gAvSlceTevU", "emailAddress": "S51LakWvjlSLprjq", "password": "GvCj6mG0fIGbvmDq", "reachMinimumAge": true, "uniqueDisplayName": "NhkHmEpwKLkKK8Gh"}' \
    > test.out 2>&1
eval_tap $? 291 'CreateUserFromInvitationV3' test.out

#- 292 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "gkJZ5WR0Yf1nk5ek", "country": "xXLiumKfSKPsi8BZ", "dateOfBirth": "uLhcj1lHdo9XelAo", "displayName": "LmVL3h73tt8BYdQZ", "languageTag": "eOJVbDVh7ah6wE3B", "uniqueDisplayName": "h2XCxd1g6XVD43g1", "userName": "Z98jQI5hY1PKTRml"}' \
    > test.out 2>&1
eval_tap $? 292 'UpdateUserV3' test.out

#- 293 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "N5NrpuSaVXzKqjip", "country": "ESIRz6yMxVyHYsmM", "dateOfBirth": "yTr5b4nNTIhQvAYp", "displayName": "EYHMmG4J59npepmJ", "languageTag": "w16v65uPArDi1nZy", "uniqueDisplayName": "hsbznyLb98aEHTVU", "userName": "nCUvcP68oXNvZazq"}' \
    > test.out 2>&1
eval_tap $? 293 'PublicPartialUpdateUserV3' test.out

#- 294 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "yXKhyb49fgqDL9u5", "emailAddress": "I4AdXHevvoKmRHvR", "languageTag": "NEEmToJw89wVhLcl", "upgradeToken": "fRAgRtEBhgMboCgv"}' \
    > test.out 2>&1
eval_tap $? 294 'PublicSendVerificationCodeV3' test.out

#- 295 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "yk6a1baWat0Yzpuo", "contactType": "FLQqjozcunndB2Dz", "languageTag": "CxX39XZtwd7y6cI8", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 295 'PublicUserVerificationV3' test.out

#- 296 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "GFww9RuGm1fJsiY5", "country": "euDKt8tqJEbXZ56w", "dateOfBirth": "ZHeO2i8LuN9PICbo", "displayName": "tbusYQk9OxVF0K2x", "emailAddress": "BRpvTpaYn4VcNhdG", "password": "R1WWW6tpAHhLtHRI", "uniqueDisplayName": "b4yLO79gIXgeOPcv", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 296 'PublicUpgradeHeadlessAccountV3' test.out

#- 297 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "4zHJadiMNA4qdD97", "password": "mOAdaHdqg3U92XjU"}' \
    > test.out 2>&1
eval_tap $? 297 'PublicVerifyHeadlessAccountV3' test.out

#- 298 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "0Yj8moZvK4K6g5wu", "mfaToken": "WkW27gRqxI6Wnzim", "newPassword": "ChpFc9KzFqiZAe1W", "oldPassword": "5XdUfJr89nTlssHi"}' \
    > test.out 2>&1
eval_tap $? 298 'PublicUpdatePasswordV3' test.out

#- 299 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'Vah0obm6UDrH8B0z' \
    > test.out 2>&1
eval_tap $? 299 'PublicCreateJusticeUser' test.out

#- 300 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'LoNaBr9EIeBg382q' \
    --redirectUri 'tTgaAFgC6HPbBSuj' \
    --ticket 'CORsnIvu4wgNmi3Q' \
    > test.out 2>&1
eval_tap $? 300 'PublicPlatformLinkV3' test.out

#- 301 PublicPlatformUnlinkV3
eval_tap 0 301 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 302 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId '2HZslrozD4TlKL69' \
    > test.out 2>&1
eval_tap $? 302 'PublicPlatformUnlinkAllV3' test.out

#- 303 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'JReJ699sxIJzRu0y' \
    --ticket 'knW815zDfjL3qzlT' \
    > test.out 2>&1
eval_tap $? 303 'PublicForcePlatformLinkV3' test.out

#- 304 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'JxiPsfC3RKpds7ZP' \
    --clientId 'VW18pddy1sAPWc6V' \
    --redirectUri 'KlTiU6E7814X8kVU' \
    > test.out 2>&1
eval_tap $? 304 'PublicWebLinkPlatform' test.out

#- 305 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'DzTTZCaF9TdBJE7C' \
    --code 'a0NrWyK3NGzlFdu5' \
    --state 'hNQ56LIapMr68Qaq' \
    > test.out 2>&1
eval_tap $? 305 'PublicWebLinkPlatformEstablish' test.out

#- 306 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'M2TIOA9BfPNFp0vt' \
    --code 'sWnu5SQQxCijPkU5' \
    --state 'IF9xeEkDLUFD62hv' \
    > test.out 2>&1
eval_tap $? 306 'PublicProcessWebLinkPlatformV3' test.out

#- 307 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "FgY7FhDETVz2H3vh", "userIds": ["H0xhgyLXDjedLLkB", "0PHn6iVvrMz1ZYRG", "aBqSgCfmXD3jeMAZ"]}' \
    > test.out 2>&1
eval_tap $? 307 'PublicGetUsersPlatformInfosV3' test.out

#- 308 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "Yn0kfuQQ75hPvbeW", "code": "kbw8LSnDMjcCdE75", "emailAddress": "NbeSQt6wBKVAdG8j", "languageTag": "RGnIwRZVDxSIGbHf", "newPassword": "Cq3PflRtv5ov3RRM"}' \
    > test.out 2>&1
eval_tap $? 308 'ResetPasswordV3' test.out

#- 309 PublicGetUserByUserIdV3
eval_tap 0 309 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 310 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QvOjJkUoFZcEQ7K9' \
    --activeOnly 'true' \
    --after 'EwndAsOQiDdBHkkW' \
    --before '3fqZuJqfuTCkVZ0Y' \
    --limit '0' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetUserBanHistoryV3' test.out

#- 311 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'spRibpzsIBGksbXy' \
    > test.out 2>&1
eval_tap $? 311 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 312 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ThdGtnrqmH6Ls4M5' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetUserInformationV3' test.out

#- 313 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QOFSt9SHC9SxsH6H' \
    --after '0.22996716936368755' \
    --before '0.035204296963230686' \
    --limit '85' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetUserLoginHistoriesV3' test.out

#- 314 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Yd2y3P2pQK6HCqr5' \
    --after 'LuWOkcHsPj3ltEAi' \
    --before 'NMQHUlSrpykJhczB' \
    --limit '46' \
    --platformId '2SnUixxsOBGSPcFy' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetUserPlatformAccountsV3' test.out

#- 315 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NMJbBpsHcliUH0Pe' \
    > test.out 2>&1
eval_tap $? 315 'PublicListJusticePlatformAccountsV3' test.out

#- 316 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'mvyUb8x4nnvRKuaJ' \
    --body '{"platformId": "afNmKt5MB9p1Dd3Q", "platformUserId": "jarBlwaX77fiPrNw"}' \
    > test.out 2>&1
eval_tap $? 316 'PublicLinkPlatformAccount' test.out

#- 317 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'FH80PDKiQFzP4qMZ' \
    --body '{"chosenNamespaces": ["3BfVzpIycgVFKIzQ", "fAFNhJqMMfgUMRHq", "B0pmT7h6WT65zWwr"], "requestId": "lEy0VWlogDg9F8TW"}' \
    > test.out 2>&1
eval_tap $? 317 'PublicForceLinkPlatformWithProgression' test.out

#- 318 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Z38NYIcyzaiKEZBs' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetPublisherUserV3' test.out

#- 319 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId '6y7TYzEONPdGGqS9' \
    --password 'Rg2dJRhr3kGOIP27' \
    > test.out 2>&1
eval_tap $? 319 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 320 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'SwpUm6gEr99nZR1f' \
    --before 'yIdklB1hcZaNxVj3' \
    --isWildcard 'false' \
    --limit '5' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetRolesV3' test.out

#- 321 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'GfgvmbvATJyho4lq' \
    > test.out 2>&1
eval_tap $? 321 'PublicGetRoleV3' test.out

#- 322 PublicForgotPasswordWithoutNamespaceV3
samples/cli/sample-apps Iam publicForgotPasswordWithoutNamespaceV3 \
    --body '{"clientId": "lr13V8qHOY9Qb9Wu", "emailAddress": "0y79tIbBe0mEuREk", "languageTag": "KOZI9SOupJ2uNevU"}' \
    > test.out 2>&1
eval_tap $? 322 'PublicForgotPasswordWithoutNamespaceV3' test.out

#- 323 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'true' \
    > test.out 2>&1
eval_tap $? 323 'PublicGetMyUserV3' test.out

#- 324 PublicSendCodeForwardV3
samples/cli/sample-apps Iam publicSendCodeForwardV3 \
    --body '{"context": "7PS29rWsvWNH0fwR", "emailAddress": "nrUfEpMwhmKwZdUS", "languageTag": "vVKaJpLSP86e1kjp", "upgradeToken": "VgeRgb5S8e2AknIu"}' \
    > test.out 2>&1
eval_tap $? 324 'PublicSendCodeForwardV3' test.out

#- 325 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'kyDURGq4yvb3uSf6' \
    > test.out 2>&1
eval_tap $? 325 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 326 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["6CK0rBctqtyBbdu3", "78nWVFcH8b6Xsmbu", "QBBNi8CDGwogboLx"], "oneTimeLinkCode": "ExuKqf6Mci5HlZXs"}' \
    > test.out 2>&1
eval_tap $? 326 'LinkHeadlessAccountToMyAccountV3' test.out

#- 327 PublicGetMyRedirectionAfterLinkV3
samples/cli/sample-apps Iam publicGetMyRedirectionAfterLinkV3 \
    --oneTimeLinkCode 'rxGArlcTFdpmAznN' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetMyRedirectionAfterLinkV3' test.out

#- 328 PublicGetMyProfileAllowUpdateStatusV3
samples/cli/sample-apps Iam publicGetMyProfileAllowUpdateStatusV3 \
    > test.out 2>&1
eval_tap $? 328 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 329 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "6WrzjRHbIW127SBN"}' \
    > test.out 2>&1
eval_tap $? 329 'PublicSendVerificationLinkV3' test.out

#- 330 PublicGetOpenidUserInfoV3
samples/cli/sample-apps Iam publicGetOpenidUserInfoV3 \
    > test.out 2>&1
eval_tap $? 330 'PublicGetOpenidUserInfoV3' test.out

#- 331 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'NQKrCFbVqKD7FAus' \
    > test.out 2>&1
eval_tap $? 331 'PublicVerifyUserByLinkV3' test.out

#- 332 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'yWt341aRYYQwg5v3' \
    --code 'qnCtQNcOpI42Fml3' \
    --error 'z4XubQSmZdtepuuC' \
    --state 'uOkl3Xd1IQAEoInw' \
    > test.out 2>&1
eval_tap $? 332 'PlatformAuthenticateSAMLV3Handler' test.out

#- 333 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'k0r2JKoMnRzK6ayl' \
    --payload 'juMTqtTqhMqgFfjh' \
    > test.out 2>&1
eval_tap $? 333 'LoginSSOClient' test.out

#- 334 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'KI8v0UzYvczsJDzt' \
    > test.out 2>&1
eval_tap $? 334 'LogoutSSOClient' test.out

#- 335 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'kqOjFCj0YHecMjg1' \
    --code 'iVS4kuvU8j9T1cfa' \
    > test.out 2>&1
eval_tap $? 335 'RequestTargetTokenResponseV3' test.out

#- 336 UpgradeAndAuthenticateForwardV3
samples/cli/sample-apps Iam upgradeAndAuthenticateForwardV3 \
    --clientId 'aJvP9BgFzQ5XzKHx' \
    --upgradeSuccessToken 'xk9pKU7f6zTekaGN' \
    > test.out 2>&1
eval_tap $? 336 'UpgradeAndAuthenticateForwardV3' test.out

#- 337 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '2' \
    --namespace 'dNTttkqLfrNfqKqj' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 337 'AdminListInvitationHistoriesV4' test.out

#- 338 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'PIqtpcXRn9gVbwo8' \
    > test.out 2>&1
eval_tap $? 338 'AdminGetDevicesByUserV4' test.out

#- 339 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'SzEWOOEyH8PBTC6p' \
    --endDate 'wGzKZfwHmYQ5gkMA' \
    --limit '70' \
    --offset '85' \
    --startDate 'DNhtb7KKbkLKllpD' \
    > test.out 2>&1
eval_tap $? 339 'AdminGetBannedDevicesV4' test.out

#- 340 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'MgHLaFpxgjeKeZ2L' \
    > test.out 2>&1
eval_tap $? 340 'AdminGetUserDeviceBansV4' test.out

#- 341 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "IGjf4EhJ0umbwUHI", "deviceId": "k8LnjTbm9tRam5mR", "deviceType": "AUKaQLj6jLIsOtkK", "enabled": false, "endDate": "mnxB9HV9MlLOQc9u", "ext": {"si1d28E2MaxE8GFV": {}, "TetYRsxwD3r0g7oZ": {}, "QO0Fonju9yuczNND": {}}, "reason": "Rj0niLreAyWreADz"}' \
    > test.out 2>&1
eval_tap $? 341 'AdminBanDeviceV4' test.out

#- 342 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 's8jsopMv6mlCNmXd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'AdminGetDeviceBanV4' test.out

#- 343 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'IrsdNLKrf3YBEWLo' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 343 'AdminUpdateDeviceBanV4' test.out

#- 344 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'gghtWRxghxN6zo3n' \
    --startDate 'mG2i4vjC7wVD4LmK' \
    --deviceType 'nFTfzJbirw6sHyiS' \
    > test.out 2>&1
eval_tap $? 344 'AdminGenerateReportV4' test.out

#- 345 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 345 'AdminGetDeviceTypesV4' test.out

#- 346 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'P5T75AxfLh35V223' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 346 'AdminGetDeviceBansV4' test.out

#- 347 AdminDecryptDeviceV4
eval_tap 0 347 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 348 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId '6cB9oZ3eqFw5oG9J' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'AdminUnbanDeviceV4' test.out

#- 349 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'QCGAawr7p1NXRRQG' \
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
    --limit '47' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 351 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 352 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 91, "userInfo": {"country": "buByXV6p5HYpRv3o"}}' \
    > test.out 2>&1
eval_tap $? 352 'AdminCreateTestUsersV4' test.out

#- 353 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "w5EX7LlqMdfJsR4P", "policyId": "z2PWs1AB93UZ5Sr6", "policyVersionId": "wrRfzpksueglBIpc"}, {"isAccepted": false, "localizedPolicyVersionId": "1sHsCpLY1A0tFakp", "policyId": "vR87ey6QDJ90MOpZ", "policyVersionId": "DPOE3yKxFRJVhSJY"}, {"isAccepted": true, "localizedPolicyVersionId": "Be8qbhGnVcCpdNbY", "policyId": "5NujhBy1VDetZjTg", "policyVersionId": "SXnWCy92sKbopBSO"}], "authType": "EMAILPASSWD", "code": "8d4BIpS33wMVU91b", "country": "ys9rr0CxMKuKim5v", "dateOfBirth": "0tCM6ruwCl6ayjoo", "displayName": "1SwsxcVVxEukmrVi", "emailAddress": "ebvHTakpV2hfbyRZ", "password": "RtYvwTbMkXqnuxWJ", "passwordMD5Sum": "a01r0VxctD59C4hT", "reachMinimumAge": true, "uniqueDisplayName": "e5CYhaD4ASB1OFD0", "username": "pez2kBS7BpeN1DLq"}' \
    > test.out 2>&1
eval_tap $? 353 'AdminCreateUserV4' test.out

#- 354 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": false, "userIds": ["yDanahJJJwKoSkGf", "2G5eZuzriy6VjsZV", "zRWmoT0LGcx0ei9I"]}' \
    > test.out 2>&1
eval_tap $? 354 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 355 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["nJ1t8k2Ui5faOc0N", "E2sH4KJgfhhR0Or3", "GOxbPOcIouQi27xl"]}' \
    > test.out 2>&1
eval_tap $? 355 'AdminBulkCheckValidUserIDV4' test.out

#- 356 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '2oxHUXQvca2WgmSx' \
    --body '{"avatarUrl": "Rzh7Gw2vrtzKT84E", "country": "teDQRYirporj3SnJ", "dateOfBirth": "IjDR0I7eYj5xKtJf", "displayName": "2Bwv1tPczzOJcwOk", "languageTag": "U31aWmJ1Wn8K6Mi0", "skipLoginQueue": true, "tags": ["dpi13yV66SAONYV4", "5mb9kMHvGXLr2LNh", "bqjFlQhAsvvsA8ZJ"], "uniqueDisplayName": "8as0cvLtn94WHRAO", "userName": "91cFbCWdzKsw2B4H"}' \
    > test.out 2>&1
eval_tap $? 356 'AdminUpdateUserV4' test.out

#- 357 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'q950o0Hi8cOmrZKx' \
    --body '{"code": "CTEoMiuKAkETyPTy", "emailAddress": "RVj88DEDXWTRiwiS"}' \
    > test.out 2>&1
eval_tap $? 357 'AdminUpdateUserEmailAddressV4' test.out

#- 358 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'CvmumS6GqsSFb4bn' \
    --body '{"factor": "sRHCEVdlhWGzM0CY", "mfaToken": "a794cPUyFaxXAxaL"}' \
    > test.out 2>&1
eval_tap $? 358 'AdminDisableUserMFAV4' test.out

#- 359 AdminGetUserMFAStatusV4
samples/cli/sample-apps Iam adminGetUserMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    --userId 'yNKfFmXhhQVXYDTr' \
    > test.out 2>&1
eval_tap $? 359 'AdminGetUserMFAStatusV4' test.out

#- 360 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'JNzOfSjVhQVIKAf4' \
    > test.out 2>&1
eval_tap $? 360 'AdminListUserRolesV4' test.out

#- 361 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'pW1JF6Qa06Q0nGCL' \
    --body '{"assignedNamespaces": ["8r4kXpHsXO5Bb6yX", "PhC3wryaftBYBJJs", "9LSmsnezG3Q7UjY3"], "roleId": "8WO6rYesCVgXKY2U"}' \
    > test.out 2>&1
eval_tap $? 361 'AdminUpdateUserRoleV4' test.out

#- 362 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'XvfgIey7vxstLKAa' \
    --body '{"assignedNamespaces": ["3BB3eLk685y7YkFy", "uZbJNzp3F06c3h9a", "2r7yI01VpA7BiRsb"], "roleId": "baAX4D43VJ4AaXyb"}' \
    > test.out 2>&1
eval_tap $? 362 'AdminAddUserRoleV4' test.out

#- 363 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'vONE15syyJgLfpfA' \
    --body '{"assignedNamespaces": ["GB4ddHIexYL9ZV7e", "NgW6Brm3alHUhNDb", "MPmoyoGbnuc9ZeNx"], "roleId": "wid6yFtDdWxAiws7"}' \
    > test.out 2>&1
eval_tap $? 363 'AdminRemoveUserRoleV4' test.out

#- 364 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'true' \
    --limit '95' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 364 'AdminGetRolesV4' test.out

#- 365 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "TnP9TYhi5KwPm0o1"}' \
    > test.out 2>&1
eval_tap $? 365 'AdminCreateRoleV4' test.out

#- 366 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'scH3ydfLKdxBSsls' \
    > test.out 2>&1
eval_tap $? 366 'AdminGetRoleV4' test.out

#- 367 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'xHgYpN1woy3EVvnF' \
    > test.out 2>&1
eval_tap $? 367 'AdminDeleteRoleV4' test.out

#- 368 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'H1tabYmB8QVZAVXr' \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "kgTM8tUmH6nu8nH8"}' \
    > test.out 2>&1
eval_tap $? 368 'AdminUpdateRoleV4' test.out

#- 369 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId '8YlcP1PKyL1Emvqg' \
    --body '{"permissions": [{"action": 21, "resource": "9KXvITudEFIPIgUj", "schedAction": 77, "schedCron": "8HSvOO1AbkOqPkQR", "schedRange": ["yAuOnpITR1zj1dvU", "quIgHYZM55iWO5AW", "IyVqrtW5GqEOqm5y"]}, {"action": 51, "resource": "hy9Qikie2B79zN0p", "schedAction": 100, "schedCron": "vZzLjhymzt7nS3vW", "schedRange": ["vI5CQcERvMOtFFIC", "sXBj6YZRDRH8qs8x", "uAK0IaBjcns9BX7O"]}, {"action": 74, "resource": "W2SMuLnGeuRMdMY2", "schedAction": 20, "schedCron": "FRBKBeRvus4F6eLX", "schedRange": ["uIrrwM61oZ2YeM3Y", "0TE3gCTUQhHeQcn9", "s9le6beQwCMijWIa"]}]}' \
    > test.out 2>&1
eval_tap $? 369 'AdminUpdateRolePermissionsV4' test.out

#- 370 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'ctVBK1LQ42wKw04g' \
    --body '{"permissions": [{"action": 67, "resource": "FA0o89XTozU4zpt9", "schedAction": 11, "schedCron": "8C5F2AcgKzrRy7wt", "schedRange": ["dLmQHS06RrR5Trv0", "P2puRaGjJB4xjjvD", "Tz3G6cwtBRe3PFNe"]}, {"action": 16, "resource": "Kb0KHRoVYTv9PpYA", "schedAction": 23, "schedCron": "djC6UputLUOiNupT", "schedRange": ["DoDCMVFJZfjCeGxj", "xFAFAUeME1wAGyZA", "N7sEOoAqwZKKqWnC"]}, {"action": 16, "resource": "SuZ9CyDlildTY8xU", "schedAction": 10, "schedCron": "WANId85K16a3cKgu", "schedRange": ["CFZHiVN4Xvv4e0aW", "bQokgxBn0rfVjQf3", "Hg2xZPITPQnWH7uY"]}]}' \
    > test.out 2>&1
eval_tap $? 370 'AdminAddRolePermissionsV4' test.out

#- 371 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'FulE5nEtsHe38tRt' \
    --body '["jsujZUNTILOfK93i", "nz8JC6eBjiUfo0eh", "QrGhkajhyR16727J"]' \
    > test.out 2>&1
eval_tap $? 371 'AdminDeleteRolePermissionsV4' test.out

#- 372 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'ICoeDe2SweRN2Qif' \
    --after 'RBoMayCfnKKaUPbS' \
    --before 'TpGkScFMLzaRhO7Y' \
    --limit '71' \
    > test.out 2>&1
eval_tap $? 372 'AdminListAssignedUsersV4' test.out

#- 373 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'uRpYA3BnxhjQbebX' \
    --body '{"assignedNamespaces": ["fpL5tjgwiFG6Mtpl", "GRJn0R6d8a4Z60GL", "Kkh9T4WphCiPNqs8"], "namespace": "vnOxuSrvB5IgGRyf", "userId": "Huil9KADuxHKGni1"}' \
    > test.out 2>&1
eval_tap $? 373 'AdminAssignUserToRoleV4' test.out

#- 374 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'TWYdkgzH7hfB8NCH' \
    --body '{"namespace": "xH2wJgzZ9WA9eK13", "userId": "o6Twx4kTfY5XV65e"}' \
    > test.out 2>&1
eval_tap $? 374 'AdminRevokeUserFromRoleV4' test.out

#- 375 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["XcdkwExUNo5ZP36L", "Wnk8SVhLbeVTRYWj", "x5AJvE9ASnKtPi8P"], "emailAddresses": ["eqWLuUrtL3JmZarr", "LZQv1EP61bfDrQwg", "jikkXYnmODIpDA1Q"], "isAdmin": false, "isNewStudio": true, "languageTag": "2r6FlmHGcxLDLR50", "namespace": "MShWR72JoTlbXgJm", "roleId": "Y3dGayVlJMbvtSM3"}' \
    > test.out 2>&1
eval_tap $? 375 'AdminInviteUserNewV4' test.out

#- 376 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "LV4jKPImKeQ59gMx", "country": "RrIpoqoGPrYaciMn", "dateOfBirth": "nTlP4nteccNRJB6p", "displayName": "UMgTZrvVpRsjB2bY", "languageTag": "mO8QklU25TstV9RE", "skipLoginQueue": true, "tags": ["mB7diQwIR2bUJfX0", "lr25S5wbCC1159Wl", "7TwWML47txQWEVT5"], "uniqueDisplayName": "RwWMkK8twB9zc2u8", "userName": "QNStYka3SrfqBxTN"}' \
    > test.out 2>&1
eval_tap $? 376 'AdminUpdateMyUserV4' test.out

#- 377 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"factor": "QpRk3nmFvZ4ax8Ra", "mfaToken": "lmWCUO724ByfwCQY"}' \
    > test.out 2>&1
eval_tap $? 377 'AdminDisableMyAuthenticatorV4' test.out

#- 378 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'vRnWNos3kSL3Lkjx' \
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
    --body '{"factor": "wBeOh4ss5dpDdX8l", "mfaToken": "9GwvKCKEDjHSDIJs"}' \
    > test.out 2>&1
eval_tap $? 382 'AdminDisableMyBackupCodesV4' test.out

#- 383 AdminDownloadMyBackupCodesV4
eval_tap 0 383 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 384 AdminEnableMyBackupCodesV4
eval_tap 0 384 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 385 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag 'C662OiKPsqhRcmAh' \
    > test.out 2>&1
eval_tap $? 385 'AdminGetBackupCodesV4' test.out

#- 386 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag '6PTHa23Ov8tZCC7F' \
    > test.out 2>&1
eval_tap $? 386 'AdminGenerateBackupCodesV4' test.out

#- 387 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag 'NsFEdb0kYXYkr1Z9' \
    > test.out 2>&1
eval_tap $? 387 'AdminEnableBackupCodesV4' test.out

#- 388 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code 'TxAnSi0IoIUAzme2' \
    --factor 'SjjQ5QyfgRCbYtZI' \
    > test.out 2>&1
eval_tap $? 388 'AdminChallengeMyMFAV4' test.out

#- 389 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action 'B7WDWgMSWcFHcd1t' \
    --languageTag 'JL9tF55o8YbX60I0' \
    > test.out 2>&1
eval_tap $? 389 'AdminSendMyMFAEmailCodeV4' test.out

#- 390 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"factor": "1nJsP1o90iKlQoNs", "mfaToken": "s4IAtg3MSftAPa5k"}' \
    > test.out 2>&1
eval_tap $? 390 'AdminDisableMyEmailV4' test.out

#- 391 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'UN4DVTe6PRrgj0yE' \
    > test.out 2>&1
eval_tap $? 391 'AdminEnableMyEmailV4' test.out

#- 392 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 392 'AdminGetMyEnabledFactorsV4' test.out

#- 393 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'JOkGAP94hRmzrjy0' \
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
    --clientId 'AqcgubsHJeXiygWn' \
    --linkingToken 'R7YfByj2jxT26d5f' \
    --password 'RPx0JLOmUu6RZ6do' \
    --username 'HEs80AxyJDy5g2ZL' \
    > test.out 2>&1
eval_tap $? 397 'AuthenticationWithPlatformLinkV4' test.out

#- 398 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData '0Idy9ksMGhwI7oct' \
    --extendExp 'false' \
    --linkingToken 'nbkDZOQthRoeCPfH' \
    > test.out 2>&1
eval_tap $? 398 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 399 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'Vfwr2uXc6rlaLFMW' \
    --factor 'HiLk6nwnFAoFS1yw' \
    --mfaToken 'gyJhZygzv0xZ7yYe' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 399 'Verify2faCodeV4' test.out

#- 400 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'CJ12KUswoZWEkpj8' \
    --codeChallenge 'Nkmw5GTO0pvGPaR0' \
    --codeChallengeMethod 'plain' \
    --additionalData 'Om42fwHPQYebfrxn' \
    --clientId '88LOnYS5gfmsrEHm' \
    --createHeadless 'true' \
    --deviceId 'MCs18GUAqnhSyjvJ' \
    --macAddress 'nF3mMSADicSw4MOB' \
    --platformToken 'Ma8N09BV4i7OMzH0' \
    --serviceLabel '0.7452726873255396' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 400 'PlatformTokenGrantV4' test.out

#- 401 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'YBBiXaDfECEYdjvA' \
    --codeChallengeMethod 'plain' \
    --simultaneousPlatform '8Sj6vBFErQ3BNrnz' \
    --simultaneousTicket '8y9rCBB7p7KhI2y8' \
    --nativePlatform 'steam' \
    --nativePlatformTicket '8TwGQJAOGYYhv5wG' \
    > test.out 2>&1
eval_tap $? 401 'SimultaneousLoginV4' test.out

#- 402 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge 'CczzZA8sxgtFk9gg' \
    --codeChallengeMethod 'S256' \
    --additionalData 'kkcbUo54Val6ZrVf' \
    --clientId '5PMTz3T0OdA5yVH1' \
    --clientSecret 'ikhzftkdNQ7PJ05R' \
    --code 'o69kGchsMMftTahn' \
    --codeVerifier 'vk3cUEA9EKsWAzvK' \
    --extendNamespace 'xWiZWKy8X8tSqSCi' \
    --extendExp 'true' \
    --loginQueueTicket 'zGLCGk4WIGLYzNiw' \
    --password 'QM1EvhRAUMC9kaRF' \
    --redirectUri 'lOgp8indqYsD7YDr' \
    --refreshToken 'HS6cOASJk6Dq5v4H' \
    --scope 'DF8Wynyk1liVhgpW' \
    --username 'Q6RZX26ikYUM0iSW' \
    --grantType 'urn:ietf:params:oauth:grant-type:extend_client_credentials' \
    > test.out 2>&1
eval_tap $? 402 'TokenGrantV4' test.out

#- 403 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData '58iBkAswQWaBzSaE' \
    --code 'pg6rzFjwPxA0KF2x' \
    > test.out 2>&1
eval_tap $? 403 'RequestTargetTokenResponseV4' test.out

#- 404 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'yG0jVKFyUMv8ND1u' \
    --rawPUID 'false' \
    --body '{"pidType": "XFUtUn9sBM06U1fS", "platformUserIds": ["1pLu3zfdn2VjvMiM", "n3x1hP3mjfNbl6HT", "JPAsnDHpejB3rC9B"]}' \
    > test.out 2>&1
eval_tap $? 404 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 405 PublicGetUserByPlatformUserIDV4
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'CFEMb5Nt9YRVvUnu' \
    --platformUserId 'cUv7bMXZChDU8FyE' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserByPlatformUserIDV4' test.out

#- 406 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "w3SrCPaExRpyvmDt", "policyId": "8SAn6pEUzjrOxcpJ", "policyVersionId": "RSjE6pJZ6D6csFMP"}, {"isAccepted": true, "localizedPolicyVersionId": "54PhvVZKCHfuFZQ9", "policyId": "Bw8DzFOEqQN8N5ed", "policyVersionId": "mi1cHUxKBfRnrzAu"}, {"isAccepted": false, "localizedPolicyVersionId": "bCldg0IW9cT6Cb8L", "policyId": "5m6EzaGnT3rO5QOt", "policyVersionId": "FIgfhis22JbNIDwu"}], "authType": "EMAILPASSWD", "country": "ZwIBZSjOlDneKY03", "dateOfBirth": "yCoQYANmLp8Ml5zt", "displayName": "rAFLlVOWvVEMWKRA", "emailAddress": "XVVji0szBSVkuplA", "password": "KHy4SQcOh1jOD7FW", "passwordMD5Sum": "p5PRwTdG0ZXpDORW", "uniqueDisplayName": "iAkomwnfyJbHk5c8", "username": "reSusOwRdrMgvEAO", "verified": false}' \
    > test.out 2>&1
eval_tap $? 406 'PublicCreateTestUserV4' test.out

#- 407 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "X5pmsaKY4epu3o6J", "policyId": "jQ00NI7ki88QwCRu", "policyVersionId": "1JkbKKQI6ApCqGzq"}, {"isAccepted": true, "localizedPolicyVersionId": "9WNEHM9Qoqpe4yzx", "policyId": "f9NdFxkjsOsbXc1V", "policyVersionId": "Q68fi4kfKwgMwPmF"}, {"isAccepted": false, "localizedPolicyVersionId": "3AYF8a81ur2AP6FR", "policyId": "pZRMt6ie4INTJhbg", "policyVersionId": "MjurNkQjpgxdgA7E"}], "authType": "EMAILPASSWD", "code": "H4gVMdyoWB22h03V", "country": "kcxBr1Jn13mX3fpt", "dateOfBirth": "aYxUQkMQZHGECPJF", "displayName": "zFL6uz0mcChKRXuj", "emailAddress": "BfOvCJYghsmOVaim", "password": "wo9eCtEEiXxxbimn", "passwordMD5Sum": "DHida4lWLyFYR54B", "reachMinimumAge": false, "uniqueDisplayName": "MdLZ7fHQ89atPwvX", "username": "YYmAyI5GqioW6uU1"}' \
    > test.out 2>&1
eval_tap $? 407 'PublicCreateUserV4' test.out

#- 408 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'BkyydxyArpNBFDBW' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Fv6uvMaz3EOW7ayi", "policyId": "AvNbnd1c6SgpCpU8", "policyVersionId": "mSZtExG57KKlplmG"}, {"isAccepted": true, "localizedPolicyVersionId": "835IwRAnzcbtrKv3", "policyId": "o7PTXYYtO6LCuBo7", "policyVersionId": "UopCVDxZthUNH1zA"}, {"isAccepted": false, "localizedPolicyVersionId": "cesbtAIx2sulxAFo", "policyId": "AYiHEVQQ3sNIT5qu", "policyVersionId": "GNkwRFuvC5Efop2q"}], "authType": "EMAILPASSWD", "code": "NYxXeI9x68yGLHRb", "country": "V7P1mAwwcufgUXlJ", "dateOfBirth": "aamJfl4q3YSJpC4R", "displayName": "pCzoUTEQsL6Sdg5m", "emailAddress": "4Yx9pGvdmCdf1oU1", "password": "LJJGWUTIfrwlPKOt", "passwordMD5Sum": "iHDUCfIUnZjmfOWr", "reachMinimumAge": false, "uniqueDisplayName": "b7EaQnntroUHfxWN", "username": "9U0nj3bTAhd0moq9"}' \
    > test.out 2>&1
eval_tap $? 408 'CreateUserFromInvitationV4' test.out

#- 409 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "cNNz4640knia6MkM", "country": "ulngyAve17sGRNTd", "dateOfBirth": "U10IGOzRmVKx9A7T", "displayName": "M7VYiXIjI9Hc77wg", "languageTag": "peClWkYarWYlwE5V", "uniqueDisplayName": "iR0XTqSpRCXdpBFt", "userName": "Vgq7MHWOrNPwhh0L"}' \
    > test.out 2>&1
eval_tap $? 409 'PublicUpdateUserV4' test.out

#- 410 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "84JfCouW4iqOoqnS", "emailAddress": "l83IIS6UsHbsgSR0"}' \
    > test.out 2>&1
eval_tap $? 410 'PublicUpdateUserEmailAddressV4' test.out

#- 411 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "u0xT3uTo6nu3PUVz", "country": "x83D31QAkTuAeQjj", "dateOfBirth": "iINlcfhbqJBu8qUI", "displayName": "ERv2xhlLOu5AhAHF", "emailAddress": "r1WbRwzrilReQkiv", "password": "eAheG1WB5LQDQWK3", "reachMinimumAge": false, "uniqueDisplayName": "k7QK17zFI2qnMvtM", "username": "FA0td1M5ZXApVBjM", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 411 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 412 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"dateOfBirth": "2OsdN8wEMNYz58tA", "displayName": "qQGUFga6T8ZJg9Y2", "emailAddress": "sEhp0XnqSmVAVG4d", "password": "zS0YuWoA1C53ojaG", "uniqueDisplayName": "83L4J9mjBJjEShcS", "username": "6ztiyWmQGNZM8Ip8"}' \
    > test.out 2>&1
eval_tap $? 412 'PublicUpgradeHeadlessAccountV4' test.out

#- 413 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "MKc3jkEF6sAOmEeP", "mfaToken": "zk4xjse2OL0XzPa3"}' \
    > test.out 2>&1
eval_tap $? 413 'PublicDisableMyAuthenticatorV4' test.out

#- 414 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'eNzjYMNCOyOOgvqg' \
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
    --body '{"factor": "EJXya8l2LDNrERm5", "mfaToken": "QBfqUFvKPZsV8ehr"}' \
    > test.out 2>&1
eval_tap $? 418 'PublicDisableMyBackupCodesV4' test.out

#- 419 PublicDownloadMyBackupCodesV4
eval_tap 0 419 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 420 PublicEnableMyBackupCodesV4
eval_tap 0 420 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 421 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'WDJLGaJehs4B82Cm' \
    > test.out 2>&1
eval_tap $? 421 'PublicGetBackupCodesV4' test.out

#- 422 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag '5Nq8AquQVmjTuLHJ' \
    > test.out 2>&1
eval_tap $? 422 'PublicGenerateBackupCodesV4' test.out

#- 423 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'AZs808Zd1T9XQTys' \
    > test.out 2>&1
eval_tap $? 423 'PublicEnableBackupCodesV4' test.out

#- 424 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code 'ZUqvukF2U9gTbUfi' \
    --factor '4SYxXCqLRZoF5pF3' \
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
    --action 'wPFenIExC2Q4cUik' \
    --languageTag 'xmgbtKGD6cOM2YPb' \
    > test.out 2>&1
eval_tap $? 426 'PublicSendMyMFAEmailCodeV4' test.out

#- 427 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "nqI9k71MAeTNtX8c", "mfaToken": "IRumVtUBTzIAJ8vI"}' \
    > test.out 2>&1
eval_tap $? 427 'PublicDisableMyEmailV4' test.out

#- 428 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'zAri900HgusiUeZN' \
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
    --factor '9d3xzF67a2SY0vF4' \
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
    --userId 'KzEQX0nbMgElrjLq' \
    > test.out 2>&1
eval_tap $? 433 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 434 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "yimXauYCpgVyzPKD", "emailAddress": "grOt9vztNzViyseX", "languageTag": "MFV52zr2fGQi4rAU", "namespace": "1vVmcUOIDN5YMYZ4", "namespaceDisplayName": "ds4LCGwGmqA9Awap"}' \
    > test.out 2>&1
eval_tap $? 434 'PublicInviteUserV4' test.out

#- 435 PublicUpgradeHeadlessWithCodeV4Forward
samples/cli/sample-apps Iam publicUpgradeHeadlessWithCodeV4Forward \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "WJoys4BftWckSCSK", "policyId": "waTdyFbNpYttrv31", "policyVersionId": "ZfvYnVGIuojMdr68"}, {"isAccepted": true, "localizedPolicyVersionId": "6nk3r3rSO13Yn9zk", "policyId": "E4HBk09jTpmStLO4", "policyVersionId": "T3BmvCZGNivvz8Qa"}, {"isAccepted": false, "localizedPolicyVersionId": "d9DBNgYF7bpDO7ZC", "policyId": "iZGbbURlnmKKJsfF", "policyVersionId": "yca5XtwXeFzXyZ8g"}], "code": "5ziXRytIszziUJ11", "country": "6wroZm09sZIIjq3P", "dateOfBirth": "uHZZbVh9ttgmC44R", "displayName": "NhKd2SsZ76LqpOZQ", "emailAddress": "0p3y52ZEIL2omXhC", "password": "juvdo9M6moBBc4ks", "reachMinimumAge": false, "uniqueDisplayName": "EdGDt3vzoiybdTWY", "username": "PONmz9UZKFXctbv2", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 435 'PublicUpgradeHeadlessWithCodeV4Forward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE