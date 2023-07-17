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
echo "1..351"

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
    --body '[{"field": "Osl9yF8XxduzjyJw", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["VDWCVC0YFZn0bscq", "Zxrl3CtE9qzTlww3", "TevfomQzHR0wSUL7"], "preferRegex": false, "regex": "6TlV5mwrwSiXC8fp"}, "blockedWord": ["bALhHmcMmZamMpdA", "AAMIl5f9ZGi47iNT", "knWwmC8EnDdPQBPK"], "description": [{"language": "jY4ANvgulBzovXs9", "message": ["envNi12WLdTdlcoB", "2yLavTcSnE1txy2C", "Yoydn7UE7mSCzLcF"]}, {"language": "713GAevDdrVSTwla", "message": ["IeQg1K3wpoW9T5ZM", "qGZp1K3aNyoOnujR", "75jjCAPLXkweYzpG"]}, {"language": "I1CCCgg8WhQGPfpN", "message": ["E4w4AdEdHJESaq8E", "5TeOpwQdT9G043Q9", "sN2wJgSWPd7UUPSw"]}], "isCustomRegex": true, "letterCase": "NkBHVZO61HrxcpUG", "maxLength": 41, "maxRepeatingAlphaNum": 59, "maxRepeatingSpecialCharacter": 80, "minCharType": 5, "minLength": 72, "regex": "OXtppWWumfHvmmsb", "specialCharacterLocation": "OKPM9x9mX0Wd5MMP", "specialCharacters": ["itV0CJOesg2GdeT3", "XhShKPgS6TDbRemu", "SXqXwBBhmiiyrb54"]}}, {"field": "2ZMDWcr37xVIraQK", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["pbQtGD0Kj8EiiJFx", "z5grSLzKbenKZ5fw", "RYPRo0VOzf12BnMI"], "preferRegex": false, "regex": "zv44MexkIhyzTsmf"}, "blockedWord": ["Os9kwVNkWQfXS7Kj", "KgPEx1Uw2kzWhXPg", "L2kmOap0f9nxJgly"], "description": [{"language": "04QD7kuScOtwkovu", "message": ["uJFCtQ5DrmB1ruDd", "fkD1RzTLyPQpM60Q", "PyILhm52ZeJGzfP3"]}, {"language": "UpQAGPMYFSn81nhq", "message": ["pAtKX63sdIaATj4L", "RAEIBUUNx9DxDncC", "j6kQF7cN9apZcrnP"]}, {"language": "x63DwupUkN3dhYEZ", "message": ["M3Ioz9dPKDLpmMDO", "MfCkiMPsjn7pABy2", "6axBdSeOu6zrASwh"]}], "isCustomRegex": false, "letterCase": "QrrSAmMUiquFgbo4", "maxLength": 100, "maxRepeatingAlphaNum": 23, "maxRepeatingSpecialCharacter": 20, "minCharType": 98, "minLength": 23, "regex": "KlHy95qP9uZgLCQz", "specialCharacterLocation": "zUSk0XkD3bmBESNk", "specialCharacters": ["9vEnyJrfdGwIGBtI", "9faqonpwzFwGZyg9", "F84Emgn4OmSOYaq2"]}}, {"field": "qH0OnhYB6aGC7tuy", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["0CBy9pMgIkekUQmi", "zIjfvXWMlrC3HIV7", "pvDqbbE80xeU8Jcv"], "preferRegex": false, "regex": "InZ1d01fIGHiXz8S"}, "blockedWord": ["aDcdXSfRGljXnNt9", "YWEG2AWPq8KRIqMX", "iwOXEuDGpIXaDvFk"], "description": [{"language": "LrhMKRRGqH0FMztt", "message": ["g6dz5SfUz8vh8scV", "Uc6kR751mSVVR4jC", "Zejn5dwbQcG9r8gi"]}, {"language": "N99xtdpkz8xTR7aq", "message": ["E8OzKvvJFTuF4wLg", "tvQSIfTHiSD0i0kK", "Z0yynME4uKu5UIJr"]}, {"language": "S9Yo2BV5XE8cxac5", "message": ["52hIwJg2eLn7UhA8", "8KkBoUIsFF3GxyHm", "Ltik3Ig6IRjrqsRr"]}], "isCustomRegex": false, "letterCase": "QlPSPodB1uVUCebn", "maxLength": 66, "maxRepeatingAlphaNum": 31, "maxRepeatingSpecialCharacter": 87, "minCharType": 5, "minLength": 11, "regex": "M6y3aK32FoCvbeWK", "specialCharacterLocation": "jYGfohsL4L9QDt5u", "specialCharacters": ["W2Sm3wjFtEOFUrnF", "BGZxsSnxkPQrEdpu", "6uNZ87x2Gl8hHo4V"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'CydHskiSKoRrsQCE' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'r80T3Gr7LXw7xng6' \
    --before 'JNdNpkjSWzZFGOJu' \
    --limit '86' \
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
    --body '{"ageRestriction": 59, "enable": true}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'PmHUhKdQgHgPh77Z' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 15}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType '40LGq0oJmMC9TeDg' \
    --limit '68' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "wTwpra3IuE2proEH", "comment": "xnbAE1nChV73NxNy", "endDate": "I4nDxxpOo0l3Z07L", "reason": "XCpBXZh4sWEmJhEe", "skipNotif": true, "userIds": ["1jJt0OQaKaCFwmVX", "ArYDDv56jhpQkwA2", "NRcULgmzPB4yh7rp"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "pAb6IvV1upW86XdN", "userId": "17m0JIhSLqQbfzUo"}, {"banId": "m14iBaXMp5BGDywm", "userId": "fdh5TCRbMi2iUi90"}, {"banId": "8Sn2xoJOEhrlWyHU", "userId": "DQKcuwLw88MG4CXO"}]}' \
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
    --clientId 'RvbXFBN0xfrir8dr' \
    --clientName 'Pj6zYExxZdQyDijF' \
    --clientType '9OpLWLPXISHIkaCA' \
    --limit '89' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["AfDfbHXIvn0ZMQkI", "kz55951xjKQjTJw7", "aRLFw3GiNr1zlbec"], "baseUri": "84Qr4doRI5wrW0Mx", "clientId": "aPmisQFh2nNJo002", "clientName": "KP83hIGtSKnHTyY7", "clientPermissions": [{"action": 59, "resource": "trKQJI2EfsTWVMRi", "schedAction": 80, "schedCron": "k5Ej7FOvNBl9QYmw", "schedRange": ["CEksQxuUUOn8X3za", "pnYAxtpIUYW3z7ZO", "gXxD6mFV6Fpqf111"]}, {"action": 85, "resource": "hkzsEfXZpmreaHli", "schedAction": 88, "schedCron": "L88iSMpAWPQJ6eUh", "schedRange": ["3lOAZiyeAxD8kMgG", "ZvSHLYWO3lhQkOXx", "MjkPkm1VzxcO2Fon"]}, {"action": 40, "resource": "JHKIqTPj2vUXDTSM", "schedAction": 13, "schedCron": "838NhHAkLchfhwMC", "schedRange": ["ZBeqKYQVZfXnCZNN", "XAK4e6EFjHcL82ap", "ty9enmvz9UqKTeGE"]}], "clientPlatform": "2NfGyaHhSSGtLLiq", "deletable": true, "description": "4B32p9jpCdAPUBTU", "namespace": "PsKcGE0kiZQuMJrl", "oauthAccessTokenExpiration": 38, "oauthAccessTokenExpirationTimeUnit": "kvmNt7Cwa4lV5H78", "oauthClientType": "so7ush2RmJj6xcRu", "oauthRefreshTokenExpiration": 82, "oauthRefreshTokenExpirationTimeUnit": "h8VzGamfQetLUUwm", "parentNamespace": "9TuZvhkB9hyi6TOP", "redirectUri": "De45c8aonpz4IGMf", "scopes": ["uhWUlG5zF3Anr6lF", "q0ZrmevC2GSgzuw6", "v901e73fIgmnxZNO"], "secret": "c82y8xzJBd0VyvTq", "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'qV038dz0u7kUIUS4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'p5m7Sxyn1MzE80xf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'OjpcXxywdQhDBS0A' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["AXih6XSHRFHJpPly", "SWQX7YCitWBzoati", "VAKLRntqyNTdKCWd"], "baseUri": "bd3Tzhyy1WVljCiB", "clientName": "PGFp4GACAI3iNTnT", "clientPermissions": [{"action": 20, "resource": "oOLKgJyGpdJaEJMq", "schedAction": 46, "schedCron": "9sRpo1PbJZS86Uce", "schedRange": ["I1VtEsvEm1IL9hHn", "6RkwsIUpL0aYtIBL", "7bwIqC5CXo2XYVHA"]}, {"action": 96, "resource": "wE4a9GJfl8X9uZc4", "schedAction": 20, "schedCron": "tQERRgL4TLFM2Nsq", "schedRange": ["kQ6wlF9AiE5N94je", "cuekETxVcyKJj33h", "ArWoHNiy2pIWsvYp"]}, {"action": 54, "resource": "scmBSzKlQvNeEJXf", "schedAction": 75, "schedCron": "Vahd4ZD8iSn0Oo4v", "schedRange": ["aXtJUNOyjtAzlNGW", "bWVtls5MHkKgNFWN", "LxfCcmGk88EBkykn"]}], "clientPlatform": "CgpngL3XnBLqVz4X", "deletable": true, "description": "MOF040vF8e6H5P27", "namespace": "d2J80fQo4nEhGeuX", "oauthAccessTokenExpiration": 94, "oauthAccessTokenExpirationTimeUnit": "KVIg8HE2qc3AJQch", "oauthRefreshTokenExpiration": 95, "oauthRefreshTokenExpirationTimeUnit": "MH8YO8eSxwxup728", "redirectUri": "uSurn7EHVGccVMWJ", "scopes": ["jMVpJoGUsuGIg1EC", "7yuCuZgjcdzGk9vo", "CjFUWC62cFPd0j7u"], "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'PVzXxSotnhZQ63J1' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 82, "resource": "NHrZRWemFTNi0gDE"}, {"action": 87, "resource": "YjRbtTsMVySheBz6"}, {"action": 20, "resource": "u6C94xJKKJnTjeE1"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'mV28bZIzF4e5m20M' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 25, "resource": "Voa456hXzlHAdUuF"}, {"action": 49, "resource": "NLaY5bgBlVMG2JOD"}, {"action": 71, "resource": "JLswUwM2dudcvWZg"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '96' \
    --clientId 'I0w7yovqLQkvRZ5Z' \
    --namespace $AB_NAMESPACE \
    --resource 'k59H8IfH1zQLA2xJ' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteClientPermissionV3' test.out

#- 128 RetrieveAllThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 129 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 129 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 130 RetrieveAllSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 130 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 131 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'KNcy3P5aKCyORFnk' \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'K41oJ2BTJ8sMAL3S' \
    --body '{"ACSURL": "WrkCgVdysTr7jISH", "AWSCognitoRegion": "hIf9dHS2gLhLBG9V", "AWSCognitoUserPool": "fDv1EdCyechw5s00", "AllowedClients": ["DHQYag0r9FLqimjJ", "dgv2mz21Gntiy42t", "5JkcCtJqsLfjqoHx"], "AppId": "zh465eygVwjzXtPv", "AuthorizationEndpoint": "Hxpu4F9lNvJWywX7", "ClientId": "n3MPEZHggCbEAGvA", "Environment": "ea85gA6BhfYgPgKi", "FederationMetadataURL": "JBVeHYjjMuzu8yEY", "GenericOauthFlow": true, "IsActive": false, "Issuer": "pyRpwtoaPaIdw0Ky", "JWKSEndpoint": "D6KGvO2CF4bW2qci", "KeyID": "O1zoI0BV7FjSNU5u", "NetflixCertificates": {"encryptedPrivateKey": "nOLW2RmnMWishxAZ", "encryptedPrivateKeyName": "bc1iEeohaRUmLISR", "publicCertificate": "ePwYLNjDk8qirEHp", "publicCertificateName": "W3UtZCbUVXj7dIel", "rootCertificate": "bKlaGKAz8MFh9boQ", "rootCertificateName": "61Q71bG8mB6hlTXT"}, "OrganizationId": "pLXAjIpmldyKVa1a", "PlatformName": "QiL19h1tncGiSxcM", "RedirectUri": "zJn3KdjxQt12NuO9", "RegisteredDomains": [{"affectedClientIDs": ["42bMObQFFbnTWYJJ", "viKtICIl7ULYBowO", "n0qysiclcRg4ko7x"], "domain": "ThkHxWbmIkkrKYP9", "namespaces": ["q8tBzqvSE0xz0NIE", "QGYNMAnKLcheaznG", "tBcvOxoxMNvfHJzb"], "roleId": "ekZ8TjvQLND7Gpc3"}, {"affectedClientIDs": ["mcMiyYSAc0KjZ8LK", "zQpgq8oAai2tzNlD", "XVt6eGaxrcOyTAp6"], "domain": "6GAGZOxdSlY5N3RH", "namespaces": ["XCYRDQADzXZXYBwJ", "ulaVZvJOfHDstbuQ", "ewJqiGh3LwprfAUs"], "roleId": "5iDbOS8f6RnsrH93"}, {"affectedClientIDs": ["JtvMcu1Pmlj8e1bN", "O2CgJ9OpND89axTt", "DxG57XOTtUe2q9ZE"], "domain": "lPZK7QezitVh2IoJ", "namespaces": ["Ru5kEajuwl1AFZBJ", "SgaV5PDwWK5QjOJg", "W3w6VZHOL1GWu4P2"], "roleId": "6owGrYAYUCGhdUdu"}], "Secret": "zHjGXeqp0ITEM1iX", "TeamID": "LMFIrCmyZHKWtYc4", "TokenAuthenticationType": "Lxk9fpDiNHwkV24d", "TokenClaimsMapping": {"mLzaYhK8IPcvzM6l": "us6glRZHAWj4nN7W", "xth3py72sxQxmJoJ": "v1KMGeSkqqA8bOpC", "ocLuPw5rdcdvrG3u": "m71wXxDmpprpyY5H"}, "TokenEndpoint": "Jsp8jOMjD9SNehOt", "UserInfoEndpoint": "5aMK6GCXYqFj6gVf", "UserInfoHTTPMethod": "pOW7qnSII8yU8902", "scopes": ["SFMQvrehG72ALsVj", "9GDbl2XwyuBgjKNx", "tDw6iSuVEuVW854f"]}' \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'AULHbfSAKLeJzXXt' \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'nSn0so0oJN1eat23' \
    --body '{"ACSURL": "3CDlTosCTpqFgMFO", "AWSCognitoRegion": "qAvemN6wF7khE7ds", "AWSCognitoUserPool": "J3iYCCh1AlnD6yX1", "AllowedClients": ["vJx0YCghW8i2fvrS", "sKIf4z9SOmHkusVf", "V80TIeC1PMbCKdE0"], "AppId": "2wUMV2IHacFwLTzW", "AuthorizationEndpoint": "EeHCHvb8Q3urVtO1", "ClientId": "J7uBKzfy9cNmpODb", "Environment": "x7heuMrVbuYm6j3j", "FederationMetadataURL": "HUJYgLVkORWvV6QZ", "GenericOauthFlow": false, "IsActive": true, "Issuer": "h2PKI7SVG8ZUq9VN", "JWKSEndpoint": "88WfsSlxGOkhSEUw", "KeyID": "VkFaC6KrndufoRR6", "NetflixCertificates": {"encryptedPrivateKey": "ZgLpW9ntuNnIUB5F", "encryptedPrivateKeyName": "jdBj8v6b0PoZBAtX", "publicCertificate": "bvabP3PLnHrHHn5V", "publicCertificateName": "9nqFR15pE1KdAC6p", "rootCertificate": "G6kpGe4eGiFCgmNm", "rootCertificateName": "AblKzqZ0QdHjypx9"}, "OrganizationId": "6jhq0PxCVP8raspi", "PlatformName": "LAQDcsRyXVSGjv21", "RedirectUri": "Lj5cuWfVYfUCfnY5", "RegisteredDomains": [{"affectedClientIDs": ["WJmbG3v3kHjpe9zx", "VmJQxX9tFWPPRUCq", "nPGBHDDUoNbuDRYf"], "domain": "Q5FSTAeCoJdEnFMx", "namespaces": ["50yk2lEceINI7KMQ", "nvDEDvaVwQSA448n", "cmVvnMs0TpfS8VLG"], "roleId": "Zn0KZWklZEXeKWRP"}, {"affectedClientIDs": ["I1nAfVv7Fo2xO5qZ", "dzQpKoZjEtdUBK7D", "9hdaNfwE0gO3mFOM"], "domain": "QgCNdOQHrXSoEI33", "namespaces": ["tlghz5T5A6k8xkki", "Rkq6WP0qOmVjjbul", "B0kz8gwpJUqLsuR3"], "roleId": "AojLjffGvpUOVmqb"}, {"affectedClientIDs": ["0PxMfLBAFEQvbI7e", "GrC7stoROGye6oYF", "i9ZybL9p5IdmsBv0"], "domain": "sxLCZUBYzqOBW5gh", "namespaces": ["JrcAOMXTpTD7enOR", "YrezqFVZ4Hby07uS", "dnX6ZHHcTmAUylwk"], "roleId": "QmLKMX9IqjjhCM4w"}], "Secret": "Bglpup9wolqaocAM", "TeamID": "7HrzlfisDaJfNmFy", "TokenAuthenticationType": "nswRempqnB7TnvNR", "TokenClaimsMapping": {"rXdOo8MPwZdwk7F5": "uTUuj4mnUBQ7jTSq", "ScUrhlBbqgktFOgo": "CJMiiMYH8m64qmHs", "aunJ8DE2iMRbLaIj": "q3jBwWMOWszZ4miA"}, "TokenEndpoint": "3T1aGOGugJKmqlp4", "UserInfoEndpoint": "eicngZlMfA0JO0xU", "UserInfoHTTPMethod": "2k790vL1QU4lifZs", "scopes": ["BAfDtXwi8z3GLp47", "Gh1Cp4xbvYjnoeYC", "0YsNwCzZl7fselVh"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'GMg1lz3zDu1zmOsz' \
    --body '{"affectedClientIDs": ["m5g38gNZXoSekVkK", "aPokeIBx4OjmTVNy", "F7nEVxKCJGhZdKO2"], "assignedNamespaces": ["p3enUPkbAeFG4LyY", "XKBN1H7RUvnMWMhn", "4uZ0YLax3NGt7a6R"], "domain": "8j6T762ammkvWjV3", "roleId": "vGSbBp0VLI4PkDYQ"}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'gyWS6oWI7EtC5aCl' \
    --body '{"domain": "suta0cyMLzXSyqZk"}' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'JSPFbIC8eCiMJOpm' \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'L5Ec2HSZpsU2zZnQ' \
    --body '{"acsUrl": "RFJpy5P3YTeccWvL", "apiKey": "AbmsKFmdOPQqPHdL", "appId": "YJ7rqVmhBjTfpuZl", "federationMetadataUrl": "Xc3UT16phqaLJVxe", "isActive": true, "redirectUri": "6TodsGWWM6c4LvTU", "secret": "0jgD9eZpWccPJc5o", "ssoUrl": "uKTTmPVdDTswj54G"}' \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'EzEdSVgxOaR6qV7a' \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'iBBwYt6L408syYz9' \
    --body '{"acsUrl": "AzQoBT2aGNfyHQSf", "apiKey": "DHggvmJvVfa1WkoY", "appId": "nCnQbDt5iFkxOJU9", "federationMetadataUrl": "YIhdwFjtgwVGzCxc", "isActive": true, "redirectUri": "yQfgAy2o4JrKwEdy", "secret": "ZHj1PdMVaSJnLu6b", "ssoUrl": "o0e8NHkAlVYtoLJW"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'xCGsgHWVt0M51Tzk' \
    --platformUserId 'X2XQzgLFrBLOhbrm' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'trDWCEZVLN8Nnl0l' \
    --after '14' \
    --before '83' \
    --limit '71' \
    > test.out 2>&1
eval_tap $? 142 'GetAdminUsersByRoleIdV3' test.out

#- 143 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress '2dXFeu43d0F2hwCK' \
    > test.out 2>&1
eval_tap $? 143 'AdminGetUserByEmailAddressV3' test.out

#- 144 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["c5d2Nhx2MoxjmkRq", "J9LVOjn80InyBrxf", "lwT1pbvHrPj3fwdO"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["3UTPuAi8HyeETWfV", "QTPb8bSbrIU3aDT4", "mLRNiHlueGs1yKxa"], "isAdmin": true, "namespace": "jqXRRSd63XH1tFNJ", "roles": ["Agxv9jAF1K8kd2il", "zhpefrBEsCtkWwcw", "n3GE1aNmBEqeDwmT"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '32' \
    --platformUserId 'FTVr0MdrtNDOL78i' \
    --platformId 'QJQ3iu49pXhgr31M' \
    > test.out 2>&1
eval_tap $? 146 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 147 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 147 'AdminListUsersV3' test.out

#- 148 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '13eCmDpI2M7MpmLG' \
    --endDate 'uTy8Ln64VSIlDull' \
    --limit '18' \
    --offset '100' \
    --platformBy 'YBnQNuj3XYKGMaKM' \
    --platformId '5838n98MNP6E4MBi' \
    --query 'bDjFtLMze2iiDU88' \
    --startDate 'RZxfrqZ69nDBqJGs' \
    > test.out 2>&1
eval_tap $? 148 'AdminSearchUserV3' test.out

#- 149 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["byRoKrJplXR8jE4t", "GNFeKTCkQ4cfPmpV", "guccxKnAalFVWM4i"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetBulkUserByEmailAddressV3' test.out

#- 150 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jkbewJVR4RPOHTxt' \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByUserIdV3' test.out

#- 151 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rviW1v0EX7dzw2BZ' \
    --body '{"avatarUrl": "mooMxsEBXgIWO6Fy", "country": "B87UZwMLz1OExQ2X", "dateOfBirth": "ModMwwDrS72MrtqQ", "displayName": "8mXgPYyijfN9M51B", "languageTag": "tq79wXlvYy17vXZX", "userName": "DoBfpIyzXwRc2CUm"}' \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserV3' test.out

#- 152 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'k6oI5L7drAJruBk1' \
    --activeOnly 'false' \
    --after '4B8jAnzzRFctUSSE' \
    --before 'MYtbtaG2q06Ad2XB' \
    --limit '59' \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserBanV3' test.out

#- 153 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RHHfnV27navTEHvF' \
    --body '{"ban": "DWgoy5iUqPko4LZc", "comment": "LfLFMnAYVsiAkUqF", "endDate": "yrcdPMaIy2SePaYL", "reason": "jzv8NSgrYMLP1PdA", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 153 'AdminBanUserV3' test.out

#- 154 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'bcYNyUxiOxG0PJDV' \
    --namespace $AB_NAMESPACE \
    --userId 'ZBIoEpxLht20decw' \
    --body '{"enabled": true, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 154 'AdminUpdateUserBanV3' test.out

#- 155 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Si6fRSMtoRz0Zbn1' \
    --body '{"context": "Ed3q14p3xTRI3zkO", "emailAddress": "6R3yUo9jNotfsjBA", "languageTag": "eOBGk0l9YIZQV6e9"}' \
    > test.out 2>&1
eval_tap $? 155 'AdminSendVerificationCodeV3' test.out

#- 156 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RgwGkON4dOBASP5E' \
    --body '{"Code": "L6vrCWD3zik7tLiO", "ContactType": "rCJSMk8ArhlxHCCR", "LanguageTag": "mu0gump8YSYdAyBv", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 156 'AdminVerifyAccountV3' test.out

#- 157 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId '7QZD3wdXH6w2FptR' \
    > test.out 2>&1
eval_tap $? 157 'GetUserVerificationCode' test.out

#- 158 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tgmfntRZZL9lbWEK' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserDeletionStatusV3' test.out

#- 159 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'a3LjZeYjru6QDQNH' \
    --body '{"deletionDate": 60, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 159 'AdminUpdateUserDeletionStatusV3' test.out

#- 160 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId '7hCvRYtcu4GevgNl' \
    --body '{"code": "KTdqeQUAKl0NYfCl", "country": "y7Hyzmxcsrm2T0XV", "dateOfBirth": "mAu50uSfZ77JXhi4", "displayName": "tF1l5TdrLfFuQDMT", "emailAddress": "3E7Bl0i5Tj8MMJ91", "password": "9keE21f2HGFGNr0x", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpgradeHeadlessAccountV3' test.out

#- 161 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FIuynR72cGXZDEOh' \
    > test.out 2>&1
eval_tap $? 161 'AdminDeleteUserInformationV3' test.out

#- 162 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '85Dmg8lkyjM9z0J7' \
    --after '0.07792003645398216' \
    --before '0.2980793064438142' \
    --limit '13' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserLoginHistoriesV3' test.out

#- 163 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ob4c7XJoiP1kCSZF' \
    --body '{"languageTag": "PqJkpZuvWbEyhVyp", "newPassword": "lD9RbqDB53EMt8iI", "oldPassword": "kzRDUzs6hcQQFIDv"}' \
    > test.out 2>&1
eval_tap $? 163 'AdminResetPasswordV3' test.out

#- 164 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ITHcPCviADteMv9D' \
    --body '{"Permissions": [{"Action": 60, "Resource": "GZ8UULBewXF6yG3m", "SchedAction": 25, "SchedCron": "Ncb51IUEQ3Xiwe0l", "SchedRange": ["R0Pk2L3rKYTtLGcz", "PlMv5QWKBYrojpm4", "ArAD5CuyQ55mtvV0"]}, {"Action": 78, "Resource": "bAZA9kmbSZBPSlWD", "SchedAction": 57, "SchedCron": "6SWWpyrSF0gx2pYQ", "SchedRange": ["27YKkM63mDloiU0G", "nOpcDovWd0XQbJmk", "gs0V0qvDv0VVrQjz"]}, {"Action": 17, "Resource": "I5X7ZnbxXP5TUh0C", "SchedAction": 32, "SchedCron": "OzMPGZhuceBkMb1U", "SchedRange": ["gxxPdcfvnrEbWU9s", "HniXP9CSlZSvX1Q8", "nsp86r0hPJXzbVn2"]}]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserPermissionV3' test.out

#- 165 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Vnr6vzQws1y1kkKf' \
    --body '{"Permissions": [{"Action": 22, "Resource": "7gLUHVhoXuB4XYCL", "SchedAction": 7, "SchedCron": "KEHDUvFZ1yflzoek", "SchedRange": ["2AHXM8yy60SzxGLh", "iynJmAVcpeN00KVb", "MTV377L7WgMLwBkB"]}, {"Action": 49, "Resource": "NtgwZbfZeipbqVcA", "SchedAction": 94, "SchedCron": "abP3UbSSa8qjhksS", "SchedRange": ["ljijJST41tf4kWm3", "raIIGvy39TMao0rX", "M5jMJDHfK0rDYQvW"]}, {"Action": 36, "Resource": "bMGbqKGbH2WE0gZG", "SchedAction": 77, "SchedCron": "5Xt8oxjyxAxgVAo6", "SchedRange": ["PJViQeBhMSbK1fob", "F41FNr3aaDo1fZs5", "PR7YtkUz3WBgAGsC"]}]}' \
    > test.out 2>&1
eval_tap $? 165 'AdminAddUserPermissionsV3' test.out

#- 166 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LGuMH7ksOH21g7Fx' \
    --body '[{"Action": 45, "Resource": "amImZgMIlrEkWja0"}, {"Action": 60, "Resource": "U9eD1dEEB37tWGri"}, {"Action": 75, "Resource": "lDDJ9CvOlH7GKhId"}]' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionBulkV3' test.out

#- 167 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '58' \
    --namespace $AB_NAMESPACE \
    --resource 'PkYhFtmEk4LoFMnr' \
    --userId 'q9czOhgEj5XXU2hZ' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionV3' test.out

#- 168 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '5TabmYNj3XlU6Jkt' \
    --after 'JYBZzrXROfB654VR' \
    --before '5dK00mFkcObxUwi1' \
    --limit '38' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserPlatformAccountsV3' test.out

#- 169 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'emKgdEuo9h8hjMk0' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetListJusticePlatformAccounts' test.out

#- 170 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace '128jCuYXhSTwuk21' \
    --userId 'ypepbN0qxWVq4x2v' \
    > test.out 2>&1
eval_tap $? 170 'AdminGetUserMapping' test.out

#- 171 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'WpTIvsNiORoU9Nn8' \
    --userId '5mnH7i9DJplRJXms' \
    > test.out 2>&1
eval_tap $? 171 'AdminCreateJusticeUser' test.out

#- 172 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '3be9us3Rp6eVjA0P' \
    --body '{"platformId": "B84nVnWhrodNWgob", "platformUserId": "meKOXj4H03CIgEzT"}' \
    > test.out 2>&1
eval_tap $? 172 'AdminLinkPlatformAccount' test.out

#- 173 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'LBrQZ9jXLjels5IM' \
    --userId '4xyDGl1dMKnj5Ym9' \
    --body '{"platformNamespace": "sj6r6xC9hOIeUt7g"}' \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformUnlinkV3' test.out

#- 174 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 's9c3RrufhefPsuGu' \
    --userId '6IqFJ5n3FEu50C9T' \
    --ticket 'q6jjcVTwMkajDPVv' \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformLinkV3' test.out

#- 175 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'p6fr92apFndd5qTI' \
    --userId 'AlDDsSartrj7v5Xa' \
    --platformToken 'DDMk4c6ad1GlyHPe' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 176 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'vXU9FXSm9OORvWo9' \
    --userId 'KLQc8AZlZoYwu4r0' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserSinglePlatformAccount' test.out

#- 177 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VFTcPxuQfXWCNKsh' \
    --body '["6ETIIuB5ZN95mt8n", "JEtMLpZV1BSSObSy", "TWlARjh2PyDZtAMp"]' \
    > test.out 2>&1
eval_tap $? 177 'AdminDeleteUserRolesV3' test.out

#- 178 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'OONVgmSm1sr7g5Ei' \
    --body '[{"namespace": "aTNloZFziFuJV3kX", "roleId": "FTtlB2M2DAVdIO0A"}, {"namespace": "l3ltZFKuRWayGlVh", "roleId": "7gV64UzgVAmOF7By"}, {"namespace": "b4dhEuKpGtuyuzBY", "roleId": "iNlxYCZYCpgPeNrY"}]' \
    > test.out 2>&1
eval_tap $? 178 'AdminSaveUserRoleV3' test.out

#- 179 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'kbSSLCuWNa4IpWFh' \
    --userId 'Xg4k4lWBG4h79hXB' \
    > test.out 2>&1
eval_tap $? 179 'AdminAddUserRoleV3' test.out

#- 180 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId '1dmvgDbrS9Yj8sIf' \
    --userId 'AlgTEMDKbzwaLmeF' \
    > test.out 2>&1
eval_tap $? 180 'AdminDeleteUserRoleV3' test.out

#- 181 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'j1rwZbQspfTfMujH' \
    --body '{"enabled": true, "reason": "4OzVAZPpwsBhHEDO"}' \
    > test.out 2>&1
eval_tap $? 181 'AdminUpdateUserStatusV3' test.out

#- 182 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId '0lGig5VuO41hvPwX' \
    > test.out 2>&1
eval_tap $? 182 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 183 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'DhoPgN6bPQ1yK5b7' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "nWkdm0SVOLYYQk5h"}' \
    > test.out 2>&1
eval_tap $? 183 'AdminUpdateClientSecretV3' test.out

#- 184 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after '69eB4JDgbs9tKrQA' \
    --before '6VJiJCgIJzSsKryK' \
    --isWildcard 'false' \
    --limit '11' \
    > test.out 2>&1
eval_tap $? 184 'AdminGetRolesV3' test.out

#- 185 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "managers": [{"displayName": "wqxu0ixQHrvGGJau", "namespace": "JypO8bhAIL4veYoW", "userId": "7j7yrkjUkDfnTV2V"}, {"displayName": "Py38QUkWwm16J4jx", "namespace": "ixRp58F3KugQVgmF", "userId": "4n2NtgevCRWl2QsF"}, {"displayName": "5M5z99yIYIAjQDk0", "namespace": "ZHLl00d7sEYQF994", "userId": "CGZSc7lQthdPtzbZ"}], "members": [{"displayName": "ZoxGov1l8edXA8rN", "namespace": "Q5eUGCPEXXVzxMiQ", "userId": "XvRkDxw9fRwlqlDB"}, {"displayName": "JE1ldWwHT9i6q2Ok", "namespace": "yZiUvGlnYfSSDwee", "userId": "6sxJvy1b7EbvOPne"}, {"displayName": "RWxxX5HLy1x6FZDA", "namespace": "75BzrdvWGTIBXo4g", "userId": "hM4ACqzErAqgJcvM"}], "permissions": [{"action": 37, "resource": "xo5p94WrpKUdraPL", "schedAction": 53, "schedCron": "vUlPC2TSxt8AeOTx", "schedRange": ["hNzUMNtO4dMTpf8Y", "vKEWvHnJJTgPmXOo", "e7bxHHhXk8JquiwH"]}, {"action": 53, "resource": "p9GSWN6Pi5IoFGJ3", "schedAction": 55, "schedCron": "f4gZk4xoSSa0qzKB", "schedRange": ["1MEo6TcpWeh0Qw6A", "XYdUIvqnPTPgsicC", "QmcH6yoC1e1vSVJe"]}, {"action": 41, "resource": "XKxNDFIf1QrNLpY2", "schedAction": 12, "schedCron": "Si7PZvVnwCQXXuBx", "schedRange": ["yPvnlitPLlGtrh9d", "G93rxU6nmc5pFCl1", "brwGPYQfIckphUoH"]}], "roleName": "T37irWptp7CWO9kJ"}' \
    > test.out 2>&1
eval_tap $? 185 'AdminCreateRoleV3' test.out

#- 186 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'c3mnPT4qoE7LOyz8' \
    > test.out 2>&1
eval_tap $? 186 'AdminGetRoleV3' test.out

#- 187 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'bCEszORPgRozcn9l' \
    > test.out 2>&1
eval_tap $? 187 'AdminDeleteRoleV3' test.out

#- 188 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'VoB8zZuBNxiOuMam' \
    --body '{"deletable": false, "isWildcard": false, "roleName": "ReiTHveWNOpkE38Y"}' \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateRoleV3' test.out

#- 189 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'x5kJlFckhdO4YlZZ' \
    > test.out 2>&1
eval_tap $? 189 'AdminGetRoleAdminStatusV3' test.out

#- 190 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'b47JUZ9Y0WtCwuqM' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpdateAdminRoleStatusV3' test.out

#- 191 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId '0maR3Zx2r25d5tI3' \
    > test.out 2>&1
eval_tap $? 191 'AdminRemoveRoleAdminV3' test.out

#- 192 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'tFnysLKkQUeko5Rf' \
    --after 'U9bNDANbzEDcDwJJ' \
    --before 'j7tgiTulT86Q3NJe' \
    --limit '9' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetRoleManagersV3' test.out

#- 193 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'av0b6rsgTTRhxboN' \
    --body '{"managers": [{"displayName": "WNURgj8FVqp0K5fN", "namespace": "P1HiCQocvlbRK6aj", "userId": "mCP9kgn4IbAxIaeo"}, {"displayName": "JDjAHxWz7Ih44tjW", "namespace": "gSsnSfM2fgYHPTLy", "userId": "wHyBQx2DaxheuBV3"}, {"displayName": "AN0i47XX7YabPZVh", "namespace": "UxPVEt0mN3QGeeTK", "userId": "8LNJTInxLwmM4Obm"}]}' \
    > test.out 2>&1
eval_tap $? 193 'AdminAddRoleManagersV3' test.out

#- 194 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'LYOiVprzbQjvjnLK' \
    --body '{"managers": [{"displayName": "B1b8CXm4YccQOAgE", "namespace": "lhT44hFrxQuYesdM", "userId": "QWCDRU64FniGUB8T"}, {"displayName": "zsusIiG0IQ9OyjCW", "namespace": "5sUdMsJkXzRppycr", "userId": "IfNEnNiRRAQ422RZ"}, {"displayName": "BmDWLV0lZcYOMZUd", "namespace": "hoELlft7d3TRgFL1", "userId": "9uSXs66F2Ih9Omx0"}]}' \
    > test.out 2>&1
eval_tap $? 194 'AdminRemoveRoleManagersV3' test.out

#- 195 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'hgoi5Ks19AmzS2An' \
    --after '8BqQCdkiDjFQaevv' \
    --before 'IzPmXet7msCh0d3z' \
    --limit '80' \
    > test.out 2>&1
eval_tap $? 195 'AdminGetRoleMembersV3' test.out

#- 196 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'm2IoMLtKnBYWB23m' \
    --body '{"members": [{"displayName": "I2MsPsg9QFmu5lck", "namespace": "PTF1xJABtATzaIDC", "userId": "yiBXFQLrzDHdNSio"}, {"displayName": "vrqcXveJQMIeJNTR", "namespace": "NT7Tu0qv2AjViphI", "userId": "O4ylmH7xPRFL0TGK"}, {"displayName": "0y8g5RX4w68wneKc", "namespace": "xv7rvkdCc5ykzbhG", "userId": "gLwAcQRB6rN0bXtz"}]}' \
    > test.out 2>&1
eval_tap $? 196 'AdminAddRoleMembersV3' test.out

#- 197 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'dEnBHZOBsHAYJY2i' \
    --body '{"members": [{"displayName": "msCRPp8Uh7wMbo2h", "namespace": "lHxgdwCRrFN9IpWD", "userId": "igPgjphrRKfxexoJ"}, {"displayName": "Miqd0tdboaiizxbW", "namespace": "b4aQeD3i6Q0bv830", "userId": "oWb8CPafr7DjF32R"}, {"displayName": "Fykx4BEE4SEqhXgz", "namespace": "ezFzh5TQNkKq2cdK", "userId": "zVniZ4fe8RjWtHSe"}]}' \
    > test.out 2>&1
eval_tap $? 197 'AdminRemoveRoleMembersV3' test.out

#- 198 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'csU1A7hUZwTtVjaq' \
    --body '{"permissions": [{"action": 6, "resource": "RVdMKW8IK7AIkd30", "schedAction": 44, "schedCron": "nUH3jpOc2PcFC1Ov", "schedRange": ["U4XyIJ4Zi5mvLKz4", "Tr8QwPepoZmyNTvs", "wc2GRbuRiWgOSZcK"]}, {"action": 22, "resource": "JTFe7RsZPMszoBGk", "schedAction": 17, "schedCron": "plW0QrgqyxJiQxd4", "schedRange": ["CyCdKUYEPfNRz8jj", "06buKBJo0XzvnNBG", "dTkELDWB09F0XfeT"]}, {"action": 20, "resource": "Ml2oPdfMBRKtQ1Nh", "schedAction": 63, "schedCron": "E8WUWPDHBojkjHZo", "schedRange": ["pmO5Ldyb6EqXcj2p", "hIeXkVaESVM1mV1d", "eiYUnpshFySL0c7p"]}]}' \
    > test.out 2>&1
eval_tap $? 198 'AdminUpdateRolePermissionsV3' test.out

#- 199 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'm6CPhYSSb72crlPS' \
    --body '{"permissions": [{"action": 39, "resource": "bxXn89umqzEm5QAn", "schedAction": 7, "schedCron": "7IzmxUo5ZKtOe384", "schedRange": ["x4yWmyOMXmKd7FE6", "9VY5eKWiQCYMRyDn", "5i3RZItresxLSfjZ"]}, {"action": 22, "resource": "TBrhzP5JxVzEtR5M", "schedAction": 68, "schedCron": "55ppYbHWFL7pkxdh", "schedRange": ["Vp22q6NLGqIGUPHI", "A6CBdnimp21KAgVz", "aVhQaGEAEMHCrpU8"]}, {"action": 61, "resource": "AyLz9c3Ncc83L56I", "schedAction": 83, "schedCron": "xokRbLIXtHA89uQ5", "schedRange": ["ScHD462OgGe7t5l0", "acZQwMxhU5KRVuCr", "EQuHdx2OqrVDxbOT"]}]}' \
    > test.out 2>&1
eval_tap $? 199 'AdminAddRolePermissionsV3' test.out

#- 200 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'hMZvJ2Hrr63KbYxc' \
    --body '["hQTdZVNq1XBXhP4k", "PZAIZkVhWxqnIHBW", "pEsrUDeHMrKu4g9w"]' \
    > test.out 2>&1
eval_tap $? 200 'AdminDeleteRolePermissionsV3' test.out

#- 201 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '23' \
    --resource 'ynvlFdLQ7n8QBiFS' \
    --roleId 'SOJVwW7XPrY7iHiV' \
    > test.out 2>&1
eval_tap $? 201 'AdminDeleteRolePermissionV3' test.out

#- 202 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 202 'AdminGetMyUserV3' test.out

#- 203 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'QEjScQtTOJ5ZHUtW' \
    --extendExp 'true' \
    --redirectUri 'HrvnG8wLl4uX0uuB' \
    --password 'UsHGBJ78ahrna2hX' \
    --requestId 'yVHMct54hqZ65pAZ' \
    --userName '077eVswCNCT4L8wg' \
    > test.out 2>&1
eval_tap $? 203 'UserAuthenticationV3' test.out

#- 204 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'gvlUAC5ogvuFaJH2' \
    --linkingToken 'm7qs68OKj8uw3u1j' \
    --password 'qul1MEFWYFLWS3Y7' \
    --username 'cQM9ooS1gFDBktuG' \
    > test.out 2>&1
eval_tap $? 204 'AuthenticationWithPlatformLinkV3' test.out

#- 205 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'tNOhYmuqc0kfqmHq' \
    --extendExp 'false' \
    --linkingToken 'HoR4v4zD2u4lLWOe' \
    > test.out 2>&1
eval_tap $? 205 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 206 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'RORiU6wDoZsqDeAl' \
    > test.out 2>&1
eval_tap $? 206 'RequestOneTimeLinkingCodeV3' test.out

#- 207 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'Kj6bYUNOY38N1zS7' \
    > test.out 2>&1
eval_tap $? 207 'ValidateOneTimeLinkingCodeV3' test.out

#- 208 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData '3ZoY0vozrPhOKUQz' \
    --isTransient 'false' \
    --clientId '0Hly0M4yhg0FBHV1' \
    --oneTimeLinkCode '5lw2iPpBRSahYHuC' \
    > test.out 2>&1
eval_tap $? 208 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 209 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 209 'GetCountryLocationV3' test.out

#- 210 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 210 'Logout' test.out

#- 211 RequestGameTokenCodeResponseV3
samples/cli/sample-apps Iam requestGameTokenCodeResponseV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'pEySSIe5yQa9vrok' \
    > test.out 2>&1
eval_tap $? 211 'RequestGameTokenCodeResponseV3' test.out

#- 212 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZahGkUfPieMqtaxy' \
    --userId 'JyU6LMGw1fusVzlV' \
    > test.out 2>&1
eval_tap $? 212 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 213 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Nz0Bz51ZAcNbqryy' \
    > test.out 2>&1
eval_tap $? 213 'RevokeUserV3' test.out

#- 214 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'xPEb5V1BSTOSXbJe' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'Tkk0nx8g8KQXAhIR' \
    --redirectUri 'xHzg1sSlsHs7kXjA' \
    --scope 'V51qAJjG1CphtcjG' \
    --state 'O30YJgvKYFaOkaC9' \
    --targetAuthPage 'e1GwWLQj9WssLeBU' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'YtKSFIil6FnifTre' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 214 'AuthorizeV3' test.out

#- 215 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'y8uLYb9unAAX97bL' \
    > test.out 2>&1
eval_tap $? 215 'TokenIntrospectionV3' test.out

#- 216 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 216 'GetJWKSV3' test.out

#- 217 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'lvXONXNJWHjIgttp' \
    --factor 'YbXfySa3bEnZQLrS' \
    --mfaToken 'RrylIDc7GdZBDjWd' \
    > test.out 2>&1
eval_tap $? 217 'SendMFAAuthenticationCode' test.out

#- 218 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 's1F6GQjnIFdUyww3' \
    --mfaToken 'AnOSvmI4xXDFoE6x' \
    > test.out 2>&1
eval_tap $? 218 'Change2faMethod' test.out

#- 219 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'LAWegE4U9CIjbUtj' \
    --factor 'qjIEYPu7vGUlZsul' \
    --mfaToken 'MB283hMiU7qhHIyN' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 219 'Verify2faCode' test.out

#- 220 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ITrR9joO1r3BECkq' \
    --userId 'LlddIfNlaBw2dm38' \
    > test.out 2>&1
eval_tap $? 220 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 221 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'awGQ5jZwqR7zyteC' \
    --clientId 'EpgvX57V0TbtREkE' \
    --redirectUri 'N1OzsSezx811g2Xa' \
    --requestId 'tmwningI5RHteDqb' \
    > test.out 2>&1
eval_tap $? 221 'AuthCodeRequestV3' test.out

#- 222 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'LD0iTseVpIhUkcYT' \
    --additionalData 'Mo61ArjpeJ0VSC0e' \
    --clientId '2PIPankI3vw8zWqR' \
    --createHeadless 'false' \
    --deviceId 'P1JoMO88DY9HdivV' \
    --macAddress '3xhFYTm8ZewI2L4z' \
    --platformToken 'K0RNOOS9AQkN4Lot' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 222 'PlatformTokenGrantV3' test.out

#- 223 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 223 'GetRevocationListV3' test.out

#- 224 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'AVihKKTztTyy3IZT' \
    > test.out 2>&1
eval_tap $? 224 'TokenRevocationV3' test.out

#- 225 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'do29J0uBLslyL1X6' \
    --clientId 'nYRQEFr9FkLIvLYw' \
    --code '5EXodx6PMfygaYif' \
    --codeVerifier 'EEdXS9JnSkXEhoU8' \
    --extendExp 'false' \
    --password 'EQO46jQ6bHgzvYSq' \
    --redirectUri '17LAwsGt1Hg1Uqhe' \
    --refreshToken 'FaNY15WR4w9ugiQf' \
    --username 'rCuRNQoyGI8Eh7yK' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 225 'TokenGrantV3' test.out

#- 226 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'JVqnNC45SltIMif2' \
    > test.out 2>&1
eval_tap $? 226 'VerifyTokenV3' test.out

#- 227 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId '3V2YUj5r4TJZ0rlw' \
    --code 'xF769vLG6mgTqr2H' \
    --error 'pkjVoj4OYrWngSAd' \
    --openidAssocHandle 'Pj54Wq5kAFj7Gw0s' \
    --openidClaimedId '3zAnPY92qJaN1S3P' \
    --openidIdentity 'mWNO1tKpYVCdjPGZ' \
    --openidMode '1EBtkXmoP4SEyHVL' \
    --openidNs 'V8Et8vRUYPYKwmrx' \
    --openidOpEndpoint '1zIxt4KJkGRicH7s' \
    --openidResponseNonce 'qsizLjM88p4EpoaH' \
    --openidReturnTo 'J1Rd52O7xMq83Mii' \
    --openidSig 'PlruenhSazh1YxKY' \
    --openidSigned 'dMbx8WHvoWWZe58R' \
    --state 'oo11DlmQGeDYefwi' \
    > test.out 2>&1
eval_tap $? 227 'PlatformAuthenticationV3' test.out

#- 228 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'apBIGrbOr8X5VCw3' \
    > test.out 2>&1
eval_tap $? 228 'PublicGetInputValidations' test.out

#- 229 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'Qo59bLLt8hTmmB7j' \
    > test.out 2>&1
eval_tap $? 229 'PublicGetInputValidationByField' test.out

#- 230 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'atF7KUggA17Y1C6A' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 230 'PublicGetCountryAgeRestrictionV3' test.out

#- 231 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 231 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 232 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'ipSyr1ISvxqfL6TX' \
    > test.out 2>&1
eval_tap $? 232 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 233 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId '2j9lpwqDkmRQoUeC' \
    --rawPUID 'true' \
    --body '{"platformUserIds": ["lsU9KewjnDTOvHDW", "9fMQO2BwppwtA5co", "EzXEtIg5IJjqcVr9"]}' \
    > test.out 2>&1
eval_tap $? 233 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 234 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZgwcUat4CYRUJEpg' \
    --platformUserId 'ot0PadHc5FHDNoxp' \
    > test.out 2>&1
eval_tap $? 234 'PublicGetUserByPlatformUserIDV3' test.out

#- 235 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'nIWz4rDboqwtNn7Y' \
    > test.out 2>&1
eval_tap $? 235 'PublicGetAsyncStatus' test.out

#- 236 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'gdQEX7MzA3auMu4g' \
    --limit '57' \
    --offset '33' \
    --query 'gqyYfiq81Lnoeg0V' \
    > test.out 2>&1
eval_tap $? 236 'PublicSearchUserV3' test.out

#- 237 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "sZRoe6f66J4sodVt", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "az80CwL0fI0b9gdR", "policyId": "AgBxYNr9k8J5IPv3", "policyVersionId": "eccq3GnQLw7ZC4aH"}, {"isAccepted": true, "localizedPolicyVersionId": "8J65Vn24KJApfpHo", "policyId": "ckXyavTtKYvWlrys", "policyVersionId": "OjXJGO9dufytbCnf"}, {"isAccepted": false, "localizedPolicyVersionId": "bd4yEnux89JAkxI6", "policyId": "wfHKMop8Rw67wK7R", "policyVersionId": "xwXYw4rzTdP6FNlp"}], "authType": "TjZ8JsO1FSOg9jQP", "code": "WsXBMZUrZ7FQTgcI", "country": "0dqRhoDTqvlEnrUt", "dateOfBirth": "ybxr3IyCJFNSKlvp", "displayName": "4wM2I5bglBLg8h76", "emailAddress": "Kcq0Sj05BgFuVYTW", "password": "FzgVhKxNt1fJHjoN", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 237 'PublicCreateUserV3' test.out

#- 238 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'URLU3UqPYDEr4zEX' \
    --query 'VYj2b1JlHUTWgPoj' \
    > test.out 2>&1
eval_tap $? 238 'CheckUserAvailability' test.out

#- 239 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Uhq0yXOMF1LkV0hK", "XMLyAR0sj1koDcNO", "jKrU3z0WBf1MeE16"]}' \
    > test.out 2>&1
eval_tap $? 239 'PublicBulkGetUsers' test.out

#- 240 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "8xVk6RQHeec09VSm", "languageTag": "dMcdvJKPoJOX7YLt"}' \
    > test.out 2>&1
eval_tap $? 240 'PublicSendRegistrationCode' test.out

#- 241 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "1i4dkfTBZpNt3L3R", "emailAddress": "ST1M9nprdZcOk5fs"}' \
    > test.out 2>&1
eval_tap $? 241 'PublicVerifyRegistrationCode' test.out

#- 242 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "wMiRm2c6gJRueUEX", "languageTag": "FV6kRNm4zl2iBSiG"}' \
    > test.out 2>&1
eval_tap $? 242 'PublicForgotPasswordV3' test.out

#- 243 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'sPiXqV8ZIA5ItSSU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 243 'GetAdminInvitationV3' test.out

#- 244 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'S2XBHucaiOXiXHUQ' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "xagG1Z4YjLr5eIuP", "policyId": "qK6edjRhCd810YJn", "policyVersionId": "QX76jjKo6rAHp2eb"}, {"isAccepted": false, "localizedPolicyVersionId": "cRFyp0g7HjlMhz7O", "policyId": "bWFkJAWwleKAYmx7", "policyVersionId": "52gWaiOlhBiWnx3n"}, {"isAccepted": true, "localizedPolicyVersionId": "kpyRnU9NRdfajH25", "policyId": "7um3eLNHMoThaAmr", "policyVersionId": "RdVDmUWEvpSsd0rw"}], "authType": "EMAILPASSWD", "country": "WKrK32pYleD2CBmn", "dateOfBirth": "4SnccKv5kJxiXoqz", "displayName": "X0WxVjxbtGSep2ze", "password": "vciQ3bTkeUzlwG9A", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 244 'CreateUserFromInvitationV3' test.out

#- 245 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "4qXpUkOcl92H59iI", "country": "6ZnLNaKYBIxuxO2g", "dateOfBirth": "oIQeLSO3bpeOG7eU", "displayName": "pvoPufdOZ0LzMjEp", "languageTag": "z8ZqXmpsJc8vV8oO", "userName": "EFRBdhA9OZ5JMVN9"}' \
    > test.out 2>&1
eval_tap $? 245 'UpdateUserV3' test.out

#- 246 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "R2i1VB6mBSU03Dpl", "country": "rcQAfMvhvBh7ginl", "dateOfBirth": "anrFBTixpPm58Y24", "displayName": "gqjDp4aY4ve0KuNE", "languageTag": "x6kEtvVCDlxgCBZ2", "userName": "OD9tVAGPk5Mx9MCu"}' \
    > test.out 2>&1
eval_tap $? 246 'PublicPartialUpdateUserV3' test.out

#- 247 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "JOmLP5bMrpf945Xj", "emailAddress": "fXdfGdI0ziwJfjnI", "languageTag": "Sgnf2oBQJvSNHGqN"}' \
    > test.out 2>&1
eval_tap $? 247 'PublicSendVerificationCodeV3' test.out

#- 248 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "I26MLz35A5ELie7J", "contactType": "JuxKeqtKbLyBITHR", "languageTag": "1LMS8ZW0jzmWObrT", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 248 'PublicUserVerificationV3' test.out

#- 249 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "EzAaIaChdUmTT2WH", "country": "ZylRIKMe40AR61Hi", "dateOfBirth": "eAAPmG8agUD5qX0k", "displayName": "vqB3P6CmjpogwsRk", "emailAddress": "PyBzUNIcSvv3xxVL", "password": "h6vZXEmKurQURQI2", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 249 'PublicUpgradeHeadlessAccountV3' test.out

#- 250 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "Vsk8L0Hpj3UdJJJT", "password": "hu1Z8FEyZjpSlTGW"}' \
    > test.out 2>&1
eval_tap $? 250 'PublicVerifyHeadlessAccountV3' test.out

#- 251 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "zPboLrLjXWaTuAFi", "newPassword": "QB30sAIncx4VebAA", "oldPassword": "OIA5aWTAmgyTcdw1"}' \
    > test.out 2>&1
eval_tap $? 251 'PublicUpdatePasswordV3' test.out

#- 252 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'Kat3mMK33yHJBX6j' \
    > test.out 2>&1
eval_tap $? 252 'PublicCreateJusticeUser' test.out

#- 253 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'qLzW5l9kTl8P1az9' \
    --redirectUri 'AyVgIpfW2NBZy5XP' \
    --ticket 'OqKwhhrb7Y5KOKRj' \
    > test.out 2>&1
eval_tap $? 253 'PublicPlatformLinkV3' test.out

#- 254 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'wTW2iAEPd5x3U76Q' \
    --body '{"platformNamespace": "4yGGIVJGslPEL61u"}' \
    > test.out 2>&1
eval_tap $? 254 'PublicPlatformUnlinkV3' test.out

#- 255 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'nSofUk74FmZT5U5d' \
    > test.out 2>&1
eval_tap $? 255 'PublicPlatformUnlinkAllV3' test.out

#- 256 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '2YT95gQV0r5iDXY5' \
    --ticket 'UdCGDWOorI5Ie2oF' \
    > test.out 2>&1
eval_tap $? 256 'PublicForcePlatformLinkV3' test.out

#- 257 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'SaZIcwim2N8Mv3N1' \
    --clientId 'LnAx8AyRVbcD6vp8' \
    --redirectUri 'xschH4HawX0YLHnI' \
    > test.out 2>&1
eval_tap $? 257 'PublicWebLinkPlatform' test.out

#- 258 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'LG3SqMiXBe7uWAxi' \
    --code 'V20rNGSrHwPsTNH8' \
    --state 'HzyJGnsylIMZEbvt' \
    > test.out 2>&1
eval_tap $? 258 'PublicWebLinkPlatformEstablish' test.out

#- 259 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "gwKgz27QrwQ4Eh2x", "emailAddress": "bJ1HTANmJgbIqxN8", "newPassword": "XUMugZHo0XA2Y94d"}' \
    > test.out 2>&1
eval_tap $? 259 'ResetPasswordV3' test.out

#- 260 PublicGetUserByUserIdV3
eval_tap 0 260 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 261 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'XlkP3vusbFVHUJX1' \
    --activeOnly 'true' \
    --after 'qAsFAR7UJEBSaP7S' \
    --before 'hKPQvCYLf3HiryO0' \
    --limit '54' \
    > test.out 2>&1
eval_tap $? 261 'PublicGetUserBanHistoryV3' test.out

#- 262 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'IfnlYDle1oa4LMEY' \
    > test.out 2>&1
eval_tap $? 262 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 263 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'yf0yAzC2nzVTFub2' \
    > test.out 2>&1
eval_tap $? 263 'PublicGetUserInformationV3' test.out

#- 264 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'viiI4CAupTlN87UK' \
    --after '0.4373131655877307' \
    --before '0.5263074156583666' \
    --limit '51' \
    > test.out 2>&1
eval_tap $? 264 'PublicGetUserLoginHistoriesV3' test.out

#- 265 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '5cHuSWNltakzo88Y' \
    --after 'aekLmH42pu6ZZIPl' \
    --before 'zOzyTkjijpOTrHD4' \
    --limit '84' \
    > test.out 2>&1
eval_tap $? 265 'PublicGetUserPlatformAccountsV3' test.out

#- 266 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PMy5lRPmJGDSZzFj' \
    > test.out 2>&1
eval_tap $? 266 'PublicListJusticePlatformAccountsV3' test.out

#- 267 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'HOVT3f8Rx9WnJ5fd' \
    --body '{"platformId": "HY3anzfI8HCbLme7", "platformUserId": "KaiiGbjecOhfGEKn"}' \
    > test.out 2>&1
eval_tap $? 267 'PublicLinkPlatformAccount' test.out

#- 268 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId '51DA3XjIxKRbYXDb' \
    --body '{"chosenNamespaces": ["Y6nTXSjIBO12m3rW", "NN4A2NEtJVESt1Yl", "OA8y0LIU6gyVfesw"], "requestId": "FWdyB5AhcOJodV9u"}' \
    > test.out 2>&1
eval_tap $? 268 'PublicForceLinkPlatformWithProgression' test.out

#- 269 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '5f6ZpsXmyLa5u3GY' \
    > test.out 2>&1
eval_tap $? 269 'PublicGetPublisherUserV3' test.out

#- 270 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WrXXc5gkQuM1DQyE' \
    --password '7wP7kIz3iA2xuhBv' \
    > test.out 2>&1
eval_tap $? 270 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 271 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'HPoA69HeN9uwUoJf' \
    --before 'xb13YtOn1MEtYQYF' \
    --isWildcard 'true' \
    --limit '82' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetRolesV3' test.out

#- 272 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'WAbP47mf7Gm9lhL7' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetRoleV3' test.out

#- 273 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 273 'PublicGetMyUserV3' test.out

#- 274 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'mvobZgXCeZ5R1Qcw' \
    > test.out 2>&1
eval_tap $? 274 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 275 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["PnDBoWpD1kTrTiAc", "uDJAgO35jG448bdx", "TeefcISZj7nQ9u6u"], "oneTimeLinkCode": "2cXJgD8yhprNMWeQ"}' \
    > test.out 2>&1
eval_tap $? 275 'LinkHeadlessAccountToMyAccountV3' test.out

#- 276 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "s93arPy4ZfwPtOfu"}' \
    > test.out 2>&1
eval_tap $? 276 'PublicSendVerificationLinkV3' test.out

#- 277 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'ZznrzTytLbfzm26G' \
    > test.out 2>&1
eval_tap $? 277 'PublicVerifyUserByLinkV3' test.out

#- 278 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'fEXHiwv94A3oBexu' \
    --code 'Yqj1dLvBDziuNsOd' \
    --error 'JUhBQUFEfx0d6WoO' \
    --state 'pQnhJk10MT1tdyO4' \
    > test.out 2>&1
eval_tap $? 278 'PlatformAuthenticateSAMLV3Handler' test.out

#- 279 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'AmFkdiJRTwd2w8L2' \
    --payload 'rEAVFsTMihgaYC7a' \
    > test.out 2>&1
eval_tap $? 279 'LoginSSOClient' test.out

#- 280 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId '0JwqexxjwuG1IU4F' \
    > test.out 2>&1
eval_tap $? 280 'LogoutSSOClient' test.out

#- 281 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --additionalData 'NzsKNqLlopZoXicF' \
    --code '6OCaz1mZUlHR7vH9' \
    > test.out 2>&1
eval_tap $? 281 'RequestGameTokenResponseV3' test.out

#- 282 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'NpIBkPiFx6htKY8l' \
    > test.out 2>&1
eval_tap $? 282 'AdminGetDevicesByUserV4' test.out

#- 283 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'i33fYHfuM16BODQk' \
    --endDate 'JstFt4ASHqxTpWNf' \
    --limit '2' \
    --offset '46' \
    --startDate 'JdeWBo2alFg2L5Py' \
    > test.out 2>&1
eval_tap $? 283 'AdminGetBannedDevicesV4' test.out

#- 284 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Tk1a35upUtM0zYjc' \
    > test.out 2>&1
eval_tap $? 284 'AdminGetUserDeviceBansV4' test.out

#- 285 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "oEkm3szUrfSv9CVF", "deviceId": "kBIdfxloZ1lYSnXt", "deviceType": "ZRC1NRGW2DFhKz3P", "enabled": false, "endDate": "IrK3n5q5Uyl9gMWa", "ext": {"3Ypm7sxo2YEEbqEo": {}, "4ltRpmOeHLks5hLv": {}, "vTwG94lEVOjk9vkc": {}}, "reason": "rWUxRalPzGPisUZT"}' \
    > test.out 2>&1
eval_tap $? 285 'AdminBanDeviceV4' test.out

#- 286 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'vTZqurnvk2FyJjr7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 286 'AdminGetDeviceBanV4' test.out

#- 287 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'JHtkvz7AcDPq3iMg' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 287 'AdminUpdateDeviceBanV4' test.out

#- 288 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'LxJ3W4uyATpgLVIV' \
    --startDate 'qcjsApnqLyLkQfCZ' \
    --deviceType 'GR2roMmBbIuEK2sK' \
    > test.out 2>&1
eval_tap $? 288 'AdminGenerateReportV4' test.out

#- 289 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 289 'AdminGetDeviceTypesV4' test.out

#- 290 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'FYaUKPywHwNdaewv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'AdminGetDeviceBansV4' test.out

#- 291 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'cBYQAHhPAEpkBDGm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 291 'AdminDecryptDeviceV4' test.out

#- 292 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId '1YuHxvaLMZLFaDbg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 292 'AdminUnbanDeviceV4' test.out

#- 293 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'NJJb6NIkVLngkY37' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 293 'AdminGetUsersByDeviceV4' test.out

#- 294 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 61}' \
    > test.out 2>&1
eval_tap $? 294 'AdminCreateTestUsersV4' test.out

#- 295 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["yo1Wg98rB262HqZ8", "iDEVmSYxCX92gUc1", "dlYLHKtjH7ZLr1Yu"]}' \
    > test.out 2>&1
eval_tap $? 295 'AdminBulkCheckValidUserIDV4' test.out

#- 296 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'K3JstLbdVXW4AIjn' \
    --body '{"avatarUrl": "fxYKB7PD8JY8gc4j", "country": "ulH5D7xgsvHLhZIq", "dateOfBirth": "49juDarcw2yYdhc3", "displayName": "YOTP0oihhHCh6eae", "languageTag": "xMWkixsD3EgzYqwI", "userName": "FU1UDCwZPemvVB0f"}' \
    > test.out 2>&1
eval_tap $? 296 'AdminUpdateUserV4' test.out

#- 297 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'PdmKnSxbZIozi1WS' \
    --body '{"code": "pnU5AYWt9qKp7br4", "emailAddress": "jeriywyTylXn8vPT"}' \
    > test.out 2>&1
eval_tap $? 297 'AdminUpdateUserEmailAddressV4' test.out

#- 298 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'XTBOfCAlUwIxO1iJ' \
    > test.out 2>&1
eval_tap $? 298 'AdminDisableUserMFAV4' test.out

#- 299 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'aJuHNvZAZwFsVkOC' \
    > test.out 2>&1
eval_tap $? 299 'AdminListUserRolesV4' test.out

#- 300 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '6uLxEaa3uPpPGjPm' \
    --body '{"assignedNamespaces": ["GRrFKk5MtDlHepD7", "UmrARrrlrqtK1QIi", "W7kTBgmowZrYvrr2"], "roleId": "XWFuz7kaozouNFZt"}' \
    > test.out 2>&1
eval_tap $? 300 'AdminUpdateUserRoleV4' test.out

#- 301 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'znBDGRtwwQ506kZx' \
    --body '{"assignedNamespaces": ["nnHiCizVxYC3jzSA", "3mbHgxFNIiGeGWJI", "is4zcaKc6EnBYZ8F"], "roleId": "LXTEro1TsN54C8cg"}' \
    > test.out 2>&1
eval_tap $? 301 'AdminAddUserRoleV4' test.out

#- 302 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '5YuEnSRZwzgfwn7X' \
    --body '{"assignedNamespaces": ["0LARSox2xBoyd573", "Crrtfvm88T4CiMQl", "XULVC2BpqsgFuLsn"], "roleId": "bTDYYTeQJCUvdCVd"}' \
    > test.out 2>&1
eval_tap $? 302 'AdminRemoveUserRoleV4' test.out

#- 303 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'false' \
    --limit '68' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 303 'AdminGetRolesV4' test.out

#- 304 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "QGwueb27dJ2AzPXh"}' \
    > test.out 2>&1
eval_tap $? 304 'AdminCreateRoleV4' test.out

#- 305 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 're48kf4aKtH5GLOB' \
    > test.out 2>&1
eval_tap $? 305 'AdminGetRoleV4' test.out

#- 306 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'k7ZAj0cAh9sP5ltQ' \
    > test.out 2>&1
eval_tap $? 306 'AdminDeleteRoleV4' test.out

#- 307 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'BKaSnAotaFitGwrn' \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "RxPmk0ztgaCkUSgp"}' \
    > test.out 2>&1
eval_tap $? 307 'AdminUpdateRoleV4' test.out

#- 308 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'HB1y3d6IgyjbiVxr' \
    --body '{"permissions": [{"action": 50, "resource": "xhRaeQ3ZGxnN1Vv3", "schedAction": 41, "schedCron": "uV3dUFpcsIBlqmiz", "schedRange": ["sMOJMpUleza4aBmv", "nPEAjafZN8RRIBuj", "gvTvf4OKT6XLt2OG"]}, {"action": 31, "resource": "YDtoDvdnECYryOLk", "schedAction": 65, "schedCron": "JaH77PByDpDUs59V", "schedRange": ["iFiiZVKXWOSPVeiC", "IgRSyQBWT4cbaBVZ", "x2rDozt07bF2UogW"]}, {"action": 7, "resource": "Nl1oOP7NPYG5hLah", "schedAction": 46, "schedCron": "iVlF8x1bLg6Ue4nD", "schedRange": ["Bra5CKb0ZRGMvrNF", "tAFY7kjnadNj4rzf", "CUhOBIVJCh6RGDyd"]}]}' \
    > test.out 2>&1
eval_tap $? 308 'AdminUpdateRolePermissionsV4' test.out

#- 309 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'TvsyJ8FgIYL6aXHK' \
    --body '{"permissions": [{"action": 3, "resource": "hOZk2Mh72rTSuflM", "schedAction": 32, "schedCron": "VKCOLjXkgsBhafY7", "schedRange": ["1DFkctT70rmOambj", "N3qhWcw48WMUDMr9", "F3WWXp8YtLF7bo0d"]}, {"action": 70, "resource": "oq7WpK1fk7SIkmYU", "schedAction": 48, "schedCron": "1cNwz9O06cP5j6EL", "schedRange": ["YNRd2m3NweHzbCxa", "5NpMG2BdhweGQm3W", "NO96WiQwQaxsvDF3"]}, {"action": 23, "resource": "vEyO6OmKDk9Sg3Lz", "schedAction": 12, "schedCron": "7KRM6RVZqCB2P2bG", "schedRange": ["CdQZugo3XXJc4ftH", "krYfbMlJ0KzKodzb", "iHcgYKrvrKt1IDKx"]}]}' \
    > test.out 2>&1
eval_tap $? 309 'AdminAddRolePermissionsV4' test.out

#- 310 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId '2hCYVyo9gbHTwxUj' \
    --body '["IIv67qFoktJTW8Hf", "CAUNBVVU62NdEHud", "BGwW9GNiTrQLBA83"]' \
    > test.out 2>&1
eval_tap $? 310 'AdminDeleteRolePermissionsV4' test.out

#- 311 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'VWhN8SIyjKmFNiDI' \
    --after '4CgxEMUrbFo7XecL' \
    --before '4wZ4MnmJvjitVuCY' \
    --limit '43' \
    > test.out 2>&1
eval_tap $? 311 'AdminListAssignedUsersV4' test.out

#- 312 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'BRyacuMgiDiNqtN5' \
    --body '{"assignedNamespaces": ["96a0gzlKiY0othX4", "SicxiPEmKOIsscdY", "y8t4vXLjVV5wGoRs"], "namespace": "rC3ocbOcKplkTZbx", "userId": "dV2T4wUDuGYvfyhs"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminAssignUserToRoleV4' test.out

#- 313 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'NpAhcYUzfjl06xB4' \
    --body '{"namespace": "EV3RHmVw3nBcaUl8", "userId": "H3ZycK8iA0Asmyiy"}' \
    > test.out 2>&1
eval_tap $? 313 'AdminRevokeUserFromRoleV4' test.out

#- 314 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["Us0EgPMoqsAnZpmE", "UqfnGiCQ8V6pSgxX", "gNRlAnLT8qoAldGZ"], "emailAddresses": ["Mm8LuV3YbS7UeUiN", "7vcYmblgqxuewmvr", "y2vjfCzr80B6bfEY"], "isAdmin": false, "namespace": "lR7GVbfy3OYqlPy0", "roleId": "Pc7AHCoEEfpo6C2O"}' \
    > test.out 2>&1
eval_tap $? 314 'AdminInviteUserNewV4' test.out

#- 315 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "IUJbh8iRLPcmpICv", "country": "IijFBoSL3ra8Z170", "dateOfBirth": "5MY39xnnV85TkUP7", "displayName": "ivTS07ut1yMeFDIk", "languageTag": "byzVCVJWSmpg2gKY", "userName": "l19fO03C0jb9VgBb"}' \
    > test.out 2>&1
eval_tap $? 315 'AdminUpdateMyUserV4' test.out

#- 316 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 316 'AdminDisableMyAuthenticatorV4' test.out

#- 317 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'zrGbA06JqcA7U5d1' \
    > test.out 2>&1
eval_tap $? 317 'AdminEnableMyAuthenticatorV4' test.out

#- 318 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 318 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 319 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 319 'AdminGetMyBackupCodesV4' test.out

#- 320 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 320 'AdminGenerateMyBackupCodesV4' test.out

#- 321 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 321 'AdminDisableMyBackupCodesV4' test.out

#- 322 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 322 'AdminDownloadMyBackupCodesV4' test.out

#- 323 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 323 'AdminEnableMyBackupCodesV4' test.out

#- 324 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 324 'AdminSendMyMFAEmailCodeV4' test.out

#- 325 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 325 'AdminDisableMyEmailV4' test.out

#- 326 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'b9XFpyL1K5Rgw3lV' \
    > test.out 2>&1
eval_tap $? 326 'AdminEnableMyEmailV4' test.out

#- 327 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 327 'AdminGetMyEnabledFactorsV4' test.out

#- 328 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'fGZuEGg4rzyU94xl' \
    > test.out 2>&1
eval_tap $? 328 'AdminMakeFactorMyDefaultV4' test.out

#- 329 AdminInviteUserV4
eval_tap 0 329 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 330 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "uBwLLMwSBJsbdJAR", "policyId": "S5rp9cOQ9Sgeu8xk", "policyVersionId": "734FDSDLhMOEd4pL"}, {"isAccepted": true, "localizedPolicyVersionId": "mOdegltd2J1GixWa", "policyId": "i7HFmKqZjHsyFd8i", "policyVersionId": "8aYgCJYXLwJTu8yU"}, {"isAccepted": false, "localizedPolicyVersionId": "atltir2Zkoo0hLI7", "policyId": "RX11vceB3jYG92QY", "policyVersionId": "RGLgkZwUmD7Um8yK"}], "authType": "EMAILPASSWD", "country": "V2dwFoS1kUJsEGWW", "dateOfBirth": "sLeGTZ2XKpl4auqy", "displayName": "TZoImv2nMytHmF2L", "emailAddress": "VAfo0C94C1QdyOQE", "password": "X69GCkmLiv4H883T", "passwordMD5Sum": "k3aFl6Y8VntI6JCp", "username": "RAm75dGL8Nhg0yiZ", "verified": true}' \
    > test.out 2>&1
eval_tap $? 330 'PublicCreateTestUserV4' test.out

#- 331 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "dewAmnDPxOdjXIgn", "policyId": "Qs4w5YUFGuKJQc1s", "policyVersionId": "yYdNhQdzFt60iBoS"}, {"isAccepted": true, "localizedPolicyVersionId": "ZWD8RxOE5gGYUQ10", "policyId": "EtpCy3BO0s7w1lWN", "policyVersionId": "Q4pS61mJ1MuPm6hO"}, {"isAccepted": true, "localizedPolicyVersionId": "KzT0xXNNoU9tWuBh", "policyId": "6X8KUZU5RPyJw7CV", "policyVersionId": "e6fOI5TbUNL6CwV1"}], "authType": "EMAILPASSWD", "code": "Ggb9wZ7ufKLx6AEI", "country": "HOZpSMTgxhwkHpRn", "dateOfBirth": "5feFWyP3UiHPYJ55", "displayName": "EMv87P9GWOZJnVxg", "emailAddress": "1xOKU3sJUv5NQT6f", "password": "fyHGBrDXfI8yCEbz", "passwordMD5Sum": "hatm41ou3hBdcOoV", "reachMinimumAge": false, "username": "UvGfB6UUPJDVRYdA"}' \
    > test.out 2>&1
eval_tap $? 331 'PublicCreateUserV4' test.out

#- 332 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'GMlcDqHGdBTtS5lT' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "WA7ar1Pcymm5mrPv", "policyId": "5VPz7URlLmIdIj3h", "policyVersionId": "yFhkQNO4i9yb4pLi"}, {"isAccepted": false, "localizedPolicyVersionId": "nWK6gkuzxeJ74iov", "policyId": "jeOJyVxT9JCuGAm6", "policyVersionId": "yHb9lC5S7Kak9cn1"}, {"isAccepted": false, "localizedPolicyVersionId": "uj1uCWZ873O9Vwys", "policyId": "ktGu64cdpvhgcBro", "policyVersionId": "2TC5IQZSpxQELUZu"}], "authType": "EMAILPASSWD", "country": "p272ppy0VN4bgFfn", "dateOfBirth": "g1kgoQGiZr66qBqx", "displayName": "aR2CqfO5B8UNSmHi", "password": "4XoE5abpXN2StjcI", "reachMinimumAge": false, "username": "GHAlfmhU5edm6NNO"}' \
    > test.out 2>&1
eval_tap $? 332 'CreateUserFromInvitationV4' test.out

#- 333 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "UN4yegLdkqn4UKcl", "country": "4NjwXpYCdkn14Neh", "dateOfBirth": "u0mNFnEztUcQL3hw", "displayName": "AKRHTEMYNoq0wGyf", "languageTag": "t4A0pDFT1y8nZkk4", "userName": "rPmdImuVrcvzbCGU"}' \
    > test.out 2>&1
eval_tap $? 333 'PublicUpdateUserV4' test.out

#- 334 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "AodXJNw2JLOYcTA7", "emailAddress": "KJkU4eacp7KoSrzL"}' \
    > test.out 2>&1
eval_tap $? 334 'PublicUpdateUserEmailAddressV4' test.out

#- 335 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "R6gApPbIALn2gNWV", "country": "0RqjqV18jFmRAAVO", "dateOfBirth": "I7C37KIBIYfUTXTK", "displayName": "RlSHX6dpGY5lXNzO", "emailAddress": "6lrh5tvTqig18Lh6", "password": "4febnyM6cnSE2Rs7", "reachMinimumAge": false, "username": "p2iNMZHEJaTQeEp3", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 335 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 336 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "LOI9BjW5A5eWc2e2", "password": "V693eXH0fA3C6ELm", "username": "DySnVa4UEHrSFzge"}' \
    > test.out 2>&1
eval_tap $? 336 'PublicUpgradeHeadlessAccountV4' test.out

#- 337 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 337 'PublicDisableMyAuthenticatorV4' test.out

#- 338 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'XyNRv2lgOobeIiAF' \
    > test.out 2>&1
eval_tap $? 338 'PublicEnableMyAuthenticatorV4' test.out

#- 339 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 339 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 340 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 340 'PublicGetMyBackupCodesV4' test.out

#- 341 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 341 'PublicGenerateMyBackupCodesV4' test.out

#- 342 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'PublicDisableMyBackupCodesV4' test.out

#- 343 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 343 'PublicDownloadMyBackupCodesV4' test.out

#- 344 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 344 'PublicEnableMyBackupCodesV4' test.out

#- 345 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 345 'PublicRemoveTrustedDeviceV4' test.out

#- 346 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 346 'PublicSendMyMFAEmailCodeV4' test.out

#- 347 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 347 'PublicDisableMyEmailV4' test.out

#- 348 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code '08sUfOErjhH2TpX5' \
    > test.out 2>&1
eval_tap $? 348 'PublicEnableMyEmailV4' test.out

#- 349 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 349 'PublicGetMyEnabledFactorsV4' test.out

#- 350 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'K4xQix0ZyuujLzpx' \
    > test.out 2>&1
eval_tap $? 350 'PublicMakeFactorMyDefaultV4' test.out

#- 351 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"emailAddress": "LFKhS8SReDtuKZal", "namespace": "89wBXF2mA2zDgw4W", "namespaceDisplayName": "dvKPRCaSGtZiPajS"}' \
    > test.out 2>&1
eval_tap $? 351 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE