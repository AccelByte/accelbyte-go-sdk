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
    --body '[{"field": "hMBDMnyPf59TbCYK", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["RspQoV0fjGHSAD5B", "xSUfCQ9AaAORw0TY", "fp3NpCC359q2d0jg"], "preferRegex": true, "regex": "VcnelbA9V1a0aXhl"}, "blockedWord": ["rXo7OFDg4bWEhs7X", "Bo88y8ah31KdL8jT", "JvMzE5VIAB7afFQH"], "description": [{"language": "FmwQTCTtOnyt3nxY", "message": ["pJLOyGLoRMoNvQGL", "Bywh1A2dQnNiVW33", "KOIE3mM7wi9MgraV"]}, {"language": "RLju5Iwu2BtS43k3", "message": ["opU9oorcKhRCsUS4", "wicZzpCqG4y3YJFI", "SScRknbvEH2RvQib"]}, {"language": "RdEilVPeFJe5Gyi7", "message": ["ZcD7ocSZrJGONQj3", "ef8C5d9EZBwvch5g", "cRAF8IsNwj7vqyhI"]}], "isCustomRegex": true, "letterCase": "qAq6WNDr4tmPOt6V", "maxLength": 89, "maxRepeatingAlphaNum": 60, "maxRepeatingSpecialCharacter": 6, "minCharType": 61, "minLength": 3, "regex": "bHNfOEC1iINITx0i", "specialCharacterLocation": "8eKawLByonvuaKxL", "specialCharacters": ["ZjjU9mXF38JXUKK6", "HYhi5VpKaVq09twz", "bvnLQhqewPgo4nOU"]}}, {"field": "6s5kfk9WaOwIGmfZ", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["lzAqvLBbImhSC4Pw", "ozVuMUWeKZxBYOcx", "dJDzX8xZn5XWlFcW"], "preferRegex": false, "regex": "m70xwouoNm857z4o"}, "blockedWord": ["ocAwqJizqKKKRQ5A", "ue6veOEeyAXNUIEp", "mc23SWrBvP9qZOTe"], "description": [{"language": "LsfcXCmRQdlyxsmH", "message": ["ukkgvVxmksoL0X2B", "vCGoRoaJtb2OYgO1", "GqbFn8jlhTNfdPCB"]}, {"language": "IK3gnuMWj8VHrRpL", "message": ["3iDvRGga7V0mE9BO", "U6p1NOOQExkvgOeU", "Hx53Rbk7lzDmIUf2"]}, {"language": "knqhA1hgh3DMBD5o", "message": ["8jYL0RZvojL953oB", "Tv9h2sKEwsNf64bw", "LRy1RUkpVJN53Vsx"]}], "isCustomRegex": true, "letterCase": "V0iScodJZtK2Dvl8", "maxLength": 42, "maxRepeatingAlphaNum": 49, "maxRepeatingSpecialCharacter": 97, "minCharType": 27, "minLength": 75, "regex": "wmxNBX9uuwj8Qlh1", "specialCharacterLocation": "fYKJer9Y1oSHJNuL", "specialCharacters": ["djQj334VbmwGcDYY", "hpQTzrcQv1Ofs1CO", "8IxJY6FqaWcOpTRI"]}}, {"field": "NbDzUygrnATulJBe", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["ogsCvvlTROwBHdtD", "c5Ozrp8acEtywypj", "6LkVxEKLVqm6zTcs"], "preferRegex": false, "regex": "O2TB95fSVQIvX6wu"}, "blockedWord": ["0M5XgLIFFZAJFfVN", "h8mu5doadlvKLBDm", "sUkjAcVA3woWVP7A"], "description": [{"language": "BEhNfJvqodX0weHP", "message": ["jQHjh2vkdaFUqWqu", "I9xxXCvGxuN7NPO4", "SvRKVFzp2QxgmPre"]}, {"language": "hinuJKd17SvpmoXr", "message": ["N4IcaLKhorXnHqgn", "M1g5EbcMQulvtTwJ", "Z752PgDajCe4e4vj"]}, {"language": "7HSRRKxtyY8sBfzX", "message": ["75dPsbPmDwXoxyv0", "ENnNQ6kQKIamNuEM", "Rs4YqNVWMExbBUfh"]}], "isCustomRegex": true, "letterCase": "ISiuIerlBSWtLQKT", "maxLength": 26, "maxRepeatingAlphaNum": 82, "maxRepeatingSpecialCharacter": 29, "minCharType": 46, "minLength": 58, "regex": "Rc0wppK18VKyWx62", "specialCharacterLocation": "WwrUzUbw4CUfarat", "specialCharacters": ["uua65cCSO2M1G79u", "DDdsNb6OKBoCHohK", "X0PQbhfgu22mx6qv"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'DsFgwRlwZ5hp5ClP' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'UXOIK6im6NV9u1FN' \
    --before 'SEY8rStmb9cDNV9d' \
    --limit '12' \
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
    --body '{"ageRestriction": 44, "enable": true}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'Hb3FtxZGVUF0JKmt' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 36}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'cECcblQAVKc2s7IE' \
    --limit '54' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "HHd7JBXXwEzShQYj", "comment": "0MQuRXRDazsbfwa1", "endDate": "G5asNMdAhKrctv3d", "reason": "1nMpn3btwgByGaKF", "skipNotif": true, "userIds": ["qAMoCSR5VnC6yJzj", "P2gbFYu9MAoU4njg", "1T0UfJFBEYYzenAP"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "qkW19he3G1kMvqsn", "userId": "KFJGEY4kaqfH4hk8"}, {"banId": "Wn4cheO5H1fHD7bW", "userId": "qR5KYSVgsy6ayxIZ"}, {"banId": "lEyCYusmqehGcbie", "userId": "7PBMAZWjxFvwmaN5"}]}' \
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
    --clientId 'ywOQfSBROedJpnhd' \
    --clientName 'Myy3N0bl2MZCVmXr' \
    --clientType 'LCCkORIaQmiQeO8M' \
    --limit '85' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["7yL5Z1GoX8y7w9fj", "abGXyHDMGDhKfrhk", "5H8yIAvDzObGT8Hs"], "baseUri": "O5VmJffKpPMRlJaU", "clientId": "AIDBJZ7j7Pjhq5k5", "clientName": "rNlb7SRGthNKHEft", "clientPermissions": [{"action": 61, "resource": "9YQD8fGcGBnLaGzZ", "schedAction": 24, "schedCron": "PHzrR1PJWNMg517L", "schedRange": ["HisNmz3bspCfgUIH", "nHYzMYvhf1lMeW2r", "rpqlzcUerqe6zxfN"]}, {"action": 39, "resource": "lVY1ETT8sBGLV8QD", "schedAction": 57, "schedCron": "yNaKAdozQeCuz2Md", "schedRange": ["1pMpXbNi5E8L27lx", "XQajTEsbAf1LgUMQ", "6ha4NZ087oYIdV6L"]}, {"action": 18, "resource": "k7181kBBGNHlVgt1", "schedAction": 65, "schedCron": "QaPsNOHDQiAZOts0", "schedRange": ["w8SeWanqZWUoVzBT", "m3siirlttTR2jf7X", "RKxAYtPa05wPOMSq"]}], "clientPlatform": "JNj0SbcubQl4YUKs", "deletable": false, "description": "HY761TYQLt1b7Vvt", "namespace": "xmOfv2P9az6MO5kA", "oauthAccessTokenExpiration": 7, "oauthAccessTokenExpirationTimeUnit": "cZiXV5bZI8U7pQAg", "oauthClientType": "xix17wbOtx3GPYle", "oauthRefreshTokenExpiration": 68, "oauthRefreshTokenExpirationTimeUnit": "OhckC903A6upUkm3", "parentNamespace": "XbRRuxXhuu710RXL", "redirectUri": "MktVdsdMq46kLpOp", "scopes": ["azWKjhnhfuCchQwY", "Q4n36ufYyf0TW3hY", "UdpVDT6X0cD8vGFI"], "secret": "eSMlUBMKaKB3UCa8", "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'ZalHlnMieehfva0h' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'HKt8We8wN8nBeNWW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'mVReEJUVoPFStXsX' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["TpE1GJFFIrbBvJHk", "2DBTDQ4rtBl20pBT", "hgbP46oyLdjK5i1e"], "baseUri": "rS2cWDx9nednbj39", "clientName": "W1UCdY8lvj9HgFCE", "clientPermissions": [{"action": 60, "resource": "W7YYtJRRwpXnTXdb", "schedAction": 21, "schedCron": "k2KpmtOg19S3VGAn", "schedRange": ["Qx2NXkC7GJGEm4yu", "ZcJi7PKyDJ9OGARI", "G7vTLjO91UiQHfPL"]}, {"action": 31, "resource": "Kti3Vx27SNcfMVSx", "schedAction": 39, "schedCron": "s8pGXg1IdAFcEM29", "schedRange": ["FypnwPZVj64xhsXo", "3g2A1bBzSdICTHfk", "QM6MRLLuCSdM35qI"]}, {"action": 11, "resource": "Oaz54kSpDNG43Xee", "schedAction": 17, "schedCron": "mAxScAs5wxMSqYqd", "schedRange": ["CDOs77WZD0sTWKjz", "KqbMFLvjFZF3D94X", "ISyKaK1dRVmYWLCB"]}], "clientPlatform": "9jInwJQsb6Zt3CBc", "deletable": true, "description": "SXNM0bKtZlFo8R6W", "namespace": "oVDudRaqd7ARXTWw", "oauthAccessTokenExpiration": 61, "oauthAccessTokenExpirationTimeUnit": "GflOXLFAkpgpztSR", "oauthRefreshTokenExpiration": 99, "oauthRefreshTokenExpirationTimeUnit": "FfqvzFnVEyoCgH1v", "redirectUri": "rLgUtraanuGpUrCP", "scopes": ["uAfiur4cp94ZbMb1", "UWhHZTMOJSr8cCI0", "QKlEFxGB7IjOeIcf"], "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'NZBqWOvm4CYDGQ0e' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 28, "resource": "g5esvorKEZVeuCya"}, {"action": 21, "resource": "p1cJMhgxKa9Y9IAD"}, {"action": 43, "resource": "qpZxL97sAgcjXLTI"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId '3tVrnkYo2tjcBU1Y' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 8, "resource": "KRNJZNTANYaLsnbE"}, {"action": 28, "resource": "059vze4JApqPOk9K"}, {"action": 0, "resource": "qM1aokhqBVY7JDwf"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '97' \
    --clientId '2l2c78JsL9ht4TDL' \
    --namespace $AB_NAMESPACE \
    --resource 'uxsuGY1NoS83L6Yp' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteClientPermissionV3' test.out

#- 128 AdminGetCountryListV3
samples/cli/sample-apps Iam adminGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    --filterBlacklist 'false' \
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
    --body '{"blacklist": ["IkkEAD8ABPX1J4JZ", "2S3GMN1cQM3bcO7p", "3Sc8wRQfFrHaujTw"]}' \
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
    --limit '26' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 133 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 134 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'HM2kQksfOoKA20GZ' \
    > test.out 2>&1
eval_tap $? 134 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 135 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'jAD3lkABjTjo12rf' \
    --body '{"ACSURL": "WUBeHEgpKVjrbL8v", "AWSCognitoRegion": "qtrlmyPFaDeTAAF4", "AWSCognitoUserPool": "RY2b1JM0JhMs3dOU", "AllowedClients": ["5PGRYF7aKYn1A3sr", "jKfsiLn9LieYVvGN", "ZRfRPFov2y2wAhkt"], "AppId": "GLUMRyHJl4tGXgZb", "AuthorizationEndpoint": "sA1phzwhRDb4j4aA", "ClientId": "MHHSp7eEcIbOa6RK", "Environment": "PKJ9EwVv9o0BdZNw", "FederationMetadataURL": "jfvSOWRkRSOZUZCC", "GenericOauthFlow": false, "IsActive": false, "Issuer": "8Vu7iqUz36kN9VJY", "JWKSEndpoint": "WGxDmGAQwIKwBnc9", "KeyID": "mgmYc5o9HfEEL9Lf", "NetflixCertificates": {"encryptedPrivateKey": "TG1mifeM9o8UcJOx", "encryptedPrivateKeyName": "19B29RT84HOf4YK2", "publicCertificate": "BnlXY7MY9HIL55LG", "publicCertificateName": "HydjAL2ClZVy5rZ4", "rootCertificate": "P4QBWhVyEuxaI9NF", "rootCertificateName": "3bRApvSP5A3CLLhr"}, "OrganizationId": "kSWK7HE4VosAUrE8", "PlatformName": "vG7Z0iirXuBzLPYn", "RedirectUri": "wkcigY3gHSzRBSAy", "RegisteredDomains": [{"affectedClientIDs": ["yncGCDiKW6d39vRO", "oRMBHHpdV7CEB95C", "UA2uUd9Ef9gbiGc4"], "domain": "2tCFBmeXLGqQUTFu", "namespaces": ["tl0m4NAQZtB3bRCa", "Ko7nhggHYflzwLMU", "yBBNZCdYvS5IrS1b"], "roleId": "JvgBQLKL88lF2gCK"}, {"affectedClientIDs": ["rk0eQS2S8BMVN2r9", "06gKiobmn6aEEBbr", "ad8QTOfcH4EPzgnd"], "domain": "EHXWGOxmQhKwBBU0", "namespaces": ["Fx3t7rhTOQf0g2yk", "MtI2l0GfSFmojidM", "PIDKNzkeCVQ75ENV"], "roleId": "v8lkucjxk2Sxk1GK"}, {"affectedClientIDs": ["N3cYLcyG9quIwXBZ", "vR3aiLvpBmqqp4ff", "JosCqQAzadtcYHS6"], "domain": "UZdM7CwWDyHOkbOF", "namespaces": ["mPJvsO2E7A7tyyP8", "mmRzjRsdFj5ClIcS", "1e7Veh4mL1zE7lT0"], "roleId": "BOsrBJalI448oD20"}], "Secret": "ZcVXVPfCBwEV6qlo", "TeamID": "q6x2msCaKaZaJC7b", "TokenAuthenticationType": "UwVJjcItKwe2jU92", "TokenClaimsMapping": {"c4HKHFcwmGukDMMp": "mIstjXih0ieeTESm", "1xXXfRl4gT0m5kgU": "6odUnwg9JTZzK6iF", "6hcLpeD3mWaCXYOK": "wMQPD0kYTDAjXeOH"}, "TokenEndpoint": "r1qDM7j95T8GJx37", "UserInfoEndpoint": "AefkBEmAuc3INPuo", "UserInfoHTTPMethod": "GBwvjq147ulcjfHm", "scopes": ["YX7i1DNT7IVBvXCc", "ZKBVeSsBeWDCT2ZS", "rWEvf7724P2POjZP"]}' \
    > test.out 2>&1
eval_tap $? 135 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 136 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'AX8As6kxTs1dKc7O' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 137 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'PeFQBO0dptawkiLc' \
    --body '{"ACSURL": "btF7cNeDFXycQVPt", "AWSCognitoRegion": "lf6y6SGSZlZEKdWm", "AWSCognitoUserPool": "LznwLGCNMei7aqma", "AllowedClients": ["6cFEteqRIlkSjSEz", "mzJ4amKnTpnywNjT", "2d2q1nubEc904CzQ"], "AppId": "kOeZurvnF14os3OX", "AuthorizationEndpoint": "JvFdB4DDwJOlIZ92", "ClientId": "Ssvizl4IWFYfPIO2", "Environment": "FxvMhp3ojCWgkHqN", "FederationMetadataURL": "yoWSrlCgqpqTLMiR", "GenericOauthFlow": true, "IsActive": true, "Issuer": "pYPOpJ3iFVk3gczV", "JWKSEndpoint": "QE7LIAMy9vF1BNZL", "KeyID": "j5VS6Kz8lEBQc6wN", "NetflixCertificates": {"encryptedPrivateKey": "cFyPL55C0EdrbWpG", "encryptedPrivateKeyName": "ov2xZy36kBpXIBxf", "publicCertificate": "ITAkZF32sxipCGiG", "publicCertificateName": "5FmNJ6jpmsBL70fu", "rootCertificate": "gmSEnFfvej8mrwix", "rootCertificateName": "zJAHobSJ2Tgz6uNl"}, "OrganizationId": "rpl6SKf2914TrYlG", "PlatformName": "N5PZnTGDhu8PfMox", "RedirectUri": "sPyaj6eXZ57qd4LX", "RegisteredDomains": [{"affectedClientIDs": ["RWsWq4Inl42XbZed", "peqLSmLwXxLJLfCE", "h7DsYqcf9iqZBJqL"], "domain": "O04L62Sli3e5pihi", "namespaces": ["ZRYY8JfltmvU72Zb", "psFbujG9laPso9uO", "y5Ec63TaE4DqO9gY"], "roleId": "R2htEcTE5faDVubv"}, {"affectedClientIDs": ["Jw9ti7rzve8XDEoS", "EeuWSG91yRhjVSdJ", "C8fYeThw3u1LH0B4"], "domain": "6PmnAQLQdPX7ucJr", "namespaces": ["XqGl64jItEoOH8mO", "64gN6GnvpqVI7ddX", "oIo1LOBYqCjuOxoc"], "roleId": "TVeTLsYQgiV8BwtK"}, {"affectedClientIDs": ["JLfYn0l94FODp13I", "Ae6o4O8MCedsNlGr", "aEnoqylhHZ589Y0m"], "domain": "ek0GccTlgDEBegzp", "namespaces": ["cKPIvTBX0I30UknV", "XbFJ3jQgJUi1UZRH", "CwNuwUrHKFaIrN3y"], "roleId": "r4qM95977rh5y5A1"}], "Secret": "nZEoxsADgCosObWr", "TeamID": "yJUJnwyHCe1QAcZD", "TokenAuthenticationType": "V3FcjFGpODzt3IAM", "TokenClaimsMapping": {"6XNx5TExuxrwhZ3u": "ewb2jchsRFGdwsXe", "LGKNkaTjJ1RCTx9c": "o8gDPJtlrHeg6jWC", "9RNCF8Uyu8sz1rJh": "Mh8tOQGbW5lidSvo"}, "TokenEndpoint": "0r2c2vkqgYypOBVS", "UserInfoEndpoint": "HV2DjcgaHYeYYvlz", "UserInfoHTTPMethod": "reHFpQQgQMpVdVFp", "scopes": ["R5Ivp28vaYIYG9P7", "ATSePnrRAzmePKw1", "F9hTs4zUNJTxoLSr"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 138 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'CxZlwObs2UULVGvM' \
    --body '{"affectedClientIDs": ["scGXdxJdrxpBr6dH", "LrpuPFrQRtWvZhrP", "Q0J2q9pVMqoBwgMM"], "assignedNamespaces": ["84kgI7arl6bsh52D", "FG4jXDwv5uiKyo7r", "MyFC1LytqIocRio5"], "domain": "iREw66JoN4Dmv9FI", "roleId": "ba3BOhxBO1zndQKl"}' \
    > test.out 2>&1
eval_tap $? 138 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 139 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'hifqWbk0OS87m5Ct' \
    --body '{"domain": "SBkz8Hi2g5Auna3D"}' \
    > test.out 2>&1
eval_tap $? 139 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 140 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'o3GxsbWCImxmoOy6' \
    > test.out 2>&1
eval_tap $? 140 'RetrieveSSOLoginPlatformCredential' test.out

#- 141 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'fMtXJz6cz0edbnvu' \
    --body '{"acsUrl": "Dg0mNivgjushDyBE", "apiKey": "0av5bt3wHNWQyQz6", "appId": "t3Ii8P21sYd1ZM7R", "federationMetadataUrl": "WBLyGKlJqqXrf6No", "isActive": true, "redirectUri": "ihnQ8R4UljcJwrZj", "secret": "ZYH9horlL0Au0tQu", "ssoUrl": "7PO7r0PYjaufH2QF"}' \
    > test.out 2>&1
eval_tap $? 141 'AddSSOLoginPlatformCredential' test.out

#- 142 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'oNSJt6BsP50jWL19' \
    > test.out 2>&1
eval_tap $? 142 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 143 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'j2yFYdwp8qeNJeM4' \
    --body '{"acsUrl": "AbeX8AHcbubiNuET", "apiKey": "mmQqbthOPNozOjVu", "appId": "jZh5HTgcYTSIU9pI", "federationMetadataUrl": "gSx95HQn3rwZiFnp", "isActive": true, "redirectUri": "WcrBOfgo8PR2yYpW", "secret": "rtBXTMlYgIoosN7d", "ssoUrl": "kswuXioMawFYGjCn"}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateSSOPlatformCredential' test.out

#- 144 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'hZRGjR8uBAQVdBtM' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["fcLev4lpZfVmXnq3", "JfeIjK10IgovjAU7", "F2RQE1QBtCcckLGX"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 145 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'DUNia8CRB3iDXmUu' \
    --platformUserId 'J0T4xHARJhA7Tctn' \
    > test.out 2>&1
eval_tap $? 145 'AdminGetUserByPlatformUserIDV3' test.out

#- 146 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId '6YmugytJ6u29jkLN' \
    --after '68' \
    --before '53' \
    --limit '91' \
    > test.out 2>&1
eval_tap $? 146 'GetAdminUsersByRoleIdV3' test.out

#- 147 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'bzr6izBb50zAzaXA' \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByEmailAddressV3' test.out

#- 148 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'hiKRQqijU1TeHZyH' \
    --body '{"bulkUserId": ["cHxm2exngkRIRbR9", "qQrKDQq2NgtsnMQ4", "Ns0spinIND12rZa7"]}' \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserBanV3' test.out

#- 149 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["q3AvfHH5cSjaTNSB", "QdWUnOE7kPs15Djp", "Tjx2HiIHzkbrzFGd"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminListUserIDByUserIDsV3' test.out

#- 150 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["sVXi7uNdClRJtv2P", "9QFCdOW88CQJKxGY", "6EkkZouxecXKFfSX"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminBulkGetUsersPlatform' test.out

#- 151 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["HhWkAANE1f0qejp9", "mSnSqV4lWfI1MVzu", "S7obJyu5XofPIHQU"], "isAdmin": false, "namespace": "ugWrLPKH7h3Df6Xx", "roles": ["nuaKs0iQQp84cVEh", "zTfLTcOhmLcP8PCY", "xMDIwyAls44H7akQ"]}' \
    > test.out 2>&1
eval_tap $? 151 'AdminInviteUserV3' test.out

#- 152 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '48' \
    --platformUserId 'RCd459roqBxWUaVy' \
    --platformId 'LlVu60hilU9ZsmML' \
    > test.out 2>&1
eval_tap $? 152 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 153 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUsersV3' test.out

#- 154 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'WBd0222D1T53orDp' \
    --endDate 'yCWzK1Wd3czJ01np' \
    --includeTotal 'true' \
    --limit '29' \
    --offset '97' \
    --platformBy 'Q4HpewLoydxrXDjH' \
    --platformId '6yuQolNFe4EpLRTQ' \
    --query 'LIy0BYgAYxHEcynN' \
    --startDate 'MskSkjwPFVq2cDAa' \
    > test.out 2>&1
eval_tap $? 154 'AdminSearchUserV3' test.out

#- 155 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["TUkRkTDJhdPvtZnl", "tU7r01PNAhZ8XQlV", "aWgSTVffFrsJhClx"]}' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserByEmailAddressV3' test.out

#- 156 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'L2bKSw96tCMREA57' \
    > test.out 2>&1
eval_tap $? 156 'AdminGetUserByUserIdV3' test.out

#- 157 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'c0opd8AL7gYnPesi' \
    --body '{"avatarUrl": "Acwr8ZXs3vpeb5UD", "country": "5QV7drMlzTt0zLG0", "dateOfBirth": "BaxsqIyjPVy9jRpN", "displayName": "dPOTkJoDk7eqeWiD", "languageTag": "YevjGIY1DfMsqqol", "userName": "FCF7iRClJ0AA4TzJ"}' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpdateUserV3' test.out

#- 158 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'aPkhkYTIEcyv1PeA' \
    --activeOnly 'true' \
    --after 'URpYnJVyV0A0wHL5' \
    --before 'Y5gfVGR3Li6BbYNv' \
    --limit '92' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserBanV3' test.out

#- 159 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jyuWrD2yoviSUMrv' \
    --body '{"ban": "0byzT4vO7hXHovMA", "comment": "Q63QvzJuPbECLrX9", "endDate": "SOlH2gHwzKmSLdu3", "reason": "cJHn1CxveZOIqXFT", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 159 'AdminBanUserV3' test.out

#- 160 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'bjOYA5VQp0qSzs1H' \
    --namespace $AB_NAMESPACE \
    --userId '5Vm3p3dLmaiEnIQe' \
    --body '{"enabled": false, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserBanV3' test.out

#- 161 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId '26867gIQgrkQe40Q' \
    --body '{"context": "yFKAy6L66eirmVZ5", "emailAddress": "rFjWjohOhBonyMJF", "languageTag": "9I0kpZ8PTeiXkbRW"}' \
    > test.out 2>&1
eval_tap $? 161 'AdminSendVerificationCodeV3' test.out

#- 162 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'seyXJbqWKN6Kd0pl' \
    --body '{"Code": "zPZHh9EFhdNaiR1b", "ContactType": "KUXJdlgkLK9XKQJN", "LanguageTag": "pOBmaJ9ARpJmfiPW", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 162 'AdminVerifyAccountV3' test.out

#- 163 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'fK9leMgJ2SkXmhOC' \
    > test.out 2>&1
eval_tap $? 163 'GetUserVerificationCode' test.out

#- 164 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 's5JSfUvXf4oP5V4I' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserDeletionStatusV3' test.out

#- 165 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ToUXSWO0qIDKzF3e' \
    --body '{"deletionDate": 95, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserDeletionStatusV3' test.out

#- 166 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'HDpFnfEZwlMcwz4R' \
    --body '{"code": "eISxbMa3UlunftSH", "country": "AebBtVXwYhJrLeI5", "dateOfBirth": "96b6DCmzKzdg4yf5", "displayName": "CMlXAVnFPZ20WcyY", "emailAddress": "AghapU6qJPxAFZAK", "password": "hU05vgotrjTkZmnK", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 166 'AdminUpgradeHeadlessAccountV3' test.out

#- 167 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'n5Yjax59ngQQIkUm' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserInformationV3' test.out

#- 168 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'I59uPdluPbNREAXx' \
    --after '0.3992490055075849' \
    --before '0.7830412988636024' \
    --limit '68' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserLoginHistoriesV3' test.out

#- 169 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Liksrq0MXvinIHYg' \
    --body '{"languageTag": "uYbT6bbREOQzkjMU", "newPassword": "BDi3dCxybM9CQ45z", "oldPassword": "MNAt3fyny2d32UmH"}' \
    > test.out 2>&1
eval_tap $? 169 'AdminResetPasswordV3' test.out

#- 170 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'E3lVC5ONV2HXr4w9' \
    --body '{"Permissions": [{"Action": 27, "Resource": "XcuCyhQ18XSotFoA", "SchedAction": 90, "SchedCron": "NDr97cOX7Rd6SFsG", "SchedRange": ["83J8LLAUquCkA93z", "E7qkYMv8A1IE8Mz4", "QqkOIyOYwDazZKei"]}, {"Action": 88, "Resource": "Fap9pUxrVkpxFLmX", "SchedAction": 45, "SchedCron": "iSkUBaLZDGWuPeZQ", "SchedRange": ["xMU79POR0QmMgbE6", "W3Cg4FHwF3CkSEtj", "fC9ctCr7YS1qobcb"]}, {"Action": 41, "Resource": "1Pl4hnoERsJKYTro", "SchedAction": 67, "SchedCron": "Bb9a6Pd4fV33shx1", "SchedRange": ["eOXPLIHhPmjDS67F", "rUV9LgSJRlZQaQS3", "O3dimVPavrqBMtx8"]}]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminUpdateUserPermissionV3' test.out

#- 171 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bzj6dv8W6PYYe6aj' \
    --body '{"Permissions": [{"Action": 88, "Resource": "aBD4SuRi7ErDiOmu", "SchedAction": 69, "SchedCron": "JD4rcnfxwUIPMdNE", "SchedRange": ["uOpct8ALkPmzRz6Y", "6tJhPFgPlBcBwNCD", "3UhMml6l4jxIFwEm"]}, {"Action": 39, "Resource": "htg9k1J7Q1PTfKPr", "SchedAction": 82, "SchedCron": "ZUie84jtP9yLsEve", "SchedRange": ["zNIyEvT8TbZCyKRe", "gSqvPaLA3wyz2r60", "BUgKI0neaAo4mQAJ"]}, {"Action": 36, "Resource": "LkKo5hCHJbA98Oad", "SchedAction": 43, "SchedCron": "QrAYZFivuqfsfKeT", "SchedRange": ["r5FmwbY0XEPvp0N1", "SyovaGToBjtueqki", "5c0pqxiyuH0KsGDN"]}]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminAddUserPermissionsV3' test.out

#- 172 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId '9uaRFD1Gx9PZ1xDU' \
    --body '[{"Action": 32, "Resource": "sEUSJA3ebFOaJZ5E"}, {"Action": 37, "Resource": "R7ivqYyQYYqSRRpR"}, {"Action": 84, "Resource": "EZEcWyVUq09beSCw"}]' \
    > test.out 2>&1
eval_tap $? 172 'AdminDeleteUserPermissionBulkV3' test.out

#- 173 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '79' \
    --namespace $AB_NAMESPACE \
    --resource '4n2YClOpkz2c4Ii1' \
    --userId 'lDyZJdcBlnlvDMzX' \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserPermissionV3' test.out

#- 174 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'e6YHsACQsIKc4YFb' \
    --after 'BWohRfwxJP2fxXT0' \
    --before 'o2h1NOCxgHDx52h4' \
    --limit '62' \
    --platformId 'EpOugi3HxdmqUteB' \
    > test.out 2>&1
eval_tap $? 174 'AdminGetUserPlatformAccountsV3' test.out

#- 175 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId '9t95RbzwBa2221on' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetListJusticePlatformAccounts' test.out

#- 176 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'kLqty2AxqwEVwNCZ' \
    --userId 'e5uglxjRai22Y3aA' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserMapping' test.out

#- 177 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'WVJIUTGOkMYIw7PC' \
    --userId 'nryMutenFcXQC9Dj' \
    > test.out 2>&1
eval_tap $? 177 'AdminCreateJusticeUser' test.out

#- 178 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'h6POGdv2gcBuIgnu' \
    --skipConflict 'true' \
    --body '{"platformId": "pJSZRBdwZmZJVZav", "platformUserId": "fiOTARDo8f954Tou"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminLinkPlatformAccount' test.out

#- 179 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Re9zYwbqrMsEGUs9' \
    --userId 'mINEHgml1fDm2Z6S' \
    --body '{"platformNamespace": "Nnr7knp88r4Ji5v4"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminPlatformUnlinkV3' test.out

#- 180 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'hi7iLubHSdo0tNQ6' \
    --userId 'ooC4LlIA0Dni6cJS' \
    --ticket 'DSm3bXo9BTskgwAz' \
    > test.out 2>&1
eval_tap $? 180 'AdminPlatformLinkV3' test.out

#- 181 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId '4vdrCzO9RTCg9qLH' \
    --userId 'D1zYAeHn4EKm2K1y' \
    --platformToken 'e69UWoPepHh21qRw' \
    > test.out 2>&1
eval_tap $? 181 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 182 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'XrTJjuAIte2qSNpv' \
    --userId 'zURFkiJgq5eh8IwG' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserSinglePlatformAccount' test.out

#- 183 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'm4wCChEIGsYqnwob' \
    --body '["LZyoBUnSkfyi40rL", "2N177MT30pLn7JN7", "H0NoTPkQszshkr5z"]' \
    > test.out 2>&1
eval_tap $? 183 'AdminDeleteUserRolesV3' test.out

#- 184 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FvWL9LRS7apMXXD8' \
    --body '[{"namespace": "G78iLCV6wqRolrHE", "roleId": "QpV2ctTVmN3PfZsN"}, {"namespace": "fxoUH6p13ygAh0xD", "roleId": "QRAogp0bLKdHhVCv"}, {"namespace": "0ZatZ039WANuwoo6", "roleId": "Dkav47NQeF1tNzKA"}]' \
    > test.out 2>&1
eval_tap $? 184 'AdminSaveUserRoleV3' test.out

#- 185 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'PQCsEsQJ98V6OIbJ' \
    --userId 'YfGPFZWj1TUO6lfz' \
    > test.out 2>&1
eval_tap $? 185 'AdminAddUserRoleV3' test.out

#- 186 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'TOuLKw16gYLxe7yS' \
    --userId '2wPXCY7GusvJRO5T' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteUserRoleV3' test.out

#- 187 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '2QeooQar1E1ZXH6z' \
    --body '{"enabled": false, "reason": "fvkaYNxzxwfL2JOa"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateUserStatusV3' test.out

#- 188 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId '4uTlBjqE4bDYHUUj' \
    --body '{"emailAddress": "RNWTXNCWdKsObGDh", "password": "hCcqBwOHvlccfXcR"}' \
    > test.out 2>&1
eval_tap $? 188 'AdminTrustlyUpdateUserIdentity' test.out

#- 189 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId '7BfMs7cXC6HIRsb1' \
    > test.out 2>&1
eval_tap $? 189 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 190 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId '12YCzis4x0OukarU' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "QNwwVg5BQBDvm0xC"}' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpdateClientSecretV3' test.out

#- 191 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'df8hZD3Cc2zmCQvu' \
    --before 'qkSbJ7Frwu42kTxe' \
    --isWildcard 'true' \
    --limit '27' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRolesV3' test.out

#- 192 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "managers": [{"displayName": "XGLUsvNQ8A2ju4yH", "namespace": "7IkFqmoPzkyKo0h2", "userId": "apCODrCpXrGXctB4"}, {"displayName": "TC6nc2OeQxlZrgm8", "namespace": "6aCzCor0mXuwJHoD", "userId": "jkPI83nGR3jvrm06"}, {"displayName": "03JAHRRcThWyOF0f", "namespace": "J6NutqwowvxwTd9N", "userId": "6Vp8XGfvXaiaSiOh"}], "members": [{"displayName": "SJcGzvQNUYTWV0wn", "namespace": "09vM8HHOqXAwXq4V", "userId": "sPq33Bu3SDqfSNbv"}, {"displayName": "70eXURWgVpqMHwik", "namespace": "7Y32O360nxy9MlmS", "userId": "BUnYRiZAqMICPr06"}, {"displayName": "VouRGGcv9hlpTFsh", "namespace": "rSSdmTz66l460KSc", "userId": "p2dVf7oWCCGvrNLp"}], "permissions": [{"action": 85, "resource": "AUC4TGN1L7PYloi5", "schedAction": 85, "schedCron": "ofPGwtDy9ZiP2YSg", "schedRange": ["LrSjFJhTj2YCiLjB", "M6ndnpwS81785WtS", "Eybgvh93o43E0e8r"]}, {"action": 56, "resource": "sWUS4QvM42oaJVL8", "schedAction": 85, "schedCron": "hbvTVM1iJfIXgnII", "schedRange": ["BAqWw7QKRn7mpKfX", "bZcNQPI8Z8EmS4EE", "LC4QmP0IgEm6hdK9"]}, {"action": 50, "resource": "DAb21GjgGejimBEV", "schedAction": 36, "schedCron": "7FmwutVsu5EXf8JK", "schedRange": ["KH9FeEPrpMKpdMUR", "pF6w1yDTvOAtKxeH", "8EnkrDuYy14PmTCH"]}], "roleName": "bdXUPj7Jg9mVgDEk"}' \
    > test.out 2>&1
eval_tap $? 192 'AdminCreateRoleV3' test.out

#- 193 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'Vli8AhgWcO9dwwzu' \
    > test.out 2>&1
eval_tap $? 193 'AdminGetRoleV3' test.out

#- 194 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'AYzbdiiv8XrBJp2R' \
    > test.out 2>&1
eval_tap $? 194 'AdminDeleteRoleV3' test.out

#- 195 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'N617sgdYsgZk2SSE' \
    --body '{"deletable": true, "isWildcard": false, "roleName": "yNUzfuzDPUbmtECG"}' \
    > test.out 2>&1
eval_tap $? 195 'AdminUpdateRoleV3' test.out

#- 196 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId '8AklgzgEnPmnvWQW' \
    > test.out 2>&1
eval_tap $? 196 'AdminGetRoleAdminStatusV3' test.out

#- 197 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'WNspo6l6bjJoFJug' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateAdminRoleStatusV3' test.out

#- 198 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'wYsCOoexdsu9mVjs' \
    > test.out 2>&1
eval_tap $? 198 'AdminRemoveRoleAdminV3' test.out

#- 199 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'Y73dkXOax5JZINA6' \
    --after '2kSFIQ2kpgfIS8yK' \
    --before 'wRAgNqsI3NT74gVg' \
    --limit '44' \
    > test.out 2>&1
eval_tap $? 199 'AdminGetRoleManagersV3' test.out

#- 200 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'mPUIvWynvrgeCutB' \
    --body '{"managers": [{"displayName": "7Rv5Ra1upoQJJyrs", "namespace": "RYcjhAMCMJbK6J4H", "userId": "o9MPUmJE5whJyjMV"}, {"displayName": "wtVbZE7BE1aNQoM3", "namespace": "3rku4tH9vxKkW1ep", "userId": "hX6GdjChNlV1KmyA"}, {"displayName": "wVn1CdyEvELFDdTi", "namespace": "feu0mQEBGstXWtoy", "userId": "n7CSYiXutCYEkd50"}]}' \
    > test.out 2>&1
eval_tap $? 200 'AdminAddRoleManagersV3' test.out

#- 201 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId '2xV5SMDR72zVKKpC' \
    --body '{"managers": [{"displayName": "dSQjFvlPiwozWB1N", "namespace": "MOl2F7HtoQsWqIi4", "userId": "R8gVcBedfAYcGxMu"}, {"displayName": "7ZPOVgNKfBu17eM5", "namespace": "bbHtutNozZP2iUCY", "userId": "Vt9r43Nh4BnImPls"}, {"displayName": "55BJskwEA5T1sR3a", "namespace": "s8O31TC00C0dq8mi", "userId": "03o3qVLm24zHyUGi"}]}' \
    > test.out 2>&1
eval_tap $? 201 'AdminRemoveRoleManagersV3' test.out

#- 202 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'QgzTsFL3LIzDRQ2i' \
    --after 'dWR2gtjrooBkwHno' \
    --before 'amOfZqcZM899KNzB' \
    --limit '25' \
    > test.out 2>&1
eval_tap $? 202 'AdminGetRoleMembersV3' test.out

#- 203 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'BUhbFCVLeMUXiD7Z' \
    --body '{"members": [{"displayName": "TUkEkgfnh2cGMp7Z", "namespace": "IwDUuaMdrqSh4irM", "userId": "0xTqVE3Ft1Q9Y6aj"}, {"displayName": "aeZwF9lXUN3qgirD", "namespace": "883pLCvtidvVaDru", "userId": "8zHKmCS8WMno0TIK"}, {"displayName": "VHxTnUoWkmj7sgyc", "namespace": "EYivQti3vGTUU3mF", "userId": "JDWjfSg9UeF0gSZ2"}]}' \
    > test.out 2>&1
eval_tap $? 203 'AdminAddRoleMembersV3' test.out

#- 204 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'XOLlpRn7oRVr5kje' \
    --body '{"members": [{"displayName": "pSuvi2vrrV3TOs2A", "namespace": "hqTHhUW1BVjnGTHV", "userId": "WbL5CYetpNfauEvj"}, {"displayName": "AuYg1LnMMgNWpySc", "namespace": "FqwGdubAbiVtsKlc", "userId": "WOwoyckMaa4A5s9B"}, {"displayName": "tlFfBIZwXTiPrMKA", "namespace": "CzNVWFGziHu08eUv", "userId": "eh6XaICE6RMxrjxs"}]}' \
    > test.out 2>&1
eval_tap $? 204 'AdminRemoveRoleMembersV3' test.out

#- 205 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'ucQ84g8w7ZLjr5y8' \
    --body '{"permissions": [{"action": 7, "resource": "BcUjHGpixwlkFjiD", "schedAction": 32, "schedCron": "qcN5bLevMLS2siBN", "schedRange": ["WeKHOv6RxOL1l5D7", "1UAnuWT96NBIv9Sr", "re5atHZlXUXjLsZp"]}, {"action": 20, "resource": "RthWwLNCviS3yo23", "schedAction": 37, "schedCron": "oMLoXbjDyikR5ES9", "schedRange": ["rQng2maAxyCMNDkS", "6NKOI4WEiWTWZDnP", "uZtDzDFi7hQntnum"]}, {"action": 66, "resource": "laCIgsEujQKXVfJB", "schedAction": 68, "schedCron": "5mKrpHVG1I7q0dF0", "schedRange": ["U5s3H11EIdF0oYlf", "xLHgwVaM0OP2hswO", "9yP9aIV8SeRrx1WZ"]}]}' \
    > test.out 2>&1
eval_tap $? 205 'AdminUpdateRolePermissionsV3' test.out

#- 206 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'T8Dmb91ruupQy6Eh' \
    --body '{"permissions": [{"action": 60, "resource": "KVWVAaex3OYBOUL0", "schedAction": 4, "schedCron": "bABgEW5kR5FcpOvr", "schedRange": ["IKEtmmLMsUc8IzUB", "28BvPyilrCcij5fb", "NA16EhXC7aCPOszV"]}, {"action": 44, "resource": "mJuOyDxBL8cSLXhh", "schedAction": 42, "schedCron": "muFg5L6TsXOyAzX7", "schedRange": ["zEbKOKoBYgbRIgMW", "tJ6htatt6iQ6RnWm", "5Ac74Meqbm5DPM3J"]}, {"action": 90, "resource": "gTfYwFJJUBlmBTJU", "schedAction": 66, "schedCron": "hsUr93aHbg69C4ZH", "schedRange": ["8jLYyuFafJlDtmCb", "24dylrdwsT0FWO89", "WJZ61gA51rffZ6UB"]}]}' \
    > test.out 2>&1
eval_tap $? 206 'AdminAddRolePermissionsV3' test.out

#- 207 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'dhBtQunvx2h59FLQ' \
    --body '["kWD2QDdfE39vtD2g", "63NT6gzf3uPkr56D", "2sCh6mYdFJeeaHwt"]' \
    > test.out 2>&1
eval_tap $? 207 'AdminDeleteRolePermissionsV3' test.out

#- 208 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '90' \
    --resource 'KS7elPJkUAiCvJBg' \
    --roleId 'tgfpPvtEgjNRKsZg' \
    > test.out 2>&1
eval_tap $? 208 'AdminDeleteRolePermissionV3' test.out

#- 209 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 209 'AdminGetMyUserV3' test.out

#- 210 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'PqtomURDt7T9uuzY' \
    --extendExp 'true' \
    --redirectUri '0nLZckENuRGHHE9V' \
    --password 'jFE9Aqorov2na0cW' \
    --requestId 'eXAVr9k97IkKmpok' \
    --userName 'XPEnxfB2uBCUu9tK' \
    > test.out 2>&1
eval_tap $? 210 'UserAuthenticationV3' test.out

#- 211 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'vlCg7xThWdQDg3zH' \
    --linkingToken 'LNXrF2z7fIPhlhx6' \
    --password 'lQQgQBw1bhaitSlw' \
    --username 'ozni2rMEtU1gfdOR' \
    > test.out 2>&1
eval_tap $? 211 'AuthenticationWithPlatformLinkV3' test.out

#- 212 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'XbEdzrhBeaHKrSqh' \
    --extendExp 'false' \
    --linkingToken 'SBqE2IYjSf93DMH0' \
    > test.out 2>&1
eval_tap $? 212 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 213 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'hbkZVA1oKUoROUPA' \
    > test.out 2>&1
eval_tap $? 213 'RequestOneTimeLinkingCodeV3' test.out

#- 214 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'OtpuDmZP07ovjyyP' \
    > test.out 2>&1
eval_tap $? 214 'ValidateOneTimeLinkingCodeV3' test.out

#- 215 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'SWwiRrJQMBlAHqtk' \
    --isTransient 'true' \
    --clientId 'D05xg1WOmmn5Ov16' \
    --oneTimeLinkCode 'ycEhth1Pp1Uii6Rv' \
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
    --clientId 'BIBqX5H9Ue1ZIuK2' \
    > test.out 2>&1
eval_tap $? 218 'RequestTokenExchangeCodeV3' test.out

#- 219 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'r0dcsZ9jL2VUjXOH' \
    --userId 'YtzPdqtwh4PeHpYW' \
    > test.out 2>&1
eval_tap $? 219 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Wac7B160zGwfTTIW' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 220 'RevokeUserV3' test.out

#- 221 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'QSqNVINvTEOtQpxX' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'true' \
    --oneTimeLinkCode '92C3DtVXlWWQSeGm' \
    --redirectUri 'NJPR3gV50q6nCDG9' \
    --scope 'v1yYv0ctjTYnlEqJ' \
    --state 'JuUJVY2vwPFN8mFz' \
    --targetAuthPage 'YtIr1cPbAjDxGL8K' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'a9I5W9HeoViHYnc4' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 221 'AuthorizeV3' test.out

#- 222 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'Uvo7CACUm2cmX1UD' \
    > test.out 2>&1
eval_tap $? 222 'TokenIntrospectionV3' test.out

#- 223 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 223 'GetJWKSV3' test.out

#- 224 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'o9JP0uXXuMvWYXqw' \
    --factor 'uVtfzOKmSbS5r4fi' \
    --mfaToken 'Q6phzDW7T5uBqy9e' \
    > test.out 2>&1
eval_tap $? 224 'SendMFAAuthenticationCode' test.out

#- 225 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor '72PsYGLwhDcLxK80' \
    --mfaToken 'kaS6ripn8t9E0AZV' \
    > test.out 2>&1
eval_tap $? 225 'Change2faMethod' test.out

#- 226 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'jqHzpRiLbwFu7H69' \
    --factor 'uxT2R8BnG1QVYkSL' \
    --mfaToken '0oasZShL2r6dXf8q' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 226 'Verify2faCode' test.out

#- 227 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'pAg0U2JfdGMgW6Ku' \
    --userId 'eQ0AlOSJMRbVIJzZ' \
    > test.out 2>&1
eval_tap $? 227 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 228 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'WIwifvMJQpcEmctv' \
    --clientId 'G1vn4vRZMmYg0nuq' \
    --redirectUri 'JAJUJgMHOc2MbnNA' \
    --requestId 'BUnH46cjqkMZ5C24' \
    > test.out 2>&1
eval_tap $? 228 'AuthCodeRequestV3' test.out

#- 229 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'f4u25xPmQBDwFOxv' \
    --additionalData 'uZInTwL8EHm5QMG6' \
    --clientId 'aGBVtgTrmW0L5pvB' \
    --createHeadless 'true' \
    --deviceId '5hAyf1eDHwEczp6z' \
    --macAddress 'DxSSQcXRsA4oJo0e' \
    --platformToken 'JkxpDfDl7U0WHCZv' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 229 'PlatformTokenGrantV3' test.out

#- 230 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 230 'GetRevocationListV3' test.out

#- 231 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'EjsU1SuCMrqAJDnr' \
    > test.out 2>&1
eval_tap $? 231 'TokenRevocationV3' test.out

#- 232 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'VREuw89dpiRjrcmF' \
    --clientId 'DLrMLaBKhOia3qDc' \
    --code 'FweHLNNehSjGXQtJ' \
    --codeVerifier 'N8SwaqW63SgPTB6O' \
    --extendNamespace '9S4Y7X6q5nt0gD1Y' \
    --extendExp 'false' \
    --password 'Xubq8sCV5b01wmAx' \
    --redirectUri 'uVaWOUq6T4NSrfd1' \
    --refreshToken 'JsEIscHUMsu0EuHP' \
    --username 'ogXNMEpckbrhGwnJ' \
    --grantType 'client_credentials' \
    > test.out 2>&1
eval_tap $? 232 'TokenGrantV3' test.out

#- 233 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'ZNXjLQy8vkLDs2gq' \
    > test.out 2>&1
eval_tap $? 233 'VerifyTokenV3' test.out

#- 234 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'zwP9Rcxc7KuE2Wdm' \
    --code '5rkr0QHxuDRNHn7d' \
    --error 'LPHlm6wgVGC2aHzz' \
    --openidAssocHandle '0x6RgRkgcbBAjAB8' \
    --openidClaimedId 'Gv4rZDExmSNwYyO1' \
    --openidIdentity 'BVxUmmph45Jo4a6U' \
    --openidMode 'WOcqY43cQ9o624wk' \
    --openidNs 'NcwqCuWJI7bYxIvB' \
    --openidOpEndpoint 'Zj5rmtgvHAe54PKs' \
    --openidResponseNonce 'uF0IxjCdJrL4a8Lm' \
    --openidReturnTo '5bghSE5De8EkLugH' \
    --openidSig 'tIhHjVzoNtxNOcGC' \
    --openidSigned 'U2avAQpT4eEZc4eT' \
    --state 'EMXN6naxlOYpk1TQ' \
    > test.out 2>&1
eval_tap $? 234 'PlatformAuthenticationV3' test.out

#- 235 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId '7c9os3ELfqinieyA' \
    --platformToken '5s6woRooy3jRcd59' \
    > test.out 2>&1
eval_tap $? 235 'PlatformTokenRefreshV3' test.out

#- 236 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'Qi3yLrjU1wViKxfA' \
    > test.out 2>&1
eval_tap $? 236 'PublicGetInputValidations' test.out

#- 237 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'QIYjzssiHHSM4g0j' \
    > test.out 2>&1
eval_tap $? 237 'PublicGetInputValidationByField' test.out

#- 238 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'N1SaAlzmg4Y6fBxR' \
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
    --clientId 'XsTTS9PSYO4l9JYG' \
    > test.out 2>&1
eval_tap $? 241 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 242 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Zf4r3m9JsqrWiyVA' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["HhlmCBeoQQhTF3Rf", "9jnv4uH36rNHQ3Xk", "8mtS9WMlYHynkQRE"]}' \
    > test.out 2>&1
eval_tap $? 242 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 243 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7LKv7m5cQXIPjfyN' \
    --platformUserId 'Y4iuiQioor2EFVDY' \
    > test.out 2>&1
eval_tap $? 243 'PublicGetUserByPlatformUserIDV3' test.out

#- 244 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'd1hV0fqJhk2PWuiG' \
    > test.out 2>&1
eval_tap $? 244 'PublicGetAsyncStatus' test.out

#- 245 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'kU4v3i4ZpovSFL9P' \
    --limit '49' \
    --offset '86' \
    --query 'mDtkgNoZmpM2SkMt' \
    > test.out 2>&1
eval_tap $? 245 'PublicSearchUserV3' test.out

#- 246 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "kAH5qu0SmeNrZgJ7", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "IZluiPKf1XTcNMt4", "policyId": "f2djPPgRkJOsCBi3", "policyVersionId": "islRTtgD0KMHf6zj"}, {"isAccepted": false, "localizedPolicyVersionId": "rgKIyNYULBKJR52B", "policyId": "r12zCTRuwpYjdOVf", "policyVersionId": "600mNJGte2pJhMoZ"}, {"isAccepted": false, "localizedPolicyVersionId": "L9GucleC3oq0eR4N", "policyId": "GI4gHM2k5A3uivIB", "policyVersionId": "hkGCJC4Ds42WpPk8"}], "authType": "nhsfQMxZEgDTw6DP", "code": "hDJZKEcr2nOO5BHm", "country": "9HN47tCfYAlapoJL", "dateOfBirth": "SiIyzrRx5rddJFga", "displayName": "2mjKsRKTwRxxDxDw", "emailAddress": "hnfAtgOkWiumdbP4", "password": "ZVDSeBUln3ZMMCpz", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 246 'PublicCreateUserV3' test.out

#- 247 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'vl8I9gLjxocMijSV' \
    --query '8SJheCTe5URFRlv0' \
    > test.out 2>&1
eval_tap $? 247 'CheckUserAvailability' test.out

#- 248 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["PGndRpkUSbrQNxlE", "QmqLUjpRoYqTj3XM", "Zmwk7gVOMPFTtrj7"]}' \
    > test.out 2>&1
eval_tap $? 248 'PublicBulkGetUsers' test.out

#- 249 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "9FHR2tJ111tMK24f", "languageTag": "0PjGbjZj4thGFRb8"}' \
    > test.out 2>&1
eval_tap $? 249 'PublicSendRegistrationCode' test.out

#- 250 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "HwfRv61BLosemEjy", "emailAddress": "7dZAhlaFVBb8BaUT"}' \
    > test.out 2>&1
eval_tap $? 250 'PublicVerifyRegistrationCode' test.out

#- 251 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "xEL5uKUvOoaQL8D8", "languageTag": "4y2iIAvhD6WpxN51"}' \
    > test.out 2>&1
eval_tap $? 251 'PublicForgotPasswordV3' test.out

#- 252 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'erzjN7mZA13JcWge' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 252 'GetAdminInvitationV3' test.out

#- 253 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'wb3WwKGGQuCP7K3Q' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "fQVmaTbyT3slHlwk", "policyId": "zWNPZJfZp3p8fJ5J", "policyVersionId": "Qmzvq6yFOT3pdUc1"}, {"isAccepted": false, "localizedPolicyVersionId": "GHfctfbfqd81XIpP", "policyId": "vLbg7kxuZcGVFUDA", "policyVersionId": "tCNByWr1sUOddNZ1"}, {"isAccepted": true, "localizedPolicyVersionId": "zSZxeEq3K7t0QabY", "policyId": "hQm1JD2NIhtUEhAW", "policyVersionId": "qkjis2tIdOnFZg8K"}], "authType": "EMAILPASSWD", "country": "vOAo56uQyM3qnpNY", "dateOfBirth": "9PVoeCsjlWeB16o2", "displayName": "wZuOOwHdHMvRP8b1", "password": "f8vwR1jYLus0IwUe", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 253 'CreateUserFromInvitationV3' test.out

#- 254 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "ZJnZQSiBCnKUPBig", "country": "1JJjZGyUDCEYq1mp", "dateOfBirth": "CAscywdKuW1f1DN4", "displayName": "5TRTD8eGHVMaEPug", "languageTag": "gRVEB4rLKjcaRiOg", "userName": "Yhi4h0tvsxwxOIjv"}' \
    > test.out 2>&1
eval_tap $? 254 'UpdateUserV3' test.out

#- 255 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "erCDq98quQX0bH38", "country": "EruFrisNBglFHy7H", "dateOfBirth": "dshpbLajdbozVNyd", "displayName": "SWFl7WXPqDKzSe0L", "languageTag": "LI2YjZp2hUqTqtH4", "userName": "x7JNvpHskLhTQuNd"}' \
    > test.out 2>&1
eval_tap $? 255 'PublicPartialUpdateUserV3' test.out

#- 256 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "3Uw8OM8tGDVnFsWm", "emailAddress": "FR4uie8E5IMo3uVF", "languageTag": "vcXKIHB569iPOuz4"}' \
    > test.out 2>&1
eval_tap $? 256 'PublicSendVerificationCodeV3' test.out

#- 257 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "BnLSsRQGFcU2PQL3", "contactType": "z7NGxIuKwOe25rqE", "languageTag": "1qEmbbNjvXlShy2o", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 257 'PublicUserVerificationV3' test.out

#- 258 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "s6SmBTaEzQHG1zOv", "country": "SFJRytSyPcYfIMAD", "dateOfBirth": "jyWcQc7OG34vwqyR", "displayName": "vXCH6iPSju3f4vLI", "emailAddress": "xEEXpEiQf4zcd1gR", "password": "TvCzHmpblK3KYtKJ", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 258 'PublicUpgradeHeadlessAccountV3' test.out

#- 259 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "J9sRm1JXKHYsoEIb", "password": "pujW39MtL9jIvjSf"}' \
    > test.out 2>&1
eval_tap $? 259 'PublicVerifyHeadlessAccountV3' test.out

#- 260 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "VEp9r0tU6XF6sn0f", "newPassword": "ItSdTQmHUAfefdWF", "oldPassword": "Ie5DTWmGdRfsjJMG"}' \
    > test.out 2>&1
eval_tap $? 260 'PublicUpdatePasswordV3' test.out

#- 261 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'gWcevCDcpSHCBlBa' \
    > test.out 2>&1
eval_tap $? 261 'PublicCreateJusticeUser' test.out

#- 262 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'IU5iZoP90q3zr6Jd' \
    --redirectUri 'VSn0nMCHpwxcevQF' \
    --ticket 'jLvrn1yLJr0950qt' \
    > test.out 2>&1
eval_tap $? 262 'PublicPlatformLinkV3' test.out

#- 263 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'FlPGfLZBTN0vZFu8' \
    --body '{"platformNamespace": "8hiLXKJyT65ojC5r"}' \
    > test.out 2>&1
eval_tap $? 263 'PublicPlatformUnlinkV3' test.out

#- 264 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'dYmDBQmFOwInclkR' \
    > test.out 2>&1
eval_tap $? 264 'PublicPlatformUnlinkAllV3' test.out

#- 265 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'P8rc6JQRsbI8VNAc' \
    --ticket 'bMtK2AQSCJlcAP63' \
    > test.out 2>&1
eval_tap $? 265 'PublicForcePlatformLinkV3' test.out

#- 266 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId '4O0CVNKI5tEgmjoT' \
    --clientId 'N6I7d81KKW95K5Q9' \
    --redirectUri 'xWUMlqiEHVss0FHq' \
    > test.out 2>&1
eval_tap $? 266 'PublicWebLinkPlatform' test.out

#- 267 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'Fusae2hB6CIrTIj5' \
    --code 'S4BT3Lwo2GKaDVpF' \
    --state '0FRsfSSYncnCE6mk' \
    > test.out 2>&1
eval_tap $? 267 'PublicWebLinkPlatformEstablish' test.out

#- 268 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'BMlM9uoomo6iT33N' \
    --code 'DVES9AEL54ly5ZAH' \
    --state 'hVAdDpvvB1DhKG0j' \
    > test.out 2>&1
eval_tap $? 268 'PublicProcessWebLinkPlatformV3' test.out

#- 269 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "EsHybLWFxYKtsxTV", "emailAddress": "FcnTlNFIOcdd98lC", "newPassword": "NBb4Mi8RSLWuFfbE"}' \
    > test.out 2>&1
eval_tap $? 269 'ResetPasswordV3' test.out

#- 270 PublicGetUserByUserIdV3
eval_tap 0 270 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 271 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Upv3IdkXEQR8oAIt' \
    --activeOnly 'false' \
    --after '4SGKVyF0Mu01S7hJ' \
    --before 'yZMSuOicfCBrbWhx' \
    --limit '85' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetUserBanHistoryV3' test.out

#- 272 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jXwt5P4249UVHdft' \
    > test.out 2>&1
eval_tap $? 272 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 273 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pCYejYQfmc35Lagx' \
    > test.out 2>&1
eval_tap $? 273 'PublicGetUserInformationV3' test.out

#- 274 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RZuPYZeVCElRfmsM' \
    --after '0.5522783984363183' \
    --before '0.09083611292271943' \
    --limit '35' \
    > test.out 2>&1
eval_tap $? 274 'PublicGetUserLoginHistoriesV3' test.out

#- 275 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Qs6v5aPI6c167TE2' \
    --after 'mON0LPeuAvzu0ZVb' \
    --before 'ictvmYiXYifhL2YC' \
    --limit '37' \
    --platformId 'dpvM83k3cT82yt4c' \
    > test.out 2>&1
eval_tap $? 275 'PublicGetUserPlatformAccountsV3' test.out

#- 276 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'w2Zm4n5F6qloGIqt' \
    > test.out 2>&1
eval_tap $? 276 'PublicListJusticePlatformAccountsV3' test.out

#- 277 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'kL9LzCk1AoHQlMcs' \
    --body '{"platformId": "BiNRLllDErB6ALNf", "platformUserId": "b3YSYmDAbZmF3NaI"}' \
    > test.out 2>&1
eval_tap $? 277 'PublicLinkPlatformAccount' test.out

#- 278 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId '5RLn3Pmny7xsjYIk' \
    --body '{"chosenNamespaces": ["1iuTuKNDCOg00FPp", "rxAbsL7x8xxSEKug", "40Iqv3VxhovENeOi"], "requestId": "Ph24R4eqmvoJ3raR"}' \
    > test.out 2>&1
eval_tap $? 278 'PublicForceLinkPlatformWithProgression' test.out

#- 279 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fPp53wvzqlPH8dpE' \
    > test.out 2>&1
eval_tap $? 279 'PublicGetPublisherUserV3' test.out

#- 280 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UBHwEcqRUYlLAGgW' \
    --password '0F1CPFde0Dcai9kh' \
    > test.out 2>&1
eval_tap $? 280 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 281 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after '24SJKPvwq9PGWqFf' \
    --before 'ao6gQFYNcXhkvn95' \
    --isWildcard 'false' \
    --limit '37' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetRolesV3' test.out

#- 282 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'riGk0hAiXwQZAYPW' \
    > test.out 2>&1
eval_tap $? 282 'PublicGetRoleV3' test.out

#- 283 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 283 'PublicGetMyUserV3' test.out

#- 284 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode '57urUtBQW5lrqiQU' \
    > test.out 2>&1
eval_tap $? 284 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 285 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["iOVPsu5Z6ejK1gaN", "drugbRIqJTtSXrFE", "AVCD990o7FsK6cAG"], "oneTimeLinkCode": "nKfasZBWjfplPNgZ"}' \
    > test.out 2>&1
eval_tap $? 285 'LinkHeadlessAccountToMyAccountV3' test.out

#- 286 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "he1tP9fPe4mZc12x"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicSendVerificationLinkV3' test.out

#- 287 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'FD8o1BkoStJJxpyJ' \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyUserByLinkV3' test.out

#- 288 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'RBQHSwGe5vrT30LN' \
    --code 'lbh9a8mrDjmW1wAL' \
    --error '4vLbEE86l9bwWPiz' \
    --state 'raPCPVuM9yxB0HNU' \
    > test.out 2>&1
eval_tap $? 288 'PlatformAuthenticateSAMLV3Handler' test.out

#- 289 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId '08MFZAVXRTZjXoHV' \
    --payload 'L1OYbKMsPochX5Vg' \
    > test.out 2>&1
eval_tap $? 289 'LoginSSOClient' test.out

#- 290 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId '2j0Bhh9IQ1aZzFyY' \
    > test.out 2>&1
eval_tap $? 290 'LogoutSSOClient' test.out

#- 291 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'AoB98ZJVsZCrDWuR' \
    --code 'TH8By6f5cNxdm19e' \
    > test.out 2>&1
eval_tap $? 291 'RequestTargetTokenResponseV3' test.out

#- 292 PlatformTokenRefreshV3Deprecate
eval_tap 0 292 'PlatformTokenRefreshV3Deprecate # SKIP deprecated' test.out

#- 293 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'WRURdqCo3igjYpMr' \
    > test.out 2>&1
eval_tap $? 293 'AdminGetDevicesByUserV4' test.out

#- 294 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'pgfKvDADgmvcOWpn' \
    --endDate '5Or7aVfH04I3OCFS' \
    --limit '37' \
    --offset '85' \
    --startDate 'gqn96aHoMomBkB2h' \
    > test.out 2>&1
eval_tap $? 294 'AdminGetBannedDevicesV4' test.out

#- 295 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'zzVR59nKnpHU0z06' \
    > test.out 2>&1
eval_tap $? 295 'AdminGetUserDeviceBansV4' test.out

#- 296 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "08GCWFfLrFp5sOpj", "deviceId": "Cre9XPfLji3tuO9v", "deviceType": "DQCiXVyFMBbS50Rf", "enabled": true, "endDate": "32z9PpJtcPr6l1HV", "ext": {"EmuCN04rNIyXTXo0": {}, "PpsE8nU5ggOyFnZC": {}, "qr1tCWf9uO0OG8Ns": {}}, "reason": "j8HFzj39eMDqr2Zn"}' \
    > test.out 2>&1
eval_tap $? 296 'AdminBanDeviceV4' test.out

#- 297 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'RChUk7rUh9PTwNge' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 297 'AdminGetDeviceBanV4' test.out

#- 298 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'oVJ3GwNxREgXPpFy' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateDeviceBanV4' test.out

#- 299 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'mgGw0oJRuNujrgwC' \
    --startDate 'Y19d9FRNEBwINXsa' \
    --deviceType '7THj3XtmYqNoZcfS' \
    > test.out 2>&1
eval_tap $? 299 'AdminGenerateReportV4' test.out

#- 300 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 300 'AdminGetDeviceTypesV4' test.out

#- 301 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'MoREw9hG1xh6yfQ2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 301 'AdminGetDeviceBansV4' test.out

#- 302 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId '81BAc86n4PspxV6v' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 302 'AdminDecryptDeviceV4' test.out

#- 303 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'yy777smjEsuILtRK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 303 'AdminUnbanDeviceV4' test.out

#- 304 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'wxOqX1Tz8IWKKD83' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 304 'AdminGetUsersByDeviceV4' test.out

#- 305 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 81}' \
    > test.out 2>&1
eval_tap $? 305 'AdminCreateTestUsersV4' test.out

#- 306 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["nrEJd9TZ2Uef3LMT", "Bsb1lelcpBzL7i0d", "rvmwomRXrTggMtT2"]}' \
    > test.out 2>&1
eval_tap $? 306 'AdminBulkCheckValidUserIDV4' test.out

#- 307 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'qJpA4bJvUF0gHAWz' \
    --body '{"avatarUrl": "EAzHs1oxqFypVHXg", "country": "9QfzZKJjQKLleukK", "dateOfBirth": "tFT3RHXzzERer0Go", "displayName": "W20VT5M3Edr5xmP8", "languageTag": "PfGeehmxckRbjtjM", "userName": "30bdYYeURyK350bS"}' \
    > test.out 2>&1
eval_tap $? 307 'AdminUpdateUserV4' test.out

#- 308 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'jDWl732LfSKFxZKI' \
    --body '{"code": "iFZ3YzUMmVsMFsOr", "emailAddress": "IQaMY9vAdmJJyGxy"}' \
    > test.out 2>&1
eval_tap $? 308 'AdminUpdateUserEmailAddressV4' test.out

#- 309 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'RESemHm70HlV7gWM' \
    > test.out 2>&1
eval_tap $? 309 'AdminDisableUserMFAV4' test.out

#- 310 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'V5vywOFS8saH2RDI' \
    > test.out 2>&1
eval_tap $? 310 'AdminListUserRolesV4' test.out

#- 311 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ABPW3laPg4FTcxT2' \
    --body '{"assignedNamespaces": ["YWEA8k1RPV3DGaWT", "fRDx5ZTW6CIJwZxv", "pEwBzsljK1YooLXM"], "roleId": "zDqcDdm5OLretGiR"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminUpdateUserRoleV4' test.out

#- 312 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'RR0EpSHaUZfko9K6' \
    --body '{"assignedNamespaces": ["jAWR3hl08y6nBlrW", "r1xXN4HyEYYBFDLQ", "iFjubELhQj1UCOIr"], "roleId": "di9Rc5kyJ0PsfR9L"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminAddUserRoleV4' test.out

#- 313 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'THScgBVRkcZLep2s' \
    --body '{"assignedNamespaces": ["52MIqkx3CrZ5Uyvb", "vSRp9yhX3uYSKRD9", "STKIS8ByIDos4KAI"], "roleId": "oYVprmugADXKpkjI"}' \
    > test.out 2>&1
eval_tap $? 313 'AdminRemoveUserRoleV4' test.out

#- 314 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'false' \
    --limit '21' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 314 'AdminGetRolesV4' test.out

#- 315 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "1hGk8P9CorWsx3Qi"}' \
    > test.out 2>&1
eval_tap $? 315 'AdminCreateRoleV4' test.out

#- 316 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'Cu9b2F1cgiRasUcl' \
    > test.out 2>&1
eval_tap $? 316 'AdminGetRoleV4' test.out

#- 317 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'p1EO7jwB1z9PGKq4' \
    > test.out 2>&1
eval_tap $? 317 'AdminDeleteRoleV4' test.out

#- 318 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'dJkDIpskKoTscVcV' \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "VccjBl1nTTX4WFmz"}' \
    > test.out 2>&1
eval_tap $? 318 'AdminUpdateRoleV4' test.out

#- 319 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'C3MMMGYbVoqkF1GV' \
    --body '{"permissions": [{"action": 52, "resource": "gPECFyRbS2yqTwv8", "schedAction": 83, "schedCron": "fYfcCRyNqJkF7mvi", "schedRange": ["cuUqgYwWEnqqHUfi", "QmnZvWFU2ryV26FQ", "6qAS4TZxMyyN1tTS"]}, {"action": 62, "resource": "P4c7CRpqEbx8f3ie", "schedAction": 82, "schedCron": "YhNv4aKR5HwLW0Zk", "schedRange": ["mMJaDg5flMesIoVU", "1mtioVJOeR4enPii", "haKr69DDfJlzQM7e"]}, {"action": 7, "resource": "UwlpJ6z0Dy2avENK", "schedAction": 83, "schedCron": "GXoqVVaKeXO7jAcp", "schedRange": ["LIxN41AiyGjtn9SB", "Adiz8LoZ0sc9b1Mf", "8zHwegc3UlbXgGyi"]}]}' \
    > test.out 2>&1
eval_tap $? 319 'AdminUpdateRolePermissionsV4' test.out

#- 320 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'A08yQukzl6TDajnR' \
    --body '{"permissions": [{"action": 43, "resource": "tJk2fAg9ynmma5v2", "schedAction": 64, "schedCron": "VwPU9e2xoGRXG1G0", "schedRange": ["GxPAoDmooPfCtjqO", "HVlNer2YWc1SJSHV", "nWXk5UKpEz5IOHhV"]}, {"action": 79, "resource": "gM4PohsaJwCLdVVE", "schedAction": 39, "schedCron": "EvLSOEHQDUo0otV8", "schedRange": ["oRqBC7qAMRVVfELC", "HN59GsRienTn6gaE", "nL8bdrHKORf7lVrs"]}, {"action": 66, "resource": "n2ZVtj7BUHicQoUC", "schedAction": 33, "schedCron": "KhNVxjvEzzDGAYSL", "schedRange": ["VHF0s7y8fsYtMkPV", "UFeXAjPuyVWho2DT", "XCcxnPDAdCEL20rE"]}]}' \
    > test.out 2>&1
eval_tap $? 320 'AdminAddRolePermissionsV4' test.out

#- 321 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'gGjiNBy0yZzj6I3C' \
    --body '["r3KG5Kt3h3iT9Wul", "7QiZLBkZocQuAbGa", "s2tOVCSYin8VPIso"]' \
    > test.out 2>&1
eval_tap $? 321 'AdminDeleteRolePermissionsV4' test.out

#- 322 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId '6302xRwBtd2UXb8P' \
    --after 'CJjNPInqd30PdEtx' \
    --before 'uOgiArdJ7OVkRiPb' \
    --limit '99' \
    > test.out 2>&1
eval_tap $? 322 'AdminListAssignedUsersV4' test.out

#- 323 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'pzyTVuZARLFwC817' \
    --body '{"assignedNamespaces": ["IW6TX3gXDIE4vWyj", "9PyCVA9EnpkENj7I", "ZuJR11f0EimirDa4"], "namespace": "VPmEsxIw8ontFNs0", "userId": "0nSKeSdXqTAzEYbk"}' \
    > test.out 2>&1
eval_tap $? 323 'AdminAssignUserToRoleV4' test.out

#- 324 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'qflydXeVIdmbxhhq' \
    --body '{"namespace": "cOCnX4i4ColD1vtr", "userId": "il59OiJW77rqfaP5"}' \
    > test.out 2>&1
eval_tap $? 324 'AdminRevokeUserFromRoleV4' test.out

#- 325 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["R0G9wu9wWO7xxuAH", "HRcbpAxcmfVZrn8J", "XwPT4op5H0tfC80S"], "emailAddresses": ["cmoYfuMYBxMGhALJ", "cUz8mCXAi5Kwc6i5", "lVbFPUyMnInIEmFJ"], "isAdmin": true, "namespace": "bQcdAoOwxUVoMZoO", "roleId": "2aELP8Ka3r6mxiDU"}' \
    > test.out 2>&1
eval_tap $? 325 'AdminInviteUserNewV4' test.out

#- 326 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "w1OwpJT1DHVyE2ie", "country": "clsEJXsnr19R5CLe", "dateOfBirth": "JFPd8wW6KZqU1T9O", "displayName": "b0hi926CgXMzOT0q", "languageTag": "SukTUpzNiP4w6Isl", "userName": "8UoACqVWiTmWc0rl"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminUpdateMyUserV4' test.out

#- 327 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 327 'AdminDisableMyAuthenticatorV4' test.out

#- 328 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'x9Sd8CSFNipCiZCR' \
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
    --code 'Fodgcvg8UB6SX53t' \
    > test.out 2>&1
eval_tap $? 337 'AdminEnableMyEmailV4' test.out

#- 338 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 338 'AdminGetMyEnabledFactorsV4' test.out

#- 339 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'oG75TmnfrAhLuXya' \
    > test.out 2>&1
eval_tap $? 339 'AdminMakeFactorMyDefaultV4' test.out

#- 340 AdminInviteUserV4
eval_tap 0 340 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 341 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "X1Mslo75QIcOLeG2", "policyId": "TiGjGKNWyDhfZItD", "policyVersionId": "mMTbfqclSFJ3Q8Zo"}, {"isAccepted": true, "localizedPolicyVersionId": "ezNuh0dj6SA2VXwQ", "policyId": "90ThuRNbiGCwqw51", "policyVersionId": "meZ2e9g0qgJL9qLN"}, {"isAccepted": false, "localizedPolicyVersionId": "1ej8ZAYNjAvL5yDc", "policyId": "n2v6m275DYnn2Qm7", "policyVersionId": "kCTmgNsj8ceZLZiE"}], "authType": "EMAILPASSWD", "country": "g5Jg2Sea1sQxT0Kc", "dateOfBirth": "5aJfOM656BalwhFS", "displayName": "tBID9zstPkrRXoa8", "emailAddress": "XRn1kqjnlcGhQ2Ue", "password": "dqg84QQsKMnM3vku", "passwordMD5Sum": "RZtD8eVyyQidgHCn", "username": "iOc1DlQGt2hG2pdg", "verified": false}' \
    > test.out 2>&1
eval_tap $? 341 'PublicCreateTestUserV4' test.out

#- 342 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "xKn6LaxB6rSVKbjL", "policyId": "TANy4XHpW2fAN1c8", "policyVersionId": "XbDz6dG5rDwygdXX"}, {"isAccepted": false, "localizedPolicyVersionId": "ySDNvLoQmLGjhUJa", "policyId": "olfEFvVEHCT7PKsv", "policyVersionId": "Qmy0xXuaTkSsR8oQ"}, {"isAccepted": false, "localizedPolicyVersionId": "xhyOjg9sfSA0k3DC", "policyId": "v3edvm4LzaCGbcLN", "policyVersionId": "DMV8xfIYCQHOzPKS"}], "authType": "EMAILPASSWD", "code": "SNe6IlleOontMYJM", "country": "1gYBafv4OHf8QSw8", "dateOfBirth": "a8QToc60Oox4qiMq", "displayName": "fcU1TwDunpbfoR1P", "emailAddress": "jFEkje2PcfKXVJHV", "password": "whZk8RH3tcvAwhpb", "passwordMD5Sum": "PCwrFn0BV1Yy3PJY", "reachMinimumAge": true, "username": "iP1c8K3nMmPQXPRb"}' \
    > test.out 2>&1
eval_tap $? 342 'PublicCreateUserV4' test.out

#- 343 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'kWXNl4FZBNtpzMYq' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "8jQODCPxjY5LU3DX", "policyId": "WJlQmvcC8StZSaGc", "policyVersionId": "PGmchOfr9CLIpQG2"}, {"isAccepted": false, "localizedPolicyVersionId": "66WyCuDemGBbwqVr", "policyId": "seVBLSSBOF7QxCCN", "policyVersionId": "rsHxgwplKTY9EYHg"}, {"isAccepted": true, "localizedPolicyVersionId": "5DXxNbHaBPvgMMvC", "policyId": "qOh0IR9SghKL45MZ", "policyVersionId": "ofkbO8l7yjIgChlk"}], "authType": "EMAILPASSWD", "country": "LxBeQxqGjMK7Owlw", "dateOfBirth": "WwBQd2zGBxBwGDOo", "displayName": "QkTH6fsqfwao1Lki", "password": "pe57W5JwLdufeGpz", "reachMinimumAge": false, "username": "ceFI8PnTGwP2aBb4"}' \
    > test.out 2>&1
eval_tap $? 343 'CreateUserFromInvitationV4' test.out

#- 344 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "0TNIDfxnQSS0lD2H", "country": "YauYckFJORbZ6DZ6", "dateOfBirth": "36okGj2rP0kvGHet", "displayName": "TPzXOQWCEG6I6lxj", "languageTag": "3DykxEp3v2wgbO0d", "userName": "cvC4BXAPvvAtckjI"}' \
    > test.out 2>&1
eval_tap $? 344 'PublicUpdateUserV4' test.out

#- 345 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "mhaJQUXd3IqRcJzp", "emailAddress": "4cWwYVcpnxb29RtQ"}' \
    > test.out 2>&1
eval_tap $? 345 'PublicUpdateUserEmailAddressV4' test.out

#- 346 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "laR1H8dJvqTV8O94", "country": "BdTJ9rbuwmS1roxn", "dateOfBirth": "FzOHAb3sPk3uh3Xa", "displayName": "0wWHU1myPPg8ppXO", "emailAddress": "UPorQQLKX7CfxHFB", "password": "yzrU53wk8Hh6HqI4", "reachMinimumAge": true, "username": "KQmmjDvwW8zr7C2A", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 346 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 347 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "5QUUI6k9mvJRYLRp", "password": "rYmrWvMARjhdnz7V", "username": "vMDNGo2bs9laokt5"}' \
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
    --code 'SSIyKWD7tIIYpP99' \
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
    --code '48ucmIyK5fQ3eGG4' \
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
    --factor 'aczI0G1tjCEd93ks' \
    > test.out 2>&1
eval_tap $? 361 'PublicMakeFactorMyDefaultV4' test.out

#- 362 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'v6TBrU8PtOWlhS4W' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 363 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "R44OjMNnhk4dzPTV", "emailAddress": "nzeMUf3keYqvnbVP", "namespace": "lQVAtChsP4MCoBwC", "namespaceDisplayName": "lRM3pg7uZ6CJyFVq"}' \
    > test.out 2>&1
eval_tap $? 363 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE