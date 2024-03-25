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
    --body '{"modules": [{"docLink": "6R8zFni2jBVmDn7K", "groups": [{"group": "7uH1kSQfvxJFGiqP", "groupId": "op93ksWuPc5NukQT", "permissions": [{"allowedActions": [99, 98, 86], "resource": "0U7GbcQLeR53UVUS"}, {"allowedActions": [97, 84, 71], "resource": "qEHU3DpBsCDkAd4C"}, {"allowedActions": [57, 74, 31], "resource": "ktBidvEqAvMAD9Vj"}]}, {"group": "sEd0GxRzXDItrbZ4", "groupId": "Ygqvt9T7A300IwPx", "permissions": [{"allowedActions": [16, 75, 99], "resource": "Hzra9EMwfoECmuo4"}, {"allowedActions": [13, 41, 37], "resource": "Ua6pYlMXKoBsTNac"}, {"allowedActions": [45, 34, 27], "resource": "FDmuUa1qTAE0Lluw"}]}, {"group": "9XfjRHgl8hf4Z53c", "groupId": "1TV3rumGxV1Udd8O", "permissions": [{"allowedActions": [35, 9, 79], "resource": "IpkmDMlDRGlvkP8e"}, {"allowedActions": [47, 43, 62], "resource": "Iy9wW0g6wfIKJ9jO"}, {"allowedActions": [85, 3, 79], "resource": "OnWzDUeFjfaKkuw2"}]}], "module": "ZSlVBpaLX8oeVs4E", "moduleId": "nZtl9YrqiImCq2dI"}, {"docLink": "0h4MwLreL5QBG561", "groups": [{"group": "gAxUICaC2o3Z5D7r", "groupId": "kGqlouGhTaCXSnz8", "permissions": [{"allowedActions": [48, 37, 59], "resource": "5Abz0BU3xAlvB2Oi"}, {"allowedActions": [95, 55, 88], "resource": "NugWgIMVMRADclub"}, {"allowedActions": [8, 42, 57], "resource": "rfaihk7r91D23h0k"}]}, {"group": "RatfimFPyFYxg7Bd", "groupId": "fKT8LQ8ShHgX1gMw", "permissions": [{"allowedActions": [94, 88, 60], "resource": "AdZCvQbczxsCOuU9"}, {"allowedActions": [84, 2, 31], "resource": "kVJgfwVVHviRw0is"}, {"allowedActions": [55, 93, 15], "resource": "wrNQNCdj9uwbX3pY"}]}, {"group": "bOF8zYlQWCgUiqjv", "groupId": "Duq5iuH1ePv2f115", "permissions": [{"allowedActions": [17, 54, 83], "resource": "Z07qVwZFCUnE7ZBc"}, {"allowedActions": [84, 68, 90], "resource": "1RSDfg2KMrNifA2B"}, {"allowedActions": [69, 44, 64], "resource": "DjYKicddsPcl9zNm"}]}], "module": "PCAnNv28ysMtSBUV", "moduleId": "YSOnfMnMriOujj6m"}, {"docLink": "RvPlc80KjOg8GOpU", "groups": [{"group": "Ig0y3KToVkCybxKV", "groupId": "g0DUAJHVxwikk8fp", "permissions": [{"allowedActions": [74, 92, 68], "resource": "ue9kjOJSkHOVPqx9"}, {"allowedActions": [38, 64, 13], "resource": "m5kLDBFRbr9EdpMs"}, {"allowedActions": [25, 50, 47], "resource": "aSb80Um34dtZqite"}]}, {"group": "BvWHf9WvN6PuXEF5", "groupId": "clFMIt14hHHpyOh1", "permissions": [{"allowedActions": [17, 39, 89], "resource": "DYWgFRVuG162JDZo"}, {"allowedActions": [89, 100, 49], "resource": "dwHSL11cG6YzuKKm"}, {"allowedActions": [1, 68, 14], "resource": "wtt8xdNRuh29BxsE"}]}, {"group": "kiKCY0mmLvlXclSK", "groupId": "BFZ6BCWSxfMQMuqi", "permissions": [{"allowedActions": [47, 41, 37], "resource": "TC3aVqfLO5PtewAd"}, {"allowedActions": [3, 88, 58], "resource": "yy9GQ4TXDGmvCqoj"}, {"allowedActions": [47, 90, 67], "resource": "ujUIy42ddpGzDNv6"}]}], "module": "kJnZ3lHa4IqJWLiD", "moduleId": "j2KmJycrHm23l0HD"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'true' \
    --body '{"groupId": "4wMl0JMC9QJQ2vad", "moduleId": "rM2zIgudr4d7Bl5n"}' \
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
    --body '[{"field": "pKaBwONhxs0imIDc", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["XkLWu70WGIxAFwUd", "mgetVQT23KsHTZTC", "nAZrYsiNcyUOmiZC"], "preferRegex": true, "regex": "wp9K0A8P2w0c6BDR"}, "blockedWord": ["vFtEZfa3QZWIvQHo", "ctuRWKbMtB9c36GK", "Gkw97D4UMI3FxzdH"], "description": [{"language": "qivcZa0NB0VNq4cQ", "message": ["9LrC5kRSzAF5Plx3", "VZ891fOtJ3fJTdDl", "p71vcffn7yoRjK38"]}, {"language": "WnBPOZsIsmuY570R", "message": ["xASkqrNrlK9NkhTj", "ieoY76d3V1oyqWo0", "bCvdhFNpYYxQ28PN"]}, {"language": "gXCTk89htmqlbt11", "message": ["IprWwnvTkedi7lHu", "TSS1uR0Xv8jdNSJs", "TRDZXSwZdJDmuXaK"]}], "isCustomRegex": true, "letterCase": "S9kcADal5Z30YvrI", "maxLength": 53, "maxRepeatingAlphaNum": 66, "maxRepeatingSpecialCharacter": 31, "minCharType": 26, "minLength": 56, "regex": "JOfARqlnmi3fARKc", "specialCharacterLocation": "hqe8IcuTQrDLMVas", "specialCharacters": ["A1wTM9Y9kIqyL7vf", "hWsL1XbEic6gUhfj", "66R3yf4hkiswnxBr"]}}, {"field": "wjhaxtFT1RdSWqAI", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["gFUQoQJ9Yfask2Ey", "16rAfXXXVqcG01HA", "Oxk7IzGCVif55u1g"], "preferRegex": false, "regex": "xx5SJYRego9IvDx4"}, "blockedWord": ["ahbKymU7ovaqr7Xq", "e5T8jbrMZVtVOltt", "Pm28iFba4YbfiLZL"], "description": [{"language": "iQnAYRP4hw9fmoIi", "message": ["JHKruKAGFla6qUEy", "qaHUfuRUlvHhN4Ad", "8DNteXNAPrGcY6H3"]}, {"language": "WhSkD07hoZcg3pmV", "message": ["GFS4l2PJPNBhIuJ8", "5WVHhCxOpdTxQy6J", "OV8qcmA6M7q2Zbso"]}, {"language": "HcpfhVTOEf6SeuHh", "message": ["jp9ZyplnWEEDDhZy", "1TW8jeaV5SFdq8WG", "D8hemAsDndD0WO4Q"]}], "isCustomRegex": true, "letterCase": "erG5UkzIh1sMvP0J", "maxLength": 19, "maxRepeatingAlphaNum": 7, "maxRepeatingSpecialCharacter": 28, "minCharType": 31, "minLength": 28, "regex": "j22QsOrqDvtytYoa", "specialCharacterLocation": "WtNQzPTyQRSrDFBF", "specialCharacters": ["I4hAAid39Zim8lX1", "J3z2qjyK2tqS6MB9", "aqo640yk5UihGG5Y"]}}, {"field": "x798MQTgKexR2A2E", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["ejE8ZD9PufcBxNPs", "o1ZqqTXs93oUbsD1", "nxsxK0TEvsav9zs0"], "preferRegex": false, "regex": "yAJErVGV60Q8r0vf"}, "blockedWord": ["666LULqCHQmpJRxe", "6Ggf0nyxIUQa3FkS", "TxDSHKFQjpYycJd0"], "description": [{"language": "NTSKMElV2LQbKd6V", "message": ["SDY4WDrou9UogFhI", "kImARoH67RM9CHyc", "KEnELDtoUNILdIPN"]}, {"language": "n6Kq2WtfvlCovN4y", "message": ["zV1UF3lDECqoiOMS", "MEagxGpgyCWgbNar", "3cHHLfZWARuAQuAq"]}, {"language": "Po2CgB2prKimFmkS", "message": ["emEH60zI6wvVkR7T", "oF6JzfiJy9VBjicf", "fq9THN3nNgGlokOL"]}], "isCustomRegex": true, "letterCase": "usBF4V51wlTZS3Jp", "maxLength": 19, "maxRepeatingAlphaNum": 49, "maxRepeatingSpecialCharacter": 19, "minCharType": 10, "minLength": 37, "regex": "I0JxYy6cFxCU9FYP", "specialCharacterLocation": "G6M8FgycfKyFb9am", "specialCharacters": ["kvlDq2BazIrMIcgy", "dCUYzpwF123MDGRu", "bVkXlNj39QEn18Qc"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'RcwstatHLXZznkuk' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'JOX42J2jG4nCVcel' \
    --before 'yGlDLlMjWcJTiYeO' \
    --endDate 'TkXIdICPy8jSLXoa' \
    --limit '83' \
    --query 'VtHczZZ5DPAg5fbJ' \
    --roleId 'KPwDgNZ5mTpDEoO6' \
    --startDate 'clzYaSjXVHQcltpA' \
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
    --body '{"ageRestriction": 32, "enable": true}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'iG1hjdmV4dUuUoWX' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 28}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'nVFu0GxQ7JWZ8MiM' \
    --limit '99' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "tZ0R5UOir9SHBJ6L", "comment": "2hptOgkynLh8Kqne", "endDate": "7zDcfs372YK7swXF", "reason": "bqereAU8zTZOa2Ob", "skipNotif": false, "userIds": ["kjgZlredoPjAzfoL", "yoXOTyEQXKpe86Nw", "6JJvBmO3ZWs1YHJT"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "myleN4i4f4XAllDT", "userId": "z3UyfMaoYq3kNKUb"}, {"banId": "eJeCQuVgaJAzSoAd", "userId": "sqsvn5tQKgRtaW3j"}, {"banId": "3koCT2a5sMyNwri6", "userId": "yOL57Hoenl4MzOt5"}]}' \
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
    --clientId 'TMWlCHwF1O3oaJBw' \
    --clientName 'p4F4xpigUZ89ZWCy' \
    --clientType 'k6OHewVd11rwXuyH' \
    --limit '51' \
    --offset '9' \
    --skipLoginQueue 'false' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["cyMpRcGtv1WeBNNw", "zsq8XtRQfKpgiyJK", "3ODoG6yIYU3yEUEF"], "clientUpdateRequest": {"audiences": ["Gp6ELIxz8rwnQD1G", "MJsnaXKFPDY2tIxS", "BPM5DygeXzLZ8gen"], "baseUri": "oMRzGAdHd7z58kPY", "clientName": "Mf2y9IeB3rPShqVP", "clientPermissions": [{"action": 18, "resource": "dys4gKa0dgAitPMv", "schedAction": 52, "schedCron": "IKTYgpCUOetkQaGK", "schedRange": ["rtuFm3abPZxQ6htC", "dmGGds0SAAiKgr43", "KFXfvPlvytFTOjy8"]}, {"action": 65, "resource": "3zd2nQffcRV3u9iY", "schedAction": 32, "schedCron": "k2EsDIW8AnFDdLth", "schedRange": ["q0LJVuHhOwQqm5ac", "WDPY7HYkQJJzvqhy", "D2PZgTxi6izYe0aN"]}, {"action": 54, "resource": "jHIceLrxK3Y8p81y", "schedAction": 94, "schedCron": "c44SFD0VvwwpFDWU", "schedRange": ["CtxrLm51A4t3mBDi", "CHeOOqjqYSuKuarb", "pUu7zr1NUqOVQVSl"]}], "clientPlatform": "Q5iM7qUpoAfdcKPG", "deletable": true, "description": "2K6tv3ULC4HIFbNB", "modulePermissions": [{"moduleId": "WTttuu1ZbhvajZOR", "selectedGroups": [{"groupId": "kan2uD5Oc67RQH37", "selectedActions": [17, 31, 56]}, {"groupId": "1dFxuK4DsoaeYCnb", "selectedActions": [14, 9, 28]}, {"groupId": "2KbFZayruzGbvbNA", "selectedActions": [88, 80, 99]}]}, {"moduleId": "UHzjmsIX3dr8ThYM", "selectedGroups": [{"groupId": "AFavrr1lbT1dzakG", "selectedActions": [3, 41, 52]}, {"groupId": "aqneaq5862pTbJbg", "selectedActions": [73, 9, 48]}, {"groupId": "iGDhZkxfyXl2qq71", "selectedActions": [66, 95, 94]}]}, {"moduleId": "xUQ57LAkjOQugZBe", "selectedGroups": [{"groupId": "UohUBALbOIMrI2DJ", "selectedActions": [23, 67, 15]}, {"groupId": "PGZDUwE5SOGV1l0b", "selectedActions": [30, 24, 61]}, {"groupId": "kBZghVf7EJXYFAdM", "selectedActions": [38, 84, 60]}]}], "namespace": "W4rQsne3rwSMn9IN", "oauthAccessTokenExpiration": 80, "oauthAccessTokenExpirationTimeUnit": "QrMgq8tK2G7d35bC", "oauthRefreshTokenExpiration": 94, "oauthRefreshTokenExpirationTimeUnit": "BRtZsArswH2Efm4N", "redirectUri": "54WiI5kTLNv3D9Qe", "scopes": ["vE86cg0vYVWMlNU4", "J8xbMCEx6t3K84PE", "zEcAbes0Eauuh5uJ"], "skipLoginQueue": true, "twoFactorEnabled": true}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["T5bJkcFCFpiuI1My", "ZwYq2C0DB3ZMXqtO", "55W0zhKOxvwozowb"], "baseUri": "y0BkhIlKwPMhQQzH", "clientId": "9nB8il1pTJcGkvyj", "clientName": "akLGmgUJSLFbkvza", "clientPermissions": [{"action": 15, "resource": "QyDNglJeqxAGSrc3", "schedAction": 58, "schedCron": "xL8IdjyiylaUjCzt", "schedRange": ["eCUDvP8VX58BCLJ5", "6pfgUFFGDs5U5zZo", "vsHWBZ4tdcfGxwPj"]}, {"action": 8, "resource": "3jkG0p6CVmoCLK1s", "schedAction": 39, "schedCron": "iYSzCnc4EtMRUskA", "schedRange": ["49K1qMEuex7MV9DU", "2ReRTYT7S9tEQqsb", "Nfyau4ZetGnQRntv"]}, {"action": 29, "resource": "JSzl2TFMRPfiCp1O", "schedAction": 75, "schedCron": "wvudXTu0SHN6szOo", "schedRange": ["HpR2EF00nWSdamng", "xMZ4DJpHXBt1gkmv", "IBXbI8tGJtLwOle9"]}], "clientPlatform": "OTnoJmNZstMobyp2", "deletable": false, "description": "kDJN8q2NnjTK762v", "modulePermissions": [{"moduleId": "yp6QEVic39msddHI", "selectedGroups": [{"groupId": "EMtEXWipuUOrJVrA", "selectedActions": [35, 34, 26]}, {"groupId": "R44mdj60vgIUmIgJ", "selectedActions": [38, 4, 94]}, {"groupId": "DCwbsY89CBt89c23", "selectedActions": [62, 74, 59]}]}, {"moduleId": "f50cZIGu8X7V1ByX", "selectedGroups": [{"groupId": "qRusdoZsBnmzNUOY", "selectedActions": [22, 97, 79]}, {"groupId": "UhgYg55FpeG3Wlye", "selectedActions": [85, 66, 26]}, {"groupId": "p5htSGNACE9iFmf0", "selectedActions": [72, 54, 55]}]}, {"moduleId": "KxME0h7LE6k5LLS1", "selectedGroups": [{"groupId": "erlntSQYdmL44snd", "selectedActions": [45, 54, 98]}, {"groupId": "lmCfjZ2rn6IJcD9S", "selectedActions": [79, 74, 19]}, {"groupId": "WWuon97fsnXT7vjh", "selectedActions": [80, 56, 49]}]}], "namespace": "IqpL4nSLIWXkge5W", "oauthAccessTokenExpiration": 91, "oauthAccessTokenExpirationTimeUnit": "g0JyM01u8Dx1Z05O", "oauthClientType": "KrXsm1plPMz2NZod", "oauthRefreshTokenExpiration": 65, "oauthRefreshTokenExpirationTimeUnit": "X4UMbj4u27tprFDX", "parentNamespace": "pqdsRdTsdfR8znQT", "redirectUri": "4ZNNiJUEn3u08LhZ", "scopes": ["2mzdgPtMoO1lk7so", "zSwbzNZUTXZj4eBR", "bPucRPaMhsI7ctvV"], "secret": "oE0tN9qItxLOFU2L", "skipLoginQueue": false, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'k0PnaOrzD2QcoqIq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'RBNwHOufyxG07Hir' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'OEDVguAf42roUOaS' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["4ZCHwC3QkY9YxI2s", "LvQBDhPkevHPyJm2", "EzNcNHGRTovYCCx4"], "baseUri": "yUpNAKiew3TdJKbU", "clientName": "pi22kdp31xfEmwuc", "clientPermissions": [{"action": 91, "resource": "vivfVlO9UzXe8hpf", "schedAction": 20, "schedCron": "MEM4hvs7WM3yuunq", "schedRange": ["OgtWYpP8jyhLPaNb", "G65UAB8JRcEBN7CA", "kKmAT2za7ftQNB9y"]}, {"action": 72, "resource": "fvvrE4kAuHUtiG3j", "schedAction": 71, "schedCron": "0WtImL05uo0bASw1", "schedRange": ["3yjDh9zPkrW4RWDk", "PlFu4E9fJnqsyP3g", "1DWLj08NAGd1ykx9"]}, {"action": 100, "resource": "PKVzUs48MtkbUoCZ", "schedAction": 92, "schedCron": "1EmPsJzkllS1sG99", "schedRange": ["arz0oZZ70Or1MZkj", "jUn8FCmJLzUhfFLH", "P76I8bq2h7NTRILR"]}], "clientPlatform": "zkIZuCruAwiQ0Whc", "deletable": true, "description": "9prEVHkEmyQ8TEAz", "modulePermissions": [{"moduleId": "UqtHWcURZoDn9120", "selectedGroups": [{"groupId": "03NrOmanzD6BpFRt", "selectedActions": [88, 14, 47]}, {"groupId": "XQEzlEO9TTFZLagW", "selectedActions": [89, 49, 63]}, {"groupId": "jkX1fs1xdBSTJ7qB", "selectedActions": [88, 83, 40]}]}, {"moduleId": "DwGFfmyzx2wMZTiB", "selectedGroups": [{"groupId": "BqwBiNADyjQgqzHU", "selectedActions": [53, 98, 29]}, {"groupId": "cgFKb2i21SQBSghQ", "selectedActions": [71, 69, 73]}, {"groupId": "04lDKjxeZDU4fgx0", "selectedActions": [79, 10, 6]}]}, {"moduleId": "yifql6Q6XDDzsRoF", "selectedGroups": [{"groupId": "J8HgKlK5lVcuU3hN", "selectedActions": [89, 54, 34]}, {"groupId": "gh9myo96zTRCP0ei", "selectedActions": [99, 39, 12]}, {"groupId": "WBWaaIEtFVRokK4F", "selectedActions": [12, 23, 8]}]}], "namespace": "9i688VGvWPuQkkLQ", "oauthAccessTokenExpiration": 89, "oauthAccessTokenExpirationTimeUnit": "JtTKVJx8a04a9wxb", "oauthRefreshTokenExpiration": 37, "oauthRefreshTokenExpirationTimeUnit": "y8u8pUoBQ9Wpu4Y3", "redirectUri": "CckbPDFs3FdvtxdB", "scopes": ["ZRhtOqVVTuFy1v4a", "uPktLVSh2quabv3v", "B1YXmzvuljszxMQG"], "skipLoginQueue": false, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'iaTkmbEA3jFim22g' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 60, "resource": "8zF28BKao45aHbuI"}, {"action": 8, "resource": "gWQRn7ulT9BP8kuM"}, {"action": 7, "resource": "42ktWGCpNDV6AYVz"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'LjTivOizNvLujF0r' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 91, "resource": "oYk1Q8djtn4USckw"}, {"action": 71, "resource": "R6P6suKfeFfwHeYC"}, {"action": 8, "resource": "Kq9KacphE6eWaTuP"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '63' \
    --clientId 'iX100r43gCdX6X9G' \
    --namespace $AB_NAMESPACE \
    --resource '6SHs7P5ITLLbJicx' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey '72lnRG5xq6j3xLed' \
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
    --body '{"blacklist": ["2hX2hZjPmtcNanGG", "Lk20mgOwZBhGCDsM", "LKpC0zrqG635bCbq"]}' \
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
    --limit '90' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 139 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 140 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZnkmDf4xNR9s0GQ3' \
    > test.out 2>&1
eval_tap $? 140 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 141 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'KrORbJpQmqgPupq0' \
    --body '{"ACSURL": "CUUphKy9GY6wI9qY", "AWSCognitoRegion": "xJNpOG2RHDXHRh73", "AWSCognitoUserPool": "y5gEmGzNqBarMRTa", "AllowedClients": ["XdozIQkZDH2FJBrV", "UKoDkzUtG1eaip3V", "dP5e8gcWe66zkJZj"], "AppId": "1v1yg1kI1K5HmmwX", "AuthorizationEndpoint": "4WgyvCtJ1FPhBAx5", "ClientId": "Ay2H5ZK2DlaJZDSe", "Environment": "fklaSiF95UGvRC9O", "FederationMetadataURL": "bNvQ1UZt0mk3MiPe", "GenericOauthFlow": false, "IsActive": false, "Issuer": "TJ32LIDpEcT3qVl7", "JWKSEndpoint": "RDcCZbSwVhZzLacJ", "KeyID": "cYLsoEci826pBkTz", "NetflixCertificates": {"encryptedPrivateKey": "CJUwyRe6TmkJ8Idc", "encryptedPrivateKeyName": "LA4UNLfeXqB6fKMn", "publicCertificate": "PFbMRbTEaExR6TUL", "publicCertificateName": "hyTXldVzDyN98djh", "rootCertificate": "Y5DF7HUFejZVuDrT", "rootCertificateName": "P1Qz7ovGY0aMiO2u"}, "OrganizationId": "hirwnwaJvM4OGDCf", "PlatformName": "r1yCxNxXZ7c4akpT", "RedirectUri": "drpEduJoIdCEvbWo", "RegisteredDomains": [{"affectedClientIDs": ["FNtF0WRh1Z9lwAjM", "wAGhb7if9VhK5PZN", "qY3ioy3le0CHXypf"], "domain": "7FWjW1AV64a1rZWr", "namespaces": ["VzjEecZWIhTr5e3h", "GdcF2NKYK7lKut8G", "uPKJbEFI3L0JaMfW"], "roleId": "Eyy1lzvUCLF1cga6"}, {"affectedClientIDs": ["04A6ju9IIqQYZnwL", "zwKSztWvXwqXhCPg", "sKTcy0PzfitZuKOR"], "domain": "9Il0dyxvkKFlaW5A", "namespaces": ["s0wzkWPZSWxL0wST", "PDvqAoaqe6xxFCVL", "0zbM3uNgLHLQFgCe"], "roleId": "aSDx2vvtot3ebCnY"}, {"affectedClientIDs": ["e9AQzqTGIXq6eK7X", "YjczBMp7FCIdzvOa", "MwILK3zUheCHpdsq"], "domain": "8k83oigEkNPo2cIs", "namespaces": ["qcHrdz2zzPTYM8Zp", "qGiyOUXhgrBrP20r", "d4u4bHvx36I2n0Es"], "roleId": "Y03hfJO24FeZdHHr"}], "Secret": "P8ogWqGKH9wYkBWW", "TeamID": "k4rbCwD1e4frP7AD", "TokenAuthenticationType": "sOnJk35zfeaMQyGN", "TokenClaimsMapping": {"O85ZTGsIZ0miojlS": "MP7rrbr0Nsj3CbCY", "iiQvwNf1ee2vi5tL": "UaXbXjHcp8N4Pk4a", "Vusgh7Zbl2GjjLh8": "KI0O3OqoWErrBwYU"}, "TokenEndpoint": "jBoIlZ3Mlva16KfY", "UserInfoEndpoint": "WAUj5N0fvydLDxow", "UserInfoHTTPMethod": "Zi3ZfBGJ0WgwIYhK", "scopes": ["N6EWsrv8kEMDY1XZ", "OVD13o7hXwlTimma", "IwW6hWjCXn5OsZg7"]}' \
    > test.out 2>&1
eval_tap $? 141 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 142 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '6eBkO9mHVqPIz5mO' \
    > test.out 2>&1
eval_tap $? 142 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 143 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'aoKVpdLaC8sW19no' \
    --body '{"ACSURL": "5VuQGvdRC3UJcaam", "AWSCognitoRegion": "aA1j5oVa43WUk2qM", "AWSCognitoUserPool": "cUi9iCCJOreHdd7q", "AllowedClients": ["bNNfcs2Bd2sy5sqm", "2YSwZET6dtkUK4B2", "d1pGvZZOorJaAE0a"], "AppId": "K6wx6rgUpJKux1nx", "AuthorizationEndpoint": "2sabIVk0ANXKlS7z", "ClientId": "BYlVWaSpuF2dPLc4", "Environment": "P6Kx2bMbetRi2bL3", "FederationMetadataURL": "h5nI7a3RcLSj4Ooj", "GenericOauthFlow": true, "IsActive": false, "Issuer": "ZJO6L6HqVDSosrCb", "JWKSEndpoint": "avv72TOTnTnqZ4nI", "KeyID": "9Jc3mX1wbzbhixS5", "NetflixCertificates": {"encryptedPrivateKey": "HSqNgTd0BIGCST2L", "encryptedPrivateKeyName": "KudDk35JRB3RL7Fb", "publicCertificate": "d0Aw5J7nDCHuPdgM", "publicCertificateName": "LD46KIcIaD8c7swH", "rootCertificate": "pdnHRjCAFiFi5ov1", "rootCertificateName": "R8UpsksmTh71cw12"}, "OrganizationId": "zVcOR8lXrgcnZISB", "PlatformName": "lw8coeduZHAQjBRU", "RedirectUri": "2wKuNZH1XF18Ug3V", "RegisteredDomains": [{"affectedClientIDs": ["GnwlZdceOADc0GGw", "AnQh8Gy9O5RIdoSs", "9AkzkLyeU399N1Ny"], "domain": "XVoXZoxhUPJXxxaQ", "namespaces": ["wPKTdzv9rvC6sZ0L", "AMJKQtFX3OKEcbis", "IoK0OENqJUs1wkBA"], "roleId": "gIgfIbg3BVCLwpxH"}, {"affectedClientIDs": ["5NsaneK34HO2Jihx", "MNZWaoxAo6Ai03MB", "wV7cVq4eIjCIGFO3"], "domain": "j2ojgfaCPsc3ynM9", "namespaces": ["AnaqIaBAo3MAVw2z", "rRp5jAXW4ZQ6FkDf", "Kq82JK1hxymohF9W"], "roleId": "sqmf52jzSuLfzcLK"}, {"affectedClientIDs": ["A6K3lnrnpxM3Z3wU", "GwsDSl94W2fymONj", "yGwNAxAUC2P7DOm5"], "domain": "DIOewsfL8XoOiJl6", "namespaces": ["JTKaxWjYF58lWTCz", "tF17EgF3ikRUYoLX", "LymTsOoVBoNY5kkG"], "roleId": "FctbS9vCdcPLSH3J"}], "Secret": "pFR9teQkbZKfah57", "TeamID": "3XZmLUDJlyJRZOWL", "TokenAuthenticationType": "NrieIltEGpCSta1e", "TokenClaimsMapping": {"5mbipybU2NwZ0ZFS": "Dh9W2udLxZFLKN4S", "4qbxqGZNNKR0vehD": "URN7TGhNDWDvq3FA", "Fz55cUNKt6swImVi": "6kzQ04H1AkGr1T6J"}, "TokenEndpoint": "EeQlkKM5VMGXnVJA", "UserInfoEndpoint": "uETliSAxFCPBQjz6", "UserInfoHTTPMethod": "3huWVcV3LhOa35i0", "scopes": ["UjmQAwInXdHQyuy5", "zidDO8WzY3MdA6TD", "keIRygDdYhtMZ3t5"]}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 144 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'vWeL6oIBcRYTpCpO' \
    --body '{"affectedClientIDs": ["DmIAgliErfBYAZPz", "H9t7LGONDhhwlNVc", "gbZq6JtRzoDXpQmO"], "assignedNamespaces": ["McTe99z65A9wP03C", "0G72knkjVdXvbFF0", "rpEP2QIecg3BJkOK"], "domain": "rzz5cKEgzpoxeCGT", "roleId": "PnjyLUgHRyaweKgh"}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 145 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'I4naoKqLDBPHiSuv' \
    --body '{"domain": "GH3sBeIIC8DTjZgx"}' \
    > test.out 2>&1
eval_tap $? 145 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 146 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'ujj4eH8jf48c60jB' \
    > test.out 2>&1
eval_tap $? 146 'RetrieveSSOLoginPlatformCredential' test.out

#- 147 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'gMa4oNf5rO81TJdC' \
    --body '{"acsUrl": "wTWeQ6Ta4MEZ8LKK", "apiKey": "Jx5ZVKo6IW9psMtK", "appId": "ahFVOxMUOtVcOhRh", "federationMetadataUrl": "zFoPFuya0s5hd6ik", "isActive": false, "redirectUri": "Tw0rk3xGG92v7f6X", "secret": "Gb8ezFBeh1jGIhb5", "ssoUrl": "8SbFsvS4AraVoqLp"}' \
    > test.out 2>&1
eval_tap $? 147 'AddSSOLoginPlatformCredential' test.out

#- 148 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'crNQkixlbcz4wyh6' \
    > test.out 2>&1
eval_tap $? 148 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 149 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'qxUsI4XxnH1oiUdM' \
    --body '{"acsUrl": "YNvjB6wvZNspGDmF", "apiKey": "iH6vQ0Iw9zfQB7Ow", "appId": "OlMLh0fTBJPmfwVL", "federationMetadataUrl": "AZfAoU8Cxf30ziVA", "isActive": false, "redirectUri": "ph4ux5K0KdmTf7zu", "secret": "nrRcmA82yWxjdSmD", "ssoUrl": "rwGrwpv1F4VZFZLQ"}' \
    > test.out 2>&1
eval_tap $? 149 'UpdateSSOPlatformCredential' test.out

#- 150 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'LzYH36edcA26vhZK' \
    --rawPID 'true' \
    --body '{"platformUserIds": ["1DyhoP6dwrA2ko1a", "iLfqoGW5XiKGhgCo", "AWBDfM8ywIjEQfyN"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 151 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'rqJKD5Zv0tw9Nslk' \
    --platformUserId 'yKkFNypoNxpkqbUe' \
    > test.out 2>&1
eval_tap $? 151 'AdminGetUserByPlatformUserIDV3' test.out

#- 152 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'QwJwvHDsCKmzQbd8' \
    --after '92' \
    --before '47' \
    --limit '41' \
    > test.out 2>&1
eval_tap $? 152 'GetAdminUsersByRoleIdV3' test.out

#- 153 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'uJ6T0SEU7tvMSosK' \
    > test.out 2>&1
eval_tap $? 153 'AdminGetUserByEmailAddressV3' test.out

#- 154 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": true}, "userIds": ["YKb3smUSY4Fzrdrk", "MQykNHGpvtRLFfx4", "ipNVaVFSuaU9kYn0"]}' \
    > test.out 2>&1
eval_tap $? 154 'AdminBulkUpdateUsersV3' test.out

#- 155 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'tiAzkunsI0KwwMra' \
    --body '{"bulkUserId": ["IHfP5jvAvA0LiCii", "WBe8KDpoIEvt3OWe", "12XhedJz9EOTrzRi"]}' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserBanV3' test.out

#- 156 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["iCxn5CvVkqCycKCc", "k38plkK8N38DG8aV", "nlh8zYxgCAsBEslc"]}' \
    > test.out 2>&1
eval_tap $? 156 'AdminListUserIDByUserIDsV3' test.out

#- 157 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Cu5PBWn3P3pqZcNH", "oMosGQWOVIPzYgv1", "8pEUFZJJQXFPkZut"]}' \
    > test.out 2>&1
eval_tap $? 157 'AdminBulkGetUsersPlatform' test.out

#- 158 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["eah5lmP4VDFvkG9h", "Wv9eJzpjbKUQu8CT", "I5tPGyPTHWI0A1mO"], "isAdmin": true, "namespace": "10Z1l200xLgZft9Z", "roles": ["MtCRoHrKNGkccK84", "P2Ae1DgUBwqW5rlS", "eV6titNNFT1oMOCh"]}' \
    > test.out 2>&1
eval_tap $? 158 'AdminInviteUserV3' test.out

#- 159 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '80' \
    --platformUserId 'K204JG8s8C07LpP3' \
    --platformId 'CSSiULL7dvCNArtj' \
    > test.out 2>&1
eval_tap $? 159 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 160 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 160 'AdminListUsersV3' test.out

#- 161 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'pujhO2oI1SBMbyzE' \
    --endDate '9qpOx7lw4mER81Ql' \
    --includeTotal 'false' \
    --limit '96' \
    --offset '43' \
    --platformBy 'DvZRogJM4XI56oQd' \
    --platformId 'PiuMljNtuAiPFPdK' \
    --query '5naqcuGoZfO4RaMx' \
    --roleIds 'oZCHo4lNHLx8NkeE' \
    --skipLoginQueue 'false' \
    --startDate 'K1lJhf1Y8jMVkb3D' \
    --testAccount 'false' \
    > test.out 2>&1
eval_tap $? 161 'AdminSearchUserV3' test.out

#- 162 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["ojbuYIcooJGYAFf9", "0FG91bpYIWztsqnO", "UjNN7n3LjXcrcB8s"]}' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetBulkUserByEmailAddressV3' test.out

#- 163 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId '09uSvfOQbSSzDmJX' \
    > test.out 2>&1
eval_tap $? 163 'AdminGetUserByUserIdV3' test.out

#- 164 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jg8Cx3lleAE2PzvV' \
    --body '{"avatarUrl": "9qmM1eX9w2pRaSHl", "country": "xpYp0w48z72XVk8C", "dateOfBirth": "E1BVDGYvbT6KS3EL", "displayName": "p37rxb3siakFkBzE", "languageTag": "P470KBip4HEteQ5Q", "skipLoginQueue": true, "uniqueDisplayName": "cIk6YTyXCgEphdul", "userName": "JYMb3Ke0mwoGzOW4"}' \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserV3' test.out

#- 165 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jFHZliaG7qxXOPJk' \
    --activeOnly 'true' \
    --after 'muFPSqq77X8mZDrd' \
    --before 'pV4Wj7H2DSbZ43pA' \
    --limit '0' \
    > test.out 2>&1
eval_tap $? 165 'AdminGetUserBanV3' test.out

#- 166 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vDkbvy0UPYYMdGwS' \
    --body '{"ban": "4wwphZQbwyC1ogUA", "comment": "KeA1ZTYUoWVC7pHR", "endDate": "vDlCWzmFl7vtkEyK", "reason": "FtyFYcYgR20GeTHx", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 166 'AdminBanUserV3' test.out

#- 167 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'FDrUvNlJXdFxT2zA' \
    --namespace $AB_NAMESPACE \
    --userId 'jYKi4Zrkrr7hgSuk' \
    --body '{"enabled": true, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 167 'AdminUpdateUserBanV3' test.out

#- 168 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId '7OMkPYNSnbofqaSl' \
    --body '{"context": "FzTDmdSqteWlhmPA", "emailAddress": "EcjmOUXEoeCOUtjm", "languageTag": "WD2bRJsyNJJ600Ht"}' \
    > test.out 2>&1
eval_tap $? 168 'AdminSendVerificationCodeV3' test.out

#- 169 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'SISelQpN8W5xGjO5' \
    --body '{"Code": "g4rlJ7ZTal5bxDxa", "ContactType": "xS1jvyq8nSo2Kqlt", "LanguageTag": "692FywJGq30m9TWC", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 169 'AdminVerifyAccountV3' test.out

#- 170 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'ulSzXtL9RP6C5ZVW' \
    > test.out 2>&1
eval_tap $? 170 'GetUserVerificationCode' test.out

#- 171 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '0GY7XBAqboMo7yPn' \
    > test.out 2>&1
eval_tap $? 171 'AdminGetUserDeletionStatusV3' test.out

#- 172 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'g81AiF6BfBuSughe' \
    --body '{"deletionDate": 92, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 172 'AdminUpdateUserDeletionStatusV3' test.out

#- 173 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fqLmS8w8baVnS38T' \
    > test.out 2>&1
eval_tap $? 173 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 174 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'p1hzrSZJfez4mQQx' \
    --body '{"code": "Fvi6nN9hLsx7iAhJ", "country": "Jq4IaiHWIXEX6k30", "dateOfBirth": "dOhbn0xljK0DJ6ng", "displayName": "ExsXPAqhE55rXmaA", "emailAddress": "4g0OcHEFKvjo1sIc", "password": "fLhM6KoJV4QbtREW", "uniqueDisplayName": "924uVItNAHsnxoPO", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 174 'AdminUpgradeHeadlessAccountV3' test.out

#- 175 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Ah8fGtjcJVxSsX2b' \
    > test.out 2>&1
eval_tap $? 175 'AdminDeleteUserInformationV3' test.out

#- 176 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'AHm0eJfgV33VCZ0V' \
    --after '0.1356235798288834' \
    --before '0.32549922747622695' \
    --limit '40' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserLoginHistoriesV3' test.out

#- 177 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'q0CbL9sVdbbls1CQ' \
    --body '{"languageTag": "Ei475VTgTAViomhj", "newPassword": "eEQpVU2g87xkOjSi", "oldPassword": "LCAq65jNmS130C6g"}' \
    > test.out 2>&1
eval_tap $? 177 'AdminResetPasswordV3' test.out

#- 178 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId '7xcIMkVecqc2BYDs' \
    --body '{"Permissions": [{"Action": 24, "Resource": "HZX7IwaMhzrdLYZX", "SchedAction": 56, "SchedCron": "cw88gOjqEx8YDXuT", "SchedRange": ["zkgmyJ9N07M7c2Vs", "e8rwcleChkSe5WpE", "C4zc5Y9IfVdPhOvT"]}, {"Action": 65, "Resource": "LBWBXRRgnbNc45dX", "SchedAction": 89, "SchedCron": "He3FPvGo4B4Wuv0N", "SchedRange": ["fZkQXswx8kx7iTNB", "DQzrBfwiehHl0Fjp", "vS6AyiQd1bmEeRWp"]}, {"Action": 34, "Resource": "jqScFjwWsELJqXKA", "SchedAction": 34, "SchedCron": "4ZTDoqb0yPv7nWEO", "SchedRange": ["wdrSquQQhw6vZ9Mv", "OfKFDdSh2IFwQKx2", "lgEgzd8eXa4M5LwV"]}]}' \
    > test.out 2>&1
eval_tap $? 178 'AdminUpdateUserPermissionV3' test.out

#- 179 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'quniQq0uCHWHV4qd' \
    --body '{"Permissions": [{"Action": 80, "Resource": "Ud0SwAZkETet29s0", "SchedAction": 48, "SchedCron": "Dk7hQAZkgYHZZ1WQ", "SchedRange": ["NDwD4NeMG7cW9gUa", "0SK2Phpj6X8hW1Np", "6VmXDTf2DzIWwclN"]}, {"Action": 3, "Resource": "8WKsb2OPDrt319B0", "SchedAction": 19, "SchedCron": "z3JKObGeQYUg9Kfv", "SchedRange": ["6fqMVkddk3sV6y7Y", "CPb196LkVcTFnzK2", "N0bz5DUwQMgHuN7l"]}, {"Action": 44, "Resource": "c2Vh2G2EGqjJcDxC", "SchedAction": 31, "SchedCron": "CtUAl0iEIM7m4gqB", "SchedRange": ["17lzd0MTLfInMg6K", "l8e7yzqEUByw4o8n", "E06bcwg4HsnQvZxD"]}]}' \
    > test.out 2>&1
eval_tap $? 179 'AdminAddUserPermissionsV3' test.out

#- 180 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId '3DrymCm8SH2w3SNx' \
    --body '[{"Action": 62, "Resource": "JYQjdQrvxxWax8sk"}, {"Action": 65, "Resource": "VkUwXDkcMUFQNg0H"}, {"Action": 81, "Resource": "GCzjqOIJT2Z72N3g"}]' \
    > test.out 2>&1
eval_tap $? 180 'AdminDeleteUserPermissionBulkV3' test.out

#- 181 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '13' \
    --namespace $AB_NAMESPACE \
    --resource 'HDhPX9ps1QMMp1Ad' \
    --userId 'kL8EZ3acPMRUcKpV' \
    > test.out 2>&1
eval_tap $? 181 'AdminDeleteUserPermissionV3' test.out

#- 182 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'OcsQpJFiFplONABG' \
    --after 'rSH9BvrwjNUsdN0q' \
    --before 'LNXUfd5QxD9CEigg' \
    --limit '75' \
    --platformId '6oaNfHKAtGwgZumy' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserPlatformAccountsV3' test.out

#- 183 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'YEbi0gtoEkiYOgpM' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetListJusticePlatformAccounts' test.out

#- 184 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'X84Y3qVXvRqRsf7h' \
    --userId 'UwiRXHw7P1NFOf6r' \
    > test.out 2>&1
eval_tap $? 184 'AdminGetUserMapping' test.out

#- 185 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '5z1kiedAPKnxblbc' \
    --userId 'bHKn15YwZ2jKNQJL' \
    > test.out 2>&1
eval_tap $? 185 'AdminCreateJusticeUser' test.out

#- 186 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'YbFVbJNeM8kAaz8S' \
    --skipConflict 'true' \
    --body '{"platformId": "V9YJstwJtb1zEvRv", "platformUserId": "iybA2YGMv6sDN5vo"}' \
    > test.out 2>&1
eval_tap $? 186 'AdminLinkPlatformAccount' test.out

#- 187 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'yZUMqu0FxrhfOVDj' \
    --userId 'cmiAL3uArFKYGZY1' \
    --body '{"platformNamespace": "IfoT1lv5fChhN1Fk"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminPlatformUnlinkV3' test.out

#- 188 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'oxo5pDkPSZaCsapv' \
    --userId 'zGJgnOweY9eAlT5A' \
    > test.out 2>&1
eval_tap $? 188 'AdminPlatformUnlinkAllV3' test.out

#- 189 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '6o2QyG6QVeW73Zis' \
    --userId 'L3IItkhH9SRJY48f' \
    --ticket 'KkaG7tptyirc56IB' \
    > test.out 2>&1
eval_tap $? 189 'AdminPlatformLinkV3' test.out

#- 190 AdminDeleteUserLinkingHistoryByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingHistoryByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'mLmhVYK3KsscwNoH' \
    --userId 'tEw0ZxbTju9ndMq2' \
    > test.out 2>&1
eval_tap $? 190 'AdminDeleteUserLinkingHistoryByPlatformIDV3' test.out

#- 191 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId '8uh4Wa8JGprFT7O4' \
    --userId '68uFKYyajswSaiOk' \
    --platformToken 'H70nAMQtvMT3YI9L' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 192 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'rT6weKrtZtopHcgm' \
    --userId 'MdgvwkpgHCkBOnDM' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserSinglePlatformAccount' test.out

#- 193 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Vfii3Q31t2TyhlWY' \
    --body '["7Vhj97ODas9MSofA", "SCh1EOU6Y39I2MUA", "xCCqBiUvRC8r6PjC"]' \
    > test.out 2>&1
eval_tap $? 193 'AdminDeleteUserRolesV3' test.out

#- 194 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ixkmNdR0RkRL7Cyz' \
    --body '[{"namespace": "ih0D8R095QZWvqxk", "roleId": "DyiQy2jPHrBkZaUi"}, {"namespace": "hq0ITfiNMAP0dq8N", "roleId": "xVX6AbU9Q0HcaC0Q"}, {"namespace": "f0Nnoq5dmH3ppNeu", "roleId": "z5l8a1iWlkHi2jpY"}]' \
    > test.out 2>&1
eval_tap $? 194 'AdminSaveUserRoleV3' test.out

#- 195 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'PitQBYud8cBylKYc' \
    --userId 'WmCa2Q4VvrpaazLO' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddUserRoleV3' test.out

#- 196 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'LkbqTAnm2wzopxYE' \
    --userId 'kZYA3VGu5y8UZYrY' \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteUserRoleV3' test.out

#- 197 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'IhoyJnG3ywjJx03p' \
    --body '{"enabled": true, "reason": "dYY2PLOaPfao0GDA"}' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateUserStatusV3' test.out

#- 198 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'FIe7c6bDmXHzBW03' \
    --body '{"emailAddress": "iSNccPgTdU18nnvo", "password": "JwtUeAdfrHQP3WlV"}' \
    > test.out 2>&1
eval_tap $? 198 'AdminTrustlyUpdateUserIdentity' test.out

#- 199 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jZrNiMKRRbMttk9k' \
    > test.out 2>&1
eval_tap $? 199 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 200 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId '3AC7s8n8u9KOI1p4' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "g7DGLh2D4GBjhH33"}' \
    > test.out 2>&1
eval_tap $? 200 'AdminUpdateClientSecretV3' test.out

#- 201 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'ub6rp4gKOFAikJZe' \
    > test.out 2>&1
eval_tap $? 201 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 202 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'lySNjyWizJoFdYQZ' \
    --before '6hTShhnUAvh2fQDc' \
    --isWildcard 'true' \
    --limit '98' \
    > test.out 2>&1
eval_tap $? 202 'AdminGetRolesV3' test.out

#- 203 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "managers": [{"displayName": "5jmVj21yB91WQY7s", "namespace": "CMhGxtMme8Vy5BQE", "userId": "dkOl10VJZAtEVGfR"}, {"displayName": "VprWqbrU3PZlt9zV", "namespace": "nlGDeO9rLkRvKjiz", "userId": "umedLNudHZfV51PN"}, {"displayName": "arHlaUW2QeWzc1On", "namespace": "k4oH1EuWHIMl3RFF", "userId": "ZRJrHiH0VPSXCqui"}], "members": [{"displayName": "nQ0SyhhhekoYbkyw", "namespace": "yr0BQcmcautgw5g9", "userId": "gLPZOWdEncnpWmX7"}, {"displayName": "KOxrlnhJBtjtWcMJ", "namespace": "QdRghezFfnRBMouC", "userId": "TC72006dhVgMjB1T"}, {"displayName": "mKFOA5pHNDkw5JnD", "namespace": "DD4TytCpj5GDSCeS", "userId": "M9e7Sn628WtyEQ8V"}], "permissions": [{"action": 24, "resource": "acCpgV1UXdrCVv86", "schedAction": 97, "schedCron": "5gLjjdUhVkBc6HPQ", "schedRange": ["tmpL19MZEOYBjH10", "bAgh4odMdFn3CE1k", "2Rll5L7k3S3HJRnk"]}, {"action": 96, "resource": "GtnG9WDpqWCZjeoW", "schedAction": 74, "schedCron": "r9SNuNHFuiqCpVb0", "schedRange": ["w2nyPfRWSlRZJ7sq", "1gP79DthNcrryz28", "ijOIeE8jANyTjVSE"]}, {"action": 24, "resource": "T3EDBq0JR5RgdMjM", "schedAction": 32, "schedCron": "hmjzvt9dpJ7vYNUz", "schedRange": ["TctQ7hcgb9nyJ6Jg", "zoCG3S9DN9dl1mv7", "JDocGet8NZf54Tfd"]}], "roleName": "dgWpqbjfqxlT7GHp"}' \
    > test.out 2>&1
eval_tap $? 203 'AdminCreateRoleV3' test.out

#- 204 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'V0eweUkGX2UxMobh' \
    > test.out 2>&1
eval_tap $? 204 'AdminGetRoleV3' test.out

#- 205 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'z7FwV2VNdv9mkd09' \
    > test.out 2>&1
eval_tap $? 205 'AdminDeleteRoleV3' test.out

#- 206 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'iBgSdhxcJYHVgqq8' \
    --body '{"deletable": true, "isWildcard": true, "roleName": "47297exLuuk4T6x0"}' \
    > test.out 2>&1
eval_tap $? 206 'AdminUpdateRoleV3' test.out

#- 207 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'kWwCdrG0tVU7O2Wi' \
    > test.out 2>&1
eval_tap $? 207 'AdminGetRoleAdminStatusV3' test.out

#- 208 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId '0CWYMMVOLVK1yhdn' \
    > test.out 2>&1
eval_tap $? 208 'AdminUpdateAdminRoleStatusV3' test.out

#- 209 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'REdSPEzPEThVoas4' \
    > test.out 2>&1
eval_tap $? 209 'AdminRemoveRoleAdminV3' test.out

#- 210 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'OXslECBbo6X4jund' \
    --after 'OYz9ygchyr32Xt29' \
    --before 'OXF5KDItx9ndK6sM' \
    --limit '65' \
    > test.out 2>&1
eval_tap $? 210 'AdminGetRoleManagersV3' test.out

#- 211 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'w7ZBMhWess6R4T1P' \
    --body '{"managers": [{"displayName": "WKOOT4SFJQxEJiLH", "namespace": "Inp2LEp5zo7Dt34k", "userId": "aqgUXqDjRDKFMT82"}, {"displayName": "jLHyPmY5RAOJvUmd", "namespace": "tfLua84XI22a3gD8", "userId": "FLeWma7SUouM5qbv"}, {"displayName": "wvRlpcn1jNmkvZQI", "namespace": "eHV5meMIsWkuojmg", "userId": "8ULfzcfvQ6FIAwZB"}]}' \
    > test.out 2>&1
eval_tap $? 211 'AdminAddRoleManagersV3' test.out

#- 212 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'qo2YM2eBqyy0No5U' \
    --body '{"managers": [{"displayName": "hhnea7mkZZywE0jc", "namespace": "QsqCPi39JuwuRdgH", "userId": "78UmFsvetV0OZJZg"}, {"displayName": "GIsUYLUDbTAoCF7M", "namespace": "eR9DCSXr3QVNR43Q", "userId": "k3TpsVGIJ4ghIPmI"}, {"displayName": "fxHl9sET135eXyWH", "namespace": "rcm8vdu7OVQILitN", "userId": "Diq4FycU7wlGUD2p"}]}' \
    > test.out 2>&1
eval_tap $? 212 'AdminRemoveRoleManagersV3' test.out

#- 213 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'nhziR6ZzbNETbCJC' \
    --after 'o5uh7XIdvZ3xmJ7N' \
    --before 'XZrssW7y9G9V1Jxi' \
    --limit '13' \
    > test.out 2>&1
eval_tap $? 213 'AdminGetRoleMembersV3' test.out

#- 214 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'DeyfMfc3cVZV7Edu' \
    --body '{"members": [{"displayName": "m7UI9i4rFgSidzk0", "namespace": "RXAwkyA92kAErx5R", "userId": "xTW1wHS2gEEKzXh0"}, {"displayName": "NeIW4M4vC3wFFtu7", "namespace": "uQKITKKufuxSiLy4", "userId": "ks68mtVPJyMLoEcZ"}, {"displayName": "RF6OirCnsSC0mJ2K", "namespace": "Zmf3n0cwT0tAadRd", "userId": "kzr7SxLPRXnsJRlw"}]}' \
    > test.out 2>&1
eval_tap $? 214 'AdminAddRoleMembersV3' test.out

#- 215 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId '3s42y1SoVVdjIZm4' \
    --body '{"members": [{"displayName": "SyXBBsTtD0VcT856", "namespace": "FqfjkQ60OXEHL5oS", "userId": "V8LUdPwq0KLFzDdL"}, {"displayName": "2lHORQ796uyQj8ik", "namespace": "TZ9IsaTbaqeU7ET2", "userId": "aIt6bQVqZdkVm0u0"}, {"displayName": "Mwiq1idcYXpTnOE3", "namespace": "c3ZKIs2lNzLUOcP0", "userId": "UHSPNy6JGWJq6jei"}]}' \
    > test.out 2>&1
eval_tap $? 215 'AdminRemoveRoleMembersV3' test.out

#- 216 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'vwm7aw92RZlyE30n' \
    --body '{"permissions": [{"action": 59, "resource": "bHJkk2qpvzcSTWiP", "schedAction": 71, "schedCron": "LPYjXhoc6hgeZQ5c", "schedRange": ["YwHj2m625WuIX1jS", "9vY3RrAzH4DRKy20", "amqBrzgWDxwhTuuE"]}, {"action": 34, "resource": "c628WBpOIWMqXHUN", "schedAction": 70, "schedCron": "zVVNuBtHQ6ZxRNrR", "schedRange": ["7uUz6LwMPCQGloBm", "C6vj5ohWvpANWcuO", "k2nPPXu4vEdnejrw"]}, {"action": 13, "resource": "A5urvSXJ8i13ma09", "schedAction": 63, "schedCron": "o5MJeeknevITsf6y", "schedRange": ["EmBUK3aDxCIXZu59", "pLryrlBQUPeOJKFJ", "CkxPxbaGJcP1CLbA"]}]}' \
    > test.out 2>&1
eval_tap $? 216 'AdminUpdateRolePermissionsV3' test.out

#- 217 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'qTBtaPDSchs0lB0q' \
    --body '{"permissions": [{"action": 50, "resource": "3mxPLRn9KlE8xTsL", "schedAction": 86, "schedCron": "uqYuAFpLPIf4eeUd", "schedRange": ["gZJpUUxRQg2RjxRP", "RM1Tx3XCxQjUojPZ", "FjeYGA676Rvi6LYH"]}, {"action": 50, "resource": "1MpvrH2Mglx0LSdq", "schedAction": 83, "schedCron": "Jm7ZgVvAQl6N7IfK", "schedRange": ["wEtmGB1arrRKohfd", "b9NgsaDOjCnBAo1n", "0WyNBpbfSdvNlWB0"]}, {"action": 52, "resource": "VHsQstyqQJLR7M9w", "schedAction": 30, "schedCron": "Ijpj8E1xzExrzanB", "schedRange": ["gMW0Ksv5JKjNgkWK", "ihXl1YdHmrUKPsO2", "v8T3cJKuUfLb1dEs"]}]}' \
    > test.out 2>&1
eval_tap $? 217 'AdminAddRolePermissionsV3' test.out

#- 218 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'Nd11N0PG2EOh1Re1' \
    --body '["K0djxzbWA0HE79v0", "b3T4EpH5IMFZzNtd", "aF8paKs0nE9UX2qu"]' \
    > test.out 2>&1
eval_tap $? 218 'AdminDeleteRolePermissionsV3' test.out

#- 219 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '52' \
    --resource 'v2hw3MyoQC8vEqI2' \
    --roleId 'Q7SHUV4p3WnEHCDP' \
    > test.out 2>&1
eval_tap $? 219 'AdminDeleteRolePermissionV3' test.out

#- 220 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 220 'AdminGetMyUserV3' test.out

#- 221 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'xw7VrIHHQpbG428S' \
    --extendExp 'false' \
    --redirectUri '2xjKVLsqJFzJkJ40' \
    --password '2t5PpZEUhaxOdrI9' \
    --requestId 'hfMHrhhW5m1gjTy5' \
    --userName 'JXqYycNUbJIX3CO4' \
    > test.out 2>&1
eval_tap $? 221 'UserAuthenticationV3' test.out

#- 222 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'nvAtLfnA2yEeC6OO' \
    --linkingToken 'HV4JiISwsaCzBji7' \
    --password 'Sx192F85XoKKOfmc' \
    --username 'qRIOWNBmh6ACL2Gd' \
    > test.out 2>&1
eval_tap $? 222 'AuthenticationWithPlatformLinkV3' test.out

#- 223 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'mHZMHH436dzJUwxB' \
    --extendExp 'false' \
    --linkingToken 'ekdHqqlh9W4qOYn2' \
    > test.out 2>&1
eval_tap $? 223 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 224 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'FyQjB7NFMypR0sBn' \
    > test.out 2>&1
eval_tap $? 224 'RequestOneTimeLinkingCodeV3' test.out

#- 225 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'nqlnZP85Rn8WvRsF' \
    > test.out 2>&1
eval_tap $? 225 'ValidateOneTimeLinkingCodeV3' test.out

#- 226 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'A7zIPwch7POlzXkK' \
    --isTransient 'false' \
    --clientId 'gR2wFqhXhAXBZMhx' \
    --oneTimeLinkCode '3941IABxqoJXvp4X' \
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
    --codeChallenge 'ywINGU8zHmz8Us8r' \
    --codeChallengeMethod 'plain' \
    --clientId 'ChfUhELTVDLy8IJy' \
    > test.out 2>&1
eval_tap $? 229 'RequestTokenExchangeCodeV3' test.out

#- 230 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'TXYa2mwctXDje3cH' \
    --userId 'SKlmaF0w72s8cEAG' \
    > test.out 2>&1
eval_tap $? 230 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 231 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'S811x2zqXkg23cNZ' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 231 'RevokeUserV3' test.out

#- 232 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'QuHahvTHB6yfJFzJ' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'AKuURsA8oENQJ4Ju' \
    --redirectUri 'iMQvq8oWIj4IsRnq' \
    --scope 'wNVzbl5upZDxbccV' \
    --state 'ryCT0qt14PkbUuy5' \
    --targetAuthPage 'yLZbVUe8a10prDhl' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'yM5hNi01dsUOUR9G' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 232 'AuthorizeV3' test.out

#- 233 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'gFQTNhbCSQDSQQGR' \
    > test.out 2>&1
eval_tap $? 233 'TokenIntrospectionV3' test.out

#- 234 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 234 'GetJWKSV3' test.out

#- 235 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'caD8p5iovvNxKp9A' \
    --factor 'abf9GYS4YeVyDRrE' \
    --mfaToken '3XAhMtwImxso2TFG' \
    > test.out 2>&1
eval_tap $? 235 'SendMFAAuthenticationCode' test.out

#- 236 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'zIx5ATLBstiRxAcc' \
    --mfaToken 'NiShIzHcXWAj8MFI' \
    > test.out 2>&1
eval_tap $? 236 'Change2faMethod' test.out

#- 237 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'Pq0QJsnNJ1Wm6trn' \
    --factor 'ehvWRgLqf5Tl5J2a' \
    --mfaToken 'A38AqUP3gCtVg5kV' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 237 'Verify2faCode' test.out

#- 238 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'LKUvVnmB3nFfoyv0' \
    --userId 'IsucoXqjQhllsTsw' \
    > test.out 2>&1
eval_tap $? 238 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 239 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'Y04qtkvtsZKUw05q' \
    --clientId 'tf8CUjWPNh5zkIMZ' \
    --redirectUri 'kbZijquY6sfgl9Nh' \
    --requestId 'tRedqLIZ7yfZe2bx' \
    > test.out 2>&1
eval_tap $? 239 'AuthCodeRequestV3' test.out

#- 240 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'pQxIWa3LtQl4jddS' \
    --additionalData '1wvHaP77Z4nm8PAc' \
    --clientId 'jOOfkzPCpVWKsQN5' \
    --createHeadless 'false' \
    --deviceId 'GVghcMBjy7bKHdNQ' \
    --macAddress 'mA2ZLtVzviZKlFuz' \
    --platformToken 'Ijf3p4xhU7GcGz7t' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 240 'PlatformTokenGrantV3' test.out

#- 241 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 241 'GetRevocationListV3' test.out

#- 242 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'CnPkLPQuDlpWP5zn' \
    > test.out 2>&1
eval_tap $? 242 'TokenRevocationV3' test.out

#- 243 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'uh6oNomxuNPdoQnk' \
    --simultaneousTicket 'hWGIsF5miIt3Bd05' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket 'vC4FvbKWOkiQhAZx' \
    > test.out 2>&1
eval_tap $? 243 'SimultaneousLoginV3' test.out

#- 244 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData '0pVjwWcewztnnPys' \
    --clientId 'sTCgojDKYByQ9weI' \
    --code 'IT8t0IhdfumczuQe' \
    --codeVerifier '0au2kr2MSaWXAeRq' \
    --extendNamespace 'iTCQRtjNcByV36pP' \
    --extendExp 'true' \
    --password 'iZonZdmTF51UdU6h' \
    --redirectUri 'bY87Fa942VciLvdn' \
    --refreshToken 'lAfV7ZnQrxS3FnFK' \
    --username 'j13u8htdEXJpw9bx' \
    --grantType 'client_credentials' \
    > test.out 2>&1
eval_tap $? 244 'TokenGrantV3' test.out

#- 245 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token '2mAsRTf1fsTGX7ID' \
    > test.out 2>&1
eval_tap $? 245 'VerifyTokenV3' test.out

#- 246 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'JT1nw1ry2G8aErlK' \
    --code 'mC9MxUqLayXLOsAV' \
    --error 'rVsuRhFYOMqY3Vrk' \
    --openidAssocHandle 'rgp3tS46ih6cy1me' \
    --openidClaimedId 'HsXV9Xz8FyZGXBFS' \
    --openidIdentity '65F1hDLwGbd4thfF' \
    --openidMode 'wDdnoK1HU1Ftoqkg' \
    --openidNs 'eEUpnxVmWS7UtpNL' \
    --openidOpEndpoint 'BupBVmTaitJ4DSdD' \
    --openidResponseNonce 'QHQUSet3NKfxQ57n' \
    --openidReturnTo '3NXnxHeafEMukPh1' \
    --openidSig 'BP2UUyBaoYvLjeO3' \
    --openidSigned '3xMaHlo7lGHVG3ud' \
    --state 'Ft2U8zJ2wRLNRUXl' \
    > test.out 2>&1
eval_tap $? 246 'PlatformAuthenticationV3' test.out

#- 247 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'bs4PjWXyPdWChSSP' \
    --platformToken 'pMMtS9r1FTHeI60C' \
    > test.out 2>&1
eval_tap $? 247 'PlatformTokenRefreshV3' test.out

#- 248 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode 'SDna7EiFYpa1oCJu' \
    > test.out 2>&1
eval_tap $? 248 'PublicGetInputValidations' test.out

#- 249 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'y3cWmuVsDShqC8l9' \
    > test.out 2>&1
eval_tap $? 249 'PublicGetInputValidationByField' test.out

#- 250 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'N7VGpGZcvwR9oynF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 250 'PublicGetCountryAgeRestrictionV3' test.out

#- 251 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'v53dwP5p2fslXDpe' \
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
    --clientId 'fIS73FzG4s86mTIM' \
    > test.out 2>&1
eval_tap $? 254 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 255 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId '2E0DnL5WLRlzshxs' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["G4c75PFoY4Bh54Wy", "8SRemBECWooy7JHN", "eIhgvYPWeMaU11Yx"]}' \
    > test.out 2>&1
eval_tap $? 255 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 256 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'zzoFzocm2nLu2kJR' \
    --platformUserId 'hKJmx8DIuqW7CwBi' \
    > test.out 2>&1
eval_tap $? 256 'PublicGetUserByPlatformUserIDV3' test.out

#- 257 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'pW2NJWzZIXGQayu9' \
    > test.out 2>&1
eval_tap $? 257 'PublicGetAsyncStatus' test.out

#- 258 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'ckZ0goK0QbzMc0z2' \
    --limit '1' \
    --offset '87' \
    --platformBy 'k4uE7dpTkDGnoQbb' \
    --platformId 'sxTzq2VyU05NO7sN' \
    --query 'jYBCp5Scm8ubILnC' \
    > test.out 2>&1
eval_tap $? 258 'PublicSearchUserV3' test.out

#- 259 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "CtxKBMbv72HhRqEK", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "MIZ6l5p6erec3EdL", "policyId": "W7alo34scuduzXTq", "policyVersionId": "ipoYKetC2538hUJ6"}, {"isAccepted": false, "localizedPolicyVersionId": "WEAv8hhATGL38C46", "policyId": "GguXro24gtuZ24so", "policyVersionId": "19CeTaTxUMA0X5UV"}, {"isAccepted": false, "localizedPolicyVersionId": "5s3m7ccK9MgfeXps", "policyId": "hw5buOZuPYADdE56", "policyVersionId": "wv8VbV6p56VAUewd"}], "authType": "YUiUn5lC7YNocHbf", "code": "1HQJBVmyj5TUarJS", "country": "zTREsY7v9bBhrCr8", "dateOfBirth": "kxvdoXobeMAY1QcK", "displayName": "bK7zbQt9pjOCO1V6", "emailAddress": "mGY3sedR7f81J9KM", "password": "G61jXSq9RvTQNez3", "reachMinimumAge": false, "uniqueDisplayName": "1RflDPEv85bNP94l"}' \
    > test.out 2>&1
eval_tap $? 259 'PublicCreateUserV3' test.out

#- 260 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'f3iKjjtMMJMnN9w8' \
    --query 'saYLXvNeWSFduTpP' \
    > test.out 2>&1
eval_tap $? 260 'CheckUserAvailability' test.out

#- 261 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["2oBQrMQhlNhhhEQw", "2SHTrvzwTVQXtBqP", "MAGZJCt9tGnGzl1v"]}' \
    > test.out 2>&1
eval_tap $? 261 'PublicBulkGetUsers' test.out

#- 262 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "LysZ22FHZhURnCGl", "languageTag": "5MRqhJWoSaQTi1uH"}' \
    > test.out 2>&1
eval_tap $? 262 'PublicSendRegistrationCode' test.out

#- 263 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "x3siEro85x72nC9t", "emailAddress": "dUKAXGIz1tBgFh8q"}' \
    > test.out 2>&1
eval_tap $? 263 'PublicVerifyRegistrationCode' test.out

#- 264 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "yTGKM7aQI3e9V5TX", "languageTag": "r5oMjY2ffhxLoU0J"}' \
    > test.out 2>&1
eval_tap $? 264 'PublicForgotPasswordV3' test.out

#- 265 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'oH4ukmzqvy1fEw2I' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 265 'GetAdminInvitationV3' test.out

#- 266 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'wuDJqvObsyFjLgIS' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "agRaOjEHpoobRsnJ", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "06a3OnKFuf0GTkSB", "policyId": "UH2okkVC2smbxmDM", "policyVersionId": "7v1nZnWjSQKmcBvQ"}, {"isAccepted": false, "localizedPolicyVersionId": "R8ayIfO3BgB5B2XO", "policyId": "H3MWIhwZRLUoh7yA", "policyVersionId": "a6mH3mrXvLUl5wFs"}, {"isAccepted": true, "localizedPolicyVersionId": "Fdhxjlb05FVMJ2Na", "policyId": "SQRUwkFtZPwrSIIh", "policyVersionId": "1vs91VvrKNJkEWKn"}], "authType": "yzwaYlzPSOosACwP", "code": "IoOzpBVKPGGBzhkb", "country": "ov3pzdQFT5q5r8Ek", "dateOfBirth": "dUWwfRdwamPGfF7I", "displayName": "0vljAVJ5Rh1xgE81", "emailAddress": "SZ6XgjLzl9tCQJpN", "password": "hVfgXJ1dIaXmyI1h", "reachMinimumAge": false, "uniqueDisplayName": "KnVxXnBmLgnw0zO1"}' \
    > test.out 2>&1
eval_tap $? 266 'CreateUserFromInvitationV3' test.out

#- 267 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "86xo2SNNSK5dq1RC", "country": "PoG96k8YTbXRKIJo", "dateOfBirth": "dmRaK7WlICWmg3nA", "displayName": "yNiYogHvL0zrtbxE", "languageTag": "Sp2cWj8igKhMFKIx", "uniqueDisplayName": "jGCeNQYczumeIusp", "userName": "6D4prmv4Emk3K6xh"}' \
    > test.out 2>&1
eval_tap $? 267 'UpdateUserV3' test.out

#- 268 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "O12JmdVaiGOYZqdY", "country": "DszpimEXo45u0Gox", "dateOfBirth": "MJBlbqDL4CWCyXvs", "displayName": "uZEZzsRqtbKWb8D6", "languageTag": "4RgcjkhC8nxZJpnu", "uniqueDisplayName": "pmjHxbOARJ6Tov7i", "userName": "B619f54nb37ck4vE"}' \
    > test.out 2>&1
eval_tap $? 268 'PublicPartialUpdateUserV3' test.out

#- 269 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "paUhIRfEsvUoH6KD", "emailAddress": "Yr5beiKBUYJM8uVJ", "languageTag": "SjSdVDgPazJZBnQb"}' \
    > test.out 2>&1
eval_tap $? 269 'PublicSendVerificationCodeV3' test.out

#- 270 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "xQeTSknPPZpsyCLo", "contactType": "EPcSgTugetwYKTjD", "languageTag": "qNzk6gUd4F67vVtM", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 270 'PublicUserVerificationV3' test.out

#- 271 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Kp5kAvhMr7OMBfVc", "country": "tNIEYguKaXqFwap0", "dateOfBirth": "WHpZt7m8bay1LnNw", "displayName": "XAeNUI26d3q9MldJ", "emailAddress": "SBfHLZ3wDQpwRpJP", "password": "Fy1t368IrOmKYcOK", "uniqueDisplayName": "UhRJN7GAVYZVkD2C", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 271 'PublicUpgradeHeadlessAccountV3' test.out

#- 272 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "1ACwm7oq9KWRkQ2R", "password": "7gHTS49Swm1vURAm"}' \
    > test.out 2>&1
eval_tap $? 272 'PublicVerifyHeadlessAccountV3' test.out

#- 273 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "2wu2Wu80j0JE2QWK", "newPassword": "R9CeBPSe89JNu14R", "oldPassword": "5YYb7Mdue0HomWwP"}' \
    > test.out 2>&1
eval_tap $? 273 'PublicUpdatePasswordV3' test.out

#- 274 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'gVVW7cY8uIvaX6bw' \
    > test.out 2>&1
eval_tap $? 274 'PublicCreateJusticeUser' test.out

#- 275 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'u1Avhyl0sHqskMLi' \
    --redirectUri '7oNvmACRzOY05XhV' \
    --ticket 'V92qKLjoX99oSTCK' \
    > test.out 2>&1
eval_tap $? 275 'PublicPlatformLinkV3' test.out

#- 276 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'AyK2vLTn34aj6B2k' \
    --body '{"platformNamespace": "q2m7PHizCHxoGgTc"}' \
    > test.out 2>&1
eval_tap $? 276 'PublicPlatformUnlinkV3' test.out

#- 277 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'xAb1FqlCw48yD2YZ' \
    > test.out 2>&1
eval_tap $? 277 'PublicPlatformUnlinkAllV3' test.out

#- 278 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'KaUmXE1eGb9f15Nz' \
    --ticket 'iyq5El6d9g10C7D5' \
    > test.out 2>&1
eval_tap $? 278 'PublicForcePlatformLinkV3' test.out

#- 279 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId '7SOAVhfcdT0H6X5A' \
    --clientId '3hsQTDnsfPv82Quf' \
    --redirectUri 'UuoX2LGqpGKq0hmB' \
    > test.out 2>&1
eval_tap $? 279 'PublicWebLinkPlatform' test.out

#- 280 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'ta6akBZPgBCueVi3' \
    --code 'kbwX2G6DlFAQw46Z' \
    --state 'GZkz1eIgQhWLgyeI' \
    > test.out 2>&1
eval_tap $? 280 'PublicWebLinkPlatformEstablish' test.out

#- 281 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'FDa90vK9ea9Hfvl8' \
    --code 'Cfi8aej1UY7Tt3ox' \
    --state 'yidmJ2vcjy4UyZQn' \
    > test.out 2>&1
eval_tap $? 281 'PublicProcessWebLinkPlatformV3' test.out

#- 282 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "O3hIMmwfifdijssm", "userIds": ["1FZTkPO64OpIPFgM", "wQQnKEQyXsduMzvV", "VuJuILbGiipU3vaT"]}' \
    > test.out 2>&1
eval_tap $? 282 'PublicGetUsersPlatformInfosV3' test.out

#- 283 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "RXP4DKgOuxOjgXQa", "emailAddress": "ehPHhixuLNPN9g08", "newPassword": "pY9edEHEmUH5WZ3Q"}' \
    > test.out 2>&1
eval_tap $? 283 'ResetPasswordV3' test.out

#- 284 PublicGetUserByUserIdV3
eval_tap 0 284 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 285 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gkpxODnrEmmkSoCE' \
    --activeOnly 'true' \
    --after 'e0wTZLJIlVduImq8' \
    --before 'DCRRWe2cgr1vgSiJ' \
    --limit '36' \
    > test.out 2>&1
eval_tap $? 285 'PublicGetUserBanHistoryV3' test.out

#- 286 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Z2aF3RmX0R7xrLXv' \
    > test.out 2>&1
eval_tap $? 286 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 287 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xBQP92UoOyxFJsOH' \
    > test.out 2>&1
eval_tap $? 287 'PublicGetUserInformationV3' test.out

#- 288 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '8EVTczBSwdEFVZAf' \
    --after '0.6566566891616443' \
    --before '0.4331313830972059' \
    --limit '33' \
    > test.out 2>&1
eval_tap $? 288 'PublicGetUserLoginHistoriesV3' test.out

#- 289 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YIC5LWQPazoA1Iik' \
    --after 'dmCbApVVsITrck7R' \
    --before 'Xcq6SJ8aV0supn0M' \
    --limit '6' \
    --platformId 'jEbXg0afiEsuLtua' \
    > test.out 2>&1
eval_tap $? 289 'PublicGetUserPlatformAccountsV3' test.out

#- 290 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '72S5G7W8NUBTkeI9' \
    > test.out 2>&1
eval_tap $? 290 'PublicListJusticePlatformAccountsV3' test.out

#- 291 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'O6mKpr9LEpihAaAs' \
    --body '{"platformId": "NI3kVFl63yFEuPu6", "platformUserId": "JDD18SEPuNT9cHA0"}' \
    > test.out 2>&1
eval_tap $? 291 'PublicLinkPlatformAccount' test.out

#- 292 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'T7BTaaXRruR4NLju' \
    --body '{"chosenNamespaces": ["DVbg45zZS9bCKH0I", "1e36S8UbOp9OSd4Y", "bDXeym3ySpMni5Jt"], "requestId": "lQ4cAT0YyW7ovVy4"}' \
    > test.out 2>&1
eval_tap $? 292 'PublicForceLinkPlatformWithProgression' test.out

#- 293 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '7dBz77y9NQswzbDf' \
    > test.out 2>&1
eval_tap $? 293 'PublicGetPublisherUserV3' test.out

#- 294 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QbuCElRD5aZZiUnw' \
    --password 'PfSu4dO2ZcZALBRv' \
    > test.out 2>&1
eval_tap $? 294 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 295 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'b4k685w6clBU1KsW' \
    --before 'NhO2m62qGFvp3vFr' \
    --isWildcard 'true' \
    --limit '70' \
    > test.out 2>&1
eval_tap $? 295 'PublicGetRolesV3' test.out

#- 296 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'f2dl4hAmVbMSpzfw' \
    > test.out 2>&1
eval_tap $? 296 'PublicGetRoleV3' test.out

#- 297 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'true' \
    > test.out 2>&1
eval_tap $? 297 'PublicGetMyUserV3' test.out

#- 298 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'xy08lNj75wR5oMLN' \
    > test.out 2>&1
eval_tap $? 298 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 299 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["5tPhot3j6eiNNCEz", "vExnCUntTKzrzVXt", "i6BVgABhq7r9OGtx"], "oneTimeLinkCode": "l5G4sn0fg6UQWuek"}' \
    > test.out 2>&1
eval_tap $? 299 'LinkHeadlessAccountToMyAccountV3' test.out

#- 300 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "73XdEoxS69okBXCG"}' \
    > test.out 2>&1
eval_tap $? 300 'PublicSendVerificationLinkV3' test.out

#- 301 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'YJ09Z7gyDluDCprz' \
    > test.out 2>&1
eval_tap $? 301 'PublicVerifyUserByLinkV3' test.out

#- 302 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'Wxg99SANWDr07e2a' \
    --code '5LSQax2Y5e2qm7c2' \
    --error 'IaSnBmWT6Ukan9GI' \
    --state 'GJIRiTLEADCS4si9' \
    > test.out 2>&1
eval_tap $? 302 'PlatformAuthenticateSAMLV3Handler' test.out

#- 303 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'Q1KvwAm8yQMDMNU6' \
    --payload 'FdpQxIheweNqWthI' \
    > test.out 2>&1
eval_tap $? 303 'LoginSSOClient' test.out

#- 304 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'muedOmKgqFTFYIUA' \
    > test.out 2>&1
eval_tap $? 304 'LogoutSSOClient' test.out

#- 305 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData '1DvXmdw50DNo88z2' \
    --code 'X9Qi3VE7CGWGNpvh' \
    > test.out 2>&1
eval_tap $? 305 'RequestTargetTokenResponseV3' test.out

#- 306 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '2' \
    --namespace 'NFU2qK1G9yjI8hwB' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 306 'AdminListInvitationHistoriesV4' test.out

#- 307 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Q62k0E9SSmmEkaql' \
    > test.out 2>&1
eval_tap $? 307 'AdminGetDevicesByUserV4' test.out

#- 308 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'ms25gGajbKQt2xNQ' \
    --endDate 'Tae5G8iaexeOmYzM' \
    --limit '12' \
    --offset '21' \
    --startDate 'SRJbtPuWfjmNCvdR' \
    > test.out 2>&1
eval_tap $? 308 'AdminGetBannedDevicesV4' test.out

#- 309 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'FwdL2SWQH8I8Hgij' \
    > test.out 2>&1
eval_tap $? 309 'AdminGetUserDeviceBansV4' test.out

#- 310 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "y5j3DKzbGCO6yWj9", "deviceId": "Vv515Bew2ERwl5j7", "deviceType": "DColxZvP7VbCfRJC", "enabled": true, "endDate": "veXG8xB926j6M3cb", "ext": {"n2MX2vM2YWh6MYsk": {}, "YinvBQdXGo9CRHXl": {}, "Gf5YIUH5dXi06phu": {}}, "reason": "PIthnNg6XxQdSnAH"}' \
    > test.out 2>&1
eval_tap $? 310 'AdminBanDeviceV4' test.out

#- 311 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'wu8rT3M1inSDiXhO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 311 'AdminGetDeviceBanV4' test.out

#- 312 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'sQ1Mn26mgAEnScc7' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 312 'AdminUpdateDeviceBanV4' test.out

#- 313 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate '37acma40ma3B72hU' \
    --startDate 'rGSPZDTu1sf2KQLP' \
    --deviceType 'LNn16lrhu0zkVVwp' \
    > test.out 2>&1
eval_tap $? 313 'AdminGenerateReportV4' test.out

#- 314 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 314 'AdminGetDeviceTypesV4' test.out

#- 315 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'RoH7QJkuydjyl1rw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 315 'AdminGetDeviceBansV4' test.out

#- 316 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'K2REhUqpgBAiVAOg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 316 'AdminDecryptDeviceV4' test.out

#- 317 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'E8JIztztYU8uCGmI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 317 'AdminUnbanDeviceV4' test.out

#- 318 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'J99H9WxvsjnHFZNj' \
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
    --limit '75' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 320 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 321 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 2}' \
    > test.out 2>&1
eval_tap $? 321 'AdminCreateTestUsersV4' test.out

#- 322 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "8WwKKlu9u8PRTUur", "policyId": "V0ZFhjyEtKLdYrTt", "policyVersionId": "tn1jIxwj3x1DACMn"}, {"isAccepted": false, "localizedPolicyVersionId": "awnmTFDLXKEG93tl", "policyId": "2XDLahs7TM6yvV72", "policyVersionId": "FncsGlKSwez9UTCR"}, {"isAccepted": false, "localizedPolicyVersionId": "11FsFu9vQymp1EMu", "policyId": "nVwUZfss2P7n8R3H", "policyVersionId": "MdB8775dpKMeGbil"}], "authType": "EMAILPASSWD", "code": "y7xAGsVLL9DCY49c", "country": "tFEDzQrjRr7mdWut", "dateOfBirth": "d6whNVTcMTjgLh9o", "displayName": "J2x82ZLqFkYuu2Ju", "emailAddress": "v3Qu8mqEQL7QlOdw", "password": "981F36SG9rTAGlmu", "passwordMD5Sum": "OwRpEjwDqZJd1JwP", "reachMinimumAge": false, "uniqueDisplayName": "5LiPjK2IlXIGWev4", "username": "bDDtch65OvQNkTJe"}' \
    > test.out 2>&1
eval_tap $? 322 'AdminCreateUserV4' test.out

#- 323 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": false, "userIds": ["iKGzniLDPjIRdw5W", "kNndUyPJEQJPt5Jb", "g8juc0bQmFFSpshk"]}' \
    > test.out 2>&1
eval_tap $? 323 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 324 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["FpaQHiWjzZ2oJewe", "4GruwH8PSoqS3pXZ", "Dk1QmgVexKEVhw4v"]}' \
    > test.out 2>&1
eval_tap $? 324 'AdminBulkCheckValidUserIDV4' test.out

#- 325 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'AHvPeVlCBbatz97e' \
    --body '{"avatarUrl": "VUTeFPCrvXS4P0tb", "country": "0scukqX6CmMHw0Be", "dateOfBirth": "oux0hM3OL0ZySh0Z", "displayName": "0lsMbyfz46DFcHTZ", "languageTag": "9HwtrI3KBCs9cGFp", "skipLoginQueue": false, "uniqueDisplayName": "1CvF8aNZH3i6Ol0Z", "userName": "aiohAEXNS25MY9uM"}' \
    > test.out 2>&1
eval_tap $? 325 'AdminUpdateUserV4' test.out

#- 326 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'd23dkLF0PlGhBk8j' \
    --body '{"code": "b3iMaPtpw26uLnpj", "emailAddress": "500bwA9eatqpMTxx"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminUpdateUserEmailAddressV4' test.out

#- 327 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ob106whK27kpLFlq' \
    > test.out 2>&1
eval_tap $? 327 'AdminDisableUserMFAV4' test.out

#- 328 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'MiHbPL8bLoCN1FgL' \
    > test.out 2>&1
eval_tap $? 328 'AdminListUserRolesV4' test.out

#- 329 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'YUksi14PJzpnb00u' \
    --body '{"assignedNamespaces": ["Y5V8gRO0n4OibaLv", "3JQ34OtpWO4Q6zwv", "N9JSdybmrnytnElp"], "roleId": "Dq8fZ7peKwNh7Lwc"}' \
    > test.out 2>&1
eval_tap $? 329 'AdminUpdateUserRoleV4' test.out

#- 330 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'S2770UksvTFoPdkz' \
    --body '{"assignedNamespaces": ["M1aIdUVSgYETfGKA", "1vHcZsmPT0nDSY33", "EoNsUNG08iZTybX8"], "roleId": "uqV7rZif0FmASPBl"}' \
    > test.out 2>&1
eval_tap $? 330 'AdminAddUserRoleV4' test.out

#- 331 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'sTElzuAajJpWolo8' \
    --body '{"assignedNamespaces": ["uTXOIUmSkQKy0eOm", "8AMauuicR94YvwVk", "Z83olu48c7JLcgex"], "roleId": "z2vXnqjTF0UBWdXl"}' \
    > test.out 2>&1
eval_tap $? 331 'AdminRemoveUserRoleV4' test.out

#- 332 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'false' \
    --limit '49' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 332 'AdminGetRolesV4' test.out

#- 333 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "UuezE25vzHD7lEwq"}' \
    > test.out 2>&1
eval_tap $? 333 'AdminCreateRoleV4' test.out

#- 334 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'b6hLkjzp2SqsTAUu' \
    > test.out 2>&1
eval_tap $? 334 'AdminGetRoleV4' test.out

#- 335 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'wrMgc2XrUDgtgrmA' \
    > test.out 2>&1
eval_tap $? 335 'AdminDeleteRoleV4' test.out

#- 336 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'Tzvlx50vSyTSc3Im' \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "ddGKBQZageBU4ldR"}' \
    > test.out 2>&1
eval_tap $? 336 'AdminUpdateRoleV4' test.out

#- 337 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'ISAxu5OgHlf7Cagc' \
    --body '{"permissions": [{"action": 28, "resource": "Roo1m5bUvoU4FVc5", "schedAction": 5, "schedCron": "JB3FgMAKVxVEzpDQ", "schedRange": ["Xad6jVESh4XH4WMc", "lqWK6kARPRhMXRaK", "e3t5ZcKhRQIVMu6D"]}, {"action": 80, "resource": "bqULA6Z3WyjDPIK4", "schedAction": 57, "schedCron": "LOjQx1onLebGckmS", "schedRange": ["1DXUioNkRhlExZ2o", "1ksQtvFjqPt8TKEO", "FjRA7l0wPVvBKhyu"]}, {"action": 73, "resource": "lpVWQZ4CIUHLyPgd", "schedAction": 91, "schedCron": "sEGZ9aRtSjWiYWlr", "schedRange": ["vZ0p4vmt2j4yj9Ay", "3Rl8Ahv8UJlQd5N7", "bn8oon93cjEgwBQu"]}]}' \
    > test.out 2>&1
eval_tap $? 337 'AdminUpdateRolePermissionsV4' test.out

#- 338 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'Djvz3n2WkWQfZaWl' \
    --body '{"permissions": [{"action": 72, "resource": "tc9cibSFBq0bAbG4", "schedAction": 37, "schedCron": "4zF6KX4jekqvwcVK", "schedRange": ["GrDeqHqvhfA8Sryn", "3nCAfq7H1076PWXT", "3YRbIcYfsPfkaC2Q"]}, {"action": 82, "resource": "45qBHkqiRHSP0gC5", "schedAction": 92, "schedCron": "ut1uqMhg6WWOr9Fw", "schedRange": ["MKziMUMoJAgwEpVF", "Yw5R35voczfqo2C9", "tzO6es88HSe4L6bu"]}, {"action": 25, "resource": "iTrrBxIu6JOGiVfO", "schedAction": 44, "schedCron": "H2aPL0teasqBm2de", "schedRange": ["X2suAThmR4tiRzod", "3C99VgyX3AAZ37ko", "JaD2xJDhYKPwdd4Y"]}]}' \
    > test.out 2>&1
eval_tap $? 338 'AdminAddRolePermissionsV4' test.out

#- 339 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'cqZh7hUzs4wX3Kt2' \
    --body '["EcgKl1qiCWFt0ijS", "u6HTaTIjvkS8pqYG", "X38mEA1p2CPXQvVE"]' \
    > test.out 2>&1
eval_tap $? 339 'AdminDeleteRolePermissionsV4' test.out

#- 340 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'Ox12eWwxWc8j74d9' \
    --after 'wr3ZQAKhjwThOguO' \
    --before 'RLZJBh8tiw8shRjF' \
    --limit '48' \
    > test.out 2>&1
eval_tap $? 340 'AdminListAssignedUsersV4' test.out

#- 341 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'zfx8pfJEdtaSXOIt' \
    --body '{"assignedNamespaces": ["c0XxHLzi2id1DjOD", "F9Jcup51Bk648bUG", "j4AIx5o5R24tebBk"], "namespace": "AtXE4fRqUEhMLJYB", "userId": "xC8sUlOsNUX9xh2Q"}' \
    > test.out 2>&1
eval_tap $? 341 'AdminAssignUserToRoleV4' test.out

#- 342 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'bx2DNtMKpePq8r2z' \
    --body '{"namespace": "dUWT4GD3aAaYCZlC", "userId": "8W0LJwQ38efKylzw"}' \
    > test.out 2>&1
eval_tap $? 342 'AdminRevokeUserFromRoleV4' test.out

#- 343 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["aHOYGD5ZaKT2cvVP", "orsF4aMj6K7amWNT", "Gv25BbYgFLW3O0wc"], "emailAddresses": ["7XV7cGQg3eO7q2rc", "5ePfJsQgsfb98VMQ", "aCtdd8qJWtkG7ajy"], "isAdmin": false, "isNewStudio": true, "namespace": "bi68e4RLVdPXgTDm", "roleId": "YEqkIoWvjpF4NCpl"}' \
    > test.out 2>&1
eval_tap $? 343 'AdminInviteUserNewV4' test.out

#- 344 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "7qtQAT8zTEbuhLhP", "country": "MAzcZq1GZngGFVkO", "dateOfBirth": "Qb5buxwWq4YWE5jA", "displayName": "8gLHuEoF8t5lEWJT", "languageTag": "gMbF8J1ZfMl3oqlf", "skipLoginQueue": true, "uniqueDisplayName": "sAN5pnaAzbO8AxvH", "userName": "1NfeNrj7ueIEZxrO"}' \
    > test.out 2>&1
eval_tap $? 344 'AdminUpdateMyUserV4' test.out

#- 345 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 345 'AdminDisableMyAuthenticatorV4' test.out

#- 346 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'srGufdTRxSfLSQnA' \
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
    --code 'VYzUgA68AjN6ZydB' \
    > test.out 2>&1
eval_tap $? 358 'AdminEnableMyEmailV4' test.out

#- 359 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 359 'AdminGetMyEnabledFactorsV4' test.out

#- 360 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'nZrybfBtbYIVttXf' \
    > test.out 2>&1
eval_tap $? 360 'AdminMakeFactorMyDefaultV4' test.out

#- 361 AdminInviteUserV4
eval_tap 0 361 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 362 AuthenticationWithPlatformLinkV4
samples/cli/sample-apps Iam authenticationWithPlatformLinkV4 \
    --extendExp 'true' \
    --clientId 'FRiTjvj7NqmC071I' \
    --linkingToken 'q4OeKUPnpeNOVc4K' \
    --password '5fyY7MbDzqAWiK1y' \
    --username 'McgUsXpqM4mrDv17' \
    > test.out 2>&1
eval_tap $? 362 'AuthenticationWithPlatformLinkV4' test.out

#- 363 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'JUO6JxWcTM003vul' \
    --extendExp 'false' \
    --linkingToken 'KLfZk1RjPlB7Gdbn' \
    > test.out 2>&1
eval_tap $? 363 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 364 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'GcHPZV9EbDArSgsB' \
    --factor '1Jj3xyAQQ3ZZX9vj' \
    --mfaToken 'rfeXCMixRjPNs7GA' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 364 'Verify2faCodeV4' test.out

#- 365 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'u89NBgVrminS0MQ3' \
    --codeChallenge '3Q3dSDjBWvmyPtqb' \
    --codeChallengeMethod 'S256' \
    --additionalData 'ctE4S6WdytPOGeYh' \
    --clientId 'k89qL9cZqDkMlE4i' \
    --createHeadless 'false' \
    --deviceId '8RzBeYAkbUM4UTBm' \
    --macAddress '4H6TVYLgth3o4FlH' \
    --platformToken 'E3Spl1qQSQbaXJ2y' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 365 'PlatformTokenGrantV4' test.out

#- 366 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'ZymuQbzCkjtgV3BY' \
    --codeChallengeMethod 'S256' \
    --simultaneousPlatform 'dB3ppnSuFI3S9yqJ' \
    --simultaneousTicket 'RXSrxgBZxf5f3KGC' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'NkSYwC7P2QQer6xe' \
    > test.out 2>&1
eval_tap $? 366 'SimultaneousLoginV4' test.out

#- 367 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge '2ipo89iq9KNXz3Z8' \
    --codeChallengeMethod 'S256' \
    --additionalData 'K6EWJkveH1WgLgBA' \
    --clientId 'stD0mQWbbOBTCT4f' \
    --code 'uwhu4JVTf7Pxol5V' \
    --codeVerifier 'yPyyW0ZDxba7SoXy' \
    --extendNamespace 'QQDQ1rWfy3dyxDRv' \
    --extendExp 'true' \
    --loginQueueTicket '9Vsq4KzciJMo5TFw' \
    --password '0Fq9CP5pFaKm12iU' \
    --redirectUri 'rxGtaarhV60t8RMx' \
    --refreshToken 'zZbHn8YIDHdz3u4I' \
    --username 'tgNCG7z6gW1Gfpto' \
    --grantType 'urn:ietf:params:oauth:grant-type:extend_client_credentials' \
    > test.out 2>&1
eval_tap $? 367 'TokenGrantV4' test.out

#- 368 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'Cnzk7IIC06Ge2gJ4' \
    --code 'zdnMrBY9OJDoGnOd' \
    > test.out 2>&1
eval_tap $? 368 'RequestTargetTokenResponseV4' test.out

#- 369 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "W867AkcMLvavrZRY", "policyId": "rzgwKTHZo3wUdthN", "policyVersionId": "Ng5jWhen9ZTqSLO9"}, {"isAccepted": false, "localizedPolicyVersionId": "Ybj5vkW6ld6qjvTk", "policyId": "MPs12Wqxgbe8Ruk0", "policyVersionId": "9oeYRMFmlo95lzro"}, {"isAccepted": false, "localizedPolicyVersionId": "jZ6gjYA6XcHnncdi", "policyId": "tYYg4JL6BOvptDMN", "policyVersionId": "JnKa5hq9DXMdgdto"}], "authType": "EMAILPASSWD", "country": "J9QzaQ1ptmSTH44q", "dateOfBirth": "8bofO9U6IS7eFGuk", "displayName": "NDaAspPEsfPnnWG9", "emailAddress": "MDy3Z3IkGFDm48wh", "password": "AcEUoCGtApGPqPLq", "passwordMD5Sum": "s5EhEatjr0NXjWiQ", "uniqueDisplayName": "Rgmcavx7IuUstlBB", "username": "JBqZcCAV8p6W8beM", "verified": false}' \
    > test.out 2>&1
eval_tap $? 369 'PublicCreateTestUserV4' test.out

#- 370 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "cg5FWUMdGwOFMLZx", "policyId": "1vP2gnNTpYuCkl5a", "policyVersionId": "fIlqCRgjoZxwalsP"}, {"isAccepted": false, "localizedPolicyVersionId": "n0t3rof6gDenJ2o7", "policyId": "Nu1XhHjCHy95NNUz", "policyVersionId": "4MXvGqu7k0ql7XWN"}, {"isAccepted": false, "localizedPolicyVersionId": "8hGlNPeyQp6C3uQX", "policyId": "BGsFRwnoVM3ZmU3s", "policyVersionId": "WN9uiMqqg7qBibc7"}], "authType": "EMAILPASSWD", "code": "C5T35Yl0CXd8RvCI", "country": "QgqOOYvSdxgzkaMG", "dateOfBirth": "ttjNytIKPuGu6l6i", "displayName": "QUYYtPcflVkpgKXM", "emailAddress": "H2oKtb4Nk3WzbsfT", "password": "de1iWsPao3EoZcQb", "passwordMD5Sum": "QPjR0H263okwrBKN", "reachMinimumAge": false, "uniqueDisplayName": "4UxnmTtc3DjqEf2Z", "username": "sAQyM6dxklCQgI67"}' \
    > test.out 2>&1
eval_tap $? 370 'PublicCreateUserV4' test.out

#- 371 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'wZdxXz0W2xqUAFRr' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "zWIaSSXtetq5ooIl", "policyId": "fPndOgUeypBsd0pS", "policyVersionId": "0yKI3cuhezyU38eZ"}, {"isAccepted": false, "localizedPolicyVersionId": "84yoKGeUtKjc4rfb", "policyId": "0kUFRcHDxbA3XoIr", "policyVersionId": "AJCBTN2wk1iXPm6s"}, {"isAccepted": true, "localizedPolicyVersionId": "dSvoyHGFJ5YwBjRN", "policyId": "mpfAlU9VPt2Ojlao", "policyVersionId": "1Dlwf5P3BP3n6Mz6"}], "authType": "EMAILPASSWD", "code": "YmKiDecIQch3NwVH", "country": "o3CvNWn1QDWgVvz2", "dateOfBirth": "wiq0hageRb05WCNW", "displayName": "3GQPz5JCdubITUrx", "emailAddress": "tdk7bfWznMZgPa7r", "password": "YE5BVnUbI0tVPiFf", "passwordMD5Sum": "qdeIiTQiGM1Mf8Je", "reachMinimumAge": true, "uniqueDisplayName": "WmF0VuUEOmfzfhtD", "username": "CTHXavV5loUqXwnh"}' \
    > test.out 2>&1
eval_tap $? 371 'CreateUserFromInvitationV4' test.out

#- 372 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "qzLv7vcEjrfBGL84", "country": "3xqDTa48VJfjS2dw", "dateOfBirth": "ZgTYyH909EehnzDx", "displayName": "GPIF75OBycj6IgDb", "languageTag": "JNNhvDqjONdKhkYb", "uniqueDisplayName": "NuWSBe8iLQuRJjaE", "userName": "fTyfvd5svefrw2n7"}' \
    > test.out 2>&1
eval_tap $? 372 'PublicUpdateUserV4' test.out

#- 373 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "r6a9ouLuw11GAdkP", "emailAddress": "dk3E4r6yDUlxmPIW"}' \
    > test.out 2>&1
eval_tap $? 373 'PublicUpdateUserEmailAddressV4' test.out

#- 374 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "UzdiJMVzVLsMp0o2", "country": "dxeEf8fiYnPHHPwQ", "dateOfBirth": "A1PFeaAazwdLdWOe", "displayName": "LDK68VmnASWtxGkA", "emailAddress": "Ak2oReeavTTzEeLV", "password": "IfcFLrQKbVv7rAkW", "reachMinimumAge": false, "uniqueDisplayName": "GRttSDpV6JTZyHBz", "username": "0KxORzlKK7qNFuaH", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 374 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 375 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "Ottwlzi1wOHrgmER", "password": "f9V55mHeL8BfBJ9P", "username": "DAoomNoXMqj03b5M"}' \
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
    --code 'At9aHKljnxmnEhEn' \
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
    --code 'bsy84u4cOK66T2Sy' \
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
    --factor 'vksEF4JKg5OM6k8W' \
    > test.out 2>&1
eval_tap $? 392 'PublicMakeFactorMyDefaultV4' test.out

#- 393 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'TyZuyxDjJZAEXPCe' \
    > test.out 2>&1
eval_tap $? 393 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 394 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "dspM52MbCkWsT7X0", "emailAddress": "cSaWjxrb2BL4zRU2", "namespace": "rGxQLCe4TCTbQxej", "namespaceDisplayName": "an8lWD5IqmDvhcst"}' \
    > test.out 2>&1
eval_tap $? 394 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE