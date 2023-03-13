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
echo "1..348"

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
    --body '[{"field": "EAxcVpFr", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "blockedWord": ["IRdH9UzV", "RiXbqlAw", "7r6W2ktQ"], "description": [{"language": "G0h5JAav", "message": ["5kRa62Wo", "pBJHPtcD", "s8bBZLCX"]}, {"language": "Lx8bbgor", "message": ["QeFbQ1g7", "qbPngUNB", "1vRodwpz"]}, {"language": "S6DaDpv8", "message": ["N7ZQVqGj", "6oDLjWjk", "Y1aXlFcD"]}], "isCustomRegex": true, "letterCase": "78NY4YkH", "maxLength": 37, "maxRepeatingAlphaNum": 40, "maxRepeatingSpecialCharacter": 4, "minCharType": 100, "minLength": 27, "regex": "EIC32ogW", "specialCharacterLocation": "7olvbTgr", "specialCharacters": ["hRTcPiSu", "L0Sly6XM", "4OI18mAQ"]}}, {"field": "LnzjMf8G", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "blockedWord": ["jJW2OQNO", "s1PXhT5F", "vdiRilZ7"], "description": [{"language": "oFgx4c8O", "message": ["umKtPDKJ", "DXn7Z4U6", "8su8Xfql"]}, {"language": "qNiTvB6S", "message": ["dAdIhUDr", "woZ5Mecd", "Ki5r6QEa"]}, {"language": "1ysLEzth", "message": ["6mXhzkzW", "kFeZSoEA", "cBdW19m4"]}], "isCustomRegex": false, "letterCase": "7CkyF6C7", "maxLength": 7, "maxRepeatingAlphaNum": 96, "maxRepeatingSpecialCharacter": 41, "minCharType": 26, "minLength": 42, "regex": "iTqpyhPF", "specialCharacterLocation": "dxLzFQN0", "specialCharacters": ["5MYzYiKW", "e5dNRljv", "7IPrDQQR"]}}, {"field": "gat0Sevk", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "blockedWord": ["uI9a2I9u", "6Vpbsx5w", "8hqUI06U"], "description": [{"language": "pOXGSLmC", "message": ["VuHOPlLl", "kvR8sKgn", "uRkgghGo"]}, {"language": "YupD391C", "message": ["2qtPYoka", "hFjkQsfC", "aTmt1d67"]}, {"language": "FXGk2s9Q", "message": ["0mPVo3tw", "u0MesTCf", "9x4rt69l"]}], "isCustomRegex": false, "letterCase": "aRlxfcjH", "maxLength": 11, "maxRepeatingAlphaNum": 85, "maxRepeatingSpecialCharacter": 51, "minCharType": 0, "minLength": 21, "regex": "MbwL6IY6", "specialCharacterLocation": "9z1UaLqY", "specialCharacters": ["SYWytLPz", "iZMdjxcB", "ZufQxGiH"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'PllG4cYE' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'zfTD1ZBm' \
    --before '3MqHcUmL' \
    --limit '70' \
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
    --body '{"ageRestriction": 69, "enable": false}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'trkmu0hp' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 60}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'DWVAla2l' \
    --limit '55' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "YNtIuS5S", "comment": "5XUdjsoq", "endDate": "wGyzzWi9", "reason": "gwQYv7t1", "skipNotif": false, "userIds": ["7Vk6Jt4Y", "mos9Jcdo", "s4fYcTVU"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "6RBt0zYo", "userId": "McHyCUEX"}, {"banId": "lAvxJMda", "userId": "lwSyliWM"}, {"banId": "NW5NyLu0", "userId": "M3VHh2EI"}]}' \
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
    --clientId '8JlDbPWb' \
    --clientName 'Q6Q9lNmq' \
    --clientType 'RBaAkLnv' \
    --limit '48' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["kT1X68cm", "Dc3fxU8M", "yKrQpM4h"], "baseUri": "kkK6KKXN", "clientId": "B3Gv0Iqm", "clientName": "F51TkhjY", "clientPermissions": [{"action": 27, "resource": "4YUDjasW", "schedAction": 70, "schedCron": "a3bMrXsD", "schedRange": ["r6kILsSS", "yDdmykmo", "PYgc2L4j"]}, {"action": 22, "resource": "oCMNqq98", "schedAction": 92, "schedCron": "pf4IxjUk", "schedRange": ["l535X3at", "eEKDpADz", "1x3poD3Q"]}, {"action": 14, "resource": "32e8c5cs", "schedAction": 92, "schedCron": "MzH7Qm8b", "schedRange": ["wbmXgdAP", "h1EThG96", "gAFKK2WD"]}], "clientPlatform": "gCcxvONZ", "deletable": false, "description": "ThuwjRHp", "namespace": "KKTlmVr9", "oauthAccessTokenExpiration": 42, "oauthAccessTokenExpirationTimeUnit": "6pf3vneS", "oauthClientType": "D2Tb3g7m", "oauthRefreshTokenExpiration": 92, "oauthRefreshTokenExpirationTimeUnit": "tu7LQREN", "parentNamespace": "jEEztx1W", "redirectUri": "sYSiZqan", "scopes": ["0nSBJroa", "v91GXlvP", "G6bFYReV"], "secret": "HQipcCx9", "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'w5D2L7vI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'YhGGSyEW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId '4ZJJ42d3' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["PBddN8S4", "8l9lyNAp", "flxqMrj3"], "baseUri": "oZk03QXc", "clientName": "KMDYDDxH", "clientPermissions": [{"action": 92, "resource": "OMlNFSrU", "schedAction": 63, "schedCron": "8f7Gc26S", "schedRange": ["aiGVkydw", "YWQG26yU", "ZNmTBcvr"]}, {"action": 3, "resource": "cSDG8aMV", "schedAction": 67, "schedCron": "yPLtI8il", "schedRange": ["byDPUIj8", "8cekdqCt", "81P1ktfI"]}, {"action": 29, "resource": "meIP6rOv", "schedAction": 61, "schedCron": "cJcHm3SZ", "schedRange": ["LxoRDFuu", "uySj29a9", "LJE8HoRS"]}], "clientPlatform": "1X2PFAAM", "deletable": true, "description": "CmBUqg2S", "namespace": "CnqntX9y", "oauthAccessTokenExpiration": 60, "oauthAccessTokenExpirationTimeUnit": "aZSWMiVi", "oauthRefreshTokenExpiration": 76, "oauthRefreshTokenExpirationTimeUnit": "0sG6vxkf", "redirectUri": "UcmqRRbc", "scopes": ["eJ5i0EeD", "xOgBnhhq", "ElIaDml4"], "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'wdNFLTm5' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 94, "resource": "at2vQR3b"}, {"action": 16, "resource": "fH2rtOa4"}, {"action": 62, "resource": "RE2w1yEk"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'Lgh3tIYt' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 40, "resource": "SqYUTLDx"}, {"action": 78, "resource": "gIiDandp"}, {"action": 67, "resource": "8y2wNhmw"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '29' \
    --clientId 'h5eC3IHe' \
    --namespace $AB_NAMESPACE \
    --resource 'HSKLCa3x' \
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
    --limit '36' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 130 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 131 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'eNDUWehw' \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'H3q31A80' \
    --body '{"ACSURL": "6DJgas4b", "AWSCognitoRegion": "6z3LNUj7", "AWSCognitoUserPool": "fdgLA84Z", "AllowedClients": ["8YYk6QEg", "JjBbEDoN", "f3n0hEoR"], "AppId": "CAcf80zf", "AuthorizationEndpoint": "FyabWAgI", "ClientId": "UXiI07A6", "Environment": "8eaqC2J9", "FederationMetadataURL": "jyEW6GLb", "GenericOauthFlow": false, "IsActive": false, "Issuer": "NaKDUL3s", "JWKSEndpoint": "a13lk1dQ", "KeyID": "BHO86IlB", "NetflixCertificates": {"encryptedPrivateKey": "hnetU4Rw", "encryptedPrivateKeyName": "TqUXlTDB", "publicCertificate": "zOuYsaZA", "publicCertificateName": "2yyd4mbq", "rootCertificate": "oOfADMMA", "rootCertificateName": "XFaY9eKa"}, "OrganizationId": "699bRVhy", "PlatformName": "aKwwrAP2", "RedirectUri": "aMlu7Wtj", "RegisteredDomains": [{"affectedClientIDs": ["CtoYetOO", "847g8Oud", "OfjnCuHZ"], "domain": "3c46IjGa", "namespaces": ["23YvYmmD", "g7VYPXIu", "vUYTZBRu"], "roleId": "jIUE1Tq5"}, {"affectedClientIDs": ["jyAZvkRC", "MNFIurjh", "2imdb4rb"], "domain": "kXj0ZwsV", "namespaces": ["C0gL97ZV", "JSPqJiwv", "1qlYB1RS"], "roleId": "Ks6gQxC3"}, {"affectedClientIDs": ["Gb7S0o4z", "GYY7KQI1", "AeFgPqaO"], "domain": "kvo1aolB", "namespaces": ["4lkKB4EY", "OkQ1jMD3", "cym8xIfk"], "roleId": "OVW2grRE"}], "Secret": "OLx0KOww", "TeamID": "3HICQLfl", "TokenAuthenticationType": "7MUBG7qt", "TokenClaimsMapping": {"Pu64yAtU": "RKLRkb73", "8HGS6rDg": "MdIIlhS1", "fSiM9331": "m7Ta1PsK"}, "TokenEndpoint": "c50Kv6ec", "UserInfoEndpoint": "nEevcAx2", "UserInfoHTTPMethod": "K2zkRenm", "scopes": ["PZnGBt4P", "7WnbdSJt", "jX7ZshZy"]}' \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Zl5x4bRX' \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'BHUTrDzZ' \
    --body '{"ACSURL": "SKscfOcY", "AWSCognitoRegion": "u3dpCROY", "AWSCognitoUserPool": "qUiGKXVF", "AllowedClients": ["Cmpo6sPw", "VOEDSJsE", "K5QpNhlI"], "AppId": "2iS5EpGh", "AuthorizationEndpoint": "hvXYck0u", "ClientId": "pMzUYnb7", "Environment": "6tFkEORV", "FederationMetadataURL": "3bu1bNCt", "GenericOauthFlow": true, "IsActive": true, "Issuer": "0V6Do5sY", "JWKSEndpoint": "adCCFrHH", "KeyID": "C3DpZxkr", "NetflixCertificates": {"encryptedPrivateKey": "QDXuNFvi", "encryptedPrivateKeyName": "Marv8mnf", "publicCertificate": "HK8CCmE2", "publicCertificateName": "lPnsbD3S", "rootCertificate": "GEdlwuUc", "rootCertificateName": "cE536ugB"}, "OrganizationId": "p3HBvepn", "PlatformName": "DCjgyJlX", "RedirectUri": "e36mgWjL", "RegisteredDomains": [{"affectedClientIDs": ["fFmteue9", "nzJ6fH24", "T805tVg8"], "domain": "JqU0jZpj", "namespaces": ["vsugAOS7", "u8RiWyer", "CSa8SRgw"], "roleId": "sAj1ik1j"}, {"affectedClientIDs": ["glaDXTvK", "CWwNTAhd", "2wrS0uPd"], "domain": "jhdinpng", "namespaces": ["5BLy8wbh", "MssAHjap", "IkY9Rf4w"], "roleId": "P57dBZNR"}, {"affectedClientIDs": ["88YbCtmK", "y8M9zVrj", "fGXZnqAQ"], "domain": "UoY1GjlI", "namespaces": ["Ik0iKoTT", "S1j02o7J", "jTXAQN0q"], "roleId": "dskdQV0T"}], "Secret": "qI8EFnmD", "TeamID": "bxIxi4YK", "TokenAuthenticationType": "lONk2Q5Y", "TokenClaimsMapping": {"4Jvaizwi": "ilatuUjj", "t9lIMGql": "5ElEa9EI", "IlGcHB3C": "fR3ncDlw"}, "TokenEndpoint": "i3v3MFFJ", "UserInfoEndpoint": "1KesKoEL", "UserInfoHTTPMethod": "CpobBEG8", "scopes": ["X645xpdX", "pai0rYaT", "5hOPjaf3"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'H0tYighU' \
    --body '{"affectedClientIDs": ["0VUfcYHJ", "bBfAKSiP", "W3VgsZXi"], "assignedNamespaces": ["R1DJ7HVW", "qMkNSawQ", "UWDFJvJB"], "domain": "Wic7UkBe", "roleId": "IXuqDuAX"}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'I66bQ71w' \
    --body '{"domain": "0deoV9Lx"}' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '5RDA1l2X' \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'crciYNEz' \
    --body '{"acsUrl": "vSZIPkhS", "apiKey": "gORcz5S5", "appId": "BvmgBLxh", "federationMetadataUrl": "4ijFnE3T", "isActive": false, "redirectUri": "Q7M6Nzy1", "secret": "adnSKOLF", "ssoUrl": "Kx1dX4Lu"}' \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'WJu3pDMU' \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'AeeZ97SB' \
    --body '{"acsUrl": "ROPYuG6X", "apiKey": "qP6oo7G7", "appId": "3zdxTgOf", "federationMetadataUrl": "nwIdlNa2", "isActive": false, "redirectUri": "OJhtafxM", "secret": "SJlHeb34", "ssoUrl": "sZKHcl5L"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'LLOexL4f' \
    --platformUserId 'ZvWtND2t' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'cBFpX8lN' \
    --after '40' \
    --before '72' \
    --limit '64' \
    > test.out 2>&1
eval_tap $? 142 'GetAdminUsersByRoleIdV3' test.out

#- 143 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'Cf2XJVrl' \
    > test.out 2>&1
eval_tap $? 143 'AdminGetUserByEmailAddressV3' test.out

#- 144 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["zqQls1oz", "hLVA3kE8", "jKvgatOE"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["BM70TdlN", "BJYOmpu1", "VCarzBsV"], "isAdmin": true, "namespace": "xnZ5Jrzz", "roles": ["jrcaug6C", "WVG8SWP3", "glU6musw"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '87' \
    --platformUserId 'JnNnN7kA' \
    --platformId 'a7j0riFc' \
    > test.out 2>&1
eval_tap $? 146 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 147 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 147 'AdminListUsersV3' test.out

#- 148 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'NJOIG36I' \
    --endDate '6tRbRcrE' \
    --limit '44' \
    --offset '33' \
    --platformBy 'eMdAdiPK' \
    --platformId 'DUVSC00P' \
    --query 'YeDcaggi' \
    --startDate 'nxnFIna3' \
    > test.out 2>&1
eval_tap $? 148 'AdminSearchUserV3' test.out

#- 149 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["yddcbsPh", "eTH26IUJ", "NvYuGRUv"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetBulkUserByEmailAddressV3' test.out

#- 150 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pZaHCuES' \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByUserIdV3' test.out

#- 151 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'OiIZsMfB' \
    --body '{"avatarUrl": "4ZH3mtgW", "country": "gU4pCAKx", "dateOfBirth": "eE70Caun", "displayName": "QNxot371", "languageTag": "W9G4AvQk", "userName": "qsGnmyo5"}' \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserV3' test.out

#- 152 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'JJTUVmb8' \
    --activeOnly 'false' \
    --after 'EXFTlEME' \
    --before 'sFzYqwgK' \
    --limit '22' \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserBanV3' test.out

#- 153 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Np5nodqp' \
    --body '{"ban": "Lm7FhJBN", "comment": "XzAFdO0K", "endDate": "hqf6kiTd", "reason": "SGv2LFjA", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 153 'AdminBanUserV3' test.out

#- 154 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'CbgsWqFW' \
    --namespace $AB_NAMESPACE \
    --userId 'ZX7kPBom' \
    --body '{"enabled": false, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 154 'AdminUpdateUserBanV3' test.out

#- 155 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'G8phc3n4' \
    --body '{"context": "iLoIllKl", "emailAddress": "pO2pqiXJ", "languageTag": "F3WGRaoQ"}' \
    > test.out 2>&1
eval_tap $? 155 'AdminSendVerificationCodeV3' test.out

#- 156 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'omSJC4Dd' \
    --body '{"Code": "rKF7SUQP", "ContactType": "LG59e0k5", "LanguageTag": "ZtX6wK7P", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 156 'AdminVerifyAccountV3' test.out

#- 157 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'MK6MbGIV' \
    > test.out 2>&1
eval_tap $? 157 'GetUserVerificationCode' test.out

#- 158 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Iu8vvwLc' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserDeletionStatusV3' test.out

#- 159 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '7KY3uVoJ' \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 159 'AdminUpdateUserDeletionStatusV3' test.out

#- 160 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TIMtpgki' \
    --body '{"code": "eDyF97lG", "country": "dMiHKxbW", "dateOfBirth": "CYzo8yO2", "displayName": "KTK9tmmO", "emailAddress": "nYnOpas6", "password": "ghP1y4Zi", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpgradeHeadlessAccountV3' test.out

#- 161 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 's7QBlk44' \
    > test.out 2>&1
eval_tap $? 161 'AdminDeleteUserInformationV3' test.out

#- 162 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Z44B1GZg' \
    --after '0.5816672924988265' \
    --before '0.0988781553357122' \
    --limit '1' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserLoginHistoriesV3' test.out

#- 163 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'uKxaCgcG' \
    --body '{"languageTag": "LuC3brWd", "newPassword": "TYCfHkIy", "oldPassword": "Sok5DiXZ"}' \
    > test.out 2>&1
eval_tap $? 163 'AdminResetPasswordV3' test.out

#- 164 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tLW87rGy' \
    --body '{"Permissions": [{"Action": 37, "Resource": "flIOd6X3", "SchedAction": 43, "SchedCron": "rmsApRA6", "SchedRange": ["HX3RwrKt", "2ecozL0T", "Og54vCE4"]}, {"Action": 24, "Resource": "L5oLF6M4", "SchedAction": 22, "SchedCron": "3nakopAy", "SchedRange": ["welu01nr", "yEJ0NqoT", "ow0qiOiC"]}, {"Action": 19, "Resource": "HgXqKhTP", "SchedAction": 22, "SchedCron": "LkLOsp0L", "SchedRange": ["Z5njN86H", "l8kUXzt6", "bSc6bWvg"]}]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserPermissionV3' test.out

#- 165 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pVyW9dD1' \
    --body '{"Permissions": [{"Action": 22, "Resource": "E2ItBS3K", "SchedAction": 40, "SchedCron": "q2LgkQua", "SchedRange": ["S7RBx3vi", "m02jBOxr", "ZDyvpcLY"]}, {"Action": 83, "Resource": "zPML52fa", "SchedAction": 1, "SchedCron": "Ur9Sk4lq", "SchedRange": ["2faBcAXX", "KlhvyH8p", "aOJtxqMP"]}, {"Action": 31, "Resource": "8aG40Nln", "SchedAction": 5, "SchedCron": "47fH0XrK", "SchedRange": ["EDpEY8Vn", "ocGAjci0", "V3tBf2jn"]}]}' \
    > test.out 2>&1
eval_tap $? 165 'AdminAddUserPermissionsV3' test.out

#- 166 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'HGKXphn5' \
    --body '[{"Action": 64, "Resource": "c9tNLDlj"}, {"Action": 15, "Resource": "SQ4qfAac"}, {"Action": 89, "Resource": "z46OCaGB"}]' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionBulkV3' test.out

#- 167 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '8' \
    --namespace $AB_NAMESPACE \
    --resource 'vjcu2s6w' \
    --userId '3VifnKqm' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionV3' test.out

#- 168 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TSoGH1XE' \
    --after 'fY6QAYn6' \
    --before 'WQ5UBEU1' \
    --limit '86' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserPlatformAccountsV3' test.out

#- 169 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'VFWdsbYu' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetListJusticePlatformAccounts' test.out

#- 170 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'VEGVxYhe' \
    --userId 'R3j5mNZ6' \
    > test.out 2>&1
eval_tap $? 170 'AdminGetUserMapping' test.out

#- 171 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'vwv7K8As' \
    --userId 'vt1j1Rx5' \
    > test.out 2>&1
eval_tap $? 171 'AdminCreateJusticeUser' test.out

#- 172 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '9hesNWy2' \
    --body '{"platformId": "NvZ85DDK", "platformUserId": "DAF8KDsB"}' \
    > test.out 2>&1
eval_tap $? 172 'AdminLinkPlatformAccount' test.out

#- 173 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZOuYQJ03' \
    --userId 'BAHZ7c53' \
    --body '{"platformNamespace": "q7akMpcm"}' \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformUnlinkV3' test.out

#- 174 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'nnx6RVBr' \
    --userId 'op9v7aZK' \
    --ticket '3h65hbN1' \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformLinkV3' test.out

#- 175 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId '5zfQSfQr' \
    --userId 'tfF3TQN0' \
    --platformToken 'OcNDLr36' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 176 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vzohZyjM' \
    --body '["QAg5mPYh", "rLTyU8Oh", "gfY9JQYG"]' \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserRolesV3' test.out

#- 177 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'F4bYXEcE' \
    --body '[{"namespace": "Nx9xZlAc", "roleId": "hob44lON"}, {"namespace": "DDwMvgI0", "roleId": "HlyPR7wZ"}, {"namespace": "NiVsF6xG", "roleId": "2mXEQdbz"}]' \
    > test.out 2>&1
eval_tap $? 177 'AdminSaveUserRoleV3' test.out

#- 178 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'IVy8alnc' \
    --userId 'V7vWgSHd' \
    > test.out 2>&1
eval_tap $? 178 'AdminAddUserRoleV3' test.out

#- 179 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'fo07UctP' \
    --userId 'ErqxyMyO' \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteUserRoleV3' test.out

#- 180 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'K06MqQBE' \
    --body '{"enabled": true, "reason": "teoc8fgv"}' \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateUserStatusV3' test.out

#- 181 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZDDhoO05' \
    > test.out 2>&1
eval_tap $? 181 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 182 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'oKqymxLD' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "1Lcvw6T6"}' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateClientSecretV3' test.out

#- 183 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'mZEiwxxE' \
    --before 'lpMYSWIe' \
    --isWildcard 'true' \
    --limit '19' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRolesV3' test.out

#- 184 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "managers": [{"displayName": "Heh94TSe", "namespace": "nE5hCFkI", "userId": "f5weqZ18"}, {"displayName": "MH57l2Zs", "namespace": "rh90ETtY", "userId": "mGukz3Mn"}, {"displayName": "lrjcHp6B", "namespace": "8Vj7rXFg", "userId": "DnDkdZ9b"}], "members": [{"displayName": "pjb1tdA3", "namespace": "QhjCMW64", "userId": "f4XhIjSo"}, {"displayName": "TB2NMKte", "namespace": "zapPr2QE", "userId": "Px3zTxBG"}, {"displayName": "tEJIYppu", "namespace": "USsKoHw2", "userId": "hyd12uSE"}], "permissions": [{"action": 6, "resource": "BEv3aevq", "schedAction": 67, "schedCron": "iohU1cg4", "schedRange": ["W1IS3Uv1", "BpWoJBaq", "dg2FHcun"]}, {"action": 38, "resource": "6B6XTmSL", "schedAction": 50, "schedCron": "9vqjhbeK", "schedRange": ["2qN8g6x2", "PyYDo5R3", "hLiD5sf5"]}, {"action": 50, "resource": "CslsDd4M", "schedAction": 50, "schedCron": "F5qRIblS", "schedRange": ["7Nz81GRa", "zPAANjfB", "oldFOyqA"]}], "roleName": "2clJ5gEO"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminCreateRoleV3' test.out

#- 185 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'aCgM6Yn6' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleV3' test.out

#- 186 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'RugbNEIp' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteRoleV3' test.out

#- 187 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'GBFUjOn5' \
    --body '{"deletable": false, "isWildcard": true, "roleName": "7k8nbLzv"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateRoleV3' test.out

#- 188 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'tCIW5ynM' \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleAdminStatusV3' test.out

#- 189 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'KquUicAe' \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateAdminRoleStatusV3' test.out

#- 190 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'IVXtoWAX' \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleAdminV3' test.out

#- 191 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'hMlW4tLq' \
    --after 'X7OICf5o' \
    --before 'D1e6oI9F' \
    --limit '26' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRoleManagersV3' test.out

#- 192 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'FG3wSkHK' \
    --body '{"managers": [{"displayName": "ufBdS3ZO", "namespace": "okZB4cXn", "userId": "AXyuGz6L"}, {"displayName": "lxHv8Swy", "namespace": "agYvDJ3w", "userId": "3UNgIGj2"}, {"displayName": "jZtEYT8s", "namespace": "IPSE1XXP", "userId": "zySa0sZo"}]}' \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRoleManagersV3' test.out

#- 193 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'FS6xCOWM' \
    --body '{"managers": [{"displayName": "pyh9pMsQ", "namespace": "gb64ELbz", "userId": "DMwyo4nI"}, {"displayName": "RysQdbuf", "namespace": "XjYnSoIF", "userId": "eouC2m38"}, {"displayName": "kXrDZWlG", "namespace": "VE9sJ4Np", "userId": "UtKp6M9I"}]}' \
    > test.out 2>&1
eval_tap $? 193 'AdminRemoveRoleManagersV3' test.out

#- 194 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId '6nEwnZhs' \
    --after 'jwJeGwaP' \
    --before 'SDMZz95O' \
    --limit '10' \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleMembersV3' test.out

#- 195 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'KiqaZD63' \
    --body '{"members": [{"displayName": "xe5rruJV", "namespace": "fLGea0Zt", "userId": "lzUcuHAX"}, {"displayName": "z0UV31Mf", "namespace": "uGaXsAuG", "userId": "sZaSHevO"}, {"displayName": "0TQNEI3k", "namespace": "fabxJWWS", "userId": "I1ECUo1N"}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddRoleMembersV3' test.out

#- 196 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'PpeFhUzt' \
    --body '{"members": [{"displayName": "XDgB7n4C", "namespace": "97uAPP8P", "userId": "ATLpUpxe"}, {"displayName": "JlsBJT6H", "namespace": "h3OMjAjq", "userId": "2mK8lbSE"}, {"displayName": "Eelxnb5Q", "namespace": "xWG2HFnZ", "userId": "lA6HKWW4"}]}' \
    > test.out 2>&1
eval_tap $? 196 'AdminRemoveRoleMembersV3' test.out

#- 197 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'fI1IQcoB' \
    --body '{"permissions": [{"action": 88, "resource": "CVUrYQue", "schedAction": 93, "schedCron": "4dwmbwFE", "schedRange": ["nAZaWsQJ", "tRYoagRJ", "K5PX9UcO"]}, {"action": 44, "resource": "RT95XhnU", "schedAction": 4, "schedCron": "T2SKseoe", "schedRange": ["8VLie0LB", "a36KNzjf", "005CXNGe"]}, {"action": 15, "resource": "bY97jjYg", "schedAction": 74, "schedCron": "chCbkXX2", "schedRange": ["6uEdCfQa", "MAQuTKfC", "0I2kNjCM"]}]}' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateRolePermissionsV3' test.out

#- 198 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'DtDMrent' \
    --body '{"permissions": [{"action": 12, "resource": "aoMdtRLT", "schedAction": 26, "schedCron": "IeShF9RK", "schedRange": ["b9vvxuJl", "hXbWhbwP", "wToC6knj"]}, {"action": 97, "resource": "Jg46IewO", "schedAction": 73, "schedCron": "E2AkCh3Q", "schedRange": ["IZsUf8lG", "FXcmwTER", "HclOdxIw"]}, {"action": 34, "resource": "WkLob9gK", "schedAction": 77, "schedCron": "db8Otq6j", "schedRange": ["1mqUav7k", "05HAQltn", "SojV4jT6"]}]}' \
    > test.out 2>&1
eval_tap $? 198 'AdminAddRolePermissionsV3' test.out

#- 199 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId '5yclX2Ft' \
    --body '["Az0vJjFI", "YWOaNdsi", "mmkW2miH"]' \
    > test.out 2>&1
eval_tap $? 199 'AdminDeleteRolePermissionsV3' test.out

#- 200 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '47' \
    --resource '3Hht1Swq' \
    --roleId 'TsKKKo37' \
    > test.out 2>&1
eval_tap $? 200 'AdminDeleteRolePermissionV3' test.out

#- 201 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 201 'AdminGetMyUserV3' test.out

#- 202 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'NHDOQe91' \
    --extendExp 'true' \
    --redirectUri 's3ztUIV0' \
    --password 'dS6hIH9c' \
    --requestId '4Vfkyrwp' \
    --userName 'uXxbaERb' \
    > test.out 2>&1
eval_tap $? 202 'UserAuthenticationV3' test.out

#- 203 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId '1EQrYmkP' \
    --linkingToken 'KTPOlhTt' \
    --password 'SiZNCxuo' \
    --username 'gFteTHJe' \
    > test.out 2>&1
eval_tap $? 203 'AuthenticationWithPlatformLinkV3' test.out

#- 204 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'true' \
    --linkingToken 'BhSSQkQD' \
    > test.out 2>&1
eval_tap $? 204 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 205 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId '6WmOt6D7' \
    > test.out 2>&1
eval_tap $? 205 'RequestOneTimeLinkingCodeV3' test.out

#- 206 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'ufFVTOhv' \
    > test.out 2>&1
eval_tap $? 206 'ValidateOneTimeLinkingCodeV3' test.out

#- 207 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --clientId 'QpfbBke8' \
    --oneTimeLinkCode 'aEdd36xj' \
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
    --clientId '6wySoltD' \
    > test.out 2>&1
eval_tap $? 210 'RequestGameTokenCodeResponseV3' test.out

#- 211 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'xsbzxrla' \
    --userId 'KEfkoYjY' \
    > test.out 2>&1
eval_tap $? 211 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 212 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '2o6ouRW9' \
    > test.out 2>&1
eval_tap $? 212 'RevokeUserV3' test.out

#- 213 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'UtNquwC3' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'umrIz4Nh' \
    --redirectUri 'GztZpr4U' \
    --scope '4fwQIiLX' \
    --state 'gmRasvjO' \
    --targetAuthPage '4lj8m3XE' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId '8qwU1cTu' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 213 'AuthorizeV3' test.out

#- 214 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'PB5S3DvP' \
    > test.out 2>&1
eval_tap $? 214 'TokenIntrospectionV3' test.out

#- 215 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 215 'GetJWKSV3' test.out

#- 216 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'RCzBrVUx' \
    --factor 'mDOj3cvR' \
    --mfaToken 'FaTC11W0' \
    > test.out 2>&1
eval_tap $? 216 'SendMFAAuthenticationCode' test.out

#- 217 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'TGTCm4fZ' \
    --mfaToken 'Wuk6pQxD' \
    > test.out 2>&1
eval_tap $? 217 'Change2faMethod' test.out

#- 218 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'QpKqxLGe' \
    --factor 'Mvr9Tsvc' \
    --mfaToken 'MQ7dBsaI' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 218 'Verify2faCode' test.out

#- 219 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'uFRYNn3S' \
    --userId 'HiWxF0Yb' \
    > test.out 2>&1
eval_tap $? 219 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'uU5ar5qT' \
    --clientId 'LWUCy0Af' \
    --redirectUri 'gc050XIZ' \
    --requestId 'RW491e94' \
    > test.out 2>&1
eval_tap $? 220 'AuthCodeRequestV3' test.out

#- 221 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'mQjVOOBn' \
    --clientId 'IWhunElq' \
    --createHeadless 'false' \
    --deviceId 'N8WXBPp1' \
    --macAddress '7PAewqSm' \
    --platformToken '5x3B4t7W' \
    > test.out 2>&1
eval_tap $? 221 'PlatformTokenGrantV3' test.out

#- 222 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 222 'GetRevocationListV3' test.out

#- 223 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'Qnp8jXZe' \
    > test.out 2>&1
eval_tap $? 223 'TokenRevocationV3' test.out

#- 224 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --clientId 'dgt5cyNe' \
    --code '27HLtwtV' \
    --codeVerifier 'OaxgP6Jb' \
    --extendExp 'false' \
    --password 'VTKuAQTG' \
    --redirectUri 'h5BxjWOo' \
    --refreshToken 'zGoDtsUu' \
    --username 'Yo5p8ED5' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 224 'TokenGrantV3' test.out

#- 225 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'ZAufwNa8' \
    > test.out 2>&1
eval_tap $? 225 'VerifyTokenV3' test.out

#- 226 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'lzfjv9oY' \
    --code 'MXMjlVHY' \
    --error '1AHwF3vG' \
    --openidAssocHandle 'oav7MK0P' \
    --openidClaimedId 'cLnEkcok' \
    --openidIdentity 'KwcQ0baD' \
    --openidMode 'T9OyJ2h2' \
    --openidNs '3GUS2amU' \
    --openidOpEndpoint '7syGlElX' \
    --openidResponseNonce 'dEAOrVSn' \
    --openidReturnTo 'LocLVVYa' \
    --openidSig 'mQc4wcG5' \
    --openidSigned 'nDBLJoJH' \
    --state 'biQ5duE5' \
    > test.out 2>&1
eval_tap $? 226 'PlatformAuthenticationV3' test.out

#- 227 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'MuqIg0Cz' \
    > test.out 2>&1
eval_tap $? 227 'PublicGetInputValidations' test.out

#- 228 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'kguwuJCW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 228 'PublicGetCountryAgeRestrictionV3' test.out

#- 229 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 229 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 230 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId '7EEFB67A' \
    > test.out 2>&1
eval_tap $? 230 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 231 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ODbi9Bzu' \
    --body '{"platformUserIds": ["pBsFpYc7", "7GtRUcCF", "eY5g4XgB"]}' \
    > test.out 2>&1
eval_tap $? 231 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 232 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'sbfzqxBP' \
    --platformUserId 'Ne8ae1Il' \
    > test.out 2>&1
eval_tap $? 232 'PublicGetUserByPlatformUserIDV3' test.out

#- 233 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId '4aAtEbu4' \
    > test.out 2>&1
eval_tap $? 233 'PublicGetAsyncStatus' test.out

#- 234 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'IjGdqthR' \
    --limit '49' \
    --offset '63' \
    --query 'TjQ7gkZE' \
    > test.out 2>&1
eval_tap $? 234 'PublicSearchUserV3' test.out

#- 235 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "Y8rG0q0Q", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "kH4OotKw", "policyId": "G3UC6XCn", "policyVersionId": "nZxF8CmQ"}, {"isAccepted": true, "localizedPolicyVersionId": "JCJjfk2T", "policyId": "Uvn95FhO", "policyVersionId": "7VW3mbDV"}, {"isAccepted": true, "localizedPolicyVersionId": "SKWM1eym", "policyId": "5ydC6p25", "policyVersionId": "xCWTqUOY"}], "authType": "ZENJ1QHZ", "code": "QxPRXH7u", "country": "xBJEECQE", "dateOfBirth": "1li3Bg7J", "displayName": "xc9pUnZm", "emailAddress": "vhidwCkZ", "password": "wqjYLfTi", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 235 'PublicCreateUserV3' test.out

#- 236 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'CmTC34jx' \
    --query 'W4pIDwdq' \
    > test.out 2>&1
eval_tap $? 236 'CheckUserAvailability' test.out

#- 237 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["XpmRmut9", "H9XyWI8b", "p8fQxRuX"]}' \
    > test.out 2>&1
eval_tap $? 237 'PublicBulkGetUsers' test.out

#- 238 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "91uYmtrH", "languageTag": "JbEGTUj7"}' \
    > test.out 2>&1
eval_tap $? 238 'PublicSendRegistrationCode' test.out

#- 239 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "YjERL1rE", "emailAddress": "QG02zccA"}' \
    > test.out 2>&1
eval_tap $? 239 'PublicVerifyRegistrationCode' test.out

#- 240 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "8wvLsWUN", "languageTag": "d6lPKvqD"}' \
    > test.out 2>&1
eval_tap $? 240 'PublicForgotPasswordV3' test.out

#- 241 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'ejvqklTS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 241 'GetAdminInvitationV3' test.out

#- 242 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'vDwuOrP9' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "aGTVX3Bb", "policyId": "7jlz5IfH", "policyVersionId": "gKjI9mwJ"}, {"isAccepted": true, "localizedPolicyVersionId": "E7wY76Px", "policyId": "Lv9HBEUe", "policyVersionId": "89AwEw1H"}, {"isAccepted": false, "localizedPolicyVersionId": "UtV9GJ27", "policyId": "9GDbLNwj", "policyVersionId": "m3FK0nnX"}], "authType": "EMAILPASSWD", "country": "CcI8y3Cz", "dateOfBirth": "0YqCKUh5", "displayName": "RD9vNAp4", "password": "jinFpnQ5", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 242 'CreateUserFromInvitationV3' test.out

#- 243 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "vfAHS0Vg", "country": "Lu11A3HT", "dateOfBirth": "ovFi4tPA", "displayName": "GfleyCA6", "languageTag": "jEtcqsnz", "userName": "oVILjkwW"}' \
    > test.out 2>&1
eval_tap $? 243 'UpdateUserV3' test.out

#- 244 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "61duF87a", "country": "Uyrdt4XS", "dateOfBirth": "pWBAetsa", "displayName": "nzqP8oxf", "languageTag": "rtbECD1C", "userName": "YPwaiBAx"}' \
    > test.out 2>&1
eval_tap $? 244 'PublicPartialUpdateUserV3' test.out

#- 245 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "fYL8Avt7", "emailAddress": "0ZUT2fSk", "languageTag": "3LL0calq"}' \
    > test.out 2>&1
eval_tap $? 245 'PublicSendVerificationCodeV3' test.out

#- 246 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "xEewuGS4", "contactType": "69k2hG0W", "languageTag": "Kt4sUman", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 246 'PublicUserVerificationV3' test.out

#- 247 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "CrRb9gUC", "country": "eVz7fWbZ", "dateOfBirth": "IdhevfZv", "displayName": "yV7Acodc", "emailAddress": "ZwKjYDdm", "password": "JOlzwm9S", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 247 'PublicUpgradeHeadlessAccountV3' test.out

#- 248 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "MgKAOG5i", "password": "DcCR5PbC"}' \
    > test.out 2>&1
eval_tap $? 248 'PublicVerifyHeadlessAccountV3' test.out

#- 249 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "vDLil8wj", "newPassword": "9cKM3Ar6", "oldPassword": "MF35hCER"}' \
    > test.out 2>&1
eval_tap $? 249 'PublicUpdatePasswordV3' test.out

#- 250 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '4nGmWGgT' \
    > test.out 2>&1
eval_tap $? 250 'PublicCreateJusticeUser' test.out

#- 251 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'JfHlJl4t' \
    --redirectUri 'HGa4XfZc' \
    --ticket 'd9CVnGqM' \
    > test.out 2>&1
eval_tap $? 251 'PublicPlatformLinkV3' test.out

#- 252 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'X9FieeEs' \
    --body '{"platformNamespace": "sWEUl07b"}' \
    > test.out 2>&1
eval_tap $? 252 'PublicPlatformUnlinkV3' test.out

#- 253 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'hwntCVqi' \
    > test.out 2>&1
eval_tap $? 253 'PublicPlatformUnlinkAllV3' test.out

#- 254 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'YOJf5KwM' \
    --ticket 'ZQjzvjSo' \
    > test.out 2>&1
eval_tap $? 254 'PublicForcePlatformLinkV3' test.out

#- 255 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'zv6CTRDl' \
    --clientId '0zp9CzHF' \
    --redirectUri 'winkBNi4' \
    > test.out 2>&1
eval_tap $? 255 'PublicWebLinkPlatform' test.out

#- 256 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'gvqgl6TZ' \
    --state '9TGVPmv3' \
    > test.out 2>&1
eval_tap $? 256 'PublicWebLinkPlatformEstablish' test.out

#- 257 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "4h6T7Esu", "emailAddress": "fmfxKYB4", "newPassword": "LM6H6QXm"}' \
    > test.out 2>&1
eval_tap $? 257 'ResetPasswordV3' test.out

#- 258 PublicGetUserByUserIdV3
samples/cli/sample-apps Iam publicGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pZ9X3fUS' \
    > test.out 2>&1
eval_tap $? 258 'PublicGetUserByUserIdV3' test.out

#- 259 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'R1l9xLPB' \
    --activeOnly 'true' \
    --after 'XnlUnqxT' \
    --before '1WsRNMZc' \
    --limit '53' \
    > test.out 2>&1
eval_tap $? 259 'PublicGetUserBanHistoryV3' test.out

#- 260 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PhMDFzjH' \
    > test.out 2>&1
eval_tap $? 260 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 261 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Z3sIhzOx' \
    > test.out 2>&1
eval_tap $? 261 'PublicGetUserInformationV3' test.out

#- 262 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '2CXKlvIo' \
    --after '0.19977214813642663' \
    --before '0.7506616966461533' \
    --limit '50' \
    > test.out 2>&1
eval_tap $? 262 'PublicGetUserLoginHistoriesV3' test.out

#- 263 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pIxM9n8D' \
    --after '2eLMe3lt' \
    --before '9qfx2UDc' \
    --limit '13' \
    > test.out 2>&1
eval_tap $? 263 'PublicGetUserPlatformAccountsV3' test.out

#- 264 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xBW2tQF5' \
    > test.out 2>&1
eval_tap $? 264 'PublicListJusticePlatformAccountsV3' test.out

#- 265 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'tkTjgJaM' \
    --body '{"platformId": "YvNQOsDa", "platformUserId": "4bkcgepq"}' \
    > test.out 2>&1
eval_tap $? 265 'PublicLinkPlatformAccount' test.out

#- 266 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'txjbrzte' \
    --body '{"chosenNamespaces": ["e7QLTGAa", "k7Kaol01", "DK97D2xn"], "requestId": "ik42mite"}' \
    > test.out 2>&1
eval_tap $? 266 'PublicForceLinkPlatformWithProgression' test.out

#- 267 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'R5eQAe1r' \
    > test.out 2>&1
eval_tap $? 267 'PublicGetPublisherUserV3' test.out

#- 268 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zmmgqBPR' \
    --password 'md6mO4oI' \
    > test.out 2>&1
eval_tap $? 268 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 269 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after '8KDqebm8' \
    --before '3raNBJ5y' \
    --isWildcard 'false' \
    --limit '91' \
    > test.out 2>&1
eval_tap $? 269 'PublicGetRolesV3' test.out

#- 270 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'xEkvI4ox' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetRoleV3' test.out

#- 271 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 271 'PublicGetMyUserV3' test.out

#- 272 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'ZEDxGiBn' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 273 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["Nbn0zaf7", "CaOSlHXr", "USA6sMJz"], "oneTimeLinkCode": "A5mtqISQ"}' \
    > test.out 2>&1
eval_tap $? 273 'LinkHeadlessAccountToMyAccountV3' test.out

#- 274 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "83TTbtef"}' \
    > test.out 2>&1
eval_tap $? 274 'PublicSendVerificationLinkV3' test.out

#- 275 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'XWznDe4L' \
    > test.out 2>&1
eval_tap $? 275 'PublicVerifyUserByLinkV3' test.out

#- 276 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'QdXfFBii' \
    --code '2RAMEX5R' \
    --error 'MjBFVZGY' \
    --state 'zQqV8d9m' \
    > test.out 2>&1
eval_tap $? 276 'PlatformAuthenticateSAMLV3Handler' test.out

#- 277 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'DdUIoiIJ' \
    --payload 'FNxuNOmU' \
    > test.out 2>&1
eval_tap $? 277 'LoginSSOClient' test.out

#- 278 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'SWw18T1I' \
    > test.out 2>&1
eval_tap $? 278 'LogoutSSOClient' test.out

#- 279 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --code 'xVWCxdvP' \
    > test.out 2>&1
eval_tap $? 279 'RequestGameTokenResponseV3' test.out

#- 280 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'L9e4P01v' \
    > test.out 2>&1
eval_tap $? 280 'AdminGetDevicesByUserV4' test.out

#- 281 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'xP8xj1Ly' \
    --endDate 'EirURERn' \
    --limit '63' \
    --offset '29' \
    --startDate 'MzpImW6s' \
    > test.out 2>&1
eval_tap $? 281 'AdminGetBannedDevicesV4' test.out

#- 282 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'jAHyCK5t' \
    > test.out 2>&1
eval_tap $? 282 'AdminGetUserDeviceBansV4' test.out

#- 283 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "NanGBrkz", "deviceId": "Uvck3xTt", "deviceType": "mOFMebS4", "enabled": true, "endDate": "2lzxl0yF", "ext": {"5m77TTh4": {}, "gUoj8u2W": {}, "RcLiEtzV": {}}, "reason": "lnkflfn7"}' \
    > test.out 2>&1
eval_tap $? 283 'AdminBanDeviceV4' test.out

#- 284 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'pHY48F1d' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 284 'AdminGetDeviceBanV4' test.out

#- 285 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'l1q92m3i' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 285 'AdminUpdateDeviceBanV4' test.out

#- 286 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'lfnBAk0C' \
    --startDate 'wiAsR65y' \
    --deviceType 'Q9ssuHdG' \
    > test.out 2>&1
eval_tap $? 286 'AdminGenerateReportV4' test.out

#- 287 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 287 'AdminGetDeviceTypesV4' test.out

#- 288 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'mxncCEr0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 288 'AdminGetDeviceBansV4' test.out

#- 289 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'KcgeqzGb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 289 'AdminDecryptDeviceV4' test.out

#- 290 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'ruNB72HH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'AdminUnbanDeviceV4' test.out

#- 291 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'MkjzyBB4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 291 'AdminGetUsersByDeviceV4' test.out

#- 292 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 96}' \
    > test.out 2>&1
eval_tap $? 292 'AdminCreateTestUsersV4' test.out

#- 293 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["UrI6MAug", "K5kypNrp", "2nFe9FmN"]}' \
    > test.out 2>&1
eval_tap $? 293 'AdminBulkCheckValidUserIDV4' test.out

#- 294 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '86sK5LOq' \
    --body '{"avatarUrl": "4ft5jGcM", "country": "ICPUYnfG", "dateOfBirth": "6jl9U4jR", "displayName": "eteIMgzI", "languageTag": "SomCsodJ", "userName": "rhQW41q2"}' \
    > test.out 2>&1
eval_tap $? 294 'AdminUpdateUserV4' test.out

#- 295 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'OspCZbt3' \
    --body '{"code": "Uta5I0uG", "emailAddress": "cL1koyHj"}' \
    > test.out 2>&1
eval_tap $? 295 'AdminUpdateUserEmailAddressV4' test.out

#- 296 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'CH5olYLE' \
    > test.out 2>&1
eval_tap $? 296 'AdminDisableUserMFAV4' test.out

#- 297 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'TRpABAmO' \
    > test.out 2>&1
eval_tap $? 297 'AdminListUserRolesV4' test.out

#- 298 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '2EGvJ4UM' \
    --body '{"assignedNamespaces": ["S93yOxNI", "nDByhnol", "uO6ti0QP"], "roleId": "2ssiJ66O"}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateUserRoleV4' test.out

#- 299 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'zOj84O6t' \
    --body '{"assignedNamespaces": ["gohjtC7b", "zjPpucdd", "XJ5zifF8"], "roleId": "y959anrN"}' \
    > test.out 2>&1
eval_tap $? 299 'AdminAddUserRoleV4' test.out

#- 300 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'SleywHbH' \
    --body '{"assignedNamespaces": ["ig6IKWVZ", "77KeRWdE", "CaFGzfZ2"], "roleId": "hxcJ2Fne"}' \
    > test.out 2>&1
eval_tap $? 300 'AdminRemoveUserRoleV4' test.out

#- 301 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'false' \
    --limit '27' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 301 'AdminGetRolesV4' test.out

#- 302 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "zUo4hNBD"}' \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateRoleV4' test.out

#- 303 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'h9ZFP1OW' \
    > test.out 2>&1
eval_tap $? 303 'AdminGetRoleV4' test.out

#- 304 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId '0nXOErQP' \
    > test.out 2>&1
eval_tap $? 304 'AdminDeleteRoleV4' test.out

#- 305 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'S4VsRoYI' \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "4tQ6R1Oq"}' \
    > test.out 2>&1
eval_tap $? 305 'AdminUpdateRoleV4' test.out

#- 306 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'KVOTniBg' \
    --body '{"permissions": [{"action": 77, "resource": "inOD975n", "schedAction": 54, "schedCron": "WZjNRSzO", "schedRange": ["TqcVNX3a", "hvxw9gww", "hTnjN6wK"]}, {"action": 67, "resource": "QxCXMd00", "schedAction": 38, "schedCron": "BWCaVVmM", "schedRange": ["45mfIZsW", "hkS476dG", "GJwJ00UH"]}, {"action": 34, "resource": "7MJ6zU7J", "schedAction": 77, "schedCron": "ucAkXsVJ", "schedRange": ["bXi7eRZa", "7WwIc895", "ImqK6tVs"]}]}' \
    > test.out 2>&1
eval_tap $? 306 'AdminUpdateRolePermissionsV4' test.out

#- 307 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'aUq3stUh' \
    --body '{"permissions": [{"action": 82, "resource": "J5Z9GiBi", "schedAction": 90, "schedCron": "Is7NRen2", "schedRange": ["Y3Ns0QJQ", "eaWytPfd", "s1BYx0Ea"]}, {"action": 95, "resource": "ku59eFJr", "schedAction": 84, "schedCron": "ZeHAWGgJ", "schedRange": ["UbUJRMbk", "cTglbU86", "FyOjApNH"]}, {"action": 57, "resource": "2NRqJGIK", "schedAction": 53, "schedCron": "Y3YYT9oT", "schedRange": ["ynmfIuBW", "gJTNFfM8", "M0IW4oe8"]}]}' \
    > test.out 2>&1
eval_tap $? 307 'AdminAddRolePermissionsV4' test.out

#- 308 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'KDgy0xZf' \
    --body '["AcNg14Ws", "8TIP1LKi", "FQoLDvum"]' \
    > test.out 2>&1
eval_tap $? 308 'AdminDeleteRolePermissionsV4' test.out

#- 309 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'fqrgSfnx' \
    --after '2h61X9dN' \
    --before '1MGRXBJ6' \
    --limit '25' \
    > test.out 2>&1
eval_tap $? 309 'AdminListAssignedUsersV4' test.out

#- 310 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'SK8aOTGM' \
    --body '{"assignedNamespaces": ["udcxlCV4", "cNbJGQ57", "lPdinpjS"], "namespace": "2DRfGt9G", "userId": "lyZVQ4X6"}' \
    > test.out 2>&1
eval_tap $? 310 'AdminAssignUserToRoleV4' test.out

#- 311 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId '7tPZSTpP' \
    --body '{"namespace": "q3xjrElv", "userId": "vDgw0ag7"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminRevokeUserFromRoleV4' test.out

#- 312 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "kSWE0Hiq", "country": "m5IuLryi", "dateOfBirth": "EXqvUWDj", "displayName": "U1G0EVjV", "languageTag": "Zw1ToLuP", "userName": "akQN1MpO"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminUpdateMyUserV4' test.out

#- 313 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 313 'AdminDisableMyAuthenticatorV4' test.out

#- 314 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 's1RVFrcg' \
    > test.out 2>&1
eval_tap $? 314 'AdminEnableMyAuthenticatorV4' test.out

#- 315 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 315 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 316 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 316 'AdminGetMyBackupCodesV4' test.out

#- 317 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 317 'AdminGenerateMyBackupCodesV4' test.out

#- 318 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 318 'AdminDisableMyBackupCodesV4' test.out

#- 319 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 319 'AdminDownloadMyBackupCodesV4' test.out

#- 320 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 320 'AdminEnableMyBackupCodesV4' test.out

#- 321 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 321 'AdminSendMyMFAEmailCodeV4' test.out

#- 322 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 322 'AdminDisableMyEmailV4' test.out

#- 323 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code '2CXxepx7' \
    > test.out 2>&1
eval_tap $? 323 'AdminEnableMyEmailV4' test.out

#- 324 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 324 'AdminGetMyEnabledFactorsV4' test.out

#- 325 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor '8fvsyhE2' \
    > test.out 2>&1
eval_tap $? 325 'AdminMakeFactorMyDefaultV4' test.out

#- 326 AdminInviteUserV4
samples/cli/sample-apps Iam adminInviteUserV4 \
    --body '{"assignedNamespaces": ["BKtyTDSI", "M7mkmvZ7", "Cmsh4US8"], "emailAddresses": ["o4jfMANP", "pmZDdMiC", "xmuCCVuF"], "isAdmin": false, "namespace": "Le74p38v", "roleId": "umnxAnYB"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminInviteUserV4' test.out

#- 327 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "HOmhcWm4", "policyId": "28XejRF9", "policyVersionId": "4NIY9nMr"}, {"isAccepted": true, "localizedPolicyVersionId": "m5bufnBq", "policyId": "rpLeqhwV", "policyVersionId": "hjnnjKME"}, {"isAccepted": false, "localizedPolicyVersionId": "XfLcxDC9", "policyId": "Ynd02mEC", "policyVersionId": "IQhfIhHt"}], "authType": "EMAILPASSWD", "country": "XHLLa31o", "dateOfBirth": "Qf7BULnZ", "displayName": "DhutDM6B", "emailAddress": "qguqD5xx", "password": "GxBWtnTK", "passwordMD5Sum": "Ue2znsqP", "username": "zPkwCBo2", "verified": false}' \
    > test.out 2>&1
eval_tap $? 327 'PublicCreateTestUserV4' test.out

#- 328 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "LC10ih2E", "policyId": "QfY3XCv4", "policyVersionId": "hdOa6FdZ"}, {"isAccepted": false, "localizedPolicyVersionId": "Onb1a9gM", "policyId": "z0F2UBRm", "policyVersionId": "MhAbUWmF"}, {"isAccepted": false, "localizedPolicyVersionId": "hgGq5GID", "policyId": "hNC66szb", "policyVersionId": "CCf73IFb"}], "authType": "EMAILPASSWD", "code": "kPSSITz4", "country": "TjCrJHXG", "dateOfBirth": "Xku2YVuO", "displayName": "zhxHmnrr", "emailAddress": "V9ZGWrZ0", "password": "5sxe6A6R", "passwordMD5Sum": "pmKDebNk", "reachMinimumAge": true, "username": "noucNmzw"}' \
    > test.out 2>&1
eval_tap $? 328 'PublicCreateUserV4' test.out

#- 329 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'OZOK56sD' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "ac7Ge6zK", "policyId": "Jdlt7rjF", "policyVersionId": "5RaJwvkW"}, {"isAccepted": false, "localizedPolicyVersionId": "NrTb1XTB", "policyId": "9YQzUJ9X", "policyVersionId": "lYJ8BzP6"}, {"isAccepted": true, "localizedPolicyVersionId": "S8zdhMeB", "policyId": "XH8x6HdV", "policyVersionId": "fZVDAiU6"}], "authType": "EMAILPASSWD", "country": "jwKUckc7", "dateOfBirth": "94ryY91l", "displayName": "X8DD4MYX", "password": "lrJ81lHv", "reachMinimumAge": true, "username": "eXJl7Pei"}' \
    > test.out 2>&1
eval_tap $? 329 'CreateUserFromInvitationV4' test.out

#- 330 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "MH8z8dVe", "country": "j8N2yv6V", "dateOfBirth": "TnOK7xAv", "displayName": "M7tuL81l", "languageTag": "sR7xxSVp", "userName": "3Gd2TK0H"}' \
    > test.out 2>&1
eval_tap $? 330 'PublicUpdateUserV4' test.out

#- 331 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "zYviTgYm", "emailAddress": "x82JVBRL"}' \
    > test.out 2>&1
eval_tap $? 331 'PublicUpdateUserEmailAddressV4' test.out

#- 332 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "PZ6Iz8tn", "country": "e5dbguBF", "dateOfBirth": "6Gsvvdl8", "displayName": "jHz9x7XZ", "emailAddress": "IjU4IK9l", "password": "OLaZaMph", "reachMinimumAge": true, "username": "tZyTjdKN", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 332 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 333 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "joEEXBLI", "password": "xGnNuhoJ", "username": "M3WWPvvC"}' \
    > test.out 2>&1
eval_tap $? 333 'PublicUpgradeHeadlessAccountV4' test.out

#- 334 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 334 'PublicDisableMyAuthenticatorV4' test.out

#- 335 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'iCf33ViE' \
    > test.out 2>&1
eval_tap $? 335 'PublicEnableMyAuthenticatorV4' test.out

#- 336 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 336 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 337 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 337 'PublicGetMyBackupCodesV4' test.out

#- 338 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 338 'PublicGenerateMyBackupCodesV4' test.out

#- 339 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 339 'PublicDisableMyBackupCodesV4' test.out

#- 340 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 340 'PublicDownloadMyBackupCodesV4' test.out

#- 341 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 341 'PublicEnableMyBackupCodesV4' test.out

#- 342 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 342 'PublicRemoveTrustedDeviceV4' test.out

#- 343 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 343 'PublicSendMyMFAEmailCodeV4' test.out

#- 344 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 344 'PublicDisableMyEmailV4' test.out

#- 345 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'dqQpoGkU' \
    > test.out 2>&1
eval_tap $? 345 'PublicEnableMyEmailV4' test.out

#- 346 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 346 'PublicGetMyEnabledFactorsV4' test.out

#- 347 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'WNizk5Uc' \
    > test.out 2>&1
eval_tap $? 347 'PublicMakeFactorMyDefaultV4' test.out

#- 348 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"emailAddress": "PAGv6c1E", "namespace": "SC6hZYTY", "namespaceDisplayName": "Zbzf5aAN"}' \
    > test.out 2>&1
eval_tap $? 348 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE