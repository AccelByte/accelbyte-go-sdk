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
echo "1..363"

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
    --body '[{"field": "4ZGIhNeAWVbizfCP", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["LyHZf4QaM5VPBkNI", "LpKy650jnFuSw7SD", "5drFQJjDAhcC6cuk"], "preferRegex": false, "regex": "Vk2QJsGKYnC8TyDs"}, "blockedWord": ["UcAoaNtBfw4SifjE", "oDSSdX6V9dUDZVZX", "MDS2F3FiJcYJ1ILX"], "description": [{"language": "zUi5FwOi1WBdPGnv", "message": ["8iSpY5YEPFq2GiJA", "92oWcW8JjiszMnxX", "A0nMZAXpb7hmz1LY"]}, {"language": "7uGuq9w3VZvkNDp0", "message": ["o8lDKtEYKnSkQ1Ab", "fFULuf5UWtkD77T1", "1AuuSti3sLjjLUYT"]}, {"language": "ypPmWtglXU3EgGnZ", "message": ["rqrMNM89drNlVTFr", "cj2D0NzMqfQLdbC7", "iPDU3iGDm35qjZgU"]}], "isCustomRegex": true, "letterCase": "ChYmi27Tvx73LLqv", "maxLength": 82, "maxRepeatingAlphaNum": 19, "maxRepeatingSpecialCharacter": 42, "minCharType": 72, "minLength": 83, "regex": "p5yq6jnpYIhAjFr1", "specialCharacterLocation": "rUOJzNKjwvmo8Glu", "specialCharacters": ["Aevdf7JP8t6leIo0", "5ghKbnPcQDEyoK9d", "Y0JcGwy6jrYG38R7"]}}, {"field": "NWaNUb4hUAtO1zdb", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["OzHmCcVGTJHEfwsP", "5fXZTYzud6SKtpoe", "fFcODFxkewX36rht"], "preferRegex": true, "regex": "6dhpVb1GlM22IPmJ"}, "blockedWord": ["PiQzn6t5to6apGoY", "FsAhWcTuRzJS3J0f", "bmMkpT8LqJyqG8b1"], "description": [{"language": "imKonFfB4iaMhEPV", "message": ["5gMSUGk2zeZ3Fxd7", "fURYNxV3HV0GrK84", "NPCbvzG9Spw6zJ3k"]}, {"language": "HyOXLFVDcPIG5G8K", "message": ["8AWBKqENEITeToor", "T6Evu7n6Rcww8xaj", "HX1CKI77YWMH76Va"]}, {"language": "eNgjgtTNTUEGaOSC", "message": ["jGgpB1OjOillyHp9", "f9yph135p5XfED4o", "STc907gw8VPGTaMy"]}], "isCustomRegex": true, "letterCase": "GidL05x2BJjjpTmi", "maxLength": 12, "maxRepeatingAlphaNum": 68, "maxRepeatingSpecialCharacter": 64, "minCharType": 22, "minLength": 89, "regex": "h7wTYylL9STsdd6C", "specialCharacterLocation": "zkvXzCdhGg1C4rS9", "specialCharacters": ["qxtkooyWFd6tBAat", "zRydKgUXVMQ0YKJX", "aw4dnSxzc7zoSQx4"]}}, {"field": "eLoqK5h5us6oBkVv", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["lcmlEf3ZmcULAV1N", "SH6tIpikmUxptIDM", "l8c0bFj0WoQQSc2A"], "preferRegex": false, "regex": "BK3PNHb7IzkQdBNK"}, "blockedWord": ["15zmvNdSjkgk9V0h", "Eg10BDNmnT4Yvnph", "u4kXpvLcAIz2RKdU"], "description": [{"language": "1zohlU37DyMonCWH", "message": ["mspChK8I9JAQAGmN", "CcBe5tyOjh6V8Gks", "Lf2m8GOO7d4iQ61V"]}, {"language": "rPDzMztntSfwUDmJ", "message": ["KPXdvrLKFsbZ1920", "9EEwBIelTcdaYDqv", "r9JccguGLTRHfjqK"]}, {"language": "VYP7suSpI25m3RLS", "message": ["HTYJHqUUphsHygS1", "HXBaDFhIcM3NLDMW", "TksFwIhia0F7urdX"]}], "isCustomRegex": false, "letterCase": "LwklJRy61mC0x37k", "maxLength": 64, "maxRepeatingAlphaNum": 31, "maxRepeatingSpecialCharacter": 50, "minCharType": 98, "minLength": 57, "regex": "WQh83tx4pZ3sIvdH", "specialCharacterLocation": "HzevAnE66NZ1jiPA", "specialCharacters": ["aI5ccJZBVyE0XSai", "vP0M9fK871TUZkIE", "QmSdmuI24zQcdlzB"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'ZGUTZv2Is61McaLD' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'YnRvfmpdAIrjl4NW' \
    --before 'HhFPmTpnHJJtx6VO' \
    --limit '46' \
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
    --body '{"ageRestriction": 38, "enable": false}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'NvgIvPClbaUsaHD7' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 28}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'POiNXmi3Qv7swe2f' \
    --limit '65' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "YeyNodRfInxAFR7s", "comment": "doLYUtbtqzmkE4T2", "endDate": "h0wC1NKR05hT7H71", "reason": "ABE1IJMOX1ViDepE", "skipNotif": true, "userIds": ["65MNumpv3bCq4mGq", "Qmcrsa5yUjYeNRyU", "rGYkP7PtOG7RAeYS"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "zEJdq1IWdVVIdhpj", "userId": "24QGm9H56TSXs1xK"}, {"banId": "R3GuZH6XcP6yuzVf", "userId": "eJOda6vsIkf0umsw"}, {"banId": "jrjLniKf4IzZCEwZ", "userId": "SJpICw9xfI1eOGt1"}]}' \
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
    --clientId 'xDSyxHD7ZAfQAok2' \
    --clientName 'sH0WCDh6HvUkp9s7' \
    --clientType 'FEw7sR5OReiKeuuR' \
    --limit '99' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["Q6HZubVxo3ls67iu", "UgeAJXMoHWXc0Vms", "1DQFkF5VhSaWGIq3"], "baseUri": "gnThr2VWGZ1Fdw22", "clientId": "HZ0uzM1EltI36qbk", "clientName": "z9hK7t3n8okYa03q", "clientPermissions": [{"action": 33, "resource": "IJywJzyLRqzeMs8T", "schedAction": 79, "schedCron": "gGQmzT9nNVtT5aGQ", "schedRange": ["DHUg5UkXaERr3tbK", "cv16usmez2wNFVTl", "r6oB1K5UiEbfiLox"]}, {"action": 83, "resource": "lifDGo14DbZsabxq", "schedAction": 32, "schedCron": "EE3TicKJVWNvNcpq", "schedRange": ["PFNzC2lXtV7DeCaC", "JaBmaQPB2X6m8F8k", "cbNudWWqljD1dagk"]}, {"action": 53, "resource": "45Wt4RazV2hRkkJp", "schedAction": 51, "schedCron": "19foCanFZ68Jfb4v", "schedRange": ["iOO8TBAwW3N5ESxC", "O9JhDszYUDvaN6hb", "JUiqMmuinDEEbo6s"]}], "clientPlatform": "t17lpPbhnMJd570k", "deletable": true, "description": "Y9AKf2Bs8EWQcqx8", "namespace": "SHttjl5D7jmKYcDy", "oauthAccessTokenExpiration": 75, "oauthAccessTokenExpirationTimeUnit": "QRDlX5xRXiaQdEWp", "oauthClientType": "RMgKCxaZlxyJUIc4", "oauthRefreshTokenExpiration": 20, "oauthRefreshTokenExpirationTimeUnit": "83k6mm13f2dntsZ5", "parentNamespace": "9en992rTOa0lmgU6", "redirectUri": "2FGs7boDfTqUWqkV", "scopes": ["45SqzHfFDGmXCtan", "abodx72L3Vzqlf6a", "BGGAKgvbLmbSHqnq"], "secret": "XP4vZqjCYZQF2B5O", "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'L85xtWNUTBX9rarN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId '7bkznUGosxCNbvnx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'steJ7TN1IsleIGRp' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["hwC2nRj5DeHfiS8c", "QSb4t9wWhCmAX3oU", "hSCbOxdsHEjEqKKj"], "baseUri": "uR8MpxIK2ws2Md4e", "clientName": "hxw8BxI9LVjHUEaB", "clientPermissions": [{"action": 6, "resource": "oBO3ChyVzyP6kzYZ", "schedAction": 20, "schedCron": "ohTFV6Nw6pV6kQ2l", "schedRange": ["8txZwwrQab1CO3aN", "w2Ushmt3EKE54hMl", "j93lUjIiJ75XZxfK"]}, {"action": 77, "resource": "6JCX0226uJC87bIg", "schedAction": 55, "schedCron": "1K3CzSpA5S8Li7cy", "schedRange": ["qhvv29jUrIEmaNWI", "NXHykZcAqV1WFVny", "J14v4lBUsRrI94VF"]}, {"action": 96, "resource": "SaW2FAdnQiGhzpUi", "schedAction": 6, "schedCron": "XLxO2vITpIJsAGDM", "schedRange": ["SWndNlGAUzSNtzp1", "XGpTEoHckSFCGLQ1", "qQoSc61RotwHlPqv"]}], "clientPlatform": "7n0touFSDc1SiQgg", "deletable": false, "description": "HDuoTvyx4S262oDg", "namespace": "g3WyqlH9y4OC7itI", "oauthAccessTokenExpiration": 50, "oauthAccessTokenExpirationTimeUnit": "I9Pq9dxgIn7rcoLQ", "oauthRefreshTokenExpiration": 60, "oauthRefreshTokenExpirationTimeUnit": "E2UxB2Fxt5UWqsZY", "redirectUri": "RoqxVglgZPSexjgC", "scopes": ["A5naahyu8ogh7dXU", "V2L3Te9XVjnrSu3L", "mrIsZUw5175VR3u7"], "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'wbTLhrSqjJwikAk0' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 9, "resource": "V0AUCCiukrB5HMWK"}, {"action": 99, "resource": "QbzFS6jAf6lZU8SH"}, {"action": 52, "resource": "UzslW7VS9V7rrOn5"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'lnd4GWV80Q5r6Wta' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 30, "resource": "xQYCm1whWjHDmTtF"}, {"action": 61, "resource": "ulscaJaJ4R8BuDX2"}, {"action": 82, "resource": "uojuE8261wgnwEra"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '70' \
    --clientId 'c0GMEM6QMqwIt3G4' \
    --namespace $AB_NAMESPACE \
    --resource 'IKu4VE8n6HJhaDWr' \
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
    --body '{"blacklist": ["0kkMvWNJJSU5joMj", "kG0Mf9vHSYMqg6DS", "tXryZlrx0jMyHlCY"]}' \
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
    --limit '98' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 133 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 134 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'yjYvRJqM8eURCvCS' \
    > test.out 2>&1
eval_tap $? 134 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 135 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'XuY8hCQvrspixKRT' \
    --body '{"ACSURL": "RLGxrhbALGwv4ad7", "AWSCognitoRegion": "GysGTGnPpCPnQRuQ", "AWSCognitoUserPool": "j7EJnyx3Ir94rj9Y", "AllowedClients": ["OGbWyL9OAhAe9pCu", "n1NqXpKih3GGtalU", "FaFsz78tJxwXe7b9"], "AppId": "GIt5IGVHOYaeuunK", "AuthorizationEndpoint": "XxDP4jRvaZljZhNV", "ClientId": "6As583wemg2i7x9w", "Environment": "grd7WSgBDrRKjsg9", "FederationMetadataURL": "gQH7j5lCQXwZOecE", "GenericOauthFlow": false, "IsActive": false, "Issuer": "pa272wQLnKW5DgLt", "JWKSEndpoint": "bKkQEC8l82qE1Us6", "KeyID": "cLNBHrkeq1n47UTV", "NetflixCertificates": {"encryptedPrivateKey": "FtTjCcHX5Rxa52xi", "encryptedPrivateKeyName": "hOsSRjJItwrCFHli", "publicCertificate": "jywPaXPbHoRjkTEm", "publicCertificateName": "COlyGUNgbQTnkTqm", "rootCertificate": "Q3kluO2PU5J5H77v", "rootCertificateName": "I18FQN87IHBWemLK"}, "OrganizationId": "4x8jlguGF5u8TweC", "PlatformName": "kJr25DfCdQZc9n1I", "RedirectUri": "AcLCPfPHChvw7NkP", "RegisteredDomains": [{"affectedClientIDs": ["N3vZs26VD8TJY7uC", "Zs20M52tQq5vcpWX", "fVdlHdKdEXaON69t"], "domain": "JfqyKlWDuiq7cXty", "namespaces": ["trQhQbNsbfkNkt2H", "q58gmZ8M1dY9nJIi", "ILgJDDpz9uiM7NS0"], "roleId": "DxjEg5ZvYvuHqGI7"}, {"affectedClientIDs": ["E602O70TcDVs9qfy", "xdZxt48amRNAUciJ", "FZG2lzQdt2BoF2Qo"], "domain": "2bJZOHksH88H9VKT", "namespaces": ["7C5KwjfefpOb2lH0", "yjvBAIAXUVvRLXsg", "3iJM4HsKyqnJ1rDw"], "roleId": "aWxTcvtzTLtWrtoG"}, {"affectedClientIDs": ["oduOo4FL9sxRm13P", "FME7zOxzTWgBclg0", "gpsSDqVQT4fjJNNV"], "domain": "oqOolD9xcUMWozyH", "namespaces": ["yFn6M1SSc2Gxcfrv", "367GUamNGWwgHQ1C", "d8PpTCO2xrIvOlAu"], "roleId": "1oF83M3ZyL962MdK"}], "Secret": "WBP4yp3BcYKaF7lv", "TeamID": "twA6gXxWajdXHx2B", "TokenAuthenticationType": "W3gLUidK2xQpbitS", "TokenClaimsMapping": {"n7HXdl5A3fuS28hJ": "a1ot0qmugmzyoNoZ", "HXgxNa76bLGrxslp": "swkLLMgjVqw4ZjQr", "Q3vsUaCeuNzihGLA": "voG7ZQaGkUibIk0D"}, "TokenEndpoint": "1SWuBgUzb3pWcK8a", "UserInfoEndpoint": "fqiLLH9OaiAQXeJt", "UserInfoHTTPMethod": "TqB4trGNUM7OPXhJ", "scopes": ["3tN5anyU2gWjIdoz", "SFzztjO9A3wTFO0g", "ZYPfVwfM67UVYEIJ"]}' \
    > test.out 2>&1
eval_tap $? 135 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 136 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'pJqs2DnW2hRfvRGL' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 137 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'kxR52PAjCMb2ZnYJ' \
    --body '{"ACSURL": "xeBIYUBkN3bWdSYR", "AWSCognitoRegion": "YuZD5SxoKQyE7UFE", "AWSCognitoUserPool": "E8M8r76anF8KueU8", "AllowedClients": ["wyqnE4cjHuvmcfQF", "yrMsktQr9DYIbJ67", "9J0NBOXWt4XMJ1ji"], "AppId": "LrP5QSvFRKolSnLW", "AuthorizationEndpoint": "JXBwPrcxL4bnbYBK", "ClientId": "tyXpT7T1KIkqX6k4", "Environment": "FIs8iVx8hsf8ybsK", "FederationMetadataURL": "YvrlxabDsNKNXAS9", "GenericOauthFlow": false, "IsActive": true, "Issuer": "9KhaenHuUBWy42e6", "JWKSEndpoint": "N4gxtIPYZce71bbr", "KeyID": "o3AafuVJNF7pSFnm", "NetflixCertificates": {"encryptedPrivateKey": "su20mbK5ntKU5pve", "encryptedPrivateKeyName": "kCHi8HYoKMLC1Tgz", "publicCertificate": "xAn2awZkMOMS6CZc", "publicCertificateName": "IDyjTnhglxnB6sxH", "rootCertificate": "srW5iSizDxJaQOOd", "rootCertificateName": "urz4OEsUkV99mEi4"}, "OrganizationId": "Twl3fedeDgwJHzef", "PlatformName": "66p1i8svkcqy8UKK", "RedirectUri": "VFUyR8U3P81AbiAC", "RegisteredDomains": [{"affectedClientIDs": ["sK6RUdB8ajNTcd9W", "r6tfUqiZlN28mynE", "CkC5Llh7sRgy0iNW"], "domain": "8JzRXdm4IwmrSLC4", "namespaces": ["Zq1a7wWHlUuFnBIC", "Q3JvVgODuT3EcYMx", "aJb7C34SDDf3caAI"], "roleId": "0OoaBQitabXczw6R"}, {"affectedClientIDs": ["uJ6XcFtQHe4XLM1j", "jkqLoG41KpOK83OS", "OzxHlV5jkoIOdG7u"], "domain": "42cavaqjxo4FyLSO", "namespaces": ["HEIveox6M9rRQdof", "fdMBeeIzuhIjIjjt", "Jm0Bm0k9NOmqsxop"], "roleId": "GGjd6UBatgzMH4tG"}, {"affectedClientIDs": ["nYzMuBSVMi9q8WzH", "C3Lewa8iv9vUf24a", "8o4Mp6DBaJsPPHvB"], "domain": "rkCvwteV0yL4oiBp", "namespaces": ["DaISipduq9wtDYa1", "LQ0BFQ8BlWgC8KgB", "v0Zjqwx1XRZIM7oh"], "roleId": "F0hutZGaY6zIqM6H"}], "Secret": "OADtr7whqMFcEK6S", "TeamID": "vz9jrtOgdnveJPPD", "TokenAuthenticationType": "DjwlIJpqoTECux6b", "TokenClaimsMapping": {"YAaoutQUMbFe9kVJ": "coIInuk6T9p2iPwO", "tRTsqmscCACU7IFt": "Q5q0eiaf3nzrY5j8", "yj0KVyybrP3UXdUx": "xDpKDlu4oV0A26oI"}, "TokenEndpoint": "rcd44ezVcalNwx4w", "UserInfoEndpoint": "BeCBLk70lzSHTNTx", "UserInfoHTTPMethod": "W3jcGk6ZvbVBniaB", "scopes": ["P1nCuc6Za4DRAZjW", "tcIjpkjNFZU2CjzU", "Eq41pZTGjN8EMDxS"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 138 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'spzIGCG8825MavpC' \
    --body '{"affectedClientIDs": ["LnZWx3NuZ6V7Txb1", "WEF9r6o6WQwF0OOx", "yH9FxOGvplOKBfh5"], "assignedNamespaces": ["xM4qEM6cua3hHB7u", "JrV2YbN4lILVVdln", "t0qzMvUGlw5uQHf1"], "domain": "b51iD6pIbdgi3Dph", "roleId": "6tE5cPER4QeymaRW"}' \
    > test.out 2>&1
eval_tap $? 138 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 139 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'r5qlp4tDfHvqgz5Z' \
    --body '{"domain": "hdxVbAjiiHTDlTlR"}' \
    > test.out 2>&1
eval_tap $? 139 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 140 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'gKz7wlAGrt6wdFPP' \
    > test.out 2>&1
eval_tap $? 140 'RetrieveSSOLoginPlatformCredential' test.out

#- 141 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'c3AcYLUdhTMLqpF3' \
    --body '{"acsUrl": "0c9ZoLAeF8s5x0G6", "apiKey": "nLeTGlVODeiX8z9u", "appId": "PAbtfQaxNfUsAe8y", "federationMetadataUrl": "AhmrLiWNiApv9xa8", "isActive": false, "redirectUri": "jBk3S2WZPgGgmTgu", "secret": "NDxh1pFIy9QFOg11", "ssoUrl": "ME9bQspj3KaMMKE5"}' \
    > test.out 2>&1
eval_tap $? 141 'AddSSOLoginPlatformCredential' test.out

#- 142 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7rwvBsUn3Pbi79a4' \
    > test.out 2>&1
eval_tap $? 142 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 143 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '3xN2ORwWiQHJhdmM' \
    --body '{"acsUrl": "PpEhHiDwFjodphsA", "apiKey": "lObrbOwmCg5J9yHI", "appId": "xMCUUN2TbpYmd7CR", "federationMetadataUrl": "oomVTDDHInQpgyNi", "isActive": false, "redirectUri": "WLUDT7F3aW8jZvhM", "secret": "ESpFNPaG4Jie1BZk", "ssoUrl": "evXaaLNNcUg1EnGF"}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateSSOPlatformCredential' test.out

#- 144 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId '2TtXQzk1VnttrVtY' \
    --rawPID 'true' \
    --body '{"platformUserIds": ["clvlhHJp0ERw2a0K", "PKJCLSzGVrhdVCTZ", "PIm7nmYpzCtSxwPT"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 145 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Ylcb5rUKRG8PyF5y' \
    --platformUserId 'pzhaxnCj2feahF9P' \
    > test.out 2>&1
eval_tap $? 145 'AdminGetUserByPlatformUserIDV3' test.out

#- 146 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'qD014C8KW9KHYDnU' \
    --after '20' \
    --before '56' \
    --limit '16' \
    > test.out 2>&1
eval_tap $? 146 'GetAdminUsersByRoleIdV3' test.out

#- 147 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'v9O8SOdhBxsdSJQ9' \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByEmailAddressV3' test.out

#- 148 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType '14h9lMc7SK26sD1G' \
    --body '{"bulkUserId": ["lhJTAyHJxOfGuRIi", "JaMmDGaILv0WTUTG", "a8EDs28LMIF7PTEz"]}' \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserBanV3' test.out

#- 149 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["shiN54D6OHyrkLRb", "6xxFYUVFt7zxsMWC", "7R5qnKAGSVYVyLR3"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminListUserIDByUserIDsV3' test.out

#- 150 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["UAXeOpm1umYzDwpj", "zujJNOKP56yEjjGW", "UIxqXdf2GgXnRB3n"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminBulkGetUsersPlatform' test.out

#- 151 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["noBCSkWpZpWxNN3r", "Jm83vT53RVFywApg", "dXi9rsrnvJtCMA8o"], "isAdmin": false, "namespace": "MiyooMz1Qy7CAj6W", "roles": ["uypiyRabpmEVUUPp", "LLUi7E3YLT55y17S", "8PeNZl0K1xilSlKi"]}' \
    > test.out 2>&1
eval_tap $? 151 'AdminInviteUserV3' test.out

#- 152 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '9' \
    --platformUserId 'DkUZcIklYv7D9n4c' \
    --platformId '7bim8xiqyBL7hOHN' \
    > test.out 2>&1
eval_tap $? 152 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 153 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUsersV3' test.out

#- 154 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '0ka69ik9KOIgliwX' \
    --endDate '4diKwB0ERwvFQann' \
    --limit '72' \
    --offset '2' \
    --platformBy 'v5dGVbKfJrXJ8XS9' \
    --platformId 'NWDvCj3FMLFULUpi' \
    --query 'nV36DWmrb6h53Vyg' \
    --startDate 'E6S9rgE4kjLvluhj' \
    > test.out 2>&1
eval_tap $? 154 'AdminSearchUserV3' test.out

#- 155 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["aqHkGXr06gFOg3LU", "vJitRhyVhn3codE2", "mPsaE3bHNAH58hBT"]}' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserByEmailAddressV3' test.out

#- 156 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ERWcpoUyVmkwdjKj' \
    > test.out 2>&1
eval_tap $? 156 'AdminGetUserByUserIdV3' test.out

#- 157 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'H1WvXPxH93qSmNQg' \
    --body '{"avatarUrl": "5h15DVXhryftR4Hd", "country": "fRxMY1QBsRPf52V0", "dateOfBirth": "BMqyAm8of7ChSfPs", "displayName": "ZcJfG0EuOtpcRSjx", "languageTag": "SV1NyTB9PvLMCrkp", "userName": "TVxTyr2ZVaCepa8j"}' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpdateUserV3' test.out

#- 158 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gVCGNTTIMR9Cxslr' \
    --activeOnly 'true' \
    --after 'kiNeU1WtVGa4CPZZ' \
    --before '7DUVk1KGoTXady2Q' \
    --limit '38' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserBanV3' test.out

#- 159 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'oBNXenlgjjdUf3Mi' \
    --body '{"ban": "7eezDDBb0luEycMg", "comment": "YpllWmg4VT25NumH", "endDate": "lyEms3C6NUAMXX4A", "reason": "anS7r5JoRiLiv99w", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 159 'AdminBanUserV3' test.out

#- 160 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'ijvCsb33LsyWOODa' \
    --namespace $AB_NAMESPACE \
    --userId 'cVTSguKCvyFwHGOt' \
    --body '{"enabled": true, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserBanV3' test.out

#- 161 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YfwlKW4U1BCUdOZy' \
    --body '{"context": "N9BcDcVYMlp13YUX", "emailAddress": "BEGwRQgoz4VcQ75S", "languageTag": "TCsgUQsPEdX6Y56O"}' \
    > test.out 2>&1
eval_tap $? 161 'AdminSendVerificationCodeV3' test.out

#- 162 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'OQfsjhaiQzorIrbu' \
    --body '{"Code": "ePZ1MG9FMl69FAC8", "ContactType": "jvbZBQVraeOeHQRB", "LanguageTag": "8QjY6UxL4QnLScT5", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 162 'AdminVerifyAccountV3' test.out

#- 163 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'zqoYFoUrszGztigo' \
    > test.out 2>&1
eval_tap $? 163 'GetUserVerificationCode' test.out

#- 164 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '6Z0Iwg6Qy5MzdDF7' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserDeletionStatusV3' test.out

#- 165 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'c8J20Wuu0LE51gxY' \
    --body '{"deletionDate": 32, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserDeletionStatusV3' test.out

#- 166 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ikm6nsskSkDystCv' \
    --body '{"code": "tF386GPjs0NmOua8", "country": "vSOmqtoj41tqGCYv", "dateOfBirth": "SiTl18UMWuWbJr9G", "displayName": "bUwv2HUteSOvD8Yd", "emailAddress": "fCOQ2th0dMQAX6Ot", "password": "ZhNFKHQ5vqs0bXLR", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 166 'AdminUpgradeHeadlessAccountV3' test.out

#- 167 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId '2r6pq0Q6edQm3VqY' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserInformationV3' test.out

#- 168 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'E381Av8Bhmmugkj3' \
    --after '0.8989893848789049' \
    --before '0.008181103734355988' \
    --limit '34' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserLoginHistoriesV3' test.out

#- 169 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId '7VIougaXJbPbZPVW' \
    --body '{"languageTag": "AXVorBDkPw9SWZ0Y", "newPassword": "2NAs4CDBDN8R2TBw", "oldPassword": "t8vwAd9AoGkfTh0L"}' \
    > test.out 2>&1
eval_tap $? 169 'AdminResetPasswordV3' test.out

#- 170 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'nsdSKX9c3UrlMaTe' \
    --body '{"Permissions": [{"Action": 1, "Resource": "41IIuQvMWCjdqeNQ", "SchedAction": 23, "SchedCron": "g9geTQH2d40lnWU6", "SchedRange": ["KGdMuwWmNuGTb87B", "x4NphMJsTnUWR10e", "Dy2VxGIepoTTfNyG"]}, {"Action": 59, "Resource": "vSo8XLCiqZujvotW", "SchedAction": 15, "SchedCron": "xPFQJWZVnFpsZM7v", "SchedRange": ["1ECPhngaFlXrHb4f", "sa4H1lTAQa6eRgfi", "EnHwkmD5Co2FglHC"]}, {"Action": 86, "Resource": "A2O9aKBDnurj4XFG", "SchedAction": 18, "SchedCron": "HcDobi955F0x3ipt", "SchedRange": ["F4mUxAcIAyy2ofzP", "0CAYfRGS3ifJjr61", "Z3H5Gx56fHLwrIIJ"]}]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminUpdateUserPermissionV3' test.out

#- 171 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'uB4F3jDKF33AeaHf' \
    --body '{"Permissions": [{"Action": 59, "Resource": "8WN868ANrTt69weA", "SchedAction": 4, "SchedCron": "eLsUqVwLMV8iZr74", "SchedRange": ["eOF1CIyBnjEir8GZ", "ECBroPpZ7wbJlOjK", "mSYF6WALH07jJITO"]}, {"Action": 40, "Resource": "QUdDaRh237odWfCB", "SchedAction": 35, "SchedCron": "dbzoin0Nd1LMxL63", "SchedRange": ["UGMvRl9WrEdG4uht", "teDmZg5Bdy3bneD3", "qu7AIRFfqcrAuQXS"]}, {"Action": 75, "Resource": "VzrKrpaHbItlb4u3", "SchedAction": 37, "SchedCron": "SCNwT1VJyZBY3v2H", "SchedRange": ["PzvVp6LahuSFhe51", "TFAA0Cs6gOCEul1b", "M69Mn1O38IZhRuAD"]}]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminAddUserPermissionsV3' test.out

#- 172 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zUjbL8EVD3eTkOT3' \
    --body '[{"Action": 89, "Resource": "MhOkRjKERawQdwvw"}, {"Action": 72, "Resource": "r0gCeh7aOcDSZnFn"}, {"Action": 73, "Resource": "BjeUfksHvGqJ4jQi"}]' \
    > test.out 2>&1
eval_tap $? 172 'AdminDeleteUserPermissionBulkV3' test.out

#- 173 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '96' \
    --namespace $AB_NAMESPACE \
    --resource '7RSIX7Xgsr5BSxIO' \
    --userId 'WMO299QBhKNcdKks' \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserPermissionV3' test.out

#- 174 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BJvIabuNo5DjHk5e' \
    --after 'Q2HnhpLG0XZ2SWPN' \
    --before 'bG67LUUO6pIVhiK2' \
    --limit '14' \
    --platformId 'QJOkrH7FL6SliDJy' \
    > test.out 2>&1
eval_tap $? 174 'AdminGetUserPlatformAccountsV3' test.out

#- 175 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'dZfEbv4UZCRO2SZb' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetListJusticePlatformAccounts' test.out

#- 176 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'fjux0qTBpB9nIbE3' \
    --userId 'xSierHwRLseZgQSI' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserMapping' test.out

#- 177 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'yKX0YF0eYBGUy4Vr' \
    --userId 'jYZkh9XquYWVHvYf' \
    > test.out 2>&1
eval_tap $? 177 'AdminCreateJusticeUser' test.out

#- 178 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '9Ug7HkDVXvQ1JWJd' \
    --skipConflict 'false' \
    --body '{"platformId": "IbHDlkV2PzgIgOvL", "platformUserId": "gRhbmAjJIhuGBpvn"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminLinkPlatformAccount' test.out

#- 179 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'PydogAcf5LiUe2jb' \
    --userId '8JKGQ4EpIshFV7Wr' \
    --body '{"platformNamespace": "lGvIFOjlp12ozWTR"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminPlatformUnlinkV3' test.out

#- 180 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'GUW3pgOswi9oBGu6' \
    --userId '2Zf0p2lDMpNWJffp' \
    --ticket 'OeX42sjJK4seHBcd' \
    > test.out 2>&1
eval_tap $? 180 'AdminPlatformLinkV3' test.out

#- 181 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9CgD3CWNcRzSWSjX' \
    --userId 'sh3DKdWOhuoAYwbf' \
    --platformToken 'klaqtEVezVNcVfNe' \
    > test.out 2>&1
eval_tap $? 181 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 182 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'fBbFkwWURNgwnMhv' \
    --userId 'w40eWsRrCrOIBj5H' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserSinglePlatformAccount' test.out

#- 183 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YRx45TUMnJEBXhQm' \
    --body '["EfI8dUJlW6yqiAeS", "9mUjL7Nkz62dYOxB", "J6X9rmxKvPXO0K2F"]' \
    > test.out 2>&1
eval_tap $? 183 'AdminDeleteUserRolesV3' test.out

#- 184 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId '6VBkbSyTxBwHR2HQ' \
    --body '[{"namespace": "epcqSHyNnE6rK68z", "roleId": "MNUp6Z2XIh0pDd3C"}, {"namespace": "tiFPrT9aHcZ18DMi", "roleId": "9OyvtauMyVd3lRGz"}, {"namespace": "RRU3VBG26stzPuLV", "roleId": "OAufcrFv3o0Cy7vw"}]' \
    > test.out 2>&1
eval_tap $? 184 'AdminSaveUserRoleV3' test.out

#- 185 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'SBDiLMUkxOt3PQ4o' \
    --userId 'tPllp9xNgJclVtGM' \
    > test.out 2>&1
eval_tap $? 185 'AdminAddUserRoleV3' test.out

#- 186 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'JmCtRHNblvMOl7zH' \
    --userId 'aljqSC9G6LY5kxAZ' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteUserRoleV3' test.out

#- 187 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'sW5WX3LD30NCQOz3' \
    --body '{"enabled": false, "reason": "rSdGQ1ibMKOTrSXO"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateUserStatusV3' test.out

#- 188 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'Tl6X7SQTScEHCXAk' \
    --body '{"emailAddress": "P0t5TJVJLPhNavye", "password": "SxLLaGwKDPV4FmRP"}' \
    > test.out 2>&1
eval_tap $? 188 'AdminTrustlyUpdateUserIdentity' test.out

#- 189 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'GwXyJX1vGAYPMQYx' \
    > test.out 2>&1
eval_tap $? 189 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 190 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'AAh5MXBJF2O2Zb8o' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "bTbaDUt9wu36nuhf"}' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpdateClientSecretV3' test.out

#- 191 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'OfTy84rE5MkFZLUf' \
    --before 'huwzljpqx9mEIGqj' \
    --isWildcard 'true' \
    --limit '99' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRolesV3' test.out

#- 192 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "managers": [{"displayName": "qWGtZJgOl2pLKMBF", "namespace": "vHESqnSKoUx15ovb", "userId": "kli3FMlFr7Sn7zW7"}, {"displayName": "h966VKLDrDkkABhV", "namespace": "TsgtpYj7wtdI9Izy", "userId": "XktYCMfJRHGS9u1O"}, {"displayName": "WM8btyouyPRoVza8", "namespace": "w1da5jn9HErOmVJS", "userId": "DyiHpwgcItgn3Tdn"}], "members": [{"displayName": "ty9guJPv2hizug7l", "namespace": "5NDCgPWmWwBYg43h", "userId": "ym7MgNkTMhQe6ndZ"}, {"displayName": "7Ogi8GucMNOwRt4V", "namespace": "6ImSzXIVFk5r6q3v", "userId": "xBUyKmRQpsUGbT7y"}, {"displayName": "dfouTun7tL7ok2o6", "namespace": "6NVQGsAF8seb28EI", "userId": "LqSAGW7diI2GcfBI"}], "permissions": [{"action": 0, "resource": "cDS6PpLvfGJrumii", "schedAction": 52, "schedCron": "dVGPpY2MMegvBFR4", "schedRange": ["itgymlPHmsWY41QY", "3kCGLIcfy2KKAvq5", "GAV8jmpOD1jBSbBS"]}, {"action": 54, "resource": "7yIFoJ8OZZhXkyOV", "schedAction": 9, "schedCron": "SPF9z9YxTmy2FiF2", "schedRange": ["D2ficHUI66jMOWR3", "1yEzCqrRmSzAE2Uu", "C0RyamOr8TCnXbsv"]}, {"action": 33, "resource": "6hOhu6xEp7Y2mneW", "schedAction": 12, "schedCron": "juzKF17WcIcGdTT3", "schedRange": ["AgVFuGJdV2KmhBMT", "nfsOXvOoQcGd5ypt", "BHUoRcZ3RNzMnQPl"]}], "roleName": "Pgv6hv3qLJ9magCf"}' \
    > test.out 2>&1
eval_tap $? 192 'AdminCreateRoleV3' test.out

#- 193 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'DhB3v9pYxdfMoPZJ' \
    > test.out 2>&1
eval_tap $? 193 'AdminGetRoleV3' test.out

#- 194 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId '6ybsrBscCM9O62KF' \
    > test.out 2>&1
eval_tap $? 194 'AdminDeleteRoleV3' test.out

#- 195 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'lqu9q9HMxfdvREka' \
    --body '{"deletable": false, "isWildcard": true, "roleName": "suq5JpoPlsghz3pG"}' \
    > test.out 2>&1
eval_tap $? 195 'AdminUpdateRoleV3' test.out

#- 196 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId '3x4vHGTSK7zbZyNu' \
    > test.out 2>&1
eval_tap $? 196 'AdminGetRoleAdminStatusV3' test.out

#- 197 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'kRJJ8bfNNPkzHt5l' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateAdminRoleStatusV3' test.out

#- 198 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'gyrvNvGuDpNVDe5F' \
    > test.out 2>&1
eval_tap $? 198 'AdminRemoveRoleAdminV3' test.out

#- 199 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'hnoDNLceQQPlxKmF' \
    --after 'S552mmNo11geK464' \
    --before 'ESFJWc3OSjUas6uz' \
    --limit '63' \
    > test.out 2>&1
eval_tap $? 199 'AdminGetRoleManagersV3' test.out

#- 200 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'xriLrl98MtgKe07V' \
    --body '{"managers": [{"displayName": "1PsXhKOwG0Oy7s8B", "namespace": "zyYuHyRknlZuPZdj", "userId": "V1S9Epkk4KBwTJm5"}, {"displayName": "nJ6kftyNLt3OSIrJ", "namespace": "AJDAS6VhPyxXgBwl", "userId": "auW7uHglb0QMbS2K"}, {"displayName": "xYPZPkLy8huXnpEG", "namespace": "fVWILFanXDSWdBIA", "userId": "tlOjsj0Qj15uF7Hg"}]}' \
    > test.out 2>&1
eval_tap $? 200 'AdminAddRoleManagersV3' test.out

#- 201 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'icogAW6TQfiRRkiL' \
    --body '{"managers": [{"displayName": "MtvP21XrvvQX8woU", "namespace": "P06nux5bjtlYpQnf", "userId": "ZdzkZyCsByQ2vmF6"}, {"displayName": "lcvZrn0M5wz6a9HE", "namespace": "WIZQ7MVs1ZE5pe2q", "userId": "2zlvCdrqV6PJ4YCE"}, {"displayName": "s8hm1INPiFoUL0vS", "namespace": "FmDRRkCM6uVGOoel", "userId": "MvufzS7wsESIVhSI"}]}' \
    > test.out 2>&1
eval_tap $? 201 'AdminRemoveRoleManagersV3' test.out

#- 202 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'a7UnkViftIVc5IUT' \
    --after 'rrrAIc7wreRwOjM2' \
    --before 'mwFZLy67lxtGictB' \
    --limit '67' \
    > test.out 2>&1
eval_tap $? 202 'AdminGetRoleMembersV3' test.out

#- 203 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'lkQrsOJr04iwBTVv' \
    --body '{"members": [{"displayName": "38l5X1jJwhxfGzBZ", "namespace": "pgwpJHyXjNo0lQLx", "userId": "u6QyAs64tXlnW1Mh"}, {"displayName": "M7qCUZOgr5vGN9ww", "namespace": "LJy1A82bl0B55ZLW", "userId": "cfCv1ul0jDr3ldSu"}, {"displayName": "vJcz6nAItFRZVEKd", "namespace": "tVx0kXGfgGQAoxnY", "userId": "tqs5enelYDDQAd1J"}]}' \
    > test.out 2>&1
eval_tap $? 203 'AdminAddRoleMembersV3' test.out

#- 204 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'a2DPZhO7kiODZOKn' \
    --body '{"members": [{"displayName": "Emhj6ChS2F7UDKhv", "namespace": "PIGscdibsqFZ158x", "userId": "JTsaL1Wq6vlbKMfX"}, {"displayName": "ClxVpjdWAtIGRib1", "namespace": "jKWDvTPNG9NFjU1Q", "userId": "3xfu2POiYoICw8BD"}, {"displayName": "AZJPApGKQnoARHa0", "namespace": "6l1rrsdgw6uVTRGo", "userId": "GXKX3mC74M1pjUx0"}]}' \
    > test.out 2>&1
eval_tap $? 204 'AdminRemoveRoleMembersV3' test.out

#- 205 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'mh6CExlkv8N04tnC' \
    --body '{"permissions": [{"action": 55, "resource": "JSQCCJJfrpGOBHeb", "schedAction": 22, "schedCron": "Cfo8k3DSPOpDeSl0", "schedRange": ["3BNLnC5Aj90Lk4Qf", "5uBTdE35ZycgBOAb", "TQJNL1czdYF23Dgs"]}, {"action": 7, "resource": "AWkwAAnr7Qi61MPZ", "schedAction": 27, "schedCron": "Wku91L7vBXdTEOPu", "schedRange": ["NEcIglnO77TFUHz5", "l4fhXls1N8IPJfax", "IUtkk9SIssd6sxml"]}, {"action": 5, "resource": "ZJONujHjJBWo7JaY", "schedAction": 19, "schedCron": "pyely0HnaudMPth7", "schedRange": ["VA2poZAj8PIbTonP", "zlPqrJFcACZL2y1T", "zG3Cczy3jdRH6tw2"]}]}' \
    > test.out 2>&1
eval_tap $? 205 'AdminUpdateRolePermissionsV3' test.out

#- 206 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'UCY0NARKh2Go53Nc' \
    --body '{"permissions": [{"action": 13, "resource": "oUhEqiNXF838ncYf", "schedAction": 19, "schedCron": "rtPG5UzRptvjeLjg", "schedRange": ["xQjfvYzct6pFbQTf", "JqfNn2VYeH2Bb8je", "LY6TPW7nEf9wj1Fu"]}, {"action": 65, "resource": "zjF6ftLn4Nbwawuw", "schedAction": 84, "schedCron": "sRsDHBm2WjNuvEhk", "schedRange": ["XUDI58nsH5VqhFKB", "AfGv8RctWAexQsI1", "SJ7UCDAC0zCEjpZs"]}, {"action": 65, "resource": "9ZibQeN658bNTPE9", "schedAction": 10, "schedCron": "WMfIX3wqU8d57pSX", "schedRange": ["lrmV4q42JaFVjQFJ", "3Z9EbBOyUuft10O5", "vc8MuhNJktHLS4vM"]}]}' \
    > test.out 2>&1
eval_tap $? 206 'AdminAddRolePermissionsV3' test.out

#- 207 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'PWCG10LTQ9SLhuQR' \
    --body '["u3g3MOX70PiBc7ly", "lXmyXDoonbxvb0WT", "Hb0W3T7OklAaIgpb"]' \
    > test.out 2>&1
eval_tap $? 207 'AdminDeleteRolePermissionsV3' test.out

#- 208 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '81' \
    --resource 'XPwYMvnDQbAYsXiB' \
    --roleId 'fTPdTEHyuXpmFRcH' \
    > test.out 2>&1
eval_tap $? 208 'AdminDeleteRolePermissionV3' test.out

#- 209 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 209 'AdminGetMyUserV3' test.out

#- 210 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'fvP6MreX87gINtF2' \
    --extendExp 'true' \
    --redirectUri 'Odn74D6JbKaQqzHS' \
    --password 'slre4xtAQI6Ba8GU' \
    --requestId 'DSbiEmKp8ljxchvL' \
    --userName 'FbeRBwWCnqqI7iBw' \
    > test.out 2>&1
eval_tap $? 210 'UserAuthenticationV3' test.out

#- 211 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'YMHU8HDIpmDq6KkW' \
    --linkingToken 'W8rY2aKXxvB8zeDN' \
    --password 'MkCXsLuzXAV77FH2' \
    --username 'A2rB9iWx6cDsXNx0' \
    > test.out 2>&1
eval_tap $? 211 'AuthenticationWithPlatformLinkV3' test.out

#- 212 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'o6wklPFpQG5ZWGzI' \
    --extendExp 'false' \
    --linkingToken 'B5TrNvPEj0OphsbA' \
    > test.out 2>&1
eval_tap $? 212 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 213 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'N2VC7ck2E7FNwZTA' \
    > test.out 2>&1
eval_tap $? 213 'RequestOneTimeLinkingCodeV3' test.out

#- 214 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'eGTISnSyjVjHTXG7' \
    > test.out 2>&1
eval_tap $? 214 'ValidateOneTimeLinkingCodeV3' test.out

#- 215 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'rh7QrGadWS04saRb' \
    --isTransient 'true' \
    --clientId 'f9bneZqZxM1EumoL' \
    --oneTimeLinkCode 'DZBITigKTozylujb' \
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

#- 218 RequestGameTokenCodeResponseV3
samples/cli/sample-apps Iam requestGameTokenCodeResponseV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'c7Uw8NvtuwdBpoDn' \
    > test.out 2>&1
eval_tap $? 218 'RequestGameTokenCodeResponseV3' test.out

#- 219 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'DIaQ76nQwx4xABJV' \
    --userId 'ODc5HpXewAq7kdyM' \
    > test.out 2>&1
eval_tap $? 219 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'HLKWiBCLaHJgLdiU' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 220 'RevokeUserV3' test.out

#- 221 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'b9nklTLJpSH57g0G' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'zLiWXNLWN4SjWeIh' \
    --redirectUri 'CZKsNuX2IAZy9l8r' \
    --scope 'L7nVhoLKrdRb1xP4' \
    --state 'ptDTLNSlMJqc8juA' \
    --targetAuthPage 'dhvnZxUyABzx9sgs' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'iKoTdOgOGxBkg18b' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 221 'AuthorizeV3' test.out

#- 222 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token '7b9sCniGl9eT8h8F' \
    > test.out 2>&1
eval_tap $? 222 'TokenIntrospectionV3' test.out

#- 223 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 223 'GetJWKSV3' test.out

#- 224 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'bS56YSQwLc9ILXHZ' \
    --factor 'X53GJCHrU3fbArRn' \
    --mfaToken '2VziEMFehKIFNhAf' \
    > test.out 2>&1
eval_tap $? 224 'SendMFAAuthenticationCode' test.out

#- 225 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor '5JOzuqAGCjyupdt7' \
    --mfaToken 'TOyeLy5bgoM6MPVY' \
    > test.out 2>&1
eval_tap $? 225 'Change2faMethod' test.out

#- 226 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code '8EgO4P6Pwr2oO6cZ' \
    --factor '3ErcTEixWOUkUTuw' \
    --mfaToken 'sjVbWSJBD5VyfXpD' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 226 'Verify2faCode' test.out

#- 227 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'KFi6CpjyaaRGgbWG' \
    --userId '2kCAFQhWeQl27p2k' \
    > test.out 2>&1
eval_tap $? 227 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 228 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId '1ZRxSwpoPIEj5DVP' \
    --clientId 'n9LoygtBIu6gbl4J' \
    --redirectUri '5gMrlqAicEg9uafd' \
    --requestId 'vyQJtglDKLXLKvlu' \
    > test.out 2>&1
eval_tap $? 228 'AuthCodeRequestV3' test.out

#- 229 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'm8dSJHpg4gkoVSaa' \
    --additionalData 'F9cTtwRDqejqlzF5' \
    --clientId 'YNishMn3YJWd0g3A' \
    --createHeadless 'true' \
    --deviceId '4yTjrIDSZqc6mAzJ' \
    --macAddress 'riz8DAoWMSYXPO4u' \
    --platformToken 'Zy7GoAxxDfSWlkmM' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 229 'PlatformTokenGrantV3' test.out

#- 230 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 230 'GetRevocationListV3' test.out

#- 231 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'Hi8vSpzfjpA89vUA' \
    > test.out 2>&1
eval_tap $? 231 'TokenRevocationV3' test.out

#- 232 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData '5jX13EFweJWR0jcw' \
    --clientId 'Z6DXwo7QPV2Da3sD' \
    --code 'UD6bcHG0cDVJqvNV' \
    --codeVerifier 'OW8kbBoXlSdIaCGz' \
    --extendExp 'true' \
    --password '3M52pzdiFpLtFoCh' \
    --redirectUri 'nM8QgO9Ph8DT9gbY' \
    --refreshToken '6ZsPVxVpBbfYZ1vm' \
    --username 'B3y4fLqfgW9fktcy' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 232 'TokenGrantV3' test.out

#- 233 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'jMg9oUwFUf4yBcbn' \
    > test.out 2>&1
eval_tap $? 233 'VerifyTokenV3' test.out

#- 234 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId '1CNwS4r99QPe4LG1' \
    --code 'aH4ED7ugJXzy2AOH' \
    --error 'zaheEMWxFY6lBnkg' \
    --openidAssocHandle 'aJfjknXfEPrRAPbu' \
    --openidClaimedId 'getQSELeW1zRRByr' \
    --openidIdentity '0oPyuE2Qj3AbVgcU' \
    --openidMode 'xNADhzWZ9FdM0EkV' \
    --openidNs '0Hbc1Tbjgz85phUu' \
    --openidOpEndpoint 'qKq73Y9T1zltfPHZ' \
    --openidResponseNonce 'LS0rhXTB6aE3sqqh' \
    --openidReturnTo 'CbvXiO0aPJC9J4dK' \
    --openidSig '7g75hINNvEIPerj3' \
    --openidSigned 'dpGguUtDafKetdQq' \
    --state 'dwMWaqKx3Owx7JcP' \
    > test.out 2>&1
eval_tap $? 234 'PlatformAuthenticationV3' test.out

#- 235 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'duZLXdsP93X4S6Ql' \
    --platformToken 'DtBNZyYSn89atQFK' \
    > test.out 2>&1
eval_tap $? 235 'PlatformTokenRefreshV3' test.out

#- 236 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'uBLL1eR4cbyQMjng' \
    > test.out 2>&1
eval_tap $? 236 'PublicGetInputValidations' test.out

#- 237 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'nkYbEYnTyigbGVyb' \
    > test.out 2>&1
eval_tap $? 237 'PublicGetInputValidationByField' test.out

#- 238 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'LBpx2qaXJmBctj2L' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 238 'PublicGetCountryAgeRestrictionV3' test.out

#- 239 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 239 'PublicGetCountryListV3' test.out

#- 240 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 240 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 241 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'tho1in7fyH635SqV' \
    > test.out 2>&1
eval_tap $? 241 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 242 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'x9Q0Y5IKs0etxEyB' \
    --rawPID 'true' \
    --body '{"platformUserIds": ["ipvzkaOGuHhh8yXs", "dHxnYfs3ih0VseQt", "Ljwk8esQP0dy87vc"]}' \
    > test.out 2>&1
eval_tap $? 242 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 243 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'aKrDBdrstJq0Rm9H' \
    --platformUserId 'LVDSsAfXag1YVKkU' \
    > test.out 2>&1
eval_tap $? 243 'PublicGetUserByPlatformUserIDV3' test.out

#- 244 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId '04k6qxJfxyTNYsnu' \
    > test.out 2>&1
eval_tap $? 244 'PublicGetAsyncStatus' test.out

#- 245 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'Foripg6ZOxIUEuyA' \
    --limit '84' \
    --offset '50' \
    --query '0P07lVDA9lfrMx5m' \
    > test.out 2>&1
eval_tap $? 245 'PublicSearchUserV3' test.out

#- 246 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "IPTveW4949gDw9BT", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "WqPlwcXK2YHmqxlY", "policyId": "bd9tsM6jqPFFm9S7", "policyVersionId": "XaIyrVGpivV7vSdQ"}, {"isAccepted": true, "localizedPolicyVersionId": "dOGpWrmQYXnzhXI6", "policyId": "2eAAygYW5Dy9bYG5", "policyVersionId": "zeSWjEdTKdhb97T0"}, {"isAccepted": false, "localizedPolicyVersionId": "smRBhpPB3kB7x6fN", "policyId": "fJR3upqcIIJmtoYN", "policyVersionId": "AchNQYF1GG2e9u1k"}], "authType": "VMOkDFCMnQ8XHZei", "code": "uPomvMZrLxa6Qsri", "country": "JbEexwkjHmuHfk6c", "dateOfBirth": "oKDmg7c91uvArXqR", "displayName": "LORuZ5dwcuXjS94d", "emailAddress": "yB2hlfDIhk8iWLvu", "password": "jfRPmge05RMqMELF", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 246 'PublicCreateUserV3' test.out

#- 247 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'DwVXhKReVszywV1e' \
    --query 'Ey388JdA0UdkJkwo' \
    > test.out 2>&1
eval_tap $? 247 'CheckUserAvailability' test.out

#- 248 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["UXYD86Bvtynemvbq", "8MKWtoBHYV5bQxfc", "WEYFnZY5F4LtuavU"]}' \
    > test.out 2>&1
eval_tap $? 248 'PublicBulkGetUsers' test.out

#- 249 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "6ed4x8iLkWT9E6xg", "languageTag": "0S0dhICA5mGYHw3q"}' \
    > test.out 2>&1
eval_tap $? 249 'PublicSendRegistrationCode' test.out

#- 250 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "zNMMK6HLxHdERh0H", "emailAddress": "bD9ARoj4y4wY3Qfq"}' \
    > test.out 2>&1
eval_tap $? 250 'PublicVerifyRegistrationCode' test.out

#- 251 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "gxTm0KTLaWeUKvXc", "languageTag": "uLTnU3S5E1T0lCri"}' \
    > test.out 2>&1
eval_tap $? 251 'PublicForgotPasswordV3' test.out

#- 252 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'RSsQwmMWaMbe24me' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 252 'GetAdminInvitationV3' test.out

#- 253 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'ZiePJqBilVW8oMCz' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "I6oqjVhr2UO8My5K", "policyId": "qzM3OFS0UPDzrtH3", "policyVersionId": "QiWA3sldSzFnS1tU"}, {"isAccepted": true, "localizedPolicyVersionId": "xOVNiRN0HXhpafIl", "policyId": "rbtzlGUb799gjbDJ", "policyVersionId": "ksIdXHoKYelBLTNg"}, {"isAccepted": true, "localizedPolicyVersionId": "YxgBEGZJNkGIy4A5", "policyId": "tlY8KT4fIl7NIdYB", "policyVersionId": "jn7LD49J8gUqPvWG"}], "authType": "EMAILPASSWD", "country": "uarv5eoylqrsqzhZ", "dateOfBirth": "ebx2SdesGU36CGnI", "displayName": "P1F0O66n0NWVSnsg", "password": "3EX5SOySNnlWhyvr", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 253 'CreateUserFromInvitationV3' test.out

#- 254 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "ENf7OtG3pge90B4M", "country": "sAxFhlwqhazdBJ3q", "dateOfBirth": "y3WUkdTPxDmON6iT", "displayName": "FWF3UdVOMdWZtAGV", "languageTag": "H7OhBhAuFBtII7Dj", "userName": "S3zgFxikH1Xzvg2H"}' \
    > test.out 2>&1
eval_tap $? 254 'UpdateUserV3' test.out

#- 255 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "PGKeSXuiUwdIRVNI", "country": "Hmt93NDQ7TmPsGWz", "dateOfBirth": "q98mCaEVfXhfq1ea", "displayName": "S7K3VuRq9ZJhpG06", "languageTag": "FufsQupVqBe8BOJy", "userName": "eMXxInWhRQ8AEpLO"}' \
    > test.out 2>&1
eval_tap $? 255 'PublicPartialUpdateUserV3' test.out

#- 256 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "FBzfZre5Klifavzd", "emailAddress": "67yXc8Z4HwAf5Jgv", "languageTag": "uYGCjUV6qf1ZPWvD"}' \
    > test.out 2>&1
eval_tap $? 256 'PublicSendVerificationCodeV3' test.out

#- 257 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "05W54AeIz0z6PXKE", "contactType": "wmUM6yzC1PxCgVUv", "languageTag": "SUTaBnx4yEe38C73", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 257 'PublicUserVerificationV3' test.out

#- 258 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "rVtQJv7llIaUoqqv", "country": "URWuV7p4w433fbHQ", "dateOfBirth": "08548Wxzok2CyDYz", "displayName": "e42TuAuqrTB8U2vi", "emailAddress": "qzlZzMbOXnTlMaco", "password": "gACZtofsNjqtURVH", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 258 'PublicUpgradeHeadlessAccountV3' test.out

#- 259 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "RxJFpBTKrjt6lFsp", "password": "Al4drM0JYAODB6U0"}' \
    > test.out 2>&1
eval_tap $? 259 'PublicVerifyHeadlessAccountV3' test.out

#- 260 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "IH2jTYMtXfsjNOHW", "newPassword": "1ZPHJOUvy6MTuRk1", "oldPassword": "hZpvzSsFLSkKAZqq"}' \
    > test.out 2>&1
eval_tap $? 260 'PublicUpdatePasswordV3' test.out

#- 261 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'ZXjBl3abxeytQdcy' \
    > test.out 2>&1
eval_tap $? 261 'PublicCreateJusticeUser' test.out

#- 262 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZTu0s17qSg6ZI9sy' \
    --redirectUri 'k9wqG7QzUIO5Gtb4' \
    --ticket '5uRI08HQFUfhOtGc' \
    > test.out 2>&1
eval_tap $? 262 'PublicPlatformLinkV3' test.out

#- 263 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'biKAFafgPOvbaRZ0' \
    --body '{"platformNamespace": "5sEl12xFN1TehHjY"}' \
    > test.out 2>&1
eval_tap $? 263 'PublicPlatformUnlinkV3' test.out

#- 264 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId '3a7PT29psZzMXtcI' \
    > test.out 2>&1
eval_tap $? 264 'PublicPlatformUnlinkAllV3' test.out

#- 265 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'qIG31jq16goKfBPH' \
    --ticket 'JDYLVFCMnQO8BBls' \
    > test.out 2>&1
eval_tap $? 265 'PublicForcePlatformLinkV3' test.out

#- 266 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'HcYwxmCQv5OifSzv' \
    --clientId 'MFuc7ta4MG4eqB1n' \
    --redirectUri 'wNkyOaf2XNDFL397' \
    > test.out 2>&1
eval_tap $? 266 'PublicWebLinkPlatform' test.out

#- 267 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'rB0t7pra0skd84p8' \
    --code 'g8nKFoOrnOW1YBKu' \
    --state 'QKs0inSsGJyUJfpz' \
    > test.out 2>&1
eval_tap $? 267 'PublicWebLinkPlatformEstablish' test.out

#- 268 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'uoSiKA1D1x5EE3tN' \
    --code 'gLa70quO6jHKglkF' \
    --state 'x9fHFlioQY3gut5p' \
    > test.out 2>&1
eval_tap $? 268 'PublicProcessWebLinkPlatformV3' test.out

#- 269 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "tCUyBDfPkpAQhK7C", "emailAddress": "SDIY6SJ6d7kEaQZ4", "newPassword": "iiXLVRHkhq8ozZUn"}' \
    > test.out 2>&1
eval_tap $? 269 'ResetPasswordV3' test.out

#- 270 PublicGetUserByUserIdV3
eval_tap 0 270 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 271 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId '4FpPHhM0egfRjvXc' \
    --activeOnly 'false' \
    --after 'RzBRliDvCFVCsLdL' \
    --before '1sndOqD8lmp1Pv56' \
    --limit '26' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetUserBanHistoryV3' test.out

#- 272 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UfXQUHTsaRFbd5oE' \
    > test.out 2>&1
eval_tap $? 272 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 273 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'SY7Lzzaf2KOtVjE4' \
    > test.out 2>&1
eval_tap $? 273 'PublicGetUserInformationV3' test.out

#- 274 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'oq12Wu9sIbpJI840' \
    --after '0.701653740437587' \
    --before '0.1166314251248658' \
    --limit '98' \
    > test.out 2>&1
eval_tap $? 274 'PublicGetUserLoginHistoriesV3' test.out

#- 275 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LGWFwsUqINWp0cbv' \
    --after 'zuyHovR72EF9XXFm' \
    --before 'K8mK6gLjbQV6l94w' \
    --limit '94' \
    --platformId 'OZHNre4uv0TdpUlR' \
    > test.out 2>&1
eval_tap $? 275 'PublicGetUserPlatformAccountsV3' test.out

#- 276 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lOnv5v9hD8SMChFe' \
    > test.out 2>&1
eval_tap $? 276 'PublicListJusticePlatformAccountsV3' test.out

#- 277 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'KrIOc3z2NXMWCcrY' \
    --body '{"platformId": "1EO4pObRLeygc3xV", "platformUserId": "GKL9CoDas12JBq0e"}' \
    > test.out 2>&1
eval_tap $? 277 'PublicLinkPlatformAccount' test.out

#- 278 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'UaQ3vzQ6eCAZL8Z1' \
    --body '{"chosenNamespaces": ["TJL9voFpSEfBn0st", "ZTI6hQ3koowMoLCN", "kjU7tCNX3CkBzdv7"], "requestId": "78KSMvndmxIJG0xq"}' \
    > test.out 2>&1
eval_tap $? 278 'PublicForceLinkPlatformWithProgression' test.out

#- 279 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'g6ESiRtdAVpt2akl' \
    > test.out 2>&1
eval_tap $? 279 'PublicGetPublisherUserV3' test.out

#- 280 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ez7fF6l2seThuNzq' \
    --password '37Tss89vVRbvmvJW' \
    > test.out 2>&1
eval_tap $? 280 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 281 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'fLZM0rPtsxMV1R05' \
    --before 'BxvsA3liqo1H4ula' \
    --isWildcard 'false' \
    --limit '21' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetRolesV3' test.out

#- 282 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'PGm9dHlWZOwhaozJ' \
    > test.out 2>&1
eval_tap $? 282 'PublicGetRoleV3' test.out

#- 283 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 283 'PublicGetMyUserV3' test.out

#- 284 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'PzH4gol4CJo3MgCm' \
    > test.out 2>&1
eval_tap $? 284 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 285 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["gz24KXz3gbgQZSXl", "R1KtusWc1ZU5TteH", "BcVe7n2pbdEkD5LG"], "oneTimeLinkCode": "ydxsNZYDoMp52zvh"}' \
    > test.out 2>&1
eval_tap $? 285 'LinkHeadlessAccountToMyAccountV3' test.out

#- 286 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "KTvvtsEsPtGI6Qwl"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicSendVerificationLinkV3' test.out

#- 287 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'VuoQNa4oHRQc3Ufv' \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyUserByLinkV3' test.out

#- 288 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'fEKyBfIFjSctQw8k' \
    --code 'BNuKgpPSeKy3p94h' \
    --error '7PlENTz4VQovcO5W' \
    --state 'ecJZH8CZP9hLHnGz' \
    > test.out 2>&1
eval_tap $? 288 'PlatformAuthenticateSAMLV3Handler' test.out

#- 289 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId '6cHVCfjSSym3hfUG' \
    --payload 'qzjA4nRB9gtS8qZ8' \
    > test.out 2>&1
eval_tap $? 289 'LoginSSOClient' test.out

#- 290 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'OrNEO7pR9lEdAFUv' \
    > test.out 2>&1
eval_tap $? 290 'LogoutSSOClient' test.out

#- 291 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --additionalData 'pbImZ7LJybnUiX3Q' \
    --code 'rH8RfbBquiQ60Fna' \
    > test.out 2>&1
eval_tap $? 291 'RequestGameTokenResponseV3' test.out

#- 292 PlatformTokenRefreshV3Deprecate
eval_tap 0 292 'PlatformTokenRefreshV3Deprecate # SKIP deprecated' test.out

#- 293 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ZhhkDuQwFJ8fWQMj' \
    > test.out 2>&1
eval_tap $? 293 'AdminGetDevicesByUserV4' test.out

#- 294 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'ymMjxSCTQTrN3aMn' \
    --endDate 'Vsc0um4iWAVTD0KX' \
    --limit '38' \
    --offset '91' \
    --startDate 'QnuzZC8Z7kp88feD' \
    > test.out 2>&1
eval_tap $? 294 'AdminGetBannedDevicesV4' test.out

#- 295 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'a6Ugmq9pLtdNGY6E' \
    > test.out 2>&1
eval_tap $? 295 'AdminGetUserDeviceBansV4' test.out

#- 296 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "Oy3kpokCFUkdOAZY", "deviceId": "bazlr69RQfVzygPL", "deviceType": "JYsulLm1fzqI0uS5", "enabled": false, "endDate": "PDzh3kRS49cFHs8K", "ext": {"GRqr9bZr00fwHZac": {}, "dw3iKPLzhk534t8L": {}, "vpdez90wcYmb7dce": {}}, "reason": "fAEhAwVVEeoVJU9g"}' \
    > test.out 2>&1
eval_tap $? 296 'AdminBanDeviceV4' test.out

#- 297 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'ZAy6LFGe5n33D0Z1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 297 'AdminGetDeviceBanV4' test.out

#- 298 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'QTiRSjovqeNnzYPv' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateDeviceBanV4' test.out

#- 299 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate '1tViiML4GIXwH8co' \
    --startDate 'ROzQH7tMISvmYrrL' \
    --deviceType '4GRULrvyrVbtjeEe' \
    > test.out 2>&1
eval_tap $? 299 'AdminGenerateReportV4' test.out

#- 300 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 300 'AdminGetDeviceTypesV4' test.out

#- 301 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId '7PwboZBdcJVSsJBz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 301 'AdminGetDeviceBansV4' test.out

#- 302 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'LcsDFKvHb1VdVbbI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 302 'AdminDecryptDeviceV4' test.out

#- 303 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 't4zqNa0oSEvXwaLx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 303 'AdminUnbanDeviceV4' test.out

#- 304 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'zt2CXhmI0yVeMz64' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 304 'AdminGetUsersByDeviceV4' test.out

#- 305 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 69}' \
    > test.out 2>&1
eval_tap $? 305 'AdminCreateTestUsersV4' test.out

#- 306 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["x0sLrwnMyFQU49UZ", "C8wSJ8M22zeHynsj", "H5gZ33VzhZ693OOj"]}' \
    > test.out 2>&1
eval_tap $? 306 'AdminBulkCheckValidUserIDV4' test.out

#- 307 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'yVIv0mdoX5iW7P06' \
    --body '{"avatarUrl": "tkXaljueSVy0jJ1y", "country": "4T9EsfvCPyVgyZfr", "dateOfBirth": "sbJj3T8KE89bhrG6", "displayName": "SKKGiARfxtQgPzxa", "languageTag": "H010OxUP7BNuP1OJ", "userName": "bFEfPrqrX7tE5OVy"}' \
    > test.out 2>&1
eval_tap $? 307 'AdminUpdateUserV4' test.out

#- 308 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'QSGRMfVhofBS9W8h' \
    --body '{"code": "d1ALd6kUvZQoHYDo", "emailAddress": "4VXgpaN1f3hzk4Qv"}' \
    > test.out 2>&1
eval_tap $? 308 'AdminUpdateUserEmailAddressV4' test.out

#- 309 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Fv8O1iXjPjnbG4rs' \
    > test.out 2>&1
eval_tap $? 309 'AdminDisableUserMFAV4' test.out

#- 310 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'B1zAD571QgLXQmH6' \
    > test.out 2>&1
eval_tap $? 310 'AdminListUserRolesV4' test.out

#- 311 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'sLeiqrCMfWizZ1Qt' \
    --body '{"assignedNamespaces": ["ObRZY7y0VrlYUAFb", "ieYYZ5b34FstUknW", "5BKjrIWSZyvGSref"], "roleId": "SuaqO8VeJANRcknl"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminUpdateUserRoleV4' test.out

#- 312 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '06gyovcX2mg8HSot' \
    --body '{"assignedNamespaces": ["8qyinxOBLrKnPpcn", "rdhmHB64fQvt0KfT", "dQCSsjBmQW9RnJUG"], "roleId": "v1c2estYtbQiEZDP"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminAddUserRoleV4' test.out

#- 313 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'sF3YR9foWx8Jp7tI' \
    --body '{"assignedNamespaces": ["1oBDxAN35xUzuDK5", "YfXSZU6t13KBvSLP", "ilsjyO185fCMJjDE"], "roleId": "BferLDaOGyhYiDrC"}' \
    > test.out 2>&1
eval_tap $? 313 'AdminRemoveUserRoleV4' test.out

#- 314 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'false' \
    --limit '52' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 314 'AdminGetRolesV4' test.out

#- 315 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "oEUTReRkkyxMheDD"}' \
    > test.out 2>&1
eval_tap $? 315 'AdminCreateRoleV4' test.out

#- 316 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'XwoEhPyBrQKlwWcv' \
    > test.out 2>&1
eval_tap $? 316 'AdminGetRoleV4' test.out

#- 317 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'Szv1nJvLGkQVny1v' \
    > test.out 2>&1
eval_tap $? 317 'AdminDeleteRoleV4' test.out

#- 318 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'eCR6pcWq5oGT5WKT' \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "t8skR2VsxQICuayY"}' \
    > test.out 2>&1
eval_tap $? 318 'AdminUpdateRoleV4' test.out

#- 319 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'JmrtYEulOfCfxSuA' \
    --body '{"permissions": [{"action": 56, "resource": "IUDJM8izeiBy7kv1", "schedAction": 53, "schedCron": "Tnt5rrHWXK144ESI", "schedRange": ["ki0nh1OC2vRECBs3", "YY0JQRPof0O28qbD", "0EVm4TaoWW0FD2LX"]}, {"action": 89, "resource": "UHLGFLbxlejUy07g", "schedAction": 71, "schedCron": "6ZW8VgBGv1SGovcB", "schedRange": ["nIrYrQrSi0rC0Ykw", "FaK9mi2Kdvz8kLSn", "zd9XJJ5aANnSs154"]}, {"action": 82, "resource": "cF8oEQJURLgRFz9X", "schedAction": 18, "schedCron": "uQeTyPfUmjOtvheD", "schedRange": ["ysRWuQSdClHvKd7e", "pxdRwrxiiQk2v2s6", "7MfdzAfzqUV8nQ2f"]}]}' \
    > test.out 2>&1
eval_tap $? 319 'AdminUpdateRolePermissionsV4' test.out

#- 320 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'yYSnxKTQ9EDwVocn' \
    --body '{"permissions": [{"action": 59, "resource": "E99YUGZgc7rvYs3g", "schedAction": 66, "schedCron": "n8ndNMVVM10p8pAw", "schedRange": ["r4oBRn0RDINIa16P", "TIzY09EjfaKnp5cV", "3V5SCAhWXhDghma1"]}, {"action": 59, "resource": "Ka68EPyIAakUS16k", "schedAction": 74, "schedCron": "tacJLK1Hwch7sLhx", "schedRange": ["3ZiNIb8SZq2lqMZF", "qTMuy7BYJ1x9P3Og", "gDk08rF0Ci0pGUIA"]}, {"action": 94, "resource": "OvSE5jc9FaQKfUhc", "schedAction": 25, "schedCron": "lOwg2YxuIktcNKlm", "schedRange": ["ex6cbyliNIpE15hq", "bkzXXM1B03ZU2nSM", "0XN9lvTZlgOoMPEn"]}]}' \
    > test.out 2>&1
eval_tap $? 320 'AdminAddRolePermissionsV4' test.out

#- 321 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'KBTubFi1ZDr1xbo8' \
    --body '["ZEhMQmszKRr6RTAJ", "7oplZo3kXO1jxgYI", "uyOY5fuFOfKigSaB"]' \
    > test.out 2>&1
eval_tap $? 321 'AdminDeleteRolePermissionsV4' test.out

#- 322 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'XvithYloCNY47nWO' \
    --after 'TlHch0TT3cRwx1zj' \
    --before 'EwlePybC86ml79Wu' \
    --limit '86' \
    > test.out 2>&1
eval_tap $? 322 'AdminListAssignedUsersV4' test.out

#- 323 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'Jc1SAHoN4KJY4hsl' \
    --body '{"assignedNamespaces": ["OoiMtRr5zai9r6Ds", "bK5otylV2dcUgCWD", "VxyJf733hftjosRb"], "namespace": "wYJQdp2J3yUizjag", "userId": "CQeoKRzrxZZfXv3t"}' \
    > test.out 2>&1
eval_tap $? 323 'AdminAssignUserToRoleV4' test.out

#- 324 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'pCkh2GD6CYTpVmna' \
    --body '{"namespace": "aLapFKIY2dTdiB38", "userId": "x59rYefyV78ZCawk"}' \
    > test.out 2>&1
eval_tap $? 324 'AdminRevokeUserFromRoleV4' test.out

#- 325 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["TGRqRQjDx7f1ekxy", "TW7YirEiSFcr3hRU", "gE6zfe2NZLh2xMc4"], "emailAddresses": ["Xu6arMlFYiEjJYO4", "a4uZWMz9yCJu2aqi", "dhqs91m0AbI8OfS8"], "isAdmin": false, "namespace": "Oj4JqCwdyLSE5tH4", "roleId": "lm5WjU47fSGzL7Uv"}' \
    > test.out 2>&1
eval_tap $? 325 'AdminInviteUserNewV4' test.out

#- 326 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "4Lt8RAJHIM6Pt3zH", "country": "PtA1IRHku6eFO7KU", "dateOfBirth": "7UMERf181jKX32vq", "displayName": "rlbRtmE3Vu3HzVYA", "languageTag": "X51fAfdMnZQt2GzB", "userName": "z87OkwZiOcrJvEmR"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminUpdateMyUserV4' test.out

#- 327 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 327 'AdminDisableMyAuthenticatorV4' test.out

#- 328 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'kTexWoQdu0F1sPjK' \
    > test.out 2>&1
eval_tap $? 328 'AdminEnableMyAuthenticatorV4' test.out

#- 329 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 329 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 330 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 330 'AdminGetMyBackupCodesV4' test.out

#- 331 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 331 'AdminGenerateMyBackupCodesV4' test.out

#- 332 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 332 'AdminDisableMyBackupCodesV4' test.out

#- 333 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 333 'AdminDownloadMyBackupCodesV4' test.out

#- 334 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 334 'AdminEnableMyBackupCodesV4' test.out

#- 335 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 335 'AdminSendMyMFAEmailCodeV4' test.out

#- 336 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 336 'AdminDisableMyEmailV4' test.out

#- 337 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'pTWkXTqvfFsxaCIm' \
    > test.out 2>&1
eval_tap $? 337 'AdminEnableMyEmailV4' test.out

#- 338 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 338 'AdminGetMyEnabledFactorsV4' test.out

#- 339 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'XD9VNEPTwV7VusTd' \
    > test.out 2>&1
eval_tap $? 339 'AdminMakeFactorMyDefaultV4' test.out

#- 340 AdminInviteUserV4
eval_tap 0 340 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 341 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "aj4rLsO8Jtt8IsMr", "policyId": "RLRCfAG2loEwF6O2", "policyVersionId": "Afuk8l8mPvhbeoo3"}, {"isAccepted": false, "localizedPolicyVersionId": "5OKRadrqimWY29Df", "policyId": "IsGli4Co0xnpSh5f", "policyVersionId": "EpbygmwUzwBK1AWb"}, {"isAccepted": true, "localizedPolicyVersionId": "IjbBnLdh03k13XBk", "policyId": "Qiu6NCLy1vH57n32", "policyVersionId": "e0dzpelkEl6OYI7m"}], "authType": "EMAILPASSWD", "country": "WtpxnI2m8mqdC0Zd", "dateOfBirth": "t4jP0AxOcuwHxO6w", "displayName": "iYNd4vtE1wcJB9O1", "emailAddress": "MfyH0mYrUfwBaubC", "password": "v5KY0KBOeiZVnGmI", "passwordMD5Sum": "IV9SpBIoz3kSOYvj", "username": "bOOOQzwohU04mTqx", "verified": true}' \
    > test.out 2>&1
eval_tap $? 341 'PublicCreateTestUserV4' test.out

#- 342 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "aR77guSimc94A3hA", "policyId": "JUa2vuJAsx9l2vsU", "policyVersionId": "gbWHZuTxuea0oukS"}, {"isAccepted": false, "localizedPolicyVersionId": "YqV815NRblLAo4y1", "policyId": "MhSiFe5vQ05VBMUA", "policyVersionId": "BVVfWwGDC4bUWpXw"}, {"isAccepted": true, "localizedPolicyVersionId": "blzbq78WM3KmLQyp", "policyId": "Uz0PpUfVEZRp9gSJ", "policyVersionId": "fQTzmK5QodvOWmwF"}], "authType": "EMAILPASSWD", "code": "QreZDpSOQSiEiu15", "country": "usyKi95F72pmvYuG", "dateOfBirth": "51B4qp89zC7Intnn", "displayName": "qnPyx6Y972lgqhLi", "emailAddress": "GpCsgjP7759hbaIb", "password": "Em18n58mNciLc3FK", "passwordMD5Sum": "Ih60xiMjz3RNdPDJ", "reachMinimumAge": false, "username": "EijYdFUW2mTb4H75"}' \
    > test.out 2>&1
eval_tap $? 342 'PublicCreateUserV4' test.out

#- 343 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'NPzg3exs9NEHRXkL' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "uzmo3ZfPxKLCzOt2", "policyId": "RL6omogV1G0S7Hcm", "policyVersionId": "a6ZZzyLr3P0IGEXN"}, {"isAccepted": false, "localizedPolicyVersionId": "sBqPzzrFhWwkrDC7", "policyId": "X3TqWhmmCM7r7Naw", "policyVersionId": "oh4UoiMBrntEAGA5"}, {"isAccepted": true, "localizedPolicyVersionId": "vP0TvufWvgX2xI6Z", "policyId": "PfbYlhXJIxCl77ki", "policyVersionId": "ZDrcOn9X9eFa8Lw3"}], "authType": "EMAILPASSWD", "country": "h45vbI4y1NgCUM04", "dateOfBirth": "4TmBE3U0INX7GGg5", "displayName": "McvG9nflZZMX9oZi", "password": "oTHjAkZ19a1YdqYG", "reachMinimumAge": true, "username": "OORYtAGqG6DKre8B"}' \
    > test.out 2>&1
eval_tap $? 343 'CreateUserFromInvitationV4' test.out

#- 344 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "xdZuT41wDmClQRYQ", "country": "3vczjDARQS3T3t21", "dateOfBirth": "8NgrozEcKyl9t704", "displayName": "RlQSlaKtA3bACMi2", "languageTag": "LRi86unxVFQ6INFH", "userName": "rhcqSekQMq1iVlxk"}' \
    > test.out 2>&1
eval_tap $? 344 'PublicUpdateUserV4' test.out

#- 345 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "xuLNyd8sKDFUQgT8", "emailAddress": "nq5anvq6z3vG40PC"}' \
    > test.out 2>&1
eval_tap $? 345 'PublicUpdateUserEmailAddressV4' test.out

#- 346 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "qItODzKQbiD53sx7", "country": "7dzvrVMeNJN2fdRM", "dateOfBirth": "2Z0nk9V0gSDHozkR", "displayName": "smq3deR7nCsnib5j", "emailAddress": "yHLgdKP1OKbI5XAg", "password": "E0w3YvytrLWNICEJ", "reachMinimumAge": true, "username": "ky2D3AibA1INfQZa", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 346 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 347 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "pUvkVm0OoF0CaDE9", "password": "XLL5NQTClIgqLn9k", "username": "wcml6s8VMG6M1s5F"}' \
    > test.out 2>&1
eval_tap $? 347 'PublicUpgradeHeadlessAccountV4' test.out

#- 348 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'PublicDisableMyAuthenticatorV4' test.out

#- 349 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'vqijuKsnPBAhPznw' \
    > test.out 2>&1
eval_tap $? 349 'PublicEnableMyAuthenticatorV4' test.out

#- 350 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 350 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 351 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 351 'PublicGetMyBackupCodesV4' test.out

#- 352 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 352 'PublicGenerateMyBackupCodesV4' test.out

#- 353 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 353 'PublicDisableMyBackupCodesV4' test.out

#- 354 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 354 'PublicDownloadMyBackupCodesV4' test.out

#- 355 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 355 'PublicEnableMyBackupCodesV4' test.out

#- 356 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 356 'PublicRemoveTrustedDeviceV4' test.out

#- 357 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 357 'PublicSendMyMFAEmailCodeV4' test.out

#- 358 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 358 'PublicDisableMyEmailV4' test.out

#- 359 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'MSAMFB1gZe9QZiaz' \
    > test.out 2>&1
eval_tap $? 359 'PublicEnableMyEmailV4' test.out

#- 360 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 360 'PublicGetMyEnabledFactorsV4' test.out

#- 361 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'lDt5SlIQmiHVmFDN' \
    > test.out 2>&1
eval_tap $? 361 'PublicMakeFactorMyDefaultV4' test.out

#- 362 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'sgv05QQMVUfQbmYl' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 363 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"emailAddress": "QgbMytaXRoO0tReB", "namespace": "KjsvMIxNneWeLVbx", "namespaceDisplayName": "tc7QN50yrUehbOdn"}' \
    > test.out 2>&1
eval_tap $? 363 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE