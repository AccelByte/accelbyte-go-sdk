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
echo "1..350"

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
    --body '[{"field": "6lsQw7famQSxkPKq", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["WnOYZF3Qke4D9sCn", "HxNE2qpvZhacimU0", "hLAxexDJqaGsgIwb"], "preferRegex": true, "regex": "S6yzzMvWe53oTuOi"}, "blockedWord": ["anFmLCLtavMn2bCH", "VD3CIVaoc95ocqZA", "UH4Uczxh3uVnIw2G"], "description": [{"language": "EHfALCvxmPb25xcb", "message": ["PJUSyeuT18QBdALN", "zklgBpxTmdKGVu0X", "sKoEM4fYdnTCfXAm"]}, {"language": "Kimv65nJrsQt84ru", "message": ["Hqy80Uj6htjvqTkO", "YncedFm2VAS26BBZ", "hhqmbr67yCbC9TBA"]}, {"language": "CBBmLdoaWCvyHgt4", "message": ["zVLhswCb4S50vZRP", "VcHcDfqMyAhvrI53", "fIq24fT0DqIA1ade"]}], "isCustomRegex": true, "letterCase": "JrZECDcXUynPpfwA", "maxLength": 64, "maxRepeatingAlphaNum": 0, "maxRepeatingSpecialCharacter": 91, "minCharType": 57, "minLength": 21, "regex": "HMjROmrMGEw2T6za", "specialCharacterLocation": "bYRHoK4bCJutLmGr", "specialCharacters": ["eH6jY8JwVtfET3bn", "l9PjKUGkrrabOPaw", "Kci5rVLg0NMZ23qd"]}}, {"field": "AUhBsiHS6hVWL0oi", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["GhiHxllAyIqvoN5x", "n8zKb93SEtjv6WCM", "535NKUPNHbEvaVlL"], "preferRegex": true, "regex": "2bGBGKg8OHPQb91O"}, "blockedWord": ["VojAiqmez4TyvaZc", "iDvuageqX0fRNyH4", "3oJN4GKGujWHsBSy"], "description": [{"language": "GypqrEmZHf8DhaVU", "message": ["Wastlu4EdxjIaDh2", "rRAV4miuJPy7MTJu", "mE3ZI4lMPRM9WhX4"]}, {"language": "T0zD0OgjD3MXbOEb", "message": ["gW6oo1T9znabY8l3", "OVWqFVM2sOXJa3if", "KzeUa9lJk1i1vMvg"]}, {"language": "C9u9Ei1VqA8kZFRf", "message": ["FD8jTjaZijzUEp7D", "vCgOzJvku1zz6Cko", "nbqihDYzmRigXLMo"]}], "isCustomRegex": false, "letterCase": "vrt0W3tHpnxUvFqk", "maxLength": 18, "maxRepeatingAlphaNum": 49, "maxRepeatingSpecialCharacter": 23, "minCharType": 31, "minLength": 37, "regex": "O3MKxtmCDy0IZlqZ", "specialCharacterLocation": "jH52jgMRSTjRz648", "specialCharacters": ["o3cxAmXDwFfgP6YU", "XDumI2PBgFJPByRz", "5VeXNGBL4UjgENco"]}}, {"field": "dK5YWZVEuYRQM7T1", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["0p5prZTqjhFAs0SF", "pLoqDrFURXLrdG1D", "v9hlnhRhcC9SLJ4v"], "preferRegex": true, "regex": "ndqNThWgKKIUiap0"}, "blockedWord": ["pr7el8jSlMfdBzXt", "288M8BDAP6CTXldJ", "N7jfhChg9uimgn0P"], "description": [{"language": "vqaY0l0N3k9gsmb2", "message": ["HUZaylB5q9zAhNpW", "EOi4E2deas41QKIg", "eoS1IO0DCQp6vTFW"]}, {"language": "cFIv2DJOJp8TIqZe", "message": ["KjCwYcld5jhWOqon", "B3DNcrtxEcG3A8TN", "SiVMOs7jnb6iwJob"]}, {"language": "pr0VXAn0Mh993wmu", "message": ["dt0pR0Z0jMymQGov", "F8fYmh5WTKvDdHi8", "Ptfw7UUsLWho2r29"]}], "isCustomRegex": false, "letterCase": "ZjrWppHH2UbVCkM0", "maxLength": 64, "maxRepeatingAlphaNum": 62, "maxRepeatingSpecialCharacter": 14, "minCharType": 2, "minLength": 10, "regex": "uA7FY3sIgFomcnit", "specialCharacterLocation": "FhDqW9oMdRaYTikT", "specialCharacters": ["kTtwX5DwSVSpuH69", "D1OFa6n4mneMKQeu", "o8nKPMugto4AXxLM"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'm6CBNy5LIaRRjF4f' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'kmlhncdIlVeKVlO6' \
    --before 'QpESSM6J6LWjrE5x' \
    --limit '52' \
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
    --body '{"ageRestriction": 46, "enable": false}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'WYMiCMRMwEQgcD21' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 3}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'bBhbyJu8VeL4dORR' \
    --limit '98' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "4C64Pgs9Sku0RqOR", "comment": "mt3ESBoojK9GuO4q", "endDate": "1LEpuJLKaO4XfoxZ", "reason": "2ashg4qv5x7R5vJV", "skipNotif": false, "userIds": ["rtaUnN7wZ1RQReCK", "I9LimPsELNc5PWFs", "HofVzJ41386mfUZc"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "B8lfy5ePS1BYPQCU", "userId": "nYsqG9qO4ZyJ8M1e"}, {"banId": "ST5vK4oRRaetioab", "userId": "QNRldoK79ZaBx4wc"}, {"banId": "f4cUBEAWv1IH7q5O", "userId": "ZdoyI1inU24rETNY"}]}' \
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
    --clientId '5ovqXFD6LTuyDgaP' \
    --clientName 'B3pPD0ZWGvI7t10x' \
    --clientType '5imo3Gg0leL8QPeI' \
    --limit '4' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["p8r2fIhZ75Bek2BT", "m9mj4acubuSExQ4s", "36wausWjlTVrUYp9"], "baseUri": "6GAddPmRwvDDctBQ", "clientId": "iF1b20UneTCz9wmq", "clientName": "KpapIy1l2fBL0UOq", "clientPermissions": [{"action": 75, "resource": "1VuECUN7p32Uld1X", "schedAction": 73, "schedCron": "BFghR13z54OalOZo", "schedRange": ["bqBL25PEdnDKBRCm", "ED7YChR6fUIy4g02", "fmOH4mH2TcKYki3t"]}, {"action": 41, "resource": "VmMQDiV0cthPapze", "schedAction": 64, "schedCron": "0eYbVBi9YsFjEnrX", "schedRange": ["g8qM4ntGI4b0VMmJ", "vRGJyIdNG5cnlbQp", "hzhIcYxZy1Ov0WsW"]}, {"action": 81, "resource": "kFxzRVhPX8qEXdok", "schedAction": 18, "schedCron": "9Hjq0w7nIuTJZ4UV", "schedRange": ["mUOdPlGfVW6LXrVE", "kNxXPIOTVj4NE6aL", "WAhMxGT5RTWG4UMj"]}], "clientPlatform": "iUVhqTOq9FwsT7AR", "deletable": true, "description": "HKIQvpDP9IKPnTdr", "namespace": "OMbyU4iR3mLxGl6L", "oauthAccessTokenExpiration": 66, "oauthAccessTokenExpirationTimeUnit": "vd9yHBUVOAvzNT7s", "oauthClientType": "Jp2Sm0FCSUey4wuR", "oauthRefreshTokenExpiration": 68, "oauthRefreshTokenExpirationTimeUnit": "XOfXC9f3c1sOz3Sq", "parentNamespace": "b0QMyI7Jqhim7TgG", "redirectUri": "BRDfFmehT9WWcR5R", "scopes": ["kkOtVidLCB7D0iwp", "10YgUgLUTQMQpYjS", "drx4hWqcjZauNxXg"], "secret": "CLqNWqaeAtAJkSDl", "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'PV33UOOpGraT74mf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'y4LsDFPyc2xTtFCp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'Zq4YuH3JigAJXnZo' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["Wqvgyr79rGGXNaea", "Fn3DojtWH1h0j1G2", "aIkJyBfXJq2hZBNW"], "baseUri": "PkGZr2ZhGDzNNutw", "clientName": "wCbOoXFk4Opv1OCC", "clientPermissions": [{"action": 97, "resource": "tAIgp1IufTLnkDat", "schedAction": 3, "schedCron": "RUFyHcsW6FuHegEj", "schedRange": ["HVvkLzj8nzEmKEiw", "22oRSXy4sJUfGCaH", "80Pk6QurVONrRebo"]}, {"action": 100, "resource": "r4SNnWk23KFPLFdR", "schedAction": 87, "schedCron": "T6pecSfjsDTdcR02", "schedRange": ["84GXBZaNUCi6FZ8I", "LTORn0K3ZEWnxkjF", "iQO45xEyZZOkUrs7"]}, {"action": 34, "resource": "tUPnBoDlQfZjLRBv", "schedAction": 82, "schedCron": "sB0I0eJLvI4UCiDa", "schedRange": ["A3KI1vUZkGe5dpoD", "wWfr37P89IAXFSgL", "WHlt2eZrtMFnxYXh"]}], "clientPlatform": "6QDvad2qcbVJ9Tjt", "deletable": true, "description": "8mYuhyl6L0JJN3b6", "namespace": "xgJ2osJVE72rc9dw", "oauthAccessTokenExpiration": 65, "oauthAccessTokenExpirationTimeUnit": "1eIbEMTWGSOEjaE4", "oauthRefreshTokenExpiration": 12, "oauthRefreshTokenExpirationTimeUnit": "RLKh3X6giC2dupnV", "redirectUri": "eP7QPHEVZIqNWFAp", "scopes": ["bWBUnEKGDfQwL1ep", "QcY3SpidvrdlyUb2", "7ydiqol3IfjelXQ8"], "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'hXjiEbTeAYyF7ona' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 93, "resource": "5QGLIQW5SPlrShbH"}, {"action": 14, "resource": "RmTyOtWZ0CCWCE9o"}, {"action": 36, "resource": "gjHu03pO2nN0BTUH"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'i7bqZF5WRpSNfyNW' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 19, "resource": "O64SO9oVvGC3PTeY"}, {"action": 62, "resource": "5VgxPRSComZ0poD3"}, {"action": 14, "resource": "AY5WtD6l9YAWppEw"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '23' \
    --clientId 'BIRpstbix9p9lBpC' \
    --namespace $AB_NAMESPACE \
    --resource 'gLHLuq6JYzlxYQeg' \
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
    --limit '64' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 130 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 131 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'l8YtYhGC1uq4UGCm' \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'I9CpjWxADdv5GcTa' \
    --body '{"ACSURL": "bAWidbdBRMUlIi7A", "AWSCognitoRegion": "wl8oWLrrL8la2Nhs", "AWSCognitoUserPool": "tk3jGaaf6Jb0X62K", "AllowedClients": ["7SPWdjCtpWi83Hp9", "mCrTATo9i6DA1lAo", "erVUgRQkhcnyOz8a"], "AppId": "4KFKsiSNSjl8c55W", "AuthorizationEndpoint": "5Db3gdjL8LtU4mDw", "ClientId": "vE89a5uhU4YInxdV", "Environment": "nWNgqeESdPBmla89", "FederationMetadataURL": "wclVsxhZIWAu8v7a", "GenericOauthFlow": false, "IsActive": true, "Issuer": "LFhlOetsNI0sXcCG", "JWKSEndpoint": "jOHA6Gs5al0lVNk8", "KeyID": "TsHORWeimSM5weP3", "NetflixCertificates": {"encryptedPrivateKey": "TJGwORbZKXfNape4", "encryptedPrivateKeyName": "yVGUfcEJnO9ntpwF", "publicCertificate": "tfwzQQcMkFtz8hT7", "publicCertificateName": "LDpuTAmmNSxdlCE2", "rootCertificate": "AThvCFTBtdA1xzPd", "rootCertificateName": "l7NAwFTiODpFS8r3"}, "OrganizationId": "CsqY5rR2J3tmFl5W", "PlatformName": "F1h21z6rjtw8LyTv", "RedirectUri": "OKWZI4qsGjL7CdFO", "RegisteredDomains": [{"affectedClientIDs": ["rC9yArf24Jp6vy9c", "nddYAiiZjgzeZg3e", "arzdygBHoVoXqowl"], "domain": "NlI3D6i1qJNO91K8", "namespaces": ["p3Xup1ngQkUq9UBD", "dx7A6qzRU2bXWQxb", "1FPIVpfmbOfreBWI"], "roleId": "TICBATIsjCYLUkqP"}, {"affectedClientIDs": ["iLIMWVciZLUzAez7", "QIykPiYqfrMRL9Z5", "MgGiVPbEB3ntEIYx"], "domain": "zyW676cHvpM5jKXX", "namespaces": ["CluBejqy2L464uvk", "SV6lXH1zAHbXVuDk", "hCsHyGhrbIU5TRFA"], "roleId": "8Il71y721ynitJ50"}, {"affectedClientIDs": ["OzPBaKfmYCa4v8WD", "5mOkbiapbSmoVfH5", "hRXsAaDg1CFzQJtu"], "domain": "Ess1kW3iTtVWGTm5", "namespaces": ["YWMPwXFb7mtEjP6o", "90VXUIybDdddc7pW", "sm7HEAfJKkyWRjnk"], "roleId": "2XIDheg9sOWSO64Q"}], "Secret": "NWLAgDNiQj3HVZVe", "TeamID": "5MmOW6IuNnR5wJS8", "TokenAuthenticationType": "K3nLbzOW6PK9Prg1", "TokenClaimsMapping": {"1nwEAv9kQKq2N60w": "1LgeGBc2ly2CvOlA", "NlSihq3PbgSdqNH7": "TOtzY9skflguKSyp", "j8DPIpELM1ZSqjHG": "ZJ0DVFsYsdOdwqfW"}, "TokenEndpoint": "YyuoUaY99nNuQUcu", "UserInfoEndpoint": "Xf2aOkr6tMffuS0E", "UserInfoHTTPMethod": "4jog7VHtQmj7ZZ2P", "scopes": ["HhbiBXUjlCUeevOm", "JluSDjwclpLbiWnk", "2E7QbZVb7C9bmS46"]}' \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'CalalK4B7SqZoNoV' \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'zX1YUzDUVhs6qBAE' \
    --body '{"ACSURL": "EsiHKa3Vx3gVer46", "AWSCognitoRegion": "R31Fc4yr3A8YTlfA", "AWSCognitoUserPool": "bDaSauuDdZ45OLcm", "AllowedClients": ["NoBjSX4wlJ5LV0Hk", "n4UAveFCZ9SdmuIx", "bjHLGFO4CzQcMFUP"], "AppId": "PKhCyc7vh465Myln", "AuthorizationEndpoint": "ObfDklaRJmzCtid8", "ClientId": "cWwSSMCN304nNHvI", "Environment": "MmWkHLtXgUD1AQch", "FederationMetadataURL": "VC3o7BE7VPOlnzwr", "GenericOauthFlow": true, "IsActive": true, "Issuer": "DQsHS8fHb0qK0C7J", "JWKSEndpoint": "bBuCNRItSVQvkmtC", "KeyID": "WcR3ar6RUDiWFIcZ", "NetflixCertificates": {"encryptedPrivateKey": "nyscn8Soh4U6JysC", "encryptedPrivateKeyName": "znqLAagm4ezCtFAa", "publicCertificate": "RxREB2FrDT5NxP12", "publicCertificateName": "TS2X8MB8KB5KVTXY", "rootCertificate": "MxztfcDQGMtAfwHX", "rootCertificateName": "yJZXrUuz9SthOR6O"}, "OrganizationId": "a5x85n2hlkS4tNAQ", "PlatformName": "kM2DhGsCTiRRveh9", "RedirectUri": "ola4AkNXRSqKrrlU", "RegisteredDomains": [{"affectedClientIDs": ["aiYf0utmtLXWpNag", "MurEX6nfN36EuEGG", "7FcSeFoPo6tzwl7o"], "domain": "xYmcOoaL7DvS1EEc", "namespaces": ["it5Qvl6XpjWSRsR5", "H4SA5QeBya0IiSgO", "Va8NH82I3sCpQ3jr"], "roleId": "1VCoeFeXyjp6usOY"}, {"affectedClientIDs": ["QKX9XlnBwgZfTjmg", "toQtT3p2AQqlkYEs", "LgipOXkqCGUSBFLr"], "domain": "6vmShOte5ETzlvtT", "namespaces": ["0K3J2M2o96EOSX1t", "suhDyC52KTglOwif", "pcXZVhLzkjpmdPFq"], "roleId": "xEoMjJ6xQaRHvlqP"}, {"affectedClientIDs": ["ARcSuZPAs0MZylLe", "lQ9Ay135iKp97cxo", "unyK5u3suI7dl3Aj"], "domain": "9VsPtCS5wh5qsZp9", "namespaces": ["Mw5u8JSWhSQm9xF2", "aeJn4iS0TdtcxhzM", "tBaxBey9hhqk1JH0"], "roleId": "yYQSFq9jVuMyHfzR"}], "Secret": "YX4Yl5xOJ0Tz3F7Q", "TeamID": "S7krzY2WdoaUL2Ud", "TokenAuthenticationType": "sYJjd1u0TLGbi36K", "TokenClaimsMapping": {"lAgnckJjRdo59kuJ": "R5s4UhCm3C4TjPRy", "ow5gvShilyk5KFUn": "KoIPZo67JsMlaIpB", "zR6VwJYd2kAkCSYs": "URU2L67fYQ3xDhM8"}, "TokenEndpoint": "wONeevyWsiuamjdT", "UserInfoEndpoint": "RZWtoYNrpyhdbbQV", "UserInfoHTTPMethod": "NaxT8PcWMUjKJHck", "scopes": ["kEx0yMhL82UZwpmT", "SX7yicSrcmIgnBY7", "fqUyasxS6xLLK0lK"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'JFIN7RREGBjKVAQD' \
    --body '{"affectedClientIDs": ["wZnYOvuSGzr7eIUE", "Hte3SDHLhyreRXSr", "JRvXC9U2Zye7jX04"], "assignedNamespaces": ["lDoMZTcOY2dVlqXD", "oURq7aBcty0vYuJH", "Bf52sFyKGHecHQOG"], "domain": "88BGRsqCbPmwMYcG", "roleId": "oGC9hPaHUaz5uX3U"}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'cA1PoXFrS01mEWLe' \
    --body '{"domain": "rudidMSlkQuYll8J"}' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'OuqIqJDdKba9tsAC' \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'a36NKVUkplLesGTO' \
    --body '{"acsUrl": "q7bfl64RdlDMO7JV", "apiKey": "al1EblbwH7B6UzRq", "appId": "cQkN20P7pBCY0WvJ", "federationMetadataUrl": "0SWx6QWOQe3XgEtD", "isActive": true, "redirectUri": "ietz1rO7alIQABiT", "secret": "rQgTqSU52RsATiIy", "ssoUrl": "mq83SlvajKfgsvqA"}' \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'AJ2GHHTfLJUoolbT' \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'JRl5MOjKxm2cRoaV' \
    --body '{"acsUrl": "VQcoAHR7wrAl96zM", "apiKey": "wd93vUoAkecD7Hyd", "appId": "GqX1TH128gzmB7BI", "federationMetadataUrl": "P8YvQN9q8PfqIYfg", "isActive": false, "redirectUri": "UdN0ZqbAGAPc1Wtq", "secret": "8Q7Oaexxp4YfESM6", "ssoUrl": "5eOSk0UzIMsXchrU"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'dNAKtFFQmfRW4aq3' \
    --platformUserId 'YDQYXMLvtA3fD3yf' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'y01XLtfYClvhQDs3' \
    --after '81' \
    --before '15' \
    --limit '97' \
    > test.out 2>&1
eval_tap $? 142 'GetAdminUsersByRoleIdV3' test.out

#- 143 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'k1Oc7a5Cx40XBBV5' \
    > test.out 2>&1
eval_tap $? 143 'AdminGetUserByEmailAddressV3' test.out

#- 144 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["ekPg81N7aZMEzH9g", "tHbgdZXHAYbOqTbV", "Y8xyTgt7KXTVS7AH"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["J41RHlfAN6tzNOxt", "rWQryjxbkBoknsGA", "Jq1ESgkvs6Qwx5iU"], "isAdmin": false, "namespace": "Kwk9qhp698j1AURo", "roles": ["FHMYayhZ9hTzJ90B", "yxPQ7fqqUeSr8Aqg", "EPU2mkUf0PCZtScs"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '41' \
    --platformUserId '6OBkR4pjgT7zfDyv' \
    --platformId '6XcWLIrXqABjpo0w' \
    > test.out 2>&1
eval_tap $? 146 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 147 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 147 'AdminListUsersV3' test.out

#- 148 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '1CMeNPxEf6eEdfss' \
    --endDate 'L5Gd3dBAlFfKQqEM' \
    --limit '47' \
    --offset '93' \
    --platformBy '3wgXE7ZU4W0hCHus' \
    --platformId 'No1YjpRSuD4aHWtG' \
    --query 'H80PlhBxFev7vnYY' \
    --startDate '7fM9vujbDHmyY4aK' \
    > test.out 2>&1
eval_tap $? 148 'AdminSearchUserV3' test.out

#- 149 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["ayH5LTvTnEdxE0yc", "h3OAvq3UyAk2ALTX", "4t67l5l6twLvb6RA"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetBulkUserByEmailAddressV3' test.out

#- 150 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gRfyvGpdeDCOnvEE' \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByUserIdV3' test.out

#- 151 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pRGwHxWgjS2koUhj' \
    --body '{"avatarUrl": "hVO768e1v8gaPImt", "country": "RbV23SIZfnEuIz4n", "dateOfBirth": "j2toj8C2r0o05LzW", "displayName": "rjvR5nQBHMgN2Zq0", "languageTag": "Ss7Ij51yiWW8QMPZ", "userName": "4yY593qO7KOmqQk7"}' \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserV3' test.out

#- 152 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Z3AE8bUmsNm2nzx2' \
    --activeOnly 'false' \
    --after 'fCNhVn6TH7WBxqo8' \
    --before 'YE0JP9QG0AgLIgWu' \
    --limit '77' \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserBanV3' test.out

#- 153 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '124epj5gTHTAzt4O' \
    --body '{"ban": "vbLmnsS5DcWkWzP8", "comment": "uMLAuo09kvZ2v6Bf", "endDate": "9rhXJM2UIDKtP2tF", "reason": "aAu1uzDiBqIqKZKk", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 153 'AdminBanUserV3' test.out

#- 154 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'ZGYBXtOrnUHqXiW8' \
    --namespace $AB_NAMESPACE \
    --userId 'IZGpg7CBzMIjgUSl' \
    --body '{"enabled": false, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 154 'AdminUpdateUserBanV3' test.out

#- 155 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EgPwbFE4BNXA4KcU' \
    --body '{"context": "CbqCOUjalGV9SHRk", "emailAddress": "HnWPf6fPmxLOfBZ4", "languageTag": "1vMlauRMQYgTDNSf"}' \
    > test.out 2>&1
eval_tap $? 155 'AdminSendVerificationCodeV3' test.out

#- 156 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'r38n2C00OZggjET1' \
    --body '{"Code": "3PkKAvoZ2NhyzIUV", "ContactType": "wD89k6wDqFvEfCkr", "LanguageTag": "B37tlqc6J0EQB36S", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 156 'AdminVerifyAccountV3' test.out

#- 157 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'SXPHZE87Rtp8vua2' \
    > test.out 2>&1
eval_tap $? 157 'GetUserVerificationCode' test.out

#- 158 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '9bDzSatkK76oX8UN' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserDeletionStatusV3' test.out

#- 159 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'GLyjJ8etqqWnEqms' \
    --body '{"deletionDate": 28, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 159 'AdminUpdateUserDeletionStatusV3' test.out

#- 160 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wCMh3zMi6fk75zpR' \
    --body '{"code": "IqgIJ83cnqK8aNi2", "country": "5iaQflbjqKg9OecU", "dateOfBirth": "xAfmvtI2fGL0Gl3u", "displayName": "TUX3eK5T6uh7bBf6", "emailAddress": "FO0PgqQJ74bFjA6m", "password": "WDFBkW4Znj4f2NJd", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpgradeHeadlessAccountV3' test.out

#- 161 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bDjK8qosd4oIBJCV' \
    > test.out 2>&1
eval_tap $? 161 'AdminDeleteUserInformationV3' test.out

#- 162 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lwiMoYK7ZmR9rSdx' \
    --after '0.5108662351162417' \
    --before '0.21712902596308514' \
    --limit '32' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserLoginHistoriesV3' test.out

#- 163 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RggeFQEHshLFQF3W' \
    --body '{"languageTag": "LtV2DrrQ5Vm5E6FM", "newPassword": "BJX2kTxLql8ykNls", "oldPassword": "9YEJB2BRBNx9hHnG"}' \
    > test.out 2>&1
eval_tap $? 163 'AdminResetPasswordV3' test.out

#- 164 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pvWXAQXkFD1YjNXh' \
    --body '{"Permissions": [{"Action": 43, "Resource": "cvRSKsWCBdWTIyKG", "SchedAction": 41, "SchedCron": "s52oTYlHY7iaig4z", "SchedRange": ["b13ouLo5Togr34rX", "KmMjiI7pJbbv0nxY", "PKMbH4czl4YDoycD"]}, {"Action": 30, "Resource": "KwduvWBMOfpA98GQ", "SchedAction": 88, "SchedCron": "0tFS3TxY3cgfEER6", "SchedRange": ["OEG1kBcZ8r7QTBF9", "dQiAI9l69fVlxvk3", "mrUoH6MQ0abnP6Pi"]}, {"Action": 0, "Resource": "k9UEM73LJaYlc6WX", "SchedAction": 69, "SchedCron": "ejlcRzeyF2X2pmDv", "SchedRange": ["dkaO04ty8cQF9jVA", "zIzRQyoYxGEhsNiw", "B7rqwWQNnvy6qUFZ"]}]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserPermissionV3' test.out

#- 165 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'w5jMJNuVa5LlC2i0' \
    --body '{"Permissions": [{"Action": 8, "Resource": "eijRbRNe3rL2eyMy", "SchedAction": 75, "SchedCron": "ZZZgyniPKzziCXcR", "SchedRange": ["Qf13vhA2ayZsprvb", "271C3AWbTq6lRgzh", "me2H2OpV0gtD0Byv"]}, {"Action": 86, "Resource": "ATTUF7AQsShZafnt", "SchedAction": 78, "SchedCron": "0mfXcv0SGxGL6ie5", "SchedRange": ["clOgQOP39MELQ4yE", "d6c3BjPBKqQ5mEmg", "PFUGG28AYnxYEQTM"]}, {"Action": 53, "Resource": "t2X6zO2lbapYqDq2", "SchedAction": 74, "SchedCron": "yLysdndZUieRFJ2s", "SchedRange": ["P3uaf59kI3GoBWJE", "5OuowkltBtzdXyry", "PJW1mYlmDVFQG7iP"]}]}' \
    > test.out 2>&1
eval_tap $? 165 'AdminAddUserPermissionsV3' test.out

#- 166 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'OEFlIvzmXPbYoYyv' \
    --body '[{"Action": 51, "Resource": "cUUvCZ7NaDDXa7mX"}, {"Action": 14, "Resource": "4B7fH3AAE3dApTM5"}, {"Action": 24, "Resource": "HKAZ0Sq86v2qP5DS"}]' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionBulkV3' test.out

#- 167 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '86' \
    --namespace $AB_NAMESPACE \
    --resource 'BSCEmtDPKnHU8g3D' \
    --userId 'OrJvOqcQAxTGc0DW' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionV3' test.out

#- 168 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UQTrS7afb4057IOf' \
    --after 'FLua0tRg4qviIim5' \
    --before '8rPvT10LRmoBpNx0' \
    --limit '9' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserPlatformAccountsV3' test.out

#- 169 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'gazyI8a8jlRvvJQa' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetListJusticePlatformAccounts' test.out

#- 170 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'IfK1dl5BJ0eZM76j' \
    --userId '6a0gfghjobIOL6vm' \
    > test.out 2>&1
eval_tap $? 170 'AdminGetUserMapping' test.out

#- 171 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'PQR80Pc6BdF25qF1' \
    --userId 'aGcUYE0M1apqE5Dl' \
    > test.out 2>&1
eval_tap $? 171 'AdminCreateJusticeUser' test.out

#- 172 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'Xgc6GQ7zn2Y2gPLZ' \
    --body '{"platformId": "9MoF7FNXY7jzJDLR", "platformUserId": "wbIrC7Y7zoobFL4z"}' \
    > test.out 2>&1
eval_tap $? 172 'AdminLinkPlatformAccount' test.out

#- 173 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ywDorh2fx6odCIkR' \
    --userId 'h2954T0xTPftos81' \
    --body '{"platformNamespace": "zjkQZebd2esKHq2v"}' \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformUnlinkV3' test.out

#- 174 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '5iG1nPfu0vZAnzjI' \
    --userId 'lnPCFXPfxykAEvpl' \
    --ticket 'xJ8Hk9f01wmfVBKa' \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformLinkV3' test.out

#- 175 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId '0eCGgDVGFa5ECtJ7' \
    --userId '9pUEWXFhfgujeQ0g' \
    --platformToken '0PCvZIUL8K1kjoEs' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 176 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'S2JwKSq6aGdJyAII' \
    --body '["U25CKfhB7YYd7knX", "oHsHBtfOS3SJ5sO9", "iVAx9aFzyaMIxNOD"]' \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserRolesV3' test.out

#- 177 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UswM9UOjm5reLICq' \
    --body '[{"namespace": "LKUIfXaTXz6FWtHe", "roleId": "yVG7QjMIdDZyBBFq"}, {"namespace": "b0XWQH9tOIjxKf2q", "roleId": "O6dpswI2r4e6P7Ge"}, {"namespace": "IC7KvaSjFXtPGABR", "roleId": "4ky2afoYLmGk60VV"}]' \
    > test.out 2>&1
eval_tap $? 177 'AdminSaveUserRoleV3' test.out

#- 178 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'paTBG68IusAWsmNF' \
    --userId 'm7qIfGPiWJp2i9Ji' \
    > test.out 2>&1
eval_tap $? 178 'AdminAddUserRoleV3' test.out

#- 179 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'HsRm7zCYBuvb0zUG' \
    --userId 'Of8wWcT4QHBRnIUe' \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteUserRoleV3' test.out

#- 180 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'uCOpVngRqWFDQSNv' \
    --body '{"enabled": false, "reason": "WnubP1zotq5POCs3"}' \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateUserStatusV3' test.out

#- 181 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fDtoTesGlXPoaQOy' \
    > test.out 2>&1
eval_tap $? 181 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 182 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'wW6u2qscwnSpn7Hk' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "bHzvvnbY1d1FbdCk"}' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateClientSecretV3' test.out

#- 183 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after '5YQHQexsTe29gIyy' \
    --before 'ByWSQAwX9BeguUtm' \
    --isWildcard 'true' \
    --limit '79' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRolesV3' test.out

#- 184 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "managers": [{"displayName": "tksGQvUwPR70KhVg", "namespace": "c94VgBlyTwGwZlxu", "userId": "fMY0Vy15EjDfsxJw"}, {"displayName": "yFt4kcKZrNyicPeL", "namespace": "u1gPQ5f6tu9rBkPF", "userId": "3yhTHV78K5x7HkVt"}, {"displayName": "dxcJNemA1SibdJJf", "namespace": "OoU7eIu0Zm32KhLJ", "userId": "PCrQg70601fW1SLC"}], "members": [{"displayName": "V6YmLmk4OcFdP0rv", "namespace": "CFcBhC2UIhBuQkUP", "userId": "BS2QxCf4CG1ZdNwF"}, {"displayName": "MYakzFjqXskid0eL", "namespace": "n7fJK98Q1vY8ASKP", "userId": "YTPbwaPjyyWNQaXq"}, {"displayName": "Z3spVXwSdLeElybG", "namespace": "GUejJ6j1t12j6MAj", "userId": "t8lZPq21LcNrx7df"}], "permissions": [{"action": 87, "resource": "C9Na85RUAToed5ac", "schedAction": 52, "schedCron": "lwXPUdJRPOofo2xw", "schedRange": ["DIGC0SdJ7jdlC72V", "hkmUkkwI5zApmaWx", "RXzGyGgCNrE6MaRQ"]}, {"action": 100, "resource": "KCwfsI3uscR1ZOBc", "schedAction": 13, "schedCron": "zvtmNSYymyulKaDG", "schedRange": ["ANyHmqvbIRwJQnD6", "ToURvPMVe9I2WBag", "N3OCg0g9NBqGyBkB"]}, {"action": 87, "resource": "Nf1N8o0fzh0OTSdf", "schedAction": 98, "schedCron": "uAmk0XpGoezy6KUn", "schedRange": ["kqprjkTNt21BTLnp", "hQsaspGR4ayAXcdv", "GVjtU0lmB4M6VSkv"]}], "roleName": "9QvNHNk7N4hl5MXI"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminCreateRoleV3' test.out

#- 185 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'WlTuzGEANuKok4hs' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleV3' test.out

#- 186 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId '2wyIlu3XAZhcPAju' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteRoleV3' test.out

#- 187 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'e4yt0ZObBGVRwClW' \
    --body '{"deletable": false, "isWildcard": false, "roleName": "JT5I3KTrSuYG1aXZ"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateRoleV3' test.out

#- 188 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'in6xCma5OwhJANQd' \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleAdminStatusV3' test.out

#- 189 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId '0UIqxOL6RJ402ZoE' \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateAdminRoleStatusV3' test.out

#- 190 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId '7SL7E7jtUE1kXjgg' \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleAdminV3' test.out

#- 191 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'TNpN4a8heaV6HD26' \
    --after 'CPEcGcD6fcxHDtXp' \
    --before 'k7B2dD5C9l8jbwcu' \
    --limit '60' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRoleManagersV3' test.out

#- 192 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'ozFkrzweyjSQyt2z' \
    --body '{"managers": [{"displayName": "GdvXvbLN3am6hkV1", "namespace": "sdBP2bitd0ZkwL7c", "userId": "gL4m43iJ9eQX5qkH"}, {"displayName": "qGqUDOzQ9FCPiQNI", "namespace": "VeaQH7RSMPpruLeJ", "userId": "xrMpDYGXRdBS8VBF"}, {"displayName": "aET0cVoTlISwD87A", "namespace": "znjZwSZUgvrutzRd", "userId": "6mEhY9pumkSzx0aq"}]}' \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRoleManagersV3' test.out

#- 193 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'h00l0SGl0FFqVrST' \
    --body '{"managers": [{"displayName": "QhlCHBB8MQuAk3uD", "namespace": "Q2NiVZfgYy1lXhwR", "userId": "WJTruO7eyct0YfdC"}, {"displayName": "GrELoHQta89VIyo9", "namespace": "Fie4D8YTSExiQEMi", "userId": "UcH64smtcHDPhMc8"}, {"displayName": "ykTYdnPwbCJJ2mfI", "namespace": "vFJyc35d59j86Yjh", "userId": "Dg9GRy1RbHCVvHkC"}]}' \
    > test.out 2>&1
eval_tap $? 193 'AdminRemoveRoleManagersV3' test.out

#- 194 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'nik3IUnS2WCal7nV' \
    --after 'VaVTPd0sKHKIJ3Bb' \
    --before 'R0taD1JrMpRQ7sul' \
    --limit '49' \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleMembersV3' test.out

#- 195 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'z34qsbfDV13Ub90B' \
    --body '{"members": [{"displayName": "oG4RWZiwJlI1TSSw", "namespace": "pqf84Ej58qWrk4Dm", "userId": "iws311nMqh2mHpie"}, {"displayName": "rZo4BqwaijiYoLlh", "namespace": "Yk814gBkZhuZYmeH", "userId": "ATdOVl5fuayTML9X"}, {"displayName": "CTrHPzZfQPLltI9M", "namespace": "7ZWQUEMvtsN3QeNL", "userId": "6hZSYHHdL8yUYwIh"}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddRoleMembersV3' test.out

#- 196 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'xFWqDp1sc0dAHiKT' \
    --body '{"members": [{"displayName": "GND9WzJ6lVCA4uQM", "namespace": "bCJh6XP7twLrIY0l", "userId": "L2kawNIXsXJFGr5H"}, {"displayName": "CWkOHElNPgkhyxKM", "namespace": "EOKzrH4Z4kIW16lX", "userId": "oWPHDsFLWcDmaF6a"}, {"displayName": "KUbHi43ioRIZjuTj", "namespace": "rxUoY17tOmVzGamt", "userId": "LWNOgaw8zA4RCzjw"}]}' \
    > test.out 2>&1
eval_tap $? 196 'AdminRemoveRoleMembersV3' test.out

#- 197 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'Uw8UcKbfUJzH5imI' \
    --body '{"permissions": [{"action": 13, "resource": "dpUfVW1wT5rwzX2b", "schedAction": 11, "schedCron": "U1kvfov30Dm086sZ", "schedRange": ["9OBvfHjLZIfPOB8q", "cwOsEGd5cqVwfUJg", "MN1eRx4HwFlN5tdD"]}, {"action": 56, "resource": "oTZFAS0J8LouIbt1", "schedAction": 10, "schedCron": "U2DVymuhNfvIcimz", "schedRange": ["nVTeX0UTm58V7i9g", "ydH1ObHFj5b5DdXl", "0w8MkFbXanL79bs5"]}, {"action": 8, "resource": "ajDg19tBs38qLDTL", "schedAction": 16, "schedCron": "QMcRCN6OhvmxjlUH", "schedRange": ["Zznk6Cjw3qNUXM9l", "UEb3rWMscS7vADKb", "bMJm5RRJKvVvqXVC"]}]}' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateRolePermissionsV3' test.out

#- 198 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'wzcMpTFIAozLujBC' \
    --body '{"permissions": [{"action": 43, "resource": "1wQpR5hUskQ65PbV", "schedAction": 4, "schedCron": "3b0wBP1FHnS225hk", "schedRange": ["SLcqT4RIEicrH28M", "PRg1hKisDXsQq4Wa", "afuy9GJSwDgSu4dk"]}, {"action": 52, "resource": "aUI0UjJYquFHHfGp", "schedAction": 77, "schedCron": "X5Sp7FqAINUZpWV0", "schedRange": ["cOzRLcCLzFjXt0X3", "wDpMny0vMO7xuuVX", "LmzJRE9kUZE5bI06"]}, {"action": 83, "resource": "VXRWj3hKcQ5qXEy8", "schedAction": 39, "schedCron": "DUZ18Cl2wITTGovD", "schedRange": ["bzrtEaglKhSt4Thj", "UJBTIJWpxzXMSXhg", "fZhggQB5mYmHcdwu"]}]}' \
    > test.out 2>&1
eval_tap $? 198 'AdminAddRolePermissionsV3' test.out

#- 199 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'lrDE0Opw4Mf4h7Az' \
    --body '["UfWfnR2W4pSpTuEZ", "zs7oPPc0CaLv0j9l", "6Q8pHuPri4Yrp10G"]' \
    > test.out 2>&1
eval_tap $? 199 'AdminDeleteRolePermissionsV3' test.out

#- 200 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '43' \
    --resource 'DdIyif2U6ZuEm71I' \
    --roleId 'tPaK2727GepLLXkT' \
    > test.out 2>&1
eval_tap $? 200 'AdminDeleteRolePermissionV3' test.out

#- 201 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 201 'AdminGetMyUserV3' test.out

#- 202 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'HyRJ76hQRqfBZuPb' \
    --extendExp 'true' \
    --redirectUri 'yfy3dHx3de8dckQ6' \
    --password 'F2CGgPSlN7quccEV' \
    --requestId 'e8t7BNzvOiKlgl96' \
    --userName '8GAht7ZyZHjcK5h4' \
    > test.out 2>&1
eval_tap $? 202 'UserAuthenticationV3' test.out

#- 203 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId '3x4jaJs3XDsGdGnR' \
    --linkingToken '0SpjU2X3DaYHry6w' \
    --password 'PJ9a8jf5IwMzOn5E' \
    --username 'epW3vOW8XbOTVIvG' \
    > test.out 2>&1
eval_tap $? 203 'AuthenticationWithPlatformLinkV3' test.out

#- 204 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData '3WE26x6YrhAHuLfe' \
    --extendExp 'true' \
    --linkingToken '5BtdrmUSgSogw3sG' \
    > test.out 2>&1
eval_tap $? 204 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 205 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'Ej9kpsVLj8OCvhxH' \
    > test.out 2>&1
eval_tap $? 205 'RequestOneTimeLinkingCodeV3' test.out

#- 206 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'hTnFupZ2PE69JNCT' \
    > test.out 2>&1
eval_tap $? 206 'ValidateOneTimeLinkingCodeV3' test.out

#- 207 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'ub7QFouWD3uReiFx' \
    --isTransient 'true' \
    --clientId 'EBbTBkqmAhYJBMc2' \
    --oneTimeLinkCode 'ZQLG2iaCSC7GAFAB' \
    > test.out 2>&1
eval_tap $? 207 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 208 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 208 'GetCountryLocationV3' test.out

#- 209 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 209 'Logout' test.out

#- 210 RequestGameTokenCodeResponseV3
samples/cli/sample-apps Iam requestGameTokenCodeResponseV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'SWRkpkLNuKgWv5CD' \
    > test.out 2>&1
eval_tap $? 210 'RequestGameTokenCodeResponseV3' test.out

#- 211 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId '4ZN6ZL0tqSNSHB5y' \
    --userId 'Jr5ZcGEQzqfXlnXh' \
    > test.out 2>&1
eval_tap $? 211 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 212 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'x8YMLY2axNRVKjew' \
    > test.out 2>&1
eval_tap $? 212 'RevokeUserV3' test.out

#- 213 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'oMMfc7XWYNWpAT2n' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'fJXAxQK8jnSUtXgj' \
    --redirectUri 'OY8nntlpZq8RfeNo' \
    --scope 'GwUTCopyHXArQCUh' \
    --state 'J8tvLwrqffVcx9rt' \
    --targetAuthPage '5rKxK33h2kdK2IIL' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'ETxUtTJXUSPIhKOB' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 213 'AuthorizeV3' test.out

#- 214 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token '3wDI19r5N1ComgcY' \
    > test.out 2>&1
eval_tap $? 214 'TokenIntrospectionV3' test.out

#- 215 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 215 'GetJWKSV3' test.out

#- 216 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'ig0D8v9hguuHn5fr' \
    --factor 'o4Cm5lHffmwvWDkB' \
    --mfaToken 'dq3fRxYsnIlvukBe' \
    > test.out 2>&1
eval_tap $? 216 'SendMFAAuthenticationCode' test.out

#- 217 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'zZuRF3JhZCjvt4sl' \
    --mfaToken 'vJFPN5E4hZoPCcTN' \
    > test.out 2>&1
eval_tap $? 217 'Change2faMethod' test.out

#- 218 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'uvV304i8Oh0Rcwxn' \
    --factor 'aU5ccXbGQSWltITa' \
    --mfaToken 'VYu0LlFVK4Uztbcp' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 218 'Verify2faCode' test.out

#- 219 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'DmcJB543HjnNtX79' \
    --userId '599Ms0B0bFG6H8f9' \
    > test.out 2>&1
eval_tap $? 219 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'k2a5SC8sTGHax1BV' \
    --clientId '6D5PBxri60cQk7Ww' \
    --redirectUri 'Awb4lG0OuaqDTsdX' \
    --requestId '1LSOoKOskmQ87ZWn' \
    > test.out 2>&1
eval_tap $? 220 'AuthCodeRequestV3' test.out

#- 221 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'GcQ6MFjVTRVyiFKU' \
    --additionalData 'ORLp7V90VMSUGoI4' \
    --clientId 'rQyym5RhxBTMvkay' \
    --createHeadless 'false' \
    --deviceId 'F0LskBS21C1ddNTN' \
    --macAddress 'gtTw08BsMpRv91vy' \
    --platformToken 'uWSEc0RBDJp6WBVf' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 221 'PlatformTokenGrantV3' test.out

#- 222 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 222 'GetRevocationListV3' test.out

#- 223 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'FwQlUAoS1y1bRoOR' \
    > test.out 2>&1
eval_tap $? 223 'TokenRevocationV3' test.out

#- 224 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'fvfYLELBk0JQouVB' \
    --clientId 'MvBV295OAABJu0Kv' \
    --code 'Y7L74rxtyw3CdkhK' \
    --codeVerifier '1QGCWytS8c7c7yvv' \
    --extendExp 'true' \
    --password 'RxuVNMN72PQRXyJJ' \
    --redirectUri '7SULZADaFz5fHhDq' \
    --refreshToken 'BPJd2dd3GThiw7mY' \
    --username 'nDCH0iKkntw3mtDl' \
    --grantType 'refresh_token' \
    > test.out 2>&1
eval_tap $? 224 'TokenGrantV3' test.out

#- 225 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'SRlEO1TMXdzZc1ws' \
    > test.out 2>&1
eval_tap $? 225 'VerifyTokenV3' test.out

#- 226 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId '27dIwEH8QWKcOrrw' \
    --code 'Sa8c5YpDdlbxrbSi' \
    --error 'VfRnHD9zXXlROL1W' \
    --openidAssocHandle '8nXVZAU83lZ0k39X' \
    --openidClaimedId '7nq1RpZzBFA0VoYZ' \
    --openidIdentity 'lkULNbAuF4EqTGte' \
    --openidMode 'MAEWrcAyCsnadjni' \
    --openidNs 'RnMyNEvflpizXnck' \
    --openidOpEndpoint 'fiHs5n8PrqNyDWJ6' \
    --openidResponseNonce '1Q0XURV244Uu5NSN' \
    --openidReturnTo 't1ulnPnLSWYMLLfA' \
    --openidSig '1aMJdTteMQtD4Eyz' \
    --openidSigned 'sZ0QobfNAVi3amdK' \
    --state 'APzgZ2jpwoMrIa2s' \
    > test.out 2>&1
eval_tap $? 226 'PlatformAuthenticationV3' test.out

#- 227 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode 'MwtKJgpbrppyaTHf' \
    > test.out 2>&1
eval_tap $? 227 'PublicGetInputValidations' test.out

#- 228 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'wJ74nduepkZk7h7q' \
    > test.out 2>&1
eval_tap $? 228 'PublicGetInputValidationByField' test.out

#- 229 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'cigPEAOEy9P90eLF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 229 'PublicGetCountryAgeRestrictionV3' test.out

#- 230 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 230 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 231 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'g5IS8vPyaa24zAP0' \
    > test.out 2>&1
eval_tap $? 231 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 232 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'qcZVtncTKB0RNuM4' \
    --rawPUID 'false' \
    --body '{"platformUserIds": ["J5sjSACGI9EyKnR1", "AnrUB9dgTiPWrdLo", "IYh6q2xFN3nGnGGF"]}' \
    > test.out 2>&1
eval_tap $? 232 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 233 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Tf7EUWYR7ZLHooHp' \
    --platformUserId 'wBimoNTLrW1fuN2A' \
    > test.out 2>&1
eval_tap $? 233 'PublicGetUserByPlatformUserIDV3' test.out

#- 234 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'EGRwKIIhUNojw3A1' \
    > test.out 2>&1
eval_tap $? 234 'PublicGetAsyncStatus' test.out

#- 235 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 't8akrMGMBati3gVu' \
    --limit '45' \
    --offset '81' \
    --query 'TuWrYbRyUjd8ZxVu' \
    > test.out 2>&1
eval_tap $? 235 'PublicSearchUserV3' test.out

#- 236 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "ZFrWxLhBMOoVGLOE", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "ggMwALzK3rJT5DTK", "policyId": "lOES0pDnKzP29Ve3", "policyVersionId": "jWaFwTpqoWWAlsEa"}, {"isAccepted": false, "localizedPolicyVersionId": "A0pxdSnPrvdV4SsY", "policyId": "Ao50BxTJ3Sne2ckX", "policyVersionId": "R0excLujDzjs0gKd"}, {"isAccepted": false, "localizedPolicyVersionId": "nrqO5nzU1iTUkfKk", "policyId": "XYzS5awBLmijGAcK", "policyVersionId": "YWtsPjYYwdIYEvOp"}], "authType": "BWBOXZO6Nvap9yUF", "code": "V4mGIyxwTACqakLt", "country": "4LEdGaeyEvMr3zkS", "dateOfBirth": "8C8psfSdkN9ke8Ex", "displayName": "23IIZ0D3ShWQuEp9", "emailAddress": "XSMHv215UeA53jhh", "password": "QPa0oBMI3A6Wcxib", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 236 'PublicCreateUserV3' test.out

#- 237 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'GAyTYfI3KRyeCA6N' \
    --query 'QQZQd67pQpoOCWCc' \
    > test.out 2>&1
eval_tap $? 237 'CheckUserAvailability' test.out

#- 238 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["vgU5MVtwODHDg4Sd", "LluAmWQ7Nz3tDxcW", "NjrmRWGBPAdHP7Yy"]}' \
    > test.out 2>&1
eval_tap $? 238 'PublicBulkGetUsers' test.out

#- 239 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "pW5EGpddY0ff2aPh", "languageTag": "T78zF6JOSDop09DU"}' \
    > test.out 2>&1
eval_tap $? 239 'PublicSendRegistrationCode' test.out

#- 240 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "hka0YjMQOyjTqcuE", "emailAddress": "1ncfP9UQvHbbLGGz"}' \
    > test.out 2>&1
eval_tap $? 240 'PublicVerifyRegistrationCode' test.out

#- 241 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "rJTSFDo6EoPZYuBX", "languageTag": "Jz1EXxKEpsh6CvSV"}' \
    > test.out 2>&1
eval_tap $? 241 'PublicForgotPasswordV3' test.out

#- 242 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId '0e87HoHMwxdZbuqS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 242 'GetAdminInvitationV3' test.out

#- 243 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'ALiv0RhM9qYHepep' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "ByGenXaE9z99QNTO", "policyId": "PZUQ83Pqt0wojvF8", "policyVersionId": "2PezOgt4ZioQDmq4"}, {"isAccepted": false, "localizedPolicyVersionId": "fG0t3iefj5wGrmlw", "policyId": "BPAjsf3B7AzN7HYX", "policyVersionId": "DcChlYqrWfPX61aE"}, {"isAccepted": true, "localizedPolicyVersionId": "KAw26NfTOYPRIjcf", "policyId": "sHNyTmfUkO84ZZvz", "policyVersionId": "MBexW2z54YnUcmws"}], "authType": "EMAILPASSWD", "country": "0I3O8ux4e3uKt4aV", "dateOfBirth": "orHbqHBkoIPLvddR", "displayName": "Pum3MZV6NAN1OI3W", "password": "ONhe96wZK8hAWeyZ", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 243 'CreateUserFromInvitationV3' test.out

#- 244 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "25W54gGDZ7NVEaHN", "country": "MP3ugfBEbcdsIy9M", "dateOfBirth": "wlHm83NA69eUbpC3", "displayName": "yhUmP1J3nV5KdHio", "languageTag": "Y8I1dMWwjszw9j11", "userName": "c2v9hWEHFNm8I4C3"}' \
    > test.out 2>&1
eval_tap $? 244 'UpdateUserV3' test.out

#- 245 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "8uzTRw9EcSwBu7pw", "country": "1afLf0ezBYKRsNau", "dateOfBirth": "FIiOUhWjdma1fTbx", "displayName": "jULlPjOW3JRfixdI", "languageTag": "fYJnVoHJuS6AMrrI", "userName": "UkHv0mOCnXRJn1vV"}' \
    > test.out 2>&1
eval_tap $? 245 'PublicPartialUpdateUserV3' test.out

#- 246 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "KINlLF3pey6M0BBk", "emailAddress": "u38cnfUEcbG6Y5eA", "languageTag": "V9rT9ctKrHJvw5CR"}' \
    > test.out 2>&1
eval_tap $? 246 'PublicSendVerificationCodeV3' test.out

#- 247 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "dVwDj9fxScjucjb9", "contactType": "btSIL4sPTFUpduBq", "languageTag": "1klzYjz1q9DoHYDe", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 247 'PublicUserVerificationV3' test.out

#- 248 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "acNYpCIYHZo0t4o7", "country": "cX5pJ18gB7QEb4Ln", "dateOfBirth": "IgzArnjKEsbqPAaW", "displayName": "cRvbHkZLjdKAKuXb", "emailAddress": "o6TiiwlpML8FyPoj", "password": "Q6VA8ktcNZ500Nql", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 248 'PublicUpgradeHeadlessAccountV3' test.out

#- 249 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "dcEnsl9TahS0zuJL", "password": "Yi6mge6NEtNXNLzZ"}' \
    > test.out 2>&1
eval_tap $? 249 'PublicVerifyHeadlessAccountV3' test.out

#- 250 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "nPmhcynrZlxjn0Dj", "newPassword": "CaOGoyTvKY4h2wjv", "oldPassword": "B1f5CpP0skb15gdT"}' \
    > test.out 2>&1
eval_tap $? 250 'PublicUpdatePasswordV3' test.out

#- 251 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'wUK1BMHYH2KHfbGX' \
    > test.out 2>&1
eval_tap $? 251 'PublicCreateJusticeUser' test.out

#- 252 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'uhPtjElEptISyREg' \
    --redirectUri '8boPMoAjmxY2Zz2W' \
    --ticket 'rS0lOqn6ddR8yBEo' \
    > test.out 2>&1
eval_tap $? 252 'PublicPlatformLinkV3' test.out

#- 253 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'DC8njcnaOK0VIV0C' \
    --body '{"platformNamespace": "qyjiYUQY1OGlez7E"}' \
    > test.out 2>&1
eval_tap $? 253 'PublicPlatformUnlinkV3' test.out

#- 254 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId '3KEmp6Z14A1C75Sp' \
    > test.out 2>&1
eval_tap $? 254 'PublicPlatformUnlinkAllV3' test.out

#- 255 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '5fpkdEs8qv68hF2e' \
    --ticket 'VvcM3h0cqki4AKzG' \
    > test.out 2>&1
eval_tap $? 255 'PublicForcePlatformLinkV3' test.out

#- 256 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'jE0mDmBW0eW3EFDP' \
    --clientId 'hrDCUVDYof4zXtja' \
    --redirectUri 'SQ6FuVqBDM6BBcN7' \
    > test.out 2>&1
eval_tap $? 256 'PublicWebLinkPlatform' test.out

#- 257 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'Ohvc3jKnxc8XAhwY' \
    --code 'egxhi5HWVRXdT9eQ' \
    --state '3081ula1Gte0DI14' \
    > test.out 2>&1
eval_tap $? 257 'PublicWebLinkPlatformEstablish' test.out

#- 258 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "V8DwCpMhZuybKUNU", "emailAddress": "ro5nGG0qxyq8Go6Y", "newPassword": "r55XJfqOnw3GMnBb"}' \
    > test.out 2>&1
eval_tap $? 258 'ResetPasswordV3' test.out

#- 259 PublicGetUserByUserIdV3
eval_tap 0 259 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 260 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'XUoPMC0yXa1CvzrU' \
    --activeOnly 'true' \
    --after 'OVx1tSO6C1FA4JnW' \
    --before 'sjf192NsDOvnrbKX' \
    --limit '82' \
    > test.out 2>&1
eval_tap $? 260 'PublicGetUserBanHistoryV3' test.out

#- 261 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId '27CiSmPrlWmBfCeS' \
    > test.out 2>&1
eval_tap $? 261 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 262 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ur41TIi3sEYFTi0y' \
    > test.out 2>&1
eval_tap $? 262 'PublicGetUserInformationV3' test.out

#- 263 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Wvd1vrM13eHr8UPM' \
    --after '0.31554586264578965' \
    --before '0.5568326642024455' \
    --limit '48' \
    > test.out 2>&1
eval_tap $? 263 'PublicGetUserLoginHistoriesV3' test.out

#- 264 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'f3YpJpfxvuWaXJyU' \
    --after '2crVYM1lDncC8Q01' \
    --before 'eiBLS5TCYL0tkh6E' \
    --limit '29' \
    > test.out 2>&1
eval_tap $? 264 'PublicGetUserPlatformAccountsV3' test.out

#- 265 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pOvmoAoPugEhrYRq' \
    > test.out 2>&1
eval_tap $? 265 'PublicListJusticePlatformAccountsV3' test.out

#- 266 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '6otENRacrBqlXsQl' \
    --body '{"platformId": "7rkrdYEd5udrGPzd", "platformUserId": "9jSw12pu0DL1CaeK"}' \
    > test.out 2>&1
eval_tap $? 266 'PublicLinkPlatformAccount' test.out

#- 267 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'NmYxkTfQZH87auHJ' \
    --body '{"chosenNamespaces": ["gdMo651JYYTnIA36", "KqiDaUGmWphgFXvi", "FKFkf001YQj8bQLq"], "requestId": "OO5mnOgLvSAhhsCH"}' \
    > test.out 2>&1
eval_tap $? 267 'PublicForceLinkPlatformWithProgression' test.out

#- 268 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'q8sisQQ1LgQpfieY' \
    > test.out 2>&1
eval_tap $? 268 'PublicGetPublisherUserV3' test.out

#- 269 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eYhEd2OjlJ4lVKnz' \
    --password 'hUQ1sCHvM4p2lXcC' \
    > test.out 2>&1
eval_tap $? 269 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 270 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'z6B8Fp86rLbuXSia' \
    --before 'vHKiYvBEbgNzD5ZT' \
    --isWildcard 'true' \
    --limit '4' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetRolesV3' test.out

#- 271 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'wR7ZjWrN4X0qOnZk' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetRoleV3' test.out

#- 272 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 272 'PublicGetMyUserV3' test.out

#- 273 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'a9R9u2Ins1aIrqy8' \
    > test.out 2>&1
eval_tap $? 273 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 274 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["gHDg6yP1dt8epFoR", "sc2ypUFn8dibKv2x", "5TJoFYOzkNEJykVf"], "oneTimeLinkCode": "KYpp6wSTwaa4TNIJ"}' \
    > test.out 2>&1
eval_tap $? 274 'LinkHeadlessAccountToMyAccountV3' test.out

#- 275 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "aA71SmSywgHQOpDs"}' \
    > test.out 2>&1
eval_tap $? 275 'PublicSendVerificationLinkV3' test.out

#- 276 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'XFgbYu0r1iPvLSPr' \
    > test.out 2>&1
eval_tap $? 276 'PublicVerifyUserByLinkV3' test.out

#- 277 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'X3N2XS1xKx0k5aii' \
    --code 'QnlRkdzwPs8QY5PH' \
    --error 'vqO2Sfkw196xWFqP' \
    --state 'phFVMvR52oKVV31z' \
    > test.out 2>&1
eval_tap $? 277 'PlatformAuthenticateSAMLV3Handler' test.out

#- 278 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'IQ4mJKDMrjq2ngWk' \
    --payload 'hSYzBeLNpMUdePeN' \
    > test.out 2>&1
eval_tap $? 278 'LoginSSOClient' test.out

#- 279 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'aY0auNSy7xEmEFA1' \
    > test.out 2>&1
eval_tap $? 279 'LogoutSSOClient' test.out

#- 280 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --additionalData 'sB3kSx2h5I0cKSFX' \
    --code 'kFMlnaygxfWmUvAL' \
    > test.out 2>&1
eval_tap $? 280 'RequestGameTokenResponseV3' test.out

#- 281 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'FpygQOljnivtJFK6' \
    > test.out 2>&1
eval_tap $? 281 'AdminGetDevicesByUserV4' test.out

#- 282 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'k4WtT8xFjzUzbut3' \
    --endDate '0Z1aO6nb76FJafoc' \
    --limit '62' \
    --offset '51' \
    --startDate 'agMQc5Y5PhK6wnPv' \
    > test.out 2>&1
eval_tap $? 282 'AdminGetBannedDevicesV4' test.out

#- 283 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId '4EDeCV0DLjleY3e6' \
    > test.out 2>&1
eval_tap $? 283 'AdminGetUserDeviceBansV4' test.out

#- 284 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "bSezzHcb2LcUjlcY", "deviceId": "no7306yiFH293zlJ", "deviceType": "ePxI5G9M0pFedmV5", "enabled": true, "endDate": "g6Vyr0dSiAQjhuIq", "ext": {"MmqRy6MTm1PFvqkt": {}, "25IdYyM2dWvzs6Iw": {}, "uyhNNK0UuPquggn7": {}}, "reason": "F55hWYZasYBtbHJk"}' \
    > test.out 2>&1
eval_tap $? 284 'AdminBanDeviceV4' test.out

#- 285 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'ZhUnaJL5E7pQNVUy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 285 'AdminGetDeviceBanV4' test.out

#- 286 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'EBBxdnLzDR7DJAYJ' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 286 'AdminUpdateDeviceBanV4' test.out

#- 287 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate '1VCBIYv6BUC4w3Ur' \
    --startDate 'GnHZAWgyudhGWs5k' \
    --deviceType 'TDLw7oAlsR9BEJ53' \
    > test.out 2>&1
eval_tap $? 287 'AdminGenerateReportV4' test.out

#- 288 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 288 'AdminGetDeviceTypesV4' test.out

#- 289 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'sJjfXfzn13eS79CE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 289 'AdminGetDeviceBansV4' test.out

#- 290 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'T7JTzeCX6ph8qf3I' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'AdminDecryptDeviceV4' test.out

#- 291 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId '7hZLoiO40yzWXaUi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 291 'AdminUnbanDeviceV4' test.out

#- 292 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'rm46MCubzrJytsfa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 292 'AdminGetUsersByDeviceV4' test.out

#- 293 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 9}' \
    > test.out 2>&1
eval_tap $? 293 'AdminCreateTestUsersV4' test.out

#- 294 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Bi8NVxp1QxOJ8Nyz", "riF7CMcrlNJC2CTi", "nFdPoBYM6hKjHjZ5"]}' \
    > test.out 2>&1
eval_tap $? 294 'AdminBulkCheckValidUserIDV4' test.out

#- 295 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'd6AD9otZ1DFVJVh3' \
    --body '{"avatarUrl": "i4NPP3ZG97LkaNvR", "country": "U1AHHge9PkB1DAp7", "dateOfBirth": "SOWBoSSw2KwneRft", "displayName": "Z5dPdV7zP5FV5KRp", "languageTag": "bxsMWozk7iwZr2BF", "userName": "MnYkXeUspnWPohNl"}' \
    > test.out 2>&1
eval_tap $? 295 'AdminUpdateUserV4' test.out

#- 296 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'OgsVSVfTfNCs8iHx' \
    --body '{"code": "T0NqTXgV5KrhKFoG", "emailAddress": "aJg28KZZDLRoqyQ3"}' \
    > test.out 2>&1
eval_tap $? 296 'AdminUpdateUserEmailAddressV4' test.out

#- 297 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'HwGKfo5dBvbS2fUZ' \
    > test.out 2>&1
eval_tap $? 297 'AdminDisableUserMFAV4' test.out

#- 298 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'vRuRZ2YpQeZfbrZk' \
    > test.out 2>&1
eval_tap $? 298 'AdminListUserRolesV4' test.out

#- 299 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'e5v0tYJ7vb4yfeZI' \
    --body '{"assignedNamespaces": ["mJIF7QUyPCkg7t0w", "bCcBiPSfPrFU7wyz", "xeZyklu9xfxH8GDY"], "roleId": "VTLgrsLvIqT2PxW5"}' \
    > test.out 2>&1
eval_tap $? 299 'AdminUpdateUserRoleV4' test.out

#- 300 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'mTO0Gr1xYG45uORM' \
    --body '{"assignedNamespaces": ["DDNdf46bBxOtBoHu", "eEtuhRSnbwnETjGN", "JaRBHMO0DxnzgcDR"], "roleId": "jNc5i4S9PzwT11nv"}' \
    > test.out 2>&1
eval_tap $? 300 'AdminAddUserRoleV4' test.out

#- 301 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'prYTY8PzpoH3l1Go' \
    --body '{"assignedNamespaces": ["E7UTnnu6cq36SmRf", "jqBdb4RZ2ckRa4lx", "VCaKfOESRy1Vcnmh"], "roleId": "ZeyT93gNuoZidM2z"}' \
    > test.out 2>&1
eval_tap $? 301 'AdminRemoveUserRoleV4' test.out

#- 302 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'true' \
    --limit '43' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 302 'AdminGetRolesV4' test.out

#- 303 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "CAu7BKUO5QreFx5g"}' \
    > test.out 2>&1
eval_tap $? 303 'AdminCreateRoleV4' test.out

#- 304 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId '7AdfIjFunilnSOpm' \
    > test.out 2>&1
eval_tap $? 304 'AdminGetRoleV4' test.out

#- 305 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId '4PfqBrcUh8vJssjl' \
    > test.out 2>&1
eval_tap $? 305 'AdminDeleteRoleV4' test.out

#- 306 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'jH9DKApPOdM9imsf' \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "OdiQiyOPpTxOvbrU"}' \
    > test.out 2>&1
eval_tap $? 306 'AdminUpdateRoleV4' test.out

#- 307 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId '2LRuG2r1cuvKtAzr' \
    --body '{"permissions": [{"action": 59, "resource": "4oclYf2cELq40pg8", "schedAction": 48, "schedCron": "WbjIYI6suBaHVrGe", "schedRange": ["mZ14BtqIAStLdUFk", "Hjd00Pivxzp9HkuY", "ZHjZhcTLNE2vPU9u"]}, {"action": 91, "resource": "Ax8hravRflg7LOiR", "schedAction": 58, "schedCron": "Jaz9lrgwrWDxK4Ci", "schedRange": ["dWpjQAmACpfUwp59", "Fr81MBXkqVTA2C6R", "tHXfG5yY5QZZ7O9U"]}, {"action": 54, "resource": "cA6ZSblaJlt2zn1D", "schedAction": 25, "schedCron": "DHLhAbjLUgX12ISM", "schedRange": ["MyFSymsuLvryJwE4", "6dz76zd70e89ROq0", "PZYIjXnaJXxjgTqZ"]}]}' \
    > test.out 2>&1
eval_tap $? 307 'AdminUpdateRolePermissionsV4' test.out

#- 308 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId '1nWG3FLrMBFx0NpB' \
    --body '{"permissions": [{"action": 41, "resource": "sL82Qclf3H7mNtvo", "schedAction": 44, "schedCron": "E0vB2XnZ8sAkneli", "schedRange": ["cYTaK1e84A7FHoPD", "5c7d67bmgYMYPdAg", "bhzpAALeORerRq1Z"]}, {"action": 42, "resource": "Ot6dHbWWYT1fFFmX", "schedAction": 28, "schedCron": "ryQ3BpUejjGOteIu", "schedRange": ["s7Q7I8hFPBeJJu8v", "fHKVuGz3diPVdfCW", "hABpH0ZJtF85kAEd"]}, {"action": 52, "resource": "iRZhpBlI0aYCuEoT", "schedAction": 1, "schedCron": "27rHGPJTqMuaKeC7", "schedRange": ["6frAkNPCpfDUhAwV", "pCVVrjFDYoWgxnoh", "uvjlgkpKFLNpBvDe"]}]}' \
    > test.out 2>&1
eval_tap $? 308 'AdminAddRolePermissionsV4' test.out

#- 309 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'A1swAAlGkUlwM5aq' \
    --body '["pO5yKGOwJSGDYUBC", "N44g7qxlbkvwgFfp", "dpZidlX4DxarSEAM"]' \
    > test.out 2>&1
eval_tap $? 309 'AdminDeleteRolePermissionsV4' test.out

#- 310 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'NFoXSev6G9xjwa5U' \
    --after 'RgRb3nBZZCwg56L9' \
    --before 'zj8U65EmgsJFkRhe' \
    --limit '31' \
    > test.out 2>&1
eval_tap $? 310 'AdminListAssignedUsersV4' test.out

#- 311 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'IC2R2Thl2RLqgWgi' \
    --body '{"assignedNamespaces": ["RpXW0odLArFl7n4j", "WI6XpO4mbaWQDj35", "ijNgHViWovdkeaOf"], "namespace": "lr2vGBGQETjKnwPL", "userId": "jKeuSc0e0Wd6gtOg"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminAssignUserToRoleV4' test.out

#- 312 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'vNt9gWkw2fwMzJB9' \
    --body '{"namespace": "Ccdo0AOFKw63eS4y", "userId": "wwoptNoGThexJo7N"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminRevokeUserFromRoleV4' test.out

#- 313 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["89wN1VNSE1HEWxZm", "T2KwaYhnGHGxQMXG", "mAztJ9gPgwxqYwPt"], "emailAddresses": ["3xlyLabcU9HEv5R4", "DmMOSevZN2Mp4ap4", "iwMyvG88I1MAJyzo"], "isAdmin": false, "namespace": "D7TuFAt3I3yIyeiw", "roleId": "ZuKFmFIGszJvWK5S"}' \
    > test.out 2>&1
eval_tap $? 313 'AdminInviteUserNewV4' test.out

#- 314 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "6Qoa4KiIkRLG8vfJ", "country": "A3vwfQJ25ZWo6UYF", "dateOfBirth": "wQqTSR264OLUOkqW", "displayName": "mWbzEM1nyQX0eIFT", "languageTag": "3hdtvHxP5DS03Z5m", "userName": "GqAaJqoiLl677tHO"}' \
    > test.out 2>&1
eval_tap $? 314 'AdminUpdateMyUserV4' test.out

#- 315 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 315 'AdminDisableMyAuthenticatorV4' test.out

#- 316 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'u0iyCXOvdS1jQE2c' \
    > test.out 2>&1
eval_tap $? 316 'AdminEnableMyAuthenticatorV4' test.out

#- 317 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 317 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 318 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 318 'AdminGetMyBackupCodesV4' test.out

#- 319 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 319 'AdminGenerateMyBackupCodesV4' test.out

#- 320 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 320 'AdminDisableMyBackupCodesV4' test.out

#- 321 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 321 'AdminDownloadMyBackupCodesV4' test.out

#- 322 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 322 'AdminEnableMyBackupCodesV4' test.out

#- 323 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 323 'AdminSendMyMFAEmailCodeV4' test.out

#- 324 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 324 'AdminDisableMyEmailV4' test.out

#- 325 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'H6n70P1xeAPZ0lGZ' \
    > test.out 2>&1
eval_tap $? 325 'AdminEnableMyEmailV4' test.out

#- 326 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 326 'AdminGetMyEnabledFactorsV4' test.out

#- 327 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor '8MwS1jnLYColyTbH' \
    > test.out 2>&1
eval_tap $? 327 'AdminMakeFactorMyDefaultV4' test.out

#- 328 AdminInviteUserV4
eval_tap 0 328 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 329 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "EebHQqHSk5pgMMZc", "policyId": "nVZ7Mhty59n4CNAd", "policyVersionId": "8ktKJ6wt8VCqdKkh"}, {"isAccepted": true, "localizedPolicyVersionId": "VYB0SBu5dEcoIUCe", "policyId": "IXKmo7ZFljwls7rV", "policyVersionId": "e6G6cxEdbhtquVqo"}, {"isAccepted": true, "localizedPolicyVersionId": "5dU9pJZgdb9QwUNA", "policyId": "olZ5z7G3inrIHNQE", "policyVersionId": "H75yBDjlm56R5ElS"}], "authType": "EMAILPASSWD", "country": "39sL3z0zTztmomvT", "dateOfBirth": "qeCVsjvL2Tzcktgh", "displayName": "s3Bg71OerL0adism", "emailAddress": "QpRI9qYrvTgq5QaS", "password": "JSdgu57pmjMytLZU", "passwordMD5Sum": "bmBccqEy4TIUaNF3", "username": "nKaZVRxM970BPkAJ", "verified": false}' \
    > test.out 2>&1
eval_tap $? 329 'PublicCreateTestUserV4' test.out

#- 330 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "iZViF3dLJkrjV5FE", "policyId": "vudswtlpbBPBNPht", "policyVersionId": "Xv7auGPte7VWAfuU"}, {"isAccepted": true, "localizedPolicyVersionId": "yJuOOOwQMf3A56hD", "policyId": "I6mLzEwAjJoD0GlK", "policyVersionId": "3fxd6IZp3SihAKDv"}, {"isAccepted": true, "localizedPolicyVersionId": "MRcMAFsBVgNTpdf3", "policyId": "C1fWYOdPzRSZKRI2", "policyVersionId": "tZGsq0NKMtS3T5HW"}], "authType": "EMAILPASSWD", "code": "6qtEYPNbdZ1slelw", "country": "LInFC8GbT3xP9I0c", "dateOfBirth": "MMAPWdcFO8f7fYLf", "displayName": "cRtNOsopKEGyrx62", "emailAddress": "3KVNWjQk2OXft1Tl", "password": "bOKFU7D7kvzHX3ns", "passwordMD5Sum": "ALnYEuXxJY6gtsPI", "reachMinimumAge": true, "username": "luwJrUhTU2q7JQvD"}' \
    > test.out 2>&1
eval_tap $? 330 'PublicCreateUserV4' test.out

#- 331 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'ztifDiM0c8AXQp0O' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "34uPZvJCxxmnPr7j", "policyId": "3EsFjOEArT5qXFnK", "policyVersionId": "HfQ3tiuF78mwmVl9"}, {"isAccepted": false, "localizedPolicyVersionId": "4wFFQMyO7QEYr7wR", "policyId": "p5Im08akGk35XI55", "policyVersionId": "MXPo5xmgHHoEynIY"}, {"isAccepted": false, "localizedPolicyVersionId": "8NFLulBsrsCdn4Go", "policyId": "HiCR7eUuZl4IPDT5", "policyVersionId": "Nuw1icGiq6kYucIt"}], "authType": "EMAILPASSWD", "country": "J3wUBo1OErAYaybY", "dateOfBirth": "j4p7Imx50UTmykch", "displayName": "rHsGa3fqi2kAHmUY", "password": "WTrRoZEjJMAfE6BL", "reachMinimumAge": true, "username": "IxQ41QtJQfIzl1sv"}' \
    > test.out 2>&1
eval_tap $? 331 'CreateUserFromInvitationV4' test.out

#- 332 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "B92BBO0GD8FRTV67", "country": "oo6owMwKHSGHpner", "dateOfBirth": "ezpPeOd04K6PSdPk", "displayName": "aHxGZKAWaenAZG3y", "languageTag": "P8px3NU9nIusbcdy", "userName": "UIzJheQItsThvNAM"}' \
    > test.out 2>&1
eval_tap $? 332 'PublicUpdateUserV4' test.out

#- 333 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "yqqp1TDyobZRl3hX", "emailAddress": "NqqxordmFHtHicV6"}' \
    > test.out 2>&1
eval_tap $? 333 'PublicUpdateUserEmailAddressV4' test.out

#- 334 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "w55XOfnfb3VYj2an", "country": "rb3hHHm5a7dNAiRi", "dateOfBirth": "6O03cFtRHcc79HO9", "displayName": "g8wBQfVlNoVqCq3r", "emailAddress": "PYlje8tXMufWgQDH", "password": "FYuh0m2vL51NTCeJ", "reachMinimumAge": false, "username": "Nl0WXQJELTehqVdq", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 334 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 335 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "3fpzSjA0feSptYPb", "password": "hYqlT5Zu6IxiPeuy", "username": "n2UkXpE2YobfE3Qg"}' \
    > test.out 2>&1
eval_tap $? 335 'PublicUpgradeHeadlessAccountV4' test.out

#- 336 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 336 'PublicDisableMyAuthenticatorV4' test.out

#- 337 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code '4bcKvx1jheVnFcEG' \
    > test.out 2>&1
eval_tap $? 337 'PublicEnableMyAuthenticatorV4' test.out

#- 338 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 338 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 339 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 339 'PublicGetMyBackupCodesV4' test.out

#- 340 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 340 'PublicGenerateMyBackupCodesV4' test.out

#- 341 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 341 'PublicDisableMyBackupCodesV4' test.out

#- 342 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'PublicDownloadMyBackupCodesV4' test.out

#- 343 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 343 'PublicEnableMyBackupCodesV4' test.out

#- 344 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 344 'PublicRemoveTrustedDeviceV4' test.out

#- 345 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 345 'PublicSendMyMFAEmailCodeV4' test.out

#- 346 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 346 'PublicDisableMyEmailV4' test.out

#- 347 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'm0M7VKWAAV4aiPtG' \
    > test.out 2>&1
eval_tap $? 347 'PublicEnableMyEmailV4' test.out

#- 348 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'PublicGetMyEnabledFactorsV4' test.out

#- 349 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'XrvZQCyJqUInF8Hl' \
    > test.out 2>&1
eval_tap $? 349 'PublicMakeFactorMyDefaultV4' test.out

#- 350 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"emailAddress": "cUzrdoLUM2fHJfJI", "namespace": "U559hR8PuNzg6oPw", "namespaceDisplayName": "DDUBLWLryuFeMY1r"}' \
    > test.out 2>&1
eval_tap $? 350 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE