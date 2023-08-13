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
echo "1..353"

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
    --body '[{"field": "ddSompYV01zQAbQ6", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["UsPXJMCL2RiYmvRr", "nl6YNVySv9tT1HXs", "5uMhBwGUt1b0so2k"], "preferRegex": false, "regex": "BSEcEClPeWFJXP6N"}, "blockedWord": ["Wc6kiQnJOMiC1pHk", "OMVnvs5XQrOguMPq", "NwB72aXRbgsq3hUV"], "description": [{"language": "gT5lBcDHmKJGtivZ", "message": ["0oMGsIUgtPTbTk4B", "SUuaUyXrPAoR5pUi", "XRXQjMSTzTNT55Eo"]}, {"language": "UnMUOHxugLCTjRGN", "message": ["EepvBhRAKsVhHOyS", "7g2fLEVEEGBChF6C", "4qaQ5j5UDX8tmCqJ"]}, {"language": "Qx23NytR6lzwF52Y", "message": ["rHini5k6ac5d0M42", "1pJS5jDQ6VlWN88Y", "jTKFgiInBJdv9Vri"]}], "isCustomRegex": false, "letterCase": "FhB3t46iteyON9DI", "maxLength": 53, "maxRepeatingAlphaNum": 40, "maxRepeatingSpecialCharacter": 70, "minCharType": 76, "minLength": 66, "regex": "xvvGR5gaxAX4Dede", "specialCharacterLocation": "W3QOuFAoxNgYYHMn", "specialCharacters": ["fWrIS2zw3WI96U7A", "KLm0EV6hkQD7Eqph", "ZqWl198279DJCBEt"]}}, {"field": "7QQnB5ptQjh7hMY2", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["nWpTE5lsmdMbf8Ez", "Vrj5NKRxPEKPkGBZ", "Pf0WU8v4qeOeXHMC"], "preferRegex": true, "regex": "Sl4n8VXqD7AORbP0"}, "blockedWord": ["MA4KSZZpEHzQq85W", "PsqOrAg81TcXKzwW", "KXY214qyKqWphj41"], "description": [{"language": "nKaDAXoMo1U1at4R", "message": ["iX5s70g83GrjPrLo", "2dzHjIlphYEd32ek", "9DK1aNVotHM7wI4x"]}, {"language": "1E9LQ9id5XI326pV", "message": ["VRgP6f8irYmQwNAQ", "foTfLUnLebBYpuq0", "odju2k2UbntK8Di8"]}, {"language": "ogc5Iq7pIASf8w8s", "message": ["KcUBuG4dzhBUE5kJ", "q4bvr0mUgiaATsFL", "Qw7uCbf8EydlL7ry"]}], "isCustomRegex": true, "letterCase": "XKf7zGvqpi03dWON", "maxLength": 74, "maxRepeatingAlphaNum": 38, "maxRepeatingSpecialCharacter": 59, "minCharType": 49, "minLength": 99, "regex": "4HgRrVaErC4Zrw43", "specialCharacterLocation": "Ta6ZKdNLg5uaD9Bl", "specialCharacters": ["2XCytMZmeqtcBw9e", "vnwWYXZhYC9ZXBKI", "PlHZCfRTAKPsjdmX"]}}, {"field": "s86oun7oC2bAfIUG", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["uaCZ0om0NDOIKS1a", "lNFJG6a1QhXG06Gh", "eHuNNi6ZqAfeYbN4"], "preferRegex": false, "regex": "Cb683cvVa8XnyIzi"}, "blockedWord": ["eae2KVvvBs0hjgGV", "HfWU5Wy4o3WPbxAS", "9rNc7G1d73SX63tB"], "description": [{"language": "BWgBuOLZuTCp2w4f", "message": ["Cx2hrdzsF2uAnLCk", "vG4P9s2xYrxPswJt", "h4wysPE7OvEl4VdO"]}, {"language": "BvdJhVp9iSvqGjkR", "message": ["lTEgs6vpdvYUIFuO", "rif5PPXmqxietwWW", "o2nCOFYRHhaf0bpm"]}, {"language": "ewaEVZepHXFO9DN4", "message": ["w4WZaskUoJJVfe7M", "5PdwwWxF7aZnL1Or", "ZF9ZynFtTgmgdrQm"]}], "isCustomRegex": false, "letterCase": "VMkY0UuN7vq317w9", "maxLength": 98, "maxRepeatingAlphaNum": 82, "maxRepeatingSpecialCharacter": 35, "minCharType": 52, "minLength": 81, "regex": "4VYsVjPICKG24CwW", "specialCharacterLocation": "UareWDUfhSE97qNC", "specialCharacters": ["h2HssK6WI7LX3gDH", "1xvOo0ssBGznJVA8", "OW0OqTaXsuvsrKcc"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'N6PwhOuqwUQjXjZP' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after '6BTfUpHGv1ltHgEj' \
    --before 'YH1mIfYxU293jqZN' \
    --limit '24' \
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
    --body '{"ageRestriction": 20, "enable": false}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'Qz0hf1hJyaQOwdZ9' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 10}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType '73cu5lPghqFaVSJN' \
    --limit '21' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "iP1jLAdlDsJBib32", "comment": "tU87JglXP1PjaOaM", "endDate": "wfkDK0mJQ8EuN144", "reason": "yF5bAAoNNyL2fN2f", "skipNotif": false, "userIds": ["ACrVdvS7lR5x5Xhs", "1toqm3C8LV1dQi9V", "LE5G0I1Mb9wWpFKo"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "2dXZL4Bk4hCalOCd", "userId": "TdiZ3KYw3D0v7fXe"}, {"banId": "YVK4BjhxIXzd0vNc", "userId": "nREy6UYivsSlw8ws"}, {"banId": "UuhY9KPldmSh2XrR", "userId": "UzEgJTb3c89FHmOY"}]}' \
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
    --clientId 'xBoxRjNDeSakkiTj' \
    --clientName 'U2LZtaFXpWvq0ao6' \
    --clientType '7yoJBoCDVJJF1xpc' \
    --limit '94' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["oWSkzQbq0uq4SipH", "abUQKbgiuBk00S0q", "oskgXPmy35TVCeal"], "baseUri": "jIv4Eg0Vpn2DAnJb", "clientId": "yPFGBJ7rclHiTvgf", "clientName": "BvDnYcV3Q1WGkDPG", "clientPermissions": [{"action": 100, "resource": "PRlmo3igVPJg6Yi7", "schedAction": 26, "schedCron": "kPZs4sb0h58vuEdc", "schedRange": ["K1T2WEpHnxGjoyBB", "IYnouf2rk5MEzVm7", "9Yvs5AQNMOTL4KDC"]}, {"action": 12, "resource": "yfc0LWnujCROlnzk", "schedAction": 4, "schedCron": "SG925yxbiTOksF1w", "schedRange": ["Gf6Ssi1spElRRdWb", "hAxsukx0Jbvn4u3T", "LxjIpeqofgfd57Lr"]}, {"action": 30, "resource": "2ldpBrLsMzZQYO2H", "schedAction": 96, "schedCron": "GUehHdtzjJqzbwvt", "schedRange": ["GfFFptJHFOqlvr6r", "SLTnA41fcX7XkSBk", "eYlqWTmYRdtycNrN"]}], "clientPlatform": "rYX7pvZqvyaA2KXo", "deletable": false, "description": "roOqK7ZIcYt2UeeY", "namespace": "GmDs0yIl9cc0VWhu", "oauthAccessTokenExpiration": 33, "oauthAccessTokenExpirationTimeUnit": "UUNWNE7HgeE5xNBX", "oauthClientType": "yExy6AHn526cEWUC", "oauthRefreshTokenExpiration": 87, "oauthRefreshTokenExpirationTimeUnit": "5olshMsW5rSvWluM", "parentNamespace": "CboSfi0wBmYAZuaZ", "redirectUri": "ZZOxKQrk0Ys7Lyqz", "scopes": ["NquUfYSgGpVnfUWM", "Ve2auZlSHYPRQv7Y", "CCuSJlKrOM6AR4ln"], "secret": "9I5JROiiPw1ouUm4", "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'KVCqMKxTi9TcHJUm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'V6tBefac3tasAvPN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'cOGUoSgtc3c8c4Ku' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["6kaBHpBuf1MtoDOP", "QuLGmo5JCgg3wOCl", "pWLK5skHkVmfMoya"], "baseUri": "4taXJMpmzu24ydlx", "clientName": "AXx64a7KhL7lp7UK", "clientPermissions": [{"action": 32, "resource": "6YaLHRwbJHFvp0th", "schedAction": 86, "schedCron": "xrx1Xm42d9UsXsVu", "schedRange": ["oSdfFzBUW9w6h3Tr", "fvqpQOSTFuWDxzig", "1eJ04zzHKXKJLzxA"]}, {"action": 33, "resource": "QsOdo8NK9uf8SUTf", "schedAction": 54, "schedCron": "FHC7X4H4LTK9hdVq", "schedRange": ["nLuuigVyTvGzn9jg", "p5MNiyCMU32ssQqL", "nWMWfHWRzDRhPsrO"]}, {"action": 68, "resource": "jNU1GlZIIHZQiC1s", "schedAction": 88, "schedCron": "HZjRxYmjZjKFj9Uh", "schedRange": ["rsKUpruVI35c3uZ6", "pqzjCbIwF2MJHnQ5", "E6wsBkyJJQbDIeKV"]}], "clientPlatform": "3KBIGG4CtJBAby7Q", "deletable": false, "description": "WrEBQ3KVsmsYyTGb", "namespace": "tG68kmSt32rnxhsf", "oauthAccessTokenExpiration": 59, "oauthAccessTokenExpirationTimeUnit": "7ipp8YfdYxNEwTfM", "oauthRefreshTokenExpiration": 70, "oauthRefreshTokenExpirationTimeUnit": "cM8t1B0hqYJ3K2lT", "redirectUri": "jM7MIw4ZNkZPJ0qK", "scopes": ["zgzrjdVw8ApxOFvS", "Qrt57r59bhk2n6fh", "ojzSudWCpcbOKa7J"], "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'lq5VLvBVMrGu07Vl' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 12, "resource": "SpaGLK3LxaqgFbRr"}, {"action": 46, "resource": "LJ4xTkbZJFwnpFNJ"}, {"action": 5, "resource": "IioihHxPFTyFktM4"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'Axk3YYvPZVsVh7E5' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 46, "resource": "6SudV4M4QHYupWlJ"}, {"action": 35, "resource": "ld6r15SlFu5ChjAm"}, {"action": 62, "resource": "CyzLjhFrgqzRp7wf"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '30' \
    --clientId 'Mhf6GlQY2n2llQgC' \
    --namespace $AB_NAMESPACE \
    --resource 'pv6FBuYYut9Ekcch' \
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
    --limit '65' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 130 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 131 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'JfhWqJAZmPbkHqsn' \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'x0iITmK9Z75dT4kC' \
    --body '{"ACSURL": "VFb4irjDreoJZtOP", "AWSCognitoRegion": "CtpAUAJAd76CbJte", "AWSCognitoUserPool": "osEFJfWG28Eadp2b", "AllowedClients": ["EL5p0Ia2gODlx0DY", "kO6WHJc5L5LneLVb", "CitSDnKZHstWbCyv"], "AppId": "AxYzbZ8b1cgdUpxX", "AuthorizationEndpoint": "HPdEIjmoVUrnjcY7", "ClientId": "kxWMEbHAgUKhSEHa", "Environment": "VN5Ccs5OBz3tdIdD", "FederationMetadataURL": "NmMtMW3VQklJ0nbw", "GenericOauthFlow": true, "IsActive": false, "Issuer": "toYyaBNfwtFQVerc", "JWKSEndpoint": "AHqse6do4w584QT2", "KeyID": "Sm0IdGTo6dDpFle8", "NetflixCertificates": {"encryptedPrivateKey": "4LcR3vjrFcC8uB9Q", "encryptedPrivateKeyName": "5N8HvLvlSjNPn0EN", "publicCertificate": "CLKFInBbo4wd7wZ0", "publicCertificateName": "NP7h6xiVbHCmqyqZ", "rootCertificate": "lvdyVrMLzoRIjDlM", "rootCertificateName": "pytKTSKj0LLpyPT4"}, "OrganizationId": "UpVg4n9fLQP4nhvG", "PlatformName": "HFvckmAGKCqcxvIU", "RedirectUri": "pPIJRKnTokgu8Kgh", "RegisteredDomains": [{"affectedClientIDs": ["oRjFVY4HXubxxTz3", "kbKHlaeMdhC0aiel", "UJMtWUWwJsa3DHE5"], "domain": "C9fznuu4Py27b5L3", "namespaces": ["pNujKbnGPiJi1CKq", "V7nYej5WRlugnmvn", "1fMy2Qa1WCOeNrWO"], "roleId": "SYmEIaX8j1JX80a1"}, {"affectedClientIDs": ["VVmGeEHNjYWc5i2Z", "lkZT1i7jwdicbGNf", "sSx9a1QAPL2G7TOX"], "domain": "hRbITU7et45PLmbV", "namespaces": ["ug3jqvCrxoAG4uWm", "1aky4diGsuHKV4qv", "aSZHt2jTXUdNwaYN"], "roleId": "K9jAVf0smwG1YihB"}, {"affectedClientIDs": ["8aYrFMngMBxqNHAE", "0c21HwtXVO19aQft", "dtzpcAgW1yljz0ar"], "domain": "T2c99xRUMHfIUCrS", "namespaces": ["81QHpsBYCPjsjw52", "bzbJTECDDbsMLAzj", "V4qUKpGBt5rUHOxK"], "roleId": "7VzqcK5QKUa35qFQ"}], "Secret": "flc0hHfAuOWFtUJP", "TeamID": "cUQKP7JmoCtc1QgB", "TokenAuthenticationType": "BFF1ewqoz55kgOKT", "TokenClaimsMapping": {"MAFOEF5FuunwEFrY": "6U4QF49wk4tLfK2N", "xBwq0wxjfk67o8iY": "Q9vxTQfpifyyWAvX", "AqyMSlnDZ0Q8yWnq": "hiSKM8OulClkt6ic"}, "TokenEndpoint": "syvHZGTmxwZjuMni", "UserInfoEndpoint": "wbKem4lYrkQgtcPW", "UserInfoHTTPMethod": "OhLsGiHFm3pGcbJD", "scopes": ["Xe28MsMhWj5llGYT", "v5KAr1XameUdDqGJ", "9khnA8IuQhmnh3qm"]}' \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 't0G0hQgxr8jHGAUT' \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'nVESDuPEPClqCqCD' \
    --body '{"ACSURL": "4d8JNBJYT7ATW6AN", "AWSCognitoRegion": "hq67jCrJGWBA4Ewx", "AWSCognitoUserPool": "npZFCdWgpoRCLlEK", "AllowedClients": ["rk8UtwWw9AFozQL9", "fxAgCvpJ7MaeIg05", "1KFrPeeHUzDlqcEX"], "AppId": "jEucpcEUc9a7nVxo", "AuthorizationEndpoint": "0zJr1CRUfux3BTrl", "ClientId": "W1DIcs7xNJqpL8F1", "Environment": "MLqbqXszhJWrK7sw", "FederationMetadataURL": "1aBtRXUsPPxyx0D3", "GenericOauthFlow": true, "IsActive": false, "Issuer": "xZFZ4TW116UgQva2", "JWKSEndpoint": "aHZfxbu1BKhBcra0", "KeyID": "jLd5OXfui7jub2zV", "NetflixCertificates": {"encryptedPrivateKey": "sEp9AoXFJyGLvzsq", "encryptedPrivateKeyName": "w8Yt2xRFEUy9Ml11", "publicCertificate": "Ldt5d3hweQzeukSf", "publicCertificateName": "FTxiTswVdtc9b1I4", "rootCertificate": "HsyHFqYJjjeEXu6y", "rootCertificateName": "XFVbmhBuMFEjm0DY"}, "OrganizationId": "2r9G6jT4VjISBHTm", "PlatformName": "hRPcq4sOeklqqvz2", "RedirectUri": "53EzIZU70332GlSL", "RegisteredDomains": [{"affectedClientIDs": ["wOziQyoFIhB0Qft5", "Dxemh01E2nCJW5r4", "9S79prFf5k1E0aVv"], "domain": "ubS11pMj3LnElTQF", "namespaces": ["Uaja7D5Ie6uObeRG", "uEUBWG5kDFhrQbhU", "qW51BL1w3RTk9Rrq"], "roleId": "seGD3KSfk9LZcoee"}, {"affectedClientIDs": ["ML6mybhJbe0woDBf", "iHDKMACTvsswqZSx", "ooT4N88L88Abzio0"], "domain": "De5U3tnVzaEOElHe", "namespaces": ["BWr47PMYfEVUSOl1", "KfsegYJmftTkTneN", "rPhhpl9McAy9dyvq"], "roleId": "4TeIlFl4gLJSujzf"}, {"affectedClientIDs": ["ZNxHXiRlkDof0t9f", "1rkpt99ImFN9A3m2", "kUmtyoraxzqDuZyf"], "domain": "HqzkCG640IXvhl84", "namespaces": ["AEezNG1rHMu26dLH", "NMA6jCGNUIFCUqhD", "VuWHAEpFMeATMD0J"], "roleId": "GNUKqagFJA0Bmsab"}], "Secret": "UUJow6koYRWr1WBA", "TeamID": "hDSazwTPPqiwhKAI", "TokenAuthenticationType": "Nq4Q5GfGsC51wBpT", "TokenClaimsMapping": {"Gv8d7iETfeJa3zSZ": "w13FJ6ilHd4htZHp", "XumftH6eA03tCjCL": "5dZ5WVetGWV0kCJM", "BYXkCHkVCqMfVdaZ": "wwlYnYVitVwL7zgF"}, "TokenEndpoint": "QOJoXpssdP4TNFWT", "UserInfoEndpoint": "fzKCfaxibkA6jrB7", "UserInfoHTTPMethod": "xgF00yQAfl0ALcgQ", "scopes": ["JESDAnGYYLhZntRM", "Ev0jvehwMRCKn4Xl", "QNzAt6lJH3o46VyW"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'dxCg9dLeF1CvLFSS' \
    --body '{"affectedClientIDs": ["aviATyY35GBr1hov", "6tCt6bwN6mjzogDh", "ai5gcpLLR4EQNwft"], "assignedNamespaces": ["EqP95WoePcPKgHZO", "cqqE3C26rzoxKpWO", "l7mq4fEli3eUBteW"], "domain": "m7lRTCsWroTB8Jtd", "roleId": "YNtD5XA21K5vIl0B"}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'NSMOKaojTSBHrcF8' \
    --body '{"domain": "CM9OrtumMJ9G8tAF"}' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '3yZ153vYziJ8mJN9' \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '7ch1XL3yX0Vl949V' \
    --body '{"acsUrl": "IN7pvz0xRKczzXDi", "apiKey": "7NHSLhTzJK3zUizL", "appId": "Pj7IKVezwSB4AOyt", "federationMetadataUrl": "Dxe71lPYEEOYNvW1", "isActive": true, "redirectUri": "u42EMmXKniXMaKKo", "secret": "Iu0n1IS737fwvmrI", "ssoUrl": "WpfjMfdHW9yXMery"}' \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'cyTnVs6gb003w0JG' \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'ZQW27UEK5dg8spGu' \
    --body '{"acsUrl": "7NmeTz9vBoaKqmdY", "apiKey": "T1g1XEpH5HawrSuJ", "appId": "Y87tiMv79FTgKsgA", "federationMetadataUrl": "tBHvGzjIKB4hv9YW", "isActive": false, "redirectUri": "0TUFgKznEcRJXaHK", "secret": "3ZGGx3B0PQdLMnnX", "ssoUrl": "caxhopi1KtDcXZpq"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7vStH7AviBC3kXQZ' \
    --platformUserId 'zw2O7SIvzWnCb1tE' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'nIfFhhNGMUhsXPoA' \
    --after '90' \
    --before '19' \
    --limit '88' \
    > test.out 2>&1
eval_tap $? 142 'GetAdminUsersByRoleIdV3' test.out

#- 143 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'TLDK56iyPRUlsYGx' \
    > test.out 2>&1
eval_tap $? 143 'AdminGetUserByEmailAddressV3' test.out

#- 144 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'AerkK6CSjzRHI1b0' \
    --body '{"bulkUserId": ["9nGYeBdvVUENIoI5", "t1MOm6e7uczYnzSa", "DrJrnywnhHszcj5k"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminGetBulkUserBanV3' test.out

#- 145 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["dLbX2aFtT2vg48ib", "y0ExvFqScazvpMAT", "hwTQQThTdZlJf98x"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminListUserIDByUserIDsV3' test.out

#- 146 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["9WaR13xfWiEwWdDt", "OJkFCmrczDtNDakP", "zqNazLjPtF7tx1cS"], "isAdmin": false, "namespace": "RwYIcdLe39eIs4Sy", "roles": ["V68BlDGPoAY8WqX2", "OMey2XGqXH0kY9Jl", "4Jj3QpLbYzp429uK"]}' \
    > test.out 2>&1
eval_tap $? 146 'AdminInviteUserV3' test.out

#- 147 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '58' \
    --platformUserId 'ozURYhHXOPVR5nVO' \
    --platformId 'fla2ZL0HDbUTUhFE' \
    > test.out 2>&1
eval_tap $? 147 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 148 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 148 'AdminListUsersV3' test.out

#- 149 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'sVCz7szu4Lvu7PU1' \
    --endDate 'iGgdJPAoAiOOQIob' \
    --limit '8' \
    --offset '81' \
    --platformBy 'ISQrwEWxbCukxF4t' \
    --platformId 'Ebg2CDZvkokNmRiZ' \
    --query 'C7hUPfp81TTzjKTu' \
    --startDate 'vlDNzxAtIoMFCbAU' \
    > test.out 2>&1
eval_tap $? 149 'AdminSearchUserV3' test.out

#- 150 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["xfblQvgQB9tHpep4", "rQ4VsSicvuSMBDLK", "zUJGXUWu13pIMSbJ"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminGetBulkUserByEmailAddressV3' test.out

#- 151 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vnaweXbsFSAMyvzV' \
    > test.out 2>&1
eval_tap $? 151 'AdminGetUserByUserIdV3' test.out

#- 152 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hmcWv4a84LI48opX' \
    --body '{"avatarUrl": "200GtPuyAnhkJQlW", "country": "BQ95VJxNuXgTkiQU", "dateOfBirth": "KUnYLy6TfwPRJ6et", "displayName": "qv3Syf30RIbSfT5N", "languageTag": "51wr4ItSQIR4Fc00", "userName": "66xRqIhG6QKcTH7l"}' \
    > test.out 2>&1
eval_tap $? 152 'AdminUpdateUserV3' test.out

#- 153 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xM8tW336snDjkxO4' \
    --activeOnly 'false' \
    --after 'C42Pdn0JWsL5Iri2' \
    --before 'hcbm4QquWQFhbcM7' \
    --limit '31' \
    > test.out 2>&1
eval_tap $? 153 'AdminGetUserBanV3' test.out

#- 154 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'HrWvciycEMlNQiIX' \
    --body '{"ban": "qpOEFGHDsO7S0AGh", "comment": "W9APXjoWuVfjt9yr", "endDate": "rg29pbW7LJ7JJULS", "reason": "Hs4OSw4deTCesdSX", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 154 'AdminBanUserV3' test.out

#- 155 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'okotUWDwXoAq4wSy' \
    --namespace $AB_NAMESPACE \
    --userId 'DankhnnAkGyKheIB' \
    --body '{"enabled": false, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 155 'AdminUpdateUserBanV3' test.out

#- 156 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Tdk6COvqf9wOxqHi' \
    --body '{"context": "lVbLjwHOwFSxEPBc", "emailAddress": "gkjuY9daajQL5Poz", "languageTag": "apNHRy216pAzaeNH"}' \
    > test.out 2>&1
eval_tap $? 156 'AdminSendVerificationCodeV3' test.out

#- 157 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LP2I1GuKeMbaEHnA' \
    --body '{"Code": "jMHKLO2aLrIugtyA", "ContactType": "y16ECdImmOFhLLtJ", "LanguageTag": "BvlDaCjrI9FX4B3J", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 157 'AdminVerifyAccountV3' test.out

#- 158 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId '8DC61xfCsrI5Chpi' \
    > test.out 2>&1
eval_tap $? 158 'GetUserVerificationCode' test.out

#- 159 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wq0m3Reo2ZTVinXK' \
    > test.out 2>&1
eval_tap $? 159 'AdminGetUserDeletionStatusV3' test.out

#- 160 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'X9fuAHBJtZgo5RTj' \
    --body '{"deletionDate": 35, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserDeletionStatusV3' test.out

#- 161 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bhaznzjASsrOCXwY' \
    --body '{"code": "tgSrKanklghTBuiQ", "country": "dbwhjrkNugNR98fo", "dateOfBirth": "v87kXtF2XSM2qCEl", "displayName": "9Pddipb26SYjoGBt", "emailAddress": "ippnZHg7gd0Wv0ky", "password": "ZQHYRedF2wmvwpK6", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 161 'AdminUpgradeHeadlessAccountV3' test.out

#- 162 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId '5GZOZLc3in7iWNHx' \
    > test.out 2>&1
eval_tap $? 162 'AdminDeleteUserInformationV3' test.out

#- 163 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'G1XEzMtGlMwlrGDx' \
    --after '0.4576659184213674' \
    --before '0.9359273153202309' \
    --limit '61' \
    > test.out 2>&1
eval_tap $? 163 'AdminGetUserLoginHistoriesV3' test.out

#- 164 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId '9EKnj89KnyllsTd4' \
    --body '{"languageTag": "XmwSWDHHHrjMlpiW", "newPassword": "65ni6lAaV67JcRPe", "oldPassword": "PJgMRiPQLp64mT05"}' \
    > test.out 2>&1
eval_tap $? 164 'AdminResetPasswordV3' test.out

#- 165 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'o77LUSZEH2RLi94Y' \
    --body '{"Permissions": [{"Action": 14, "Resource": "Euo9ZaR2LCv0ymBw", "SchedAction": 16, "SchedCron": "pIO6CeGPrtF9gqLq", "SchedRange": ["dQTR2d2AZDhCIQjD", "J1DU7XlsnUtk5ZYw", "cvMgiP8kFX0DTrYh"]}, {"Action": 17, "Resource": "wkmBn2jKOvFm52oA", "SchedAction": 47, "SchedCron": "0d8rNrdNqcrDKIW0", "SchedRange": ["YBDjMuXuen2SXNrh", "hPGfInQ059xrWL3B", "odfwpU5vvbQxHPm2"]}, {"Action": 18, "Resource": "aFl7JXDd9ziptEMQ", "SchedAction": 2, "SchedCron": "9kLNAMKN8QvpHZiW", "SchedRange": ["n1MeTzFpa46u9Jyx", "S9qNrJo6JK2OXkM9", "2BQufzi58RbXM0pS"]}]}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserPermissionV3' test.out

#- 166 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fnzS6kRerWqHroVu' \
    --body '{"Permissions": [{"Action": 31, "Resource": "tSHrProtfX1cdQY2", "SchedAction": 25, "SchedCron": "OOXmrnCvgjxl4CmY", "SchedRange": ["LxTmlRGUWO6r1txx", "H6EHTrbkSRUpkZWZ", "4EEMTKQi9dp2BptL"]}, {"Action": 26, "Resource": "Sg7XvmGZtudD2FHY", "SchedAction": 45, "SchedCron": "hhjO42DOuprgp08I", "SchedRange": ["e29sG87lIaV4uw8L", "KWRixQsiHJniHJjX", "PP54jY9s6hrSGNxv"]}, {"Action": 67, "Resource": "ajyaE3IgU6kIrGNT", "SchedAction": 52, "SchedCron": "pvyCEmGGWa4UWnNf", "SchedRange": ["erOGxFfhFqXCJiRp", "iOVNXqGBDTbSgKOt", "Kn37PSY2xlJBePir"]}]}' \
    > test.out 2>&1
eval_tap $? 166 'AdminAddUserPermissionsV3' test.out

#- 167 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'M29iWUZkPtDga5Gg' \
    --body '[{"Action": 46, "Resource": "pVJHiHEueI9pLjsV"}, {"Action": 73, "Resource": "V6rBm48Od8E8yATO"}, {"Action": 75, "Resource": "dVAqDXcwfSDHzrEt"}]' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionBulkV3' test.out

#- 168 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '16' \
    --namespace $AB_NAMESPACE \
    --resource 'A5ft1DiJJHpxlP5h' \
    --userId 'FbHVwHTaxOcI3Xs5' \
    > test.out 2>&1
eval_tap $? 168 'AdminDeleteUserPermissionV3' test.out

#- 169 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pP21re0w01bLm0Im' \
    --after 'L5On7USJKjMibrDK' \
    --before '6qaBiGMGwBHGEytT' \
    --limit '73' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetUserPlatformAccountsV3' test.out

#- 170 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'sYO73iADke064nxD' \
    > test.out 2>&1
eval_tap $? 170 'AdminGetListJusticePlatformAccounts' test.out

#- 171 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'YuHumKbq1LV1G7HH' \
    --userId 'DXGPmdm5EqN8KSXd' \
    > test.out 2>&1
eval_tap $? 171 'AdminGetUserMapping' test.out

#- 172 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'HcyOAhJqfg0mIP79' \
    --userId 'L1VwpWy38EwXER16' \
    > test.out 2>&1
eval_tap $? 172 'AdminCreateJusticeUser' test.out

#- 173 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'oNAmndvT74yPVcp7' \
    --skipConflict 'false' \
    --body '{"platformId": "g9bX579rKi7tFeJk", "platformUserId": "OiZBQh8bepbgka6k"}' \
    > test.out 2>&1
eval_tap $? 173 'AdminLinkPlatformAccount' test.out

#- 174 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '60Ly5JHMHKW5tdos' \
    --userId 'iGWhL7qBfsakSFa7' \
    --body '{"platformNamespace": "9MvvSIhmHJdxUO8o"}' \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformUnlinkV3' test.out

#- 175 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'O3swzTuDuB6cD8cR' \
    --userId 'FlxevoaqSYHbcTmV' \
    --ticket 'CgpedJVmnBQRiTXv' \
    > test.out 2>&1
eval_tap $? 175 'AdminPlatformLinkV3' test.out

#- 176 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'NC8YI5wqcs7Sw5Wr' \
    --userId 'yHqSuqyA0yhu3AdN' \
    --platformToken 'iJtmwYkpGD20rBqg' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 177 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'rKUseGpRYPFj5s2f' \
    --userId 'qfuwhauByXkyuvls' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetUserSinglePlatformAccount' test.out

#- 178 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId '21Wy94pgzmMFaBrS' \
    --body '["YKCrJxpXC8Kz8Ifj", "Ts6r71jnD0crnwTp", "VAeY5MbZP7jpLOTa"]' \
    > test.out 2>&1
eval_tap $? 178 'AdminDeleteUserRolesV3' test.out

#- 179 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CpJTQpFxPC4pfmy9' \
    --body '[{"namespace": "5W7suSscXT9LD84O", "roleId": "sIT9ABaCjJtNnXON"}, {"namespace": "3MhSVY8GcqHce5Cy", "roleId": "KLv17kT9Dd1WsLyH"}, {"namespace": "v3K6cTzTSSskTMAW", "roleId": "D0B9p9IxV0RdctPG"}]' \
    > test.out 2>&1
eval_tap $? 179 'AdminSaveUserRoleV3' test.out

#- 180 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'KC3nXF8Ek2b33Pas' \
    --userId 'iomWaWJeaE9aZegx' \
    > test.out 2>&1
eval_tap $? 180 'AdminAddUserRoleV3' test.out

#- 181 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'XSPQZvdr9VLjAjBx' \
    --userId '6pIjiYyeJrNKxxoj' \
    > test.out 2>&1
eval_tap $? 181 'AdminDeleteUserRoleV3' test.out

#- 182 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pAr2GQTVKQVqN20J' \
    --body '{"enabled": true, "reason": "YcZ0kAlZ4Hz4bsdH"}' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateUserStatusV3' test.out

#- 183 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'e691IbzGv43aL5JB' \
    > test.out 2>&1
eval_tap $? 183 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 184 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'Iahtijc0XPCy3YVS' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "jloMMMLVwYZS6rLh"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminUpdateClientSecretV3' test.out

#- 185 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after '6EG0N9p5TBPMu2b7' \
    --before 'gPqUnLYcBdv2Mhj3' \
    --isWildcard 'false' \
    --limit '17' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRolesV3' test.out

#- 186 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "managers": [{"displayName": "JjnY42Aet5Sp9gpO", "namespace": "iNu2ha9cgttoOX70", "userId": "lVZ0AM0bdSoU4KMN"}, {"displayName": "uEP6g2jheW0uHEdI", "namespace": "jbP3owEkkwWOInyr", "userId": "f4HNrju9lGQ4a3GG"}, {"displayName": "l2dHHZoL2USu02m7", "namespace": "6YWCyjNI3JLiZAAv", "userId": "5H53cnQfvnUUMZ1M"}], "members": [{"displayName": "Xlde3dWyShJGaPBf", "namespace": "SssY3sLzNOOVEIOG", "userId": "xCJE4EKD0JWJGcSv"}, {"displayName": "P0seLy8x4sYNDX8J", "namespace": "Sr8QxNy8oDzGTUTe", "userId": "DklsjLPfT1q48RwA"}, {"displayName": "tGkhCWUhilKmFg9F", "namespace": "DjFd2flbA0KHDlKm", "userId": "McSyEY7AqCgmojJV"}], "permissions": [{"action": 49, "resource": "vKsoOmuzoIXVpN3F", "schedAction": 92, "schedCron": "0Go5U1bhlunNwjqv", "schedRange": ["q6JDknMcu4ZQoFaP", "SpiWYHZsVcr9GkEK", "XNIRX1WREJOGIyxK"]}, {"action": 6, "resource": "nVj8CbEU1EamAtjt", "schedAction": 26, "schedCron": "7aE6ZU9QCCk037qK", "schedRange": ["tG7i5IA2xLTEd0JH", "uHJ6NPr8iCKGaw3s", "8HF55mQ1brkVSCsR"]}, {"action": 79, "resource": "S8vkNKspBzMlGMab", "schedAction": 65, "schedCron": "V8WvDkeDZJahpU8h", "schedRange": ["XthqCmrDoGkonMWm", "VYEtxhC3TecFdDLY", "6kRt1UumqUl8mkFs"]}], "roleName": "yhN0C9kzEH7u5JtU"}' \
    > test.out 2>&1
eval_tap $? 186 'AdminCreateRoleV3' test.out

#- 187 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'i0AJfxSP8sRgSsjr' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetRoleV3' test.out

#- 188 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'FpEqbBeQhAZDgt87' \
    > test.out 2>&1
eval_tap $? 188 'AdminDeleteRoleV3' test.out

#- 189 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'b1MmJd5PRizIz9Z9' \
    --body '{"deletable": false, "isWildcard": false, "roleName": "v59reQO5phlu4MI6"}' \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateRoleV3' test.out

#- 190 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId '0wMc8sXS7K0SlO3I' \
    > test.out 2>&1
eval_tap $? 190 'AdminGetRoleAdminStatusV3' test.out

#- 191 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'MyCC7bDnDwPSs1O3' \
    > test.out 2>&1
eval_tap $? 191 'AdminUpdateAdminRoleStatusV3' test.out

#- 192 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId '9NvK4x9fSkBZ5JO3' \
    > test.out 2>&1
eval_tap $? 192 'AdminRemoveRoleAdminV3' test.out

#- 193 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId '4jFZvDumnufx7inT' \
    --after 'dmkFdNXJ0INTZ1Zs' \
    --before 'qdvXbyBjqhuYERZB' \
    --limit '71' \
    > test.out 2>&1
eval_tap $? 193 'AdminGetRoleManagersV3' test.out

#- 194 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId '2WU7bPfpl2Pw7KF3' \
    --body '{"managers": [{"displayName": "kJjpQSOyHWwZoP5L", "namespace": "QUwh9LCeGnQLROqJ", "userId": "ScBJU7qPRoEkYGqa"}, {"displayName": "Y409je9WYjFJEDMI", "namespace": "J2QyWkcXwovpSu7O", "userId": "0o9IP7yFD7M2d1AT"}, {"displayName": "k0x2WNlyGxDHe6dh", "namespace": "LkkQX6wB2sdqXvDf", "userId": "qBqvKAEd4PdRcvCN"}]}' \
    > test.out 2>&1
eval_tap $? 194 'AdminAddRoleManagersV3' test.out

#- 195 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'adVGJTKeoj0lkFHW' \
    --body '{"managers": [{"displayName": "Y6I52Qhoytc26XEi", "namespace": "DhSbWERahG558393", "userId": "WlMyOdKOydDcpAJi"}, {"displayName": "C0lAPinxY7OCWhde", "namespace": "5NR4JYEbbk4KbXzD", "userId": "RLrvcqOUlgMq1EUE"}, {"displayName": "DCTx3HdiOAUhW8hQ", "namespace": "STt0mWCDAcCuCSCx", "userId": "jgk2a6qGBlHSuw5w"}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminRemoveRoleManagersV3' test.out

#- 196 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'WzF4AYegvtA74Hwr' \
    --after 'RF2nWGhO2NgBzNW1' \
    --before '0Yd7jcY3La3ix3Oj' \
    --limit '98' \
    > test.out 2>&1
eval_tap $? 196 'AdminGetRoleMembersV3' test.out

#- 197 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'pCsuLN5togPF1B3Y' \
    --body '{"members": [{"displayName": "m9UHl3SwSShAYJM8", "namespace": "UcLCthKYOpI8m9d3", "userId": "6PHjkuHQc0v4K1RB"}, {"displayName": "eQ950FT49f5bXxhl", "namespace": "ntze0jRAlcHAHSAE", "userId": "epzAJgBghFJ8AYLa"}, {"displayName": "uwgsAW0LYQSeDSrp", "namespace": "PuH06ekkOYTiWEgi", "userId": "PYJlJvR6viqcrCG3"}]}' \
    > test.out 2>&1
eval_tap $? 197 'AdminAddRoleMembersV3' test.out

#- 198 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'mlsiHksgnUeaVjmz' \
    --body '{"members": [{"displayName": "xEM0au7B6Kr9KRZz", "namespace": "XKfAnrqNxMH0s9ua", "userId": "YNJzvfwikKPIfj9t"}, {"displayName": "W078DeRYg7gkonXX", "namespace": "6T7LTyutqkfRXVro", "userId": "S0pkvTDTcHqBT0rJ"}, {"displayName": "2HNSUSHrxk3K6LyD", "namespace": "MUK7KbG0r5ymJHqm", "userId": "yg7vWemKQn8ddmFj"}]}' \
    > test.out 2>&1
eval_tap $? 198 'AdminRemoveRoleMembersV3' test.out

#- 199 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'YiIu2ALnHhMJlURT' \
    --body '{"permissions": [{"action": 34, "resource": "bkDyxVA64dBh4VO3", "schedAction": 98, "schedCron": "WuZMZ43IoL4RjBly", "schedRange": ["NcuRQ1NbvHidvmdO", "YkT7W5CsPo6EE4Vr", "QGn7eUXjMn0xSipS"]}, {"action": 45, "resource": "8ljpK51bJOWIeBw7", "schedAction": 58, "schedCron": "E05xn7VTeeo741sF", "schedRange": ["uXP5kGLOyYQHaJdT", "xqksrs95xnF2CkxQ", "udGnpokxHa0fiORT"]}, {"action": 10, "resource": "ylmGlKUTUcEYeM2c", "schedAction": 67, "schedCron": "62ODCWLVEn9XPHmu", "schedRange": ["QRijPuIBIqDHzEis", "bdwJkOe1WLwinrWV", "nfCxpJIwmTJuhPXi"]}]}' \
    > test.out 2>&1
eval_tap $? 199 'AdminUpdateRolePermissionsV3' test.out

#- 200 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'vfch4mBRzEY9slOZ' \
    --body '{"permissions": [{"action": 56, "resource": "sQDzDGbsLUG3H3Cc", "schedAction": 76, "schedCron": "GSYXB2869VKdFtRO", "schedRange": ["ruYLdXKmYOA6BZBC", "z1VBXteUAcrdPXJv", "mFlBe8XiN0hvlCRB"]}, {"action": 11, "resource": "sfb3igKme8NTvZ26", "schedAction": 0, "schedCron": "A78JtsltN4Nh6Phb", "schedRange": ["PxObzekISP3bnaZT", "ox6w4joZo30zfINf", "Kmj0cYTw03EVOLgC"]}, {"action": 88, "resource": "EQbL8Kcf1wtTaN7F", "schedAction": 51, "schedCron": "UJfgDslkrrNTDw63", "schedRange": ["zuZxAitIKlYkLUzK", "HJCLYNNCYmYxfVkf", "oY9bvsUXgmSOVage"]}]}' \
    > test.out 2>&1
eval_tap $? 200 'AdminAddRolePermissionsV3' test.out

#- 201 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId '4FiAGE2LQ3bQCAx4' \
    --body '["bm2iDYt5hF3rsPMi", "AMYg5MXSgPlzRXMI", "r8zRv1z5gL7tBYOT"]' \
    > test.out 2>&1
eval_tap $? 201 'AdminDeleteRolePermissionsV3' test.out

#- 202 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '39' \
    --resource 'bF6PYv9C34fjkb55' \
    --roleId 'aJLmYcy4DfI1P08u' \
    > test.out 2>&1
eval_tap $? 202 'AdminDeleteRolePermissionV3' test.out

#- 203 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 203 'AdminGetMyUserV3' test.out

#- 204 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'cauX7RqHWTy1tr32' \
    --extendExp 'true' \
    --redirectUri 'svcsRhD0afuE0z3f' \
    --password 'WXHXBQgI1NHY1XZx' \
    --requestId 'z1MlNtqzC0lHbhaP' \
    --userName 'Gz2Ro82N1QPmFSr4' \
    > test.out 2>&1
eval_tap $? 204 'UserAuthenticationV3' test.out

#- 205 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'd8JoCZ3rviW787dt' \
    --linkingToken 'WanNU9A4KBt00w7A' \
    --password 'fsR3I0WvZIApJa1i' \
    --username 'LlIuvmwJzDt6HoSr' \
    > test.out 2>&1
eval_tap $? 205 'AuthenticationWithPlatformLinkV3' test.out

#- 206 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'pnt0ANV4b8NOP0sP' \
    --extendExp 'false' \
    --linkingToken 'TwZolAK9lzRoy5Br' \
    > test.out 2>&1
eval_tap $? 206 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 207 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'ahL8NSGPUPqAiaeL' \
    > test.out 2>&1
eval_tap $? 207 'RequestOneTimeLinkingCodeV3' test.out

#- 208 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'MU8sblL2PsQfhjyM' \
    > test.out 2>&1
eval_tap $? 208 'ValidateOneTimeLinkingCodeV3' test.out

#- 209 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'Jon9MNd4U4hdIEDn' \
    --isTransient 'true' \
    --clientId 'Vluv0kk3aQ4K5OTc' \
    --oneTimeLinkCode 'wbJGoHkM1MslsQLi' \
    > test.out 2>&1
eval_tap $? 209 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 210 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 210 'GetCountryLocationV3' test.out

#- 211 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 211 'Logout' test.out

#- 212 RequestGameTokenCodeResponseV3
samples/cli/sample-apps Iam requestGameTokenCodeResponseV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'ASOSZP55VO0jw6q5' \
    > test.out 2>&1
eval_tap $? 212 'RequestGameTokenCodeResponseV3' test.out

#- 213 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'omBoUWpLMFzgxyUx' \
    --userId 'E3aaOy73cW1OmdIw' \
    > test.out 2>&1
eval_tap $? 213 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 214 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Z1OdtHvvB1iAhQgV' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 214 'RevokeUserV3' test.out

#- 215 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'vtouAjgqTYZaQZsh' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'true' \
    --oneTimeLinkCode '61ve4YQ3A2NgVtjC' \
    --redirectUri '0m7pWAyU3TVmcCix' \
    --scope 'dkmzLJZ79XtQigCK' \
    --state 'gFCE83A8e5qOSHYh' \
    --targetAuthPage 'edGOgvnKc2cX11p4' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'xhCAO46InLvsgDN1' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 215 'AuthorizeV3' test.out

#- 216 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'TLDJUdHyQBezDjjG' \
    > test.out 2>&1
eval_tap $? 216 'TokenIntrospectionV3' test.out

#- 217 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 217 'GetJWKSV3' test.out

#- 218 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'ybsXLsuxkBN6WKWB' \
    --factor 'KAy26LiF85w02KTi' \
    --mfaToken 'mYEJvyNFJXFmtLvw' \
    > test.out 2>&1
eval_tap $? 218 'SendMFAAuthenticationCode' test.out

#- 219 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'K5G1qtzU6eEjKtyO' \
    --mfaToken 'izGHr3vGAe47cwic' \
    > test.out 2>&1
eval_tap $? 219 'Change2faMethod' test.out

#- 220 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code '3A4y1DzQB6fBHSBM' \
    --factor 'vu6HpIPFXmUb88d3' \
    --mfaToken 'qEkqF6eQCh6vuB2M' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 220 'Verify2faCode' test.out

#- 221 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'oqMzvwH66DsgLZ8U' \
    --userId 'G1LEd3Vat61q3HYE' \
    > test.out 2>&1
eval_tap $? 221 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 222 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'bnTT4Trs8AP0nSfE' \
    --clientId 'LSoQXReFVnWF5xYE' \
    --redirectUri 'I0jtc139At69REKr' \
    --requestId 'tAqqAZCZGcGqQMxy' \
    > test.out 2>&1
eval_tap $? 222 'AuthCodeRequestV3' test.out

#- 223 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'pageOyOqzoAoSnl6' \
    --additionalData 'd8ewQ7NffaJBhcHA' \
    --clientId 'OJ7unbTfXIsnaWdH' \
    --createHeadless 'false' \
    --deviceId 'y2RnB5OPntdyory0' \
    --macAddress 'xXSzPRLKoD7aJI7O' \
    --platformToken '5p5AYYPCeQZHrWEx' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 223 'PlatformTokenGrantV3' test.out

#- 224 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 224 'GetRevocationListV3' test.out

#- 225 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'UyW8uGvMPawlHbxd' \
    > test.out 2>&1
eval_tap $? 225 'TokenRevocationV3' test.out

#- 226 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'NZ8qVSzG9VqbOxG9' \
    --clientId 'OVaQtF5Gdb2iwL9e' \
    --code 'G0V4121GxZ5tLAJf' \
    --codeVerifier 'VMcvMIFD1zYVgQB1' \
    --extendExp 'false' \
    --password 'R16kCFPyjUchOLa4' \
    --redirectUri 'k0RSWBAacg5FJL9e' \
    --refreshToken 'GgJ5Lobj8y0sF5zm' \
    --username '4w9Vc0HF5ff52B0I' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 226 'TokenGrantV3' test.out

#- 227 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'TWN9cLk9vPb2tUq9' \
    > test.out 2>&1
eval_tap $? 227 'VerifyTokenV3' test.out

#- 228 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId '28HiI8raAgLdHWSY' \
    --code 'xvlQSDgwUtopjst6' \
    --error 'uzCNhUaNI7bjgAtp' \
    --openidAssocHandle 'LkdnmPouGvie3rKk' \
    --openidClaimedId 'WyEMCnAI94bE46Or' \
    --openidIdentity 'nrQyWfxq9LF30Z21' \
    --openidMode 'L8KlXNOPeP7nTsuO' \
    --openidNs '4SJHU3t70Hpf0yGZ' \
    --openidOpEndpoint '5GgU6rPZ2mM7Wvrd' \
    --openidResponseNonce 'ViLyZN7fPrHq2VOx' \
    --openidReturnTo 'YmithqW8zu0xlGj3' \
    --openidSig 'z2Qa6cvFaC3Yg6VH' \
    --openidSigned 'NcOtwWcKCp7m9I30' \
    --state 'DyCZgNX5DqT0vif2' \
    > test.out 2>&1
eval_tap $? 228 'PlatformAuthenticationV3' test.out

#- 229 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode '1ymLWV0opN3zuvCD' \
    > test.out 2>&1
eval_tap $? 229 'PublicGetInputValidations' test.out

#- 230 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'vR6N8xQy1R3iKl5i' \
    > test.out 2>&1
eval_tap $? 230 'PublicGetInputValidationByField' test.out

#- 231 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'IbawwGkYNDxUsWuQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 231 'PublicGetCountryAgeRestrictionV3' test.out

#- 232 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 232 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 233 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'kYMXTa3JFbUS9N9K' \
    > test.out 2>&1
eval_tap $? 233 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 234 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'MFV5INIjzPntcbf2' \
    --rawPUID 'false' \
    --body '{"platformUserIds": ["5vcUsIvqMMv42kMn", "bkM3CTYTvkfUqOzI", "MCpjbQc11vogbxeA"]}' \
    > test.out 2>&1
eval_tap $? 234 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 235 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'wSeOmmQsC8ci8Tdv' \
    --platformUserId 'IJg76s4A71vXNCWY' \
    > test.out 2>&1
eval_tap $? 235 'PublicGetUserByPlatformUserIDV3' test.out

#- 236 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'QANtMZm2BcXwg0Xl' \
    > test.out 2>&1
eval_tap $? 236 'PublicGetAsyncStatus' test.out

#- 237 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'Wi5Idt6lyfEauh72' \
    --limit '57' \
    --offset '71' \
    --query 'sDgIQw3j8gfynXqM' \
    > test.out 2>&1
eval_tap $? 237 'PublicSearchUserV3' test.out

#- 238 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "HxKYJTnvuJ10TogD", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "LUiav1YhrSeHOoFZ", "policyId": "VVdhNQqLynMorFul", "policyVersionId": "4LGfo2EdB35rohjG"}, {"isAccepted": true, "localizedPolicyVersionId": "k5oXKlZRoS8X2dBj", "policyId": "KQssfwX6ZxNV1agD", "policyVersionId": "VFZWboS55rKrcjAA"}, {"isAccepted": false, "localizedPolicyVersionId": "54SgUgU9BjSEi8Vu", "policyId": "UX0fpIqx3v4HLKjj", "policyVersionId": "n0aLKh8qrb2JhArB"}], "authType": "tP5t62ZpesZj7ZEV", "code": "597QUBPVKzo1fTb9", "country": "armWlIIAjnjS51df", "dateOfBirth": "OjcVH1jSLODpmLrt", "displayName": "tNJJZDAs3SdyPiLs", "emailAddress": "pSjh0ZwPc5JpM3zF", "password": "iD0BTFfTPHHYRt3I", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 238 'PublicCreateUserV3' test.out

#- 239 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'wPpAfTeDT4QXrHzh' \
    --query 'pWl80cPu8KrD51Jl' \
    > test.out 2>&1
eval_tap $? 239 'CheckUserAvailability' test.out

#- 240 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["GRLqqNA1R3p1hNzi", "vJqAY2eHHtpt4jc1", "hS8JaLjrTeaNoS9X"]}' \
    > test.out 2>&1
eval_tap $? 240 'PublicBulkGetUsers' test.out

#- 241 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "veQdkPYPv3efE7P9", "languageTag": "f5u7lPpMttLY5N0b"}' \
    > test.out 2>&1
eval_tap $? 241 'PublicSendRegistrationCode' test.out

#- 242 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "xtczEFp2Kty3KHRr", "emailAddress": "nDvyepaNe1AJqCs1"}' \
    > test.out 2>&1
eval_tap $? 242 'PublicVerifyRegistrationCode' test.out

#- 243 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "IekjGBWa20d1gXiJ", "languageTag": "yZzeuWmwYrQe3WL0"}' \
    > test.out 2>&1
eval_tap $? 243 'PublicForgotPasswordV3' test.out

#- 244 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'HHir5xpbouXTjyb1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 244 'GetAdminInvitationV3' test.out

#- 245 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'DrJeexCa7hUQhTFs' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "fcJacOUaDVFq9inc", "policyId": "gg1q0K1vcwGI81yh", "policyVersionId": "sO4ezdCLGZcGYVOl"}, {"isAccepted": false, "localizedPolicyVersionId": "fEc40sujefy1JAa1", "policyId": "3DU1emvSFT30Uj4o", "policyVersionId": "4mDQdarxDGV63h7F"}, {"isAccepted": false, "localizedPolicyVersionId": "b2Ohr1ylIRkp5lSC", "policyId": "urNZaE1AcgE05n55", "policyVersionId": "am65ibwLK4u8H3CT"}], "authType": "EMAILPASSWD", "country": "R2JaHzsTrLX2nxI0", "dateOfBirth": "U6ZUaYUddDLwZZjO", "displayName": "F2K522vxzKS4Hd2O", "password": "UY9bvEMOfN1WHfT5", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 245 'CreateUserFromInvitationV3' test.out

#- 246 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "n1BL8FYvcxhW61qS", "country": "uCf155jY0ycZ5PAY", "dateOfBirth": "Tf8EzSeDAMghYnmV", "displayName": "4yiPn2JSTh8wiy3C", "languageTag": "MYf05caSD0QfK2HU", "userName": "WUThrTrxtZnxb5Jf"}' \
    > test.out 2>&1
eval_tap $? 246 'UpdateUserV3' test.out

#- 247 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "4rl5hqK91ia9bmp7", "country": "Qe0w3AbU2ECKJYIG", "dateOfBirth": "4L5dVCfsago3lKYQ", "displayName": "v9ka5dvYKFlVkrb8", "languageTag": "mmWfmYUJJ0cZgnDf", "userName": "DkStaBjLeHMXALbL"}' \
    > test.out 2>&1
eval_tap $? 247 'PublicPartialUpdateUserV3' test.out

#- 248 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "slJgiGLLSoNg5ws1", "emailAddress": "e1ezDjM54gNhfLyN", "languageTag": "81qxwuG47AtDaLrE"}' \
    > test.out 2>&1
eval_tap $? 248 'PublicSendVerificationCodeV3' test.out

#- 249 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Fql8rzWS8MWfS79n", "contactType": "ub6Gm1UwJRVeCXLn", "languageTag": "dJskQZINjbQ2sDc8", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 249 'PublicUserVerificationV3' test.out

#- 250 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "5LD5tdjbx7OdMElw", "country": "SgQkU4CUOX1GoPxj", "dateOfBirth": "xObNyvvpTAi9MxXm", "displayName": "6F2VC60IMkkuzPaJ", "emailAddress": "4txAfnQ5SiB4nbRm", "password": "2wFZdcOmbGmkQM6N", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 250 'PublicUpgradeHeadlessAccountV3' test.out

#- 251 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "IJLvfG0Hka6h6JVQ", "password": "r5OgIEDnFyOHcr6F"}' \
    > test.out 2>&1
eval_tap $? 251 'PublicVerifyHeadlessAccountV3' test.out

#- 252 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "vqpiNsC6ra0yjwDP", "newPassword": "fE7l1PAfUBCFsV3s", "oldPassword": "GOIq4gzvYtRp4bpr"}' \
    > test.out 2>&1
eval_tap $? 252 'PublicUpdatePasswordV3' test.out

#- 253 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'vKy9xCgBYlvDNVVg' \
    > test.out 2>&1
eval_tap $? 253 'PublicCreateJusticeUser' test.out

#- 254 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'tzeY93eS2U0NC2Zr' \
    --redirectUri '17KS2JhRG4gyrdjk' \
    --ticket '8UzoDsi4N5Trnclc' \
    > test.out 2>&1
eval_tap $? 254 'PublicPlatformLinkV3' test.out

#- 255 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'umv4ep6tAHWGDTfa' \
    --body '{"platformNamespace": "eJetUraFpjFcSxiU"}' \
    > test.out 2>&1
eval_tap $? 255 'PublicPlatformUnlinkV3' test.out

#- 256 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'IdMgqxcif0leZaFp' \
    > test.out 2>&1
eval_tap $? 256 'PublicPlatformUnlinkAllV3' test.out

#- 257 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '8tiWh1p80BRnWKrZ' \
    --ticket 'dZTUFtTDlriL4Q4h' \
    > test.out 2>&1
eval_tap $? 257 'PublicForcePlatformLinkV3' test.out

#- 258 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'w8bY7t3yVWti624g' \
    --clientId '82CBsY33bNsA1drS' \
    --redirectUri 'UGPoC4FRmp5oIcR6' \
    > test.out 2>&1
eval_tap $? 258 'PublicWebLinkPlatform' test.out

#- 259 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'RkwqJLmBGZBPh2fG' \
    --code 'wiUQZTfoUWt8Nl9Q' \
    --state 'S9nObkoL9y0VuAMT' \
    > test.out 2>&1
eval_tap $? 259 'PublicWebLinkPlatformEstablish' test.out

#- 260 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "RwquJ3z89DF17ZEU", "emailAddress": "OJcZUGY9L9COhKXS", "newPassword": "fbh40jhnkmQ0l5My"}' \
    > test.out 2>&1
eval_tap $? 260 'ResetPasswordV3' test.out

#- 261 PublicGetUserByUserIdV3
eval_tap 0 261 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 262 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EmDa661xMF8iVKTK' \
    --activeOnly 'false' \
    --after 'MCt11dl4N69C1FgM' \
    --before 'pm63WCrzPdfkVmjZ' \
    --limit '58' \
    > test.out 2>&1
eval_tap $? 262 'PublicGetUserBanHistoryV3' test.out

#- 263 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'qcps8QznLOEwsqGf' \
    > test.out 2>&1
eval_tap $? 263 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 264 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'cRwSFrQ8fGEwdH84' \
    > test.out 2>&1
eval_tap $? 264 'PublicGetUserInformationV3' test.out

#- 265 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'oMkRaozXX6CFpfoS' \
    --after '0.4907912296161919' \
    --before '0.12885939038270233' \
    --limit '59' \
    > test.out 2>&1
eval_tap $? 265 'PublicGetUserLoginHistoriesV3' test.out

#- 266 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Ld5Qo2Je6KZfsKz7' \
    --after '858yaFscerKXzSVv' \
    --before 'Cx4VmYr1y5S4GL58' \
    --limit '93' \
    > test.out 2>&1
eval_tap $? 266 'PublicGetUserPlatformAccountsV3' test.out

#- 267 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gjxo1hFDYyCL6wN4' \
    > test.out 2>&1
eval_tap $? 267 'PublicListJusticePlatformAccountsV3' test.out

#- 268 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '8hch12ahBBdWLzhp' \
    --body '{"platformId": "0GBXtYlZr3tOFVpf", "platformUserId": "1ZTHSxW4tCNfsIEK"}' \
    > test.out 2>&1
eval_tap $? 268 'PublicLinkPlatformAccount' test.out

#- 269 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'P7cr6gALHKw5XtYK' \
    --body '{"chosenNamespaces": ["4nBtvlsCrBtUcPPt", "Va0KWTiv9TlCdGqt", "6xM6U4KdWO0PbDqg"], "requestId": "Gng1x4BuR6vk7TKQ"}' \
    > test.out 2>&1
eval_tap $? 269 'PublicForceLinkPlatformWithProgression' test.out

#- 270 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '48cubACpmQn25Ds8' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetPublisherUserV3' test.out

#- 271 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'JVOnhGZZnymYizIE' \
    --password 'G3WycTr3gWWDLD03' \
    > test.out 2>&1
eval_tap $? 271 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 272 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'S3lx6TAX1l65MsRe' \
    --before 'Px81KBqc62WDChAM' \
    --isWildcard 'false' \
    --limit '80' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetRolesV3' test.out

#- 273 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'vzLGTuKrqjrC69zX' \
    > test.out 2>&1
eval_tap $? 273 'PublicGetRoleV3' test.out

#- 274 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 274 'PublicGetMyUserV3' test.out

#- 275 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'te9HqUoE9PZrYzEv' \
    > test.out 2>&1
eval_tap $? 275 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 276 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["0suKMCKNrSwbiceK", "QRFFTJm9RLlFgOT5", "p3N6DM0o2axcwYyI"], "oneTimeLinkCode": "q7PLEjL74zPABmHd"}' \
    > test.out 2>&1
eval_tap $? 276 'LinkHeadlessAccountToMyAccountV3' test.out

#- 277 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "kBUabOrD6bFzSH0g"}' \
    > test.out 2>&1
eval_tap $? 277 'PublicSendVerificationLinkV3' test.out

#- 278 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code '02tE8z9SsHh2P3yf' \
    > test.out 2>&1
eval_tap $? 278 'PublicVerifyUserByLinkV3' test.out

#- 279 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'ZVp2CpIT8l2gobG1' \
    --code 'vbpeyKrcRgxCawMo' \
    --error '5UUscNWMdynEAdAY' \
    --state '55tVJNQWw0zNdFoR' \
    > test.out 2>&1
eval_tap $? 279 'PlatformAuthenticateSAMLV3Handler' test.out

#- 280 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'OqFMRiJH9K9sxbQT' \
    --payload '1ttPJa3lAsSla2lz' \
    > test.out 2>&1
eval_tap $? 280 'LoginSSOClient' test.out

#- 281 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'i1nstuowruLEokJm' \
    > test.out 2>&1
eval_tap $? 281 'LogoutSSOClient' test.out

#- 282 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --additionalData 'YyJu5PoTR5ry2c8x' \
    --code 'w1vEd57XOJfpKY16' \
    > test.out 2>&1
eval_tap $? 282 'RequestGameTokenResponseV3' test.out

#- 283 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId '6dZjAUPLgLc9kOEI' \
    --platformToken 'pk8KaZgG1D6sYYkc' \
    > test.out 2>&1
eval_tap $? 283 'PlatformTokenRefreshV3' test.out

#- 284 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '0gzgAYo8H3iPbSVY' \
    > test.out 2>&1
eval_tap $? 284 'AdminGetDevicesByUserV4' test.out

#- 285 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'CnxoKvMQ2BEDclBz' \
    --endDate 'iny6eKDQhDNdDrGd' \
    --limit '45' \
    --offset '50' \
    --startDate '6ve6rhr4YI3bobBH' \
    > test.out 2>&1
eval_tap $? 285 'AdminGetBannedDevicesV4' test.out

#- 286 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'PHtS6b662hoiboFJ' \
    > test.out 2>&1
eval_tap $? 286 'AdminGetUserDeviceBansV4' test.out

#- 287 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "QJCieQsbfEWJXPRk", "deviceId": "iuRV3XrNkZLU8t5t", "deviceType": "iXKA71gI7hcBUbLe", "enabled": false, "endDate": "jJkY0sEx2f5HsCGF", "ext": {"symYIyUhUiBmDb7n": {}, "FA6r3tDGNXajujVM": {}, "3AV9RydEZ2Cq8YOu": {}}, "reason": "znYQWgdDcXGEMp5b"}' \
    > test.out 2>&1
eval_tap $? 287 'AdminBanDeviceV4' test.out

#- 288 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'jzvGp2AAljMCmhSH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 288 'AdminGetDeviceBanV4' test.out

#- 289 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'eAJV5xbPxtNtcOtK' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 289 'AdminUpdateDeviceBanV4' test.out

#- 290 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'BZS464biTQ2AZy2t' \
    --startDate 'rwQ6bBOWndN84OBj' \
    --deviceType 'We4gSCZf8x9Eoegr' \
    > test.out 2>&1
eval_tap $? 290 'AdminGenerateReportV4' test.out

#- 291 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 291 'AdminGetDeviceTypesV4' test.out

#- 292 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'MRFyTCUTMMIAWBRv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 292 'AdminGetDeviceBansV4' test.out

#- 293 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'mVY7peL1AiHOhfIM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 293 'AdminDecryptDeviceV4' test.out

#- 294 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'I48YNWdVqyogbA9o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 294 'AdminUnbanDeviceV4' test.out

#- 295 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'qBjanrFoSm1Fq4SE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 295 'AdminGetUsersByDeviceV4' test.out

#- 296 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 35}' \
    > test.out 2>&1
eval_tap $? 296 'AdminCreateTestUsersV4' test.out

#- 297 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["t8glhfFjIxRa2a5c", "Yr4QqAuACtjN2ftL", "mCpfsPaJf2eHK1Cn"]}' \
    > test.out 2>&1
eval_tap $? 297 'AdminBulkCheckValidUserIDV4' test.out

#- 298 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'H4pR7SbYIvAIZIkt' \
    --body '{"avatarUrl": "595z2QGGaecEMvhG", "country": "me1OflqSSIhX5Hcr", "dateOfBirth": "i2jHf3bNn2MqdE19", "displayName": "9KIseVffHagqGLYl", "languageTag": "sjW87J7hktVOCWd9", "userName": "FEKH3OB6JPG7tjDz"}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateUserV4' test.out

#- 299 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'f2yhUvcoR3Qidlqk' \
    --body '{"code": "YKVITldk7j0lDf6C", "emailAddress": "uHLyJ4gZTDlMehti"}' \
    > test.out 2>&1
eval_tap $? 299 'AdminUpdateUserEmailAddressV4' test.out

#- 300 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ZbL6Y0Q8bEu2gz2W' \
    > test.out 2>&1
eval_tap $? 300 'AdminDisableUserMFAV4' test.out

#- 301 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'M3NsaDB1hpsPDFVB' \
    > test.out 2>&1
eval_tap $? 301 'AdminListUserRolesV4' test.out

#- 302 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'QbsjAwoiXjmDa1xt' \
    --body '{"assignedNamespaces": ["ZAlHh0Pq3NZ5melJ", "DGdKC9Wm86KbQFbG", "sNA6TAmSfgaCgtdZ"], "roleId": "W0uWNciXN2QgvE13"}' \
    > test.out 2>&1
eval_tap $? 302 'AdminUpdateUserRoleV4' test.out

#- 303 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'f0A8LRCak2rEc3sD' \
    --body '{"assignedNamespaces": ["Cyzo4Ybl47GKlGJe", "jlMfZsEvqNUlLQZV", "9vrQHXV2rPKLlEPx"], "roleId": "gMGEX4xShlkuIa4v"}' \
    > test.out 2>&1
eval_tap $? 303 'AdminAddUserRoleV4' test.out

#- 304 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'FTiGycsc1KrANlpn' \
    --body '{"assignedNamespaces": ["0c6LmmVJrI1WnqBH", "MaRpOLCs7toyD9PA", "Pw8SzHcq9EcyCGF7"], "roleId": "kjR9pWc0C2mWdKjb"}' \
    > test.out 2>&1
eval_tap $? 304 'AdminRemoveUserRoleV4' test.out

#- 305 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'true' \
    --limit '97' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 305 'AdminGetRolesV4' test.out

#- 306 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "a9V55mtvLqbNFyAo"}' \
    > test.out 2>&1
eval_tap $? 306 'AdminCreateRoleV4' test.out

#- 307 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'W7qVDTYqjH5c7AgB' \
    > test.out 2>&1
eval_tap $? 307 'AdminGetRoleV4' test.out

#- 308 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'ar3O2w0e2pSC1lBg' \
    > test.out 2>&1
eval_tap $? 308 'AdminDeleteRoleV4' test.out

#- 309 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'DjEkGNmxHDA8FRLd' \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "cADsbWbq5cacPPAq"}' \
    > test.out 2>&1
eval_tap $? 309 'AdminUpdateRoleV4' test.out

#- 310 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'pBYeijhAP1mDG4nd' \
    --body '{"permissions": [{"action": 46, "resource": "k1jcQeFBKXW0TRld", "schedAction": 6, "schedCron": "QXgWYLdd7aXd29vE", "schedRange": ["m46a6jCPA5wUVuOF", "DfH71H0UEwr9WRQJ", "bTfrsfY4B7gwqm86"]}, {"action": 38, "resource": "rOJJve18T6ki4Gwk", "schedAction": 58, "schedCron": "26DxSEE0FTxSngbE", "schedRange": ["7lBIR6MbSwadQV7Z", "Mu8mUuodaVhZoxoY", "M19PPNmdKVwuBES8"]}, {"action": 98, "resource": "bPQViGlrgTxvWFLF", "schedAction": 58, "schedCron": "l3RnEsHQRdM76Nt6", "schedRange": ["zfwSII2yPevfEi92", "eYsjnYqsJOmdv2DU", "FkDnDWj4qtyzwavR"]}]}' \
    > test.out 2>&1
eval_tap $? 310 'AdminUpdateRolePermissionsV4' test.out

#- 311 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId '3Nf1jMqgNDC6OawC' \
    --body '{"permissions": [{"action": 59, "resource": "IMKSDkKGsesuU4V3", "schedAction": 22, "schedCron": "XfiTfmJqaNFB4otj", "schedRange": ["TGCyWZIiZahl1DQh", "Uk063fc4wxbYI542", "7ddANLW0x0yJgb6y"]}, {"action": 15, "resource": "v19SCMdJqmAV5YI5", "schedAction": 9, "schedCron": "njvK0Evzf9GxYoRi", "schedRange": ["K7aqDatCIZBs527i", "UtLwOi2XM2EGcmEN", "AHkTarf4uwRTZTto"]}, {"action": 52, "resource": "ALD8341onGplwf9r", "schedAction": 41, "schedCron": "iEfUzM5Pd64rOmYo", "schedRange": ["LhVPtiQEpAJ1kOJR", "VpArMpE1gGgDIWU0", "L0H5h8QlJ33lpmNN"]}]}' \
    > test.out 2>&1
eval_tap $? 311 'AdminAddRolePermissionsV4' test.out

#- 312 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'Lm0YE5ooDJmdcOzu' \
    --body '["qEkw7KC5rSoSls6H", "HiQRA96D2HPIJxR1", "nUlojcMsVQt9Ay3N"]' \
    > test.out 2>&1
eval_tap $? 312 'AdminDeleteRolePermissionsV4' test.out

#- 313 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'nDkFCAyfKOTlwWyZ' \
    --after 'XwpCLK2ca5PhJvuC' \
    --before 'nQBcTXlHBKsBEDZO' \
    --limit '61' \
    > test.out 2>&1
eval_tap $? 313 'AdminListAssignedUsersV4' test.out

#- 314 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'ba1BXWcVa1YuyeWt' \
    --body '{"assignedNamespaces": ["0orBezXu9zCd2nzy", "KfamlgL8YkdL8oud", "HATEEpWAw7Hic3KG"], "namespace": "G5fxnsjiTbW35GIM", "userId": "nmZybuS1Ns1txujJ"}' \
    > test.out 2>&1
eval_tap $? 314 'AdminAssignUserToRoleV4' test.out

#- 315 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'Wo9AhSPcBsFL6SGF' \
    --body '{"namespace": "IVIamPn8pYFKeIkO", "userId": "nP1b2djrEuC759hC"}' \
    > test.out 2>&1
eval_tap $? 315 'AdminRevokeUserFromRoleV4' test.out

#- 316 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["U5hX6F1t8tUr3zqj", "uft1u2Mj614m44v6", "nCs0tVfBffyAkov1"], "emailAddresses": ["uVMGFEZe3h0CaqER", "bNLGxer02wNJYHbb", "AAkr6mDpGbP87ARI"], "isAdmin": false, "namespace": "zy9WuCOZaso5SjJv", "roleId": "PFEYoKhi2eXtycX9"}' \
    > test.out 2>&1
eval_tap $? 316 'AdminInviteUserNewV4' test.out

#- 317 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "fd0fghSSw7TuvgNB", "country": "mlhkfMlUETqYN3T3", "dateOfBirth": "vkpXqRdEJ4Jx3xgm", "displayName": "kafz5tHaIXvnOXVN", "languageTag": "N8lDiRgSQ6giV0nN", "userName": "2O2QCSdi2AImLpjK"}' \
    > test.out 2>&1
eval_tap $? 317 'AdminUpdateMyUserV4' test.out

#- 318 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 318 'AdminDisableMyAuthenticatorV4' test.out

#- 319 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'npA1bwbLjcDu3fBP' \
    > test.out 2>&1
eval_tap $? 319 'AdminEnableMyAuthenticatorV4' test.out

#- 320 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 320 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 321 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 321 'AdminGetMyBackupCodesV4' test.out

#- 322 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 322 'AdminGenerateMyBackupCodesV4' test.out

#- 323 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 323 'AdminDisableMyBackupCodesV4' test.out

#- 324 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 324 'AdminDownloadMyBackupCodesV4' test.out

#- 325 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 325 'AdminEnableMyBackupCodesV4' test.out

#- 326 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 326 'AdminSendMyMFAEmailCodeV4' test.out

#- 327 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 327 'AdminDisableMyEmailV4' test.out

#- 328 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'NN0Q6ZSN6tMJJ37R' \
    > test.out 2>&1
eval_tap $? 328 'AdminEnableMyEmailV4' test.out

#- 329 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 329 'AdminGetMyEnabledFactorsV4' test.out

#- 330 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor '5pHkZTop9TmdV2FS' \
    > test.out 2>&1
eval_tap $? 330 'AdminMakeFactorMyDefaultV4' test.out

#- 331 AdminInviteUserV4
eval_tap 0 331 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 332 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "DnCp9Wfbuji3goel", "policyId": "4QVMdl59FYtg7LFc", "policyVersionId": "sAMEkNxqwA6ObHi8"}, {"isAccepted": false, "localizedPolicyVersionId": "TSa29pTeaJV5FY0t", "policyId": "FRd19dHVLg7PCImB", "policyVersionId": "Ml6wcmO8o24TOw3b"}, {"isAccepted": false, "localizedPolicyVersionId": "xwdcoTrplHWNxtDu", "policyId": "6g7lfssHosSzoBdL", "policyVersionId": "9vKbIHz5FqaAfYwe"}], "authType": "EMAILPASSWD", "country": "x5kJWnLlXSppgCah", "dateOfBirth": "SjD9kFPilUTDoYHs", "displayName": "ZdJUSYpmWPeZbXoK", "emailAddress": "mfjvTXeAkfWICukT", "password": "nmHB7fLNlMurIQB9", "passwordMD5Sum": "eEhO51nvFWZTfXjD", "username": "Rd7Pgq89KsCCHmIp", "verified": true}' \
    > test.out 2>&1
eval_tap $? 332 'PublicCreateTestUserV4' test.out

#- 333 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "leMYFx4rKA52z2Mi", "policyId": "LMomb9ZYXAiNd3m7", "policyVersionId": "6TT7phNrr786uIu4"}, {"isAccepted": false, "localizedPolicyVersionId": "v6mhrHcDiL4YrjcK", "policyId": "Q2rHyUrVNdBzMi05", "policyVersionId": "HlKd5G47003sy2VJ"}, {"isAccepted": true, "localizedPolicyVersionId": "6N6pDYsFBO6QYC0F", "policyId": "H34Se8ofDqodJmZG", "policyVersionId": "ev391qAPY5DGbMDU"}], "authType": "EMAILPASSWD", "code": "7PfejftSWax2bUSK", "country": "0YNDdh51DD1BOFsL", "dateOfBirth": "qnsrKnMods6bq56H", "displayName": "feaahLVhp7EvQDAU", "emailAddress": "OpByLXFVmbEwtqZF", "password": "KUDC2DWU6rhR4JaA", "passwordMD5Sum": "H94WssVFSnKOXyXA", "reachMinimumAge": true, "username": "Rz6cw9iMRj604sU6"}' \
    > test.out 2>&1
eval_tap $? 333 'PublicCreateUserV4' test.out

#- 334 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'aD5FPlEkJoozDoYc' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "0a3JFNmlC4eBVFzY", "policyId": "oNYRfiHtlBj1xXv5", "policyVersionId": "6NcTJIvcqnDUMXkO"}, {"isAccepted": false, "localizedPolicyVersionId": "JOGjNwbctN9UHT57", "policyId": "e0RA5Zq6GTJwJ8zW", "policyVersionId": "laYzc9twc6gehYsv"}, {"isAccepted": false, "localizedPolicyVersionId": "xO38eimBSTSLpfP5", "policyId": "GSQMxKnKUg73dceZ", "policyVersionId": "v44LxoL2Xn6uKo23"}], "authType": "EMAILPASSWD", "country": "JuwRlxHuI7QUwstF", "dateOfBirth": "XBbay09OMLjemnv8", "displayName": "FLHt4mQLsR8S20xh", "password": "86sPsGgbFcWGzlhA", "reachMinimumAge": true, "username": "nzq0UriZ70GQPQRS"}' \
    > test.out 2>&1
eval_tap $? 334 'CreateUserFromInvitationV4' test.out

#- 335 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "SA8GziL9TYEGzrjb", "country": "XxwjV4yTR5yC6ysS", "dateOfBirth": "rwEXHptliCeg7BXj", "displayName": "SZgN9StfqLT1Pgtz", "languageTag": "1sEaOPuQXVotdX5m", "userName": "GKlEejQGe1wFy3Ae"}' \
    > test.out 2>&1
eval_tap $? 335 'PublicUpdateUserV4' test.out

#- 336 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "xZrHAtSPJ6Fp7HHO", "emailAddress": "oaXJXFHy4CQSDqS4"}' \
    > test.out 2>&1
eval_tap $? 336 'PublicUpdateUserEmailAddressV4' test.out

#- 337 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "jlASnF1M2e1JztQ8", "country": "E6fKG1PrJtAUvIuz", "dateOfBirth": "lJXnM9DOXE65uw8a", "displayName": "Xi8QFbTFZ6xGK7Uq", "emailAddress": "v1lOkhpNfe9gZ0RI", "password": "x2JyOagx9rSOpSGh", "reachMinimumAge": false, "username": "f4vHDAAJupodre7R", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 337 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 338 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "DiUFYAGesGVb8wTE", "password": "lW3K5mUBZEColDKG", "username": "3JqGsGtDbxieLjjk"}' \
    > test.out 2>&1
eval_tap $? 338 'PublicUpgradeHeadlessAccountV4' test.out

#- 339 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 339 'PublicDisableMyAuthenticatorV4' test.out

#- 340 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'gXf8dLsVOcOx5R8r' \
    > test.out 2>&1
eval_tap $? 340 'PublicEnableMyAuthenticatorV4' test.out

#- 341 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 341 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 342 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'PublicGetMyBackupCodesV4' test.out

#- 343 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 343 'PublicGenerateMyBackupCodesV4' test.out

#- 344 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 344 'PublicDisableMyBackupCodesV4' test.out

#- 345 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 345 'PublicDownloadMyBackupCodesV4' test.out

#- 346 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 346 'PublicEnableMyBackupCodesV4' test.out

#- 347 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 347 'PublicRemoveTrustedDeviceV4' test.out

#- 348 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'PublicSendMyMFAEmailCodeV4' test.out

#- 349 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 349 'PublicDisableMyEmailV4' test.out

#- 350 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'eFYqbYXGmew3dtEK' \
    > test.out 2>&1
eval_tap $? 350 'PublicEnableMyEmailV4' test.out

#- 351 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 351 'PublicGetMyEnabledFactorsV4' test.out

#- 352 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor '1Cr8Y7koYTZVuYEV' \
    > test.out 2>&1
eval_tap $? 352 'PublicMakeFactorMyDefaultV4' test.out

#- 353 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"emailAddress": "JpgBSqQJi0zFqNk4", "namespace": "4ToIq5vutOuzovfN", "namespaceDisplayName": "qL675wFoxtAmb54i"}' \
    > test.out 2>&1
eval_tap $? 353 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE