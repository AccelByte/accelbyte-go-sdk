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
echo "1..367"

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

#- 108 AdminGetInputValidations
samples/cli/sample-apps Iam adminGetInputValidations \
    > test.out 2>&1
eval_tap $? 108 'AdminGetInputValidations' test.out

#- 109 AdminUpdateInputValidations
samples/cli/sample-apps Iam adminUpdateInputValidations \
    --body '[{"field": "G4c5FskGClSBCB7p", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["4HjkHMCBN9Vxp730", "Lc4b4eXGZOlIzjUF", "zt0LKh46HT282zm8"], "preferRegex": true, "regex": "QUpCBI0hMeHI1qDY"}, "blockedWord": ["92jwDIOd6nGPZGDd", "FXwxNeEHRRDEYAaz", "tUVcM7Xp09Z84s1h"], "description": [{"language": "uaPKL8uvsiStbGK2", "message": ["7HBfCNXjF6z7R70e", "knwFSxzuVGDhapFg", "2tRU8b6080JmOgA4"]}, {"language": "DPZ7qCmMdchI6hGH", "message": ["87OFNiMUxqfKlbdT", "GpkULgHopsEMXgpj", "pByxrfPugbuCZzyo"]}, {"language": "v1vMxgKBooa0IHSE", "message": ["j6hGTRiyHy087iOD", "UHubwddy9b7b2CER", "EL0lIF5gp2F3acWE"]}], "isCustomRegex": true, "letterCase": "antmrqr34fTDeeew", "maxLength": 27, "maxRepeatingAlphaNum": 48, "maxRepeatingSpecialCharacter": 11, "minCharType": 7, "minLength": 84, "regex": "X7YzUCRt1ICmcrbZ", "specialCharacterLocation": "XV2SZJJJEh2uzhZZ", "specialCharacters": ["Bsx8VOFiIZFh29Dz", "1jtomLL2HisLybW4", "4HZiFlGiL7lVZmMs"]}}, {"field": "zu2FhrigdUK8vLDq", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["ZvShZortNqoew62i", "jG14naXS9k1OXZCl", "kqdSNO2WiMZ8sswU"], "preferRegex": true, "regex": "7FFX7mnzsS0SnHdn"}, "blockedWord": ["AixRTVd1SIIUzRuP", "o7AlLz7RmNweh0qo", "HEeX9RtEfrseiGek"], "description": [{"language": "DAgh92MXxun96AEl", "message": ["6YXBmgc4RkKvegBR", "JedTif4duwKvw6yb", "ZbRHAx1JaIK7oOVu"]}, {"language": "rF1e4m4UhTwifBzq", "message": ["iMgljKyqTzSXUOvk", "6kX6cay6D3m7j2IQ", "Pu7kCzBzOlXaJqfn"]}, {"language": "MxLjFLTWWnucfwCR", "message": ["vn9mmtcfBOnAzm3w", "54pohHPFOgqQlHvn", "FyKJmO4XTfZ5i4q4"]}], "isCustomRegex": false, "letterCase": "swhkVYCdm6roQDLD", "maxLength": 39, "maxRepeatingAlphaNum": 17, "maxRepeatingSpecialCharacter": 7, "minCharType": 81, "minLength": 7, "regex": "YqiMNpnbAP06BMXv", "specialCharacterLocation": "Gvw3FXvlB6XVna9G", "specialCharacters": ["J3bzOL69cYwYNrpT", "Fkgj7sHiecQ5XNXb", "40tWjuAdel0VElud"]}}, {"field": "34mba5MUlsSCk52l", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["Q5ZKmLbxTUIhuBrG", "awwNDvuQJZWTNCbC", "MInbJa4zrP9zUyaw"], "preferRegex": false, "regex": "hHPawC8eoSOEdqnF"}, "blockedWord": ["U643MMQ82Ewcu6Yl", "GfZJErSSYul4gPrg", "ZRLhQVoj40npTmMj"], "description": [{"language": "bEjfmEHvvGvpRzZ7", "message": ["CtyIjD8EqukIe4Hm", "LbEktj1gHykxzul7", "uCMDq7xCrmjOcmfh"]}, {"language": "Imxj8nrhunryMkMH", "message": ["sSvPgNGagotE0rRl", "E4O72qzFb2F5GrHT", "gaItRumWMdLv1YP8"]}, {"language": "m8z77eVLjVNwhXPl", "message": ["EbIZvY856nelg978", "TUfDSCnghMd0c8nU", "bOXvGJ8tq1krT8Iu"]}], "isCustomRegex": true, "letterCase": "xtLgdevyNeQDULAf", "maxLength": 18, "maxRepeatingAlphaNum": 42, "maxRepeatingSpecialCharacter": 39, "minCharType": 14, "minLength": 65, "regex": "VqUGIBX3KIg6BLXx", "specialCharacterLocation": "XI7YOr0AlfkdNCI1", "specialCharacters": ["FzwPCSesyCaqOt5M", "0EsFl7MZwdzFycaz", "aGAfAmdwUjxoV73l"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'dVLrVcX3fIEpzsg0' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after '73rnEDEk0SUvgx68' \
    --before 'PeayudfB3JVNiKnB' \
    --limit '69' \
    > test.out 2>&1
eval_tap $? 111 'ListAdminsV3' test.out

#- 112 AdminGetAgeRestrictionStatusV3
samples/cli/sample-apps Iam adminGetAgeRestrictionStatusV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 112 'AdminGetAgeRestrictionStatusV3' test.out

#- 113 AdminUpdateAgeRestrictionConfigV3
samples/cli/sample-apps Iam adminUpdateAgeRestrictionConfigV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 21, "enable": true}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'ZEbNTbMYptpxoXE1' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 94}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType '6ZEr06Gg4hmJHReJ' \
    --limit '61' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "GzVLfCsKVtU1NU9m", "comment": "aLOasEgE14773k2c", "endDate": "NusjykwvR1szg16v", "reason": "hicekxUt17gyhrgM", "skipNotif": false, "userIds": ["rBrteVd8NKTZgnvD", "39KYzPl5FkJkNlFT", "pDMO5wN6gkyL8h0Q"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "dtYRbMdZnduVba1s", "userId": "G98Fkspd52bO5MrN"}, {"banId": "4TVbz93qbT1WzuaD", "userId": "8C6UpE4RgrTevAZF"}, {"banId": "NyEn9QiLxKfKo86V", "userId": "DWTX9oVvtQXeSTjI"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUnbanUserBulkV3' test.out

#- 119 AdminGetBansTypeWithNamespaceV3
samples/cli/sample-apps Iam adminGetBansTypeWithNamespaceV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'AdminGetBansTypeWithNamespaceV3' test.out

#- 120 AdminGetClientsByNamespaceV3
samples/cli/sample-apps Iam adminGetClientsByNamespaceV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'P6n8WcNJgy51X4W6' \
    --clientName 'WFKrFzr7p02hcJki' \
    --clientType 'WnSYwmKFDTJWXYII' \
    --limit '75' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["J5jQX7KAgqZupmp4", "rARQvwjMfRN04MHD", "iUrLz4HMtZgY4e4N"], "baseUri": "SqD8bmRoj3QzWZ66", "clientId": "mGCuhFbSmojqZxKG", "clientName": "jGvVQ0Zg5mH3ghg5", "clientPermissions": [{"action": 84, "resource": "DHEXzaxTOYq6asDe", "schedAction": 40, "schedCron": "yuV7VlYr73kuJxcM", "schedRange": ["A0izLXWz04qOmcXn", "Ypya1rbwJHOvLjLf", "R94la5dDW3MrXVxy"]}, {"action": 72, "resource": "qGKcchWPaDCHxYp2", "schedAction": 43, "schedCron": "hSgQ2NrQexQv0jqv", "schedRange": ["2zX3iM6Og7bLJg1A", "7KCIk4KpIsr3RtZO", "qTUk4raBs7h9gaXl"]}, {"action": 21, "resource": "lVaPfVAZ6dRR918n", "schedAction": 33, "schedCron": "T9F7lyPFlbIuzPYn", "schedRange": ["jVRQ8w5usSnxk1rC", "9YcTzA1kIulWMzCp", "6n6OiHauZvulTaq7"]}], "clientPlatform": "3spkIctesEm1K63S", "deletable": false, "description": "8orxlZESTIIuM3eP", "namespace": "a0U9uXJLwS3uzvxl", "oauthAccessTokenExpiration": 52, "oauthAccessTokenExpirationTimeUnit": "0t1i6fPKYpl6jFUx", "oauthClientType": "N0QTnZ5MsaN175A8", "oauthRefreshTokenExpiration": 78, "oauthRefreshTokenExpirationTimeUnit": "nbJl9Pzm9aXPKefi", "parentNamespace": "Bu1F1vJe3U8fuBS8", "redirectUri": "PMFbqjRyAW5hL6m5", "scopes": ["eSMymDmkFDRhDSkZ", "OM9NfJGiEEdBvDPp", "BUVV7QcD7mEg1916"], "secret": "GE6CM7Sv5DOMwVCU", "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId '64Tv0mU5NfXtOO0M' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'TkwwDbTBW6bZeIpt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId '8SRvnhiDKNAFYYaY' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["Tk1KMUdG6bC98c0x", "5VxIVk7T0fjUPO8g", "D5Vt6ADx9q7PBzsC"], "baseUri": "27nuNoificrGjqbW", "clientName": "CduRBRKaBVj9rlYf", "clientPermissions": [{"action": 59, "resource": "5kpPbENwbwJaT5aT", "schedAction": 62, "schedCron": "bAyd3kDZ8nMQP8lc", "schedRange": ["mpr8vMrpb4L3MfSO", "ZoFHaGSJtUbEUIIk", "KjXTGH16g9a9CktF"]}, {"action": 23, "resource": "ySQ7axGdJcmIZZGC", "schedAction": 80, "schedCron": "frSsRUBvU4M8ygGC", "schedRange": ["YpzkxJp6W3NyfKov", "2AqwS3VGwERKJ8J4", "eTpPCTjJXeZyEA5K"]}, {"action": 0, "resource": "K23KO7OEAfKac34Z", "schedAction": 83, "schedCron": "AXmofVGWXhUN6s6g", "schedRange": ["7zwi49z11DwgD61U", "RnCr1THZfoKPsEsB", "GXADytXrCQnyNj7g"]}], "clientPlatform": "MSjbdvNWSs2RXDW9", "deletable": false, "description": "2P0wta5KSRlMjyWM", "namespace": "G0eOzWNZroRznvXx", "oauthAccessTokenExpiration": 94, "oauthAccessTokenExpirationTimeUnit": "Ha3WYi57zOqZvDpG", "oauthRefreshTokenExpiration": 21, "oauthRefreshTokenExpirationTimeUnit": "Mc7jNYyNaonI8Xco", "redirectUri": "G5ClBmqhfxXz3mpN", "scopes": ["6mscPIhRkrkMGQ5o", "dB3irkuDVKsVgZRf", "z04CTgyMsW0Tx5E0"], "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId '9AkhPcBgfbj7nDPS' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 90, "resource": "5n8lyiauGNC5oZAZ"}, {"action": 59, "resource": "0ysMAeFO0zRp2BA7"}, {"action": 43, "resource": "cwQj2d9MQZJnBHtf"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'Zp9ZcSTw6QfEktDS' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 48, "resource": "sp3wSlfxvBPTPu4M"}, {"action": 67, "resource": "lsMFyJdcdvrX7pZc"}, {"action": 1, "resource": "YHuMLn3FEgI0Sbyq"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '45' \
    --clientId 'XyhoSXAGUsaJGfqE' \
    --namespace $AB_NAMESPACE \
    --resource 'pLhBvj6NyKjmHDFd' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteClientPermissionV3' test.out

#- 128 AdminGetCountryListV3
samples/cli/sample-apps Iam adminGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    --filterBlacklist 'true' \
    > test.out 2>&1
eval_tap $? 128 'AdminGetCountryListV3' test.out

#- 129 AdminGetCountryBlacklistV3
samples/cli/sample-apps Iam adminGetCountryBlacklistV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 129 'AdminGetCountryBlacklistV3' test.out

#- 130 AdminAddCountryBlacklistV3
samples/cli/sample-apps Iam adminAddCountryBlacklistV3 \
    --namespace $AB_NAMESPACE \
    --body '{"blacklist": ["isrY3JoG2ZAcJvbX", "54I2oIMtpMoNTbkl", "qcGu91ZAbxvqLJvh"]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminAddCountryBlacklistV3' test.out

#- 131 RetrieveAllThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 131 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 132 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 132 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 133 RetrieveAllSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 133 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 134 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'FYtzS28KD04dfxTo' \
    > test.out 2>&1
eval_tap $? 134 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 135 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'VmpTEysVogrCtMwa' \
    --body '{"ACSURL": "5CQUrZUj1lZFtxdG", "AWSCognitoRegion": "MYI5BWerk2NBuld0", "AWSCognitoUserPool": "YvEyVWdojvVYuqQl", "AllowedClients": ["54opak316RnYauiz", "aoMz1rjweGEnmV5L", "BG9RSJ5sU1EmKIFI"], "AppId": "XO6x5GuNiVvjeKsE", "AuthorizationEndpoint": "IhD9BViNWRlNO20s", "ClientId": "K1hjaSmHcS8jCqRs", "Environment": "wQMFVO9G2yc3c75A", "FederationMetadataURL": "0K13FAhhJkj8einz", "GenericOauthFlow": true, "IsActive": false, "Issuer": "x8b16CnSX190a3XK", "JWKSEndpoint": "M7Q0UGWMO714ZIZG", "KeyID": "xmnCiqDRQV79EvUe", "NetflixCertificates": {"encryptedPrivateKey": "lKgiP17SMAa7ip1n", "encryptedPrivateKeyName": "piZuoPx0d82JAMDy", "publicCertificate": "I0CbqRXi1c3LiSD0", "publicCertificateName": "ImvR8xhXBz9IEtSS", "rootCertificate": "MNTCjlrLJdTptKgS", "rootCertificateName": "wfOzxlfzMPuqu5ch"}, "OrganizationId": "kbWC7CsM0cwcTTBV", "PlatformName": "Z4xTPcf6e7WTu1oi", "RedirectUri": "2h9TjVoF3JM2qE1M", "RegisteredDomains": [{"affectedClientIDs": ["ShdX5WeDfUHQ9bNi", "8LZYJSrNPkRd7rmO", "Tkb4HWoyHbzgKp1B"], "domain": "Le3OiySn3kq45xpr", "namespaces": ["QP9PWwjOvotMIUbS", "ZBTcmzA1eBj3ktAh", "zrVc8auMfaG0xr22"], "roleId": "IYOcSOQtbgNldRNA"}, {"affectedClientIDs": ["GFPJsSlH9ZcswJGC", "BP8ZPRT7LeHMbpwo", "7XZRMHfaV0UCT328"], "domain": "KjveVCKeoEoMgIAd", "namespaces": ["JPHV0dVCA1bzeW2s", "RUwFq9bfXASh9K17", "Wvqx4l7uWxlCbwqC"], "roleId": "Ma5zRCHIXnBQZCI4"}, {"affectedClientIDs": ["dU2DUkgSTBe9reQb", "YJMxGk2bmjcAhesp", "Mfom0BBpQq8Z7n7a"], "domain": "4Ll6RaSS8UIQdQ9i", "namespaces": ["ynSz9un8u4mVpmzP", "lRxACoq1tOQ0yuWF", "VQxBfHISzR4jETJt"], "roleId": "dPOuudTWzgqGcNtK"}], "Secret": "69uX1mpnBseRccQo", "TeamID": "ihoYGaTCqCuOx8q0", "TokenAuthenticationType": "qRBULNeS3i7yGYWC", "TokenClaimsMapping": {"3xfy8u8rTevUGlVK": "xcDYlbMTUkVRRld6", "MdQrQyaPoxRfiOkP": "VP8CVaNMl4lQGxa9", "WZ7eNZnvR9XB0z4c": "I9YkdNWR9vcTVptD"}, "TokenEndpoint": "3bnEwbsr9slGSxlT", "UserInfoEndpoint": "GicdqFE9ewFXAwQg", "UserInfoHTTPMethod": "FkVcsAVECRkUJU2k", "scopes": ["AM1WsnXoXu8G0txN", "QtDS4e7dgE75BoN6", "LaA0YYBVP8ehFngJ"]}' \
    > test.out 2>&1
eval_tap $? 135 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 136 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'dfvVxZsmyHcuFBer' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 137 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'phndiuTwKCKUvfVQ' \
    --body '{"ACSURL": "XV3pACPGlwYwvMmp", "AWSCognitoRegion": "yS9SoUeDXVTpxOEK", "AWSCognitoUserPool": "Hnw5krOpyqh5aTmb", "AllowedClients": ["yHcERPV384LcnpVX", "QlTTItGpvmOPeTrf", "zlqRY8VWy9LHegjH"], "AppId": "O9jIsqiRrBu6Fc0A", "AuthorizationEndpoint": "KZ1LbzNwsEQC4KTS", "ClientId": "AxKl7SwHgLGV5IZO", "Environment": "IScudk8k19bjtdPS", "FederationMetadataURL": "ewMOhKScZ4U1PuSB", "GenericOauthFlow": false, "IsActive": true, "Issuer": "9DpAi64Yz7L8bXuk", "JWKSEndpoint": "IUpidtybRkYLz9eG", "KeyID": "2wX7zztiZrRBpwOa", "NetflixCertificates": {"encryptedPrivateKey": "BTqm9rCkwmmXFkLX", "encryptedPrivateKeyName": "ck7ON3SQEYFvcQ8i", "publicCertificate": "CdAbj5CtBx9VNmmj", "publicCertificateName": "akGJCp4fRRXs9CpQ", "rootCertificate": "dcyPHtRcX8Lsk0ii", "rootCertificateName": "58R5NbDo48CMJRuV"}, "OrganizationId": "Z8i465ohwK8RJzvH", "PlatformName": "Hww6L4WNlqYGWK1O", "RedirectUri": "sIsQ5H8REoo8PJeI", "RegisteredDomains": [{"affectedClientIDs": ["dOjVtJo4KPKq1Drk", "qWnQo42TI1ftkW1C", "RkVnFl0LfOMzirhq"], "domain": "euySBGzeYpuWMkjY", "namespaces": ["hGd8sETaE0GstwTw", "3Xgz3QaZs21NbWxN", "No6xmuhZ3UpQaXTk"], "roleId": "kq7zAfLi2wNgF4an"}, {"affectedClientIDs": ["JNl3KAQKGQy3M86o", "i2Lu9u75JsbbzMn2", "BRkzcf1kLzVCNsaj"], "domain": "HOECvIETjOPiSzBN", "namespaces": ["bZ2Hhl9subYj0PO4", "RpjMUrmImHYNwOr1", "vRrSTNlHmvySsEnJ"], "roleId": "l4sMrFjBtwkhUdjC"}, {"affectedClientIDs": ["vNTKof1rN8kl4oq1", "caTa1zhLmVK4KjMf", "PGUYCihY65TccJ5R"], "domain": "hfmULyVlfFXjessD", "namespaces": ["Sb77p6mjVD6eHFe5", "OHeO5SxeM301VBYQ", "gya3Ki5Z8i4vveQo"], "roleId": "F1iGM7XjXG6GoGIi"}], "Secret": "i7aisatTrk46BEy3", "TeamID": "8Vn6x9Brq8Eg45rS", "TokenAuthenticationType": "jCFTJYPFwJ5BolcK", "TokenClaimsMapping": {"1OTlYTtI4iDzAlkL": "uZcddey9j7DiVDVI", "WuOiAlB5O4KGIBiy": "O7p1BZXKBTxdGpTL", "Av9iyXlLSsubFEbb": "IIioPYPyUyuTipLD"}, "TokenEndpoint": "D5Qe9NhWahLhdKVj", "UserInfoEndpoint": "WGiR1JuX4jOef7fW", "UserInfoHTTPMethod": "b2zgt6aK1WAeKciY", "scopes": ["V99WovGsFzUjks1N", "XHWqhruvBKcMP2Ih", "ENoXTmk25jxwtlde"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 138 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'DRKzvpmIsLcT8e3l' \
    --body '{"affectedClientIDs": ["mKtkeAccIyZ9YiFT", "Hq7WBqAI9f6ts12Y", "a5sTtHgA9IkdX0VV"], "assignedNamespaces": ["61SPVVkmdHFCmrEv", "Ey7t1ZpokD6TLpIA", "vX3j5EVXEutFILuI"], "domain": "VPCNg34fUrA5Gfc2", "roleId": "M6xvXAzXbdiBsSOC"}' \
    > test.out 2>&1
eval_tap $? 138 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 139 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'YTsy2LQeRlaplk7Q' \
    --body '{"domain": "GqHbzQvvdRgwayO1"}' \
    > test.out 2>&1
eval_tap $? 139 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 140 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'ZAkbB4gb6hsfJnaR' \
    > test.out 2>&1
eval_tap $? 140 'RetrieveSSOLoginPlatformCredential' test.out

#- 141 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'Mu3GOvOIj8PydTLj' \
    --body '{"acsUrl": "OOHu8dRbgdq3zVWm", "apiKey": "fOogtSalKoZbAeGq", "appId": "bJVPP5cUNZNeLdYb", "federationMetadataUrl": "4fCmoO2reB99tOKb", "isActive": false, "redirectUri": "ob1yuBKoUO2eE1Hd", "secret": "vqLjawdb5DToV0NV", "ssoUrl": "scg13K1SI7vcfAag"}' \
    > test.out 2>&1
eval_tap $? 141 'AddSSOLoginPlatformCredential' test.out

#- 142 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'qMQsg7Hn4SQrqJ5E' \
    > test.out 2>&1
eval_tap $? 142 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 143 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'c6lQibVoULf4FfGB' \
    --body '{"acsUrl": "PIk4tIf6vQm2Ar1g", "apiKey": "zk7C7rlREYXQrq3o", "appId": "s96PznxJwXlwTPaf", "federationMetadataUrl": "leyoXyOTFVuFpakt", "isActive": false, "redirectUri": "f0R1PKrTaoyHvzBe", "secret": "6BJqOOms3sPH0EcN", "ssoUrl": "Aj25Il6ABcPSNAp5"}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateSSOPlatformCredential' test.out

#- 144 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'psN3TEqmsSVwL9OZ' \
    --rawPID 'true' \
    --body '{"platformUserIds": ["dEqDPDqwnTqdvuZn", "K4f5JxGGjIsJtlgR", "XAR4gkBSgsihF9P9"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 145 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'fFbc6tR9Rw1GMpTN' \
    --platformUserId 'mGXxjkn69KHhDxji' \
    > test.out 2>&1
eval_tap $? 145 'AdminGetUserByPlatformUserIDV3' test.out

#- 146 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'xdTdfWJSJQNN1ALT' \
    --after '82' \
    --before '54' \
    --limit '41' \
    > test.out 2>&1
eval_tap $? 146 'GetAdminUsersByRoleIdV3' test.out

#- 147 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'UMI6qQ7xYCLDLFQF' \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByEmailAddressV3' test.out

#- 148 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'bk0FzKT5oXYmV4U8' \
    --body '{"bulkUserId": ["d4bZfaJzVDCpvmq0", "UiL8SckRLi0AGrmC", "2ii3QHqRTBbKZCWU"]}' \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserBanV3' test.out

#- 149 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["8nKmKiAUq5jPXZNy", "sJIXHgR9wTSSmJfP", "3GAownVDRuaRxT14"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminListUserIDByUserIDsV3' test.out

#- 150 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["xkvfTn5fllaBu92H", "epg0DMDer5n702Q3", "DLgWckV74GdBiklC"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminBulkGetUsersPlatform' test.out

#- 151 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["Yj2nrE8foFjmMpwM", "m7yYKgB4ruggXbMi", "ZHgZmnuJB7Npvx0h"], "isAdmin": false, "namespace": "BOumNe0a7Xn8peR1", "roles": ["1C6SWTKv4AvtjXMg", "ahxQp7LWs762HSdv", "kgWqLJF5Cog7zTi1"]}' \
    > test.out 2>&1
eval_tap $? 151 'AdminInviteUserV3' test.out

#- 152 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '67' \
    --platformUserId '2C8DUWA34Q72u496' \
    --platformId 'sc9dPIbZ0TgaG6vT' \
    > test.out 2>&1
eval_tap $? 152 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 153 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUsersV3' test.out

#- 154 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'BHyh9YJ9w1eO21CY' \
    --endDate 'pLmAEgCx0XTc67ta' \
    --includeTotal 'false' \
    --limit '45' \
    --offset '86' \
    --platformBy 'lBBNHTKukssFSl1U' \
    --platformId 'JJMiX4fArrKqq2M2' \
    --query '4sGFNOLYYQZTIwUl' \
    --startDate 'pECgydtXrbrdEH8u' \
    --testAccount 'false' \
    > test.out 2>&1
eval_tap $? 154 'AdminSearchUserV3' test.out

#- 155 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["DKP6js1DpHCtm46a", "aVubXqSy9xXYcZ2C", "La4uCeSnOCg4jkNC"]}' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserByEmailAddressV3' test.out

#- 156 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'he0Az51MyGMYgMWK' \
    > test.out 2>&1
eval_tap $? 156 'AdminGetUserByUserIdV3' test.out

#- 157 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FEtIX2RfRphHhq26' \
    --body '{"avatarUrl": "AyL6JkhYSEGohpmg", "country": "0aNovwBqpnYrcPM2", "dateOfBirth": "WWl6j4L4ownvvUX6", "displayName": "xjtaskzOBX05N952", "languageTag": "tViLmX0y4d9wzg74", "userName": "hDciA0rRPVtzGuwN"}' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpdateUserV3' test.out

#- 158 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'GCbjVUj9kvR8IItk' \
    --activeOnly 'false' \
    --after '99tsWzwQ5eKwbeeF' \
    --before 'iInHurj8T91PGp0W' \
    --limit '41' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserBanV3' test.out

#- 159 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WgdvNllnuQSI6JD1' \
    --body '{"ban": "fzzjMEG828234ipb", "comment": "8LWs1STYeMaOz3tC", "endDate": "ibGWJ7LufNMrPzvl", "reason": "DF1gKP8rmX3ZZok0", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 159 'AdminBanUserV3' test.out

#- 160 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId '3zGLc8vDo986ppsM' \
    --namespace $AB_NAMESPACE \
    --userId 'Z0lC1YmJ7YNtDXE3' \
    --body '{"enabled": false, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserBanV3' test.out

#- 161 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'MxLszehJUSoiEPJP' \
    --body '{"context": "vYhBExruYiCvkxp2", "emailAddress": "dznGaHpA7a1qc1AN", "languageTag": "sKquZQRVRbPl6I1l"}' \
    > test.out 2>&1
eval_tap $? 161 'AdminSendVerificationCodeV3' test.out

#- 162 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PwCLBDE2gOKirQgf' \
    --body '{"Code": "SigaeU5YdQQnCIdA", "ContactType": "RT5UmpzASZd29KHC", "LanguageTag": "NYj2M7K8dIV58HVL", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 162 'AdminVerifyAccountV3' test.out

#- 163 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'XnmiF1lXdwzl938W' \
    > test.out 2>&1
eval_tap $? 163 'GetUserVerificationCode' test.out

#- 164 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tQ8c6D0SHkuOqC1p' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserDeletionStatusV3' test.out

#- 165 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'w0NPYjvJXIMtIU1z' \
    --body '{"deletionDate": 37, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserDeletionStatusV3' test.out

#- 166 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LbjsWedHSAwsHUBh' \
    --body '{"code": "0FDNRRHLf4Bw2BQv", "country": "KuJXUx8IWDXwTkhX", "dateOfBirth": "z4B95vq87l1uKpuR", "displayName": "GiHA3VNStBSaMdCs", "emailAddress": "9pq6xTqTmfTCCBfm", "password": "ynBGa4cFs6FREn1v", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 166 'AdminUpgradeHeadlessAccountV3' test.out

#- 167 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eX2vuqZHJdsODdOr' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserInformationV3' test.out

#- 168 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FTmWq8vhntjoTJjc' \
    --after '0.5693265055135267' \
    --before '0.4909093609786086' \
    --limit '82' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserLoginHistoriesV3' test.out

#- 169 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vCTkRhg9pAVSNEMw' \
    --body '{"languageTag": "5QppO9K6YhrBCdhm", "newPassword": "rjuJKsYpDI9GAiPV", "oldPassword": "IWbio0lNp9eNsT3f"}' \
    > test.out 2>&1
eval_tap $? 169 'AdminResetPasswordV3' test.out

#- 170 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WIXHpbtwBS15NPZc' \
    --body '{"Permissions": [{"Action": 88, "Resource": "WatMINRaXKv5KH4P", "SchedAction": 2, "SchedCron": "3h5H7U0nW5FW88gw", "SchedRange": ["M5sdvOt7bHTL7UQd", "UPwjjDavel4dqeNC", "zXjR5flRF4Kb9nZb"]}, {"Action": 26, "Resource": "X6a9ududevJmOC1s", "SchedAction": 29, "SchedCron": "ftUnm7HuiKoxtFyy", "SchedRange": ["xtQj6oEdMJTfBDbS", "m4VNgfZE70EXJC4B", "5G3x25N5isv7RWII"]}, {"Action": 11, "Resource": "9yrSy4YwzCnlCbfz", "SchedAction": 44, "SchedCron": "yWVDp7pHEfbvZGxn", "SchedRange": ["pH5MTfVIxmJ9hdJp", "ZhPH6wpQFS8cJeGS", "sS1vjQZrCHS9vFlI"]}]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminUpdateUserPermissionV3' test.out

#- 171 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dtIGgzyRQo1JB4hk' \
    --body '{"Permissions": [{"Action": 34, "Resource": "60hjUdewVq6jtKKx", "SchedAction": 63, "SchedCron": "ouwh3ZupIIgMSsYX", "SchedRange": ["gbcYZ1wIGdvVwO3r", "2XzBxRFtjHABpvJr", "7O0UsrtzmJZltj6H"]}, {"Action": 19, "Resource": "jtCOvK2bCTtO6KZ1", "SchedAction": 27, "SchedCron": "3H9YGsWVAiv3tkAF", "SchedRange": ["iIqffcFzwLfxSwoc", "SIivpxki1oJh3jPk", "7mBUj6GM3cExxDND"]}, {"Action": 98, "Resource": "qm07ia2DOdLSrhZs", "SchedAction": 69, "SchedCron": "RIapbxy4whYeYaYe", "SchedRange": ["LMHSWbPVU44pZGqZ", "k1jtF8cpIpoaa7jt", "KPaTaBgZRMGkiYAX"]}]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminAddUserPermissionsV3' test.out

#- 172 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'cq1dtygulqOfFkbq' \
    --body '[{"Action": 49, "Resource": "m0GJ5MGlQdZ8f11a"}, {"Action": 47, "Resource": "vKwHtupNAfwsJKRf"}, {"Action": 64, "Resource": "676YNN3ev4nPdJXI"}]' \
    > test.out 2>&1
eval_tap $? 172 'AdminDeleteUserPermissionBulkV3' test.out

#- 173 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '90' \
    --namespace $AB_NAMESPACE \
    --resource 'k8WGl3kGHjXON81x' \
    --userId '0mO6znXbqP8XCnEp' \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserPermissionV3' test.out

#- 174 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '1eiEF8esJQC9Pj7g' \
    --after 'OQN5qe68D60tAObI' \
    --before '6RrHXa4qyo5RERve' \
    --limit '33' \
    --platformId 'xvUv8Flv95tlecyW' \
    > test.out 2>&1
eval_tap $? 174 'AdminGetUserPlatformAccountsV3' test.out

#- 175 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'fOmSOoDapMVyAnR6' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetListJusticePlatformAccounts' test.out

#- 176 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'EsBwhBSN5JAwlDfN' \
    --userId '5X4mu10PFWYGWjvl' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserMapping' test.out

#- 177 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '9fF8kWPxLdGjol0A' \
    --userId 'G9HfiKoKLdrpRJjk' \
    > test.out 2>&1
eval_tap $? 177 'AdminCreateJusticeUser' test.out

#- 178 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'o9HEVlHQspU8MA88' \
    --skipConflict 'false' \
    --body '{"platformId": "oeoaFhBmEC3wkxba", "platformUserId": "EbDBMFFwuRm0iYxj"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminLinkPlatformAccount' test.out

#- 179 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'cu8b42SiLOhF1is7' \
    --userId 'MlKfiBuUtsirBgxy' \
    --body '{"platformNamespace": "utICnbKqbnpI4S8H"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminPlatformUnlinkV3' test.out

#- 180 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'md61svzWDEw0z1mG' \
    --userId 'voYgwDQiYB2yHC8E' \
    --ticket '37JiFB60YQ6Zvayv' \
    > test.out 2>&1
eval_tap $? 180 'AdminPlatformLinkV3' test.out

#- 181 AdminDeleteUserLinkingHistoryByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingHistoryByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'elazRCjVQR9cUqiy' \
    --userId 'qs3RYpjeyakIIVsE' \
    > test.out 2>&1
eval_tap $? 181 'AdminDeleteUserLinkingHistoryByPlatformIDV3' test.out

#- 182 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'KA4x9Fb2pVei38oX' \
    --userId 'GPGxkFU8FiiBr90V' \
    --platformToken 'MRNJOVcI396ACpa7' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 183 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'Dhvq5ktLYsz8oITU' \
    --userId 'hgTHq6PuCTe4Tc02' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetUserSinglePlatformAccount' test.out

#- 184 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'qlrLgbswJp8Y31RL' \
    --body '["MDKu791WLEAG499Q", "oo8TnJJqmLX0RImn", "EHDcXDMvQIxVrCNm"]' \
    > test.out 2>&1
eval_tap $? 184 'AdminDeleteUserRolesV3' test.out

#- 185 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId '6AlvD9uw7aBKaoxZ' \
    --body '[{"namespace": "WjMbxf7ycTo4umeX", "roleId": "uUJastuPGRXIU58q"}, {"namespace": "Db7x3KqGXnKUEIEo", "roleId": "br10zhXHeKG5L32n"}, {"namespace": "CauROCdXu7fgki25", "roleId": "ogg64yPkmEc9g0Ef"}]' \
    > test.out 2>&1
eval_tap $? 185 'AdminSaveUserRoleV3' test.out

#- 186 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId '5LY123RD0fYSKY91' \
    --userId 'vjM1Ab9ypyONfbWc' \
    > test.out 2>&1
eval_tap $? 186 'AdminAddUserRoleV3' test.out

#- 187 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'eKkJV4vITK9qm5uW' \
    --userId 'TWUFknguw7RKK0eY' \
    > test.out 2>&1
eval_tap $? 187 'AdminDeleteUserRoleV3' test.out

#- 188 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'IabPFuz08Ib2Z52A' \
    --body '{"enabled": true, "reason": "ct10d5DQzHpz5F1q"}' \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserStatusV3' test.out

#- 189 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'gZAxmJBJiTMwUvga' \
    --body '{"emailAddress": "uGcJk5KuYjqSPOPU", "password": "PySeInElDglDTle9"}' \
    > test.out 2>&1
eval_tap $? 189 'AdminTrustlyUpdateUserIdentity' test.out

#- 190 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jdVKzELlZkvVklig' \
    > test.out 2>&1
eval_tap $? 190 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 191 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId '04D1VRXL1s2x6kak' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "6p085va9gMEmvntv"}' \
    > test.out 2>&1
eval_tap $? 191 'AdminUpdateClientSecretV3' test.out

#- 192 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after '63MlDzqEDPZyHKry' \
    --before 'DrkTLluKsrSPNRCt' \
    --isWildcard 'true' \
    --limit '50' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetRolesV3' test.out

#- 193 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "managers": [{"displayName": "i0SIAn9WVcwJ3RZu", "namespace": "0tpp3ypH0XYquHN3", "userId": "duTcfDJsgUjgehNf"}, {"displayName": "HQLE5Z1MOhDif65b", "namespace": "CbDICK2lhc4Nac6o", "userId": "13dm8ciWYAXR90hm"}, {"displayName": "Ox0UOeJ6eh8Kc5vL", "namespace": "MkWHfB4eRPPtbBGE", "userId": "5MpCUVvRQcbJehwH"}], "members": [{"displayName": "6JkrE0gHI7nMhpsg", "namespace": "APpkw3OFENunfeuz", "userId": "EkVd3BF4uk5gxRIa"}, {"displayName": "6VcomlvIU8Btcpgl", "namespace": "ybNIYxDsBNwRGwSO", "userId": "mJDAb2oB8UmfGbLn"}, {"displayName": "Kn6HEGSWE34ZA09j", "namespace": "JiWV2xZyzRrFKd7G", "userId": "7Wi0QWD5CZ9QFa6C"}], "permissions": [{"action": 27, "resource": "VXsOxLDLacNpYRdC", "schedAction": 48, "schedCron": "JN52tqqy7gEK3WxS", "schedRange": ["DHqKAK8TKKUbG46o", "pBo96ffmY2gPgtoQ", "JsEoW1mOBtXt2IYc"]}, {"action": 62, "resource": "q0jXXTAoJrPy3yT0", "schedAction": 48, "schedCron": "HeEkZs2E9ldMpVEY", "schedRange": ["E3MK39QeyZMHo58h", "fy5EcjVZjHD1QLqn", "xNFgSdxFJVsCKLcJ"]}, {"action": 3, "resource": "dqlgjQCeWgymgt1s", "schedAction": 24, "schedCron": "BBLzg7kIngnwZeug", "schedRange": ["ViaXEJyrHym7HE7j", "BXTwnyCk5WL7KWv8", "JqqsMd62pyxZgLQg"]}], "roleName": "SFnaK14yenpw3TUt"}' \
    > test.out 2>&1
eval_tap $? 193 'AdminCreateRoleV3' test.out

#- 194 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'Wvd7VkiIBS8LijQT' \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleV3' test.out

#- 195 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId '233CSanz3AAAdgA2' \
    > test.out 2>&1
eval_tap $? 195 'AdminDeleteRoleV3' test.out

#- 196 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId '18nKFW7KMClY5pTp' \
    --body '{"deletable": false, "isWildcard": false, "roleName": "MxsVmWB2abnNj5wg"}' \
    > test.out 2>&1
eval_tap $? 196 'AdminUpdateRoleV3' test.out

#- 197 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'ikHmGRXB3UTcg6pS' \
    > test.out 2>&1
eval_tap $? 197 'AdminGetRoleAdminStatusV3' test.out

#- 198 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'RwZtP17yz2JZUvFt' \
    > test.out 2>&1
eval_tap $? 198 'AdminUpdateAdminRoleStatusV3' test.out

#- 199 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'GPcdEvBlWZwOFRLT' \
    > test.out 2>&1
eval_tap $? 199 'AdminRemoveRoleAdminV3' test.out

#- 200 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'OLauvinDRzbfXwsB' \
    --after 'XxoBRhflELTg2Bj5' \
    --before 'pU9qieAGH9Da4AoL' \
    --limit '74' \
    > test.out 2>&1
eval_tap $? 200 'AdminGetRoleManagersV3' test.out

#- 201 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'pV0tqdaMrpJ34rcd' \
    --body '{"managers": [{"displayName": "cLKCAFmpAe7vjJUn", "namespace": "rInKDNT1hIOl34km", "userId": "BWBoJT3O5DpqH4ag"}, {"displayName": "dz739MHOzpLjXKJx", "namespace": "PbmwP8QXh1pLqBxO", "userId": "XggdmiJP5mUQfhTC"}, {"displayName": "C5j4Nsz5pbQK9444", "namespace": "chVTyhucy1kVbEOH", "userId": "KWTQHIdVSZ1ZLWWg"}]}' \
    > test.out 2>&1
eval_tap $? 201 'AdminAddRoleManagersV3' test.out

#- 202 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'qOfEdSQFyYpZrPVa' \
    --body '{"managers": [{"displayName": "iTlMQXUUtbCKzhNb", "namespace": "BPPYaqaQJRRtLh6C", "userId": "0xWBNhs3XXRkrxDG"}, {"displayName": "W3Fq36p8Sx63uAWt", "namespace": "6Kyr32P48bbMNTAP", "userId": "5toloIgEsXE7CS7Q"}, {"displayName": "QPMdkbJx7DN71sWT", "namespace": "ALKsHwDpbf5yk5Bv", "userId": "YEQYElJGxLBVARPt"}]}' \
    > test.out 2>&1
eval_tap $? 202 'AdminRemoveRoleManagersV3' test.out

#- 203 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'tNIGCHvfgFI05dpD' \
    --after 'fFpCmxQHkx0Yhq9a' \
    --before 'cBe3xQ28XnWqlcjE' \
    --limit '24' \
    > test.out 2>&1
eval_tap $? 203 'AdminGetRoleMembersV3' test.out

#- 204 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 't6KdpJguJ79MjpfO' \
    --body '{"members": [{"displayName": "WyDX8agc3U68XKxc", "namespace": "W9GdWJCnRKE1GAwK", "userId": "9MkGcMKw5junhoaQ"}, {"displayName": "aPOrt8hxSeuYONS2", "namespace": "Dkf7PF2ibeYL00sG", "userId": "ZCZx53XnSdWkEljg"}, {"displayName": "UcY4APII1dRPJodx", "namespace": "YuKafqZdvJzUbv4l", "userId": "cbiKj738gkHVfrh1"}]}' \
    > test.out 2>&1
eval_tap $? 204 'AdminAddRoleMembersV3' test.out

#- 205 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'EqvTaS84qMuFa7Ea' \
    --body '{"members": [{"displayName": "QNRdSxRTv7KUEWZC", "namespace": "AXlPGSDLttQjxKRT", "userId": "0kS4ztAya8knGl5Z"}, {"displayName": "3JwUbC07pEjY53D7", "namespace": "jIahZXQ4oZ7AVIHP", "userId": "8kDDKgOxUZ2UMCJ9"}, {"displayName": "dzQLDfPMNaGmAPjZ", "namespace": "JhiDOY7Rw9CREQHW", "userId": "m77wexYNbZb0S5YU"}]}' \
    > test.out 2>&1
eval_tap $? 205 'AdminRemoveRoleMembersV3' test.out

#- 206 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'xQmvi1gR7DgFYXHb' \
    --body '{"permissions": [{"action": 18, "resource": "ugu0hDUSnY7WUhwP", "schedAction": 86, "schedCron": "yReDqic11vaJGlAO", "schedRange": ["dT7WTLUXqzc7wsfk", "lVNiw7tCOmlBKVsB", "UmFn54ochpArB02Q"]}, {"action": 64, "resource": "uU0Cb7myq6mOBOZC", "schedAction": 32, "schedCron": "6GaBfrMxFR8z4lV4", "schedRange": ["b5sxgmLer4jT4teh", "xMQUZpEEa4vXQvFT", "MgiWy5dSlhViuRFB"]}, {"action": 69, "resource": "hBpyNC7zOE8xGHmd", "schedAction": 29, "schedCron": "wTMYNIkKqaPdxgsZ", "schedRange": ["yekdApHZrGo2hFcI", "qsq4tog0fmlLOWQY", "sG4K762WMjZJgJBe"]}]}' \
    > test.out 2>&1
eval_tap $? 206 'AdminUpdateRolePermissionsV3' test.out

#- 207 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId '25nlrODDt2r7GFRh' \
    --body '{"permissions": [{"action": 26, "resource": "sWs1DetzWI0MFWOM", "schedAction": 73, "schedCron": "JvkGxyc8mAb2ixM3", "schedRange": ["qJLaSI3Fvlfqle6F", "nQiGAduh1GsOfLO9", "MF2krf3Q710Al8xR"]}, {"action": 83, "resource": "2sCYdd4kGloNv5sZ", "schedAction": 83, "schedCron": "DlAIpPxsPEY5XIA5", "schedRange": ["mbRhnG2Z0PKbEQP8", "kR48O8xSOnI3fcyE", "jKUErZTqJM1TI6Tv"]}, {"action": 80, "resource": "6PPLK8tNgCHOr8TF", "schedAction": 33, "schedCron": "lbynFRLMLZpgy6A1", "schedRange": ["ZAk4YpwRd0QdQOxT", "NlyVqEGbGe5cWypN", "LLb9RBKTjRskchHg"]}]}' \
    > test.out 2>&1
eval_tap $? 207 'AdminAddRolePermissionsV3' test.out

#- 208 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'QHuWIlgfHJoVqFgp' \
    --body '["arTSNhAea7TCTsIk", "JlxQwB40RnbO6RoK", "HJ1siJGT65C0oOVi"]' \
    > test.out 2>&1
eval_tap $? 208 'AdminDeleteRolePermissionsV3' test.out

#- 209 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '64' \
    --resource 'jGmubYBHawwKrK6n' \
    --roleId '3ve1nB0DvnTyyjxK' \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteRolePermissionV3' test.out

#- 210 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 210 'AdminGetMyUserV3' test.out

#- 211 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'RxKo8vefxJMIRWBq' \
    --extendExp 'true' \
    --redirectUri '7I8IO3JIxjH5Lsp2' \
    --password 'YKpSd3ENCDN5iEcY' \
    --requestId 'g6LuvByiEHdQcvwD' \
    --userName 'OhmVTwXee2iX8WzL' \
    > test.out 2>&1
eval_tap $? 211 'UserAuthenticationV3' test.out

#- 212 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'Lf1eFNHFNprwaUKM' \
    --linkingToken 'Bt96PnuIPPplCGWE' \
    --password 'PcQavVoY6llwxJOj' \
    --username 'iz64N6Y5G9v8IrsX' \
    > test.out 2>&1
eval_tap $? 212 'AuthenticationWithPlatformLinkV3' test.out

#- 213 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData '9opOy2FKxAQKAf0t' \
    --extendExp 'true' \
    --linkingToken 'q8UhTLn015SHFxn2' \
    > test.out 2>&1
eval_tap $? 213 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 214 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId '2EUAzhPTCTxa22HJ' \
    > test.out 2>&1
eval_tap $? 214 'RequestOneTimeLinkingCodeV3' test.out

#- 215 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'C54QypwMNeHxW51k' \
    > test.out 2>&1
eval_tap $? 215 'ValidateOneTimeLinkingCodeV3' test.out

#- 216 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'OIubPxIVGrxN9WNn' \
    --isTransient 'true' \
    --clientId 'j8TsnjuEwwsdJau4' \
    --oneTimeLinkCode 'bkV3aWGAjFHx7FnQ' \
    > test.out 2>&1
eval_tap $? 216 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 217 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 217 'GetCountryLocationV3' test.out

#- 218 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 218 'Logout' test.out

#- 219 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'ebC0jUg1HH3wWlnE' \
    > test.out 2>&1
eval_tap $? 219 'RequestTokenExchangeCodeV3' test.out

#- 220 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'HkK8zlCw0RpN6p52' \
    --userId 'Cwil6QmyhqNYQitU' \
    > test.out 2>&1
eval_tap $? 220 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 221 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '3u3IW6RhF8nQnSkV' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 221 'RevokeUserV3' test.out

#- 222 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'NdDAmrw77EMGkdlX' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'UcOe8hSxdK4xIynY' \
    --redirectUri 'gYPBREZloqKnxia3' \
    --scope '2lKDb3eE1JpDpin0' \
    --state 'YQJ6c8ZckdKMCKqw' \
    --targetAuthPage 'gJ9EUdw9W2jC6GlR' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId '6mkPVb7UdTFpgdaH' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 222 'AuthorizeV3' test.out

#- 223 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'iYqR7RbZz2YByQLR' \
    > test.out 2>&1
eval_tap $? 223 'TokenIntrospectionV3' test.out

#- 224 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 224 'GetJWKSV3' test.out

#- 225 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'DZ9FessiT5GeKrQs' \
    --factor 'Y3Qn0SVTl4Sd5Jfg' \
    --mfaToken 'cQXJqPswUwHBFuQW' \
    > test.out 2>&1
eval_tap $? 225 'SendMFAAuthenticationCode' test.out

#- 226 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'mxol1I1ZGvSVlAC7' \
    --mfaToken 'a5pRtnanHKkdmeIz' \
    > test.out 2>&1
eval_tap $? 226 'Change2faMethod' test.out

#- 227 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'U7rFJAuYAqE2OvNf' \
    --factor 'oZfVVb9wNl9XNn6Z' \
    --mfaToken 'kWflNIHp8DMY3qzH' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 227 'Verify2faCode' test.out

#- 228 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'VA2FSGdWR13hFcrc' \
    --userId 'PF3G8oZQwxnIW51h' \
    > test.out 2>&1
eval_tap $? 228 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 229 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'HBZoHhO8HYFJbwfT' \
    --clientId 'Zl8dLpukr5uoslCR' \
    --redirectUri 'wOw3KTfrECUsWbkH' \
    --requestId 'EwNZtKsHq9iAuUHZ' \
    > test.out 2>&1
eval_tap $? 229 'AuthCodeRequestV3' test.out

#- 230 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'VWxTpWEz4TfsELyc' \
    --additionalData '1LhLL4rV0cbrENV8' \
    --clientId 'yoYi5NiMy33yrcKd' \
    --createHeadless 'false' \
    --deviceId 'il5NbW7guBaXXzbW' \
    --macAddress 'sarHIwQL3clySHrf' \
    --platformToken '4R40DbJL5r2jGrIT' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 230 'PlatformTokenGrantV3' test.out

#- 231 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 231 'GetRevocationListV3' test.out

#- 232 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token '0iYa2lnPwwQx9J1Y' \
    > test.out 2>&1
eval_tap $? 232 'TokenRevocationV3' test.out

#- 233 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'pspc' \
    --simultaneousTicket 'Ip8O9Nggv0oqYtGJ' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'D5ZadiutMgClHGK0' \
    > test.out 2>&1
eval_tap $? 233 'SimultaneousLoginV3' test.out

#- 234 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'VqnQY4xCJM6aajtd' \
    --clientId 'QsLuJUgsYFaDKJ36' \
    --code 'aLPalecKRQVYDslK' \
    --codeVerifier 'eO8m3R19mQM6NAMO' \
    --extendNamespace 'BbTzc08fEpQ6OL6K' \
    --extendExp 'true' \
    --password 'nAAuTuEUBLNGfnAo' \
    --redirectUri 's9XpTh0Kej1KovCp' \
    --refreshToken 'HJMrOnlXHZlWDZaL' \
    --username 'QPbPUzKfsKp6hPIQ' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 234 'TokenGrantV3' test.out

#- 235 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'S2q1vV3dLMkz8fKn' \
    > test.out 2>&1
eval_tap $? 235 'VerifyTokenV3' test.out

#- 236 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'E1sMluPii5ENw2MO' \
    --code 'uPFK0qq6a3OAG7d8' \
    --error 'IUfmPVZN4LMh4BXr' \
    --openidAssocHandle '74NjVvcqHQWZP5mI' \
    --openidClaimedId '6a40msQxOuVlmLcW' \
    --openidIdentity 'e84cg1FJv9m1gQFZ' \
    --openidMode 'c0uJOYHivVOt24nG' \
    --openidNs 'i0DpEyQHm3nkHfFr' \
    --openidOpEndpoint 'GLm7NRoHaBfvibwZ' \
    --openidResponseNonce 'fyNbHGtDiLvIj86r' \
    --openidReturnTo 'ajlCXIEBP1ZMidOK' \
    --openidSig 'jSjmbkzqPL602HeJ' \
    --openidSigned 'Ww5ijaoBrla10qgP' \
    --state 'gHnIPHXnICH7mCru' \
    > test.out 2>&1
eval_tap $? 236 'PlatformAuthenticationV3' test.out

#- 237 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'HHumu9faRq3diXkA' \
    --platformToken 'SU33TcKks9luodcd' \
    > test.out 2>&1
eval_tap $? 237 'PlatformTokenRefreshV3' test.out

#- 238 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode 'kU9EA3Zdu79ioILI' \
    > test.out 2>&1
eval_tap $? 238 'PublicGetInputValidations' test.out

#- 239 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'Hvj8eQFyOc0Md4N0' \
    > test.out 2>&1
eval_tap $? 239 'PublicGetInputValidationByField' test.out

#- 240 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'GeUdalbWsWPmpiSJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 240 'PublicGetCountryAgeRestrictionV3' test.out

#- 241 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 241 'PublicGetCountryListV3' test.out

#- 242 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 242 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 243 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'vS98B1uEm9aUOZec' \
    > test.out 2>&1
eval_tap $? 243 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 244 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'jqarJBuKS5kgNpJq' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["Qg3Lfs0IJ8HwpVCx", "d9CYyWwef8r25lmS", "EghhEfCCej4je0r6"]}' \
    > test.out 2>&1
eval_tap $? 244 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 245 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'QukHfB2s8S8fVEhz' \
    --platformUserId '40OteLSS7U4A21z8' \
    > test.out 2>&1
eval_tap $? 245 'PublicGetUserByPlatformUserIDV3' test.out

#- 246 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'Ltiefxr3Cj93qDZ7' \
    > test.out 2>&1
eval_tap $? 246 'PublicGetAsyncStatus' test.out

#- 247 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '2MibAJQUBlct55DL' \
    --limit '38' \
    --offset '23' \
    --platformBy 'mXW0TIdCDt0KDTJU' \
    --platformId '9Nbqv2YpX3U0Xq48' \
    --query 'd1jGAAzA6FwN4CXs' \
    > test.out 2>&1
eval_tap $? 247 'PublicSearchUserV3' test.out

#- 248 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "xwc6x2m6U1YwiMmT", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "g9qXfvBZ5D4LKYgt", "policyId": "0ZdYKXMt13Ct0syK", "policyVersionId": "DBRVG2HJSlK7VzI0"}, {"isAccepted": true, "localizedPolicyVersionId": "ESIyHoZuVSBpR3JI", "policyId": "jssgylxBSRfb6ldS", "policyVersionId": "bBjxsVE9FB8sxh4j"}, {"isAccepted": true, "localizedPolicyVersionId": "bAkW9vYf4HjZr3fz", "policyId": "ND46qe6OwznhyIt7", "policyVersionId": "97bEgljGIv8htEaM"}], "authType": "JDdX0lFIjeI2W22Z", "code": "X7Gk46EsjYm0a7wF", "country": "vCk9YNKNtwbsQgcO", "dateOfBirth": "4XPNoZxByyAn0Xuu", "displayName": "RAIFqFNi2VYxaWzM", "emailAddress": "wUuvglJ1BeETW6iG", "password": "4OWsHEVTIfKQJ3K1", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 248 'PublicCreateUserV3' test.out

#- 249 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field '6QNtYv3YR0IHBuhf' \
    --query 'LteYn62D6p3wZR9y' \
    > test.out 2>&1
eval_tap $? 249 'CheckUserAvailability' test.out

#- 250 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["MPz8oWhMQ2r5npzo", "NImV0AVDaRtpr3AI", "10niXjzhxPpz6PYR"]}' \
    > test.out 2>&1
eval_tap $? 250 'PublicBulkGetUsers' test.out

#- 251 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "pc7MhxRCdwscl20o", "languageTag": "9n00szVUlog8Owg0"}' \
    > test.out 2>&1
eval_tap $? 251 'PublicSendRegistrationCode' test.out

#- 252 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "dmwI65BsJBN1Fyqq", "emailAddress": "TFOK11NYJhUuA3Aj"}' \
    > test.out 2>&1
eval_tap $? 252 'PublicVerifyRegistrationCode' test.out

#- 253 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "aTVjBaffEYExvwsR", "languageTag": "3B2qm7tOEdvmAnw9"}' \
    > test.out 2>&1
eval_tap $? 253 'PublicForgotPasswordV3' test.out

#- 254 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'aQVBIpjusRhWDYcv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 254 'GetAdminInvitationV3' test.out

#- 255 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'm62YBcyTpOqQdCM8' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "UDWqNn6geNvviyUa", "policyId": "85TjdhICqKeedoXR", "policyVersionId": "lmhrcfHGM3jP37xe"}, {"isAccepted": true, "localizedPolicyVersionId": "lzLFKLKru1E24IYc", "policyId": "PQNHZpEs8n202fQC", "policyVersionId": "2AyeDpKw6gpjGZ9F"}, {"isAccepted": true, "localizedPolicyVersionId": "3tA0Yg1pdmDfXW5h", "policyId": "ivAKmz9bIYuaiXXS", "policyVersionId": "7bBsgU8vOVxZoGpd"}], "authType": "EMAILPASSWD", "country": "msnd1aTV5NtMXmss", "dateOfBirth": "jJNMVySmzeRD7vKm", "displayName": "ISDELX7q8m7z5ycg", "password": "aTWD6OCauGKgKKvr", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 255 'CreateUserFromInvitationV3' test.out

#- 256 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "sW0oabJ2wD73LS3T", "country": "bIF5OfDzVxWfS5bc", "dateOfBirth": "txOkGoIhKJRx3m3V", "displayName": "jVnKppoRonVjCC2c", "languageTag": "kOJXHo1I5tXwvLOO", "userName": "SFz0q6ODwRnGNPAM"}' \
    > test.out 2>&1
eval_tap $? 256 'UpdateUserV3' test.out

#- 257 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "0IQxVRtLpc4tSGwI", "country": "fk5fn6FCn1NsQzZr", "dateOfBirth": "uJdAnfPONxlC4zgJ", "displayName": "jh60ihUzuM2xjkkE", "languageTag": "HzGiXRdE2LV9Nb02", "userName": "wsfDGqdydcf6BJZd"}' \
    > test.out 2>&1
eval_tap $? 257 'PublicPartialUpdateUserV3' test.out

#- 258 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "akbp1Q4a9SmHHj4L", "emailAddress": "FusMHobO8RxVG8Ty", "languageTag": "YzDTIMlsucLpVoHO"}' \
    > test.out 2>&1
eval_tap $? 258 'PublicSendVerificationCodeV3' test.out

#- 259 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "MW6MdrGn8Pi2lK3J", "contactType": "ym1Bxx5shk9NMbXC", "languageTag": "0hm6zQdfZKOKhQRu", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 259 'PublicUserVerificationV3' test.out

#- 260 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "AZjX8YSMnVJEvNQo", "country": "VYmPqDTzZeO7AI3z", "dateOfBirth": "mHLc9A1xNZgmdYDJ", "displayName": "ize3hlhxAka536Qp", "emailAddress": "bH0nbLosIuyiNZF5", "password": "f0XAmaNT3M16rgKR", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 260 'PublicUpgradeHeadlessAccountV3' test.out

#- 261 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "WByRWeca9KMaSMnT", "password": "Y3R33DqFAHGKOril"}' \
    > test.out 2>&1
eval_tap $? 261 'PublicVerifyHeadlessAccountV3' test.out

#- 262 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "FBxmF5wQKBR7BFwg", "newPassword": "MOorsS8OZBjSRHXD", "oldPassword": "Iux9WSZys3tzqWos"}' \
    > test.out 2>&1
eval_tap $? 262 'PublicUpdatePasswordV3' test.out

#- 263 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '9fb1yFWLoytSjGCd' \
    > test.out 2>&1
eval_tap $? 263 'PublicCreateJusticeUser' test.out

#- 264 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Uw3pVUSvkl5HWGAW' \
    --redirectUri 'qdq4ILnZM1NtGpAm' \
    --ticket 'ZOlqHl3QJyvIDqwq' \
    > test.out 2>&1
eval_tap $? 264 'PublicPlatformLinkV3' test.out

#- 265 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'WOgMHmGesuOpaWkz' \
    --body '{"platformNamespace": "5An1PsfjuM91MJGs"}' \
    > test.out 2>&1
eval_tap $? 265 'PublicPlatformUnlinkV3' test.out

#- 266 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'mvInkwYYAUqDkZVD' \
    > test.out 2>&1
eval_tap $? 266 'PublicPlatformUnlinkAllV3' test.out

#- 267 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'sH3Rmb9tcXRsyI6z' \
    --ticket 'RqwsxClbzpqN2SWa' \
    > test.out 2>&1
eval_tap $? 267 'PublicForcePlatformLinkV3' test.out

#- 268 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'BMXxfuxoVYjQ8lwe' \
    --clientId 'Dj5r3vDBCUtG0AGt' \
    --redirectUri 'sIrN4oQ6eNPaUp22' \
    > test.out 2>&1
eval_tap $? 268 'PublicWebLinkPlatform' test.out

#- 269 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'Ld9MekAQlZiwVZx9' \
    --code 'Thart3VJ7DczWehx' \
    --state 'Bt2Hrdn18ozjcQ4J' \
    > test.out 2>&1
eval_tap $? 269 'PublicWebLinkPlatformEstablish' test.out

#- 270 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId '3mn3vXEfddumlGwC' \
    --code 'c2Y2dOiVvACyPhz2' \
    --state 'Fc8wnvWgdolSKvRy' \
    > test.out 2>&1
eval_tap $? 270 'PublicProcessWebLinkPlatformV3' test.out

#- 271 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "m078SuRHVweLwq9b", "userIds": ["yvhCNmNyfEd17x65", "xpEfOFm0LoRDnm8U", "koU27EQX1k23YnQ9"]}' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetUsersPlatformInfosV3' test.out

#- 272 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "nnRg9vBdNa4ycW56", "emailAddress": "mApEwiOzDCftAOzl", "newPassword": "8Q5TSob1OqRI4Dgq"}' \
    > test.out 2>&1
eval_tap $? 272 'ResetPasswordV3' test.out

#- 273 PublicGetUserByUserIdV3
eval_tap 0 273 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 274 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rnPBmONH6jZFcXTX' \
    --activeOnly 'false' \
    --after 'yBx6dwvjxmvRvGtA' \
    --before 'WixZBjxzFwMr00Hs' \
    --limit '95' \
    > test.out 2>&1
eval_tap $? 274 'PublicGetUserBanHistoryV3' test.out

#- 275 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ABi2qD2hAOI1YMUl' \
    > test.out 2>&1
eval_tap $? 275 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 276 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gj9MeAeiCcovSPIF' \
    > test.out 2>&1
eval_tap $? 276 'PublicGetUserInformationV3' test.out

#- 277 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ooqwq2KTY577WwI1' \
    --after '0.5516722271345169' \
    --before '0.20652953666679896' \
    --limit '6' \
    > test.out 2>&1
eval_tap $? 277 'PublicGetUserLoginHistoriesV3' test.out

#- 278 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eafnb3F62sqxSrEE' \
    --after 'MvMg4IMJNGahrO0y' \
    --before 'LAsvhgPmGYyQkP59' \
    --limit '60' \
    --platformId 'paw64rc1gxBY2vbU' \
    > test.out 2>&1
eval_tap $? 278 'PublicGetUserPlatformAccountsV3' test.out

#- 279 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'qOJwJ0Un9wPnxBmM' \
    > test.out 2>&1
eval_tap $? 279 'PublicListJusticePlatformAccountsV3' test.out

#- 280 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'Ekkmsk8urfJwAGlp' \
    --body '{"platformId": "yXAvHgP9JAlnqLe5", "platformUserId": "quLbayksTK8A3vEY"}' \
    > test.out 2>&1
eval_tap $? 280 'PublicLinkPlatformAccount' test.out

#- 281 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId '9JfRw4uwEtPQyCFi' \
    --body '{"chosenNamespaces": ["lOcocWk05KIazHg5", "CWtcv3SZ9cuPBbK8", "Qv4KvF72ZF1v8C03"], "requestId": "1nWDaOIP0j0WZ0kl"}' \
    > test.out 2>&1
eval_tap $? 281 'PublicForceLinkPlatformWithProgression' test.out

#- 282 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZSez7G7LN3n2qL1g' \
    > test.out 2>&1
eval_tap $? 282 'PublicGetPublisherUserV3' test.out

#- 283 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'sB6sIsddki783CWA' \
    --password 'eo626Yd3r32YoqCR' \
    > test.out 2>&1
eval_tap $? 283 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 284 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'lslbiuHtsvllbSd5' \
    --before '1cMWQdJYes0Nt8ym' \
    --isWildcard 'false' \
    --limit '26' \
    > test.out 2>&1
eval_tap $? 284 'PublicGetRolesV3' test.out

#- 285 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'GIX6hVlf6KBxAxYu' \
    > test.out 2>&1
eval_tap $? 285 'PublicGetRoleV3' test.out

#- 286 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'false' \
    > test.out 2>&1
eval_tap $? 286 'PublicGetMyUserV3' test.out

#- 287 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'KMfvXg5DiM0BU26V' \
    > test.out 2>&1
eval_tap $? 287 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 288 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["j4SDIduiXUO3264I", "LtmkSKQdkSJ1Ns8U", "Qg9jJWiZ2WSKh4Jw"], "oneTimeLinkCode": "fuUJN3E3AcSEj57D"}' \
    > test.out 2>&1
eval_tap $? 288 'LinkHeadlessAccountToMyAccountV3' test.out

#- 289 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "5iUBEzFMAEWnjhW6"}' \
    > test.out 2>&1
eval_tap $? 289 'PublicSendVerificationLinkV3' test.out

#- 290 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'IVAfmhjVLtMKPHSv' \
    > test.out 2>&1
eval_tap $? 290 'PublicVerifyUserByLinkV3' test.out

#- 291 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'laorkq4k3uJEpPFX' \
    --code 'OQHdzItyJJ6aYRew' \
    --error 'AUt5n0aIT0FuIWcJ' \
    --state 'i9UL9RDSFPlnZzKd' \
    > test.out 2>&1
eval_tap $? 291 'PlatformAuthenticateSAMLV3Handler' test.out

#- 292 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId '9KsoTEaquwoOwXJ3' \
    --payload 'YAvtSV9mOjs4mKvX' \
    > test.out 2>&1
eval_tap $? 292 'LoginSSOClient' test.out

#- 293 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId '2ry2xQWBRzU2wPE5' \
    > test.out 2>&1
eval_tap $? 293 'LogoutSSOClient' test.out

#- 294 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData '32O8bYQ7dpL1qEK2' \
    --code 'C98KwzZYg3r3WZ0T' \
    > test.out 2>&1
eval_tap $? 294 'RequestTargetTokenResponseV3' test.out

#- 295 PlatformTokenRefreshV3Deprecate
eval_tap 0 295 'PlatformTokenRefreshV3Deprecate # SKIP deprecated' test.out

#- 296 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'daWtepHIJhtsJhIX' \
    > test.out 2>&1
eval_tap $? 296 'AdminGetDevicesByUserV4' test.out

#- 297 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType '3IXmYSt5cRoSPkOM' \
    --endDate 'kKcn9jwzMAbR3VkR' \
    --limit '5' \
    --offset '27' \
    --startDate 'cWVTmZ8vesuhXTp8' \
    > test.out 2>&1
eval_tap $? 297 'AdminGetBannedDevicesV4' test.out

#- 298 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ETOCzFFZnf98F5OE' \
    > test.out 2>&1
eval_tap $? 298 'AdminGetUserDeviceBansV4' test.out

#- 299 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "6DlvJQfWuP0tdraJ", "deviceId": "IEw5xcBB3jgmVEKA", "deviceType": "4GVF6ZkXiEsnQIaO", "enabled": false, "endDate": "7pKObITHJzq13fe8", "ext": {"b8FeRkolnqFC91PC": {}, "HjeAKxL77Lg0ke8I": {}, "UaT6opRtvnt9MmVS": {}}, "reason": "KJQJ0FRM9wmcEjqV"}' \
    > test.out 2>&1
eval_tap $? 299 'AdminBanDeviceV4' test.out

#- 300 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'ftrLivrHZAgej7GQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 300 'AdminGetDeviceBanV4' test.out

#- 301 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'vEjlojUMw4abCM25' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 301 'AdminUpdateDeviceBanV4' test.out

#- 302 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'H3B4riEMki8Apb8p' \
    --startDate 'o2UAVzRmYpSotcHK' \
    --deviceType 'yzZqBpsvjP6M7AnE' \
    > test.out 2>&1
eval_tap $? 302 'AdminGenerateReportV4' test.out

#- 303 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 303 'AdminGetDeviceTypesV4' test.out

#- 304 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'mxID7ruvAvNvZQzJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 304 'AdminGetDeviceBansV4' test.out

#- 305 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'YDwZTQDBhhgRRl9F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 305 'AdminDecryptDeviceV4' test.out

#- 306 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'RkV4FkXD3HJMh8iX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 306 'AdminUnbanDeviceV4' test.out

#- 307 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'zb5uCSw8hqzbCBr6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 307 'AdminGetUsersByDeviceV4' test.out

#- 308 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 40}' \
    > test.out 2>&1
eval_tap $? 308 'AdminCreateTestUsersV4' test.out

#- 309 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": true, "userIds": ["y2nzrNs3C7XQBGsQ", "Im0cMcsxk4kB8bUx", "ARwgRGd1akuwVqTN"]}' \
    > test.out 2>&1
eval_tap $? 309 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 310 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["PkwccPRWi5ICtDHr", "ihiqNEarYMFpqkFf", "2abOJK4KK2xgBgen"]}' \
    > test.out 2>&1
eval_tap $? 310 'AdminBulkCheckValidUserIDV4' test.out

#- 311 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'DCXa4G4yfszyfTDg' \
    --body '{"avatarUrl": "rtiiGUsBFx6B3524", "country": "bnk8nkyvtiX4PNoW", "dateOfBirth": "48jEHERZcWdt8x06", "displayName": "znEeaczKBG2AApKa", "languageTag": "WKuT0aXbhWeJpXHi", "userName": "pbc4iLYQI3ZT8B8s"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminUpdateUserV4' test.out

#- 312 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId '80TDdySZ8QetqQ4u' \
    --body '{"code": "504xibX4ytqgx578", "emailAddress": "IOFeh1CGB9oMFf1O"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminUpdateUserEmailAddressV4' test.out

#- 313 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'e1yNlQa7CnqdK62a' \
    > test.out 2>&1
eval_tap $? 313 'AdminDisableUserMFAV4' test.out

#- 314 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'bkYZ62VKsgWK1sb8' \
    > test.out 2>&1
eval_tap $? 314 'AdminListUserRolesV4' test.out

#- 315 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'tFPNqjAocaARDmEp' \
    --body '{"assignedNamespaces": ["iIthfeJJxVw8NJyW", "9iBTio4adxb5QcTO", "Q6HjU8SpLIkiuWTQ"], "roleId": "qhR7aouqk0Oh9UmA"}' \
    > test.out 2>&1
eval_tap $? 315 'AdminUpdateUserRoleV4' test.out

#- 316 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'FD17m5HSalUvxSYx' \
    --body '{"assignedNamespaces": ["U8Zm7sNQaxtEJhHr", "vKCCEZGC4AvPkNbc", "6LJrY7hiIDsMtYlt"], "roleId": "OKk8rlHc3TZiAKqU"}' \
    > test.out 2>&1
eval_tap $? 316 'AdminAddUserRoleV4' test.out

#- 317 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'j86S9hPd5o2qWrMd' \
    --body '{"assignedNamespaces": ["8tAWnXS9cIKsY3OP", "5WtrLUfX8jA0IPH8", "c4UDuNx3OkE91CCd"], "roleId": "tLc480uWNbmNMgCK"}' \
    > test.out 2>&1
eval_tap $? 317 'AdminRemoveUserRoleV4' test.out

#- 318 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'false' \
    --limit '31' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 318 'AdminGetRolesV4' test.out

#- 319 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "P3jB4LrWueq896L7"}' \
    > test.out 2>&1
eval_tap $? 319 'AdminCreateRoleV4' test.out

#- 320 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'eNMZ2FA9olZ26Hk6' \
    > test.out 2>&1
eval_tap $? 320 'AdminGetRoleV4' test.out

#- 321 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'yMRctx25ZVPDXGQN' \
    > test.out 2>&1
eval_tap $? 321 'AdminDeleteRoleV4' test.out

#- 322 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId '88A3G238efmQ9Vo0' \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "8NlX1DSBuzh6x9RQ"}' \
    > test.out 2>&1
eval_tap $? 322 'AdminUpdateRoleV4' test.out

#- 323 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'PxOi6h5xO0S5iEuB' \
    --body '{"permissions": [{"action": 28, "resource": "4mJ4NEFp0Nyhv72H", "schedAction": 53, "schedCron": "E8p1wOr4cDXiKEBa", "schedRange": ["WQEfGZQjDUOHllXi", "kYNlN2hiQ0b9IZNO", "GuQenweshPbjesxg"]}, {"action": 62, "resource": "0DSHomUDQx63avOo", "schedAction": 41, "schedCron": "eA5tst2D47TgoXFC", "schedRange": ["7Ap90MeIDp3qTe8i", "t6GSYkx6oWr2Upqw", "qmyXjpudZdkeioGQ"]}, {"action": 53, "resource": "8M98DyggKBPmLXL5", "schedAction": 58, "schedCron": "xUb5amsJ9rwQl37n", "schedRange": ["vfuEYm7IU6mDbCn5", "kmD7KmK2zF1vux4g", "NiIB1yZzgRo8fffR"]}]}' \
    > test.out 2>&1
eval_tap $? 323 'AdminUpdateRolePermissionsV4' test.out

#- 324 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'MYRtTj8kJKnWVLJR' \
    --body '{"permissions": [{"action": 82, "resource": "FUzwElXtJbopui3j", "schedAction": 65, "schedCron": "z1rcvEyGRZ33cFDP", "schedRange": ["8v9LW6vYmbiGbRZx", "7Bhm17AaiQVQjVgm", "qTMIq4J9gkHpyXbv"]}, {"action": 51, "resource": "DL4uWrO6gEiql9RQ", "schedAction": 44, "schedCron": "iXc04xtdMnjJsV0C", "schedRange": ["NYzCFjSqVPMALWGk", "jEdiO4oLOLDHiUUE", "da3S261Sp3W9GP7t"]}, {"action": 0, "resource": "E7W61xtLasg6vCJr", "schedAction": 41, "schedCron": "2LIYNHG6GyvpeFQ6", "schedRange": ["YD7dnkbFrhkUOxcl", "QWrnJswtjRr8kpJ0", "0OFvTbpINuE5ipIX"]}]}' \
    > test.out 2>&1
eval_tap $? 324 'AdminAddRolePermissionsV4' test.out

#- 325 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'd5Un9ulv5aTfdy1s' \
    --body '["vt0HqYB3tKDYxR08", "XoigH34Xlq2m2jkM", "dR8lStcHtcbFcpfu"]' \
    > test.out 2>&1
eval_tap $? 325 'AdminDeleteRolePermissionsV4' test.out

#- 326 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'KzJxOJnV3VyJZWUz' \
    --after 'jIzSyMQRZK66rcVC' \
    --before 'NG1FpWymYZzOE3wF' \
    --limit '7' \
    > test.out 2>&1
eval_tap $? 326 'AdminListAssignedUsersV4' test.out

#- 327 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'y9gzpdBDVkPaucID' \
    --body '{"assignedNamespaces": ["1P5g57pFCwCbV31m", "ZuwFxEE4EEAnDyR9", "sW9r7km56Ne8p7Fl"], "namespace": "iLJi5tv41kqYi5ed", "userId": "Aq01wogXDBr9tU2D"}' \
    > test.out 2>&1
eval_tap $? 327 'AdminAssignUserToRoleV4' test.out

#- 328 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId '4V9jQfPnhzx7hPJA' \
    --body '{"namespace": "zwhFsCxHrN3hnXob", "userId": "sLZPGJeC8iIlQ95q"}' \
    > test.out 2>&1
eval_tap $? 328 'AdminRevokeUserFromRoleV4' test.out

#- 329 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["oX9iHq0BqGTLn5xc", "5UFjFIIJhcyWrkk7", "q4Nuz9M2DpWELJML"], "emailAddresses": ["3dxN81nZUXO4p1Is", "7cxcQTPGjPtUkhmT", "qWQrZoTk2O7Ruz4i"], "isAdmin": true, "namespace": "xlbaZ6fg5WxNcFQF", "roleId": "kGOhI0TBrwZUav9J"}' \
    > test.out 2>&1
eval_tap $? 329 'AdminInviteUserNewV4' test.out

#- 330 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "jyIkcgLasFMtITOr", "country": "S14Gp4KT7OBmyWtz", "dateOfBirth": "OTVaKjJjbQKVDUWU", "displayName": "pNE81vFCxHZ8vw52", "languageTag": "oTDIGpxTdxxMTFSX", "userName": "uY4UZ819fgfVABso"}' \
    > test.out 2>&1
eval_tap $? 330 'AdminUpdateMyUserV4' test.out

#- 331 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 331 'AdminDisableMyAuthenticatorV4' test.out

#- 332 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'zsMFAANc3IJy77Iu' \
    > test.out 2>&1
eval_tap $? 332 'AdminEnableMyAuthenticatorV4' test.out

#- 333 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 333 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 334 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 334 'AdminGetMyBackupCodesV4' test.out

#- 335 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 335 'AdminGenerateMyBackupCodesV4' test.out

#- 336 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 336 'AdminDisableMyBackupCodesV4' test.out

#- 337 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 337 'AdminDownloadMyBackupCodesV4' test.out

#- 338 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 338 'AdminEnableMyBackupCodesV4' test.out

#- 339 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 339 'AdminSendMyMFAEmailCodeV4' test.out

#- 340 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 340 'AdminDisableMyEmailV4' test.out

#- 341 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'De34Uw9TMpTUOLjY' \
    > test.out 2>&1
eval_tap $? 341 'AdminEnableMyEmailV4' test.out

#- 342 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 342 'AdminGetMyEnabledFactorsV4' test.out

#- 343 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'gM2NxWflQ4ynWqUL' \
    > test.out 2>&1
eval_tap $? 343 'AdminMakeFactorMyDefaultV4' test.out

#- 344 AdminInviteUserV4
eval_tap 0 344 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 345 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "RRSZe1QQ7dGdcQdk", "policyId": "JvVx3q7VLRrW4qnE", "policyVersionId": "elVKD9NINOMtFjzD"}, {"isAccepted": false, "localizedPolicyVersionId": "fsTlxQltInqM7ZWR", "policyId": "fhe0H6z9XzEMxVbo", "policyVersionId": "rhlEz4HdzW1oWG7f"}, {"isAccepted": true, "localizedPolicyVersionId": "lJXF0Y6MFAvKk8Ym", "policyId": "wn2Hozd2twmeUmsc", "policyVersionId": "fVgt8kUs8bSZlk3T"}], "authType": "EMAILPASSWD", "country": "y4lBS8C3WAYQwSLC", "dateOfBirth": "sGiVk7Qk6bZfKCyO", "displayName": "o5LVPkibCG7IbYSS", "emailAddress": "AiEWzPnxM8h1Sw4c", "password": "wcM5uaxMfpUUQIO8", "passwordMD5Sum": "ullKKgx207YOym8u", "username": "6YkDfDeilWfVLbxO", "verified": false}' \
    > test.out 2>&1
eval_tap $? 345 'PublicCreateTestUserV4' test.out

#- 346 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "vOglPGucXSCJUCtQ", "policyId": "EsZw3s6IEXFztO1k", "policyVersionId": "nv3sOWNNJEJwbKQ8"}, {"isAccepted": false, "localizedPolicyVersionId": "KiMWlWMVlA5gI88G", "policyId": "mYz12bSPviE8cjd2", "policyVersionId": "QcZ1XKYVQb3sFncB"}, {"isAccepted": false, "localizedPolicyVersionId": "H4kncI4fe1gK870F", "policyId": "RzDJupJRdvg7uT3g", "policyVersionId": "5ujdaecU3D5rxN3o"}], "authType": "EMAILPASSWD", "code": "zeoqS0rgAkoeH9Iz", "country": "dNoCocWETSM1VAPq", "dateOfBirth": "fsnl77NneLAv5W9T", "displayName": "kg74ehDnem7KOoMK", "emailAddress": "ITbmQjp3P2dQD9UK", "password": "H7wqYDZQLgo3KdcY", "passwordMD5Sum": "O44SPHwQdnDA7uos", "reachMinimumAge": false, "username": "XdOSbDViknF29a1p"}' \
    > test.out 2>&1
eval_tap $? 346 'PublicCreateUserV4' test.out

#- 347 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'bONjo72HTG0dOyBj' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "MHMqNmKRJSqLsg0y", "policyId": "BFr19LyMzzHcaz0N", "policyVersionId": "9dKVc3voAd1qdUum"}, {"isAccepted": false, "localizedPolicyVersionId": "sXzJS4npkCT9PFKy", "policyId": "IYVHnnHkVW2IB7un", "policyVersionId": "9kmiN0rRQbMguhX5"}, {"isAccepted": true, "localizedPolicyVersionId": "XeR5wARnqpsXsW5C", "policyId": "kbY5wpH3Bo9JypMY", "policyVersionId": "2qHLiU7henyjAxyu"}], "authType": "EMAILPASSWD", "country": "ADCOEZeoaHoTbc6E", "dateOfBirth": "YrmZOoGwRxoKyaEx", "displayName": "f64ko8devaq1cjE2", "password": "zAaa2iRfjSxGHoCR", "reachMinimumAge": true, "username": "9sZHvEI7jFAuVNBN"}' \
    > test.out 2>&1
eval_tap $? 347 'CreateUserFromInvitationV4' test.out

#- 348 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "KJaxqOe3609ApSOt", "country": "oOEg8TcgZnetpjby", "dateOfBirth": "ezw6AYwHElxSUHL2", "displayName": "sOfgKtaqsYrtaSjX", "languageTag": "b13OzyHJuBt60gEH", "userName": "wDkxNWo45OfTbNkg"}' \
    > test.out 2>&1
eval_tap $? 348 'PublicUpdateUserV4' test.out

#- 349 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "k6LsLebgyyJp17lE", "emailAddress": "42XqB8QOozCf9mFv"}' \
    > test.out 2>&1
eval_tap $? 349 'PublicUpdateUserEmailAddressV4' test.out

#- 350 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ZuxnzKuoYrJDWdd3", "country": "FPOhkRIQMtsx8EUr", "dateOfBirth": "ukH6NkuKjjtqyptJ", "displayName": "YWVGGnYrZFaQROhX", "emailAddress": "s9sRMBt1o8SalLw5", "password": "py5wvaReLHXJAu6n", "reachMinimumAge": true, "username": "4zjrhA2bY4TStSer", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 350 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 351 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "ekp6HXcp2Dkn40XX", "password": "olnDI58H1McmlaCK", "username": "ILRQQlJZ0ypAyUjv"}' \
    > test.out 2>&1
eval_tap $? 351 'PublicUpgradeHeadlessAccountV4' test.out

#- 352 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 352 'PublicDisableMyAuthenticatorV4' test.out

#- 353 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'IAhBzMVtt1VvPUDK' \
    > test.out 2>&1
eval_tap $? 353 'PublicEnableMyAuthenticatorV4' test.out

#- 354 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 354 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 355 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 355 'PublicGetMyBackupCodesV4' test.out

#- 356 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 356 'PublicGenerateMyBackupCodesV4' test.out

#- 357 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 357 'PublicDisableMyBackupCodesV4' test.out

#- 358 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 358 'PublicDownloadMyBackupCodesV4' test.out

#- 359 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 359 'PublicEnableMyBackupCodesV4' test.out

#- 360 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 360 'PublicRemoveTrustedDeviceV4' test.out

#- 361 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 361 'PublicSendMyMFAEmailCodeV4' test.out

#- 362 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 362 'PublicDisableMyEmailV4' test.out

#- 363 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code '7eMqWkhJGMWcrJUv' \
    > test.out 2>&1
eval_tap $? 363 'PublicEnableMyEmailV4' test.out

#- 364 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 364 'PublicGetMyEnabledFactorsV4' test.out

#- 365 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor '6GNjnjKI9rkMOgLr' \
    > test.out 2>&1
eval_tap $? 365 'PublicMakeFactorMyDefaultV4' test.out

#- 366 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'BcBit5IfP9ykV5Pz' \
    > test.out 2>&1
eval_tap $? 366 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 367 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "Up2sB4sedXVxDXdh", "emailAddress": "7vF9kf8m6Mbch7x9", "namespace": "mIk3FaqBG3YGupdj", "namespaceDisplayName": "PK1dGKnwwSqM9ORc"}' \
    > test.out 2>&1
eval_tap $? 367 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE