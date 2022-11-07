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
echo "1..333"

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
    --body '[{"field": "mDkzJADC", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "blockedWord": ["GNfZaYbb", "At9Z85cm", "X06VZMoY"], "description": [{"language": "254DvZLF", "message": ["5NnEyFxR", "ROy2vD3s", "Ka4MdmsO"]}, {"language": "MJ07rgN3", "message": ["O0AE9hzk", "g305L3CQ", "K1Vldsf1"]}, {"language": "eVY1Zzol", "message": ["h0SaLdao", "vmLG9pmt", "A1zJnwoP"]}], "isCustomRegex": true, "letterCase": "CvrLS1D8", "maxLength": 18, "maxRepeatingAlphaNum": 40, "maxRepeatingSpecialCharacter": 35, "minCharType": 57, "minLength": 34, "regex": "M6F33sBW", "specialCharacterLocation": "zQN35i5N", "specialCharacters": ["VKqTUF9Z", "jaHDZvS9", "CmNaSxzK"]}}, {"field": "4eolvCw2", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "blockedWord": ["mINfpvGA", "Efxj1vtR", "vt1o0gzn"], "description": [{"language": "OQF5Giwt", "message": ["PnBQ4JME", "HUBKJlet", "YvAMQ9Wf"]}, {"language": "ogE0DjrU", "message": ["adk66aTO", "BfWDz1L4", "s533qd0I"]}, {"language": "2uIigbG0", "message": ["txoRXYM6", "RYYfFZe3", "uHOvuKd4"]}], "isCustomRegex": false, "letterCase": "XRJagHZD", "maxLength": 28, "maxRepeatingAlphaNum": 33, "maxRepeatingSpecialCharacter": 31, "minCharType": 100, "minLength": 84, "regex": "zthosylr", "specialCharacterLocation": "UkbEKg6x", "specialCharacters": ["85TFO6al", "5QyHN9J1", "mbxQx2FB"]}}, {"field": "CKwGPuTl", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "blockedWord": ["1Rw0zZNc", "vU782kVp", "XP8hyfbv"], "description": [{"language": "fX4S8tpF", "message": ["855Lh5NU", "6UPrYfRg", "5ld5bZQV"]}, {"language": "SXpcJN2d", "message": ["5gxH8WTM", "55sGwLjF", "opzDh81l"]}, {"language": "Ju4Z8j6g", "message": ["kxGXcFTP", "Zb29qJvS", "hHTzxcJl"]}], "isCustomRegex": true, "letterCase": "cjTtqhKA", "maxLength": 92, "maxRepeatingAlphaNum": 56, "maxRepeatingSpecialCharacter": 53, "minCharType": 80, "minLength": 24, "regex": "n7XdSrIP", "specialCharacterLocation": "NUOKQsNr", "specialCharacters": ["k1c3IcVG", "9gSwxvf4", "Da4EaHYT"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'hO2Gjrsm' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'eo3EPUsP' \
    --before '3l3l3IQY' \
    --limit '26' \
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
    --body '{"ageRestriction": 53, "enable": false}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'V8BEs9t8' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 55}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'DtdR22eG' \
    --limit '72' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "HpJh99wP", "comment": "lbFaRQLQ", "endDate": "VvjpsucC", "reason": "CC7Hpeer", "skipNotif": false, "userIds": ["gXq2cwsA", "9skB8ZWC", "UAj1GN2a"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "TJYAZsJD", "userId": "OduEnLdn"}, {"banId": "R106Kins", "userId": "3LnZlGVZ"}, {"banId": "U2ead066", "userId": "8Bcyb2PH"}]}' \
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
    --limit '79' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["T5LWwVs0", "J686m5dq", "8AANB2vC"], "baseUri": "j7RwCMzU", "clientId": "qLAwnMaG", "clientName": "hp27PLyj", "clientPermissions": [{"action": 86, "resource": "D4cAIa8u", "schedAction": 49, "schedCron": "8USDv1aZ", "schedRange": ["XBspuD6r", "s6qCNPCj", "aMvT2bQN"]}, {"action": 96, "resource": "bldhiXgy", "schedAction": 79, "schedCron": "uWfMMRSo", "schedRange": ["9JMln6A3", "bXDjK2sY", "uAqM1dkZ"]}, {"action": 3, "resource": "yg5tq5cz", "schedAction": 13, "schedCron": "dlKiF0eB", "schedRange": ["o5lRF9ec", "jMkZ7vSA", "ucHljBuf"]}], "clientPlatform": "DE2ubyJj", "deletable": false, "namespace": "wFBFYmS2", "oauthAccessTokenExpiration": 63, "oauthClientType": "ycaUNPgy", "oauthRefreshTokenExpiration": 96, "redirectUri": "FmygGsW7", "secret": "bp7BAyzi", "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'Ruyz9Jz1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'ssu26qGw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId '4Mm81RjP' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["e0grcu3D", "jeNN0bhd", "kltEkbJv"], "baseUri": "jzaPFjj8", "clientName": "pqukzVfB", "clientPermissions": [{"action": 18, "resource": "1Vlql3Xt", "schedAction": 81, "schedCron": "NDHxDhFP", "schedRange": ["c1a1Kd9E", "eBvkHrrV", "UAjeA9Pp"]}, {"action": 37, "resource": "PwaSTUfl", "schedAction": 28, "schedCron": "4CCDhAJC", "schedRange": ["keN4jT8j", "nqmXF69A", "nrwyiK10"]}, {"action": 69, "resource": "UiM6UCqe", "schedAction": 94, "schedCron": "ACpUYzBN", "schedRange": ["nYq5q3sD", "GKulJlY6", "couIG7du"]}], "clientPlatform": "MUNsAoWO", "deletable": true, "namespace": "QuCf6gSg", "oauthAccessTokenExpiration": 45, "oauthRefreshTokenExpiration": 97, "redirectUri": "6t1zkwSy", "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'IbLqFewJ' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 47, "resource": "sLP80rqx"}, {"action": 28, "resource": "lGRnTuPb"}, {"action": 4, "resource": "IWycvjx5"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'SczDDJpY' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 41, "resource": "sPoGJp0o"}, {"action": 2, "resource": "FRSNH9Js"}, {"action": 83, "resource": "ix0FYMVb"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '32' \
    --clientId 'QshyGzvW' \
    --namespace $AB_NAMESPACE \
    --resource 'kNncwQVB' \
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
    --limit '66' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 130 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 131 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'XYqkjx5p' \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '1afxN6mX' \
    --body '{"ACSURL": "DkespqIF", "AWSCognitoRegion": "sRTCoUAU", "AWSCognitoUserPool": "Vnv2nu4h", "AllowedClients": ["bceQ8gPd", "GJKBFrhl", "F3VcbhcU"], "AppId": "B3gvZuJJ", "AuthorizationEndpoint": "A1Ry78Ek", "ClientId": "QkWCOQ0R", "Environment": "guRstRtX", "FederationMetadataURL": "BckcJhHI", "GenericOauthFlow": true, "IsActive": false, "Issuer": "BF130HJj", "JWKSEndpoint": "TfcqXMVg", "KeyID": "5Chjsbss", "NetflixCertificates": {"encryptedPrivateKey": "I2afeGgc", "encryptedPrivateKeyName": "OmuBwK2M", "publicCertificate": "xKRAEwrr", "publicCertificateName": "DF1Vdsda", "rootCertificate": "xQm3qvzL", "rootCertificateName": "SM7dodlu"}, "OrganizationId": "gxmo8K9E", "PlatformName": "oZxxSxs2", "RedirectUri": "v2ZKrbWI", "RegisteredDomains": [{"affectedClientIDs": ["qOhRR1hC", "lrCOpofc", "j8SRuTlE"], "domain": "DpNSuBJ5", "namespaces": ["LZS3VSqM", "tbfFfRzB", "F4aS0I5y"], "roleId": "84yuqCfP"}, {"affectedClientIDs": ["hPlxeRkq", "PfV5M2cn", "3JWC1NGG"], "domain": "ZKZ94VKL", "namespaces": ["iS7gg0Nz", "rzTle3uf", "JxcZ7QP7"], "roleId": "6HrtbuTr"}, {"affectedClientIDs": ["mFLKXkyM", "G3bIkBtm", "Ip0JsRHg"], "domain": "05tfGDXb", "namespaces": ["pZBVu90X", "5girJsLa", "mxLJgrbn"], "roleId": "B3Km7brp"}], "Secret": "sNxPcdBZ", "TeamID": "zW8wIiBq", "TokenAuthenticationType": "WQNAIRpG", "TokenClaimsMapping": {"kC8jTTaQ": "IU0rqZ9g", "T0BrK2Eb": "cMGZzY0P", "z1LeKxwF": "4hgSipNJ"}, "TokenEndpoint": "qOKQkDiM", "scopes": ["H2jCFeU6", "WaxceXpG", "kPyNTcWm"]}' \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'qMUJEmGK' \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'vXyWzXna' \
    --body '{"ACSURL": "rN2Wek7y", "AWSCognitoRegion": "W3f559tf", "AWSCognitoUserPool": "ZBDOyWdm", "AllowedClients": ["HJ4puT3A", "xE30moaD", "6jeliHlz"], "AppId": "wXLRDEk0", "AuthorizationEndpoint": "nZcVIUMS", "ClientId": "WjhyPupT", "Environment": "LXxEHimY", "FederationMetadataURL": "fT5C1b7f", "GenericOauthFlow": true, "IsActive": true, "Issuer": "4cZ2iaJ0", "JWKSEndpoint": "qvBUXewN", "KeyID": "x6h76NzA", "NetflixCertificates": {"encryptedPrivateKey": "w0iI6UQd", "encryptedPrivateKeyName": "0U0E7iZh", "publicCertificate": "MmGKSRu4", "publicCertificateName": "x5GhlavI", "rootCertificate": "kEGnqt36", "rootCertificateName": "b6jGu876"}, "OrganizationId": "talxMee2", "PlatformName": "W689iNpk", "RedirectUri": "5cEuoJJ6", "RegisteredDomains": [{"affectedClientIDs": ["GLCQkHMR", "0thWVcJ9", "9hwbrX1N"], "domain": "mBZkdIPd", "namespaces": ["CgsEXDE2", "2jPdhDri", "R0p3aUAx"], "roleId": "LfblbTo4"}, {"affectedClientIDs": ["mPxJWYrr", "LOLdPYBx", "lhXS1m8s"], "domain": "4A4GQEjv", "namespaces": ["fshbevUU", "KItLbklS", "mYdakc6g"], "roleId": "hAZt8jDu"}, {"affectedClientIDs": ["k4pfjfvb", "yJYYts6L", "nMmsmhk7"], "domain": "zUMPVUGj", "namespaces": ["HOR5zC1g", "19c3c7Uh", "Zs07Kpxx"], "roleId": "m1M4GNWp"}], "Secret": "e01pZ6bK", "TeamID": "9oIwqD5H", "TokenAuthenticationType": "5roozPgt", "TokenClaimsMapping": {"xpGGIU0R": "QrsQk2tc", "jHiT7kn8": "08pgPtAW", "tv5mdp2y": "IhuFfduz"}, "TokenEndpoint": "sHNDKrhJ", "scopes": ["Nomrqtk7", "lpVzm2gc", "YNZVuUax"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'id9eGUGR' \
    --body '{"affectedClientIDs": ["4I71VHDL", "nQy3aDga", "2IlPTgHU"], "assignedNamespaces": ["6oprFxCm", "27IS7Eqk", "rnecCfYM"], "domain": "nvt1kK4L", "roleId": "JsD6JD1y"}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'iZbYyH9t' \
    --body '{"domain": "74ozYDJM"}' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'VFkda462' \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'Dj1ZEsZY' \
    --body '{"acsUrl": "ZIJIHZUf", "apiKey": "LxbP8kJB", "appId": "wn10nw6D", "federationMetadataUrl": "KHSTE8nV", "isActive": false, "redirectUri": "DpOk3stY", "secret": "KZZsQGw9", "ssoUrl": "SE6cw17o"}' \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '8wbHT5wU' \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'tj7emtlW' \
    --body '{"acsUrl": "5W027I7c", "apiKey": "HmF4PVh1", "appId": "FM7IXUMr", "federationMetadataUrl": "yQNxuAuz", "isActive": false, "redirectUri": "di9NaXOx", "secret": "fYgWfmKW", "ssoUrl": "VXqhYWav"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'IgVyTV8G' \
    --platformUserId 'ICmDpP7O' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'zUjsBlj7' \
    --after '74' \
    --before '1' \
    --limit '71' \
    > test.out 2>&1
eval_tap $? 142 'GetAdminUsersByRoleIdV3' test.out

#- 143 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'G6DmAeUa' \
    > test.out 2>&1
eval_tap $? 143 'AdminGetUserByEmailAddressV3' test.out

#- 144 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["y9TEHgPr", "GVDZxkCd", "bHlvweGO"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["KL1xOgMF", "Pp8nlfIe", "VSwZFt4c"], "isAdmin": false, "roles": ["n7BH0NZp", "NtowDl19", "p929dbHb"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 146 'AdminListUsersV3' test.out

#- 147 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'TjySK7wN' \
    --endDate '9MebNPEt' \
    --limit '27' \
    --offset '81' \
    --platformBy 'CziKrKhz' \
    --platformId 'hWITB8Om' \
    --query 'gMozZy4H' \
    --startDate 'vL3TdlmV' \
    > test.out 2>&1
eval_tap $? 147 'AdminSearchUserV3' test.out

#- 148 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["ukxdKztU", "tUswm86H", "GvdKfjvn"]}' \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserByEmailAddressV3' test.out

#- 149 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId '5fKd6aB5' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetUserByUserIdV3' test.out

#- 150 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bEn0RAsI' \
    --body '{"avatarUrl": "aYQemho4", "country": "00h6i2tC", "dateOfBirth": "Ww3aa0lO", "displayName": "mAIGT07v", "languageTag": "nWRrlCbg", "userName": "SVusOgca"}' \
    > test.out 2>&1
eval_tap $? 150 'AdminUpdateUserV3' test.out

#- 151 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dYcOaygN' \
    --activeOnly 'true' \
    --after 'PpeKz0eI' \
    --before 'NkD3beU6' \
    --limit '11' \
    > test.out 2>&1
eval_tap $? 151 'AdminGetUserBanV3' test.out

#- 152 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jqCdctSz' \
    --body '{"ban": "oREdYLMX", "comment": "ynq0ueRI", "endDate": "vEDNQDgS", "reason": "ciea4ZSp", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 152 'AdminBanUserV3' test.out

#- 153 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'd3SboctD' \
    --namespace $AB_NAMESPACE \
    --userId '3hsu6Zsf' \
    --body '{"enabled": true, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 153 'AdminUpdateUserBanV3' test.out

#- 154 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DOPLjSvT' \
    --body '{"context": "IcLTzQPb", "emailAddress": "AxYGqp9p", "languageTag": "VoVvqgRC"}' \
    > test.out 2>&1
eval_tap $? 154 'AdminSendVerificationCodeV3' test.out

#- 155 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'L0tTmuQr' \
    --body '{"Code": "htIcNFbM", "ContactType": "nygeyo4s", "LanguageTag": "arlek1hV", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 155 'AdminVerifyAccountV3' test.out

#- 156 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId '4m4qdx26' \
    > test.out 2>&1
eval_tap $? 156 'GetUserVerificationCode' test.out

#- 157 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rswomEXy' \
    > test.out 2>&1
eval_tap $? 157 'AdminGetUserDeletionStatusV3' test.out

#- 158 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xCKBVcES' \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 158 'AdminUpdateUserDeletionStatusV3' test.out

#- 159 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'JyAmnNEe' \
    --body '{"code": "8TE1fXI5", "country": "xfgaCRkA", "dateOfBirth": "IXUfGwte", "displayName": "P0l4YnK9", "emailAddress": "YKiGDWq1", "password": "p0wo1GZz", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 159 'AdminUpgradeHeadlessAccountV3' test.out

#- 160 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TBIMkZk8' \
    > test.out 2>&1
eval_tap $? 160 'AdminDeleteUserInformationV3' test.out

#- 161 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dIelISl6' \
    --after '0.32430247790405875' \
    --before '0.7450515017415086' \
    --limit '64' \
    > test.out 2>&1
eval_tap $? 161 'AdminGetUserLoginHistoriesV3' test.out

#- 162 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'HacWSVQR' \
    --body '{"languageTag": "CnPMwk9u", "newPassword": "7zyhwu1E", "oldPassword": "2kjC55nj"}' \
    > test.out 2>&1
eval_tap $? 162 'AdminResetPasswordV3' test.out

#- 163 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'JNMapfO8' \
    --body '{"Permissions": [{"Action": 26, "Resource": "SiV1fvBE", "SchedAction": 100, "SchedCron": "B7u3DyWO", "SchedRange": ["ciOl4sCi", "i8ynbrOM", "iYUGcTip"]}, {"Action": 42, "Resource": "xOMAtu4v", "SchedAction": 28, "SchedCron": "Nw9MARei", "SchedRange": ["WeSA51tT", "hA0nA0pn", "su5PkUAQ"]}, {"Action": 49, "Resource": "uwwPxiUf", "SchedAction": 71, "SchedCron": "uJzWwPdy", "SchedRange": ["Jh2TVwKt", "uNEDlrqq", "Wd5h8JR0"]}]}' \
    > test.out 2>&1
eval_tap $? 163 'AdminUpdateUserPermissionV3' test.out

#- 164 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId '5oBoUuKS' \
    --body '{"Permissions": [{"Action": 61, "Resource": "Jbp9tiok", "SchedAction": 54, "SchedCron": "GXA6ZoTk", "SchedRange": ["OY6y7xKG", "oHUu5dv1", "XKRDrJ7s"]}, {"Action": 75, "Resource": "wVPEH843", "SchedAction": 42, "SchedCron": "9BdAtjBG", "SchedRange": ["uUDq5BAC", "wSZ3dcC3", "bXuoxkLm"]}, {"Action": 41, "Resource": "yPn0LzCk", "SchedAction": 66, "SchedCron": "tjXz9XLA", "SchedRange": ["mKUdQIRX", "PMQgnTTD", "jtUVyaDZ"]}]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminAddUserPermissionsV3' test.out

#- 165 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EZ4KMQDL' \
    --body '[{"Action": 41, "Resource": "TODFDDFG"}, {"Action": 11, "Resource": "TQ753iHW"}, {"Action": 17, "Resource": "vGm5BZU8"}]' \
    > test.out 2>&1
eval_tap $? 165 'AdminDeleteUserPermissionBulkV3' test.out

#- 166 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '83' \
    --namespace $AB_NAMESPACE \
    --resource '6awdUzrz' \
    --userId 'tuS0ULsX' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionV3' test.out

#- 167 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'm4jayEmg' \
    --after 'PwskXFpq' \
    --before '3aGhl3rz' \
    --limit '99' \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserPlatformAccountsV3' test.out

#- 168 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'IfOCLEAA' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetListJusticePlatformAccounts' test.out

#- 169 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'vNbRPWFP' \
    --userId 'ZjNgJ4u7' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetUserMapping' test.out

#- 170 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'EbOBrYFf' \
    --userId 'XxUjuMXH' \
    > test.out 2>&1
eval_tap $? 170 'AdminCreateJusticeUser' test.out

#- 171 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'LSUCv7yL' \
    --body '{"platformId": "mLjmf2ff", "platformUserId": "D3hwBIBr"}' \
    > test.out 2>&1
eval_tap $? 171 'AdminLinkPlatformAccount' test.out

#- 172 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '01Gi9cvH' \
    --userId 'AMN7GM2r' \
    --body '{"platformNamespace": "kcIyujV3"}' \
    > test.out 2>&1
eval_tap $? 172 'AdminPlatformUnlinkV3' test.out

#- 173 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'z2SedQ6D' \
    --userId 'o6tkte3E' \
    --ticket 'xkQqpggt' \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformLinkV3' test.out

#- 174 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gt4bY0XK' \
    --body '["2JfEarMo", "j2A42352", "C3Huzdbo"]' \
    > test.out 2>&1
eval_tap $? 174 'AdminDeleteUserRolesV3' test.out

#- 175 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xRCkvETw' \
    --body '[{"namespace": "03xSHjN1", "roleId": "pxU4Zsiy"}, {"namespace": "jImbcmt9", "roleId": "nUZpndrq"}, {"namespace": "qy4Q5BGi", "roleId": "xOUBCFLZ"}]' \
    > test.out 2>&1
eval_tap $? 175 'AdminSaveUserRoleV3' test.out

#- 176 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'hcWKbytt' \
    --userId '7TNZ0ZXa' \
    > test.out 2>&1
eval_tap $? 176 'AdminAddUserRoleV3' test.out

#- 177 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'S13OgRuu' \
    --userId 'RHtTPyug' \
    > test.out 2>&1
eval_tap $? 177 'AdminDeleteUserRoleV3' test.out

#- 178 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jl6VaLI0' \
    --body '{"enabled": false, "reason": "2TBPYzM8"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminUpdateUserStatusV3' test.out

#- 179 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'yf1UH7Wy' \
    > test.out 2>&1
eval_tap $? 179 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 180 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'RJZuWGLz' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "edDrPCwD"}' \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateClientSecretV3' test.out

#- 181 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'AHQR3DEr' \
    --before 'tSaGJ7rx' \
    --isWildcard 'true' \
    --limit '19' \
    > test.out 2>&1
eval_tap $? 181 'AdminGetRolesV3' test.out

#- 182 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "managers": [{"displayName": "fediMGhg", "namespace": "kfSkCKkd", "userId": "TpZcoCNL"}, {"displayName": "KdsEMa2l", "namespace": "KWt4VOaF", "userId": "CtAomjXX"}, {"displayName": "1cH5MLWo", "namespace": "K8Oc6mT5", "userId": "Mqc9dUSX"}], "members": [{"displayName": "wI0B2Bnp", "namespace": "yoSUo4Ls", "userId": "B0kyEPpS"}, {"displayName": "NfZ7DHzF", "namespace": "kFcTDLSR", "userId": "N6OF47er"}, {"displayName": "FN2pYHrs", "namespace": "1uX48Njh", "userId": "AtXRFug0"}], "permissions": [{"action": 76, "resource": "ZU02UUz6", "schedAction": 19, "schedCron": "I7brLZQm", "schedRange": ["vlbrP6sq", "rGsvEyw6", "7HVwWnTN"]}, {"action": 55, "resource": "cfWVuTa6", "schedAction": 56, "schedCron": "c9jMmipH", "schedRange": ["jqBH1BYD", "uQ4HHp2j", "1wGmvDlu"]}, {"action": 46, "resource": "izw5PYdW", "schedAction": 59, "schedCron": "ngGfTjy5", "schedRange": ["xqdSce1q", "iWmbN8GE", "dNnPdK73"]}], "roleName": "jUifQln7"}' \
    > test.out 2>&1
eval_tap $? 182 'AdminCreateRoleV3' test.out

#- 183 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'zkCQU8Tu' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRoleV3' test.out

#- 184 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'W2WkuhYV' \
    > test.out 2>&1
eval_tap $? 184 'AdminDeleteRoleV3' test.out

#- 185 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'zxwv622W' \
    --body '{"deletable": false, "isWildcard": false, "roleName": "daPcFDno"}' \
    > test.out 2>&1
eval_tap $? 185 'AdminUpdateRoleV3' test.out

#- 186 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'Nj6WJF8B' \
    > test.out 2>&1
eval_tap $? 186 'AdminGetRoleAdminStatusV3' test.out

#- 187 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'jL8IJpvt' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateAdminRoleStatusV3' test.out

#- 188 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId '0oF3gdKg' \
    > test.out 2>&1
eval_tap $? 188 'AdminRemoveRoleAdminV3' test.out

#- 189 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId '5jmbBrxp' \
    --after 'ehXuQl7T' \
    --before 'kzQtd3fh' \
    --limit '65' \
    > test.out 2>&1
eval_tap $? 189 'AdminGetRoleManagersV3' test.out

#- 190 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId '4YwF74yg' \
    --body '{"managers": [{"displayName": "dmIBaZTp", "namespace": "nxYM1wIg", "userId": "o7L8zjEA"}, {"displayName": "Qyy97BGF", "namespace": "KBhf1qK2", "userId": "ZuqX7WWq"}, {"displayName": "sIrRPLAD", "namespace": "nBHjBU6L", "userId": "sPuGS4J8"}]}' \
    > test.out 2>&1
eval_tap $? 190 'AdminAddRoleManagersV3' test.out

#- 191 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'ZYzn72OS' \
    --body '{"managers": [{"displayName": "2ghOwBX4", "namespace": "CJDywXtp", "userId": "3IPuolGS"}, {"displayName": "gqPOXxHX", "namespace": "F5Dzz8Qt", "userId": "wGAWj1LY"}, {"displayName": "KC4pnx8C", "namespace": "bEm2wSdL", "userId": "UjgPEZt8"}]}' \
    > test.out 2>&1
eval_tap $? 191 'AdminRemoveRoleManagersV3' test.out

#- 192 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId '7Rj1ltCc' \
    --after 'U5XJIgDY' \
    --before 'NAsetgEY' \
    --limit '85' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetRoleMembersV3' test.out

#- 193 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'eQAX8u9P' \
    --body '{"members": [{"displayName": "q71Covur", "namespace": "Zw8O0YKy", "userId": "9OTPm5TW"}, {"displayName": "uULpRRiu", "namespace": "miSKmM02", "userId": "OZoCqp3S"}, {"displayName": "hMK9dQQN", "namespace": "PQ3F8RAl", "userId": "8OB3ghXO"}]}' \
    > test.out 2>&1
eval_tap $? 193 'AdminAddRoleMembersV3' test.out

#- 194 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'AVdQeXyt' \
    --body '{"members": [{"displayName": "qCqiVRPX", "namespace": "Vimqsh3Y", "userId": "a8oFeqUf"}, {"displayName": "GVUooMrw", "namespace": "1fYEVc4f", "userId": "ekPbAMcr"}, {"displayName": "4NI2tNnO", "namespace": "FNHLOdFz", "userId": "vVJYlrIJ"}]}' \
    > test.out 2>&1
eval_tap $? 194 'AdminRemoveRoleMembersV3' test.out

#- 195 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'QOMVA0QQ' \
    --body '{"permissions": [{"action": 75, "resource": "JSchNm8q", "schedAction": 9, "schedCron": "UDyZKyLm", "schedRange": ["AIQyTRBP", "1P8V87N8", "EqUOmLhT"]}, {"action": 9, "resource": "oNuYwucF", "schedAction": 33, "schedCron": "bwYzNU28", "schedRange": ["WEqvzsrG", "yVQQuAGP", "d0ZKIDny"]}, {"action": 25, "resource": "oCgD9O0P", "schedAction": 2, "schedCron": "pixSw8Y1", "schedRange": ["IuU9w42B", "8YySibyD", "ZT5XcBNV"]}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminUpdateRolePermissionsV3' test.out

#- 196 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'lMna7E72' \
    --body '{"permissions": [{"action": 7, "resource": "qeP7eyV3", "schedAction": 54, "schedCron": "IieyLQNo", "schedRange": ["Q5OYCskD", "dBmXFs5q", "AQwEuT49"]}, {"action": 12, "resource": "ia4tPdpW", "schedAction": 84, "schedCron": "ti3R3Jpx", "schedRange": ["4pPs6zwh", "gyB2DvTC", "3vIwZFmH"]}, {"action": 100, "resource": "8fFBAoAL", "schedAction": 15, "schedCron": "frO3WR3i", "schedRange": ["8Q5jZ1gQ", "JZeKO1cq", "tGMUyPpt"]}]}' \
    > test.out 2>&1
eval_tap $? 196 'AdminAddRolePermissionsV3' test.out

#- 197 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'HZKiB4Iz' \
    --body '["ozqNsIwn", "tJ5sDuXj", "TxDgqWst"]' \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteRolePermissionsV3' test.out

#- 198 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '10' \
    --resource 'e3ZbtT62' \
    --roleId 'rScYJldj' \
    > test.out 2>&1
eval_tap $? 198 'AdminDeleteRolePermissionV3' test.out

#- 199 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 199 'AdminGetMyUserV3' test.out

#- 200 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'u2NuJhWV' \
    --extendExp 'false' \
    --redirectUri 'eXCEshW1' \
    --password 'AtxhdKz1' \
    --requestId 'fYTk5yyY' \
    --userName 'WO0HaNS1' \
    > test.out 2>&1
eval_tap $? 200 'UserAuthenticationV3' test.out

#- 201 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'aq0KRwm0' \
    --linkingToken 'oE8EXT6M' \
    --password 'BymxhQOJ' \
    --username 'eGfM7pYY' \
    > test.out 2>&1
eval_tap $? 201 'AuthenticationWithPlatformLinkV3' test.out

#- 202 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'true' \
    --linkingToken 'Q95jjqB0' \
    > test.out 2>&1
eval_tap $? 202 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 203 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 203 'GetCountryLocationV3' test.out

#- 204 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 204 'Logout' test.out

#- 205 RequestGameTokenCodeResponseV3
samples/cli/sample-apps Iam requestGameTokenCodeResponseV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'CaBlqmBW' \
    > test.out 2>&1
eval_tap $? 205 'RequestGameTokenCodeResponseV3' test.out

#- 206 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'eI8mkXpS' \
    --userId 'jkFgP9zu' \
    > test.out 2>&1
eval_tap $? 206 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 207 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'f1oQTVHR' \
    > test.out 2>&1
eval_tap $? 207 'RevokeUserV3' test.out

#- 208 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'ypavtDZq' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'true' \
    --redirectUri 'BbkuSqCP' \
    --scope 'Vw806AbX' \
    --state 'dMUZjGWD' \
    --targetAuthPage '6oDcjRdk' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId '92g9RSZq' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 208 'AuthorizeV3' test.out

#- 209 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'cIsU9PiN' \
    > test.out 2>&1
eval_tap $? 209 'TokenIntrospectionV3' test.out

#- 210 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 210 'GetJWKSV3' test.out

#- 211 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor '8Zfmylfh' \
    --mfaToken 'plRqyxiv' \
    > test.out 2>&1
eval_tap $? 211 'Change2faMethod' test.out

#- 212 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'ZXFwI9Uu' \
    --factor 'uuQW2R2F' \
    --mfaToken 'kqyhTrZv' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 212 'Verify2faCode' test.out

#- 213 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'IvSm9Bn5' \
    --userId 'Rz5UHCUg' \
    > test.out 2>&1
eval_tap $? 213 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 214 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId '98qhKoPN' \
    --clientId 'QwUrJA7p' \
    --redirectUri 'aWhqLW66' \
    --requestId 'x7bmhI0Y' \
    > test.out 2>&1
eval_tap $? 214 'AuthCodeRequestV3' test.out

#- 215 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'J81UUrJo' \
    --clientId 'DSnCRKL5' \
    --createHeadless 'false' \
    --deviceId 'JToPuQpD' \
    --macAddress 'PJ9Wajy3' \
    --platformToken 'DprPtvdf' \
    > test.out 2>&1
eval_tap $? 215 'PlatformTokenGrantV3' test.out

#- 216 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 216 'GetRevocationListV3' test.out

#- 217 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'pBp1LbAU' \
    > test.out 2>&1
eval_tap $? 217 'TokenRevocationV3' test.out

#- 218 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --clientId 'YuyXtLer' \
    --code 'ddgzIh3y' \
    --codeVerifier 'kutEHtEE' \
    --extendExp 'true' \
    --password '2WROwZzD' \
    --redirectUri 'EJJcnweE' \
    --refreshToken 'scYuSPxb' \
    --username 'PPxUzHNm' \
    --grantType 'client_credentials' \
    > test.out 2>&1
eval_tap $? 218 'TokenGrantV3' test.out

#- 219 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'AkW0KkzP' \
    > test.out 2>&1
eval_tap $? 219 'VerifyTokenV3' test.out

#- 220 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'hETkEKxc' \
    --code '7vBStiXa' \
    --error 'fGN5yiA8' \
    --openidAssocHandle 'lgITfyQG' \
    --openidClaimedId 'pEe9EAX4' \
    --openidIdentity 'qtyv7RhD' \
    --openidMode 'mSXSRQqq' \
    --openidNs 'EkiXQmM0' \
    --openidOpEndpoint 'WSDvUI3K' \
    --openidResponseNonce '1R5UFsCS' \
    --openidReturnTo 'WgZeI00z' \
    --openidSig '3s2S0EBY' \
    --openidSigned 'vR6F6lpe' \
    --state 'URUHDLUw' \
    > test.out 2>&1
eval_tap $? 220 'PlatformAuthenticationV3' test.out

#- 221 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'nrGEAwtm' \
    > test.out 2>&1
eval_tap $? 221 'PublicGetInputValidations' test.out

#- 222 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'K9j3om4p' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 222 'PublicGetCountryAgeRestrictionV3' test.out

#- 223 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 223 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 224 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'zQkEVZd2' \
    > test.out 2>&1
eval_tap $? 224 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 225 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Q4538xaY' \
    --body '{"platformUserIds": ["Xch8QOyx", "1Aa8zkxf", "Q5UxHJ0P"]}' \
    > test.out 2>&1
eval_tap $? 225 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 226 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'pFPCbhGz' \
    --platformUserId 'aHKcz10m' \
    > test.out 2>&1
eval_tap $? 226 'PublicGetUserByPlatformUserIDV3' test.out

#- 227 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId '6TrnfZq6' \
    > test.out 2>&1
eval_tap $? 227 'PublicGetAsyncStatus' test.out

#- 228 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'eMgyzTTr' \
    --limit '64' \
    --offset '30' \
    --query 'wR9F1nYn' \
    > test.out 2>&1
eval_tap $? 228 'PublicSearchUserV3' test.out

#- 229 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "YKSYaETh", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "K6A4JyR5", "policyId": "YrQ0Z4HU", "policyVersionId": "WqM9KXqR"}, {"isAccepted": true, "localizedPolicyVersionId": "25uq9zUS", "policyId": "33QjBIsc", "policyVersionId": "TW08hQDS"}, {"isAccepted": true, "localizedPolicyVersionId": "GhFVX2in", "policyId": "aaQxrM1S", "policyVersionId": "4d6nmgNK"}], "authType": "7syYAEPq", "code": "PrOGmf6i", "country": "yxAGgSac", "dateOfBirth": "K66MKcGy", "displayName": "DheMatWm", "emailAddress": "6wGmDdjJ", "password": "2i1Vjkre", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 229 'PublicCreateUserV3' test.out

#- 230 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'K1JQZ8uG' \
    --query 'Ohj3plaf' \
    > test.out 2>&1
eval_tap $? 230 'CheckUserAvailability' test.out

#- 231 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["AIMlUbVe", "qCygBbmp", "jrhL2OHa"]}' \
    > test.out 2>&1
eval_tap $? 231 'PublicBulkGetUsers' test.out

#- 232 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "JBMr48VD", "languageTag": "gN1SxbmN"}' \
    > test.out 2>&1
eval_tap $? 232 'PublicSendRegistrationCode' test.out

#- 233 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "SVlsMzHK", "emailAddress": "p6CRkBt5"}' \
    > test.out 2>&1
eval_tap $? 233 'PublicVerifyRegistrationCode' test.out

#- 234 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "4GA28WRg", "languageTag": "tooFtYuV"}' \
    > test.out 2>&1
eval_tap $? 234 'PublicForgotPasswordV3' test.out

#- 235 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'fOk3Xfqt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 235 'GetAdminInvitationV3' test.out

#- 236 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'Kxu9N4yw' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "lErAQiC8", "policyId": "12X4KQJl", "policyVersionId": "PcgTJEd9"}, {"isAccepted": true, "localizedPolicyVersionId": "EavoOO69", "policyId": "NWeXBGx8", "policyVersionId": "RCtacG5M"}, {"isAccepted": true, "localizedPolicyVersionId": "h55g629s", "policyId": "JHGWYYve", "policyVersionId": "Ws0kOZeR"}], "authType": "EMAILPASSWD", "country": "roI0X5nz", "dateOfBirth": "A1CjLWJW", "displayName": "NVtk1ceD", "password": "rbrK4UUu", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 236 'CreateUserFromInvitationV3' test.out

#- 237 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "CwQj5WfB", "country": "BDakRRp3", "dateOfBirth": "YOnDf6Cc", "displayName": "Zf1jxchu", "languageTag": "fH3wzN4N", "userName": "376JfI8d"}' \
    > test.out 2>&1
eval_tap $? 237 'UpdateUserV3' test.out

#- 238 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "GZzimA13", "country": "K7Al7pgd", "dateOfBirth": "RaeLN7a8", "displayName": "Wrzh6aWO", "languageTag": "H16lCeeS", "userName": "oPjinLHM"}' \
    > test.out 2>&1
eval_tap $? 238 'PublicPartialUpdateUserV3' test.out

#- 239 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "yRZjRE7z", "emailAddress": "JzcknAj1", "languageTag": "ggVJ01u9"}' \
    > test.out 2>&1
eval_tap $? 239 'PublicSendVerificationCodeV3' test.out

#- 240 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "OvPW5K0Q", "contactType": "NwwR6WYb", "languageTag": "uFmlRrxj", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 240 'PublicUserVerificationV3' test.out

#- 241 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "6ni2qbl5", "country": "0B2Nafgu", "dateOfBirth": "dG3VdzwG", "displayName": "AgX81x8I", "emailAddress": "VnwVDPxL", "password": "6eIPQ7hs", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 241 'PublicUpgradeHeadlessAccountV3' test.out

#- 242 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "wGzIc9Q9", "password": "KsqcObQg"}' \
    > test.out 2>&1
eval_tap $? 242 'PublicVerifyHeadlessAccountV3' test.out

#- 243 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "7pdGRbsb", "newPassword": "fTg5clys", "oldPassword": "UUDhB5Rj"}' \
    > test.out 2>&1
eval_tap $? 243 'PublicUpdatePasswordV3' test.out

#- 244 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'tWcW7TJf' \
    > test.out 2>&1
eval_tap $? 244 'PublicCreateJusticeUser' test.out

#- 245 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ADc40ptz' \
    --redirectUri 'H54XanE3' \
    --ticket '8mRXTaEm' \
    > test.out 2>&1
eval_tap $? 245 'PublicPlatformLinkV3' test.out

#- 246 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'fRXEb0eu' \
    --body '{"platformNamespace": "G0v1oxgt"}' \
    > test.out 2>&1
eval_tap $? 246 'PublicPlatformUnlinkV3' test.out

#- 247 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'YdQgkCzK' \
    > test.out 2>&1
eval_tap $? 247 'PublicPlatformUnlinkAllV3' test.out

#- 248 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'PSTPpQ2h' \
    --ticket 'VEytdX0d' \
    > test.out 2>&1
eval_tap $? 248 'PublicForcePlatformLinkV3' test.out

#- 249 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'VWHmGTAf' \
    --clientId 'OmPqN4Zj' \
    --redirectUri 'Wxq3uGsD' \
    > test.out 2>&1
eval_tap $? 249 'PublicWebLinkPlatform' test.out

#- 250 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'VDH2TVC0' \
    --state 's1UiD6mH' \
    > test.out 2>&1
eval_tap $? 250 'PublicWebLinkPlatformEstablish' test.out

#- 251 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "CmLT7YUF", "emailAddress": "T7twDmHQ", "newPassword": "a5Pp61cd"}' \
    > test.out 2>&1
eval_tap $? 251 'ResetPasswordV3' test.out

#- 252 PublicGetUserByUserIdV3
samples/cli/sample-apps Iam publicGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BEEt7myz' \
    > test.out 2>&1
eval_tap $? 252 'PublicGetUserByUserIdV3' test.out

#- 253 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'XPEUDytQ' \
    --activeOnly 'false' \
    --after 'aYNgmazM' \
    --before 'xADxfjai' \
    --limit '46' \
    > test.out 2>&1
eval_tap $? 253 'PublicGetUserBanHistoryV3' test.out

#- 254 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kph7xs0U' \
    > test.out 2>&1
eval_tap $? 254 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 255 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VupztxGX' \
    > test.out 2>&1
eval_tap $? 255 'PublicGetUserInformationV3' test.out

#- 256 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'o33M05tJ' \
    --after '0.7536031904592887' \
    --before '0.32327135060641665' \
    --limit '10' \
    > test.out 2>&1
eval_tap $? 256 'PublicGetUserLoginHistoriesV3' test.out

#- 257 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'avG8fNKK' \
    --after 'tkIOuPV2' \
    --before 'exeh8tpC' \
    --limit '18' \
    > test.out 2>&1
eval_tap $? 257 'PublicGetUserPlatformAccountsV3' test.out

#- 258 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'GeykWqQb' \
    > test.out 2>&1
eval_tap $? 258 'PublicListJusticePlatformAccountsV3' test.out

#- 259 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'kNKfrMZh' \
    --body '{"platformId": "mpE3WsCF", "platformUserId": "mmfrTowt"}' \
    > test.out 2>&1
eval_tap $? 259 'PublicLinkPlatformAccount' test.out

#- 260 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'HANS2INk' \
    --body '{"chosenNamespaces": ["KH7vN0WX", "TWIkij9W", "SGVvd7hR"], "requestId": "ILh31c8l"}' \
    > test.out 2>&1
eval_tap $? 260 'PublicForceLinkPlatformWithProgression' test.out

#- 261 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'GREBhQu6' \
    > test.out 2>&1
eval_tap $? 261 'PublicGetPublisherUserV3' test.out

#- 262 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZEKuFpj7' \
    --password 'uz5GRZEu' \
    > test.out 2>&1
eval_tap $? 262 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 263 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'tLkRKuod' \
    --before 'MqlyYZNc' \
    --isWildcard 'false' \
    --limit '49' \
    > test.out 2>&1
eval_tap $? 263 'PublicGetRolesV3' test.out

#- 264 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId '5nlSWM0f' \
    > test.out 2>&1
eval_tap $? 264 'PublicGetRoleV3' test.out

#- 265 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 265 'PublicGetMyUserV3' test.out

#- 266 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "nJNYYzZc"}' \
    > test.out 2>&1
eval_tap $? 266 'PublicSendVerificationLinkV3' test.out

#- 267 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'y7A88TVv' \
    > test.out 2>&1
eval_tap $? 267 'PublicVerifyUserByLinkV3' test.out

#- 268 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'mvFVr50w' \
    --code 'ZjzB1TMM' \
    --error 'HT1e3sCQ' \
    --state 'vfH0e2of' \
    > test.out 2>&1
eval_tap $? 268 'PlatformAuthenticateSAMLV3Handler' test.out

#- 269 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'hhXjb3jp' \
    --payload '3VJMNWpx' \
    > test.out 2>&1
eval_tap $? 269 'LoginSSOClient' test.out

#- 270 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'HMYKyipU' \
    > test.out 2>&1
eval_tap $? 270 'LogoutSSOClient' test.out

#- 271 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --code 'YtsKUFvN' \
    > test.out 2>&1
eval_tap $? 271 'RequestGameTokenResponseV3' test.out

#- 272 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '0W5wn109' \
    > test.out 2>&1
eval_tap $? 272 'AdminGetDevicesByUserV4' test.out

#- 273 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'siWGrwWG' \
    --endDate 'bmAGjNky' \
    --limit '19' \
    --offset '1' \
    --startDate 'lqBNr8LX' \
    > test.out 2>&1
eval_tap $? 273 'AdminGetBannedDevicesV4' test.out

#- 274 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'yNZ0Ze1P' \
    > test.out 2>&1
eval_tap $? 274 'AdminGetUserDeviceBansV4' test.out

#- 275 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "t8sCHOkR", "deviceId": "L46UeM2q", "deviceType": "wNJg9J6d", "enabled": false, "endDate": "POX4pqnR", "ext": {"Ewr3Kg1z": {}, "qM3x3SWs": {}, "vHQwfRXC": {}}, "reason": "6EjrNeHp"}' \
    > test.out 2>&1
eval_tap $? 275 'AdminBanDeviceV4' test.out

#- 276 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'Cb06X3TE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 276 'AdminGetDeviceBanV4' test.out

#- 277 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'Gm75rPtb' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 277 'AdminUpdateDeviceBanV4' test.out

#- 278 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'j8TAV4TM' \
    --startDate '4sH4joH1' \
    --deviceType 'Eb5OZ7P6' \
    > test.out 2>&1
eval_tap $? 278 'AdminGenerateReportV4' test.out

#- 279 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 279 'AdminGetDeviceTypesV4' test.out

#- 280 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'tT8xEAFv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 280 'AdminGetDeviceBansV4' test.out

#- 281 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'n1sXlohR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 281 'AdminDecryptDeviceV4' test.out

#- 282 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'kPKJ5I3e' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 282 'AdminUnbanDeviceV4' test.out

#- 283 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'jOkBvRXR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 283 'AdminGetUsersByDeviceV4' test.out

#- 284 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 66}' \
    > test.out 2>&1
eval_tap $? 284 'AdminCreateTestUsersV4' test.out

#- 285 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["4u032sQw", "xz9S9djv", "vitPJp7n"]}' \
    > test.out 2>&1
eval_tap $? 285 'AdminBulkCheckValidUserIDV4' test.out

#- 286 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'hfkZtClc' \
    --body '{"avatarUrl": "YZrohSiG", "country": "x0NEJkfM", "dateOfBirth": "V8tXnyOH", "displayName": "3O1ud4Xo", "languageTag": "Fp9srXLd", "userName": "PHPpooLR"}' \
    > test.out 2>&1
eval_tap $? 286 'AdminUpdateUserV4' test.out

#- 287 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'yUur8NzO' \
    --body '{"code": "a8uetJeo", "emailAddress": "nr26R65Q"}' \
    > test.out 2>&1
eval_tap $? 287 'AdminUpdateUserEmailAddressV4' test.out

#- 288 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'kChRmhf1' \
    > test.out 2>&1
eval_tap $? 288 'AdminDisableUserMFAV4' test.out

#- 289 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'QAeOrSXk' \
    > test.out 2>&1
eval_tap $? 289 'AdminListUserRolesV4' test.out

#- 290 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'CNwqRQBD' \
    --body '{"assignedNamespaces": ["Mz9U2eUE", "RgcIllFY", "3UviNywU"], "roleId": "fm4HDgd0"}' \
    > test.out 2>&1
eval_tap $? 290 'AdminUpdateUserRoleV4' test.out

#- 291 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'M2F974HP' \
    --body '{"assignedNamespaces": ["a7ef2BgX", "epfzc3Mz", "Nemtei1d"], "roleId": "toIyXaVj"}' \
    > test.out 2>&1
eval_tap $? 291 'AdminAddUserRoleV4' test.out

#- 292 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'LvwmB9Ui' \
    --body '{"assignedNamespaces": ["OBgBm6v4", "qXe3R34c", "yyeKm1kC"], "roleId": "QW514qvn"}' \
    > test.out 2>&1
eval_tap $? 292 'AdminRemoveUserRoleV4' test.out

#- 293 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'false' \
    --limit '97' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 293 'AdminGetRolesV4' test.out

#- 294 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "ATvcxlMs"}' \
    > test.out 2>&1
eval_tap $? 294 'AdminCreateRoleV4' test.out

#- 295 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'XXKnUrIZ' \
    > test.out 2>&1
eval_tap $? 295 'AdminGetRoleV4' test.out

#- 296 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'LjlMR0uJ' \
    > test.out 2>&1
eval_tap $? 296 'AdminDeleteRoleV4' test.out

#- 297 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'IEefSKgu' \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "MCsC6tZ8"}' \
    > test.out 2>&1
eval_tap $? 297 'AdminUpdateRoleV4' test.out

#- 298 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'sQiX6Xno' \
    --body '{"permissions": [{"action": 51, "resource": "S6XIR3Yg", "schedAction": 78, "schedCron": "qLodTQ1b", "schedRange": ["Qh5w4jj4", "bXxMyG7f", "5pIyHFxi"]}, {"action": 83, "resource": "FIDv5mv0", "schedAction": 78, "schedCron": "uKvm2VXo", "schedRange": ["CJi1QrOs", "AtXD8Cd0", "WUyxzefh"]}, {"action": 22, "resource": "NDrW3Fax", "schedAction": 46, "schedCron": "blfcJWKo", "schedRange": ["cXOUgJOz", "U20cdOJR", "rQ0Cg6Kz"]}]}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateRolePermissionsV4' test.out

#- 299 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId '5MYrVRCP' \
    --body '{"permissions": [{"action": 87, "resource": "jpQK3Ep5", "schedAction": 73, "schedCron": "5YTVvUQM", "schedRange": ["tYcHTJzn", "pA8HLRf3", "gSvCSNDW"]}, {"action": 32, "resource": "FKkYs4vQ", "schedAction": 53, "schedCron": "RnnZradu", "schedRange": ["L6OyKDjV", "Gfa1KwvC", "XwbaWvji"]}, {"action": 46, "resource": "KiQwTF0W", "schedAction": 39, "schedCron": "1zYx3EM7", "schedRange": ["gsDqDZGV", "n9L0VRSK", "Fq2TsyQf"]}]}' \
    > test.out 2>&1
eval_tap $? 299 'AdminAddRolePermissionsV4' test.out

#- 300 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'CkRWA2Xh' \
    --body '["aHbZygqM", "VHUyKk0w", "6BznmBI1"]' \
    > test.out 2>&1
eval_tap $? 300 'AdminDeleteRolePermissionsV4' test.out

#- 301 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId '7SKnNK2w' \
    --after 'rcbwbT6H' \
    --before 'DNLpz9AR' \
    --limit '39' \
    > test.out 2>&1
eval_tap $? 301 'AdminListAssignedUsersV4' test.out

#- 302 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'jtOVXOzh' \
    --body '{"assignedNamespaces": ["Som1duwI", "cfSCPxBQ", "bnvfxlnK"], "namespace": "dUjkY911", "userId": "W8MoCFgG"}' \
    > test.out 2>&1
eval_tap $? 302 'AdminAssignUserToRoleV4' test.out

#- 303 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'FkWcJhTU' \
    --body '{"namespace": "bsNib9RV", "userId": "otTtF62o"}' \
    > test.out 2>&1
eval_tap $? 303 'AdminRevokeUserFromRoleV4' test.out

#- 304 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "FyqIJPyI", "country": "3R3mP5yR", "dateOfBirth": "TIj7Msv6", "displayName": "IZwGIqhA", "languageTag": "XasEMmGU", "userName": "I5QBfC9Q"}' \
    > test.out 2>&1
eval_tap $? 304 'AdminUpdateMyUserV4' test.out

#- 305 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 305 'AdminDisableMyAuthenticatorV4' test.out

#- 306 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'rGOIn9C3' \
    > test.out 2>&1
eval_tap $? 306 'AdminEnableMyAuthenticatorV4' test.out

#- 307 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 307 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 308 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 308 'AdminGetMyBackupCodesV4' test.out

#- 309 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 309 'AdminGenerateMyBackupCodesV4' test.out

#- 310 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 310 'AdminDisableMyBackupCodesV4' test.out

#- 311 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 311 'AdminDownloadMyBackupCodesV4' test.out

#- 312 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 312 'AdminEnableMyBackupCodesV4' test.out

#- 313 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 313 'AdminGetMyEnabledFactorsV4' test.out

#- 314 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'rnltT06g' \
    > test.out 2>&1
eval_tap $? 314 'AdminMakeFactorMyDefaultV4' test.out

#- 315 AdminInviteUserV4
samples/cli/sample-apps Iam adminInviteUserV4 \
    --body '{"assignedNamespaces": ["aAuabmpK", "iHCjPiTa", "QDYHSBqB"], "emailAddresses": ["1xcWxPSB", "lv7IKHAp", "c6IyjMYv"], "isAdmin": false, "roleId": "JE63MAjT"}' \
    > test.out 2>&1
eval_tap $? 315 'AdminInviteUserV4' test.out

#- 316 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "sd2ZUeSt", "policyId": "ejjT7Eie", "policyVersionId": "6bhbRZwn"}, {"isAccepted": false, "localizedPolicyVersionId": "rgIUpLxs", "policyId": "iUZ0keu9", "policyVersionId": "othxl6TD"}, {"isAccepted": true, "localizedPolicyVersionId": "rzQE10Vr", "policyId": "gY7LSeAW", "policyVersionId": "6Bsdcdqc"}], "authType": "EMAILPASSWD", "country": "OtMz4a0h", "dateOfBirth": "1scBHvgn", "displayName": "y2Z4lWp7", "emailAddress": "lCx3hVBb", "password": "rWDwmsUY", "passwordMD5Sum": "8E5i7eBU", "username": "Z67QjcHH", "verified": false}' \
    > test.out 2>&1
eval_tap $? 316 'PublicCreateTestUserV4' test.out

#- 317 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "FxHlZOXL", "policyId": "KWVpBW0v", "policyVersionId": "IgoIYDlq"}, {"isAccepted": true, "localizedPolicyVersionId": "ZUS6pgoV", "policyId": "YVAth4oz", "policyVersionId": "dooj8x6w"}, {"isAccepted": false, "localizedPolicyVersionId": "RDhq5dYD", "policyId": "D0Qnbuca", "policyVersionId": "VucMNRxN"}], "authType": "EMAILPASSWD", "code": "IaEpzmRM", "country": "kmNYVKO4", "dateOfBirth": "7yCnJrRC", "displayName": "r2gRb4y1", "emailAddress": "LU0tJ9SB", "password": "OvjM52Ou", "passwordMD5Sum": "4OAvpYuA", "reachMinimumAge": true, "username": "n9fxx0Ao"}' \
    > test.out 2>&1
eval_tap $? 317 'PublicCreateUserV4' test.out

#- 318 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'nPh2XRSM' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "nO8Knt5b", "policyId": "mdgDFR1z", "policyVersionId": "UgmK9imZ"}, {"isAccepted": false, "localizedPolicyVersionId": "p9IxmHxA", "policyId": "YKTGmVaE", "policyVersionId": "Kc3y6YYa"}, {"isAccepted": true, "localizedPolicyVersionId": "Jls7tnR7", "policyId": "Hx6m6Ho3", "policyVersionId": "jL63miqO"}], "authType": "EMAILPASSWD", "country": "E6R714BS", "dateOfBirth": "vvHiYPxB", "displayName": "ipZ9bndr", "password": "b739pkcx", "reachMinimumAge": true, "username": "PTQ6R6XN"}' \
    > test.out 2>&1
eval_tap $? 318 'CreateUserFromInvitationV4' test.out

#- 319 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "QcyOztOX", "country": "CU9L8EXP", "dateOfBirth": "PrmHCla5", "displayName": "y0aICPlb", "languageTag": "1X4BjuJ6", "userName": "yXuIKaor"}' \
    > test.out 2>&1
eval_tap $? 319 'PublicUpdateUserV4' test.out

#- 320 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "GDCsTwt2", "emailAddress": "HLMiC1lt"}' \
    > test.out 2>&1
eval_tap $? 320 'PublicUpdateUserEmailAddressV4' test.out

#- 321 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "En80dR7O", "country": "lv3WT1EI", "dateOfBirth": "hZ3UOOfz", "displayName": "6RdeOeNq", "emailAddress": "VzZoUZXp", "password": "rUvD7gUZ", "reachMinimumAge": true, "username": "lQWQZTI2", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 321 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 322 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "goi7Bi9f", "password": "JeqQARUa", "username": "JVHFljqB"}' \
    > test.out 2>&1
eval_tap $? 322 'PublicUpgradeHeadlessAccountV4' test.out

#- 323 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 323 'PublicDisableMyAuthenticatorV4' test.out

#- 324 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'tSdNz1FB' \
    > test.out 2>&1
eval_tap $? 324 'PublicEnableMyAuthenticatorV4' test.out

#- 325 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 325 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 326 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 326 'PublicGetMyBackupCodesV4' test.out

#- 327 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 327 'PublicGenerateMyBackupCodesV4' test.out

#- 328 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 328 'PublicDisableMyBackupCodesV4' test.out

#- 329 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 329 'PublicDownloadMyBackupCodesV4' test.out

#- 330 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 330 'PublicEnableMyBackupCodesV4' test.out

#- 331 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 331 'PublicRemoveTrustedDeviceV4' test.out

#- 332 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 332 'PublicGetMyEnabledFactorsV4' test.out

#- 333 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'vlmpjKvt' \
    > test.out 2>&1
eval_tap $? 333 'PublicMakeFactorMyDefaultV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE