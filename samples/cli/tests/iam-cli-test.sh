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
echo "1..366"

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
    --body '[{"field": "r4m7pCxA13degJZM", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["EvHnDPoG30lG0Q4m", "oPL3oovq9hK5Md5T", "y6CrVpinYtMS0hd7"], "preferRegex": false, "regex": "MY0WuJMOZ5euvCqZ"}, "blockedWord": ["CYJ1SWeZACVOzkYT", "EEy3NxTaIZLafc1o", "DKZQiqjgX0Ky5iVv"], "description": [{"language": "GuZSJchleIsAqTKn", "message": ["mntBAvBYPKsAahoN", "i5oNHiv8akhMHI1A", "8KRr6suchfIDn9AY"]}, {"language": "aVRw1pHqFNxKNx8N", "message": ["GqbtORIGUIfZp49Y", "uVmx01Z63avnVHgf", "1ylCV3CLNBj6Oqa8"]}, {"language": "SkU6cqjriEoO3myR", "message": ["rS7WnZX8vQTV2Elc", "JZOyDaQwAdOJOhCF", "3c99nGF1L9DzgWBl"]}], "isCustomRegex": false, "letterCase": "uzkFrVDX4dioI0ie", "maxLength": 48, "maxRepeatingAlphaNum": 85, "maxRepeatingSpecialCharacter": 84, "minCharType": 52, "minLength": 59, "regex": "QplwtrXnSousgC1s", "specialCharacterLocation": "z5R0k2P5uGfjGPRj", "specialCharacters": ["L2upPNIBHkiI1FuE", "hCCh0Fm8d03lpFnE", "atIvFKpUIK6ON97M"]}}, {"field": "hsDUUB6B6yiD0K9I", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["ouQRZQNbeUBWh6xp", "7kHO3eNdFXOmsO4e", "QeZw4ABfsD6Bm2sJ"], "preferRegex": false, "regex": "5YrT8BXX2YZiKtR4"}, "blockedWord": ["qe7yP61IUxS9lc2C", "z0jQXc0fPJMiSEPv", "4UY3oSFbGQTthSBf"], "description": [{"language": "jauPwMSVt7LuNRy5", "message": ["OcnFBSHjz4iKSK1X", "6cJbA5fVxRa0NICd", "z2LYtFEiw6i04orH"]}, {"language": "7Bpc68JVMN9lSyXz", "message": ["tGDB4q9Cglbb71o1", "xiabOpnYci5abYRX", "uX15ivozoirdNIj6"]}, {"language": "2wmqaR3R78Zwqqle", "message": ["GVhhwRtNgA1YpX4q", "FmDGwHGHqBaWczD6", "CFVExKIYLuNZztgc"]}], "isCustomRegex": true, "letterCase": "uLqZJCLIoM5KJL6g", "maxLength": 61, "maxRepeatingAlphaNum": 31, "maxRepeatingSpecialCharacter": 80, "minCharType": 18, "minLength": 63, "regex": "tq4MKMkpJhw6QhVQ", "specialCharacterLocation": "wmi2eCMdmL2nZudK", "specialCharacters": ["M0tsUnUeq8NIZkkg", "Bqr15d9gLF8MvS0E", "ptiWFixcugjbT3O5"]}}, {"field": "3rasfARJ4h5RHQGS", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["5SVI5Rkkqqjpwnqp", "6L4zhbpYqsr9cKJr", "WaO3UBy1DpEozFeI"], "preferRegex": true, "regex": "Vu2BQQgZIZ0rgAEl"}, "blockedWord": ["krf0OFfiYIRERaLi", "BzhXi9clmJFQYx5b", "H5gC9Era7UAPXDRY"], "description": [{"language": "4pkcvKpNJTIfZGPx", "message": ["bf473OWEfGBH83c2", "QJrld5VnhlqGGr6e", "OzrH20WcCVsoQgdz"]}, {"language": "TDjiNjMSXOU88aCn", "message": ["q0yizhTUPiLXFcrV", "xZItkjdz0fXwyUPF", "skpwjCz1w9IaTEzQ"]}, {"language": "2US6A0Erbc30I9PK", "message": ["LboO9VJPRwj50phA", "h1vx7CVKsL2KJ57Q", "PW8dOYpjRxgzKd4f"]}], "isCustomRegex": true, "letterCase": "Ye8j78j5gIYz6XLi", "maxLength": 23, "maxRepeatingAlphaNum": 49, "maxRepeatingSpecialCharacter": 83, "minCharType": 61, "minLength": 5, "regex": "pvTDvPmR9imuDIxD", "specialCharacterLocation": "3LV7ub4H8oMPMUOQ", "specialCharacters": ["xm0M2KoP39PJvhkZ", "EEcH1y6muYf9lwXr", "cA2UcBUqRY5yhLyi"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'ybX8pP1uGHomgSp2' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'hffZQwCs0Ck8JmVn' \
    --before 'tyNmUHKSYi3Lz0oi' \
    --limit '79' \
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
    --body '{"ageRestriction": 97, "enable": true}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'tWBp8GUp3B1QUrPv' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 36}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'm0dIwY8u4pJV4hog' \
    --limit '6' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "8wXzKfaBo9jQUUXq", "comment": "ja1AUMkwTJnxN3cx", "endDate": "ymNbQpglNthsmkq9", "reason": "WZT5a2OyQOMMVHsR", "skipNotif": false, "userIds": ["DmrspxLmgrV9dAHE", "Ajv6WPVk9mowEmWJ", "vpuI0lvbzWtIIvsk"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "GVX0vG1blfA7KnxY", "userId": "BigDxe6fXfyOBwPq"}, {"banId": "di9FJD2uR0uQCDaI", "userId": "ksSUTzltXk4pyGq2"}, {"banId": "pBQFNqT8sHhHPuw8", "userId": "TkxSRqkiIZsGVvrR"}]}' \
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
    --clientId 'BbFe4VOvkDXgz6mL' \
    --clientName '8L69Z056NIl9Xg0x' \
    --clientType 'YKMdcOe5hs6Pewpa' \
    --limit '81' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["3wDzcP83xhP2wESa", "WfyefSA0mmMss8T9", "azJimNx22GC5HY35"], "baseUri": "hbuzKVjHjiT227VR", "clientId": "4NM4rrh2UPNtba5x", "clientName": "y6neTOgUYJzmfKZA", "clientPermissions": [{"action": 0, "resource": "fH2SigcA48A8iLMY", "schedAction": 23, "schedCron": "G16SVgctiAHZ7vwn", "schedRange": ["sZDR7IpZTVQYphDV", "ZBQU5dgWkvqPhzPr", "on1teDyY9AvO9uFE"]}, {"action": 97, "resource": "SPsZ7T8VZhYzYZQE", "schedAction": 31, "schedCron": "QUbMPrcDztjTZ1ZG", "schedRange": ["jn6A7UAbm1kct5sw", "FOrnWYdRpPz3ZI9H", "MVmnuyQUWeiUepjN"]}, {"action": 58, "resource": "LSgVkuMfPh11jFna", "schedAction": 30, "schedCron": "ZXhf7z0U2KmYa4sv", "schedRange": ["3uiLRTeblkRqO6kH", "S70BzoLQHlpLuDmR", "3JGsvtm1up9jTSWM"]}], "clientPlatform": "X6FWga2z4i1K3WjG", "deletable": true, "description": "NVyFvlyHthh9GBqf", "namespace": "9BHXBWS28J6ZGkrN", "oauthAccessTokenExpiration": 1, "oauthAccessTokenExpirationTimeUnit": "gfZg9y8BydLsilBk", "oauthClientType": "SAJcMF32ZA9jzTAz", "oauthRefreshTokenExpiration": 3, "oauthRefreshTokenExpirationTimeUnit": "O0cteoFRYjHEqqDx", "parentNamespace": "z4gKGCt4w6dAjSMQ", "redirectUri": "KWENQzZAStXjbj36", "scopes": ["QM26dADidqusoQzn", "MzkyJis2aNWsXbk5", "WdDVEpeHh8RoISFU"], "secret": "DOdB6g8sUSbIUUpi", "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'kPgyBLczWBXe6Wlg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'oyKTQ123yg3j6ewc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'AqtOKbO7mIjxtgVo' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["4IKoNz1N5ttFtbE3", "uRa3feObU6glEZdv", "4ll1OVnt3wyNiFzz"], "baseUri": "iS8l8uGBjp1dGDxu", "clientName": "MLbsGfi5gXCZby2f", "clientPermissions": [{"action": 55, "resource": "8TTVONthaiJazvaT", "schedAction": 28, "schedCron": "07JjcIqnF8MlbUED", "schedRange": ["D80FLwTajyDVp01D", "eT70V2MQQNMiZM8T", "pTTGqGMHPy8fsJ2g"]}, {"action": 16, "resource": "Au8l04UvTkpoviz4", "schedAction": 45, "schedCron": "c2U5S1keuz52OiVV", "schedRange": ["KW3WxNsXSWlBSe5K", "X1QmLPBX71TH81x8", "TfXwxrRdl89yNA8B"]}, {"action": 0, "resource": "HBFeRFX6UyteUOLH", "schedAction": 68, "schedCron": "47J5LjJ9GscJ80Ev", "schedRange": ["QkYoLITMdjlh7Kwp", "9nsMahFt5Q7GBL5f", "BN4aurqsJQlSN7fq"]}], "clientPlatform": "PZqIUMxTZv0GDF5c", "deletable": true, "description": "IbShcLyFyHMU09CH", "namespace": "NgwuBtjzFvNDK8MO", "oauthAccessTokenExpiration": 41, "oauthAccessTokenExpirationTimeUnit": "YmjvB4phU4yRCH1Y", "oauthRefreshTokenExpiration": 13, "oauthRefreshTokenExpirationTimeUnit": "Xd3ZXqCfWBqeb55B", "redirectUri": "tS1j65S4sHjtcGxR", "scopes": ["LIVhfK2uVJOyCX64", "lKRoR9vPnAVihv4V", "kMiU6SK4HtzPGE9T"], "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'vOEJC0XTp2ZWGlzj' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 20, "resource": "9meb09eyGa9kq1OL"}, {"action": 60, "resource": "n4HK29QOlVrK7YkO"}, {"action": 4, "resource": "UaeGiaGAfUMVUSun"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'zAfP3mx0aIPjVJms' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 97, "resource": "0bhW6F7MfdmC3nlR"}, {"action": 24, "resource": "b72fv8ywmOADxZ9D"}, {"action": 21, "resource": "uBT1ROX51KyxLHZP"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '84' \
    --clientId '3zlWuiS2qScD5Ikc' \
    --namespace $AB_NAMESPACE \
    --resource 'YG1e8Ka4cmKghEbi' \
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
    --body '{"blacklist": ["yJfvz0IItPER022b", "Wo01zccp84w2Zihq", "Zrufr32m9BHsGmAv"]}' \
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
    --limit '39' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 133 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 134 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'TSoDZlIGxvKUOawn' \
    > test.out 2>&1
eval_tap $? 134 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 135 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'tIFpz08Wwte780kZ' \
    --body '{"ACSURL": "QKQYIIgVW5JfDTnx", "AWSCognitoRegion": "laVo0q3Yme9It3XI", "AWSCognitoUserPool": "elGMqBDAQ04jC6SO", "AllowedClients": ["s15xeV0OXLHkBN7J", "J3XOybZ1AheY1Mwu", "UrL4ADD3czCZlgaS"], "AppId": "UpzvlOEJWYBiXSA1", "AuthorizationEndpoint": "R7QOFBo4eradCBQl", "ClientId": "XGa6kQhXiCi8lXZn", "Environment": "MXQt9lEzbIxwgZ8J", "FederationMetadataURL": "FcBdHJn8euiNUhgX", "GenericOauthFlow": true, "IsActive": false, "Issuer": "LUvDbSe2JHNUQQln", "JWKSEndpoint": "xKh16mPFmmMsZbfs", "KeyID": "WsaHQNerE9TXAd2M", "NetflixCertificates": {"encryptedPrivateKey": "6UgmgZnrnWuQGB7s", "encryptedPrivateKeyName": "PgI1hbpAl0zW3HWv", "publicCertificate": "IWNXYxoIESYRWqZG", "publicCertificateName": "CBqwl8t8TPBrrOHd", "rootCertificate": "J6URxIO1tLONfqk6", "rootCertificateName": "SUKQUyG2IwJy2mVw"}, "OrganizationId": "ezoPdSQKAZMPXxIK", "PlatformName": "8urrqhLfzKkUrtEY", "RedirectUri": "YrONYfBh1NNXovb2", "RegisteredDomains": [{"affectedClientIDs": ["HNKzdLXOoXCmfTOC", "wJYEVBP62rluliK8", "Ovkqgsj09bBlGni2"], "domain": "zhMJQ28Uo2jF5B8T", "namespaces": ["KY6W34AknO5Xblgw", "cgakJpNiyzplyIeS", "mTO2oPe0O6lGCoUh"], "roleId": "LjXq0ZMq8QU9Pp4Y"}, {"affectedClientIDs": ["dQO3oxP3wMmh420V", "CRbWzE2c4r0ux3hZ", "GkeBuck0yiXL9Wde"], "domain": "zinOVYTMHkxLlknJ", "namespaces": ["cKBQkRVIGPk5eoHd", "Ys9bsFN2qlr4gBBn", "zTzef6pw5QKGjTbq"], "roleId": "u7MwFRzZwVKHiY5H"}, {"affectedClientIDs": ["SkGAT7bxDj4tXNe5", "z6orbL6L7Rvi4Yl3", "LopKHAa1LiRtj2ax"], "domain": "RUIGl404OaJ4tPuJ", "namespaces": ["6EwJBko0wN1XL3Fs", "8TPZsOWsGL1e6UdJ", "sEfnC63HZKJiIOUN"], "roleId": "WWfVAzEdgglYrN5c"}], "Secret": "X40FToEuy2h7INCM", "TeamID": "IwGfSkUnjIQOx275", "TokenAuthenticationType": "5gPQRF0qG2uWgTfc", "TokenClaimsMapping": {"W1WYiRutPsfBoQrn": "kzR4UfHZbhPmoaFZ", "tlDIQTshj9vcWFWl": "VRXGNyU9YHPAbuyE", "KrBvqYOFsbabyRFN": "UTjmrxno4g5eNf5J"}, "TokenEndpoint": "2UEQOPBKNDGaq0Cm", "UserInfoEndpoint": "eFKQ1PMcFmEEX3ea", "UserInfoHTTPMethod": "XDVrmMRpE4rjpM30", "scopes": ["dKZ9thOaZYMixZuG", "67f8pWTXPjXFfRup", "wRnJSfpvW8dDWPmg"]}' \
    > test.out 2>&1
eval_tap $? 135 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 136 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ozizfGZWYfYFbChI' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 137 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'acyTFr6LkMI99bOA' \
    --body '{"ACSURL": "2NvPHELSTBfL8WKQ", "AWSCognitoRegion": "HO7RHyX1XV1r4iTJ", "AWSCognitoUserPool": "4PQFJ0V5gPo5iyU3", "AllowedClients": ["eCRrqPrYLg1tc7Vn", "HQgkm6Jil0mBvl3Q", "zLMGpOsia2dsWrBo"], "AppId": "ozdQMuVjJXSBR6Hw", "AuthorizationEndpoint": "zK026evsZ1rwkHcp", "ClientId": "8kZderVfEC91eMxY", "Environment": "RzMmxKwB7aAQM5U0", "FederationMetadataURL": "h9dEEhtOmPJ51Rmv", "GenericOauthFlow": false, "IsActive": true, "Issuer": "6AaUrLZfC48752lK", "JWKSEndpoint": "5kPDT5oBRhvdYc3P", "KeyID": "zze3W3IqlQASUKEQ", "NetflixCertificates": {"encryptedPrivateKey": "AT2yambxojB3XrKo", "encryptedPrivateKeyName": "5CTej9OEOBuArqKu", "publicCertificate": "N3Be6nBQYksVnenP", "publicCertificateName": "orc0WiuRLu1hrQXS", "rootCertificate": "mvz0sB7g9f0axtM0", "rootCertificateName": "7leYnHOhr0N6BJ7k"}, "OrganizationId": "wmEMnUCM1QVu6R3R", "PlatformName": "21qmnKk9tBbxjsOj", "RedirectUri": "seH0wOu46hekhbcM", "RegisteredDomains": [{"affectedClientIDs": ["7dHUowAGaKUuMAHq", "pMEZwEwdez6Jx9De", "jyAuM6xuH7PNLl58"], "domain": "nYaZvukncxies8gt", "namespaces": ["lTeMZksbs9oqT0b8", "PIqzEqCFwsNOweyu", "0a61ccDvrho2Dtb6"], "roleId": "NfjzBapHGYNWjM09"}, {"affectedClientIDs": ["nCN3IY7rqrXXEkCC", "k5pjv43FRt76zEMa", "5ot2q8UEa51JJ1tz"], "domain": "hVIQbLRhmYh81LNV", "namespaces": ["i6EKDh8XscKeUwOH", "EIcToeOmOlVIsuQ8", "6sN197kQqTbr4NWX"], "roleId": "VK9OLnVwPfaY9uf9"}, {"affectedClientIDs": ["KL2b6ai8DbbiOkwy", "erqKxC9nzSN7g5I3", "VeQTKvVLtj1NYBHY"], "domain": "MgDgEi3Ae9y38Xzp", "namespaces": ["Dx2b5GuHnNsmblKP", "YdIR0st5jyOrPAAg", "BOn1Tk0kZBag8sJR"], "roleId": "2vsBsqiZstrMpaM0"}], "Secret": "YdikKJ1XpBbsvHMO", "TeamID": "LKIknDFCrUMdfz4v", "TokenAuthenticationType": "nEJUMzrrXjvcYsKy", "TokenClaimsMapping": {"lMOUEfRMe5SLKQ1h": "3wm6P8L0k5toAtfc", "B8EOX78godGyAz0R": "5G05rgweK9jc3nVG", "E98LmRUVw1TXwF3p": "hWd7WPs0155k1Nqw"}, "TokenEndpoint": "zfAH8h8sSreVzKsk", "UserInfoEndpoint": "nA5ixfEbMKOBLDH0", "UserInfoHTTPMethod": "vfkgvc8vYwZ9R037", "scopes": ["klEcx1SnFmbVZQxu", "4ErtfpWQ6CMcZnLI", "5eRVahCgTwDhaUnV"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 138 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'O5eFFmzZqpn3TdvY' \
    --body '{"affectedClientIDs": ["Coy9VKXPxSoym3mT", "Is4diNeO9eB5Cl6k", "Ys0o9Kg6aPtVNVn6"], "assignedNamespaces": ["7HdLeKFWugEY0yfx", "4dBObzFiKz0iGdXl", "iONfr7E7bvzKpw4e"], "domain": "ecEprynyNnaBzdHJ", "roleId": "tjdW3XSDpfXlTopD"}' \
    > test.out 2>&1
eval_tap $? 138 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 139 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'zZxDXkeftFky7vnz' \
    --body '{"domain": "Nn6LSBo7yptAvqTo"}' \
    > test.out 2>&1
eval_tap $? 139 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 140 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'GIdl1j2AIDQecY4Q' \
    > test.out 2>&1
eval_tap $? 140 'RetrieveSSOLoginPlatformCredential' test.out

#- 141 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'II4m1HRz0n8Ntc7s' \
    --body '{"acsUrl": "4mWeomdf692dyrbt", "apiKey": "1C2cNdnOmaToOQn4", "appId": "4ufMDz6jkDIW1ehH", "federationMetadataUrl": "KAEQXwilMx6RbmFZ", "isActive": true, "redirectUri": "JYTqOkZqSyvJD9MD", "secret": "PaspKAPBd6MzsfX3", "ssoUrl": "NTwgJptq2zbiCpB7"}' \
    > test.out 2>&1
eval_tap $? 141 'AddSSOLoginPlatformCredential' test.out

#- 142 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'zwXzpTqhz07CIQRW' \
    > test.out 2>&1
eval_tap $? 142 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 143 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'YCertdZo3gcWKpo6' \
    --body '{"acsUrl": "ONhH5lZsE042bwov", "apiKey": "4kE1NWFr5JfUh0hj", "appId": "6JleA4H6ZIvlRle1", "federationMetadataUrl": "q01q8WbjCRxirQxB", "isActive": false, "redirectUri": "5Q4yXdJGegZnLqiG", "secret": "HObuBdpn8OIJCKYg", "ssoUrl": "oeOBL3R5CNviR1OO"}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateSSOPlatformCredential' test.out

#- 144 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZSFtvwDWOzWqQYhe' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["G6NaH7nDLAC1SZ7h", "Q9bACxAFqVo6NQBU", "YKOLe19jg6i4ukES"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 145 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9weweKgEZR5tK7gr' \
    --platformUserId 'lWsLKhZFzqkWkCaV' \
    > test.out 2>&1
eval_tap $? 145 'AdminGetUserByPlatformUserIDV3' test.out

#- 146 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'qoAoFJ1DRc43T9ur' \
    --after '34' \
    --before '76' \
    --limit '96' \
    > test.out 2>&1
eval_tap $? 146 'GetAdminUsersByRoleIdV3' test.out

#- 147 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'ddJrI70SjH4cJvHK' \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByEmailAddressV3' test.out

#- 148 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'gByGc2uhpxpbjhGv' \
    --body '{"bulkUserId": ["EIrBIQOrb7eXtCHb", "1jFDINtMkOoQ73vU", "MXzcwaKQRdEciABB"]}' \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserBanV3' test.out

#- 149 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["s11DdvIxp7n59xI4", "ze1l4hNFNgtmXo50", "g16KSNSduTPKkgVh"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminListUserIDByUserIDsV3' test.out

#- 150 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["8G3rhNZKTBM4HpTk", "XQaclwZDMEtKO5h1", "8lipnvN08LkGN6I3"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminBulkGetUsersPlatform' test.out

#- 151 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["SUnGzpT5nhfewhRN", "W5IIIInrbb6K2z0T", "QC0cRhh16ELCUcoY"], "isAdmin": false, "namespace": "dzFUmq2OlKEGF4Dk", "roles": ["Bxlbg9srDh8qNijc", "Q3qgUMomyTcEXRBj", "hLoxSBxoGeKghoY6"]}' \
    > test.out 2>&1
eval_tap $? 151 'AdminInviteUserV3' test.out

#- 152 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '79' \
    --platformUserId 'm6KIhc5rmtaWeXqZ' \
    --platformId 'cZDyVf8gtZiC7H3x' \
    > test.out 2>&1
eval_tap $? 152 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 153 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUsersV3' test.out

#- 154 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'O6l35beIqpt0dxaF' \
    --endDate 'rRiax5CizALAPaqT' \
    --includeTotal 'false' \
    --limit '3' \
    --offset '30' \
    --platformBy 's5qGF4EoSBzDlt6F' \
    --platformId 'iCQw2Wik0bP4rViy' \
    --query '2ZwTyfNysnX5IYVh' \
    --startDate 'bpgwEaeHEDZivyK2' \
    --testAccount 'false' \
    > test.out 2>&1
eval_tap $? 154 'AdminSearchUserV3' test.out

#- 155 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["SiEqMcwZIydus7DY", "GugkxxkssPscaVEZ", "y7G1dtI0WsC7HOUZ"]}' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserByEmailAddressV3' test.out

#- 156 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'w5N2i3dK7Ip4bawm' \
    > test.out 2>&1
eval_tap $? 156 'AdminGetUserByUserIdV3' test.out

#- 157 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EoeCzbL6vAhTlMRO' \
    --body '{"avatarUrl": "uCOylySvZnkzSDvr", "country": "Ry0of4w66FN30P16", "dateOfBirth": "msH18jMhnVLxzSuT", "displayName": "OkDtOlb6CLkWN1A8", "languageTag": "0Isvlvq2LjFgXOP1", "userName": "4fcRBKt39Mkguxem"}' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpdateUserV3' test.out

#- 158 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mnUKAx5wGEfLbdkL' \
    --activeOnly 'false' \
    --after '3MuXq32iY0sbtVvY' \
    --before 'HWgmPmmzHEK2zGiq' \
    --limit '55' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserBanV3' test.out

#- 159 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '1Dg51cUKAxcASvqe' \
    --body '{"ban": "bdgDTWwuM7lXgPD1", "comment": "zgI8yP1iVTpCnZxF", "endDate": "6zW7tTuzs4mH2GSL", "reason": "aU3tfQcpF0PBjL2H", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 159 'AdminBanUserV3' test.out

#- 160 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId '3LGJ4IWq1TI6JrP2' \
    --namespace $AB_NAMESPACE \
    --userId '7zsJWYD0NaGtQtJd' \
    --body '{"enabled": true, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserBanV3' test.out

#- 161 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'plyP4P8gCIUWaKr7' \
    --body '{"context": "PkhOe2vOD5hhXxVL", "emailAddress": "Eyu4zYB4prM0r43Y", "languageTag": "gc6miw46NhHbondA"}' \
    > test.out 2>&1
eval_tap $? 161 'AdminSendVerificationCodeV3' test.out

#- 162 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId '0SJXCgEUl0zGKOeE' \
    --body '{"Code": "DSYLTtjQh1tMvOzm", "ContactType": "dnGUxgRkK08Vni8O", "LanguageTag": "ACQcsS3vjHIrfKmq", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 162 'AdminVerifyAccountV3' test.out

#- 163 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'VvGxBHy9zYDUIOW1' \
    > test.out 2>&1
eval_tap $? 163 'GetUserVerificationCode' test.out

#- 164 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eHG1eCsDSj8I5NaU' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserDeletionStatusV3' test.out

#- 165 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'veMHHgSlUa3DIPNU' \
    --body '{"deletionDate": 6, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserDeletionStatusV3' test.out

#- 166 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'j14BpE7kBMnNByQG' \
    --body '{"code": "mPzVsJreq4XXY7EK", "country": "pb1Z9gl53rn7etDE", "dateOfBirth": "MFYWucP1IzHOS1Ax", "displayName": "bzx8B9US3kH1PFfm", "emailAddress": "ekWMa2MHlr6MtV7N", "password": "CmlKiOXGmlVVswTP", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 166 'AdminUpgradeHeadlessAccountV3' test.out

#- 167 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BI2Jh8zUMVeuHXQT' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserInformationV3' test.out

#- 168 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FCooUnRmM2AzTp8h' \
    --after '0.1619281228454782' \
    --before '0.21664037568965688' \
    --limit '79' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserLoginHistoriesV3' test.out

#- 169 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId '2FYIX9rP6J2nLyRz' \
    --body '{"languageTag": "EdK7MCQhstyZOtLr", "newPassword": "5ImIoOKS8Lj8zvvg", "oldPassword": "K8Go3NSXpcu9JsuG"}' \
    > test.out 2>&1
eval_tap $? 169 'AdminResetPasswordV3' test.out

#- 170 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iBgpZ3NRjeRY8qFE' \
    --body '{"Permissions": [{"Action": 58, "Resource": "nyDFn3mcB4u4gUb5", "SchedAction": 67, "SchedCron": "KQLudUqfyvY8geVP", "SchedRange": ["1vDsAIFzijkKiyoH", "D80OV0vbefmHwUUA", "Qcrsco9gRs60sQou"]}, {"Action": 50, "Resource": "t0ntyzdC8x63qinf", "SchedAction": 68, "SchedCron": "3WqLrJuYDvYTof2j", "SchedRange": ["GDQwE3lJXd0ahSaQ", "U00HhOThoBcOgRQI", "SxiEoLrH6seyxgIo"]}, {"Action": 82, "Resource": "uhTIi7IEBHxSyeTn", "SchedAction": 99, "SchedCron": "FsnBHUq6YLGaU6rL", "SchedRange": ["IUFtyJALJ8kqzhb5", "5IH58OxyOQtu5mTy", "IlMSFNwwsm3ekOLl"]}]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminUpdateUserPermissionV3' test.out

#- 171 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'XGqzVQL3FQDqqOGn' \
    --body '{"Permissions": [{"Action": 46, "Resource": "OzChmskT8JRLLfBd", "SchedAction": 8, "SchedCron": "3hBizaFqLpZHL0p4", "SchedRange": ["mFPqwqYj44IT6bgP", "U5KxzoeFnCYwXSlR", "z7fCAHeNSy0E7ema"]}, {"Action": 16, "Resource": "BTF0biTfmuqGNmmt", "SchedAction": 77, "SchedCron": "Dn276afuLPt4ZXj6", "SchedRange": ["vkEtbH8SHxf5hpQa", "B7DfzPvgMc25rAtK", "MKKvo3sA7EoKWo25"]}, {"Action": 28, "Resource": "zwGSOywFG6gSYxAG", "SchedAction": 34, "SchedCron": "kmAvTLehxyxXE39h", "SchedRange": ["EvgYfGcABhVXBZ5u", "4taATngsBkmCOm2Z", "BU6AWdsHEweZGPAD"]}]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminAddUserPermissionsV3' test.out

#- 172 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'uXW6WkILjtm5tgL9' \
    --body '[{"Action": 25, "Resource": "ma8ujZHve8i79sBo"}, {"Action": 98, "Resource": "DFMaVSxfRbiZkrJh"}, {"Action": 26, "Resource": "UxE95i5MEFAVWNkh"}]' \
    > test.out 2>&1
eval_tap $? 172 'AdminDeleteUserPermissionBulkV3' test.out

#- 173 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '73' \
    --namespace $AB_NAMESPACE \
    --resource 'TSprLptjzGItduw5' \
    --userId 'aHMD7OI3kq6P5joS' \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserPermissionV3' test.out

#- 174 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'W5yCJ3oa1VEz6Dvz' \
    --after 'URmI2K2QHrvNM6d4' \
    --before 'XfnOjdfLh6xdpwiq' \
    --limit '31' \
    --platformId 'PmXQVWBa2phqqwN5' \
    > test.out 2>&1
eval_tap $? 174 'AdminGetUserPlatformAccountsV3' test.out

#- 175 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId '9uV7iX5WD73Lxacx' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetListJusticePlatformAccounts' test.out

#- 176 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'VYHzPiKLV4EIsjGG' \
    --userId 'aqmRE2sQWQJh3rGo' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserMapping' test.out

#- 177 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'UVmJXQRIAtyXFdT0' \
    --userId 'OLxzPwn7U0OwLedk' \
    > test.out 2>&1
eval_tap $? 177 'AdminCreateJusticeUser' test.out

#- 178 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'ZGCNTVtKp7usC2jZ' \
    --skipConflict 'false' \
    --body '{"platformId": "ftlusezufrilLsRL", "platformUserId": "bulppOMh94Df0hy9"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminLinkPlatformAccount' test.out

#- 179 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Y8q5hcwToOQk3Tr1' \
    --userId 'G3l1Un88MM7j8s2l' \
    --body '{"platformNamespace": "R7SuCBj4592AuSq8"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminPlatformUnlinkV3' test.out

#- 180 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'G07r2IDWBMQobi6E' \
    --userId 'ZW30CsohJyzSUiD3' \
    --ticket 'UjTl7pdksJbvp6OF' \
    > test.out 2>&1
eval_tap $? 180 'AdminPlatformLinkV3' test.out

#- 181 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'lGxlEY1OJ8sNifCn' \
    --userId 'PROVJBWTkZ259xwU' \
    --platformToken 'PXO3QrPosnKplrl5' \
    > test.out 2>&1
eval_tap $? 181 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 182 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'd2N8OoRCawfrPjxE' \
    --userId 'o7K3k6Y5RDvTMsMI' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserSinglePlatformAccount' test.out

#- 183 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fmSgVDuLISnz0t8H' \
    --body '["V9P19Fp2LJRIFU5J", "UexFZggvX3v3wTE4", "Og3B8JhEKF7I7ckU"]' \
    > test.out 2>&1
eval_tap $? 183 'AdminDeleteUserRolesV3' test.out

#- 184 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mC6hiceG08Hx8OwM' \
    --body '[{"namespace": "Tun4LQS79v0wR5LI", "roleId": "T506s98rq2S6HDeo"}, {"namespace": "wOnvZu5kxKuhBjbH", "roleId": "lD0kGpYCGDPzCvzC"}, {"namespace": "ifFzzPxA3NN0i0RN", "roleId": "htETNAWvxYq01jku"}]' \
    > test.out 2>&1
eval_tap $? 184 'AdminSaveUserRoleV3' test.out

#- 185 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'vxuWeHQlJsHPxWXj' \
    --userId 'VnZGvDw11f6L6EYA' \
    > test.out 2>&1
eval_tap $? 185 'AdminAddUserRoleV3' test.out

#- 186 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'vFBxbhUXm4iVXzp4' \
    --userId 'TZc9GfOJK2dLM97q' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteUserRoleV3' test.out

#- 187 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WDa3UmwpJ5Ly8mIQ' \
    --body '{"enabled": true, "reason": "ewoCMzd5wS52Mcf1"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateUserStatusV3' test.out

#- 188 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'wh86PohrkF70699W' \
    --body '{"emailAddress": "P19z9FoKllFF3D14", "password": "PUJpogE3HkRvMHwz"}' \
    > test.out 2>&1
eval_tap $? 188 'AdminTrustlyUpdateUserIdentity' test.out

#- 189 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kpjjPA3Pq38GkzRg' \
    > test.out 2>&1
eval_tap $? 189 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 190 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId '8hxrHlAe09iWcnAA' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "aV6avy2UJNblAXPP"}' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpdateClientSecretV3' test.out

#- 191 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'W7oGQMMk0g7T2ksJ' \
    --before 'GY9aOg68eWQXoG5I' \
    --isWildcard 'true' \
    --limit '11' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRolesV3' test.out

#- 192 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "jVaoD07Bx4dVaBMO", "namespace": "KW0PDNW2fO55wzaN", "userId": "SyuwiS9wdU0eiJ2v"}, {"displayName": "VrOyYKyoAQztGp73", "namespace": "Z6dTrdOBCvsI1CpV", "userId": "gH3Hew65N31y7uJb"}, {"displayName": "29bSmdKiIz95idfO", "namespace": "RvMbPC5w86VUeOjN", "userId": "Gv4nzxjSOJyrUPM6"}], "members": [{"displayName": "dmPYPtdfzuZf9ajT", "namespace": "2HfbkZ5pyNzeKsua", "userId": "4sYatRZf6xOylslu"}, {"displayName": "1eGYbJoodLpxJSco", "namespace": "aSk6jdceZvTtO4RC", "userId": "qf1zAx1bsczy9Gqr"}, {"displayName": "SzF4n0fmyQhMa4rE", "namespace": "8txwCXtgUvZbsMwJ", "userId": "hlSIxgHJ06tWY1Ge"}], "permissions": [{"action": 90, "resource": "s2uwbQcPuiqUAdry", "schedAction": 56, "schedCron": "jxQISFxoCL5WK90C", "schedRange": ["Zppx0EWox8UDBPeq", "zYHo7msRg7thmJD0", "MYoAlFWcpoZq4K2x"]}, {"action": 85, "resource": "gKcuy27W6BTCcSNY", "schedAction": 53, "schedCron": "sCwwe6danuNGokdz", "schedRange": ["qdh1fzCKMpoxefFn", "agi2tx3c6E1sjmmA", "egOrBeSzQ3FHztqT"]}, {"action": 98, "resource": "rKv57E4d78UNBWUt", "schedAction": 54, "schedCron": "G4sSdOgKrInUtgVu", "schedRange": ["mL9NjjNolxvULGIP", "SebvFhe9saImjmxp", "0zNL2wKnsrCUaFqy"]}], "roleName": "7lf3YwxTF4zQHKS2"}' \
    > test.out 2>&1
eval_tap $? 192 'AdminCreateRoleV3' test.out

#- 193 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'bIn1iXVmivZTaIBp' \
    > test.out 2>&1
eval_tap $? 193 'AdminGetRoleV3' test.out

#- 194 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'lwlV0N6Hrhcx9SZ4' \
    > test.out 2>&1
eval_tap $? 194 'AdminDeleteRoleV3' test.out

#- 195 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId '34xKTZSLM5nTUG8S' \
    --body '{"deletable": false, "isWildcard": false, "roleName": "OGwRlV00oJj0W6j2"}' \
    > test.out 2>&1
eval_tap $? 195 'AdminUpdateRoleV3' test.out

#- 196 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'hOowlffwgm7JldbP' \
    > test.out 2>&1
eval_tap $? 196 'AdminGetRoleAdminStatusV3' test.out

#- 197 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'uy4jE5lbM22NPbZC' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateAdminRoleStatusV3' test.out

#- 198 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId '9dS9yONy5VdZt6gT' \
    > test.out 2>&1
eval_tap $? 198 'AdminRemoveRoleAdminV3' test.out

#- 199 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'Ajl238uuz6vP5mw4' \
    --after 'oexC0t6WxDcBaZss' \
    --before 'uJk9m53auhxXvm6D' \
    --limit '92' \
    > test.out 2>&1
eval_tap $? 199 'AdminGetRoleManagersV3' test.out

#- 200 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'qP9moFfPcMsADCNv' \
    --body '{"managers": [{"displayName": "zJpRGHEOlFKPztLd", "namespace": "xe7GB6AmpGE3JYFA", "userId": "8uBDPCX8ze40Xwty"}, {"displayName": "AGJ5VExXtveHEqO4", "namespace": "ORgB9uvyCmkH1bxa", "userId": "1qSbSIrsNjdj3agZ"}, {"displayName": "8FuhrZ1ZOHyB9WFL", "namespace": "FC2ZzuE3JiLXctbg", "userId": "XQ74xK05fgY3ozSY"}]}' \
    > test.out 2>&1
eval_tap $? 200 'AdminAddRoleManagersV3' test.out

#- 201 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'YR6THCkmgfdKMQgE' \
    --body '{"managers": [{"displayName": "OWO8eXyLJyGaqiUo", "namespace": "krAYH6qIllLkPmzr", "userId": "7HyfiJVy3kP1CnIl"}, {"displayName": "9O2WtN93IkmAp8m5", "namespace": "PgQRuCoZGna8b1EQ", "userId": "KgFm0IYpZm9RGU7x"}, {"displayName": "qBWgU1f4IeSsfcqE", "namespace": "nKnGTTMGHnWP2RSN", "userId": "aCD2skcLoG4Bpd94"}]}' \
    > test.out 2>&1
eval_tap $? 201 'AdminRemoveRoleManagersV3' test.out

#- 202 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'ltLe79o8sVoFSZjo' \
    --after 'lKW5XBYrDoHcsDBx' \
    --before 'x0iHSB1RKY3Xrzuk' \
    --limit '54' \
    > test.out 2>&1
eval_tap $? 202 'AdminGetRoleMembersV3' test.out

#- 203 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'tXixujK5xJ9SJKcr' \
    --body '{"members": [{"displayName": "3FOg1syhD0xCKEJJ", "namespace": "8k2g0dxIgQpAKHZq", "userId": "mTGioJN8up0Rpad7"}, {"displayName": "Fi87lOtAhCunfNVd", "namespace": "zd39oLEWuTwbKJXV", "userId": "7czZa697UthhUVZg"}, {"displayName": "TXdJyloT2IgY5PlI", "namespace": "VOQtik1DxgFrrFSc", "userId": "ioSwrwSNMdRnZogT"}]}' \
    > test.out 2>&1
eval_tap $? 203 'AdminAddRoleMembersV3' test.out

#- 204 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'HqP4V3vwmVc302n7' \
    --body '{"members": [{"displayName": "uUCxNnyjPqjL73iT", "namespace": "dUh4w0R1BanMbN4L", "userId": "MzmeuVzHlXaYpxTT"}, {"displayName": "SpUqNOdukvvdlz9l", "namespace": "GLBKA45aA7aTDGJm", "userId": "nkjB60BDpi3NQpMM"}, {"displayName": "frIZegzSojt9lpCB", "namespace": "iZ06kZggn2pqOuFH", "userId": "PEBDfysvHBo6WZ3Y"}]}' \
    > test.out 2>&1
eval_tap $? 204 'AdminRemoveRoleMembersV3' test.out

#- 205 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'efSh44J1MiObc79A' \
    --body '{"permissions": [{"action": 9, "resource": "hrjlzZLSpNWeK4dP", "schedAction": 47, "schedCron": "uM3kpLouCzehmlpA", "schedRange": ["0SwqktVS3SNVwgkn", "NyZILtubP7ueGUL8", "iNx5gzaxZNzBK5Ri"]}, {"action": 99, "resource": "I54cBxAGqALpwuvR", "schedAction": 86, "schedCron": "IwqHb7PBXmLVXlDu", "schedRange": ["wrezknd5ItHmJgyD", "kudli5OoK7tfWZXO", "6f0D0MociVetO5zX"]}, {"action": 36, "resource": "xKlVARJixFcTDNAW", "schedAction": 51, "schedCron": "0ZpGDqcA5aYtdUVd", "schedRange": ["oT9GjJy6Eg1bWusg", "VKMtEc80SqamMQfh", "IsXTTKkd5ZK8DKaq"]}]}' \
    > test.out 2>&1
eval_tap $? 205 'AdminUpdateRolePermissionsV3' test.out

#- 206 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'ZOoA1DOC4jZLfV8r' \
    --body '{"permissions": [{"action": 52, "resource": "PgHk6mdvxyVwDdJ1", "schedAction": 26, "schedCron": "3AKKr3wPZ774hqEp", "schedRange": ["aS4exUMR3GOqHuPa", "C3G1Gmg2qfMBAOOk", "uI3TYej0l99w1BRA"]}, {"action": 49, "resource": "hvfQlliP8uHgSorM", "schedAction": 91, "schedCron": "LlemSwX6yQUyl5im", "schedRange": ["vyLZH8KRQPcBmLJE", "blDfTE6dqLYjI8Rd", "BZ8eHyZJtiaAS4DC"]}, {"action": 65, "resource": "cYovNTt2xOqxTxRh", "schedAction": 40, "schedCron": "IGoCnu3jaKm4LfcN", "schedRange": ["GYpdpZwrHoZF7qKz", "5oMpXT3ElTtGp9Mp", "RiEdVvGH7IWz1JxK"]}]}' \
    > test.out 2>&1
eval_tap $? 206 'AdminAddRolePermissionsV3' test.out

#- 207 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId '5VQB9uJ0nCTY2e1C' \
    --body '["tD7R9cMK6PFtGNZd", "KLjTGoEdiZwn2RfG", "psI0oPlVq8xIH2zm"]' \
    > test.out 2>&1
eval_tap $? 207 'AdminDeleteRolePermissionsV3' test.out

#- 208 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '7' \
    --resource 'KL2x3qh8UDNSLRA7' \
    --roleId 'tT2FGFf3N4YPoHlG' \
    > test.out 2>&1
eval_tap $? 208 'AdminDeleteRolePermissionV3' test.out

#- 209 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 209 'AdminGetMyUserV3' test.out

#- 210 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId '4YyY1H7eImewAV5s' \
    --extendExp 'true' \
    --redirectUri '8FQOtQv3HVs0WlPA' \
    --password 'B5oiGWYwTZyF5GmV' \
    --requestId 'PQn4DFAbj5C8DNfR' \
    --userName 'Cqux2K5nxGZki4HM' \
    > test.out 2>&1
eval_tap $? 210 'UserAuthenticationV3' test.out

#- 211 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'IusoCtzbdPv8GMm2' \
    --linkingToken 'qqUqToSL50R2CCV9' \
    --password 'lOkjlTDoovq6IjJM' \
    --username 'W3uYIowmJ2NkMxDx' \
    > test.out 2>&1
eval_tap $? 211 'AuthenticationWithPlatformLinkV3' test.out

#- 212 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'OxF7jKqcA163eWJ8' \
    --extendExp 'false' \
    --linkingToken 'TwfxenX2NCduHz5k' \
    > test.out 2>&1
eval_tap $? 212 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 213 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'lKjyG2Dr5Hwxqepl' \
    > test.out 2>&1
eval_tap $? 213 'RequestOneTimeLinkingCodeV3' test.out

#- 214 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode '0kNI7oJofLZ1j9lu' \
    > test.out 2>&1
eval_tap $? 214 'ValidateOneTimeLinkingCodeV3' test.out

#- 215 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'wqwdEdONPxlo4LYK' \
    --isTransient 'true' \
    --clientId 'Zv1HYuXfJkHt3bBN' \
    --oneTimeLinkCode 't8vkjw7nFLhV1U0c' \
    > test.out 2>&1
eval_tap $? 215 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 216 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 216 'GetCountryLocationV3' test.out

#- 217 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 217 'Logout' test.out

#- 218 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --clientId '5xtiAKhkdKGwjlbv' \
    > test.out 2>&1
eval_tap $? 218 'RequestTokenExchangeCodeV3' test.out

#- 219 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'lMYBOVPneJ1oqT8U' \
    --userId 'r17SGxIC3BoJ8wOz' \
    > test.out 2>&1
eval_tap $? 219 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '9l2MADeTfxQY6kpi' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 220 'RevokeUserV3' test.out

#- 221 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'NuC97qYVCOOR8tHF' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'true' \
    --oneTimeLinkCode 'BuEnkK7jxZP0eIuS' \
    --redirectUri 'a55t2gW1t2wDpcjM' \
    --scope 'RL308fNdvRlry0eK' \
    --state 'bPTNwyd18fcXjwZJ' \
    --targetAuthPage 'va6jOEo1L16zoZMw' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'LuGSdxdgFwIUIl70' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 221 'AuthorizeV3' test.out

#- 222 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'S3pApsxcHJIKHRdw' \
    > test.out 2>&1
eval_tap $? 222 'TokenIntrospectionV3' test.out

#- 223 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 223 'GetJWKSV3' test.out

#- 224 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'Gh8D3v7258mTxSuC' \
    --factor 'iLgljI1zFypklarE' \
    --mfaToken 'Ysl2mga7UPihGcMq' \
    > test.out 2>&1
eval_tap $? 224 'SendMFAAuthenticationCode' test.out

#- 225 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'nOu7l76FFp7sKSKs' \
    --mfaToken '5K79B75TF8Kpd5H6' \
    > test.out 2>&1
eval_tap $? 225 'Change2faMethod' test.out

#- 226 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'pNOUhY7yZVGICQGd' \
    --factor 'hRoo021CQOct7GDG' \
    --mfaToken 'ZQmt4RjD0P9mVEQz' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 226 'Verify2faCode' test.out

#- 227 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'e0Os9No7kK5YMN7J' \
    --userId 'WgbssphYSyQ4adxf' \
    > test.out 2>&1
eval_tap $? 227 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 228 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'jZPCQWk17aLheQNc' \
    --clientId 'NR3wt9z894XXFNfk' \
    --redirectUri '80Mz57uTdumqqI4R' \
    --requestId 'ogAf25fd6dCfSxV1' \
    > test.out 2>&1
eval_tap $? 228 'AuthCodeRequestV3' test.out

#- 229 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'LGyYkSNd9fzK8xtI' \
    --additionalData 'H0KMiI4fzrR6bXTd' \
    --clientId 'c8HBiOoL8Fn1LEBK' \
    --createHeadless 'true' \
    --deviceId 'WgTqUeEc0M6obEE3' \
    --macAddress 'T0XDLoExhgD0Z27B' \
    --platformToken 'WcC99JcP0cSBcQHv' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 229 'PlatformTokenGrantV3' test.out

#- 230 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 230 'GetRevocationListV3' test.out

#- 231 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'qQK8ljvg6u64b00B' \
    > test.out 2>&1
eval_tap $? 231 'TokenRevocationV3' test.out

#- 232 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'pspc' \
    --simultaneousTicket 'viAJEA4RpiQAecIz' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket 'w9OkDXYPt12hvR54' \
    > test.out 2>&1
eval_tap $? 232 'SimultaneousLoginV3' test.out

#- 233 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 's36qyloxYVUaebHJ' \
    --clientId 'Rudfmjq1EgITqAx9' \
    --code 'LxVh0hkePZUeQBcB' \
    --codeVerifier 'dEZyd93W7PTr5WQd' \
    --extendNamespace 'rGmRYruAqn9bxNL7' \
    --extendExp 'false' \
    --password 'Fx4awuYssljWJFvg' \
    --redirectUri 'RkbMXp4JSuNgBIgy' \
    --refreshToken 'fs7o3sG7Y2j56Ubv' \
    --username 'WP6Ew1tNYsp1oqWN' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 233 'TokenGrantV3' test.out

#- 234 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'Y22B8uOV8Bjk3OcJ' \
    > test.out 2>&1
eval_tap $? 234 'VerifyTokenV3' test.out

#- 235 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'JPPbYW6glUcteiZn' \
    --code 'a7iQdeu6NVuOBxQ4' \
    --error 'B8j4hVJKU4UtTXoZ' \
    --openidAssocHandle 'sWtpYj1mxDW1vVBU' \
    --openidClaimedId 'bT6DIpxlXlNDw7os' \
    --openidIdentity 'xadIyRCwE4N195Wt' \
    --openidMode 't3Kc1HOJPvRGX3nl' \
    --openidNs '3W5XJ9HdDr1lHhUF' \
    --openidOpEndpoint 'rC8lA3iJQKvIOm3F' \
    --openidResponseNonce 'wvG91Hv3anUBsJN2' \
    --openidReturnTo 'uBB541QK1BILVkG8' \
    --openidSig 'Je9cMbv8vl4jmQIQ' \
    --openidSigned 'Uj1LiHlmU1c0w6aT' \
    --state 'FEDPiDum7970bgtg' \
    > test.out 2>&1
eval_tap $? 235 'PlatformAuthenticationV3' test.out

#- 236 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'UoqenByqHOcVh0Q6' \
    --platformToken 'iE3cPRCrcxs1r9zL' \
    > test.out 2>&1
eval_tap $? 236 'PlatformTokenRefreshV3' test.out

#- 237 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'fKBT1wHwGbYaMkty' \
    > test.out 2>&1
eval_tap $? 237 'PublicGetInputValidations' test.out

#- 238 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'EKwPYxQ47q4CLuAj' \
    > test.out 2>&1
eval_tap $? 238 'PublicGetInputValidationByField' test.out

#- 239 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode '1vc12q9iYbr386r6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 239 'PublicGetCountryAgeRestrictionV3' test.out

#- 240 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 240 'PublicGetCountryListV3' test.out

#- 241 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 241 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 242 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId '62nZgXd3t5k1Peon' \
    > test.out 2>&1
eval_tap $? 242 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 243 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'DeTzwIj2x36Lg5cM' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["zGffAf5QuPPQRUtS", "PuCvsReOuaSjcAH1", "bXzqZBHONjf0wNMb"]}' \
    > test.out 2>&1
eval_tap $? 243 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 244 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'gmgtpBYHDZ03Oyrr' \
    --platformUserId 'n4aOR3odBhBPLUcY' \
    > test.out 2>&1
eval_tap $? 244 'PublicGetUserByPlatformUserIDV3' test.out

#- 245 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'RK722ERZzmzIzIgr' \
    > test.out 2>&1
eval_tap $? 245 'PublicGetAsyncStatus' test.out

#- 246 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'jP1piYmLcIuJawma' \
    --limit '54' \
    --offset '4' \
    --platformBy 'AmocEFpSnkHFXoee' \
    --platformId 'fIrBWxJGlWOoazPl' \
    --query 'p5pzLFQEjP9I1QjD' \
    > test.out 2>&1
eval_tap $? 246 'PublicSearchUserV3' test.out

#- 247 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "5EpCumCzlCJ9mtZp", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "ceZdpzfmguzvG2vx", "policyId": "33mMnCgFsKk6U1Ab", "policyVersionId": "FCZsCIf1zffDXDHF"}, {"isAccepted": false, "localizedPolicyVersionId": "ZgdNdlI83G5ppW6g", "policyId": "xReqxA1u4eReMVsm", "policyVersionId": "0BxX7bXi4CN1greI"}, {"isAccepted": false, "localizedPolicyVersionId": "V2qBK5v7XOBosIcl", "policyId": "5ViyCYCR4RmwY8qO", "policyVersionId": "AaWnwWQADQSOpiVe"}], "authType": "8TefArXe9m1bRLaT", "code": "2SzfYmk6nm3VxaiJ", "country": "1gHwYVoJDV0D5AWs", "dateOfBirth": "Tqn9OSP0JhWAJ1Vj", "displayName": "OdTSeGXoY36rbI0T", "emailAddress": "ymvyGBU0WkggWtxQ", "password": "hZuxgBLep2t686z5", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 247 'PublicCreateUserV3' test.out

#- 248 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'DLScuRQDXKz5KZu0' \
    --query 'far7FsnhCrTRa4Wa' \
    > test.out 2>&1
eval_tap $? 248 'CheckUserAvailability' test.out

#- 249 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["TQ78P9ZSgHnrv17b", "oPAOLVwrvUoXNxuv", "RdqvdkULOmpBj3v2"]}' \
    > test.out 2>&1
eval_tap $? 249 'PublicBulkGetUsers' test.out

#- 250 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "nSOyclQpMUA7MKhh", "languageTag": "QtD1xUROOqMqOo5p"}' \
    > test.out 2>&1
eval_tap $? 250 'PublicSendRegistrationCode' test.out

#- 251 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "QyffVGmeoRnmQtFG", "emailAddress": "B70wuyjog6GjOoOP"}' \
    > test.out 2>&1
eval_tap $? 251 'PublicVerifyRegistrationCode' test.out

#- 252 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "er5qdEW3zUhEKaP3", "languageTag": "EjgNeiNssBWFqRzx"}' \
    > test.out 2>&1
eval_tap $? 252 'PublicForgotPasswordV3' test.out

#- 253 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'HzVOlSd8LNu3fC2d' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 253 'GetAdminInvitationV3' test.out

#- 254 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'GWKe3ghakqj3xn2V' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "68Q1bQes6IB1jCWZ", "policyId": "tOvSACFUYjJHHSQz", "policyVersionId": "oRVkK4uAJKSUl5Fg"}, {"isAccepted": false, "localizedPolicyVersionId": "AHJa2N6S8YGA3pYw", "policyId": "3eviSEZjd6DugRjz", "policyVersionId": "kfbwk5XD0ioUNOuW"}, {"isAccepted": false, "localizedPolicyVersionId": "XkhxG3lorWA12Vq0", "policyId": "F97EXwGedlKSHXty", "policyVersionId": "N1asq3eiXmmc8pah"}], "authType": "EMAILPASSWD", "country": "oi2N764lAiAjm7wY", "dateOfBirth": "wad8vDj0c21Df4kp", "displayName": "SuOhOz2PkEFWfSge", "password": "HYXsfhChBlIPSfRj", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 254 'CreateUserFromInvitationV3' test.out

#- 255 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "HN5dTJ2mtnz5Er9F", "country": "eXZe08OvLkkcT8tZ", "dateOfBirth": "rIU0rG6HjA3Jza7c", "displayName": "BiWCJNDfXpfjWvmL", "languageTag": "rRBsn2QFBmJZvPyL", "userName": "dK0qxCpSMWbyy2UK"}' \
    > test.out 2>&1
eval_tap $? 255 'UpdateUserV3' test.out

#- 256 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "xPMMx2A9YQLCguhq", "country": "9ekh2jQp4nbDAOrb", "dateOfBirth": "6kyCFjuxU7Ma5g9F", "displayName": "yapEsIh6mixQoazv", "languageTag": "1iaIruYXxQGtOBBN", "userName": "mzaIefFwWF44CRFf"}' \
    > test.out 2>&1
eval_tap $? 256 'PublicPartialUpdateUserV3' test.out

#- 257 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "Ukc0OmIgjxhB8PPf", "emailAddress": "5dE2iiaRj4LkS6BK", "languageTag": "VxmXRSlf1WfPuOTo"}' \
    > test.out 2>&1
eval_tap $? 257 'PublicSendVerificationCodeV3' test.out

#- 258 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "bSPr5LKt8ZBRfbwV", "contactType": "HxwDWez5Hzuc8UED", "languageTag": "BnNtzeIjpOk5a7LU", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 258 'PublicUserVerificationV3' test.out

#- 259 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ZAH30e7Kl8GLHGld", "country": "fjAV1CThOvWEKt4o", "dateOfBirth": "aoMOVKyz2ljWJcDK", "displayName": "1WdcHbDNVsmRoFte", "emailAddress": "KttypbXaATeH3xNo", "password": "TXg948tEf2ThearA", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 259 'PublicUpgradeHeadlessAccountV3' test.out

#- 260 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "nbO0FHD0umQjZa6g", "password": "uZvTAQ8I1ZTdYwQO"}' \
    > test.out 2>&1
eval_tap $? 260 'PublicVerifyHeadlessAccountV3' test.out

#- 261 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "KR3R587qA2NeCJQg", "newPassword": "fvVp5c3yCQ517WbM", "oldPassword": "3knflW5HRZgQSdJ4"}' \
    > test.out 2>&1
eval_tap $? 261 'PublicUpdatePasswordV3' test.out

#- 262 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'wSyII0Z4MDwvfRyk' \
    > test.out 2>&1
eval_tap $? 262 'PublicCreateJusticeUser' test.out

#- 263 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'fWdBDJFBoBVEc6Dr' \
    --redirectUri 'rAdQLCBvxTz22LdG' \
    --ticket 'USyAn7LdwZVJ8lHE' \
    > test.out 2>&1
eval_tap $? 263 'PublicPlatformLinkV3' test.out

#- 264 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '1RxuNBUFuZqErsO5' \
    --body '{"platformNamespace": "aPaimRwsB2uD9beS"}' \
    > test.out 2>&1
eval_tap $? 264 'PublicPlatformUnlinkV3' test.out

#- 265 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'xTOQsOzRTd5SFsU8' \
    > test.out 2>&1
eval_tap $? 265 'PublicPlatformUnlinkAllV3' test.out

#- 266 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7yjh2vHzPYH4UHGo' \
    --ticket 'WIlCRcNroK6Wx7cl' \
    > test.out 2>&1
eval_tap $? 266 'PublicForcePlatformLinkV3' test.out

#- 267 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId '8heUqizb9EjSz1kN' \
    --clientId 'xKRs5eyZDlX3WZNU' \
    --redirectUri '8UY6tfQqYi3bEyUh' \
    > test.out 2>&1
eval_tap $? 267 'PublicWebLinkPlatform' test.out

#- 268 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId '5EL5bRxIWXPqGyZ5' \
    --code '7t4qJ46r5DWcj0Ff' \
    --state 'bYiJ4xiqL8juvHa1' \
    > test.out 2>&1
eval_tap $? 268 'PublicWebLinkPlatformEstablish' test.out

#- 269 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'lwkaS6TdnZbUf7IN' \
    --code 'i5SFC32WZnkhaY30' \
    --state '39OfTaIjTlBvSUkM' \
    > test.out 2>&1
eval_tap $? 269 'PublicProcessWebLinkPlatformV3' test.out

#- 270 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "qg9f3yV9Lw3BARM5", "userIds": ["6BhKjuPg3G5bTPxZ", "5UFOTEqgn0i0HN26", "2zYOv2QJCRAi8lqC"]}' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetUsersPlatformInfosV3' test.out

#- 271 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "t1RfkczQoehiq3U5", "emailAddress": "Bd7ct5Dca6fzQcPT", "newPassword": "27f6NThbtVN8hCdk"}' \
    > test.out 2>&1
eval_tap $? 271 'ResetPasswordV3' test.out

#- 272 PublicGetUserByUserIdV3
eval_tap 0 272 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 273 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'E6cQXKixIk9NTGR1' \
    --activeOnly 'false' \
    --after 'boJkgDjnvxyTK0El' \
    --before '7P4sNizF6sE8kHL9' \
    --limit '1' \
    > test.out 2>&1
eval_tap $? 273 'PublicGetUserBanHistoryV3' test.out

#- 274 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId '5vEczPmTeNhLfeRF' \
    > test.out 2>&1
eval_tap $? 274 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 275 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LhZCSZyeBMoJUj0O' \
    > test.out 2>&1
eval_tap $? 275 'PublicGetUserInformationV3' test.out

#- 276 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bM9CGUr97NwkQdcj' \
    --after '0.7887733006262122' \
    --before '0.8093255907154381' \
    --limit '93' \
    > test.out 2>&1
eval_tap $? 276 'PublicGetUserLoginHistoriesV3' test.out

#- 277 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'K8f0YQU4FsF390Sb' \
    --after 'tL9NTaMz53geJbVL' \
    --before '3rUQd0Ol23wAiKdI' \
    --limit '91' \
    --platformId 'a3SRGNxjabs0YYjh' \
    > test.out 2>&1
eval_tap $? 277 'PublicGetUserPlatformAccountsV3' test.out

#- 278 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'D0oNdR90EQH2uLvq' \
    > test.out 2>&1
eval_tap $? 278 'PublicListJusticePlatformAccountsV3' test.out

#- 279 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'TqEbqdjeE5ITy9mu' \
    --body '{"platformId": "lW3cRt9yYLkFyVfu", "platformUserId": "VmtG3PUE0CEX8Jpr"}' \
    > test.out 2>&1
eval_tap $? 279 'PublicLinkPlatformAccount' test.out

#- 280 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'L44vnPqQckKv7wnr' \
    --body '{"chosenNamespaces": ["k5tmyLc4vmqOEmGO", "Bxuy8hP58Mfduxgj", "gUxtkiQhqfmHlh3h"], "requestId": "MOuaWz0vDDdf1Ai0"}' \
    > test.out 2>&1
eval_tap $? 280 'PublicForceLinkPlatformWithProgression' test.out

#- 281 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rwxr3tYJpUvCjZnS' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetPublisherUserV3' test.out

#- 282 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'XDwcAQ1FotrR7CrX' \
    --password 'QlTnVj9z3TJmJYNZ' \
    > test.out 2>&1
eval_tap $? 282 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 283 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'QnAQ63N6TXEVlyFn' \
    --before '018ctaPvwx8qnYd5' \
    --isWildcard 'true' \
    --limit '24' \
    > test.out 2>&1
eval_tap $? 283 'PublicGetRolesV3' test.out

#- 284 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'Z6asaLPQpiyhRsfv' \
    > test.out 2>&1
eval_tap $? 284 'PublicGetRoleV3' test.out

#- 285 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'false' \
    > test.out 2>&1
eval_tap $? 285 'PublicGetMyUserV3' test.out

#- 286 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'IndmTGdWyYhAIcsL' \
    > test.out 2>&1
eval_tap $? 286 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 287 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["99DfgQwMsEDN3PQP", "JuXWBPvvOo55LEtU", "Oo0HmIAze9s5tTl6"], "oneTimeLinkCode": "QDJr5dOMLjuOiLJ0"}' \
    > test.out 2>&1
eval_tap $? 287 'LinkHeadlessAccountToMyAccountV3' test.out

#- 288 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "mvLe1piOdBZ5KZty"}' \
    > test.out 2>&1
eval_tap $? 288 'PublicSendVerificationLinkV3' test.out

#- 289 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'BkB6FNJNr9h9QkmA' \
    > test.out 2>&1
eval_tap $? 289 'PublicVerifyUserByLinkV3' test.out

#- 290 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'sIf7HvkU4RfvNFO5' \
    --code 'JYh0psg2xQ282wgk' \
    --error '5NZvDsSAT3kMkngD' \
    --state 'JgJIG8mDhlP2wAfz' \
    > test.out 2>&1
eval_tap $? 290 'PlatformAuthenticateSAMLV3Handler' test.out

#- 291 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId '6jfHhM32QREo0MCV' \
    --payload '1L3q3gTWt8A1NFOP' \
    > test.out 2>&1
eval_tap $? 291 'LoginSSOClient' test.out

#- 292 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'M3QtUkc1x9gFb9pA' \
    > test.out 2>&1
eval_tap $? 292 'LogoutSSOClient' test.out

#- 293 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'mH62xEzo5WhdLSuv' \
    --code 'owXKl2bn9oVgeH4I' \
    > test.out 2>&1
eval_tap $? 293 'RequestTargetTokenResponseV3' test.out

#- 294 PlatformTokenRefreshV3Deprecate
eval_tap 0 294 'PlatformTokenRefreshV3Deprecate # SKIP deprecated' test.out

#- 295 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'mtAQ851Dg0sUigI9' \
    > test.out 2>&1
eval_tap $? 295 'AdminGetDevicesByUserV4' test.out

#- 296 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'JZnYIdG2Mi14Of11' \
    --endDate 'yjdYewwTXkyVbuLJ' \
    --limit '26' \
    --offset '19' \
    --startDate 'NMebdYMgM0sVglVj' \
    > test.out 2>&1
eval_tap $? 296 'AdminGetBannedDevicesV4' test.out

#- 297 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'pFo1jsaen3OnfJw1' \
    > test.out 2>&1
eval_tap $? 297 'AdminGetUserDeviceBansV4' test.out

#- 298 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "cZNXbXt2Nti5MnuP", "deviceId": "5FslOtlJXzYt82O2", "deviceType": "fyAAVs1cBHUVQEqm", "enabled": false, "endDate": "VhQP97MCjzTbXQ0g", "ext": {"4xbpempD29ppAfKP": {}, "apfLP68W2iJ2PPZR": {}, "KNZQjvUFSEYOIEKJ": {}}, "reason": "WQe2ZoPXr21fwmSw"}' \
    > test.out 2>&1
eval_tap $? 298 'AdminBanDeviceV4' test.out

#- 299 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'T9xVS3O7lAr9HmIf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 299 'AdminGetDeviceBanV4' test.out

#- 300 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'e6cJUQVMSF3caqJ9' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 300 'AdminUpdateDeviceBanV4' test.out

#- 301 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'HdzYbp2HASMEAJYB' \
    --startDate 'nZmft6YdOyv2CgVB' \
    --deviceType '7zyrPxGt7YOTvLyJ' \
    > test.out 2>&1
eval_tap $? 301 'AdminGenerateReportV4' test.out

#- 302 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 302 'AdminGetDeviceTypesV4' test.out

#- 303 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId '6ZuZA52jcVrRZ9H1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 303 'AdminGetDeviceBansV4' test.out

#- 304 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'g0hkkvHrmRLBsFIn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 304 'AdminDecryptDeviceV4' test.out

#- 305 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'qz9lYMbiJ8Wm2LzU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 305 'AdminUnbanDeviceV4' test.out

#- 306 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId '23XdYrd8MEXozOGy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 306 'AdminGetUsersByDeviceV4' test.out

#- 307 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 87}' \
    > test.out 2>&1
eval_tap $? 307 'AdminCreateTestUsersV4' test.out

#- 308 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": false, "userIds": ["OBXd0kj593hJofQ0", "SlVvBoPPG0j1QwUR", "d5c2voaJPFnLc1jR"]}' \
    > test.out 2>&1
eval_tap $? 308 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 309 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["v1rMalqj54JbXdbr", "NQgJ4l0DPPkp7b1p", "TebT55u0nmpWZV9k"]}' \
    > test.out 2>&1
eval_tap $? 309 'AdminBulkCheckValidUserIDV4' test.out

#- 310 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'l9gOQjU62xoqvupZ' \
    --body '{"avatarUrl": "Y1wV6xxYatftUZtK", "country": "dVfYyDwqqoWiFuyE", "dateOfBirth": "CACMDX9p92jIyW8S", "displayName": "3vbhPEB14vU7k6IB", "languageTag": "8sl5C7QJrbJdzQZs", "userName": "9CcERtSqFpJvy3eZ"}' \
    > test.out 2>&1
eval_tap $? 310 'AdminUpdateUserV4' test.out

#- 311 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId '8tWT7ECDY78mmXSJ' \
    --body '{"code": "93AcUrOuoEq7CUca", "emailAddress": "Cd590L1SfQAy8TL2"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminUpdateUserEmailAddressV4' test.out

#- 312 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId '4yeVjWiFKhfGN49K' \
    > test.out 2>&1
eval_tap $? 312 'AdminDisableUserMFAV4' test.out

#- 313 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'N9k0WWiG935j3ZS5' \
    > test.out 2>&1
eval_tap $? 313 'AdminListUserRolesV4' test.out

#- 314 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '8251qiTEpDKoRVxx' \
    --body '{"assignedNamespaces": ["G58PhEJNovJXsRg0", "UKI06z1Hga1Ls0Uj", "30DPreN69aSHvEcn"], "roleId": "0V0SC5QRqU2pZHcQ"}' \
    > test.out 2>&1
eval_tap $? 314 'AdminUpdateUserRoleV4' test.out

#- 315 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'cAUC3emu4cUjiIUn' \
    --body '{"assignedNamespaces": ["eITyOBOXiMCho2pL", "Z2kMiUHBABfDHTYw", "LTJuSkm2NmtINh7U"], "roleId": "JcW5YeVMBiN0u9Tb"}' \
    > test.out 2>&1
eval_tap $? 315 'AdminAddUserRoleV4' test.out

#- 316 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'eO7O40TfrZumU2YY' \
    --body '{"assignedNamespaces": ["udh4YYQe752V4gwh", "eYx2YWvt3FqFqFZk", "nEEXR7pLof2vZD0B"], "roleId": "oiEGV63wyGenHKcR"}' \
    > test.out 2>&1
eval_tap $? 316 'AdminRemoveUserRoleV4' test.out

#- 317 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'false' \
    --limit '22' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 317 'AdminGetRolesV4' test.out

#- 318 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "D9x1pTG6YvTwM57T"}' \
    > test.out 2>&1
eval_tap $? 318 'AdminCreateRoleV4' test.out

#- 319 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'tCwWtLH664MrPUuh' \
    > test.out 2>&1
eval_tap $? 319 'AdminGetRoleV4' test.out

#- 320 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'JJOtOA74Pdqr6m99' \
    > test.out 2>&1
eval_tap $? 320 'AdminDeleteRoleV4' test.out

#- 321 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'XW2l1JkFEOEjKdSz' \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "JGjBnfQIcYAGSCOh"}' \
    > test.out 2>&1
eval_tap $? 321 'AdminUpdateRoleV4' test.out

#- 322 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'qh8CvZx5Grh6DTlk' \
    --body '{"permissions": [{"action": 24, "resource": "ndRlgpBSepwhPtiY", "schedAction": 52, "schedCron": "IGnHED0S6WtzZmMC", "schedRange": ["jqrw2aR9u9ORwcq6", "iJWPQVwIlhStU5Vo", "Bc6oLo2ZG6VHrsSK"]}, {"action": 60, "resource": "P3PCqnjpFDOwGDfq", "schedAction": 94, "schedCron": "MqIrGddHOyYuxoVS", "schedRange": ["E7s3D8Y0WAyjVFpU", "84FuUs27zqSgykUZ", "wKRWxIweYapiE5pk"]}, {"action": 47, "resource": "ShR9DtcnWQc2LNI9", "schedAction": 67, "schedCron": "QbhaOPb6XtpDZXbT", "schedRange": ["Mkm9fQvS08owTR3g", "VxHGnGRZUSN8rv4x", "s2JT53PXwbdUtAwb"]}]}' \
    > test.out 2>&1
eval_tap $? 322 'AdminUpdateRolePermissionsV4' test.out

#- 323 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId '0B7vmfs0psik49p4' \
    --body '{"permissions": [{"action": 12, "resource": "d3q80GbkRCdskDZ5", "schedAction": 92, "schedCron": "ex1swfNjjdCFQtTk", "schedRange": ["SJ4YdEVtZQTTlYim", "tnfkPi8DG2eGvMVC", "PKijP8Bta8LlMrMQ"]}, {"action": 27, "resource": "fvDl1SXp7Km76Ezn", "schedAction": 10, "schedCron": "NZ07msUWX6yIXSir", "schedRange": ["mFZxP8wuTQA6FoIN", "gT3fi8ZyYRcIT7ky", "aFeiVuYT9YKlMsXg"]}, {"action": 73, "resource": "1kBBsmIQJZLIWPNg", "schedAction": 52, "schedCron": "gu4jtqO9piAjrEwB", "schedRange": ["tTqAmBAWb7gHc10B", "dTsCamoUpelHuu5Z", "MGz4AjIVJQRZmuts"]}]}' \
    > test.out 2>&1
eval_tap $? 323 'AdminAddRolePermissionsV4' test.out

#- 324 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'YBNGOwP5mcpMdMNz' \
    --body '["rhSS6aN0tVSnEJoj", "kHnV1ra5iJ5Zy4lH", "UUJbbzgUIIEDXDtK"]' \
    > test.out 2>&1
eval_tap $? 324 'AdminDeleteRolePermissionsV4' test.out

#- 325 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId '96UDyfGuxj1m2FfI' \
    --after '0PtR3vgaEYb2Rm6y' \
    --before '1wic1e0iZ44RWU5t' \
    --limit '41' \
    > test.out 2>&1
eval_tap $? 325 'AdminListAssignedUsersV4' test.out

#- 326 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'PsVQ7kmO367vOQyN' \
    --body '{"assignedNamespaces": ["yc9cw0ErDtLSmKcn", "KwW5ziLSKbxmwLVN", "GklAbGLZVwIxlL88"], "namespace": "TtOXjR9XYOacmx63", "userId": "M3jCeeTOCnl28BLR"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminAssignUserToRoleV4' test.out

#- 327 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId '91UjzEdZnI1zzhFE' \
    --body '{"namespace": "tV8pfWyp7f9lqBXA", "userId": "o8PxPDQBmWYtt1A3"}' \
    > test.out 2>&1
eval_tap $? 327 'AdminRevokeUserFromRoleV4' test.out

#- 328 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["ehdmSLeoQDxFks2M", "ttanjSrVflWKskew", "q1KN90lat3dB8h4v"], "emailAddresses": ["VmEoKg2QoIHnJmOf", "TAUXp8vOENl2ISfT", "2KoV5vFyiLeID7ej"], "isAdmin": true, "namespace": "CL0t72dNXeV4QtU9", "roleId": "HgKyc0ZRE9doc8sO"}' \
    > test.out 2>&1
eval_tap $? 328 'AdminInviteUserNewV4' test.out

#- 329 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "vCS0JqIq4BTpfifO", "country": "vVNPyJSExk7jC1oA", "dateOfBirth": "9YlqU8FvybMmntXT", "displayName": "WJR6OiBpuPpzK60s", "languageTag": "KvkepOZOlvrX7DDR", "userName": "l0ccrQvR1LrU7xdW"}' \
    > test.out 2>&1
eval_tap $? 329 'AdminUpdateMyUserV4' test.out

#- 330 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 330 'AdminDisableMyAuthenticatorV4' test.out

#- 331 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'JqS9O7acMxEwXmeG' \
    > test.out 2>&1
eval_tap $? 331 'AdminEnableMyAuthenticatorV4' test.out

#- 332 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 332 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 333 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 333 'AdminGetMyBackupCodesV4' test.out

#- 334 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 334 'AdminGenerateMyBackupCodesV4' test.out

#- 335 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 335 'AdminDisableMyBackupCodesV4' test.out

#- 336 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 336 'AdminDownloadMyBackupCodesV4' test.out

#- 337 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 337 'AdminEnableMyBackupCodesV4' test.out

#- 338 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 338 'AdminSendMyMFAEmailCodeV4' test.out

#- 339 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 339 'AdminDisableMyEmailV4' test.out

#- 340 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'bhk4YZMreQ4QAYlv' \
    > test.out 2>&1
eval_tap $? 340 'AdminEnableMyEmailV4' test.out

#- 341 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 341 'AdminGetMyEnabledFactorsV4' test.out

#- 342 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'TanLXE1en4zygNkA' \
    > test.out 2>&1
eval_tap $? 342 'AdminMakeFactorMyDefaultV4' test.out

#- 343 AdminInviteUserV4
eval_tap 0 343 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 344 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "58v3OPNirKXrr4Rp", "policyId": "QcZPBkt7sxqVgFrA", "policyVersionId": "EmpTvVQtMfND0y6q"}, {"isAccepted": true, "localizedPolicyVersionId": "O5R0MxLzglhiOzUU", "policyId": "p6K6YDC1PqnJeaHh", "policyVersionId": "zwX7hB1gjkBig5At"}, {"isAccepted": true, "localizedPolicyVersionId": "LqXDa2uSUSyzrdfi", "policyId": "dojdzUHFcVs9RMw9", "policyVersionId": "zLINiFd1a7hcxuTp"}], "authType": "EMAILPASSWD", "country": "0xlkKDHi55t09le1", "dateOfBirth": "poYuBknM28hGLtiR", "displayName": "LPTTqRfYENF9ft47", "emailAddress": "xSuXsV83HkyEUnHC", "password": "cOBVU9VAmFKlYaKH", "passwordMD5Sum": "A7v8vv7PB1ASa271", "username": "uIqkCErbIEXgsTJx", "verified": false}' \
    > test.out 2>&1
eval_tap $? 344 'PublicCreateTestUserV4' test.out

#- 345 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "GOvSpaRRbGAOiK1M", "policyId": "H0BsndYC18Lk9K6H", "policyVersionId": "tAha90Dif4leypVb"}, {"isAccepted": true, "localizedPolicyVersionId": "cJpUe4qwCGkJD87i", "policyId": "q9oTPwD2c9eRHJjI", "policyVersionId": "uQcRTdDsbJQAHoIM"}, {"isAccepted": true, "localizedPolicyVersionId": "iHLYUg3NHmCzNqGd", "policyId": "dgirzuoMIq1IAoP6", "policyVersionId": "krYUcZFvJVyAE5wX"}], "authType": "EMAILPASSWD", "code": "aUCjOklakxpiEuvw", "country": "2QkV7dp7JMdHy8Mo", "dateOfBirth": "eh1tYhKqE59A9vVq", "displayName": "p7tiiOIzZez9OwW8", "emailAddress": "tOruQPIwCGFhUP8b", "password": "7oDzyxbOVWDAQclH", "passwordMD5Sum": "TTdGJPDqRFC7pTse", "reachMinimumAge": true, "username": "G7cnFFRyG3G4Ez6v"}' \
    > test.out 2>&1
eval_tap $? 345 'PublicCreateUserV4' test.out

#- 346 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'KIi4WhC5ygjAoNiB' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "hEXRDKPIBL3eGiMQ", "policyId": "yvFuBs07EQw684yV", "policyVersionId": "hg5RGIcndMECaXHP"}, {"isAccepted": false, "localizedPolicyVersionId": "77uw5gncFUOJ1x1y", "policyId": "M58NtVNS8B84uTCh", "policyVersionId": "I0VuHc9nB9HWKXE7"}, {"isAccepted": false, "localizedPolicyVersionId": "eQVLEzdv05aHMORa", "policyId": "WjDCNyluVrs7b7iR", "policyVersionId": "SN7bj5DFAWNfgTft"}], "authType": "EMAILPASSWD", "country": "3PQmmLXBrA6beREW", "dateOfBirth": "3gxkOUiZ1qSc52FU", "displayName": "QwkqxmA9PhWn3F4m", "password": "raEU0DVL9vPyhch1", "reachMinimumAge": true, "username": "KMGz73r40LgWoJTV"}' \
    > test.out 2>&1
eval_tap $? 346 'CreateUserFromInvitationV4' test.out

#- 347 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "Jq47bUMIRr9XhNV7", "country": "ocnfPsHL269W1ff1", "dateOfBirth": "mURNHxkMvCvSaoSc", "displayName": "SfLxtvwAjCbEiJyu", "languageTag": "vIh1MG2nsSFyazAG", "userName": "c3GYeCwBnt0RjPTW"}' \
    > test.out 2>&1
eval_tap $? 347 'PublicUpdateUserV4' test.out

#- 348 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "DiO5Rm4hgLW2AsrZ", "emailAddress": "1L5PkaWNfRJWV4Jc"}' \
    > test.out 2>&1
eval_tap $? 348 'PublicUpdateUserEmailAddressV4' test.out

#- 349 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "VzdMU2Oekst4z1Fc", "country": "u3FpSEzxEgOByNIq", "dateOfBirth": "vWGrPEPY8VvXg0DO", "displayName": "cfEu9Y28PAjhKGPe", "emailAddress": "Njf0oj3naPIJop76", "password": "IueMBCRXMQoRsiuu", "reachMinimumAge": true, "username": "vrYyBL3q3Kz87WFY", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 349 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 350 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "ZYtozufGCTlSIU5x", "password": "3kwARth2HSifhQUb", "username": "9SjDNox6ZL0b1DR5"}' \
    > test.out 2>&1
eval_tap $? 350 'PublicUpgradeHeadlessAccountV4' test.out

#- 351 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 351 'PublicDisableMyAuthenticatorV4' test.out

#- 352 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'GNpUIwFEYvu0kJ8T' \
    > test.out 2>&1
eval_tap $? 352 'PublicEnableMyAuthenticatorV4' test.out

#- 353 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 353 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 354 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 354 'PublicGetMyBackupCodesV4' test.out

#- 355 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 355 'PublicGenerateMyBackupCodesV4' test.out

#- 356 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 356 'PublicDisableMyBackupCodesV4' test.out

#- 357 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 357 'PublicDownloadMyBackupCodesV4' test.out

#- 358 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 358 'PublicEnableMyBackupCodesV4' test.out

#- 359 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 359 'PublicRemoveTrustedDeviceV4' test.out

#- 360 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 360 'PublicSendMyMFAEmailCodeV4' test.out

#- 361 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 361 'PublicDisableMyEmailV4' test.out

#- 362 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'LmafHrMIMVY4gY4M' \
    > test.out 2>&1
eval_tap $? 362 'PublicEnableMyEmailV4' test.out

#- 363 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 363 'PublicGetMyEnabledFactorsV4' test.out

#- 364 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'SmpuoapP5154q4DA' \
    > test.out 2>&1
eval_tap $? 364 'PublicMakeFactorMyDefaultV4' test.out

#- 365 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId '9wAhYZPEIQpQaJLQ' \
    > test.out 2>&1
eval_tap $? 365 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 366 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "jPV82Sh7YgbR4rMH", "emailAddress": "QsRfXrVGQzO1qYds", "namespace": "G2hhx2VgOD4aT5Vr", "namespaceDisplayName": "vJGaPv72nlDMbcp3"}' \
    > test.out 2>&1
eval_tap $? 366 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE