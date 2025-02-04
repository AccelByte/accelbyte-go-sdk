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
echo "1..428"

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
    --body '{"modules": [{"docLink": "XCdNJbCunv5WYzPY", "groups": [{"group": "FsnWJsznYvHYMrlg", "groupId": "j9P1LDZRBFGcNQxK", "permissions": [{"allowedActions": [90, 4, 21], "resource": "17LRE9WEgm6APd7M"}, {"allowedActions": [56, 28, 59], "resource": "vhXqzZ9SynsX5bBo"}, {"allowedActions": [48, 41, 3], "resource": "OsNbIkNdM8CSdr0x"}]}, {"group": "CDK9o1hxNFIvim9f", "groupId": "vBVpx5soh4BW0cRG", "permissions": [{"allowedActions": [35, 48, 9], "resource": "QQeMLIbXaismczXt"}, {"allowedActions": [38, 39, 41], "resource": "7tYnZcsmW69NXKmg"}, {"allowedActions": [91, 86, 66], "resource": "O2LJq3f7IaeSKpuF"}]}, {"group": "CTFYPcQ0rQAtxA2u", "groupId": "UTgOq2aDZmo4Lsxt", "permissions": [{"allowedActions": [73, 62, 9], "resource": "aD2gBrtEoXvYHhdb"}, {"allowedActions": [67, 71, 13], "resource": "IIfIwi59VGXmSVkR"}, {"allowedActions": [7, 45, 7], "resource": "6HkdAKGo20igPmis"}]}], "module": "7jZrKa05J158CjiI", "moduleId": "J43O5osSko1OqlYZ"}, {"docLink": "BSPTC7c6Z0TeEwzT", "groups": [{"group": "wefGBP9gwPakDKEj", "groupId": "9HZxuGbSItdO0ri0", "permissions": [{"allowedActions": [64, 59, 74], "resource": "7wwAfpfSzdywbAsV"}, {"allowedActions": [41, 37, 63], "resource": "L5Ma33gculBFhnz2"}, {"allowedActions": [49, 100, 45], "resource": "E3b6s3kYSV2OHTqR"}]}, {"group": "InmhPJvXUeV8MHAy", "groupId": "KWtgUcUVufVsze3K", "permissions": [{"allowedActions": [67, 22, 16], "resource": "AnaFCjnkZukEZIx0"}, {"allowedActions": [54, 30, 79], "resource": "RrvlvBxzkdZCbqjE"}, {"allowedActions": [29, 27, 52], "resource": "bjZpTR0gcpBSoQE7"}]}, {"group": "yRspx45nqc1G3qqb", "groupId": "yNBDXmjzpbbyYBY5", "permissions": [{"allowedActions": [48, 30, 7], "resource": "h62kAwMUXe3zDKrK"}, {"allowedActions": [97, 23, 61], "resource": "hQkwngQbd33VWwuf"}, {"allowedActions": [60, 65, 64], "resource": "97pWcOL7nXBg9R7t"}]}], "module": "LRB1ymrdu93GJZVq", "moduleId": "me7IQZyEVuvb8rqI"}, {"docLink": "kqqZjNimNE743IFa", "groups": [{"group": "84vwKXS55JHrW9RT", "groupId": "TvXUqR8DY4Xe6BtV", "permissions": [{"allowedActions": [60, 78, 25], "resource": "qVtmpYyESPap10BF"}, {"allowedActions": [82, 13, 75], "resource": "ONAt03RdCMcilr2M"}, {"allowedActions": [15, 77, 13], "resource": "ZlM4KQSkVrhWj59S"}]}, {"group": "UPjv77YHN4thS6lg", "groupId": "KDVXgC3zJMDoY1S9", "permissions": [{"allowedActions": [40, 37, 99], "resource": "JTqE0DIJ3n2nVspd"}, {"allowedActions": [81, 51, 3], "resource": "PWA6j7X46AY5FTaI"}, {"allowedActions": [99, 14, 93], "resource": "SbGNLccmOSEbq8dH"}]}, {"group": "uhjJvScUz07K2Bz3", "groupId": "50zYGY9mTRvWzVtq", "permissions": [{"allowedActions": [30, 57, 38], "resource": "RCijaLV1QNnNzS7J"}, {"allowedActions": [9, 46, 94], "resource": "zuybfslvloGEEvGK"}, {"allowedActions": [84, 0, 20], "resource": "FESFrr0Nmr3I4Ug6"}]}], "module": "O7b5bVMF3lSzdYHL", "moduleId": "kXZHR1wdIhYeK1uI"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'true' \
    --body '{"groupId": "QKvaf0NzfWlwZFGF", "moduleId": "CBB1rjL3KpVGfgIu"}' \
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
    --body '[{"field": "XOO0aMc6XGissmd6", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["nJREI9TJkFAWjZMy", "Y2Rg98a9nmWQ1co0", "KKYUHC1fsF3fheOS"], "preferRegex": false, "regex": "ElO8kGW19uP7RJwt"}, "blockedWord": ["USO2wAtu9n3Wejfv", "9CWwfUWVpAMmhCRp", "fnXoyCX4cQDrF1B3"], "description": [{"language": "7Rhx61vhkyIQ45Aq", "message": ["fxj3fRpqtCCfn3Pk", "Rz9jIJgSG5E523Ug", "tafLfuwOGvy9t2o3"]}, {"language": "3ncfJooR8Tg9XhA9", "message": ["gJbeDfwILVD6Gxo6", "dOuX2kU0CvxVfCm9", "SqIzg92EPzBWioML"]}, {"language": "2ZbiI1teMTkbvMoN", "message": ["mVk3OT8Jim5HyczN", "GmwWcncDjIsIE0lK", "V6yQ1JYe4QJaNuwG"]}], "isCustomRegex": false, "letterCase": "1swkUHRBEfaBTLSP", "maxLength": 15, "maxRepeatingAlphaNum": 41, "maxRepeatingSpecialCharacter": 89, "minCharType": 57, "minLength": 6, "profanityFilter": "UI77oc4a8JT8ERvE", "regex": "6WNoXujemjG35iE3", "specialCharacterLocation": "HvEuBY7HF4UZgx9E", "specialCharacters": ["bR1EFLlQ1tD2hkC8", "bNfMVRZl1qXsRCpo", "SePgtAQzKMe8m7Wp"]}}, {"field": "lkzscVGaSBADkGVm", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["Muo59Ms8itSaCNX4", "wmCPOKe8sTG8zHsI", "85CL2QCuPhH6UVpv"], "preferRegex": true, "regex": "NqRjJHT91Tt5AgGd"}, "blockedWord": ["Hd3FY368srNTjCVJ", "M5qNYAfZha6bBFIp", "Tr8nwVwtS6jiDUvN"], "description": [{"language": "l2Eej56htNlwL8VY", "message": ["Av3eugruaF5aPiDL", "4tuH9yuSwW7uuNuf", "ZVEY4FgGx8sUDhYz"]}, {"language": "pujwYnqUPbCtVwzF", "message": ["LceeXv8MGtdoTNpz", "JPOOWrMUOUSfGyMi", "pAHsaAqvBgxm7rTW"]}, {"language": "kMo1aXQl4dqwUTRi", "message": ["jbEGuvOBAFIXuY5f", "07AquNoSBZJiPL8y", "4utpQJ6SN9S623Qp"]}], "isCustomRegex": true, "letterCase": "GRhjNhLXNPYnTcfr", "maxLength": 90, "maxRepeatingAlphaNum": 19, "maxRepeatingSpecialCharacter": 32, "minCharType": 34, "minLength": 94, "profanityFilter": "YbrFPNIz2w5SiggH", "regex": "Od20loC7TnCzogUX", "specialCharacterLocation": "MGBzIJ6aTLfRuLoU", "specialCharacters": ["NmMkMvrgqnZoOgqW", "VBQpqFVMJ5xTCv5V", "Ownd8xeGG5XSBp0o"]}}, {"field": "ye7sudoHhafk5ER2", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["BiTAu5YE5XCdemPg", "SCmmy3HphpLhwUmf", "9AFMFw1hO3jAeVUF"], "preferRegex": false, "regex": "vUzM8MgzSVotrkz8"}, "blockedWord": ["Xq3SHxYFO3Iczbcn", "LWSANFfhsyR58iTv", "1kmDArPZ2dVf8vbG"], "description": [{"language": "jTRps3CRqmP9rhTd", "message": ["vwdgJa25CLIyH1tS", "40as0ijoDFIhRa8U", "iy1fGbboxrijjn7D"]}, {"language": "NlPc7LxMvUwk5YwT", "message": ["SKKRlWhkyymENCmA", "Qc61Td7cFwoanaIp", "f2UDx3Kif5xj82eJ"]}, {"language": "orJ4VgvWyRNvcRtC", "message": ["O0kOB7BUwGmovWcD", "iLGRYQK6jijIlLcb", "AGJCL4X9pbIHhvcb"]}], "isCustomRegex": false, "letterCase": "LtFOsaGTqZpTLdCe", "maxLength": 42, "maxRepeatingAlphaNum": 10, "maxRepeatingSpecialCharacter": 79, "minCharType": 57, "minLength": 88, "profanityFilter": "1OfBKsjTjVmLTGuw", "regex": "qvkxlYbbQvl0rsAa", "specialCharacterLocation": "DJ8BLUDhk0JSvtZH", "specialCharacters": ["y6jgDJkZspLx8AwY", "ujC5nvErnMbhEudu", "8n1D2jbLjkF2NLQz"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'KlDMHsGDWWMCzLer' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'WSz2cPB6WYcQbOZG' \
    --before 'wt95MEekDnyIwdOW' \
    --endDate '4wp53H4eitGbMfju' \
    --limit '84' \
    --query 'kXCCZ2ITCfgFebzY' \
    --roleId 'kPl8n4IQRiDZcksZ' \
    --startDate 'k9DBj98th0p5DSJK' \
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
    --body '{"ageRestriction": 29, "enable": true}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'tqLoexdLfws0wQW9' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 66}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'Jd0fyB6zMXZ7bh72' \
    --limit '38' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "towsalr3yukxasrP", "comment": "NPWkgVHp6iyrSPQA", "endDate": "jRNZOdMCzZ3sfaTF", "reason": "h9X04LUAibd2GFED", "skipNotif": false, "userIds": ["g6Lejn49k0isZNXK", "PHrncAJAmcDL8GjU", "uhYGilX8d4vzUkng"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "d3ZiA0cysiBoPfn9", "userId": "qMMOiHc0ckUCYU3D"}, {"banId": "3YSzrfOoTg2sIel0", "userId": "3Q6E2OKLfd3cfMSR"}, {"banId": "xn4m5dsuavQea3q9", "userId": "iJzT6wsQsf6ZvzGl"}]}' \
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
    --clientId '4wVrVfUUSSrs7Jzx' \
    --clientName 'hwUx6QzqPwJQVcMd' \
    --clientType 'vvIOxGomYSVg9KNi' \
    --limit '77' \
    --offset '68' \
    --skipLoginQueue 'false' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["AZCheBbytsJ3tLX0", "OTvbKdipxoLtg7ur", "Of6GMz9V7n3X6QhV"], "clientUpdateRequest": {"audiences": ["PVUjXUjMuRevLjuJ", "gxLJVhEVBTVPKRvC", "lzftO0uWRbXh1ae2"], "baseUri": "gy9zpe4ya7TMemyv", "clientName": "P8gZQYmn7pry4UfZ", "clientPermissions": [{"action": 19, "resource": "jnvLvIOsswPpnGZX", "schedAction": 91, "schedCron": "X6iRRKAAkonDr1mX", "schedRange": ["UCEmrxXLGQiSPrI0", "oDArgImangvq0KKL", "fBEGLsQhJkKmf4rx"]}, {"action": 32, "resource": "2LIuluJSIDR2zwoM", "schedAction": 64, "schedCron": "MKyzpscnm90HLAKx", "schedRange": ["F8mPE0HYDQt3kBPH", "o73tsoQQNPUXVcc7", "GjUfszM38Uq0Uaox"]}, {"action": 17, "resource": "B1bgk5a4DemVkfWR", "schedAction": 16, "schedCron": "Nd7KVNE3mRrVD106", "schedRange": ["QFT1jHY15EmpRVFN", "tFfvLpCYLXwIAheS", "305rEkRpfvNzDScc"]}], "clientPlatform": "5wULBdbuQiPSEfYY", "deletable": true, "description": "QlMHhD9xxmmZbSGU", "modulePermissions": [{"moduleId": "AtCNBV3DHO7QBEWK", "selectedGroups": [{"groupId": "7TtGgw1qZ9bl0FtH", "selectedActions": [2, 68, 14]}, {"groupId": "pqsXGgXYYlynmztA", "selectedActions": [51, 60, 95]}, {"groupId": "F0UaNn0nYY9G8RsE", "selectedActions": [83, 20, 98]}]}, {"moduleId": "gKwN5AoVEUWmr5Zv", "selectedGroups": [{"groupId": "5iqAXASOKr8PqE4W", "selectedActions": [13, 66, 100]}, {"groupId": "TQe9UmklUb9IwDmC", "selectedActions": [64, 75, 73]}, {"groupId": "DSdtSLQfNcMJv47W", "selectedActions": [16, 18, 0]}]}, {"moduleId": "4ob3AN8SqXjmVhKp", "selectedGroups": [{"groupId": "j8LGUWOQJk0It8BL", "selectedActions": [47, 41, 1]}, {"groupId": "CkmsVYZbCZr0KhHl", "selectedActions": [18, 99, 1]}, {"groupId": "E5TKUbwvU98h0Zxg", "selectedActions": [34, 42, 83]}]}], "namespace": "X4lZ3IkxHMZzjhbC", "oauthAccessTokenExpiration": 73, "oauthAccessTokenExpirationTimeUnit": "1fWjTBG1n8fnFL6m", "oauthRefreshTokenExpiration": 39, "oauthRefreshTokenExpirationTimeUnit": "2SOIw4zHn53iIgxs", "redirectUri": "v727vtMsJmpQxZWE", "scopes": ["rFnrgcy12uSgPMw0", "0GQpIiSF4tkDFnR3", "iQwI31KrgsaXHStb"], "skipLoginQueue": true, "twoFactorEnabled": true}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["XpA6ZLauppdyvXaf", "6FyNoLZveR9R0oai", "A5SZA5wOgwShXTkL"], "baseUri": "QU7d38BOzqjCQE2x", "clientId": "07POClPIgcsjwkas", "clientName": "Oud2OLmtPLNvoDgR", "clientPermissions": [{"action": 4, "resource": "lPSLNxjXX9DneFiD", "schedAction": 16, "schedCron": "yMm0nF27KxBQHJXj", "schedRange": ["V7br3X3XrpFNrbmL", "y9MZEOpGbVWOCrw5", "c0pegV9YVdNbQ5Hu"]}, {"action": 1, "resource": "zKwimj8jRcctwF3v", "schedAction": 58, "schedCron": "bgMuXFSewar6WRmk", "schedRange": ["YsVP8NGl2s6F3LX3", "3coTV8dWIZqL8W32", "ezKWPs0N8UFScgXo"]}, {"action": 11, "resource": "Aq1bFe7Rv0Th5oBN", "schedAction": 56, "schedCron": "3Zwe3dcaXB7oclok", "schedRange": ["pI0Ial69JQ9tfq76", "84HO6AR1adjNKlTo", "jTsuYwm2cY2p3Eeq"]}], "clientPlatform": "8ueMYbHCEj7nA5s6", "deletable": true, "description": "oTkEWkwN1qJRrI9J", "modulePermissions": [{"moduleId": "cXgf3Pby3biQsGUz", "selectedGroups": [{"groupId": "qJ9gPl0zku3feXZW", "selectedActions": [92, 23, 12]}, {"groupId": "lJQJbxLozIHxtKq7", "selectedActions": [64, 11, 85]}, {"groupId": "CaEIU4zXTi04l8i4", "selectedActions": [75, 31, 34]}]}, {"moduleId": "w19SmyIDZ35wiZvI", "selectedGroups": [{"groupId": "fsySHSyHexFNwjlO", "selectedActions": [65, 38, 73]}, {"groupId": "sFP2F1IyJ1vRJmTX", "selectedActions": [28, 44, 47]}, {"groupId": "h1qnH37FbGsTVVQJ", "selectedActions": [78, 52, 16]}]}, {"moduleId": "nvqEQmIGAr6cUbQu", "selectedGroups": [{"groupId": "QnntC0viVhaSPWo6", "selectedActions": [40, 3, 16]}, {"groupId": "pWJaSdzFjDve2Ng4", "selectedActions": [18, 14, 79]}, {"groupId": "Rnearw3i6OZJzZx0", "selectedActions": [9, 88, 60]}]}], "namespace": "N9ri7EerwpBf6AE5", "oauthAccessTokenExpiration": 35, "oauthAccessTokenExpirationTimeUnit": "VygclAwJ43y8zjiE", "oauthClientType": "8iAtwd5Jbrpvo5m2", "oauthRefreshTokenExpiration": 84, "oauthRefreshTokenExpirationTimeUnit": "yQO5Jmzyp585RTns", "parentNamespace": "ydDGdIYakgd9H5YY", "redirectUri": "Mdh6cZsn7KmgnNbv", "scopes": ["M8j0NeoV70fGoIOD", "9PGoR3K61A0GDioc", "D54qkTdVX1ZRXFwP"], "secret": "mU7o68bdi5wkv7ej", "skipLoginQueue": true, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'tikdwb88oJjluNlH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'IILlTCn8L0aZqA17' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId '4dVUh4h8iQIvawkp' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["Nuq8DA45kb1m5KxP", "C1ltjbHl2JFJ6ukg", "oLEQWtaBPeurZwhy"], "baseUri": "n0TfmJzHeZhk7WQC", "clientName": "Duwlf4LrMCGCBS7g", "clientPermissions": [{"action": 63, "resource": "cxKxZGPzEp7eqtiK", "schedAction": 18, "schedCron": "AE3xlzWNdPc2viXv", "schedRange": ["AzF0WnigVt2HgV5y", "7pQ7gIIPcQy10n5V", "gu2gO8wvQjTQ1wvK"]}, {"action": 6, "resource": "zbA5KuG8EWgXJMn2", "schedAction": 28, "schedCron": "GDh00hQ3PfxBh1rJ", "schedRange": ["r4sCx0oifIWfBpCG", "akNFCAqroPczCxrV", "1UhFLTZixofZtyOM"]}, {"action": 59, "resource": "pe2dEOwUKz3OcyCA", "schedAction": 33, "schedCron": "by92dZVWzFYjAHR5", "schedRange": ["efkNq92ub3gYGVgW", "8zqtdFJwAB8Mlfus", "VAEsP58n5qIJb31u"]}], "clientPlatform": "k4AroIBTFdTtmkmB", "deletable": true, "description": "VAvN6FuFPhIjhLL3", "modulePermissions": [{"moduleId": "H22VjKoXlYjiQsZG", "selectedGroups": [{"groupId": "SwTPZQjkymnVZCMZ", "selectedActions": [1, 71, 20]}, {"groupId": "gZIzMmX88YCjvSSk", "selectedActions": [47, 61, 66]}, {"groupId": "hWKvLvVZao2EcC4c", "selectedActions": [52, 11, 74]}]}, {"moduleId": "9nvHMxnHTikkB9qL", "selectedGroups": [{"groupId": "eGQhNbvSwzYnoSzi", "selectedActions": [47, 23, 23]}, {"groupId": "uvTOOWWbEoV5U1vZ", "selectedActions": [48, 83, 32]}, {"groupId": "NIVker0yPYlgysR9", "selectedActions": [55, 2, 45]}]}, {"moduleId": "LefryzfasUSfOcqr", "selectedGroups": [{"groupId": "i5kRBxQr8skUP0iE", "selectedActions": [97, 54, 22]}, {"groupId": "DgwCIsUuVCAlaTRY", "selectedActions": [86, 59, 22]}, {"groupId": "jSZIVC8hPfwy76km", "selectedActions": [84, 4, 75]}]}], "namespace": "2CDCTE0wROBC9gEl", "oauthAccessTokenExpiration": 43, "oauthAccessTokenExpirationTimeUnit": "TDL1rOHBB1Rvwi39", "oauthRefreshTokenExpiration": 81, "oauthRefreshTokenExpirationTimeUnit": "3r1vKmucsTZmLbN8", "redirectUri": "viepmGONZQUPlpkh", "scopes": ["Fw8cQBsbv6MwUdHf", "GSGZlEWPkyVt2J2L", "8Dr2TjCK4fz2rRgG"], "skipLoginQueue": true, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'X7Hnxnms0I5YAkfS' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 78, "resource": "TcBvtxvqAgXdV8aI"}, {"action": 52, "resource": "EpCwqC7lxoaYP43n"}, {"action": 52, "resource": "KgJ0jgV4yJAAW3sH"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'HW6f3smQnTpTUr7s' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 51, "resource": "X0DJeZLVpimfxOiY"}, {"action": 4, "resource": "QQ6PorJvh9WnDqWn"}, {"action": 17, "resource": "pM5ENpgm3DnyVhuU"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '37' \
    --clientId 'hMfa91jyI81GcLCm' \
    --namespace $AB_NAMESPACE \
    --resource '9DYbQ8Hluv4WcvtT' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'eXCJSD8xJcY8ksOl' \
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
    --body '{"blacklist": ["C4ERvchsI4wwmhMB", "i2RZ2fV0a5BPQWYq", "rDxHm0eXMAJNkKNp"]}' \
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
    --body '{"active": false, "roleIds": ["8HLfhH1Les1SFS0e", "RzWQfvZP36iL2Gtk", "1xpkz8XVUkvYtgiI"]}' \
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
    --limit '79' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 141 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 142 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7FQZLNmPIjSvfOrK' \
    > test.out 2>&1
eval_tap $? 142 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 143 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Nmqz5egZMhgRVskb' \
    --body '{"ACSURL": "b5YU3kOA9my5SOoI", "AWSCognitoRegion": "IjqtWFtAdsZOLvib", "AWSCognitoUserPool": "F8zkbPO27GKv7wpb", "AllowedClients": ["mdTzAZmw0IsLQNzL", "xIZvGNHaBHhJkMZd", "qyDNcG60hARAKJdX"], "AppId": "BwnVrtrfDXskAEB5", "AuthorizationEndpoint": "9UxbVQfJYjtzb8Kh", "ClientId": "dYSJoTpWdbFe4Xn3", "EmptyStrFieldList": ["KY7Wg42OvkZDGaI1", "0lQZJilLNdGjnRGf", "mLa7YzXPvxaV3UXj"], "EnableServerLicenseValidation": false, "Environment": "ngIapHaEqnC59lSt", "FederationMetadataURL": "boF6evuyEcFgLQwo", "GenericOauthFlow": true, "IncludePUID": true, "IsActive": false, "Issuer": "T3X7FAezLuXGOw7Y", "JWKSEndpoint": "cvgvT3VnsPfvbopU", "KeyID": "5lAKyvLYTlKPuMYb", "LogoURL": "O6NT93CoZ4bp2rII", "NetflixCertificates": {"encryptedPrivateKey": "jwlVx86MaljMdfFm", "encryptedPrivateKeyName": "DlVjhJyZJJ69WVcb", "publicCertificate": "aJ88RIfoxJ5BCUdf", "publicCertificateName": "eMKA6oVMS7Ueb0Lk", "rootCertificate": "uIUkag3AWEJqvYnZ", "rootCertificateName": "RzVpVqvsv9gh7h6l"}, "OrganizationId": "ms6dPbWq9YQA65gj", "PlatformName": "MyR7FcwUH7sQ57RE", "RedirectUri": "6Y2DP8qxYOaMSJDM", "RegisteredDomains": [{"affectedClientIDs": ["3ki42AEn49N7IDvc", "QcRzL24mJWLdf3NL", "5QMUO899uMeL3iFC"], "domain": "K81U8O37sz1uAqR1", "namespaces": ["e8ftFfm0GgiQijpX", "RUNJIWp0xJ4du9Mz", "GMLZMhiNsQoh2kkO"], "roleId": "MBgN2cxbaCaUdpy3", "ssoCfg": {"googleKey": {"2X01F049LgYzubWr": {}, "tzIbRBwLml4pcHFq": {}, "yFKEtYSarBkw5koi": {}}, "groupConfigs": [{"assignNamespaces": ["12669O0iRnvtaO8x", "n7Ik0IPNXTJ91Zej", "OqI0M9KeWDuZP6iU"], "group": "9YzKCkp4UD97wY5h", "roleId": "xvIi9Qk8nYF1eFP6"}, {"assignNamespaces": ["ftu1zmENQxm95ggb", "8FFNCuuV7GKRl5Go", "xdWEisfYorfZyzaL"], "group": "pKRYUb2MNVqzdh36", "roleId": "2fVInbZ0UqvLHBNi"}, {"assignNamespaces": ["7hdRCwETJersN3Lc", "JJcqM1JU6dUNoyVp", "x3cEZlxNfhJnG1HX"], "group": "fBCP0aIx9l8maBb5", "roleId": "twPMQqwoSoumSfeH"}]}}, {"affectedClientIDs": ["Tx8Kt2WPOEsH8FA4", "y73ixVCUFinyuyOl", "I1yctubuSeGHIvR3"], "domain": "rDjtifrbuBfrrvzT", "namespaces": ["pCtdnFGwfqaZ3umj", "RgvlurfrThBF2o0A", "FmM4dHjlON7CSGhW"], "roleId": "TWyvUNC3buvjjSlS", "ssoCfg": {"googleKey": {"JcjvrdkBRcdFyevQ": {}, "8CsFlEwIYON922YW": {}, "RQAVgiPgAQgirKBz": {}}, "groupConfigs": [{"assignNamespaces": ["TDtydfTcJWUUrCde", "9GyV1QQRxEbdQczZ", "CztqTw1vw3yaZrAV"], "group": "vaUAt9PhOUgrGUXo", "roleId": "zMoV8tnP1DaLAod0"}, {"assignNamespaces": ["VscKQunWaqLcYaF9", "VkFijahZv7SFs92w", "XHu4KWCyTwX9vMVb"], "group": "1DdU85hCL8LKKICV", "roleId": "I1G4xDDSe9ZgSBXj"}, {"assignNamespaces": ["ZYU40laYUHHvUVth", "ccFQXmPhQ3Xg3gw8", "5T8dQUYqJIQVgSbC"], "group": "k8RCYUHQup21rZ98", "roleId": "k5iu2dZEhmMNQtnW"}]}}, {"affectedClientIDs": ["q4YSLLNgAiUQw4wh", "jwEumTBYwp1zwxco", "YUWGILnIIi8JE85e"], "domain": "grlcmomfwAMyarVS", "namespaces": ["dX018CAxagUWuOzw", "m9AXoiXv8NS3pc2O", "AI0c2P1z6RVPC333"], "roleId": "MpKaHpzRGtGE9wDm", "ssoCfg": {"googleKey": {"kfCTyF2mRrlsf6pl": {}, "QJh2S6BhJR39kZHd": {}, "1edLQ20BhmoLSD8s": {}}, "groupConfigs": [{"assignNamespaces": ["AUthm64JyQTVMvoR", "ghIRjFob9dUsMqFn", "CTTpxML1ye0MThVG"], "group": "8NuEMrtZSOGPRAgc", "roleId": "5LOmSEYOny43kdDx"}, {"assignNamespaces": ["1cNSMi4RzIrJcEH1", "Apo4josDk2n8pdAA", "doZR6f6uZWtCsxrK"], "group": "DrJfQlBc0dchNJDL", "roleId": "DEveOL3fd8P7nVI9"}, {"assignNamespaces": ["jyWppZvSv0RXFkYw", "cSJHBJTduCgX6dRp", "iyXlPcxYf0Nd0dA6"], "group": "XtzvXVw2iwofpGiZ", "roleId": "5FXMrMCq0rqHQSoJ"}]}}], "Secret": "Bsfq7sZPCJXW9tFE", "TeamID": "oemKEQCYdm0W5ysD", "TokenAuthenticationType": "QBBcOTt5ue9Fk82q", "TokenClaimsMapping": {"RIBgboNAL9xKgce1": "qSzOZbtIuYLQtrx8", "w51TkDEq7AAAmg4O": "uET7kvMAVMRKA1yu", "VQiHTvzg5Jb1ftyT": "bj8EvcbIy9a6V8Dv"}, "TokenEndpoint": "ba7nve3w8f6nnKEY", "UserInfoEndpoint": "RLox1JTBANt381vO", "UserInfoHTTPMethod": "ROR3HHfvHj6povxQ", "googleAdminConsoleKey": "Rbo2081D1ij9VN1J", "scopes": ["n4OtUoSbSdvCIwQn", "WHiK2smlFqYgaojc", "5N3ppwOI4cjQM4yt"]}' \
    > test.out 2>&1
eval_tap $? 143 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 144 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'F8ZSiloA8ZlfArMs' \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 145 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'XjmX0d3BTGVyrXHc' \
    --body '{"ACSURL": "ix5CEBWPEI0DWl5J", "AWSCognitoRegion": "3gUjV5WrvXvjXo97", "AWSCognitoUserPool": "hLTuwhkCXP6dkSJ0", "AllowedClients": ["AYCeI5f5hC6TXVBg", "bWnpcw8DPrXMgaOW", "7L0z7HRUreG66uqN"], "AppId": "iZU4Yb7zwH3yET5T", "AuthorizationEndpoint": "TquvS5YkNKvlYD6e", "ClientId": "pg1eFA5MS8tF80Q8", "EmptyStrFieldList": ["eXBbuRMMzCkWGunE", "VE17SPkHOCOiYKAM", "NllshdwLmOs4OoYZ"], "EnableServerLicenseValidation": false, "Environment": "oIHXYukG3ZeYUd0Q", "FederationMetadataURL": "FPKyieGQlcZQ0v85", "GenericOauthFlow": false, "IncludePUID": true, "IsActive": true, "Issuer": "Xm7LFm9jt0NCKWxF", "JWKSEndpoint": "OjrhtTcLTNRLFab3", "KeyID": "fGjDpfp13224qlHb", "LogoURL": "we3fUpQuwtAYdAww", "NetflixCertificates": {"encryptedPrivateKey": "UqWtuIVDZOm2MZGt", "encryptedPrivateKeyName": "qSABkSWjfyzmDqKw", "publicCertificate": "YdLBU8XjMNezJprE", "publicCertificateName": "zMN9qbcHZsHXSGBO", "rootCertificate": "5M4CRG0jZ6E1t1Er", "rootCertificateName": "D5bihFhEdiDOLPPB"}, "OrganizationId": "hLcb5nOtDMgdonte", "PlatformName": "KlehyFYSfHXAwI9b", "RedirectUri": "o9bvxeRuiZ1hRwj4", "RegisteredDomains": [{"affectedClientIDs": ["RiSeLbGqL8OaaPvV", "3vqLRNG7czD1zqcf", "2VJkEhpZBuPWUFtD"], "domain": "Y90ZniM0MKWzJWyJ", "namespaces": ["YFXCBtv2KiCB748i", "fDMdvlrdIDSOQX3E", "yxc7CiIjBes954cE"], "roleId": "42G2FtYIeCSAF3rI", "ssoCfg": {"googleKey": {"w0dIr9tKMmhICJI6": {}, "ylxiiZHnqmkzTh2F": {}, "RtHRpSrUY6g0q6ZT": {}}, "groupConfigs": [{"assignNamespaces": ["W6AKWQxzpG6XFXUO", "nZ5vJDDALwIYUpzZ", "CNYfrMa93GgZKOp6"], "group": "B4bs6HZunakUb81G", "roleId": "qhGzEHZ9gXAW14qC"}, {"assignNamespaces": ["eZJsG5UQUubhYUQY", "ET59asN0JDcGVDEu", "mdzfn9MDp1MuZREc"], "group": "RUq0Kodx18DukvAe", "roleId": "MoEPq6hRrOHTjQpE"}, {"assignNamespaces": ["tcWtb6pJyRtz7zL4", "V42yWY74uLJCX8hi", "fpjZz7EdZXz8FRzm"], "group": "ugm4zGyeMAPGDc5f", "roleId": "J5axD2uVbagp5b0M"}]}}, {"affectedClientIDs": ["0Sj3v0tcWKizTLF4", "Uz2eL5hQP8Ve5DlX", "0uETCmYYn7moSB7b"], "domain": "g5ENnsSHLUKrtvL9", "namespaces": ["RGh8ikEz0XYd8vrn", "LJBe1sdL8WGWUqEF", "uEwkySHiFECJieOg"], "roleId": "qIBEZBp15EvAKyOO", "ssoCfg": {"googleKey": {"Y7GpnSukWaCbGMYK": {}, "rUZJDgJJ0bkZHly8": {}, "IHjTwPCEJvdt7fq4": {}}, "groupConfigs": [{"assignNamespaces": ["98upHaJVjZau37jh", "wBneNJ1SwpZj2aST", "g3KDrv5VOUvhp9UG"], "group": "dObjGqYf3UBQ1n5g", "roleId": "VlotexNp0oKGRgRZ"}, {"assignNamespaces": ["adkDHgwTpEJ7iPkI", "ux52AWEtsA2zyptL", "2M9pfmTgnWeXt27A"], "group": "DAtP2xvFxmCrOLyV", "roleId": "oHfmq8fdSmQgEtZA"}, {"assignNamespaces": ["gT5IZvxtlpxD8VWC", "nx2UzwSyxG2wD3cI", "GD82pmrUfSiylxwL"], "group": "gIQUy6a7jKY6KRfB", "roleId": "oQSfjVnE4P7zA6rd"}]}}, {"affectedClientIDs": ["5LSXwQkpOTCEYYZQ", "EeMmSpysmDYyEEy5", "FWFxu5XLqgPrJKtK"], "domain": "kijefopfZUJ5dcph", "namespaces": ["kOIuCUC8LzXmFSg1", "pVNFrOHDSTO3GK3x", "xgy13b80wwv45LYh"], "roleId": "ndVascJQRnHXbTNr", "ssoCfg": {"googleKey": {"RbzfzsX1KdMrYFcf": {}, "4l5oH1vnpZIHAwt2": {}, "E4p1QJhPJzoQOXYl": {}}, "groupConfigs": [{"assignNamespaces": ["blOeQazwtxBqXNMj", "6zeRY5CLeCd0N8Oz", "G25umWZzJ4LhpJFR"], "group": "Io6XVJQZOMzZKEBr", "roleId": "IgY8jwMrRSZik2qJ"}, {"assignNamespaces": ["eSW3IQT1HpXRF1XB", "dGhZ2lrF8WSmUTqA", "hxJIzN4iZHHHmRDE"], "group": "t33iqcr89l26XyR9", "roleId": "HwTNG31WnAa27i6h"}, {"assignNamespaces": ["QMNXR41oWC5EWTQ3", "MuxduDOcNwsIQuSw", "0fCNwjlD0MR1wzRD"], "group": "RWOPpNWRlks6PC85", "roleId": "67bV9g7C7AgYYCXM"}]}}], "Secret": "nmJFfE3Vd239UzYq", "TeamID": "ewo3GoCNpqLwKlgT", "TokenAuthenticationType": "xntmejAVlAYU52ZN", "TokenClaimsMapping": {"rPIu4Vzw4QdFUbpk": "rMYEcrIMg4g3C0v7", "stVR3KHf2J3GXpzS": "YxPHlUFAn5NvW8W5", "E2qHCnBWAEU2u60G": "KCIowcAUsYEAx0z6"}, "TokenEndpoint": "YN4XorDUIGKFMOBC", "UserInfoEndpoint": "LPQnaIyBMF389iRT", "UserInfoHTTPMethod": "QqzaR29hMZD6nKb2", "googleAdminConsoleKey": "LZshe3h6KGAbT00b", "scopes": ["oM5v1ddFsdIWgvb8", "H4IEOmkvF3QAWSlE", "w8qC6wek6WPrXzff"]}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 146 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'b1bLvqKYClm1a5KD' \
    --body '{"affectedClientIDs": ["fTnNn8SHdmzaZQZw", "KUobGipDYCTXrUkr", "hPZTv4HaWKzjX2ZF"], "assignedNamespaces": ["b6RsjSiTih8cot0C", "uMzBK7n7Wx5O6L2P", "J9B7OIEWgH2vpCCA"], "domain": "yD1OBBgiCuQc3fhN", "roleId": "1Nn60TtpX4CKu3nL", "ssoCfg": {"googleKey": {"moCk2NfE38ZJwJ7f": {}, "oshW6t9mfzrsz1Z3": {}, "GotCky0hpWwTdIQR": {}}, "groupConfigs": [{"assignNamespaces": ["XPPzcUDoe7xuKVl8", "j1nVJIOvoPl1awPs", "KGicMOymviM3NOQC"], "group": "7LjmPDTxjZnLNrKX", "roleId": "mBavnhRPCJ87ge5u"}, {"assignNamespaces": ["PLhX5DXD0ZSOBCh8", "fmKvpbVLxiVjHNUV", "kqjGvzndfRdsnA0l"], "group": "JP1uYWtXqCFy6ytn", "roleId": "ru9cOn9fJJsTONlq"}, {"assignNamespaces": ["pVqmH5881DGgKgbc", "rGn5QWQL0Jhmg20R", "EsuaGF87ckFm1fAL"], "group": "9MLABlh3w38BwzLG", "roleId": "jLEL7XqeouIK2Ktn"}]}}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 147 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ios5a87Qrr3BxpCo' \
    --body '{"domain": "2WJ5jf893ld1Km7j", "ssoGroups": ["mgJNikWMTBGmr9vP", "Nj1T7oGNp7zwZwHb", "sF9oVpiMrmhIKl9Q"]}' \
    > test.out 2>&1
eval_tap $? 147 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 148 PartialUpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam partialUpdateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'cfQyeLrlVrK1HHsU' \
    --body '{"affectedClientIDs": ["MCW7HUwvDUdCQVBi", "9ibY2lnsACHJYqhd", "E99JF25HEs840gpM"], "assignedNamespaces": ["JnuEkljW3OZxXczE", "MJO5ILP1vRkOwIoB", "D7ISNm1caT0SPCVn"], "domain": "EAQ4y04JbmohbRhN", "roleId": "dYNDLxhT1wzFouNo", "ssoCfg": {"googleKey": {"kpYtSyhB0oXsXaC8": {}, "Um9dvAOYYI2DrHlP": {}, "D5zTjf6ALUQO9MOX": {}}, "groupConfigs": [{"assignNamespaces": ["Mlnrade2KpCSzH5u", "7bIT2OmUhRC7cqKa", "NHZ3qHcAzeEs3Oez"], "group": "YjOYTFBDfoJ7YtJI", "roleId": "4wOSJT0ezInBb0CE"}, {"assignNamespaces": ["bmETzHMyDf3RgRiG", "Fl8ly9UCRhY0eiAE", "Qktx6h9DqVtcDpCh"], "group": "D202S0dwfar4lfgN", "roleId": "r08nfu3G7VTefkr5"}, {"assignNamespaces": ["nuFAtOfSpHKhavwL", "OwfOYrBieYowUotg", "Uv680xSHALdS0EVH"], "group": "GlAbUhIP5bzqGN5y", "roleId": "0qwfIcxaYXphjCrl"}]}}' \
    > test.out 2>&1
eval_tap $? 148 'PartialUpdateThirdPartyLoginPlatformDomainV3' test.out

#- 149 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'G80FhYLeL54HdGux' \
    > test.out 2>&1
eval_tap $? 149 'RetrieveSSOLoginPlatformCredential' test.out

#- 150 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'Mn5dnnSPRL5Ue6gW' \
    --body '{"acsUrl": "bJn3tlp7LXvUQ8yA", "apiKey": "cnec2Aj1XgEUyCpS", "appId": "EPctQgLmsxIjw1fs", "federationMetadataUrl": "j71L4rN7UdgYlGMC", "isActive": false, "redirectUri": "Jpg4XJrVhBPxl8hX", "secret": "zNJAQNKe82JgbgH3", "ssoUrl": "i2wgqJo4G0amLA2n"}' \
    > test.out 2>&1
eval_tap $? 150 'AddSSOLoginPlatformCredential' test.out

#- 151 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'JEDVJ1CJclKNcXg7' \
    > test.out 2>&1
eval_tap $? 151 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 152 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'WcQFSk0hRs9LHhPV' \
    --body '{"acsUrl": "s0jaNN2tu3FwEO2Y", "apiKey": "xK0CG5J38GnOR45Y", "appId": "r6WUV6RYlYDX0fGn", "federationMetadataUrl": "Q7B7yWmKwPDGL7D9", "isActive": true, "redirectUri": "SfP5o6j2Jtl75qm5", "secret": "GwrkQWgixBxXHaJL", "ssoUrl": "qpOyK0pSjwSIHMEj"}' \
    > test.out 2>&1
eval_tap $? 152 'UpdateSSOPlatformCredential' test.out

#- 153 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'AKIUosPwgYApjKrs' \
    --rawPID 'true' \
    --rawPUID 'false' \
    --body '{"platformUserIds": ["O0z9Dd5npsItwngJ", "vvT6cWfJXNWM8DOM", "QL8h6LX4WXQp5fao"]}' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 154 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '55p3MKHkuf3Gb1My' \
    --platformUserId '8jAmABV4UdJF6H01' \
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
    --field 'country' \
    --body '{"config": {"minimumAllowedInterval": 36}, "type": "BeZu4vOU6OwL3HGx"}' \
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
    --identity 'GAME_ADMIN' \
    --body '{"additions": [{"actions": [10, 98, 68], "resource": "Kf04W31CDweI0pjD"}, {"actions": [47, 34, 1], "resource": "NUuIsq0QR9zwT8rw"}, {"actions": [30, 38, 5], "resource": "qdT11h0Ad5xAj5pZ"}], "exclusions": [{"actions": [30, 96, 34], "resource": "qtH2NnCK10NEqoPf"}, {"actions": [18, 94, 44], "resource": "EYh7rmhbib4U2kYL"}, {"actions": [35, 52, 22], "resource": "mOxmEFMjou3PABJ3"}], "overrides": [{"actions": [24, 20, 58], "resource": "MAAjvTp7KQK6lInw"}, {"actions": [47, 5, 43], "resource": "lGUcb6rOb6WIdwMZ"}, {"actions": [6, 11, 45], "resource": "MO7Ur6psuP0g422g"}], "replacements": [{"replacement": {"actions": [50, 59, 50], "resource": "gbQwI6U78BkFHspL"}, "target": "Yv9g6rdU1tgzjIdb"}, {"replacement": {"actions": [79, 37, 50], "resource": "L1Y60olH9t41HiYy"}, "target": "lhHQeO7S5A8iOm60"}, {"replacement": {"actions": [60, 12, 25], "resource": "h6PMnkFVU9rk5yJv"}, "target": "atIq8tCNRgZtxU1j"}]}' \
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
    --body '{"active": false}' \
    > test.out 2>&1
eval_tap $? 160 'AdminChangeRoleOverrideConfigStatusV3' test.out

#- 161 AdminGetRoleNamespacePermissionV3
samples/cli/sample-apps Iam adminGetRoleNamespacePermissionV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'BF20ks8vcUp01Qmy' \
    > test.out 2>&1
eval_tap $? 161 'AdminGetRoleNamespacePermissionV3' test.out

#- 162 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'fTZA85mA4FmI876o' \
    --after '87' \
    --before '73' \
    --limit '58' \
    > test.out 2>&1
eval_tap $? 162 'GetAdminUsersByRoleIdV3' test.out

#- 163 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'hvJVetnYlUezTVM3' \
    > test.out 2>&1
eval_tap $? 163 'AdminGetUserByEmailAddressV3' test.out

#- 164 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": false}, "userIds": ["gPbE5GURGcjIwAxf", "OtHlxHpzXWYfkqVs", "a6BggcTUQUE74lt0"]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminBulkUpdateUsersV3' test.out

#- 165 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'mdfYgFxuBAlUyeXD' \
    --body '{"bulkUserId": ["LiXHqfZ115kSxIvD", "sTHmKFpyMjy7bIKr", "LuAcQ3Ro8iljg7Mz"]}' \
    > test.out 2>&1
eval_tap $? 165 'AdminGetBulkUserBanV3' test.out

#- 166 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["zZdYdZyuWUhCXIM4", "y8ClTRSrKpZQj5gl", "GuMM70Qlmh2ou6m3"]}' \
    > test.out 2>&1
eval_tap $? 166 'AdminListUserIDByUserIDsV3' test.out

#- 167 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["ZHbhXDXd48HXEKIK", "9DOdWTm0D8F4MqlR", "7dEPaQsafHSwGT0Q"]}' \
    > test.out 2>&1
eval_tap $? 167 'AdminBulkGetUsersPlatform' test.out

#- 168 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["7k46F17prItvK7cX", "XToU3sQiXGJCjNDX", "qp3xMw5F4OM7Wpcn"], "isAdmin": true, "languageTag": "pgJim1bZM8hnzbYM", "namespace": "u4QMDcKXE52eZMXR", "roles": ["YPpSbf6RfP9929eI", "DjsgmZkBAwFKBwmy", "Z7ZaWBikErxU0n0R"]}' \
    > test.out 2>&1
eval_tap $? 168 'AdminInviteUserV3' test.out

#- 169 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '27' \
    --platformUserId 'cRijSBM5Vj9RKSiO' \
    --platformId 'fDkjhzNuThcNDF4N' \
    > test.out 2>&1
eval_tap $? 169 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 170 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 170 'AdminListUsersV3' test.out

#- 171 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'cUO1kSMMwQedbq7j' \
    --endDate 'phkENFbH5eDCo0wb' \
    --includeTotal 'true' \
    --limit '85' \
    --offset '6' \
    --platformBy 'If7jgzUy6y9FanhA' \
    --platformId 'PkMmTwCNXg9c8PCA' \
    --query 'O0v36cYkuM9wm29c' \
    --roleIds 'L6Q6MTZTytJlcnq0' \
    --skipLoginQueue 'false' \
    --startDate 'npeTQJPtXnum5FqF' \
    --testAccount 'false' \
    > test.out 2>&1
eval_tap $? 171 'AdminSearchUserV3' test.out

#- 172 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["ehnIccSHTZ4N7PIE", "YDF9cLVKzfsY8jxf", "WIX67dfFJzaWnYbc"]}' \
    > test.out 2>&1
eval_tap $? 172 'AdminGetBulkUserByEmailAddressV3' test.out

#- 173 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'sjuKRWZPgOiT9f35' \
    > test.out 2>&1
eval_tap $? 173 'AdminGetUserByUserIdV3' test.out

#- 174 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vWlfFFVtZT5oQtSe' \
    --body '{"avatarUrl": "QGQbke3xzsYtvpLI", "country": "aIfa5jzQyOiE94k7", "dateOfBirth": "SmWVvHJy51D9tVcJ", "displayName": "dmyRAneC2ugu0AW3", "languageTag": "1Jg5pJtpISbcQPo0", "skipLoginQueue": false, "uniqueDisplayName": "zBbYIelzu2ljt0si", "userName": "rO0ugoFXgfgqdVv1"}' \
    > test.out 2>&1
eval_tap $? 174 'AdminUpdateUserV3' test.out

#- 175 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'plBA8i6znciBwaQk' \
    --activeOnly 'false' \
    --after 'TGaaxSSeUlH70Y2O' \
    --before 'Idx3H72UvBk8vRvN' \
    --limit '97' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetUserBanV3' test.out

#- 176 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '6srm0wdNQDuSpxRp' \
    --body '{"ban": "sblBF1LMRP8bitJ2", "comment": "3hMJN2mOIN1kuvqJ", "endDate": "vl2ZJhxzVEjDwH9T", "reason": "CKUWWDpttUOzKMUO", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 176 'AdminBanUserV3' test.out

#- 177 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'y2h7EbJx1S3rXxOt' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetUserBanSummaryV3' test.out

#- 178 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'OPRw66QQ7IZloLX5' \
    --namespace $AB_NAMESPACE \
    --userId 'Pu7ZWKqmoJkMRJcl' \
    --body '{"enabled": true, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 178 'AdminUpdateUserBanV3' test.out

#- 179 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZpmENZsWfXiibdZ7' \
    --body '{"context": "r3PG5Azz7LWDBXMr", "emailAddress": "QvB1RGZsq2vQ5DBj", "languageTag": "ptrT6AMlb6et8pCH", "upgradeToken": "hb2pWq3AtFC3KGRg"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminSendVerificationCodeV3' test.out

#- 180 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YcWJGqQNBt6VvCj7' \
    --body '{"Code": "SgIGqWXCzdrQJB28", "ContactType": "wfMJzvthW5FBWEgR", "LanguageTag": "SYhWCW9FuRG22OYw", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 180 'AdminVerifyAccountV3' test.out

#- 181 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'pPWWDGY2serQwGm4' \
    > test.out 2>&1
eval_tap $? 181 'GetUserVerificationCode' test.out

#- 182 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '6ju1m3JqEJiEG2oM' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserDeletionStatusV3' test.out

#- 183 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '3d3vF5KeRocdhXSF' \
    --body '{"deletionDate": 29, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 183 'AdminUpdateUserDeletionStatusV3' test.out

#- 184 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DSaTiUirlcD10kSB' \
    > test.out 2>&1
eval_tap $? 184 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 185 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Kvmk2VlO4GBEYaTr' \
    --body '{"code": "khExmsZFhVAoVThF", "country": "XfnfjNfvhFIh3oQy", "dateOfBirth": "Ql9EYreGN1n0kQbg", "displayName": "nOiMTW5090reWwW2", "emailAddress": "7ETaikNNV6QgDD1R", "password": "XpBCIBa4UCt2y0Y2", "uniqueDisplayName": "vXN8bkGYDLWI6wyi", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 185 'AdminUpgradeHeadlessAccountV3' test.out

#- 186 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gZXWvPJi3H5HkUQO' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteUserInformationV3' test.out

#- 187 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ogVBe4LvmaEl7a2k' \
    --after '0.9136808001225541' \
    --before '0.9209397071751082' \
    --limit '97' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetUserLoginHistoriesV3' test.out

#- 188 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId '3BBEbdFLM2lA0heD' \
    --body '{"languageTag": "0rmcOPQpdn6zOCuY", "mfaToken": "E2irauGuEW1xDmhC", "newPassword": "bpTb0w49qjjmTp7r", "oldPassword": "xeCQdMqqc7ED2KEC"}' \
    > test.out 2>&1
eval_tap $? 188 'AdminResetPasswordV3' test.out

#- 189 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId '5cReyQ1UDCMk1rgp' \
    --body '{"Permissions": [{"Action": 37, "Resource": "gmRT9bKSCbCu4EjC", "SchedAction": 66, "SchedCron": "rrzJtRXyhos6KUQE", "SchedRange": ["qf2hxMjihKUPCgGu", "C53TcDHRNCDQrdkn", "zxBVRuAsqQYkI2Yz"]}, {"Action": 14, "Resource": "9uYGRSxMBN1Lq7ve", "SchedAction": 51, "SchedCron": "tvm3cUXRBxtYy12K", "SchedRange": ["pABIGCPzkk9SINKI", "g38AORhcZFLlwdVH", "Y7ETCU1hz6Rkf3Gp"]}, {"Action": 79, "Resource": "M6SmALJZpjpgOpta", "SchedAction": 54, "SchedCron": "VmGk8VG9onMT4pAr", "SchedRange": ["8TzLKVtVwLPd3Tnr", "A3GEmlRebqe1sIW5", "WR32pndY9SKR7CRZ"]}]}' \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateUserPermissionV3' test.out

#- 190 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xR4Qy65rsX2xChp4' \
    --body '{"Permissions": [{"Action": 17, "Resource": "BRolg4Nk23jhZiWU", "SchedAction": 1, "SchedCron": "rgzm5DoLewhonPI1", "SchedRange": ["cCh0hcKjwTdQWtS5", "WZoA4tbzXk6uhTAw", "3sSbGnuaicAAqbwj"]}, {"Action": 50, "Resource": "LZ7iEX1MyGX9YGF9", "SchedAction": 70, "SchedCron": "VBgUhzIyL7sVN4eY", "SchedRange": ["oTbN8xsBHI7AVxHy", "6ctn6teu64uAHmgP", "zIZ2GEGfDwc3H11w"]}, {"Action": 22, "Resource": "drPwy77k5A5j0qry", "SchedAction": 52, "SchedCron": "5pUCKePQfwA8plo2", "SchedRange": ["8p94CX8cRn4rEV2D", "uGO31pieUP8JaTV8", "G0t0mkzesZSrjljH"]}]}' \
    > test.out 2>&1
eval_tap $? 190 'AdminAddUserPermissionsV3' test.out

#- 191 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId '5W6gnPTSNwNVmgGB' \
    --body '[{"Action": 80, "Resource": "NUaQoGcQf0pjdB1D"}, {"Action": 40, "Resource": "vTRhyr0IU5xUwwKm"}, {"Action": 77, "Resource": "qYgNwXQxZ8QpXXdN"}]' \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserPermissionBulkV3' test.out

#- 192 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '99' \
    --namespace $AB_NAMESPACE \
    --resource 'bSjPC7EYtScc7wFu' \
    --userId 'n0SCGgybyGzTlNBq' \
    > test.out 2>&1
eval_tap $? 192 'AdminDeleteUserPermissionV3' test.out

#- 193 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hhyxqmRR59O5DlYM' \
    --after 'QIqk03v70xOubG6f' \
    --before '6ezH3O0N7a1LNFFi' \
    --limit '57' \
    --platformId '8utKncFbAnPkhDj9' \
    --targetNamespace 'nQZoZ3dNzOQEzeDg' \
    > test.out 2>&1
eval_tap $? 193 'AdminGetUserPlatformAccountsV3' test.out

#- 194 AdminListAllDistinctPlatformAccountsV3
samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YuUEYgfk01uiYLrA' \
    --status 'TmcoIXdKhcbceXkG' \
    > test.out 2>&1
eval_tap $? 194 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 195 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'pnjLq2QSVKj6Tly8' \
    > test.out 2>&1
eval_tap $? 195 'AdminGetListJusticePlatformAccounts' test.out

#- 196 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'Uew6iEMHJ5ZN5xZ7' \
    --userId 'o6t2VVSL0R4hEOHy' \
    > test.out 2>&1
eval_tap $? 196 'AdminGetUserMapping' test.out

#- 197 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'aMMuR8MvsOjO2dK1' \
    --userId 'kfSYn4CUV05pi4Q0' \
    > test.out 2>&1
eval_tap $? 197 'AdminCreateJusticeUser' test.out

#- 198 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'sOqfkO4XdVX0X5p3' \
    --skipConflict 'true' \
    --body '{"platformId": "CaAvVhr91mozZIjo", "platformUserId": "ql0LCcs3JpkKmHST"}' \
    > test.out 2>&1
eval_tap $? 198 'AdminLinkPlatformAccount' test.out

#- 199 AdminGetUserLinkHistoriesV3
samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hjOE4c7tnjafInpI' \
    --platformId '8TaWxsqhwm0Xdu3o' \
    > test.out 2>&1
eval_tap $? 199 'AdminGetUserLinkHistoriesV3' test.out

#- 200 AdminPlatformUnlinkV3
eval_tap 0 200 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 201 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'e0WBjmzCXsY9cpfG' \
    --userId 'p2vYmDckIXbs0EgR' \
    > test.out 2>&1
eval_tap $? 201 'AdminPlatformUnlinkAllV3' test.out

#- 202 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ArLd01OShseaF1WS' \
    --userId 'eVxUFwUCFrr9ziFH' \
    --ticket 'kJDCCM6EOyF7zOnm' \
    > test.out 2>&1
eval_tap $? 202 'AdminPlatformLinkV3' test.out

#- 203 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 203 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 204 AdminDeleteUserLinkingRestrictionByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'iVNHyjRQMXbD2jyy' \
    --userId '69D41bFKEHUmY77Y' \
    > test.out 2>&1
eval_tap $? 204 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 205 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'nJzKBU2hGQ2QSSWP' \
    --userId 'T9nvfcS5Suftto5v' \
    --platformToken 'MWAp0cjKuMtpLIcq' \
    > test.out 2>&1
eval_tap $? 205 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 206 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'QDhT5p0AipUT65bb' \
    --userId '4Q1iu3doOPuqFvSB' \
    --crossNamespace 'false' \
    > test.out 2>&1
eval_tap $? 206 'AdminGetUserSinglePlatformAccount' test.out

#- 207 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'qt9RcIm7ckHBOBwF' \
    --body '["7O3Fdeb9ki1ncnYp", "Yp9X3NUjotekh6AU", "r6EG7cdVKqMilxer"]' \
    > test.out 2>&1
eval_tap $? 207 'AdminDeleteUserRolesV3' test.out

#- 208 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'G6o9BAhy0RWM2yLT' \
    --body '[{"namespace": "wgJ1Vd3n9P5rxUOW", "roleId": "ar3uyFVH0ylWeyPF"}, {"namespace": "6UJpVhuUIl6XAiPH", "roleId": "VEXzaQlllXxItBI9"}, {"namespace": "dDNyUwMt8IjkuoFR", "roleId": "1MQZ5Ju61871kBLn"}]' \
    > test.out 2>&1
eval_tap $? 208 'AdminSaveUserRoleV3' test.out

#- 209 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'WulwgPHhXxDNrTRK' \
    --userId '0XIXWGmcbfIXKEw4' \
    > test.out 2>&1
eval_tap $? 209 'AdminAddUserRoleV3' test.out

#- 210 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'C6fF728GPustOwhM' \
    --userId 'k7bfa5GlRxYtxfS6' \
    > test.out 2>&1
eval_tap $? 210 'AdminDeleteUserRoleV3' test.out

#- 211 AdminGetUserStateByUserIdV3
samples/cli/sample-apps Iam adminGetUserStateByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'R7IkqIBSfqgDxVcf' \
    > test.out 2>&1
eval_tap $? 211 'AdminGetUserStateByUserIdV3' test.out

#- 212 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lDr0nEBv0anT0uCD' \
    --body '{"enabled": true, "reason": "YlVTY1XhJy2STUFq"}' \
    > test.out 2>&1
eval_tap $? 212 'AdminUpdateUserStatusV3' test.out

#- 213 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'B7r2rcXQqYOANWXR' \
    --body '{"emailAddress": "FKY4fD3KanIzivGW", "password": "bUMyCeqbkAGkHiuV"}' \
    > test.out 2>&1
eval_tap $? 213 'AdminTrustlyUpdateUserIdentity' test.out

#- 214 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ynXlT1CurbT6VWZG' \
    > test.out 2>&1
eval_tap $? 214 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 215 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'D840dF4wtBjrIpLL' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "yjD3YrtdXUkNt2yL"}' \
    > test.out 2>&1
eval_tap $? 215 'AdminUpdateClientSecretV3' test.out

#- 216 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'aSeonixRWAoc03fa' \
    > test.out 2>&1
eval_tap $? 216 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 217 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'IdrJCta4D1hdEKZ0' \
    --before '1Y2P3R4wJsQ1CLzZ' \
    --isWildcard 'false' \
    --limit '52' \
    > test.out 2>&1
eval_tap $? 217 'AdminGetRolesV3' test.out

#- 218 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "Yi6osANb01LdGPnA", "namespace": "ehJtMk7gmFGmwata", "userId": "DIiBS6BOC4A93IbR"}, {"displayName": "7AuxDdtmdhdtZ5tp", "namespace": "2Dkf2uocotvK6z9s", "userId": "ChGc490PzBs3OCmQ"}, {"displayName": "u6vYzmr6smZi2koJ", "namespace": "R3Btove9Y4oCwTKd", "userId": "DbXCMuOnJ8LUsOds"}], "members": [{"displayName": "rTpOvLNVx7yP1A4g", "namespace": "9iWqMt8KOeu48EKc", "userId": "XHIHPwxT6J0MnHwc"}, {"displayName": "73dM0kB7dofjtfec", "namespace": "4NIQ7kyyvoV7wllr", "userId": "RdRChkYFA7WuWWNd"}, {"displayName": "Jv4Fw7GqLsRfd0cl", "namespace": "T5CbTF5xH9iFvc3y", "userId": "vD1BpF8bYsFKnPYG"}], "permissions": [{"action": 96, "resource": "17BdG5ZM42SKPuYR", "schedAction": 76, "schedCron": "qwV1mtz9dFRRtRd5", "schedRange": ["SoLRNDMPEJ0koEET", "SDrKWjuQ0Ggjs3dA", "hBRNJNAdFwF8mcPf"]}, {"action": 7, "resource": "yi6QOpzDV4OWHZJR", "schedAction": 77, "schedCron": "mRGmavnC97Ylr5oG", "schedRange": ["TZHs2soPS4TvMwTj", "SXth3yMSfFms9uFX", "A3g0hkONdobvu1Qz"]}, {"action": 30, "resource": "HvnRkczd1bl52gOO", "schedAction": 41, "schedCron": "jpM2OCCdQO0fQ7sD", "schedRange": ["MWYSmLHD9qLU738X", "6LlOLSpRadQpl4lW", "8e4r9qCT56jZ2KeB"]}], "roleName": "uiRMN86z0lp4J7Fq"}' \
    > test.out 2>&1
eval_tap $? 218 'AdminCreateRoleV3' test.out

#- 219 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'YfRglMRwx3ycrbgO' \
    > test.out 2>&1
eval_tap $? 219 'AdminGetRoleV3' test.out

#- 220 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId '2tWgw2TC2zFxEIOM' \
    > test.out 2>&1
eval_tap $? 220 'AdminDeleteRoleV3' test.out

#- 221 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'PKpC3gFtAR1j6SDr' \
    --body '{"deletable": false, "isWildcard": false, "roleName": "AG0o0v1LOH6cOcjU"}' \
    > test.out 2>&1
eval_tap $? 221 'AdminUpdateRoleV3' test.out

#- 222 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId '96ZMgUvyqfBDoK8J' \
    > test.out 2>&1
eval_tap $? 222 'AdminGetRoleAdminStatusV3' test.out

#- 223 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'oRggBLQ1yhPST9B3' \
    > test.out 2>&1
eval_tap $? 223 'AdminUpdateAdminRoleStatusV3' test.out

#- 224 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'w6x7DXO9YNCl5zeB' \
    > test.out 2>&1
eval_tap $? 224 'AdminRemoveRoleAdminV3' test.out

#- 225 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId '4l3U8yw3r53AskyG' \
    --after 'K9xGHFiqBdM9xeKV' \
    --before 'JrfSEFSeVISu1FG1' \
    --limit '58' \
    > test.out 2>&1
eval_tap $? 225 'AdminGetRoleManagersV3' test.out

#- 226 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'RnmMdQMrXlsEfliS' \
    --body '{"managers": [{"displayName": "BukGhov7cmWaEJwb", "namespace": "sZJqnkjb4cdOJxYg", "userId": "thsohTnYLmm3XgOJ"}, {"displayName": "zVG1b1GBcMQ1H0Ay", "namespace": "Gyjpk7rvhJq01DT2", "userId": "e1xH3DgoKfqixirf"}, {"displayName": "LqqpXIv8uzvqlTWX", "namespace": "aInQpd7NK0n9DH1l", "userId": "a54OpNfu8V32fgxH"}]}' \
    > test.out 2>&1
eval_tap $? 226 'AdminAddRoleManagersV3' test.out

#- 227 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'zTCVg9eSkCoU848q' \
    --body '{"managers": [{"displayName": "C8j4WvxpWdWxJ9LP", "namespace": "tYfTEsVue3ipam5r", "userId": "RKQFcYEz137g1oww"}, {"displayName": "yDO33hDNHf3igd7R", "namespace": "wH68B3QbOYWd3MYR", "userId": "qIdBKRw3LttcWlno"}, {"displayName": "qRGm7JrPR3g8Tg1x", "namespace": "o7KbwFXkqeWW9cvO", "userId": "DUivvrH0WjArXVvO"}]}' \
    > test.out 2>&1
eval_tap $? 227 'AdminRemoveRoleManagersV3' test.out

#- 228 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'bxNtI9Wd7p1kIm15' \
    --after 'gZe8TonAHwxXI8EP' \
    --before 'czMrjB6kwMkhmBYw' \
    --limit '41' \
    > test.out 2>&1
eval_tap $? 228 'AdminGetRoleMembersV3' test.out

#- 229 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'sXslwxdIgZHBYgQo' \
    --body '{"members": [{"displayName": "pwstDbPk43wKWwwX", "namespace": "sslcJb6Nm7ysO4qw", "userId": "NrD0sQKhEbJEdzKR"}, {"displayName": "kFSVhEb1kiNVIs3I", "namespace": "4E6McNfnRZg7lMPg", "userId": "TkZK7qmtrhN0Q8U9"}, {"displayName": "YKq58RLxBVnEiYVy", "namespace": "PIdlH8r5Y3G4sNiR", "userId": "TB0YKCW464PJOuay"}]}' \
    > test.out 2>&1
eval_tap $? 229 'AdminAddRoleMembersV3' test.out

#- 230 AdminRemoveRoleMembersV3
eval_tap 0 230 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 231 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'sGvvZkE8hjhzcjYz' \
    --body '{"permissions": [{"action": 99, "resource": "BHhq8D3wEs1LPGGu", "schedAction": 64, "schedCron": "rtzuEtiNuYm21TXX", "schedRange": ["QdIOpZHcmVM0gVxQ", "HejKliTrFrUan7mR", "xZC1cI5NKajLiNzm"]}, {"action": 0, "resource": "Hvd6qIVe08lwlT9t", "schedAction": 95, "schedCron": "L0GfdkEG60D2DlG6", "schedRange": ["0ThSXqV452IRP5n6", "4Ir8X2VpboC2Uzg3", "SqN6KvKIvjBeLfQV"]}, {"action": 67, "resource": "WVpazgpyJ1KzsTj6", "schedAction": 47, "schedCron": "nCGra8A49oxvlIhs", "schedRange": ["XRUlVgUZt9jgxlL5", "7AcLe2js5ckGfgE3", "blzimjx1QuVmmU1T"]}]}' \
    > test.out 2>&1
eval_tap $? 231 'AdminUpdateRolePermissionsV3' test.out

#- 232 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'yk09zxLCg3Ix9HjK' \
    --body '{"permissions": [{"action": 61, "resource": "73R6nqDi32ybav6k", "schedAction": 19, "schedCron": "IqCJ6LhXmqzrdYAS", "schedRange": ["IWeL3H253Dr0IRnI", "AxOLTFN7NK1GOxen", "bCwdXOS3d3Z4Yyfl"]}, {"action": 10, "resource": "umjqtQqdmHs20POU", "schedAction": 36, "schedCron": "ygZCyyrGH4nSB2Rr", "schedRange": ["KNgCIP288AP9KN73", "pfR4xTVd2GdLOCJw", "RmAx04dVzPRDeuKo"]}, {"action": 95, "resource": "wFDwNExIPQX4MGTO", "schedAction": 92, "schedCron": "QFSZSCsQtCYrcQ7G", "schedRange": ["J8tEm3ioU7a7adbJ", "CXTG6Tw9Uj9vFOLY", "IhZ4uL1H273kU7rh"]}]}' \
    > test.out 2>&1
eval_tap $? 232 'AdminAddRolePermissionsV3' test.out

#- 233 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId '7ESVi6JafxTFtMY5' \
    --body '["DgKmEhpbFcHQHOmJ", "mrWt0urxapdR30bX", "1o8Ig7L28G7GRDXW"]' \
    > test.out 2>&1
eval_tap $? 233 'AdminDeleteRolePermissionsV3' test.out

#- 234 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '27' \
    --resource 'IPN91nnfMt1XkbBj' \
    --roleId 'JrgWLtJeI4yeoIVN' \
    > test.out 2>&1
eval_tap $? 234 'AdminDeleteRolePermissionV3' test.out

#- 235 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 235 'AdminGetMyUserV3' test.out

#- 236 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'kmfPtG3Xcaa3oHb9' \
    --extendExp 'false' \
    --redirectUri 'JRUclhRNtg2WXLBa' \
    --password 'MRJZzgxDpyeUDBPi' \
    --requestId 'JxsOpeerZkhBi6cH' \
    --userName 'cBzEQZ7VLtj7WatF' \
    > test.out 2>&1
eval_tap $? 236 'UserAuthenticationV3' test.out

#- 237 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId '5UK2drpMIuTJmTHr' \
    --linkingToken 'zfXF1qy5dbe4tXjU' \
    --password 'sACQyBK6gvTSDpSJ' \
    --username 'SptST0tz5l90B2gD' \
    > test.out 2>&1
eval_tap $? 237 'AuthenticationWithPlatformLinkV3' test.out

#- 238 AuthenticateAndLinkForwardV3
samples/cli/sample-apps Iam authenticateAndLinkForwardV3 \
    --extendExp 'false' \
    --clientId 'LMbhEA5ImpU4MLUp' \
    --linkingToken 'uYSTRkGgvmu4i7BJ' \
    --password 'st10L3enUd9JaiyH' \
    --username 'CZK1fOICfpis5AWd' \
    > test.out 2>&1
eval_tap $? 238 'AuthenticateAndLinkForwardV3' test.out

#- 239 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'NYn9DMfkWwLb4NMZ' \
    --extendExp 'true' \
    --linkingToken 'zEiZXf1OjEEOA7LW' \
    > test.out 2>&1
eval_tap $? 239 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 240 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --redirectUri '4fBimg3dMj4ZxMYY' \
    --state 'fowNHdVJUAPfbd7T' \
    --platformId 'xwx9mAqupzATGsXS' \
    > test.out 2>&1
eval_tap $? 240 'RequestOneTimeLinkingCodeV3' test.out

#- 241 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'ZXTqN9B32UbMJfow' \
    > test.out 2>&1
eval_tap $? 241 'ValidateOneTimeLinkingCodeV3' test.out

#- 242 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'hEowTOkijGDsX24T' \
    --isTransient 'false' \
    --clientId 'ogdIULdM7sKnW2W0' \
    --oneTimeLinkCode 'qhuCFdRvFK8GE7XF' \
    > test.out 2>&1
eval_tap $? 242 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 243 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 243 'GetCountryLocationV3' test.out

#- 244 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 244 'Logout' test.out

#- 245 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --codeChallenge 'fWtc452OrHSM1zDd' \
    --codeChallengeMethod 'plain' \
    --clientId 'JsloLRgpVIBzjih6' \
    > test.out 2>&1
eval_tap $? 245 'RequestTokenExchangeCodeV3' test.out

#- 246 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'kwVPeGKCXwXGCJWp' \
    --userId 'ebKa1hEPLvJhHpLr' \
    --platformUserId '1XXM0yOuAcEU4AzS' \
    > test.out 2>&1
eval_tap $? 246 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 247 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'GVu9eFx2PTi114dW' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 247 'RevokeUserV3' test.out

#- 248 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --blockedPlatformId 'QjjzR4GunuahsjD4' \
    --codeChallenge 'XXu9b79jD65MxcSN' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'false' \
    --loginWebBased 'true' \
    --nonce '6sj5Dw7GmchC6U7y' \
    --oneTimeLinkCode 'DbTLZKJ78RHPvAV4' \
    --redirectUri 'lwUYOECCqflpahIk' \
    --scope 'jWxWG2ZHWlNdvjxf' \
    --state 'DDtTywW2npfKc8Nv' \
    --targetAuthPage 'fc4NXoAs93rC5lLo' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'Eos8udqw7pvzRuAx' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 248 'AuthorizeV3' test.out

#- 249 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'wb7HdwDXxGSJz61F' \
    > test.out 2>&1
eval_tap $? 249 'TokenIntrospectionV3' test.out

#- 250 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 250 'GetJWKSV3' test.out

#- 251 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'LA9MbU4UjnLFAS7b' \
    --factor '0FB3tkIWgBvhxDNb' \
    --mfaToken 'sz00SzlrOuNTCVMz' \
    > test.out 2>&1
eval_tap $? 251 'SendMFAAuthenticationCode' test.out

#- 252 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'Iz38qITnYXsEISz8' \
    --mfaToken 'ccUeNdLRLGCG4rKF' \
    > test.out 2>&1
eval_tap $? 252 'Change2faMethod' test.out

#- 253 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'nnZJLa0GU6b42Mrf' \
    --factor 'xUM1Ev604nxIcc1G' \
    --mfaToken 'o3LbhzBfMY4EHEoI' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 253 'Verify2faCode' test.out

#- 254 Verify2faCodeForward
samples/cli/sample-apps Iam verify2faCodeForward \
    --defaultFactor 'WeiuSn0ckRdotI1a' \
    --factors 'pNZcyJo7yHyExlOl' \
    --rememberDevice 'false' \
    --clientId 'azaFWfkAgeN8fMEE' \
    --code 'jBp1NyvjdU2I5rEO' \
    --factor 'XOJ4Ww4Yg8NKGOOH' \
    --mfaToken 'Tpmt7UUsEjg5GY0m' \
    > test.out 2>&1
eval_tap $? 254 'Verify2faCodeForward' test.out

#- 255 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'kAmVMSocF9tl6GVE' \
    --userId 'X0pOw5DoWJsy6s6j' \
    > test.out 2>&1
eval_tap $? 255 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 256 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'PlFfPgkrljCPl6qv' \
    --clientId 'xWO2KgUORobeqOOe' \
    --redirectUri 'bpRlcqwQHT5NHcWz' \
    --requestId 'ZgVv3yjzQ2TOyJiI' \
    > test.out 2>&1
eval_tap $? 256 'AuthCodeRequestV3' test.out

#- 257 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'pT2qot9gTy2QB1xk' \
    --additionalData '1OK5oN9y9OR86gps' \
    --clientId '5DWRsiSU9sNMlbD2' \
    --createHeadless 'false' \
    --deviceId 'j08RsHWCS2EoQhZZ' \
    --macAddress 'TYMh5Lhh0qz2BLVq' \
    --platformToken 'tHG9X08Te7HyleaN' \
    --serviceLabel '0.10460686231817384' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 257 'PlatformTokenGrantV3' test.out

#- 258 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 258 'GetRevocationListV3' test.out

#- 259 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'TUe9pogyRD4RsybL' \
    > test.out 2>&1
eval_tap $? 259 'TokenRevocationV3' test.out

#- 260 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'YBOvbUZkPLUwXZ0y' \
    --simultaneousTicket 'Hrdu0bth2vpK74Un' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'aeJqDe7hepfySNcT' \
    > test.out 2>&1
eval_tap $? 260 'SimultaneousLoginV3' test.out

#- 261 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'NUvwa7ReLcxhlkLi' \
    --clientId '1DGdzEt27j3LzsQB' \
    --clientSecret 'o4xR5PVTUpG9ZawD' \
    --code '7U96Tk22ANXDtkOt' \
    --codeVerifier 'Vyel630RrI0ZfkJJ' \
    --extendNamespace 'Sk5jowA4WEEIK2U9' \
    --extendExp 'false' \
    --password 'SLOTsUhEjXu0pCdm' \
    --redirectUri 'mIr3SEBAaeKcCfsz' \
    --refreshToken '1aG6w2xM96bse9xs' \
    --username 'porzoHxYdg4lr8Es' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 261 'TokenGrantV3' test.out

#- 262 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'W0AKrLMouU76jD2T' \
    > test.out 2>&1
eval_tap $? 262 'VerifyTokenV3' test.out

#- 263 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'QJpv7kQaLGkyKPy2' \
    --code '1s1hzZ50eOB9QmI1' \
    --error 'FyI0d6T0VpnoHKtB' \
    --openidAssocHandle 'ZczwhvxVuU14Y1yH' \
    --openidClaimedId 'qQTx1SL0xzEhIcDd' \
    --openidIdentity 'yHx3I2eI5BbcFHoY' \
    --openidMode 'xG322sf4RwSjvmUJ' \
    --openidNs 'E0Aft4fKiw2f2Eq5' \
    --openidOpEndpoint 'TAIYngriYyfh9DYh' \
    --openidResponseNonce 'p5duD6kE4XgsDvHe' \
    --openidReturnTo 'HagYWlcq5SRArJ9K' \
    --openidSig 'NvFB8x8fC2aZeDYG' \
    --openidSigned 'LcSUEJhZcH9SOlGp' \
    --state 'iI5C23WNzVu0LsEB' \
    > test.out 2>&1
eval_tap $? 263 'PlatformAuthenticationV3' test.out

#- 264 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'bc4xWpjvpoqwEy0Y' \
    --platformToken 'W7MJU1Hd5nkCZLFP' \
    > test.out 2>&1
eval_tap $? 264 'PlatformTokenRefreshV3' test.out

#- 265 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'QVUTkXoYi79DoXSE' \
    > test.out 2>&1
eval_tap $? 265 'PublicGetInputValidations' test.out

#- 266 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'g1wrvVCfDxOJo3mU' \
    > test.out 2>&1
eval_tap $? 266 'PublicGetInputValidationByField' test.out

#- 267 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'wBPfhXkILceZBmcn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 267 'PublicGetCountryAgeRestrictionV3' test.out

#- 268 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'a5R2AGphDCYlFnwt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 268 'PublicGetConfigValueV3' test.out

#- 269 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 269 'PublicGetCountryListV3' test.out

#- 270 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 270 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 271 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'Y2xlkYRnZVgJiyGb' \
    > test.out 2>&1
eval_tap $? 271 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 272 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 272 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 273 PublicGetUserByPlatformUserIDV3
eval_tap 0 273 'PublicGetUserByPlatformUserIDV3 # SKIP deprecated' test.out

#- 274 PublicGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam publicGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'country' \
    > test.out 2>&1
eval_tap $? 274 'PublicGetProfileUpdateStrategyV3' test.out

#- 275 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'VBiE3tJWId6o3h4A' \
    > test.out 2>&1
eval_tap $? 275 'PublicGetAsyncStatus' test.out

#- 276 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '6BcRRdQAnsImZ9Il' \
    --limit '20' \
    --offset '35' \
    --platformBy 'fiioTGRNJqcfMThh' \
    --platformId 'QSwZF2L7T67Knrcg' \
    --query 'cjn37mdFfAwf12D1' \
    > test.out 2>&1
eval_tap $? 276 'PublicSearchUserV3' test.out

#- 277 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "nUXdpgMOENo2ItMb", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "xJb907OPYyJKNIY5", "policyId": "Z6m3N1aXrtegZIrt", "policyVersionId": "3CV828Odd2BuNbiw"}, {"isAccepted": false, "localizedPolicyVersionId": "RwyIIsL82WytQJvY", "policyId": "62UsmpiL583sWfEA", "policyVersionId": "871QVjmyXOLb8xQb"}, {"isAccepted": false, "localizedPolicyVersionId": "jQPLcaVkTDwbUemJ", "policyId": "hfI6CxyCtnwkR7Sq", "policyVersionId": "1WphvzbMhjgOwqiT"}], "authType": "DwQkj11eJml1O1q6", "code": "1QZrP86FsM0vNj70", "country": "kpYYChymQ0Htyj2d", "dateOfBirth": "0KaAKP0Y686snW9I", "displayName": "jma7GrxtSeUMjuaw", "emailAddress": "FpVTMlMr9W4eUVUp", "password": "DO9joNEtfGQN7r6A", "reachMinimumAge": true, "uniqueDisplayName": "YZnmxO8ZB5kg0OZw"}' \
    > test.out 2>&1
eval_tap $? 277 'PublicCreateUserV3' test.out

#- 278 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'daS8IFfy5BEwmZtE' \
    --query 'GWQJqOEFXdrgl2x2' \
    > test.out 2>&1
eval_tap $? 278 'CheckUserAvailability' test.out

#- 279 PublicBulkGetUsers
eval_tap 0 279 'PublicBulkGetUsers # SKIP deprecated' test.out

#- 280 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "VLG5U2mehbegIHN1", "languageTag": "QGPZwnswLJIzUTRk"}' \
    > test.out 2>&1
eval_tap $? 280 'PublicSendRegistrationCode' test.out

#- 281 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "WrYPVxXtuZGYiEQN", "emailAddress": "Df7i81ixpoVwFl28"}' \
    > test.out 2>&1
eval_tap $? 281 'PublicVerifyRegistrationCode' test.out

#- 282 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "70l4bxv5v0p8QFSe", "languageTag": "0JSZ2yOZ9k2Tlfko"}' \
    > test.out 2>&1
eval_tap $? 282 'PublicForgotPasswordV3' test.out

#- 283 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "KIH73iTbV2VwwlXW", "password": "dJZgavkYkVNW3S36", "uniqueDisplayName": "tW3o284mTCsBEw6T", "username": "DKZrFJrmLkeOGs2N"}' \
    > test.out 2>&1
eval_tap $? 283 'PublicValidateUserInput' test.out

#- 284 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'MBWaNNPh1gEHMuFc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 284 'GetAdminInvitationV3' test.out

#- 285 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'ib6d7ksk0xYoDcWB' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "jsJSqdlkeViZQMnd", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Yynqfb7MvhXj4m9e", "policyId": "4BPeto8GnhcwHVAr", "policyVersionId": "dB1OuYRSY1gzElTh"}, {"isAccepted": true, "localizedPolicyVersionId": "2uosrlaNzcI2z5Rb", "policyId": "UCDRE7c0nNXvEDou", "policyVersionId": "Wff8BH0TP97eG38Q"}, {"isAccepted": true, "localizedPolicyVersionId": "CcZVX8DcKpl4uW0O", "policyId": "aGCqrSPndgLTDloD", "policyVersionId": "Pjn95PDRQd3Bvcdq"}], "authType": "KhnnOSTfTzT2qLpM", "code": "CHci379Qmgduj104", "country": "Lu9QNfxnaksOuYjL", "dateOfBirth": "gyDVkLlwSudBRBiv", "displayName": "5jhPJK0WbJVZBGkM", "emailAddress": "fA4f2t9jLp3ipPz6", "password": "LOPCWfawONFNjeRc", "reachMinimumAge": true, "uniqueDisplayName": "kxJSr47hNVHgyJ5u"}' \
    > test.out 2>&1
eval_tap $? 285 'CreateUserFromInvitationV3' test.out

#- 286 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "WjbZz2a1cLSLu3aI", "country": "7BfPal78U6C3wDTi", "dateOfBirth": "VbqguIHPgFjuauQg", "displayName": "Go5RzRNzqO75pC8v", "languageTag": "Gt9TPG5nrVlhHQgx", "uniqueDisplayName": "4iVcXoXLj0qH2aCe", "userName": "I0dpGSBOaL1MLNLX"}' \
    > test.out 2>&1
eval_tap $? 286 'UpdateUserV3' test.out

#- 287 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "3fnJN7y1048Qajw1", "country": "xkf91wg6LO0Bk4ll", "dateOfBirth": "PoFbu9imkB9j2ZIM", "displayName": "b7sjEq375yxcIbbm", "languageTag": "GWpWgl2oHqXhK7Vf", "uniqueDisplayName": "Jgc727rWRwJquafS", "userName": "a6Tsh9Abua4Fi1HK"}' \
    > test.out 2>&1
eval_tap $? 287 'PublicPartialUpdateUserV3' test.out

#- 288 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "AYzVIfTV0m2qvWHD", "emailAddress": "n9JZc1uNaMiSXjFD", "languageTag": "KCn79tyDDoOMRzmR", "upgradeToken": "ivTXKWqjODFCVe3t"}' \
    > test.out 2>&1
eval_tap $? 288 'PublicSendVerificationCodeV3' test.out

#- 289 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "M6bFxOug9WGod74d", "contactType": "n7qQhxTwlOlk1awG", "languageTag": "ES1GHbFosKz6tSUj", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 289 'PublicUserVerificationV3' test.out

#- 290 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "TQRMXDYBkU4ekD0X", "country": "ZL3P7fvxGQs8B2PB", "dateOfBirth": "k59Y89kUuCkMdLGS", "displayName": "RiDwx8uYeNoaKfOp", "emailAddress": "eNI2pp1pbMZXqDOg", "password": "lJ8WrVhfsOvvMcN3", "uniqueDisplayName": "QIHS9OZ3u9j8R3N2", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 290 'PublicUpgradeHeadlessAccountV3' test.out

#- 291 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "Ft0CumS1rQuuSGfq", "password": "7XFdPxhVI61IGnRx"}' \
    > test.out 2>&1
eval_tap $? 291 'PublicVerifyHeadlessAccountV3' test.out

#- 292 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "MaILkxYJFKNgfirA", "mfaToken": "TQqNRUMDWw9Fyi8D", "newPassword": "5OigGVO3Zc5S2Rzt", "oldPassword": "JeuYSh3wTrzAjP07"}' \
    > test.out 2>&1
eval_tap $? 292 'PublicUpdatePasswordV3' test.out

#- 293 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'uX2DWlnkM7oENrWZ' \
    > test.out 2>&1
eval_tap $? 293 'PublicCreateJusticeUser' test.out

#- 294 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'DB5M9mnAPAIVpgci' \
    --redirectUri '3aoQlYhnneh0vD9P' \
    --ticket 'UJNLLdnO8GI3DbHt' \
    > test.out 2>&1
eval_tap $? 294 'PublicPlatformLinkV3' test.out

#- 295 PublicPlatformUnlinkV3
eval_tap 0 295 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 296 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'RvCTHkGuXuwkAjlG' \
    > test.out 2>&1
eval_tap $? 296 'PublicPlatformUnlinkAllV3' test.out

#- 297 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'bLj3YOyC8FQu3Nck' \
    --ticket 'DOwCbynFO0VyhAM0' \
    > test.out 2>&1
eval_tap $? 297 'PublicForcePlatformLinkV3' test.out

#- 298 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'zPIOm1hy65NSMLnQ' \
    --clientId '4djbMf3FnXB6EOWk' \
    --redirectUri '1PvjU0z75RP1Qdj8' \
    > test.out 2>&1
eval_tap $? 298 'PublicWebLinkPlatform' test.out

#- 299 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'ep4UMY3cpjDwOWfe' \
    --code 'Wqv3B8EtEU6OBBls' \
    --state 'maXwQ43UQT85dn3U' \
    > test.out 2>&1
eval_tap $? 299 'PublicWebLinkPlatformEstablish' test.out

#- 300 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'lPD2nL6UzJkYywLc' \
    --code 'pugQIV4CZ69IsqrU' \
    --state 'Bqu3yXpHdTZ5SsWM' \
    > test.out 2>&1
eval_tap $? 300 'PublicProcessWebLinkPlatformV3' test.out

#- 301 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "IPng5HFN4XXBDBEU", "userIds": ["cuPzaTVxeHDE3C9s", "benyT09QmxlVwvMn", "fiqUgD4btF2nsarx"]}' \
    > test.out 2>&1
eval_tap $? 301 'PublicGetUsersPlatformInfosV3' test.out

#- 302 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "GKjGaCtcjRLxGUAp", "code": "PSEDLanlE6X4hGH9", "emailAddress": "n5d6wNXIUnixP9Qu", "languageTag": "B7UyNLuzchTb9D3d", "newPassword": "BCqCsH3RRbIjgLvx"}' \
    > test.out 2>&1
eval_tap $? 302 'ResetPasswordV3' test.out

#- 303 PublicGetUserByUserIdV3
eval_tap 0 303 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 304 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dUUWJGNoxGFpk7G4' \
    --activeOnly 'true' \
    --after 'URfpTsaq2vhpUL3z' \
    --before 'zL9h9T4mUTgrjxrZ' \
    --limit '24' \
    > test.out 2>&1
eval_tap $? 304 'PublicGetUserBanHistoryV3' test.out

#- 305 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId '5sdq41lqKg9AnS6Q' \
    > test.out 2>&1
eval_tap $? 305 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 306 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VtXvmRci5aFLUBB3' \
    > test.out 2>&1
eval_tap $? 306 'PublicGetUserInformationV3' test.out

#- 307 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gsPSzpAgrITShmqZ' \
    --after '0.8039405292287609' \
    --before '0.9860170296649305' \
    --limit '20' \
    > test.out 2>&1
eval_tap $? 307 'PublicGetUserLoginHistoriesV3' test.out

#- 308 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'z5M4VYX8Xs2OZWYt' \
    --after 'IqcmxyYOfnACIBtm' \
    --before 'BzzYUI8MzQIj5gnJ' \
    --limit '38' \
    --platformId 'BXcDkwuVqubkCNTp' \
    > test.out 2>&1
eval_tap $? 308 'PublicGetUserPlatformAccountsV3' test.out

#- 309 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'sNwzrUqU3I5KimHc' \
    > test.out 2>&1
eval_tap $? 309 'PublicListJusticePlatformAccountsV3' test.out

#- 310 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '7Pjl3h7nHYWKhkEZ' \
    --body '{"platformId": "DvE3T238B3PNuKuh", "platformUserId": "ZdRIyn4gBLWrgTDx"}' \
    > test.out 2>&1
eval_tap $? 310 'PublicLinkPlatformAccount' test.out

#- 311 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'D1AmkO0hgOhxJ9KL' \
    --body '{"chosenNamespaces": ["UdrxyV3yddmAW9ph", "DnsJIsUe0XtHhpAB", "9u449sZX43hMnfwu"], "requestId": "0cz2VAZ3WWJX4V2u"}' \
    > test.out 2>&1
eval_tap $? 311 'PublicForceLinkPlatformWithProgression' test.out

#- 312 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jEQD7qEocqLKRZq2' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetPublisherUserV3' test.out

#- 313 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wqxWu0uSyrhYay6N' \
    --password 'LGqKc5GxyNMtkoNd' \
    > test.out 2>&1
eval_tap $? 313 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 314 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'YCNZ9paXaf0dszfq' \
    --before 'He9NB80ezzTodCA1' \
    --isWildcard 'false' \
    --limit '93' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetRolesV3' test.out

#- 315 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'X3dXXxPD6u7RmFWy' \
    > test.out 2>&1
eval_tap $? 315 'PublicGetRoleV3' test.out

#- 316 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'false' \
    > test.out 2>&1
eval_tap $? 316 'PublicGetMyUserV3' test.out

#- 317 PublicSendCodeForwardV3
samples/cli/sample-apps Iam publicSendCodeForwardV3 \
    --body '{"context": "ZDdmiRDDb4WayA27", "emailAddress": "SYOMM3SkS2McBmDU", "languageTag": "XCiem9TJgbeZ62Yg", "upgradeToken": "Z1LRpx2ZQYVCLn6r"}' \
    > test.out 2>&1
eval_tap $? 317 'PublicSendCodeForwardV3' test.out

#- 318 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'JguEYFhkqeJjPyrZ' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 319 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["pv8zjVUwrnriCuT5", "QObK7BSkjdCZua9A", "S2V5oLrELJ4Gcjzr"], "oneTimeLinkCode": "lVGd4Ww4ccz19SB1"}' \
    > test.out 2>&1
eval_tap $? 319 'LinkHeadlessAccountToMyAccountV3' test.out

#- 320 PublicGetMyRedirectionAfterLinkV3
samples/cli/sample-apps Iam publicGetMyRedirectionAfterLinkV3 \
    --oneTimeLinkCode 'hn2zGJYZIChC6xrS' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetMyRedirectionAfterLinkV3' test.out

#- 321 PublicGetMyProfileAllowUpdateStatusV3
samples/cli/sample-apps Iam publicGetMyProfileAllowUpdateStatusV3 \
    > test.out 2>&1
eval_tap $? 321 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 322 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "DjoZV8BMVEgcPYBj"}' \
    > test.out 2>&1
eval_tap $? 322 'PublicSendVerificationLinkV3' test.out

#- 323 PublicGetOpenidUserInfoV3
samples/cli/sample-apps Iam publicGetOpenidUserInfoV3 \
    > test.out 2>&1
eval_tap $? 323 'PublicGetOpenidUserInfoV3' test.out

#- 324 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'pxfBFNua7kxoc8VM' \
    > test.out 2>&1
eval_tap $? 324 'PublicVerifyUserByLinkV3' test.out

#- 325 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'PcpLSkBelf6xp2kZ' \
    --code 'lT3qvdTGAwsPj5jw' \
    --error 'Uj5uUrMTVWdoSgob' \
    --state 'iFuD72CXbCY3e3oE' \
    > test.out 2>&1
eval_tap $? 325 'PlatformAuthenticateSAMLV3Handler' test.out

#- 326 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'Kztpw9uvfBpNAAHz' \
    --payload 'E8aJcNwlKgvMGkQl' \
    > test.out 2>&1
eval_tap $? 326 'LoginSSOClient' test.out

#- 327 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'Wndce4Qx9bjDucqd' \
    > test.out 2>&1
eval_tap $? 327 'LogoutSSOClient' test.out

#- 328 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'W0UmhcC7fym0gR1U' \
    --code '7VDBmtINUaePcTAS' \
    > test.out 2>&1
eval_tap $? 328 'RequestTargetTokenResponseV3' test.out

#- 329 UpgradeAndAuthenticateForwardV3
samples/cli/sample-apps Iam upgradeAndAuthenticateForwardV3 \
    --clientId 'aoREuAR7FztOaFTD' \
    --upgradeSuccessToken 'VsJcg8AxU9zWAnkJ' \
    > test.out 2>&1
eval_tap $? 329 'UpgradeAndAuthenticateForwardV3' test.out

#- 330 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '64' \
    --namespace 'Zn5CKb0xLCcc0dEC' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 330 'AdminListInvitationHistoriesV4' test.out

#- 331 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'D6GqkbyGveP3kknZ' \
    > test.out 2>&1
eval_tap $? 331 'AdminGetDevicesByUserV4' test.out

#- 332 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'YaVOyC46sVMNovog' \
    --endDate 'ftmUR2cPBs6JyLYV' \
    --limit '93' \
    --offset '27' \
    --startDate 'F8UDGAAgdaU5auX9' \
    > test.out 2>&1
eval_tap $? 332 'AdminGetBannedDevicesV4' test.out

#- 333 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'fqdsYhUF5EUqLPqA' \
    > test.out 2>&1
eval_tap $? 333 'AdminGetUserDeviceBansV4' test.out

#- 334 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "GHQ5NQ0jvzn6kSSh", "deviceId": "NauAhHQOoJTpe50n", "deviceType": "AAcfbBrqXeXj3L59", "enabled": false, "endDate": "T0ET9XPKXcbSYVXQ", "ext": {"TxFLbrMgdmPxmSP3": {}, "757VxIv03ipGo9xT": {}, "LjZi0MJPZFzavgXC": {}}, "reason": "L5iduU6SPZDKVNNh"}' \
    > test.out 2>&1
eval_tap $? 334 'AdminBanDeviceV4' test.out

#- 335 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'WzTD4ZhpcXEvByPE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 335 'AdminGetDeviceBanV4' test.out

#- 336 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'ApfKQXBGizDK5NVL' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 336 'AdminUpdateDeviceBanV4' test.out

#- 337 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'kEHfIjbt7V6FVyjl' \
    --startDate 'zB9htuDLnPo71GD9' \
    --deviceType 'DYXaqW0NBCQ5WmCw' \
    > test.out 2>&1
eval_tap $? 337 'AdminGenerateReportV4' test.out

#- 338 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 338 'AdminGetDeviceTypesV4' test.out

#- 339 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'x23oc4jmQGab80na' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 339 'AdminGetDeviceBansV4' test.out

#- 340 AdminDecryptDeviceV4
eval_tap 0 340 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 341 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'BZWiOl5WwUlVSX2C' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 341 'AdminUnbanDeviceV4' test.out

#- 342 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'ZYa6Xy4EovJG6QEz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'AdminGetUsersByDeviceV4' test.out

#- 343 AdminGetNamespaceInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 343 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 344 AdminGetNamespaceUserInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceUserInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 344 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 345 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 7, "userInfo": {"country": "qbwwyGlMDKNyFgv2"}}' \
    > test.out 2>&1
eval_tap $? 345 'AdminCreateTestUsersV4' test.out

#- 346 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "hcBDYG8qR7aiLESE", "policyId": "OVWbdVPSjydD4wCc", "policyVersionId": "nyAg5wqpAyUaVASq"}, {"isAccepted": false, "localizedPolicyVersionId": "GOYfgzWoSLOZqEjM", "policyId": "u91THf1cwRhAFUwJ", "policyVersionId": "orgJ2pw1enMqRbiU"}, {"isAccepted": true, "localizedPolicyVersionId": "ySCXXL0PTzLs9wNS", "policyId": "GBIRQ1U97w8jRIFz", "policyVersionId": "nZHpvpyjVsc3ulnP"}], "authType": "EMAILPASSWD", "code": "pheygtzl0K91iWYj", "country": "217rQynFakccKxs3", "dateOfBirth": "8jkvsNfYI011wtUQ", "displayName": "MebW9Y4eBaGwGEec", "emailAddress": "MAazXJlEPsPPQgUv", "password": "1YBHvlAbHY5fJna0", "passwordMD5Sum": "Zz84X5uZw4KlQOpL", "reachMinimumAge": true, "uniqueDisplayName": "BJL9R9ueeLuyctwY", "username": "d2ta2ocXswIb4eij"}' \
    > test.out 2>&1
eval_tap $? 346 'AdminCreateUserV4' test.out

#- 347 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": false, "userIds": ["nJeUAbpHJAMw1uq1", "9Fbk4M1ydvs1pxyp", "WlltLuYUz5Dn6Ezs"]}' \
    > test.out 2>&1
eval_tap $? 347 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 348 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["fo76QlJ1RlzgnWT6", "uNrXvSpsOqfv7mXZ", "0zrbS87vvxtSjy94"]}' \
    > test.out 2>&1
eval_tap $? 348 'AdminBulkCheckValidUserIDV4' test.out

#- 349 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'yBg85VBGe9optLfQ' \
    --body '{"avatarUrl": "uyq7UMPMIuXmZSoL", "country": "AwlbvchdmTG9R9zH", "dateOfBirth": "aaKqDvzV3RhHOrXY", "displayName": "t1VUbkLIMkeUirKK", "languageTag": "cbDQtvjdKDPQj8LL", "skipLoginQueue": false, "uniqueDisplayName": "ExAKijDycB46RKsr", "userName": "YfPOaSWo0wMzwhOI"}' \
    > test.out 2>&1
eval_tap $? 349 'AdminUpdateUserV4' test.out

#- 350 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Ec2pKREqO9KdKIDZ' \
    --body '{"code": "ebReREQqsLE0F0ua", "emailAddress": "ajok0n1qZBhzcEg1"}' \
    > test.out 2>&1
eval_tap $? 350 'AdminUpdateUserEmailAddressV4' test.out

#- 351 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Opue7kX7FHDjmpY8' \
    --body '{"factor": "0os4lCxdcxw7c8Qh", "mfaToken": "Batyjr9LYvH22guk"}' \
    > test.out 2>&1
eval_tap $? 351 'AdminDisableUserMFAV4' test.out

#- 352 AdminGetUserMFAStatusV4
samples/cli/sample-apps Iam adminGetUserMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    --userId 'dMejPOqKoOcg1tsV' \
    > test.out 2>&1
eval_tap $? 352 'AdminGetUserMFAStatusV4' test.out

#- 353 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId '1cMMKbckwfnmQlOq' \
    > test.out 2>&1
eval_tap $? 353 'AdminListUserRolesV4' test.out

#- 354 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'D94ownWoNh2NjYzt' \
    --body '{"assignedNamespaces": ["fmy2845uDjtzq5WT", "pI2cRMa7HteZcquM", "yS1SlHvHAgYpk3ws"], "roleId": "qQEYIqJ3nAgAdtTX"}' \
    > test.out 2>&1
eval_tap $? 354 'AdminUpdateUserRoleV4' test.out

#- 355 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'VOGDyVJ9aGiaEHTM' \
    --body '{"assignedNamespaces": ["NdSPiMX1lfq9uKKP", "5t2fhaXEuwtCSoqi", "WycmCkMN9zLxEe9g"], "roleId": "weIccK42MbaboMqD"}' \
    > test.out 2>&1
eval_tap $? 355 'AdminAddUserRoleV4' test.out

#- 356 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'AUJsSXs3VmkDm4b5' \
    --body '{"assignedNamespaces": ["zv2AvEUjh3ZkMrSY", "OeEEreFqY5cRwblh", "8VYIASoMG1nkt6rF"], "roleId": "UVxZsTiss8wRWycD"}' \
    > test.out 2>&1
eval_tap $? 356 'AdminRemoveUserRoleV4' test.out

#- 357 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'false' \
    --limit '73' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 357 'AdminGetRolesV4' test.out

#- 358 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "dXj4QFASMAncts7z"}' \
    > test.out 2>&1
eval_tap $? 358 'AdminCreateRoleV4' test.out

#- 359 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'e3Q3Fb6G3eoakCzR' \
    > test.out 2>&1
eval_tap $? 359 'AdminGetRoleV4' test.out

#- 360 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId '9qAHF7WZUOawkrDn' \
    > test.out 2>&1
eval_tap $? 360 'AdminDeleteRoleV4' test.out

#- 361 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'x1dxAlP5rOf2gmVr' \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "hlVjqlstwnUJJxiO"}' \
    > test.out 2>&1
eval_tap $? 361 'AdminUpdateRoleV4' test.out

#- 362 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'u7tb8LAFSLveCMoW' \
    --body '{"permissions": [{"action": 69, "resource": "zacvTmPTrxCJhiz0", "schedAction": 62, "schedCron": "6mL4U2EtmqnXjKoM", "schedRange": ["RTzc0oJoJSRCcRvF", "z3UlDBAg8OpRlbnf", "2iLRL1lbNjsC7OuA"]}, {"action": 24, "resource": "cV0BdXtlv0EvKVyE", "schedAction": 54, "schedCron": "qroUJwNOGLOURB2p", "schedRange": ["iOBSkKWEG7fU3iKV", "OC77SsMwlz8ZvWUA", "pKHABQYxe3T2VBC8"]}, {"action": 31, "resource": "WQztP2ZaWpqNu5tw", "schedAction": 3, "schedCron": "15FvASLMCUBRfjbD", "schedRange": ["iBNoSBMPrJ9NKdIX", "2IBFlKeNB9kj0GE3", "YH3sPrnrrBhQehOV"]}]}' \
    > test.out 2>&1
eval_tap $? 362 'AdminUpdateRolePermissionsV4' test.out

#- 363 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'Ye8PryVpXCgI4urO' \
    --body '{"permissions": [{"action": 59, "resource": "8NzzOeYthnbwKpLH", "schedAction": 45, "schedCron": "WxgK9YQYaWJmxaDY", "schedRange": ["HDpsaWTuKBNIpbNz", "pq4JeQvw3JwwLJIS", "dM07TOe3G3lEpnJm"]}, {"action": 100, "resource": "FcJIePKJbU0da1zl", "schedAction": 33, "schedCron": "hX8iHxuER2Zyz01s", "schedRange": ["u04ptkwEA3GA9LbL", "DVRDbejjx43T0Oqf", "SY1tL70zYyREwE5Y"]}, {"action": 51, "resource": "exVMBNq9wlWPLyQB", "schedAction": 91, "schedCron": "ZqdVZsb3Yr3bdSKp", "schedRange": ["QMOhWmfqD7ZmAvti", "zH3qfPaaYMvoc6q7", "tXjye95NwShDVKEf"]}]}' \
    > test.out 2>&1
eval_tap $? 363 'AdminAddRolePermissionsV4' test.out

#- 364 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'kQ5xIVHMCDohnFbp' \
    --body '["aibtew9CEjr2ekJu", "cFEdQTOBrOSVJD57", "PdhZ4B90kEEz2HlJ"]' \
    > test.out 2>&1
eval_tap $? 364 'AdminDeleteRolePermissionsV4' test.out

#- 365 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'YGA0YO60gVI6XbOF' \
    --after 'mYoxSfkcBg6YCQLQ' \
    --before 'zuVxInE0wfGcxTmQ' \
    --limit '100' \
    > test.out 2>&1
eval_tap $? 365 'AdminListAssignedUsersV4' test.out

#- 366 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'TR08LZ7uvdHYI7tw' \
    --body '{"assignedNamespaces": ["Ik1m5q2riQ8IYZ5t", "NALnKUeI6MwfmppD", "Is8JSiPZhdsmCq62"], "namespace": "xCtQiLmmeLNo8qaq", "userId": "RKtQoIY4dMVfa7tx"}' \
    > test.out 2>&1
eval_tap $? 366 'AdminAssignUserToRoleV4' test.out

#- 367 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'znaaFWBAYui0KO4c' \
    --body '{"namespace": "ZvBF4yaUAFZUO2wl", "userId": "993j1Z2ECuxxFlcy"}' \
    > test.out 2>&1
eval_tap $? 367 'AdminRevokeUserFromRoleV4' test.out

#- 368 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["7d24h2eEDna2Tszc", "beWNffT0kub5jKYC", "jWM3TiuILdnKQSts"], "emailAddresses": ["dggkNzOMuV8f5cFW", "Pdm3WwynGklnYCDs", "qoi5UCNGtFinsQ2n"], "isAdmin": true, "isNewStudio": false, "languageTag": "RfBedN8F6IcAE5FD", "namespace": "UIYNn4iqdD0Px1dz", "roleId": "jtRy9Z8j5cRodoFw"}' \
    > test.out 2>&1
eval_tap $? 368 'AdminInviteUserNewV4' test.out

#- 369 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "DpAFWmsfb7ICUMoA", "country": "VOhUG1YbiGJQWilA", "dateOfBirth": "l4RGheS9zRwCFkx6", "displayName": "8RIW7AkFiS7cyXJ8", "languageTag": "HrBRyhhgKR7o5UPI", "skipLoginQueue": true, "uniqueDisplayName": "KjUisswWxZv3UuH6", "userName": "QVy4mC480xJwTbiU"}' \
    > test.out 2>&1
eval_tap $? 369 'AdminUpdateMyUserV4' test.out

#- 370 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"factor": "AlJfkBNx5lae5ci0", "mfaToken": "D0jsfOD4CmBqOtbl"}' \
    > test.out 2>&1
eval_tap $? 370 'AdminDisableMyAuthenticatorV4' test.out

#- 371 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code '4X0IlIfufz9LXE3m' \
    > test.out 2>&1
eval_tap $? 371 'AdminEnableMyAuthenticatorV4' test.out

#- 372 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 372 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 373 AdminGetMyBackupCodesV4
eval_tap 0 373 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 374 AdminGenerateMyBackupCodesV4
eval_tap 0 374 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 375 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    --body '{"factor": "6Rhd4uLNWKs76vuP", "mfaToken": "7W3wvRnJJVxzHD2f"}' \
    > test.out 2>&1
eval_tap $? 375 'AdminDisableMyBackupCodesV4' test.out

#- 376 AdminDownloadMyBackupCodesV4
eval_tap 0 376 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 377 AdminEnableMyBackupCodesV4
eval_tap 0 377 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 378 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag 'NBx1JOR0dpVlTphb' \
    > test.out 2>&1
eval_tap $? 378 'AdminGetBackupCodesV4' test.out

#- 379 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag 'DC6bEJWZJrVvwubU' \
    > test.out 2>&1
eval_tap $? 379 'AdminGenerateBackupCodesV4' test.out

#- 380 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag 'xD9ePxH8alym0gt8' \
    > test.out 2>&1
eval_tap $? 380 'AdminEnableBackupCodesV4' test.out

#- 381 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code 'VvZ7Au2PUT4bhdkr' \
    --factor 'saliLX3PAbTIuILy' \
    > test.out 2>&1
eval_tap $? 381 'AdminChallengeMyMFAV4' test.out

#- 382 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action 'A7cmAdPxU48Nc6MP' \
    --languageTag 'baD8MZ3FANlXPtg1' \
    > test.out 2>&1
eval_tap $? 382 'AdminSendMyMFAEmailCodeV4' test.out

#- 383 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"factor": "8aGkoJlsEBqTfkLO", "mfaToken": "AOpwdE1ecVgTOu4b"}' \
    > test.out 2>&1
eval_tap $? 383 'AdminDisableMyEmailV4' test.out

#- 384 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'WY6ZT57sK3itnUPo' \
    > test.out 2>&1
eval_tap $? 384 'AdminEnableMyEmailV4' test.out

#- 385 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 385 'AdminGetMyEnabledFactorsV4' test.out

#- 386 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'pZa7iY7QdghnuTPI' \
    > test.out 2>&1
eval_tap $? 386 'AdminMakeFactorMyDefaultV4' test.out

#- 387 AdminGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam adminGetMyOwnMFAStatusV4 \
    > test.out 2>&1
eval_tap $? 387 'AdminGetMyOwnMFAStatusV4' test.out

#- 388 AdminGetMyMFAStatusV4
eval_tap 0 388 'AdminGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 389 AdminInviteUserV4
eval_tap 0 389 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 390 AuthenticationWithPlatformLinkV4
samples/cli/sample-apps Iam authenticationWithPlatformLinkV4 \
    --extendExp 'true' \
    --clientId 'H7YEoFM7tiTtYvX4' \
    --linkingToken '3Wf4hvbEtrhZVYi7' \
    --password '610mlocCm4XEkoHV' \
    --username 'Dtn7OJSxbBjGdHDb' \
    > test.out 2>&1
eval_tap $? 390 'AuthenticationWithPlatformLinkV4' test.out

#- 391 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'dqM0jM4FpcgxM9Jr' \
    --extendExp 'true' \
    --linkingToken 'kB5WBLlJqLMA3VXZ' \
    > test.out 2>&1
eval_tap $? 391 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 392 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'VU55veFUl0aGT1bd' \
    --factor '5UtvsXqoZTZurebp' \
    --mfaToken '1paVtptD7sRIv65w' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 392 'Verify2faCodeV4' test.out

#- 393 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'nyfoRYzDm6iME8Xt' \
    --codeChallenge 'ZZ3qumkaJMNfZNu0' \
    --codeChallengeMethod 'S256' \
    --additionalData '6JkZdAkJiQah3DqA' \
    --clientId 'l82pJx7kpOaFuoW4' \
    --createHeadless 'true' \
    --deviceId 'bB2OdDK4W0X4b8l8' \
    --macAddress 'jdAHvsut2TjiRUGF' \
    --platformToken 'otdSQLAx8dSDVy5L' \
    --serviceLabel '0.24271314219211504' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 393 'PlatformTokenGrantV4' test.out

#- 394 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'S4bLAOa9B89nlcIC' \
    --codeChallengeMethod 'plain' \
    --simultaneousPlatform 'xtB1Fkf7YKl8HNiD' \
    --simultaneousTicket 'mgFPNcWqOMkTHcnq' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'ahwYqzlDF2kJ4pB6' \
    > test.out 2>&1
eval_tap $? 394 'SimultaneousLoginV4' test.out

#- 395 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge 'PpS54cqGFiHn1Liu' \
    --codeChallengeMethod 'S256' \
    --additionalData 'BNCGpjHlGXAhIFSk' \
    --clientId 'asAMv4yJvAenwZqO' \
    --clientSecret 'g3ezXqK9T4U8rL8E' \
    --code 'oDhtAnbHx6UnmBQO' \
    --codeVerifier 'aguk196C4Ztc0yEi' \
    --extendNamespace 'bPa49QBFXWXxiuFB' \
    --extendExp 'true' \
    --loginQueueTicket 'BDNg3djR2xlbTUCv' \
    --password 'bM7V6ziXRxx4J99p' \
    --redirectUri 'n1oKr8M49UySi4Xc' \
    --refreshToken 'ZcF2dlIahTrJi0G1' \
    --username 'I9ZdSWYQfYwZ7iwt' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 395 'TokenGrantV4' test.out

#- 396 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'N2jOoMiEhfc3yCU6' \
    --code 'CBpA48gzFgpfGIgP' \
    > test.out 2>&1
eval_tap $? 396 'RequestTargetTokenResponseV4' test.out

#- 397 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'YsrDD6RAOImUSHAX' \
    --rawPUID 'false' \
    --body '{"pidType": "B4GusGzhxkLfmiOf", "platformUserIds": ["DowtWgNxOS8BJmrf", "WHf2z5XqcqDK3wBp", "9ITbz9x7T3uby5bN"]}' \
    > test.out 2>&1
eval_tap $? 397 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 398 PublicGetUserByPlatformUserIDV4
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'CQx3a4uAo1R7EXvI' \
    --platformUserId 'ZSucAmy4ZP4iucXm' \
    > test.out 2>&1
eval_tap $? 398 'PublicGetUserByPlatformUserIDV4' test.out

#- 399 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "mLcHPYgXuwllQu5R", "policyId": "E900GoqLyjkOyYRg", "policyVersionId": "iocVoTTw3GqbwPU0"}, {"isAccepted": false, "localizedPolicyVersionId": "vtYcucHOOAccoNBV", "policyId": "K52EGHWMYbQsZGuQ", "policyVersionId": "PvqLm2Yv0Aof9zO5"}, {"isAccepted": false, "localizedPolicyVersionId": "GSRUsCcSxQlh65Ja", "policyId": "RN0UUgEf6ETFdAc1", "policyVersionId": "cbsnKafDfGBQ8HJv"}], "authType": "EMAILPASSWD", "country": "b4GqhCiIumQDFEaE", "dateOfBirth": "f8HanzcWPzZPUykS", "displayName": "8B7NFy1eDVyzNRwy", "emailAddress": "swYlQWp5TBRZeC7T", "password": "Zz47pmaKU0kdgPQb", "passwordMD5Sum": "8KV4A8lSZtmf2lLe", "uniqueDisplayName": "EZTEUOtIucxpXy3J", "username": "fLTMbvLxV2h0mej0", "verified": false}' \
    > test.out 2>&1
eval_tap $? 399 'PublicCreateTestUserV4' test.out

#- 400 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "ohMTkQD8pyZbzILN", "policyId": "wl9pAtZ6j8NFmcI8", "policyVersionId": "BiYdBxTIPoXkFf2S"}, {"isAccepted": true, "localizedPolicyVersionId": "fgxujVEE6kjDaQ0x", "policyId": "EHGZyeFIi8GrWCDz", "policyVersionId": "ailJkPnZNmNPqGHK"}, {"isAccepted": true, "localizedPolicyVersionId": "vYuiE4LjyhvD9lzQ", "policyId": "KQBvQxhqJaIoPrfx", "policyVersionId": "FQ2Qtme9AMlh1z0x"}], "authType": "EMAILPASSWD", "code": "NTQ7kLa0zoZD36Mb", "country": "xf0rQZiYYPGdHmHL", "dateOfBirth": "IgxMdfMF8X6WANLZ", "displayName": "GedSmK6ev8oqmhVQ", "emailAddress": "4P9ueZujpV5oLWKl", "password": "TuFODr7VXMl26Drg", "passwordMD5Sum": "v1YLmdKr0lH1nWtE", "reachMinimumAge": true, "uniqueDisplayName": "FECXIyor2o998xi0", "username": "nmbn8F4gox3Z5bci"}' \
    > test.out 2>&1
eval_tap $? 400 'PublicCreateUserV4' test.out

#- 401 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId '7Ntu5xA2ijf5CnEO' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "leGY6OeVe3smdQcz", "policyId": "OPmvnOVUy7PwiCUb", "policyVersionId": "Kv9D3vNXsgl1nGzb"}, {"isAccepted": true, "localizedPolicyVersionId": "hhep3o1JgLYF580R", "policyId": "CEtDQPCv4Sg8DSiF", "policyVersionId": "TtbROQ63v6SFhFGP"}, {"isAccepted": true, "localizedPolicyVersionId": "bpyORzBCDsd7OooH", "policyId": "w6PLUpR6Fo7hfM8r", "policyVersionId": "Kng9a2E0KWldVqmD"}], "authType": "EMAILPASSWD", "code": "2CRpubDqYlcQ42Gg", "country": "QCVJczIiZfUXm0kw", "dateOfBirth": "ngu7KhbLySxpddGP", "displayName": "iQ1jvJwaa37sgnu8", "emailAddress": "lMrK95AAZQ87Vi5M", "password": "eMfDxvoStrVFpveJ", "passwordMD5Sum": "3M0Las4zb38MQ6Pw", "reachMinimumAge": true, "uniqueDisplayName": "aFfbKOhCJhjw39mO", "username": "5dq2zKncx0FdtUjf"}' \
    > test.out 2>&1
eval_tap $? 401 'CreateUserFromInvitationV4' test.out

#- 402 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "vEdZjwY02siHqjLo", "country": "A4lWjA58OXdrkLse", "dateOfBirth": "0anOH6HA4yUU2Lmx", "displayName": "87I3w4xKGD6yZwtB", "languageTag": "rMAmRcSSvkvl8al5", "uniqueDisplayName": "7VApAJZP680lTLXK", "userName": "Ugb7LeVG2FdTQlQr"}' \
    > test.out 2>&1
eval_tap $? 402 'PublicUpdateUserV4' test.out

#- 403 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "eyp5PgWiks9Uci5H", "emailAddress": "kW2uYQmM6alwdfgc"}' \
    > test.out 2>&1
eval_tap $? 403 'PublicUpdateUserEmailAddressV4' test.out

#- 404 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "lk9eM6pX4OyFmiHa", "country": "hZHb68PYuTGu1ZDa", "dateOfBirth": "hdqPhkwg4jB7Eglr", "displayName": "mCnc3EQl4lHirzDV", "emailAddress": "Vm6YKQzVRUu8TvEr", "password": "ZvkRocsUZ1Afbb9K", "reachMinimumAge": false, "uniqueDisplayName": "KnbypXWvVFg86tOA", "username": "bauDjgPWPnvBlbBs", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 404 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 405 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"dateOfBirth": "TrzY9rtcWIdQyA0y", "displayName": "9uGtcErQQDaulCDD", "emailAddress": "CLFxSZtpCk9tikY8", "password": "RwTbqvguDvo4kROI", "uniqueDisplayName": "JBUpBScHRam7PMlh", "username": "nkLYMVK4v6DwqRyd"}' \
    > test.out 2>&1
eval_tap $? 405 'PublicUpgradeHeadlessAccountV4' test.out

#- 406 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "Va5ynUzfV7HxMaPa", "mfaToken": "klLMF3lTtcmeI3hb"}' \
    > test.out 2>&1
eval_tap $? 406 'PublicDisableMyAuthenticatorV4' test.out

#- 407 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'IFW2tp02hLQqoi6L' \
    > test.out 2>&1
eval_tap $? 407 'PublicEnableMyAuthenticatorV4' test.out

#- 408 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 408 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 409 PublicGetMyBackupCodesV4
eval_tap 0 409 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 410 PublicGenerateMyBackupCodesV4
eval_tap 0 410 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 411 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "JwRlJZ6ye3MTDpbO", "mfaToken": "qIVpouINYVoEhlG7"}' \
    > test.out 2>&1
eval_tap $? 411 'PublicDisableMyBackupCodesV4' test.out

#- 412 PublicDownloadMyBackupCodesV4
eval_tap 0 412 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 413 PublicEnableMyBackupCodesV4
eval_tap 0 413 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 414 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'E2jNvfs8dwr8ErsB' \
    > test.out 2>&1
eval_tap $? 414 'PublicGetBackupCodesV4' test.out

#- 415 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'mcTXYFky8eYDRzTF' \
    > test.out 2>&1
eval_tap $? 415 'PublicGenerateBackupCodesV4' test.out

#- 416 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'EznwqlUVRXE6pP8E' \
    > test.out 2>&1
eval_tap $? 416 'PublicEnableBackupCodesV4' test.out

#- 417 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code 'iStyA32bJdg4oEdF' \
    --factor 'PYDxmyjUC4GvcgRu' \
    > test.out 2>&1
eval_tap $? 417 'PublicChallengeMyMFAV4' test.out

#- 418 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 418 'PublicRemoveTrustedDeviceV4' test.out

#- 419 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    --action 'TGRPhDIGtPDrGkvQ' \
    --languageTag 'QLt09mKoXtapgWEk' \
    > test.out 2>&1
eval_tap $? 419 'PublicSendMyMFAEmailCodeV4' test.out

#- 420 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "0m9vP8V1YLk6ihQg", "mfaToken": "pwqYXRtkmwmRqC1w"}' \
    > test.out 2>&1
eval_tap $? 420 'PublicDisableMyEmailV4' test.out

#- 421 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'L1LCQXdmPh5QK5SW' \
    > test.out 2>&1
eval_tap $? 421 'PublicEnableMyEmailV4' test.out

#- 422 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 422 'PublicGetMyEnabledFactorsV4' test.out

#- 423 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'pjWgHZQ3fmMQ8JWZ' \
    > test.out 2>&1
eval_tap $? 423 'PublicMakeFactorMyDefaultV4' test.out

#- 424 PublicGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam publicGetMyOwnMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 424 'PublicGetMyOwnMFAStatusV4' test.out

#- 425 PublicGetMyMFAStatusV4
eval_tap 0 425 'PublicGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 426 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'h8aCqcyIE0VhKGgt' \
    > test.out 2>&1
eval_tap $? 426 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 427 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "tRgJlc90BgEgWKwE", "emailAddress": "TPi9fnEkawoKCd0l", "languageTag": "615c9De5gI2Xc4uW", "namespace": "8NeDMGMfjkbUNmVb", "namespaceDisplayName": "S532iM2qc7E2PC5s"}' \
    > test.out 2>&1
eval_tap $? 427 'PublicInviteUserV4' test.out

#- 428 PublicUpgradeHeadlessWithCodeV4Forward
samples/cli/sample-apps Iam publicUpgradeHeadlessWithCodeV4Forward \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "ac71mzmEljXOqAZo", "policyId": "ldygFd7JwbkIJxnV", "policyVersionId": "6rHEC7MBLRybIPuh"}, {"isAccepted": false, "localizedPolicyVersionId": "mKx6ZvwwWX7Unm9H", "policyId": "w2BCnMn6elNPvp50", "policyVersionId": "emwauBMSKjQZsv9c"}, {"isAccepted": false, "localizedPolicyVersionId": "S1u4W5uyqntWJUCx", "policyId": "JHCEbc5EFqXDuLZR", "policyVersionId": "blk9qYUiMUltdvUP"}], "code": "HnnO2RBcFaBNy0dV", "country": "DH89xJWWCohIjfSz", "dateOfBirth": "JG3hLuJemRq1Od31", "displayName": "tLbrOU8eoh6xNDJ2", "emailAddress": "Uds35IhuOMX6X5FQ", "password": "UDLxPxcovY27L7AA", "reachMinimumAge": false, "uniqueDisplayName": "uBqVU1S4kW0xr85E", "username": "mwVYMfxd6fx3m2TD", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 428 'PublicUpgradeHeadlessWithCodeV4Forward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE