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
echo "1..355"

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
    --body '[{"field": "ocofeOyDWb2Md6ug", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["2TTtV2FDSdqmhuh8", "96DALFuvHA2BGO5H", "SSsEcDV5D20uwA4y"], "preferRegex": false, "regex": "rA9JUEAE2UU7Wp74"}, "blockedWord": ["J99cB01A5Lpk298C", "ssizbvDyWfnmdvlg", "FWyLEJqsIe5frpu8"], "description": [{"language": "6hSl01T7Oas5iCXz", "message": ["34nkdlFJ4Yyq1ERx", "wgMczwc8wDNatDzR", "4NDo3gsd7B6Ytxhn"]}, {"language": "ddv7XPAaGwt9UagK", "message": ["tb7aVCwNXsdMIpuj", "dMTSeaYmGEiCYSh2", "6e4Bv9LeRpVcevoS"]}, {"language": "KeDPRgc3I1yE7bCj", "message": ["uuLlNkEofO40zjqW", "kHllxJjcnjMybBjx", "bB8nep4IAVNgKV0A"]}], "isCustomRegex": false, "letterCase": "hfTRa7ZEwSrokDGF", "maxLength": 12, "maxRepeatingAlphaNum": 64, "maxRepeatingSpecialCharacter": 40, "minCharType": 94, "minLength": 2, "regex": "XF5WUrpuLUTJApK1", "specialCharacterLocation": "DK4N7rv3ovlAqQ8t", "specialCharacters": ["xkjVv0STrIU7XWKZ", "kOc9L4I3u472dM35", "tEefS8act1F52CrM"]}}, {"field": "tafXk0oDMunENyiY", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["OY7aTasMxhGeQhT4", "blO2kqRcdkuIdWdB", "FttW4waeJUBdbFyT"], "preferRegex": true, "regex": "EJjOUXayibXq2z5D"}, "blockedWord": ["qcU0iultKj98XMGq", "YsZzz8iRSfen3T3f", "HaRiHE1f1ZWOqqd1"], "description": [{"language": "6JyNdbMYGjlA8fiu", "message": ["njQQrWznkSYAXaXf", "X6RsHh1RCxHUlgLq", "kkR6fmOBHdBlYwVA"]}, {"language": "7Gc9sbl0gv8CBiiU", "message": ["yEpjrvVxDchQpfdp", "k9zDa0CfKTvnjoik", "T7lL2vQMnkgmSazU"]}, {"language": "NMkL52ELsnsnHwqF", "message": ["GQrdfKyh8Gg0MFtk", "RaEpRR7Ry1fOshjv", "3ZCMLfeOUYIOfcnC"]}], "isCustomRegex": true, "letterCase": "CyY296SWudoN6XQg", "maxLength": 72, "maxRepeatingAlphaNum": 25, "maxRepeatingSpecialCharacter": 5, "minCharType": 98, "minLength": 18, "regex": "JWZakPXFb87bKzeO", "specialCharacterLocation": "AHFNDCD2Ml9Mh8bt", "specialCharacters": ["2P9x6i2HDxGIqLEv", "v5VBRbOifrP14K99", "0hI5Ldaii2mvkgFo"]}}, {"field": "QWr446kqYOh2gX1J", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["m6cEJoS8J7rRRaDb", "NfPWQQavR7lA0SyH", "C72hw3YbxX0aLOfU"], "preferRegex": true, "regex": "3GUQbHLYfvDdDf8V"}, "blockedWord": ["kXQEQOOlDWmKy8fh", "a26Qb3VyLYIEPk0i", "pM5GvjjCLqu8a5Cn"], "description": [{"language": "Zf74z5uIPjosZDF9", "message": ["Ty7N32hnUhMUclAb", "OJ79qv2D7suIFgCd", "tQ43oB01maBlPazx"]}, {"language": "4LvWVeus7AXTyJMk", "message": ["ANvwslNnIfyNsu1W", "LSbnUMSIzG7PuOTJ", "rc0m4sIthlYqe0iw"]}, {"language": "xl8EWjKGhdmlQLdo", "message": ["b2Qaj0sZOLkVXlSU", "HYn9dJmdipVuAJhp", "fVam8ppowf5VyIGc"]}], "isCustomRegex": false, "letterCase": "SR4vccWYcjwdBDDb", "maxLength": 95, "maxRepeatingAlphaNum": 42, "maxRepeatingSpecialCharacter": 32, "minCharType": 89, "minLength": 82, "regex": "yW6NHKugETqrs3Oc", "specialCharacterLocation": "5xdRjT7pnob3nDPU", "specialCharacters": ["EMGCr0U2tFOxZqRP", "MGf5U9AQO7IW0A4x", "uvYYe6RXc6CqMlkS"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field '8qw8Amtwhp4U5aAs' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'wwf8qcP0D3NSpqCY' \
    --before 'Gr5fTHzhIO97Kbff' \
    --limit '84' \
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
    --body '{"ageRestriction": 90, "enable": false}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode '79gRILfgTdcYhpac' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 27}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'pOKVIkky8TN0JnhA' \
    --limit '9' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "78Re9epUHy5oqj2m", "comment": "IniG2rJIDB3zu0S7", "endDate": "xvAWVSU7xBbbWINJ", "reason": "APzJdmV9ueh3Dn3Z", "skipNotif": true, "userIds": ["BtCcFXI5fx7atIwF", "7yZa7rYkFfxQaexA", "5rfwZZC7SgfzIybz"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "DD05ZN5IDDBKfOFR", "userId": "9EDd9OhW3vJvEhUN"}, {"banId": "dtdnAtgY4hfwJepD", "userId": "tofEeKjmrTirADZu"}, {"banId": "BJTIVM8H791dOlbn", "userId": "ocvUReyaUVlYJ1n1"}]}' \
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
    --clientId 'QSjVwOD3nxNwHzm9' \
    --clientName 'xJL61DRdKzmmqMav' \
    --clientType 'VWDEKDDmHSp7EteW' \
    --limit '53' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["nC3pq20Axr7uXHKK", "wos7FWi76s3w9VUK", "MktFpwMHOBwjrtCd"], "baseUri": "zbcf7vOsKHexWTNY", "clientId": "Yu9O8SjszCYj6l0K", "clientName": "lvOzoJ7vgWRCYPki", "clientPermissions": [{"action": 46, "resource": "1xKnjhaXngrINwlq", "schedAction": 8, "schedCron": "7cucdwS8r2KmJ0r0", "schedRange": ["rzKwuxGHfiIbQBKt", "MEz85vm5fPz1510M", "tPG6vCMVZZhLyLCh"]}, {"action": 43, "resource": "6GyKucDUqXegmAEq", "schedAction": 78, "schedCron": "4TrVbJhtgmJd1Upy", "schedRange": ["bmiwAOdO1rzQsNHo", "2pUeC27yBcoS8LXW", "kV5lHhZWVBcJGREq"]}, {"action": 70, "resource": "Dvu8Ohvq6cKsyGnG", "schedAction": 77, "schedCron": "Xr4SKVhb1Z9guqFf", "schedRange": ["ymjg8GNlvBV7AI8q", "ke7wqIMnEI7Ka6j4", "cDUII7kcRRXAKnsZ"]}], "clientPlatform": "NNDFfYRgN3sSABy5", "deletable": true, "description": "lkHBDwanNuH4HTgq", "namespace": "kD0czW6BzA3ppH7y", "oauthAccessTokenExpiration": 52, "oauthAccessTokenExpirationTimeUnit": "X0cI1eEFYfX2s6LU", "oauthClientType": "wPsOCXm6DEZgRt0U", "oauthRefreshTokenExpiration": 72, "oauthRefreshTokenExpirationTimeUnit": "sb1XeNO69XFliph7", "parentNamespace": "4pSigJ4AO1AK0ert", "redirectUri": "OkppLWK0ZpCcU0yE", "scopes": ["4sBU7M1Y4nxZQeCA", "0NzvD6pz9p7o5yLp", "TW3gWQLO0qJrhXO8"], "secret": "khosATvgcQpUDHs8", "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'WcrEdvuzLeXUoTPw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'pcOAjzZWA8cq7xnH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId '00ukpN1RNUEZ2Xom' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["gR9BsiV5KKb9gnPS", "pt97LXDJ2W8BYf5L", "vborSzgm9OWBmgdt"], "baseUri": "F2tqo4IXhIdnU7e2", "clientName": "CpdOkfyk4ZSjkUMc", "clientPermissions": [{"action": 13, "resource": "XOhVbebxatcXTxDJ", "schedAction": 41, "schedCron": "cMY7SQyGiDEWveym", "schedRange": ["9u85f979D1YnG5aW", "e3QoxXJ5SFcGxRW0", "LmP30uYDEM7Gr7Ox"]}, {"action": 73, "resource": "Q4063ufUmZU4wLxq", "schedAction": 32, "schedCron": "VdQkyK8Qm7Zez4xc", "schedRange": ["fCieTIO8q20YcQkZ", "juH1UgdfJayEnZtZ", "vBmyJJduPABf658j"]}, {"action": 60, "resource": "dfFxRfYTpK5cTECb", "schedAction": 8, "schedCron": "hvx64GhaQCj9PmaL", "schedRange": ["nQrf9RaPbNSDyMMp", "dc6cPriTGhL0QfEE", "KjUTFxM5FwlvmUgn"]}], "clientPlatform": "EgF2xDWvoXhdWPmk", "deletable": false, "description": "Y4Mjah9vTPBTJn4k", "namespace": "jIJqafDoY2IzAywq", "oauthAccessTokenExpiration": 100, "oauthAccessTokenExpirationTimeUnit": "rQ1gnOZMGSfk8OyJ", "oauthRefreshTokenExpiration": 22, "oauthRefreshTokenExpirationTimeUnit": "wl5TmM8scRHWrDOE", "redirectUri": "eJzy768JUEZdKhCZ", "scopes": ["yICZBKtEOddr1a4D", "KMU2WlVoPp6Bms11", "OhKB2NwfOkq0TPHc"], "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'VorGctB8BngZmV0o' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 1, "resource": "ZRla9EcZq88mfwo9"}, {"action": 25, "resource": "R8D0bm48yZ8km3va"}, {"action": 99, "resource": "foQw3eF2z3y639pf"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId '1RdiwQkcC1GYS2ap' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 60, "resource": "mlHbfywV6fbqkpG4"}, {"action": 75, "resource": "PSpRLM1Covh8udBF"}, {"action": 96, "resource": "sTylDk1BHEXk21h7"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '0' \
    --clientId 'tIRp7ZWH5FVoOuRs' \
    --namespace $AB_NAMESPACE \
    --resource 'SwP2bZsb7W0PBsLa' \
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
    --limit '75' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 130 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 131 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'pp8jKnleK3hXlqSn' \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'UXYm7iOPP76G7I03' \
    --body '{"ACSURL": "WnUJpS6EuwtgYoeY", "AWSCognitoRegion": "UnE5yEIPLoafIHYm", "AWSCognitoUserPool": "rJD6YGN7QLFjXg9G", "AllowedClients": ["asbz63dEzlWWAXJe", "QQmMLwUKvCd8gfDW", "ohRm7wN3xWRR3hrP"], "AppId": "Fvvx4KAKQQsYxCJX", "AuthorizationEndpoint": "vC1e5vEVNiZkl0CA", "ClientId": "8rFfnxURHOdj2oNY", "Environment": "lKCxoOWIvihBvYBC", "FederationMetadataURL": "kfrOa7zmCF3OcL9h", "GenericOauthFlow": false, "IsActive": false, "Issuer": "DZf1f2lcORIE94uy", "JWKSEndpoint": "48vzgDvMAkCiaBWr", "KeyID": "G4hB9CxQ4plXKjST", "NetflixCertificates": {"encryptedPrivateKey": "m1B4aUPlwHkPvLkR", "encryptedPrivateKeyName": "lEqPTStZdSRetiHA", "publicCertificate": "YCHdvqj82cxMXYjQ", "publicCertificateName": "VYNvsPM0Sq3UB6H9", "rootCertificate": "srtoL7MZaaApCozs", "rootCertificateName": "5zvixHxil9VhRhq9"}, "OrganizationId": "ERnpsAtmfVBCacmq", "PlatformName": "tn7Iczz24rRCnb7F", "RedirectUri": "uIAEmugwdDKoSjFK", "RegisteredDomains": [{"affectedClientIDs": ["6Fh7vx3kUBEFyFZU", "3FXxIhD9CYwGFK2q", "2DOt1YC7VTx32KdK"], "domain": "VJ6tK53BBWwQI4W9", "namespaces": ["XmzAnsRGp2s1Yo6E", "3EYE6i4WeDh8mkBT", "on7egQQZPe4ia1FB"], "roleId": "r8BUWrMIFA3HBsre"}, {"affectedClientIDs": ["1Be2GSmTluVD6gAW", "kBZJVDqsNxWFzRAz", "S2AYkVm9x1OZBg39"], "domain": "ymiNDrxdbafmwebC", "namespaces": ["IOFki18yE9sZklZm", "Ihyk1IMFvLAWzmea", "nOa4Se1uK2KWyLJx"], "roleId": "XU6LC69zkya9MnT6"}, {"affectedClientIDs": ["vMiH6UDq1fLKjEYs", "lKQUkrksgZq7pUxS", "H6U4fsQAJYyWsxlC"], "domain": "sovVKFq2k12ZBf0B", "namespaces": ["X1Ne0ZIupwNAkAJU", "25gfP9l7UeyTe35Z", "OpPTvd8D88YLDeJU"], "roleId": "KlDOiLKORdDzmgjx"}], "Secret": "okHllQSPDOxp0ZCz", "TeamID": "77cDRARUbMKBXUy8", "TokenAuthenticationType": "bB9eiRlfUdkYwLdv", "TokenClaimsMapping": {"6lpTMKkzmtBV5C2K": "rxQf2qNn7XfbpAQK", "CXKshdyoTTAytPMf": "Qr9Hh2XNewty7PPD", "2mkV6OKvdvwwhdwu": "zsO55FvGjJRZRJzQ"}, "TokenEndpoint": "0o2T5cFQpNTf2iUe", "UserInfoEndpoint": "eoi6kHRJzFM7GkWs", "UserInfoHTTPMethod": "XiSlamiHP96orhya", "scopes": ["BK4LC5MaebNYcuWb", "JmybueR99n8Zj2JG", "8wZUMbnerLrxIMyY"]}' \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'zLN0O2Vn160omr7J' \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'NSdkIAKXuTBYx2xo' \
    --body '{"ACSURL": "TdbmA1OVG7lXyt1m", "AWSCognitoRegion": "R0xg4emPk2EQgTdT", "AWSCognitoUserPool": "sIWG5NX85bdxsUx8", "AllowedClients": ["PU78NKrDHtDvgRIL", "cThNbptV8Bf6muNM", "nT2raxwfqvSoYGqg"], "AppId": "UYSMxYp1sXJIBmjR", "AuthorizationEndpoint": "3gpsSQlJnZUZFi4C", "ClientId": "8kEA9hJb7v5HFhle", "Environment": "DrLjke4egdPtzzIJ", "FederationMetadataURL": "DK9S4HE0IryuFLoS", "GenericOauthFlow": true, "IsActive": true, "Issuer": "FaDVorOR9fmaaQMz", "JWKSEndpoint": "IQjpU84hh91mugEU", "KeyID": "LkZYuHyg1WeRLIB8", "NetflixCertificates": {"encryptedPrivateKey": "KLrE034lECDjByS4", "encryptedPrivateKeyName": "PhpgeC8RcDs4KjWY", "publicCertificate": "gzVE7E5mVHBLvmK6", "publicCertificateName": "UImFV56DEX7Gx5i9", "rootCertificate": "jANA1ZS408nMsbBe", "rootCertificateName": "46jHONxGvM7VxlCX"}, "OrganizationId": "w0dqCp28Thdkn1AK", "PlatformName": "u9ymmazXkTNpaIv6", "RedirectUri": "9PMMhaSt6iKKQaTg", "RegisteredDomains": [{"affectedClientIDs": ["1J18sIehd0kPeKWf", "WuquH0nQjgwEaUG6", "EIHAA4keDKYCJ7UK"], "domain": "1CNLSA1ZRvFiKo9c", "namespaces": ["YDhVRWYOLtzk5Dvm", "kWiSlCUwmsFf7k2p", "g3HjJroPmdpzZ7kX"], "roleId": "vkwkhU9XlPJZfQ8q"}, {"affectedClientIDs": ["B621SfPPzu4cbVRv", "L7EYm2UDypPmmTZ7", "riWT6vjiwdbBzp6V"], "domain": "Pg20ZAS52qAH1Gw8", "namespaces": ["9Cf8JnUU8OY1IBHE", "Z7xcCkwEaCPLpAep", "S2bV0iBbVmHY51Dk"], "roleId": "0PbeDGTT14C4KE9K"}, {"affectedClientIDs": ["9uX6qDvhYsAbk5sa", "x2I3tCdrq63O8jk7", "jq7yz8UwSoO0lFGN"], "domain": "5MM9bbvWbcWvH5g5", "namespaces": ["AdVZwaUiF7Pa1eIC", "UtOUawhxFTMXht8o", "3GvJPXFhhWl4ewyx"], "roleId": "132wZPgGer6vDOup"}], "Secret": "dwF5V26UCw49Ok9W", "TeamID": "xKMEdRWr2JqbRmmj", "TokenAuthenticationType": "Wc7FEEYtPhcwlpE9", "TokenClaimsMapping": {"Ir9g7Gtk6o2IHJeP": "FsMTpW3Uiv5zphKR", "LeKfY1hbJs5WM3Dn": "7dgndVrN1gsJuOnf", "QoXjTpUNnXpiBC9z": "OdfhSHI8rSzEV8fD"}, "TokenEndpoint": "M7xSRHntzlhx63g0", "UserInfoEndpoint": "6RQuJutF7CmQy5qB", "UserInfoHTTPMethod": "On35Toz3S1SmTOFP", "scopes": ["erVShcfqrBZKgl4V", "X6MzRPsKswqvigTq", "1MfBRYlgdKr4PQw0"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'wIjGGiiZWnzkKlaC' \
    --body '{"affectedClientIDs": ["qTZD3lJycdyBMEKZ", "cSS1taWIO7yZPBi6", "Rsv0Dj9uLebWI8s3"], "assignedNamespaces": ["Yz1lb588t3Otn4NS", "A38oGAHWeUGVFDKL", "CpAgSDDRpm31TwnL"], "domain": "PdglR9mzEbYoNCpk", "roleId": "SanmeYpr6P8VqIJz"}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'tFpaLsAunLuKFxE3' \
    --body '{"domain": "XxUDtS0xh6dNXd0B"}' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'DBM81GgrstxRLfAE' \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'OdhKb0hZ4JJxW1bt' \
    --body '{"acsUrl": "WVVtNLBuien2gG0Q", "apiKey": "BZ7IWVsj5U0FYhuv", "appId": "rAn1ItsIk2V96ZKe", "federationMetadataUrl": "xsIsscIBq9o2hzUP", "isActive": true, "redirectUri": "YTninrQCzseGjVc1", "secret": "aRxezq390KyjN1Y8", "ssoUrl": "dglpoL7pY9tuqIpN"}' \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'gOqRJ1qjp0iD8DT6' \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '6pK9BnpK7ULBmgHr' \
    --body '{"acsUrl": "M4fFghyttVH3mBqf", "apiKey": "bG6ETXor5ttxcjpP", "appId": "XIUsz0r3TpmTwumu", "federationMetadataUrl": "wcJDYhdx4rFTVYCj", "isActive": false, "redirectUri": "UXk0SlpDMbLRkSVw", "secret": "LAB1Fcc9X7nVAgY8", "ssoUrl": "Wnmx9O461HJmLCKR"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'xzGrnl5ZTPxW96F6' \
    --platformUserId '8v7QmDmITq5LRIeq' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'Oz0x4FinOxYoJwvo' \
    --after '85' \
    --before '48' \
    --limit '26' \
    > test.out 2>&1
eval_tap $? 142 'GetAdminUsersByRoleIdV3' test.out

#- 143 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'uNl4PpuflLGVzAxm' \
    > test.out 2>&1
eval_tap $? 143 'AdminGetUserByEmailAddressV3' test.out

#- 144 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'AMEHDBAVu9kUn4fr' \
    --body '{"bulkUserId": ["SoGxgMzHkMY7Hqhe", "6dhi1n9E9jPIHVsl", "AS02qckSmybd0w6z"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminGetBulkUserBanV3' test.out

#- 145 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["NhlCk9tEiXFppX4T", "hVgoHDasjE4V4jA2", "P7zMrXmbFnn4COuQ"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminListUserIDByUserIDsV3' test.out

#- 146 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["x8wM15dij3lUHFRn", "doMZyoCWZx4u44EY", "hQvsjx5fmwo27HSV"], "isAdmin": true, "namespace": "FMcrRjYnBk2RlomX", "roles": ["zumy0exGwhFLqCSF", "pUYznVwG4enTn42t", "22u2A5k1M868dt08"]}' \
    > test.out 2>&1
eval_tap $? 146 'AdminInviteUserV3' test.out

#- 147 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '45' \
    --platformUserId 'nBQJPG4Na2FZV0xj' \
    --platformId '5jc0XSJtHKvjlkIA' \
    > test.out 2>&1
eval_tap $? 147 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 148 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 148 'AdminListUsersV3' test.out

#- 149 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'eiQwXXbsREYt0tJg' \
    --endDate 'gHnC0GEaJG3wuxVU' \
    --limit '36' \
    --offset '71' \
    --platformBy 'zUkE7fOL6jQMAFmH' \
    --platformId 'kLfOq9yiO6nk1N9r' \
    --query 'HruAKI9rO9QJFnoe' \
    --startDate 'l9ELHUDk5xvxlsFa' \
    > test.out 2>&1
eval_tap $? 149 'AdminSearchUserV3' test.out

#- 150 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["CNI9F3FAi79yOz7X", "Q7R2lI4JTLA9r0Ih", "plLCCdaAneiyrTis"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminGetBulkUserByEmailAddressV3' test.out

#- 151 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'awJMGwCUDdjqhiZD' \
    > test.out 2>&1
eval_tap $? 151 'AdminGetUserByUserIdV3' test.out

#- 152 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'KmqreAtElUMDNlax' \
    --body '{"avatarUrl": "Me1RV7Ig9DqVidAD", "country": "Y3HgZpqBi8JaDK5j", "dateOfBirth": "WV5ceHbunMPaiTaR", "displayName": "w0ormGzn23959DPE", "languageTag": "NB87jOZBYTqJIz53", "userName": "mjL1f3TnBlMvgLl3"}' \
    > test.out 2>&1
eval_tap $? 152 'AdminUpdateUserV3' test.out

#- 153 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pQoPbbM5nqqCcofr' \
    --activeOnly 'false' \
    --after 'N6e47EzqBtxidEFJ' \
    --before 'EpKCI63f52JvUque' \
    --limit '85' \
    > test.out 2>&1
eval_tap $? 153 'AdminGetUserBanV3' test.out

#- 154 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lpWMRwOKh2B49dYo' \
    --body '{"ban": "Sn5Tj8pySZIOzAFu", "comment": "3VMiQDDgsmipG18G", "endDate": "jSAcmbbntxdEFOzG", "reason": "KkLqNnsiGJB57toT", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 154 'AdminBanUserV3' test.out

#- 155 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'nRwRLJ7ajddOznKj' \
    --namespace $AB_NAMESPACE \
    --userId 'ad3Wvi0r4cwizGMo' \
    --body '{"enabled": true, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 155 'AdminUpdateUserBanV3' test.out

#- 156 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YokoreaPDBOJqnBm' \
    --body '{"context": "2eJBCNODtO2WlSBx", "emailAddress": "GGNLkMdfxmZwFs7S", "languageTag": "8rPBe9cUmDw6KG8i"}' \
    > test.out 2>&1
eval_tap $? 156 'AdminSendVerificationCodeV3' test.out

#- 157 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BKE4wyzZ3yCVRZfk' \
    --body '{"Code": "z4makjYUhvkg4HAQ", "ContactType": "feJ5bl9EYlWi62Fw", "LanguageTag": "tQmeT7ijbpsQYyBN", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 157 'AdminVerifyAccountV3' test.out

#- 158 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId '0jwQWdz00DUA1c0A' \
    > test.out 2>&1
eval_tap $? 158 'GetUserVerificationCode' test.out

#- 159 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '6gu8novf1S7r6LtY' \
    > test.out 2>&1
eval_tap $? 159 'AdminGetUserDeletionStatusV3' test.out

#- 160 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '0wAOtgDlBlRWz99O' \
    --body '{"deletionDate": 57, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserDeletionStatusV3' test.out

#- 161 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId '6isjAB6U5DA47JVb' \
    --body '{"code": "108pSdOkSGL2yiZK", "country": "6oUa4j4EJSbqw5US", "dateOfBirth": "NMQzYUbZ8KoEWUwA", "displayName": "j271qdL3Z8IOyvzJ", "emailAddress": "akl8yn4KezUIITMc", "password": "M2ZZZ86jR8ys2f5D", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 161 'AdminUpgradeHeadlessAccountV3' test.out

#- 162 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'GZ1FX62rgRg9LoSa' \
    > test.out 2>&1
eval_tap $? 162 'AdminDeleteUserInformationV3' test.out

#- 163 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pryUvaqG39TvmAgH' \
    --after '0.5899966646026861' \
    --before '0.4368665247297685' \
    --limit '11' \
    > test.out 2>&1
eval_tap $? 163 'AdminGetUserLoginHistoriesV3' test.out

#- 164 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tiqxfuzjiOYALTVY' \
    --body '{"languageTag": "H6rvkFRpMw0QFtX6", "newPassword": "mzCvpJNmZyQA0T2r", "oldPassword": "M9IBvwYjNOMUNyYO"}' \
    > test.out 2>&1
eval_tap $? 164 'AdminResetPasswordV3' test.out

#- 165 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QftUfcXvhVy2JZFy' \
    --body '{"Permissions": [{"Action": 7, "Resource": "nXKMTocItvaQodzN", "SchedAction": 48, "SchedCron": "aHQbFA2rx8cEBgzt", "SchedRange": ["IO2W3NyXxxiDzVkO", "iGhPKj7JEFsx85er", "ayepqof1LDZLc6d3"]}, {"Action": 92, "Resource": "7qFrAPSdKkUOicxb", "SchedAction": 80, "SchedCron": "a96SkGVzQazs2y8a", "SchedRange": ["oF4l4aC95yellPJ5", "jErCiIQfssSphGu8", "3ylPu7chDwLRMlZ0"]}, {"Action": 21, "Resource": "zrcL9tubJoAiDwP4", "SchedAction": 75, "SchedCron": "11dW0HhZ4TW9AEfg", "SchedRange": ["7iMx6Sye7Vd3WVCV", "KUfgsnUPMK6LhErz", "r8G6QXvlAVrdnASP"]}]}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserPermissionV3' test.out

#- 166 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'blB2t7vjZ2DDrxQF' \
    --body '{"Permissions": [{"Action": 52, "Resource": "fkBSFRiZ2JAl2ZBp", "SchedAction": 72, "SchedCron": "mEZLirLlBP4hIBJj", "SchedRange": ["ZzPuCfWdD3M85Xbd", "Nd4Oa6RlJUuX4xg8", "cRPAHkepx2YjRuMF"]}, {"Action": 69, "Resource": "ewU195T3Ug6VAfy0", "SchedAction": 55, "SchedCron": "JUpajbMnSIxhSJhM", "SchedRange": ["DRKmhpi66Hw96va5", "1dn0ahJgNIZ32Yjf", "D5C0a2STEpCZnHcl"]}, {"Action": 28, "Resource": "DpPPPaAYqj71aemP", "SchedAction": 57, "SchedCron": "5RMdleEcyIY8BPuF", "SchedRange": ["zDHeZyuX19DMJ39E", "v3eyf0aErf7zOBVS", "8nwRLsjZvcIMFeok"]}]}' \
    > test.out 2>&1
eval_tap $? 166 'AdminAddUserPermissionsV3' test.out

#- 167 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId '0BbNI91ljsePSjyD' \
    --body '[{"Action": 85, "Resource": "mNxgFIETYHGPyIYT"}, {"Action": 80, "Resource": "ojiLvtIdb9CfwMAL"}, {"Action": 27, "Resource": "XOO4v2HoTG5RkqaX"}]' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionBulkV3' test.out

#- 168 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '89' \
    --namespace $AB_NAMESPACE \
    --resource '1hkMrE62Wyr1A83Z' \
    --userId 'PuwytmynaaEMLJS4' \
    > test.out 2>&1
eval_tap $? 168 'AdminDeleteUserPermissionV3' test.out

#- 169 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TrmO8yaz84bBiTgn' \
    --after 'QBQcvWn9d0a4TWGt' \
    --before 'S3U9FFppNh0BWI9W' \
    --limit '70' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetUserPlatformAccountsV3' test.out

#- 170 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'U6tArmk0lLqrNjjp' \
    > test.out 2>&1
eval_tap $? 170 'AdminGetListJusticePlatformAccounts' test.out

#- 171 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'd2tCtGeoNHDBtvXv' \
    --userId 'XLvOi37Puku9zjMq' \
    > test.out 2>&1
eval_tap $? 171 'AdminGetUserMapping' test.out

#- 172 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'ddS9GPsGC6RbnG3l' \
    --userId 'AH6EvvbjHk57amwq' \
    > test.out 2>&1
eval_tap $? 172 'AdminCreateJusticeUser' test.out

#- 173 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'MnMgBfQ0i2ceRbTH' \
    --skipConflict 'true' \
    --body '{"platformId": "TxXBHsW1kcO2mYyt", "platformUserId": "sXAnxajSjMP7oGK4"}' \
    > test.out 2>&1
eval_tap $? 173 'AdminLinkPlatformAccount' test.out

#- 174 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'VM91e0LoOaUDWQT2' \
    --userId '8Kphz5Q1xKLqPoEN' \
    --body '{"platformNamespace": "3JIyuaE1dBc63d4W"}' \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformUnlinkV3' test.out

#- 175 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '30cTeXRWV1fTJS44' \
    --userId 'pHmlV4QV88umTo1W' \
    --ticket 'WDl8Ec8SEH1Mty6g' \
    > test.out 2>&1
eval_tap $? 175 'AdminPlatformLinkV3' test.out

#- 176 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'KjqM8K1J9ZwCngSR' \
    --userId 'anZ0AbSXrqnpHoP5' \
    --platformToken 'kVQc88VqKytsiVyv' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 177 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId '2uCCyDontL1JVsJ3' \
    --userId 'jpN4ks3uNNnYA38H' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetUserSinglePlatformAccount' test.out

#- 178 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'G2kaUWMiZOwUiBuT' \
    --body '["Dcgbh8I7uevIyKr9", "VXlMV70ICY5S1O2B", "X5aidJkcyWnNefUA"]' \
    > test.out 2>&1
eval_tap $? 178 'AdminDeleteUserRolesV3' test.out

#- 179 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RaEORB9A2S0CEz8f' \
    --body '[{"namespace": "T4LQZ0Kqd6iSz7eo", "roleId": "cvdl3i6NZpCATJHK"}, {"namespace": "YPZje2A3UTynIxGa", "roleId": "jqmMaGvQOiANlYYT"}, {"namespace": "pksBWdmYrgHfK3Qe", "roleId": "eKyUwtqpknVenFpv"}]' \
    > test.out 2>&1
eval_tap $? 179 'AdminSaveUserRoleV3' test.out

#- 180 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'j6dwqiaBW9RB2AiW' \
    --userId 'b9vPjtR4SYEjUIvG' \
    > test.out 2>&1
eval_tap $? 180 'AdminAddUserRoleV3' test.out

#- 181 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId '3vUjd2rPQmYbcflk' \
    --userId 'EqQThB92GY8JMlRB' \
    > test.out 2>&1
eval_tap $? 181 'AdminDeleteUserRoleV3' test.out

#- 182 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lGkbpMPf3T2CwKro' \
    --body '{"enabled": true, "reason": "ETN4lDfTdVI1g74S"}' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateUserStatusV3' test.out

#- 183 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'F4SD4cA120EOA8zt' \
    > test.out 2>&1
eval_tap $? 183 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 184 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'zgHzuz2277QL1J1t' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "0xhW5qKW9ySVxJu7"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminUpdateClientSecretV3' test.out

#- 185 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'pyMIJx4TwTctkQM5' \
    --before 'xZScnimak2GAdIsq' \
    --isWildcard 'false' \
    --limit '22' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRolesV3' test.out

#- 186 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "managers": [{"displayName": "TZwXKSd5CON5r8vX", "namespace": "5VNYPRJd1XRAnA61", "userId": "wTQqXy5H39OL77k3"}, {"displayName": "HxLH2JSbAIAYVdjq", "namespace": "B6OJ1EIFyyjfrJlc", "userId": "xzmubhdUrR9h0JiR"}, {"displayName": "EXzhg4m0nYl970V2", "namespace": "zMWKhK7RHuCC3oYX", "userId": "0s8ZrmEjita4R6QQ"}], "members": [{"displayName": "TDOj0DtpvBjqs8U7", "namespace": "YE7Z1uauFKuxAImZ", "userId": "QvAI3kyUhSpC4WAm"}, {"displayName": "6RVWQcOumvE7vbKN", "namespace": "pbwvN9uQdgi61v6w", "userId": "vjzxlUbU4vDx877z"}, {"displayName": "dQ4ts4kVouQM5fol", "namespace": "rZEhxHnH1F80vbnl", "userId": "8Jvg9LJJJhA8HJHf"}], "permissions": [{"action": 72, "resource": "g9iG6GLp1WM3BoBZ", "schedAction": 25, "schedCron": "RrKnd4FQZgtdgpp2", "schedRange": ["q0tdKJjPvm1EM6wS", "9NxavuTU3ZMgHUW7", "naAxSqyOF517T9qN"]}, {"action": 42, "resource": "MvtOA1WjVZCzBx55", "schedAction": 92, "schedCron": "W1rqFqDQFdtt8NWd", "schedRange": ["oGuSR1oT5VuUu39L", "EEXnhtJK1mRiXi7I", "co0KWYi7GutQkUyn"]}, {"action": 15, "resource": "BELyZJKwOLClEdTM", "schedAction": 6, "schedCron": "XVXZpa7Y4Ju43lDs", "schedRange": ["w6A23YsEoT2uZz7y", "CrTSiGpzamxPQQFX", "8dpbgoMRiWiLczv5"]}], "roleName": "x57OhFOQJUeqNZKJ"}' \
    > test.out 2>&1
eval_tap $? 186 'AdminCreateRoleV3' test.out

#- 187 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'nwN8jFdFXrKaHaGa' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetRoleV3' test.out

#- 188 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'dblPgAZxpaeMdcaP' \
    > test.out 2>&1
eval_tap $? 188 'AdminDeleteRoleV3' test.out

#- 189 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'w2qtSMYiKAdD1MAC' \
    --body '{"deletable": false, "isWildcard": true, "roleName": "CR6cQo06h6qUSr2U"}' \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateRoleV3' test.out

#- 190 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'tD7z9Dj4ve4sw5PL' \
    > test.out 2>&1
eval_tap $? 190 'AdminGetRoleAdminStatusV3' test.out

#- 191 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'ZmYJdKoiaByjqu1l' \
    > test.out 2>&1
eval_tap $? 191 'AdminUpdateAdminRoleStatusV3' test.out

#- 192 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'pjSVJqQoltvtv2B2' \
    > test.out 2>&1
eval_tap $? 192 'AdminRemoveRoleAdminV3' test.out

#- 193 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'nGHLRcuQFDijsJAu' \
    --after 'IsFcOk57G3n6JPvC' \
    --before '5bwJETTEGhj9CQlW' \
    --limit '17' \
    > test.out 2>&1
eval_tap $? 193 'AdminGetRoleManagersV3' test.out

#- 194 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'tOBuyXJGtt90lmYV' \
    --body '{"managers": [{"displayName": "KWVISgjoe76yhKtf", "namespace": "OVv0moorMnRtBS3F", "userId": "tnlrmCxMXjzOBLu6"}, {"displayName": "AkXuIrcix8wWjw5j", "namespace": "6OyadbhwQrY3CPZp", "userId": "Pv0vdC9TrJuyKsTR"}, {"displayName": "GSWnG6IIHkVgznGm", "namespace": "urajdhfxIvhJDggZ", "userId": "wSE0sGtnbQMu3TSu"}]}' \
    > test.out 2>&1
eval_tap $? 194 'AdminAddRoleManagersV3' test.out

#- 195 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'M9EIPfZlPCaTVTme' \
    --body '{"managers": [{"displayName": "9Ks6l4cykezclECh", "namespace": "kWuHOd5ya7Wm58vh", "userId": "x2jHz74NuWwy0V9b"}, {"displayName": "aufvfCS20YE6cu5T", "namespace": "C8YQ6c6kRNqYMYse", "userId": "CTMcXI6yHQVUYGlK"}, {"displayName": "4d9B606JJIJcqOfe", "namespace": "682lNz1C6xV4Wo9l", "userId": "cnw01sq5zZbpyXp0"}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminRemoveRoleManagersV3' test.out

#- 196 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'aFbFvL0KZaNJYsb4' \
    --after 'GbZc053Ni2p3gVMh' \
    --before 'H6Rp9arzrfX2okMg' \
    --limit '31' \
    > test.out 2>&1
eval_tap $? 196 'AdminGetRoleMembersV3' test.out

#- 197 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId '11HM0lYiluKSJO3m' \
    --body '{"members": [{"displayName": "6IVyfVI3aocFBFAZ", "namespace": "D1Kp5RP876sQ6eW7", "userId": "9j4ksm9kTSdMNY3w"}, {"displayName": "rIjnMzGsHzFlJSln", "namespace": "IbNCEyircBXEwpf0", "userId": "fF3n3VaGfw0c9TnB"}, {"displayName": "XId9XyFclY3mjHj1", "namespace": "WS6j1MZE7Be90m3I", "userId": "X3SqE39F2UnrYexd"}]}' \
    > test.out 2>&1
eval_tap $? 197 'AdminAddRoleMembersV3' test.out

#- 198 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId '9WZB8Ey2LbiHqD6R' \
    --body '{"members": [{"displayName": "Xi5IPZFLdaUjSfcU", "namespace": "VqzuhXyErgDWDHJ2", "userId": "BbJBB4xsOqCHbOBn"}, {"displayName": "41ggHzv3PlO864TL", "namespace": "RVimZg48M7RHLbRi", "userId": "6ZHrIBBa5pTtuiYS"}, {"displayName": "ZidoJEREUJT0mLmp", "namespace": "0YT9uCLWH8cpKQFa", "userId": "ciXmUBpcSPsIIxtD"}]}' \
    > test.out 2>&1
eval_tap $? 198 'AdminRemoveRoleMembersV3' test.out

#- 199 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'FnESphBTGPOgu4fV' \
    --body '{"permissions": [{"action": 36, "resource": "iXffs9JuWwd3ODSR", "schedAction": 76, "schedCron": "rbowIccz8BL5spHo", "schedRange": ["iv6NP2kEXSKgjPfT", "JorYDLHtrw2WbzoL", "yfWqsxhe3ERrxWWt"]}, {"action": 22, "resource": "VYuioUsDnUyNrx7c", "schedAction": 82, "schedCron": "B17NyN6rBBks80Ew", "schedRange": ["DnKwI0RrTgSU6zMV", "RE9pygrWgSkLqWM5", "Eju2fIHYeLarj3KE"]}, {"action": 92, "resource": "x7NgiOgXNeKs6Kuy", "schedAction": 34, "schedCron": "EAX1w5tKanStYdnd", "schedRange": ["LtJlpqCHQwSTIELi", "1fAYqFY4xvC0Rssa", "L11IUT48sF9GGvo5"]}]}' \
    > test.out 2>&1
eval_tap $? 199 'AdminUpdateRolePermissionsV3' test.out

#- 200 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'TWuRkcTlbtdGICVr' \
    --body '{"permissions": [{"action": 65, "resource": "PpN3dCCCWIQMcVtP", "schedAction": 23, "schedCron": "ebMSTLFr83LFg40c", "schedRange": ["AAVBCNwVipzOg0p9", "8ltVZ4naICH2u8Zl", "6qUsWpxYaNVOC9he"]}, {"action": 92, "resource": "CPJrR4CpgM8YNgHC", "schedAction": 98, "schedCron": "gpNtH0jvirNydoRR", "schedRange": ["lKaDCV4nMHRk1Bxq", "Nc5zneo4aBjTfNvH", "DoMX1pMOpMhN1UFh"]}, {"action": 18, "resource": "ryQCwRzECkMkaF9J", "schedAction": 38, "schedCron": "WmPnmqws8U7Vzl3e", "schedRange": ["M0XoCfo9nMZUC0fX", "nLy2C9Vov14j2mOB", "QnoIBRf5GbJgADxj"]}]}' \
    > test.out 2>&1
eval_tap $? 200 'AdminAddRolePermissionsV3' test.out

#- 201 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'yX2IcAcm28t02MZr' \
    --body '["KZ5ac1buaaazgB2n", "ru8lBjsrcQ8xGXYx", "62Xa5YOQfMLhPgOm"]' \
    > test.out 2>&1
eval_tap $? 201 'AdminDeleteRolePermissionsV3' test.out

#- 202 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '56' \
    --resource 's6c4g9cFyhz9oWev' \
    --roleId 'zhYiD4QNhqbkNXa0' \
    > test.out 2>&1
eval_tap $? 202 'AdminDeleteRolePermissionV3' test.out

#- 203 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 203 'AdminGetMyUserV3' test.out

#- 204 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'fqObXq5uVzfmP3gc' \
    --extendExp 'false' \
    --redirectUri 'BUrZrvmd7gONSiBa' \
    --password 'r6O3jQlr5IikTSas' \
    --requestId 'cSILa8aC7YIScnY3' \
    --userName 'aAW1RNvEJXtBY9yF' \
    > test.out 2>&1
eval_tap $? 204 'UserAuthenticationV3' test.out

#- 205 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'cgqlUGUFEjCoTOyd' \
    --linkingToken 'zIztjTaHDYdswqm4' \
    --password 'MWwcWUEqHxM6Zukv' \
    --username 'WvS5O4ZVXBY3rWRq' \
    > test.out 2>&1
eval_tap $? 205 'AuthenticationWithPlatformLinkV3' test.out

#- 206 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData '8xVFkPFY1A55cElW' \
    --extendExp 'true' \
    --linkingToken 'mSC02U8RuYFFy11k' \
    > test.out 2>&1
eval_tap $? 206 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 207 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'o3WpZB60KiYBQW4T' \
    > test.out 2>&1
eval_tap $? 207 'RequestOneTimeLinkingCodeV3' test.out

#- 208 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'U9PZcbNmntLBIC8A' \
    > test.out 2>&1
eval_tap $? 208 'ValidateOneTimeLinkingCodeV3' test.out

#- 209 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'dx5sjYoPdhjk7Icm' \
    --isTransient 'false' \
    --clientId 'NxKtmzEx8TcmAnlR' \
    --oneTimeLinkCode 'dyD7xL7AfBwcBZEE' \
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
    --clientId 'YHhpfPfYBXCQahpW' \
    > test.out 2>&1
eval_tap $? 212 'RequestGameTokenCodeResponseV3' test.out

#- 213 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId '74hkcLOR48U23Gtc' \
    --userId '772H5L0I5KLwfcel' \
    > test.out 2>&1
eval_tap $? 213 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 214 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gdvbusJDYKCXnTff' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 214 'RevokeUserV3' test.out

#- 215 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'CdrSWFKhorlXqS2u' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'true' \
    --oneTimeLinkCode 'voTiWPBm5gPJIZoM' \
    --redirectUri '10Yj5al5g91AtyUE' \
    --scope 'NKPycCldDjRHGWjW' \
    --state 'e8jUI3aKr3nmDOmQ' \
    --targetAuthPage 'xujDKUhVZjnOmz3w' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'L3RiiPQ1zvPFOu4x' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 215 'AuthorizeV3' test.out

#- 216 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token '6he4O6s6k8rzbjrn' \
    > test.out 2>&1
eval_tap $? 216 'TokenIntrospectionV3' test.out

#- 217 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 217 'GetJWKSV3' test.out

#- 218 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'CgljskgqfVJ48N6g' \
    --factor 'QWQAhzhlrzEfzqAC' \
    --mfaToken 'nQny4Z5V0PgogsRE' \
    > test.out 2>&1
eval_tap $? 218 'SendMFAAuthenticationCode' test.out

#- 219 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'eZ8F1lcXsAChbTVW' \
    --mfaToken '7wmqVreyur7jZg6C' \
    > test.out 2>&1
eval_tap $? 219 'Change2faMethod' test.out

#- 220 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'IZ6Aw0suMGaxdxiF' \
    --factor '6j6yYhm3nzschYXB' \
    --mfaToken '7P7KSfkparkNo9b3' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 220 'Verify2faCode' test.out

#- 221 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'r6JwmSK9lThaNXp4' \
    --userId 'PkvFvYqSogCWA2Lb' \
    > test.out 2>&1
eval_tap $? 221 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 222 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'HVdiQN62ZqzUxOM7' \
    --clientId 'H50fDR2SesLJbsIE' \
    --redirectUri 'n5h6oGLb5dYCJdh4' \
    --requestId 'StBt8GhW3rhC6O6E' \
    > test.out 2>&1
eval_tap $? 222 'AuthCodeRequestV3' test.out

#- 223 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'FW5Kkz5mfI2btX7F' \
    --additionalData 'B3S5AhoiMguiEATL' \
    --clientId 'eAYXT50R69e1AOI6' \
    --createHeadless 'false' \
    --deviceId 'AxsreZcmXv2r3zpA' \
    --macAddress 'xLb2qYtrGTx8JE5X' \
    --platformToken 'x6JAiQMHDNz36wnX' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 223 'PlatformTokenGrantV3' test.out

#- 224 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 224 'GetRevocationListV3' test.out

#- 225 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'q6e5qIqmiK0oo6Ud' \
    > test.out 2>&1
eval_tap $? 225 'TokenRevocationV3' test.out

#- 226 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'jGUQl0uj4HkhODyZ' \
    --clientId 'bbCDeJGnYB0IgULm' \
    --code 'Re7LKT56wnorLGMG' \
    --codeVerifier 'Wkvjb6h63TxDgc5x' \
    --extendExp 'false' \
    --password 'd3yrsbx0ByI5ldom' \
    --redirectUri 'DgiojFWZdzvkWhkU' \
    --refreshToken 'A45IY5XiUt3xqsCh' \
    --username 'RG3camTP4NQn9CWH' \
    --grantType 'client_credentials' \
    > test.out 2>&1
eval_tap $? 226 'TokenGrantV3' test.out

#- 227 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'k132fHEqPcxtdVlq' \
    > test.out 2>&1
eval_tap $? 227 'VerifyTokenV3' test.out

#- 228 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'i7UZUXnPBd5QGHTJ' \
    --code 'b7oCHZ1roqgFXwGl' \
    --error 'xZLKQi3Dc9VloLtp' \
    --openidAssocHandle 'ipfL8jG08aNK9nAU' \
    --openidClaimedId 'WfqtQtL53Am4ecM0' \
    --openidIdentity 'syFC7aUeccEV6mvL' \
    --openidMode 'P6WV239lwzhhLtHN' \
    --openidNs 'emdap4ZYWh7Xz7Lt' \
    --openidOpEndpoint 'DHQFFnu5ZjfTG0J3' \
    --openidResponseNonce 'jukyBsfl1ETXsSZn' \
    --openidReturnTo 'LJp0WfdB694zi7EF' \
    --openidSig 'UDjPI5VKSyx99czr' \
    --openidSigned 'hv5bLQBadi0UIOAG' \
    --state '7XBjp8KdgdGHR4Xx' \
    > test.out 2>&1
eval_tap $? 228 'PlatformAuthenticationV3' test.out

#- 229 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode 'vSDm4iQJMeqbGQ0Z' \
    > test.out 2>&1
eval_tap $? 229 'PublicGetInputValidations' test.out

#- 230 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'zET0x5g68dtvwE0G' \
    > test.out 2>&1
eval_tap $? 230 'PublicGetInputValidationByField' test.out

#- 231 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'KBVGqOAGGhsJo677' \
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
    --clientId 'uMQaCivEdzHoX1zE' \
    > test.out 2>&1
eval_tap $? 233 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 234 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'j6xbvYLS9NOv0J1F' \
    --rawPUID 'false' \
    --body '{"platformUserIds": ["vQhU6v2agVJXkcOI", "UgVSPDGWua6qzSBB", "L8bD71vXE5KTP4hb"]}' \
    > test.out 2>&1
eval_tap $? 234 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 235 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'tHL3WnvElMyxQLg9' \
    --platformUserId 'y10EI61Psmu7kJ7u' \
    > test.out 2>&1
eval_tap $? 235 'PublicGetUserByPlatformUserIDV3' test.out

#- 236 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'Qu0JovS7MMmIUafU' \
    > test.out 2>&1
eval_tap $? 236 'PublicGetAsyncStatus' test.out

#- 237 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'OV8qB3xrMOwVXrRY' \
    --limit '85' \
    --offset '90' \
    --query 'EX7RELwSNdPoHF1M' \
    > test.out 2>&1
eval_tap $? 237 'PublicSearchUserV3' test.out

#- 238 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "hbQ3dRCO9ZNgLhVt", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "D5WqElOgfa52SyZ2", "policyId": "eEE31yrRGCDYNCvK", "policyVersionId": "aF7LXH8a8gsuYHQX"}, {"isAccepted": false, "localizedPolicyVersionId": "vDOT2LnrQtFOeVVo", "policyId": "XMEJiLkUSEcpmYJ9", "policyVersionId": "Ka3ShXtiteRhhgJP"}, {"isAccepted": false, "localizedPolicyVersionId": "zWOntrR0DMwMocpx", "policyId": "ivCrFNqEo1CAHiqy", "policyVersionId": "efACRkokTM2OQowC"}], "authType": "IO1kKT6zHdEnVLET", "code": "VgbLweCJUSi2Rv1C", "country": "SEndhA7qv8rJUbt9", "dateOfBirth": "IiYuNTE7LEwwRIGc", "displayName": "nsVN2FDCfaBlqKqS", "emailAddress": "2EMPxX2Iut2ps4uu", "password": "5YvqzfyeWRzso5Z0", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 238 'PublicCreateUserV3' test.out

#- 239 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'inBT4e9MFXdbO7BB' \
    --query 'Rd24PtIlCdIswtzA' \
    > test.out 2>&1
eval_tap $? 239 'CheckUserAvailability' test.out

#- 240 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["weSX6kO4d1zXphA3", "K21NEJj4FVJiPKl0", "Su1JCAxfvozhjcb1"]}' \
    > test.out 2>&1
eval_tap $? 240 'PublicBulkGetUsers' test.out

#- 241 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "GS0RSyAKLlAK1yRO", "languageTag": "GhqV3kDL97mv0ejc"}' \
    > test.out 2>&1
eval_tap $? 241 'PublicSendRegistrationCode' test.out

#- 242 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "suvEtJ34u7tFWNe4", "emailAddress": "6bdtPrhIMSvBbsDT"}' \
    > test.out 2>&1
eval_tap $? 242 'PublicVerifyRegistrationCode' test.out

#- 243 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "KXkD0l0reg42EAEI", "languageTag": "FLlLYvFllGvJHST5"}' \
    > test.out 2>&1
eval_tap $? 243 'PublicForgotPasswordV3' test.out

#- 244 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId '9WXHjnBhBPBT057y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 244 'GetAdminInvitationV3' test.out

#- 245 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'tIJrsXO6fTYuIBJo' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "UQy40ONXchYhoXEl", "policyId": "ltsi43uJaEmlTBGf", "policyVersionId": "adT3svCf0ClUPpml"}, {"isAccepted": true, "localizedPolicyVersionId": "2jjpL8GXzaKF2ydj", "policyId": "RnBGJd0sEffQ7bMw", "policyVersionId": "0NElz2UaFYs3NIHZ"}, {"isAccepted": true, "localizedPolicyVersionId": "fBXev11sZ3UJfhoI", "policyId": "j18ZlRihKhpkNXfR", "policyVersionId": "YsMT4RuNkQht4clX"}], "authType": "EMAILPASSWD", "country": "bwknDN0u4dIJ0VSi", "dateOfBirth": "pR80ll4wZjQM9faw", "displayName": "7Gf8EjWgphEPf4zd", "password": "k3QeHeb5pyqbQ6Kx", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 245 'CreateUserFromInvitationV3' test.out

#- 246 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "05NYmc1EViffBm3R", "country": "cOopnhrZ1J2nCv0M", "dateOfBirth": "STtyYE5lruNLFyhZ", "displayName": "o3p93TSGltCdFghu", "languageTag": "Frxt1OoBBqD2ZNs5", "userName": "mmYaJKuqAaiE6Bq5"}' \
    > test.out 2>&1
eval_tap $? 246 'UpdateUserV3' test.out

#- 247 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "qaqQn6PKHlkP2sdG", "country": "9V1j6jyc6vi9gJak", "dateOfBirth": "mdicadgjlSaDdTqc", "displayName": "OB7MyqjnMAy8MZBe", "languageTag": "xqkx3SBLgjkg3Ypf", "userName": "yabk0Kx3oQ4x0i1V"}' \
    > test.out 2>&1
eval_tap $? 247 'PublicPartialUpdateUserV3' test.out

#- 248 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "3cNfO2d4beb1o5sF", "emailAddress": "2HZbQwjLShMUazXT", "languageTag": "DWnWkX4lLo5iCk7g"}' \
    > test.out 2>&1
eval_tap $? 248 'PublicSendVerificationCodeV3' test.out

#- 249 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "YcxukmZwFOC109kG", "contactType": "p76N15NALqxdGd1b", "languageTag": "wnDqKLrXGkIBIGmr", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 249 'PublicUserVerificationV3' test.out

#- 250 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Nf2pbgl0mKmjSsy7", "country": "98EWXw0EtjhWV0gO", "dateOfBirth": "tXC5oDsfDyIDlmZW", "displayName": "a3DJgqzaNJkWrj6a", "emailAddress": "sbbUv1BNBECFglI4", "password": "gPG0DRwl1ombgU0u", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 250 'PublicUpgradeHeadlessAccountV3' test.out

#- 251 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "p0JOFwXdUiZOKmYj", "password": "kdXlPACMTuAVX50C"}' \
    > test.out 2>&1
eval_tap $? 251 'PublicVerifyHeadlessAccountV3' test.out

#- 252 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "5qpni2XaAK8xh2pX", "newPassword": "XgzKHXQBbvjq0lmN", "oldPassword": "P4mj3avroqmcicH4"}' \
    > test.out 2>&1
eval_tap $? 252 'PublicUpdatePasswordV3' test.out

#- 253 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'n0qXrgHXVlA3VGWa' \
    > test.out 2>&1
eval_tap $? 253 'PublicCreateJusticeUser' test.out

#- 254 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '4YDOe1jWAQNFvkPJ' \
    --redirectUri 'yJxjd5ruyn19CC8C' \
    --ticket 'RmCT8Ulv0E0Uty07' \
    > test.out 2>&1
eval_tap $? 254 'PublicPlatformLinkV3' test.out

#- 255 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'miTzQQFuXgsV7ctz' \
    --body '{"platformNamespace": "TV9aKf8GcDsHiOTH"}' \
    > test.out 2>&1
eval_tap $? 255 'PublicPlatformUnlinkV3' test.out

#- 256 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'unNJyQEcLX4UskUx' \
    > test.out 2>&1
eval_tap $? 256 'PublicPlatformUnlinkAllV3' test.out

#- 257 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7YWvhEe2JgKkcUn5' \
    --ticket 'Gwtdqi3Af4d3DmJy' \
    > test.out 2>&1
eval_tap $? 257 'PublicForcePlatformLinkV3' test.out

#- 258 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'TAfhUgixmA2RPtlo' \
    --clientId 'NMbL1frUNAQ7YsaV' \
    --redirectUri 'zzUg8mTpHETsfTNL' \
    > test.out 2>&1
eval_tap $? 258 'PublicWebLinkPlatform' test.out

#- 259 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId '9R0JTzCaFL6wSZUr' \
    --code '34wKn5ZQdkyW6i9w' \
    --state 'eYEX6mWcCGiYKe0k' \
    > test.out 2>&1
eval_tap $? 259 'PublicWebLinkPlatformEstablish' test.out

#- 260 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'i0tilnpe1xFMx5Hx' \
    --code 'Ci8dMESjt5hlTTtS' \
    --state 'csOvBIdmoqZbVswi' \
    > test.out 2>&1
eval_tap $? 260 'PublicProcessWebLinkPlatformV3' test.out

#- 261 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "JeNckInaGadY1kmY", "emailAddress": "xEo9RXwh3H1Lyu6B", "newPassword": "rS0AvKStP4sAi2hb"}' \
    > test.out 2>&1
eval_tap $? 261 'ResetPasswordV3' test.out

#- 262 PublicGetUserByUserIdV3
eval_tap 0 262 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 263 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'B0TueHfsJkF2MXK8' \
    --activeOnly 'false' \
    --after 'xyENEhDndtqWlpxI' \
    --before 'MVPeE7CRkatPDnZZ' \
    --limit '72' \
    > test.out 2>&1
eval_tap $? 263 'PublicGetUserBanHistoryV3' test.out

#- 264 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'boQkUQpehY4KzLDL' \
    > test.out 2>&1
eval_tap $? 264 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 265 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lO1AmVN3FAMbvsMP' \
    > test.out 2>&1
eval_tap $? 265 'PublicGetUserInformationV3' test.out

#- 266 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Cgf70hUdwV5VOBrY' \
    --after '0.8215261415006945' \
    --before '0.4993907994621679' \
    --limit '28' \
    > test.out 2>&1
eval_tap $? 266 'PublicGetUserLoginHistoriesV3' test.out

#- 267 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '4DnNm0OEPccTESyo' \
    --after 'M3fO24M351FRVmEE' \
    --before 'VfqXgmz2fbKPQJnG' \
    --limit '80' \
    > test.out 2>&1
eval_tap $? 267 'PublicGetUserPlatformAccountsV3' test.out

#- 268 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NBSEGsM9kRgUvuhV' \
    > test.out 2>&1
eval_tap $? 268 'PublicListJusticePlatformAccountsV3' test.out

#- 269 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'RuRqswSmmexUmnEW' \
    --body '{"platformId": "HOVgtDhmPCtykAfT", "platformUserId": "yDZaPWGS3uKHcHPL"}' \
    > test.out 2>&1
eval_tap $? 269 'PublicLinkPlatformAccount' test.out

#- 270 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'xYoOVMTYfZhBpUY6' \
    --body '{"chosenNamespaces": ["XSewQ1vPYFaHaPaB", "wl53kkcDRGCWDi4s", "IshjStl7ZJGcxaIU"], "requestId": "wyUJhSK2kJAYXl3s"}' \
    > test.out 2>&1
eval_tap $? 270 'PublicForceLinkPlatformWithProgression' test.out

#- 271 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dzeLdq6CxBryJuPt' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetPublisherUserV3' test.out

#- 272 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'f87U5PoT4Yln6LIw' \
    --password 'alz9ORqmuyVL3JmM' \
    > test.out 2>&1
eval_tap $? 272 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 273 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'i0bJoFW8FzuHYsOl' \
    --before 'd5n2slxF0GVCnBLm' \
    --isWildcard 'false' \
    --limit '98' \
    > test.out 2>&1
eval_tap $? 273 'PublicGetRolesV3' test.out

#- 274 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'Y19uLAClnlmhMi46' \
    > test.out 2>&1
eval_tap $? 274 'PublicGetRoleV3' test.out

#- 275 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 275 'PublicGetMyUserV3' test.out

#- 276 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'zJvptS2wTEIc8Pao' \
    > test.out 2>&1
eval_tap $? 276 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 277 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["E6Wyl0W02j5mtD8A", "RmapU3Txyke7uz6i", "j4yg0O730CwTnFQj"], "oneTimeLinkCode": "v53GjiQl4rWJofVI"}' \
    > test.out 2>&1
eval_tap $? 277 'LinkHeadlessAccountToMyAccountV3' test.out

#- 278 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "qJpYtYUAuT19e4f0"}' \
    > test.out 2>&1
eval_tap $? 278 'PublicSendVerificationLinkV3' test.out

#- 279 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'WFLr13gPgTOxS7F9' \
    > test.out 2>&1
eval_tap $? 279 'PublicVerifyUserByLinkV3' test.out

#- 280 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'ZXxNkYWFYtYzdPXe' \
    --code '6E4xK9H4nrPpKzNl' \
    --error 'x4472VJUz1pdSza6' \
    --state 'A13Se4TzH5PJgiPq' \
    > test.out 2>&1
eval_tap $? 280 'PlatformAuthenticateSAMLV3Handler' test.out

#- 281 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'xyFfx5dozdw3wIsS' \
    --payload '6TX2SbFZTOEckyqs' \
    > test.out 2>&1
eval_tap $? 281 'LoginSSOClient' test.out

#- 282 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'bVkJWUOKYFZm9tPx' \
    > test.out 2>&1
eval_tap $? 282 'LogoutSSOClient' test.out

#- 283 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --additionalData 'WBuyFNflJaKiBO0x' \
    --code 'Lr3bkVJUkDtztk5V' \
    > test.out 2>&1
eval_tap $? 283 'RequestGameTokenResponseV3' test.out

#- 284 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 's5eM8PSBVT9QEw2q' \
    --platformToken 'ORkwn5rKkt0iUivy' \
    > test.out 2>&1
eval_tap $? 284 'PlatformTokenRefreshV3' test.out

#- 285 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'JP8FT3EwpjZmJ4TO' \
    > test.out 2>&1
eval_tap $? 285 'AdminGetDevicesByUserV4' test.out

#- 286 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'Z4AiZn5a4aASPqBr' \
    --endDate 'BmRFD26U2xo8sHy9' \
    --limit '13' \
    --offset '48' \
    --startDate 'sEmHpH2e1HwlOFP1' \
    > test.out 2>&1
eval_tap $? 286 'AdminGetBannedDevicesV4' test.out

#- 287 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'uClD8mkjrihpJxrW' \
    > test.out 2>&1
eval_tap $? 287 'AdminGetUserDeviceBansV4' test.out

#- 288 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "s4s0JwxbnN4Dspvl", "deviceId": "y7WQotnww2yTdRMv", "deviceType": "2Jaw0KVFQXQpXQmK", "enabled": false, "endDate": "mw9iSjEvr1LXyEW9", "ext": {"OZhJoJmVjDshKmXr": {}, "GMOFNbguZUv8Eh4S": {}, "idF277cFjJ0LC6rn": {}}, "reason": "tfHh6ncpYqv6iIuL"}' \
    > test.out 2>&1
eval_tap $? 288 'AdminBanDeviceV4' test.out

#- 289 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'tYMtAWk5b2gVWw4G' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 289 'AdminGetDeviceBanV4' test.out

#- 290 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'kS1taezur4qTlnhF' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 290 'AdminUpdateDeviceBanV4' test.out

#- 291 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'g2WociFDoILhkIJI' \
    --startDate 'mq6paPOg4C7myaO8' \
    --deviceType 'oHdBcocRsHW5uK5s' \
    > test.out 2>&1
eval_tap $? 291 'AdminGenerateReportV4' test.out

#- 292 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 292 'AdminGetDeviceTypesV4' test.out

#- 293 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'dacNOB977Ie9NoQX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 293 'AdminGetDeviceBansV4' test.out

#- 294 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'ZLcKkABgVPIMhOw4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 294 'AdminDecryptDeviceV4' test.out

#- 295 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'BbKpcvzY19Mo4PO2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 295 'AdminUnbanDeviceV4' test.out

#- 296 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'zGHmReJTqDLqlEUS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 296 'AdminGetUsersByDeviceV4' test.out

#- 297 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 53}' \
    > test.out 2>&1
eval_tap $? 297 'AdminCreateTestUsersV4' test.out

#- 298 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["UjN0Sdtt89jbGuBH", "cjXe5hL3H9VacpXl", "qESYmDjXOvoQfeOO"]}' \
    > test.out 2>&1
eval_tap $? 298 'AdminBulkCheckValidUserIDV4' test.out

#- 299 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'oXl0Ci48VUq1sVgt' \
    --body '{"avatarUrl": "k9Olbt81TS6A6Hwp", "country": "nY5uwtBmyPMb2436", "dateOfBirth": "1LylyUno7Zo8EsNH", "displayName": "zQls4yPbUdw29XPH", "languageTag": "jvm3QwY98W9PMo95", "userName": "yMysixmLyw1E9fxX"}' \
    > test.out 2>&1
eval_tap $? 299 'AdminUpdateUserV4' test.out

#- 300 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'z8Ob8AzsuuhZklZb' \
    --body '{"code": "kBZDS9Nsmpmfb02J", "emailAddress": "sAMyCrX9pcUWg4Qc"}' \
    > test.out 2>&1
eval_tap $? 300 'AdminUpdateUserEmailAddressV4' test.out

#- 301 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Tfzd8CDZ0wVSO0Ip' \
    > test.out 2>&1
eval_tap $? 301 'AdminDisableUserMFAV4' test.out

#- 302 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'eFWMH59MJ1FSSZZd' \
    > test.out 2>&1
eval_tap $? 302 'AdminListUserRolesV4' test.out

#- 303 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'J2z1zlhuhfoRErAI' \
    --body '{"assignedNamespaces": ["T1v6LTvjR8dXaHIG", "klIvLvCWj5j1Pzxv", "KIBnsoyOrqxwu8rs"], "roleId": "w3zGvBVjo3KdCd01"}' \
    > test.out 2>&1
eval_tap $? 303 'AdminUpdateUserRoleV4' test.out

#- 304 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'nV9zBMTLbDKKOzgY' \
    --body '{"assignedNamespaces": ["ZJ5WpXSGoAtP45zK", "kdYQLrCT7heF1TjI", "s7kBclUmdKJ9C2GV"], "roleId": "3AoC5fRbtWmVRDSm"}' \
    > test.out 2>&1
eval_tap $? 304 'AdminAddUserRoleV4' test.out

#- 305 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '0EWSdbgFunZFeUuc' \
    --body '{"assignedNamespaces": ["HRzmpqNlGtPyl9IY", "V0G6cv75Wcixtqvw", "4VuEeGAnuQLXUYyL"], "roleId": "tKaNu54AlKR0dKwl"}' \
    > test.out 2>&1
eval_tap $? 305 'AdminRemoveUserRoleV4' test.out

#- 306 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'true' \
    --limit '37' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 306 'AdminGetRolesV4' test.out

#- 307 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "Qd7eNRzl5iPABkdu"}' \
    > test.out 2>&1
eval_tap $? 307 'AdminCreateRoleV4' test.out

#- 308 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'SBlRJ5sLtV8U6Ion' \
    > test.out 2>&1
eval_tap $? 308 'AdminGetRoleV4' test.out

#- 309 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'yLoYvtSow8hP0YNV' \
    > test.out 2>&1
eval_tap $? 309 'AdminDeleteRoleV4' test.out

#- 310 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'Tcv7kI7vyV4kU9gf' \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "BQurRUg1si2GuFcf"}' \
    > test.out 2>&1
eval_tap $? 310 'AdminUpdateRoleV4' test.out

#- 311 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'lzUjJq4zMt4H9vgk' \
    --body '{"permissions": [{"action": 36, "resource": "h5As28YA6Fzoh6fl", "schedAction": 29, "schedCron": "jsfE318wZOJpUQZO", "schedRange": ["dDokFM6mzUxe75lX", "VupCIsuC68bFRXrP", "1MoIwJ3RjZfExj41"]}, {"action": 50, "resource": "EZ9locZwaQJ8uyBm", "schedAction": 63, "schedCron": "B3XTWjZ4w3ERODze", "schedRange": ["UJoobv1sJpc52uwN", "SOcrGO3FOlVJ5psx", "P0KAA7tTGpFPVQlm"]}, {"action": 54, "resource": "OjhFhd2utiTURZG5", "schedAction": 1, "schedCron": "HymNRhQwa2gTsYLI", "schedRange": ["k3zhyVzC8r8vPubN", "LlCcPurEcf47UxHb", "6ROoRYuceE1Gn571"]}]}' \
    > test.out 2>&1
eval_tap $? 311 'AdminUpdateRolePermissionsV4' test.out

#- 312 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'sKxl5qFhYOmcTtdL' \
    --body '{"permissions": [{"action": 10, "resource": "Z8UjlCRlhkmnwNbw", "schedAction": 60, "schedCron": "2mIOo652Ta9bhuo0", "schedRange": ["McJhMjFdbNhyzVZh", "Rj9X8bvy5GtWzhv8", "5cLdWGwfUgOpz4gk"]}, {"action": 61, "resource": "UwKY3eVPqndSUmfy", "schedAction": 59, "schedCron": "5xzpTOcDxRZP3TWy", "schedRange": ["WKP7ThqrsEyHkMAL", "Dta5niKDmudcmQdS", "zdUMmUGA0fhmCTNs"]}, {"action": 66, "resource": "Orfmn60m36Jk6fT1", "schedAction": 8, "schedCron": "RDU6CT0leUU8mM7s", "schedRange": ["pd1egUMNrIBEsc4F", "wLJsTOKP1TjC32ch", "w1tquing3mpOTqPi"]}]}' \
    > test.out 2>&1
eval_tap $? 312 'AdminAddRolePermissionsV4' test.out

#- 313 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'p9ltLhFX5cFQ50w4' \
    --body '["FST7NqcPawC677m5", "8P3oanVJCniCS6I0", "6d8LHOQ6Ol8BtxiZ"]' \
    > test.out 2>&1
eval_tap $? 313 'AdminDeleteRolePermissionsV4' test.out

#- 314 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'BZ1y3r6k6cxcNWvC' \
    --after 'sxLIF4OYMvRMU1TZ' \
    --before '6bErXhYkNmcUSEa1' \
    --limit '77' \
    > test.out 2>&1
eval_tap $? 314 'AdminListAssignedUsersV4' test.out

#- 315 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'kGLoXsUiLPWyQcaZ' \
    --body '{"assignedNamespaces": ["HGJbC1BriVu6AX51", "fd56zD5Cndl5cgDN", "hSsdJQ0tMC6Pjcbl"], "namespace": "FgOv7EnaoAcq2Fyh", "userId": "OGmIOW021JW8U34J"}' \
    > test.out 2>&1
eval_tap $? 315 'AdminAssignUserToRoleV4' test.out

#- 316 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'nex3R8hHI3i2TNyv' \
    --body '{"namespace": "FyikUdoTpEo8r7So", "userId": "nT1VYfD0WE0J4SRY"}' \
    > test.out 2>&1
eval_tap $? 316 'AdminRevokeUserFromRoleV4' test.out

#- 317 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["5XdFUIKVSOm5rIaH", "BN4jMFzdRarvT2J0", "0ie29Y6y5U10Qg71"], "emailAddresses": ["tIh4oB8azixpnjLM", "UyfC55S4MXTJMQHt", "0Qx5hbMVjC1sdbk9"], "isAdmin": true, "namespace": "YOfazEWdzAgCGvKn", "roleId": "uDMBxRn0iV5V93vv"}' \
    > test.out 2>&1
eval_tap $? 317 'AdminInviteUserNewV4' test.out

#- 318 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "g3JnTNVzTzdyVupj", "country": "p6lsblyb0uzlWo9l", "dateOfBirth": "5r1Mf61NnvBBCEwU", "displayName": "vTYCOMjITKe2IHNF", "languageTag": "lmghRkUrBm3h2Qvn", "userName": "4S7EfNL7gxshyjru"}' \
    > test.out 2>&1
eval_tap $? 318 'AdminUpdateMyUserV4' test.out

#- 319 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 319 'AdminDisableMyAuthenticatorV4' test.out

#- 320 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'kuRnVCdHHtfEfQsM' \
    > test.out 2>&1
eval_tap $? 320 'AdminEnableMyAuthenticatorV4' test.out

#- 321 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 321 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 322 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 322 'AdminGetMyBackupCodesV4' test.out

#- 323 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 323 'AdminGenerateMyBackupCodesV4' test.out

#- 324 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 324 'AdminDisableMyBackupCodesV4' test.out

#- 325 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 325 'AdminDownloadMyBackupCodesV4' test.out

#- 326 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 326 'AdminEnableMyBackupCodesV4' test.out

#- 327 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 327 'AdminSendMyMFAEmailCodeV4' test.out

#- 328 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 328 'AdminDisableMyEmailV4' test.out

#- 329 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code '1LOFC2QcNexk70cA' \
    > test.out 2>&1
eval_tap $? 329 'AdminEnableMyEmailV4' test.out

#- 330 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 330 'AdminGetMyEnabledFactorsV4' test.out

#- 331 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'Pw4fukGOXPoARs8P' \
    > test.out 2>&1
eval_tap $? 331 'AdminMakeFactorMyDefaultV4' test.out

#- 332 AdminInviteUserV4
eval_tap 0 332 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 333 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "blEkPzxftQuzSpVW", "policyId": "HSI9AXnxPJV88BcC", "policyVersionId": "zgQQqEFg1DHTb25P"}, {"isAccepted": true, "localizedPolicyVersionId": "A4SOxAnwqgGdhNTv", "policyId": "gzUX8ShjmPNVDvJj", "policyVersionId": "5dehh6sTh6tcSXHe"}, {"isAccepted": false, "localizedPolicyVersionId": "mJU3mKbPoY729Kbx", "policyId": "RJvrtWBnAhG9VOg9", "policyVersionId": "YpOR9YZpaSYiqTee"}], "authType": "EMAILPASSWD", "country": "rfEfbQQQhrsBESpx", "dateOfBirth": "VjAeNLWTn404Sd9Q", "displayName": "7FiccsU1xNTePemN", "emailAddress": "Bd6Vg7oGJrmgZd7d", "password": "YgF0LrjyrRL8z4S6", "passwordMD5Sum": "59XwnldUY8L1Uq4U", "username": "GG3F1iuXRSccBS6Z", "verified": false}' \
    > test.out 2>&1
eval_tap $? 333 'PublicCreateTestUserV4' test.out

#- 334 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "XrwGT2mlqmH4mCBa", "policyId": "HV5buc34n5dFqUlJ", "policyVersionId": "k7bgLcpfYK9qqZax"}, {"isAccepted": false, "localizedPolicyVersionId": "hV5KC2rRZaqEpDKu", "policyId": "DRg8wS0GesRsQpHU", "policyVersionId": "e8uy4Qp5c2ulx0AV"}, {"isAccepted": true, "localizedPolicyVersionId": "WHcEtqRFCZLdVPzA", "policyId": "tbHjO3bpyKprqu8h", "policyVersionId": "7CTeezClXA93KpGr"}], "authType": "EMAILPASSWD", "code": "xCARn7hzutzH5c3a", "country": "5n7S03QOURfb2dt1", "dateOfBirth": "B43S8xDyYxy9vDBu", "displayName": "atmKbrkrGIj7uvtr", "emailAddress": "vClGSxCzHwDuKDGe", "password": "5PrNI42LjRZfBvv1", "passwordMD5Sum": "7yigsebquBKWnmhX", "reachMinimumAge": false, "username": "lJHH2aycCMkDdZdu"}' \
    > test.out 2>&1
eval_tap $? 334 'PublicCreateUserV4' test.out

#- 335 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId '25sXq2x8vBN92YFk' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "PwMcrkGJEmRdk5Y3", "policyId": "1Gtke0EBvCikKEFh", "policyVersionId": "8PmTTcGayFhA8neI"}, {"isAccepted": false, "localizedPolicyVersionId": "63rsmQg0SYz0nqfK", "policyId": "ct0ePjSpxSPqCbY6", "policyVersionId": "Bp3WDQI1un1newHE"}, {"isAccepted": false, "localizedPolicyVersionId": "GusWTRTp4svhGiI9", "policyId": "AHPRfQE3Cc6YprNH", "policyVersionId": "eYRlPO7BZLc8tLss"}], "authType": "EMAILPASSWD", "country": "H9yUTHAh2XigNuHA", "dateOfBirth": "8NbIOGEjrxMSIYU0", "displayName": "yJ0p8an808ZOYrfw", "password": "MIUB5pUChBjesUZK", "reachMinimumAge": true, "username": "WuVrkC4o8Ty8CQJh"}' \
    > test.out 2>&1
eval_tap $? 335 'CreateUserFromInvitationV4' test.out

#- 336 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "1MKqBsbRv91kSv0d", "country": "LmWcrgW9Q5ZW8yTQ", "dateOfBirth": "s8ZXnNiWrBvXMjut", "displayName": "4UFOif5wzQanfTdO", "languageTag": "df2sIpHC6dpr1z3I", "userName": "f55zQFK2k5ojxJnk"}' \
    > test.out 2>&1
eval_tap $? 336 'PublicUpdateUserV4' test.out

#- 337 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "dtLMKwHpE2l1VMxF", "emailAddress": "k3mToXuHG88h47I0"}' \
    > test.out 2>&1
eval_tap $? 337 'PublicUpdateUserEmailAddressV4' test.out

#- 338 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "EBecaIoBlKhiyatv", "country": "9TH8SUK2eQfuPYnW", "dateOfBirth": "pIsZMiYVboCThqPb", "displayName": "98Sh4s2wyJ1vfWW6", "emailAddress": "s8FALKC3yveXaEAy", "password": "u0U3QvJfwoTPJs3g", "reachMinimumAge": false, "username": "ULCwW7tWTBe9BOHK", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 338 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 339 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "oAADilPJ25KIbi8x", "password": "QraWmB5fUQIyGmCR", "username": "8zRSUkyXq46NNt9x"}' \
    > test.out 2>&1
eval_tap $? 339 'PublicUpgradeHeadlessAccountV4' test.out

#- 340 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 340 'PublicDisableMyAuthenticatorV4' test.out

#- 341 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'bx9z6s91CZfWB4MQ' \
    > test.out 2>&1
eval_tap $? 341 'PublicEnableMyAuthenticatorV4' test.out

#- 342 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 343 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 343 'PublicGetMyBackupCodesV4' test.out

#- 344 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 344 'PublicGenerateMyBackupCodesV4' test.out

#- 345 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 345 'PublicDisableMyBackupCodesV4' test.out

#- 346 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 346 'PublicDownloadMyBackupCodesV4' test.out

#- 347 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 347 'PublicEnableMyBackupCodesV4' test.out

#- 348 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 348 'PublicRemoveTrustedDeviceV4' test.out

#- 349 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 349 'PublicSendMyMFAEmailCodeV4' test.out

#- 350 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 350 'PublicDisableMyEmailV4' test.out

#- 351 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'k3rba9T9XpRRUae5' \
    > test.out 2>&1
eval_tap $? 351 'PublicEnableMyEmailV4' test.out

#- 352 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 352 'PublicGetMyEnabledFactorsV4' test.out

#- 353 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'EvIdReqIP0ZshQG0' \
    > test.out 2>&1
eval_tap $? 353 'PublicMakeFactorMyDefaultV4' test.out

#- 354 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'yEszsSi7OorXVQDr' \
    > test.out 2>&1
eval_tap $? 354 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 355 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"emailAddress": "WdrYNAXrphW9ApON", "namespace": "3CjdgCC6VOX3CWqG", "namespaceDisplayName": "evlsrVDjqVSkPoTJ"}' \
    > test.out 2>&1
eval_tap $? 355 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE