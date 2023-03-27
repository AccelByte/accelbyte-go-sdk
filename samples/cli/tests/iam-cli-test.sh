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
    --body '[{"field": "0D0CFubR", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "blockedWord": ["gy8Kbw8q", "PqQBPf9e", "sBM0eQlg"], "description": [{"language": "JePlLg8o", "message": ["rulqTDd2", "Luq1DB7W", "KbduRNUN"]}, {"language": "TcTpChxZ", "message": ["nl9OpGsB", "GdQNm7sw", "LnZ8nf8m"]}, {"language": "D9GNYYew", "message": ["Wj6utm0G", "raXXqVpx", "yLyJy7tL"]}], "isCustomRegex": true, "letterCase": "EIeaXK9h", "maxLength": 43, "maxRepeatingAlphaNum": 41, "maxRepeatingSpecialCharacter": 34, "minCharType": 2, "minLength": 16, "regex": "WhL9fNoE", "specialCharacterLocation": "N5pqBnrK", "specialCharacters": ["iBucjLpP", "tIg7EDkk", "Mq2BdjIk"]}}, {"field": "G4ex0um4", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "blockedWord": ["G2Kd2SM7", "Ti5167TU", "nHcEfZDc"], "description": [{"language": "uuXRGDOW", "message": ["MMDobDDx", "K08XOaAT", "anWO8YZ5"]}, {"language": "lrhs66YO", "message": ["BWcvqLar", "1XhLfJAq", "X2LLakcW"]}, {"language": "TCxQ4PBN", "message": ["Ay4mO4yh", "l2PNuKMU", "THuBuER0"]}], "isCustomRegex": false, "letterCase": "XewzIYnf", "maxLength": 8, "maxRepeatingAlphaNum": 98, "maxRepeatingSpecialCharacter": 95, "minCharType": 38, "minLength": 86, "regex": "piwa8EiE", "specialCharacterLocation": "GkYZy5pZ", "specialCharacters": ["sCI9dVYK", "flAijmiP", "vdBWiyfM"]}}, {"field": "vEaB9saa", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "blockedWord": ["JDxXBsjg", "coYbRB8y", "ky6XOfG8"], "description": [{"language": "1Si2y68d", "message": ["sb9uDwmn", "Fl7aquDR", "ehSG6fsk"]}, {"language": "7e95D980", "message": ["i6u3V67n", "hoWYD7Qo", "LtlseKld"]}, {"language": "3gJEH2gW", "message": ["U0RjYEPH", "XDKdsXDR", "mGdZGch7"]}], "isCustomRegex": true, "letterCase": "Hlk46VpC", "maxLength": 16, "maxRepeatingAlphaNum": 96, "maxRepeatingSpecialCharacter": 80, "minCharType": 65, "minLength": 79, "regex": "InNCU4rn", "specialCharacterLocation": "KdsPsuV0", "specialCharacters": ["OIljoWqU", "IgOlYGD7", "C8TFDNBV"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'x5bIaDIS' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'WB7x1myg' \
    --before 'YK5OOlXN' \
    --limit '76' \
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
    --body '{"ageRestriction": 17, "enable": true}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'Yb76WPkL' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 36}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'yk1wmQQ8' \
    --limit '71' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "mT2yLyvB", "comment": "1nNHqWq2", "endDate": "uTR067Ft", "reason": "V8IMjP9h", "skipNotif": true, "userIds": ["KR2Lvcpj", "wE5yQRXp", "FmfAXQu2"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "TvF40mwm", "userId": "QSJuFA4S"}, {"banId": "U6oifhU0", "userId": "UVN9RF9a"}, {"banId": "GpMbkXS9", "userId": "hgEtV8v5"}]}' \
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
    --clientId '9VyRwLWz' \
    --clientName 's9BJjkfM' \
    --clientType 'vIRlyTMr' \
    --limit '52' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["jmyw4QQk", "VDgwEUYI", "3LeMvJo5"], "baseUri": "C856yKXF", "clientId": "gHSo1kUR", "clientName": "DlVmQPry", "clientPermissions": [{"action": 13, "resource": "CL2bkIuG", "schedAction": 15, "schedCron": "0OGdjEQT", "schedRange": ["keYM0QDX", "W9O5z6EE", "e8BaH1iT"]}, {"action": 48, "resource": "cbRbqzIf", "schedAction": 8, "schedCron": "7tfBhpeu", "schedRange": ["cxhf5nRs", "BvaBMX5a", "3WcjcVLI"]}, {"action": 76, "resource": "PwyWmtlu", "schedAction": 58, "schedCron": "6EX0ZhC9", "schedRange": ["Pp09Ezgn", "yTk1QXa8", "z0uKFNcr"]}], "clientPlatform": "8Dbogszi", "deletable": true, "description": "HlZyycsw", "namespace": "Mj0He60b", "oauthAccessTokenExpiration": 71, "oauthAccessTokenExpirationTimeUnit": "cIlW4vGG", "oauthClientType": "WPDCENfN", "oauthRefreshTokenExpiration": 36, "oauthRefreshTokenExpirationTimeUnit": "aKOtZhCN", "parentNamespace": "GROTcETP", "redirectUri": "R18jdTZV", "scopes": ["nIELVifc", "qMfEaCkl", "1l2nZLLU"], "secret": "64yZgnvk", "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'K8v5qXGQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'TsRGpIWq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'qq4Lfr7L' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["UDgJ2HKO", "V5ybUbeb", "sDoXaRfb"], "baseUri": "8FZcYqz9", "clientName": "bguoxAOd", "clientPermissions": [{"action": 20, "resource": "sCLRSvQh", "schedAction": 3, "schedCron": "dkrTEj3X", "schedRange": ["Csi1rb9W", "zAvfGecC", "4uCke6nh"]}, {"action": 52, "resource": "PA3zgFy8", "schedAction": 71, "schedCron": "FzEV1W18", "schedRange": ["qEi4G9mU", "Uw8vqEI0", "xriXSQTT"]}, {"action": 62, "resource": "HSk3UGZl", "schedAction": 18, "schedCron": "26RtZSxq", "schedRange": ["NxxEmWFA", "rqOQ2g4P", "mfVuwvuF"]}], "clientPlatform": "YXRMcaiS", "deletable": true, "description": "qIKcZFyi", "namespace": "EjjVz5fA", "oauthAccessTokenExpiration": 21, "oauthAccessTokenExpirationTimeUnit": "ppqiedbQ", "oauthRefreshTokenExpiration": 48, "oauthRefreshTokenExpirationTimeUnit": "lcVUrPRr", "redirectUri": "wyYXVjkI", "scopes": ["hTfsqEsp", "iL2I9Y8i", "WueWNSwQ"], "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'mdwwwIyI' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 10, "resource": "HzY2dsYi"}, {"action": 41, "resource": "kl6FnyqZ"}, {"action": 37, "resource": "nmBExle2"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'KehLdzAa' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 19, "resource": "7oHmcHZk"}, {"action": 77, "resource": "MfZ2Xmu0"}, {"action": 87, "resource": "j7MGpqTC"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '68' \
    --clientId '69gSxYmH' \
    --namespace $AB_NAMESPACE \
    --resource 'TXr2r5XA' \
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
    --limit '84' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 130 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 131 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZMiLWRYd' \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Tn4gSGXk' \
    --body '{"ACSURL": "mklSl1ve", "AWSCognitoRegion": "2Jlb7oeI", "AWSCognitoUserPool": "KTc2yZ3L", "AllowedClients": ["OJ4kdmOU", "K455Kh9c", "vr9K9oRm"], "AppId": "6zo07RI5", "AuthorizationEndpoint": "3DF2ClEP", "ClientId": "zjc62UxM", "Environment": "aha3ueLg", "FederationMetadataURL": "iBtq9qRi", "GenericOauthFlow": false, "IsActive": true, "Issuer": "luDkJoc7", "JWKSEndpoint": "h7Iu9O7f", "KeyID": "xeguRWuZ", "NetflixCertificates": {"encryptedPrivateKey": "d2iGXjRW", "encryptedPrivateKeyName": "M8p0FAKm", "publicCertificate": "6nOG5nLy", "publicCertificateName": "dDTJgNZB", "rootCertificate": "n7dlrlir", "rootCertificateName": "fa8Kq2XW"}, "OrganizationId": "L9fdBQnz", "PlatformName": "EVUucIl6", "RedirectUri": "6BwIUuzj", "RegisteredDomains": [{"affectedClientIDs": ["OYSwOogZ", "k1Su7QxW", "ayFvXV5I"], "domain": "UPKpejqf", "namespaces": ["L8EMhubo", "2kqNtNGg", "6GvZ7CtX"], "roleId": "5LOy98pq"}, {"affectedClientIDs": ["eYM27r0r", "OeD2PsAf", "R58u5BDY"], "domain": "QofWswYM", "namespaces": ["kZBbitWF", "T4sWK22S", "omglpPef"], "roleId": "S95nCnD8"}, {"affectedClientIDs": ["kdbfgMU0", "Z5e04oio", "YQUxJpFc"], "domain": "d4SwsZcI", "namespaces": ["eQ9WLnsq", "VgzZKXWY", "FgXBs19R"], "roleId": "B0Z5plZA"}], "Secret": "jSZHhyRx", "TeamID": "ZYhumUZd", "TokenAuthenticationType": "XvZuYnn1", "TokenClaimsMapping": {"Hbsc1Gv8": "DMwZktas", "L00YizDM": "CygfGP8G", "sQdG8gXA": "YmYCiFja"}, "TokenEndpoint": "DH8wXBaS", "UserInfoEndpoint": "VRRCuVtE", "UserInfoHTTPMethod": "uQuuzTew", "scopes": ["F68artlZ", "TKSyBFLW", "5gzBzmXu"]}' \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'YZKnuBAo' \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '4StOZYgm' \
    --body '{"ACSURL": "jIdt7sBb", "AWSCognitoRegion": "CBXwLhDr", "AWSCognitoUserPool": "0GIHSljA", "AllowedClients": ["fQuvlZhU", "9fTlSeeZ", "Jsqc3XwB"], "AppId": "aB8BhOwD", "AuthorizationEndpoint": "4qJTSJAJ", "ClientId": "WAxCdBhZ", "Environment": "VDSouI9v", "FederationMetadataURL": "7Hrgk35j", "GenericOauthFlow": true, "IsActive": false, "Issuer": "0XY24IOD", "JWKSEndpoint": "HRxRMY1n", "KeyID": "oyohPZHn", "NetflixCertificates": {"encryptedPrivateKey": "FWPRf9ch", "encryptedPrivateKeyName": "MqXsBvR2", "publicCertificate": "1VnPsXwN", "publicCertificateName": "5RpTL6Be", "rootCertificate": "wRs45siO", "rootCertificateName": "Cy2j4FxO"}, "OrganizationId": "8in5LXTl", "PlatformName": "EN4cONSu", "RedirectUri": "uddTmhjD", "RegisteredDomains": [{"affectedClientIDs": ["czDqs0i1", "fJ4MZ4W9", "ZVLS5ym7"], "domain": "4TSlYwzr", "namespaces": ["jIUvGE1R", "aOne4Sq5", "RKIbZRxa"], "roleId": "H63Vg5pL"}, {"affectedClientIDs": ["fjgdGpW4", "LzBwkOIN", "tMvJxm9M"], "domain": "luhMfL8B", "namespaces": ["WO9PDKRh", "8xmbBnoz", "L9UzQ8Y9"], "roleId": "MnfRm3Ca"}, {"affectedClientIDs": ["SzVCW7Aj", "HjALCAJD", "l6LIDtus"], "domain": "iYlTMDBq", "namespaces": ["kQe94mOt", "UvAXPByH", "qJ3tLPzT"], "roleId": "H6Li22wx"}], "Secret": "7SszsPRA", "TeamID": "mZRyz6n6", "TokenAuthenticationType": "Epi4Pj26", "TokenClaimsMapping": {"Z6beqEqI": "gcQjxZgw", "8ybHS7Lk": "T0GFaNuO", "uRxck6rk": "gPURZJaw"}, "TokenEndpoint": "lXOKNigt", "UserInfoEndpoint": "lFndeFdr", "UserInfoHTTPMethod": "bW6MzFDB", "scopes": ["hU70LlMK", "yUqoJMPl", "6CPhxw0c"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'G6dRQUYn' \
    --body '{"affectedClientIDs": ["uebZKxyJ", "Ktx6TfBg", "cqHbjEJ2"], "assignedNamespaces": ["y0obo8SK", "fIfngs26", "7VX4FC7A"], "domain": "dhI17bw0", "roleId": "QQpEIxhU"}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'wy3xjaiS' \
    --body '{"domain": "Q4AC2hzQ"}' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'ql4kRVSF' \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'BLBVJF8g' \
    --body '{"acsUrl": "pq9leT7m", "apiKey": "wkLAsoVd", "appId": "ujSc2OZP", "federationMetadataUrl": "LzA3SHuD", "isActive": true, "redirectUri": "C1V2iAvp", "secret": "TVbOFfxt", "ssoUrl": "CLr7x05i"}' \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'NhdBLQMa' \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '1mPJSHMM' \
    --body '{"acsUrl": "MexoFPxI", "apiKey": "2VYMTLlu", "appId": "ey1iyAae", "federationMetadataUrl": "s4ZnktDO", "isActive": false, "redirectUri": "d0e4QYMu", "secret": "L0ANEhiZ", "ssoUrl": "4YcLTorY"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'TDlcJ3tj' \
    --platformUserId 'cHmIjs6S' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'iIzrfjzf' \
    --after '42' \
    --before '63' \
    --limit '70' \
    > test.out 2>&1
eval_tap $? 142 'GetAdminUsersByRoleIdV3' test.out

#- 143 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'ByiRu78r' \
    > test.out 2>&1
eval_tap $? 143 'AdminGetUserByEmailAddressV3' test.out

#- 144 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Z5Xwg3ZL", "G0HEPkq0", "8lG6i10d"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["CpfWHfmD", "s2VMbLwF", "tRMVgMSs"], "isAdmin": false, "namespace": "qWSM0tuE", "roles": ["0A08dsEH", "siMueFYL", "oowHKFuN"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '23' \
    --platformUserId 'tGXyTWa7' \
    --platformId 'DJ79FaRI' \
    > test.out 2>&1
eval_tap $? 146 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 147 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 147 'AdminListUsersV3' test.out

#- 148 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'ngfSw0u4' \
    --endDate 'WDYujIsn' \
    --limit '13' \
    --offset '16' \
    --platformBy 'dEQLUPU7' \
    --platformId 'pToEimeO' \
    --query 'O7WkNKeN' \
    --startDate 'M3VXw1K2' \
    > test.out 2>&1
eval_tap $? 148 'AdminSearchUserV3' test.out

#- 149 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["2ROEChTx", "6deG3O8Z", "FxI6xS1t"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetBulkUserByEmailAddressV3' test.out

#- 150 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jzJT44sI' \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByUserIdV3' test.out

#- 151 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '7xW2F8uu' \
    --body '{"avatarUrl": "BBFaVnxa", "country": "igo4rtlP", "dateOfBirth": "NKqI4glt", "displayName": "GgWs1PJ6", "languageTag": "UDqWZTW8", "userName": "CmqlQ0n6"}' \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserV3' test.out

#- 152 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'uyoWjwwH' \
    --activeOnly 'false' \
    --after 'etWFxWtp' \
    --before '4i3U3UOb' \
    --limit '51' \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserBanV3' test.out

#- 153 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pZzQkGlo' \
    --body '{"ban": "4PwpyP4t", "comment": "LmhA71qz", "endDate": "PL22Do5n", "reason": "s0BIUteK", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 153 'AdminBanUserV3' test.out

#- 154 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'w2mD0mS6' \
    --namespace $AB_NAMESPACE \
    --userId 'f0HpKbmg' \
    --body '{"enabled": false, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 154 'AdminUpdateUserBanV3' test.out

#- 155 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'c85XNhRt' \
    --body '{"context": "h5lBlE0w", "emailAddress": "aW9RbDQx", "languageTag": "9Ddhi1Ji"}' \
    > test.out 2>&1
eval_tap $? 155 'AdminSendVerificationCodeV3' test.out

#- 156 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId '2F2Tosx1' \
    --body '{"Code": "cRv7B1dp", "ContactType": "4ZpjciEW", "LanguageTag": "1zug1Mfr", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 156 'AdminVerifyAccountV3' test.out

#- 157 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId '5onILVZn' \
    > test.out 2>&1
eval_tap $? 157 'GetUserVerificationCode' test.out

#- 158 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Myq7FeRr' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserDeletionStatusV3' test.out

#- 159 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Ai4Feoe8' \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 159 'AdminUpdateUserDeletionStatusV3' test.out

#- 160 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rx2583hS' \
    --body '{"code": "hG0V2dHg", "country": "CsArDaIR", "dateOfBirth": "k4EhlbnB", "displayName": "l8KfXZzL", "emailAddress": "LzHCbU55", "password": "APdp3KOK", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpgradeHeadlessAccountV3' test.out

#- 161 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'JRroXUMJ' \
    > test.out 2>&1
eval_tap $? 161 'AdminDeleteUserInformationV3' test.out

#- 162 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PTC6HU29' \
    --after '0.5820743404989789' \
    --before '0.6685342069415867' \
    --limit '75' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserLoginHistoriesV3' test.out

#- 163 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YgsE89HN' \
    --body '{"languageTag": "oI97i0cv", "newPassword": "297mucFT", "oldPassword": "VTrqzL7Z"}' \
    > test.out 2>&1
eval_tap $? 163 'AdminResetPasswordV3' test.out

#- 164 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId '5dvdYN4k' \
    --body '{"Permissions": [{"Action": 76, "Resource": "0VNmOwEB", "SchedAction": 31, "SchedCron": "IT9NozE7", "SchedRange": ["GegV8Cco", "sf881pxg", "7UPtWqIK"]}, {"Action": 89, "Resource": "pj81OTHO", "SchedAction": 49, "SchedCron": "5dTPzCOD", "SchedRange": ["C8pMdm3V", "LjOaUxw3", "PoZD8zhV"]}, {"Action": 82, "Resource": "NJtDGFLK", "SchedAction": 46, "SchedCron": "J0AtJfq5", "SchedRange": ["kjORrZYh", "1HDC3rBj", "taaCDYe3"]}]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserPermissionV3' test.out

#- 165 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YdUbQx44' \
    --body '{"Permissions": [{"Action": 23, "Resource": "p8pEmzkI", "SchedAction": 87, "SchedCron": "lOCMY9O8", "SchedRange": ["HsjqenM5", "Dp7J4A1Y", "1echbQDO"]}, {"Action": 14, "Resource": "o5JssSno", "SchedAction": 27, "SchedCron": "q4uLRdkg", "SchedRange": ["VPdwP50c", "s2XqpJTZ", "LkFbCi7p"]}, {"Action": 90, "Resource": "huPchL9w", "SchedAction": 79, "SchedCron": "TG6fS3OY", "SchedRange": ["FD9v3K1V", "X95wI7kH", "HoR5cXcD"]}]}' \
    > test.out 2>&1
eval_tap $? 165 'AdminAddUserPermissionsV3' test.out

#- 166 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'XUh68OFk' \
    --body '[{"Action": 39, "Resource": "cjG8FJbi"}, {"Action": 28, "Resource": "0mZ1eMqb"}, {"Action": 27, "Resource": "GCyzI9Bh"}]' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionBulkV3' test.out

#- 167 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '92' \
    --namespace $AB_NAMESPACE \
    --resource 'uAZEf63Q' \
    --userId 'vqrrKE3z' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionV3' test.out

#- 168 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LccF06ak' \
    --after 'Btuh2sCH' \
    --before 'sYKgxGTA' \
    --limit '28' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserPlatformAccountsV3' test.out

#- 169 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'hlSkLaVd' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetListJusticePlatformAccounts' test.out

#- 170 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace '1FHkXofa' \
    --userId 'iMNnFq8Y' \
    > test.out 2>&1
eval_tap $? 170 'AdminGetUserMapping' test.out

#- 171 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '8mnzGlDk' \
    --userId 'Nnw6gPDM' \
    > test.out 2>&1
eval_tap $? 171 'AdminCreateJusticeUser' test.out

#- 172 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '1PdeCFTd' \
    --body '{"platformId": "GjsgaFVW", "platformUserId": "Ec60hKxx"}' \
    > test.out 2>&1
eval_tap $? 172 'AdminLinkPlatformAccount' test.out

#- 173 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'orLLtEWN' \
    --userId 't5F40oGB' \
    --body '{"platformNamespace": "n34kF0PV"}' \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformUnlinkV3' test.out

#- 174 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'rGhJ6V3X' \
    --userId 'FfJLsP2O' \
    --ticket 'xvW2JaEp' \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformLinkV3' test.out

#- 175 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'hquf9O4F' \
    --userId 'guD3tmNR' \
    --platformToken 'W4Rl3HNr' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 176 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vvXkpDpY' \
    --body '["YDEWKsSu", "CbR40gzs", "lSSt4yR7"]' \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserRolesV3' test.out

#- 177 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lTqHohQQ' \
    --body '[{"namespace": "VOEHkadr", "roleId": "uKMhZu58"}, {"namespace": "U03JSy1Z", "roleId": "jXy1UxH9"}, {"namespace": "hrni8qD7", "roleId": "CLXafOqe"}]' \
    > test.out 2>&1
eval_tap $? 177 'AdminSaveUserRoleV3' test.out

#- 178 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'WdcaWfuY' \
    --userId 'MWoexRne' \
    > test.out 2>&1
eval_tap $? 178 'AdminAddUserRoleV3' test.out

#- 179 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'f1BDkOPA' \
    --userId 'DBiXFOWb' \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteUserRoleV3' test.out

#- 180 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BpwUeyF0' \
    --body '{"enabled": false, "reason": "OnelnfHc"}' \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateUserStatusV3' test.out

#- 181 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bguVsJeE' \
    > test.out 2>&1
eval_tap $? 181 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 182 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'qmsEZuWw' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "qCMTdxQw"}' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateClientSecretV3' test.out

#- 183 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'poAvIG0R' \
    --before '56r9IdTf' \
    --isWildcard 'false' \
    --limit '23' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRolesV3' test.out

#- 184 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "managers": [{"displayName": "7NPKdqIq", "namespace": "AemiRy7q", "userId": "ssIU9vhX"}, {"displayName": "yHhkdSEX", "namespace": "QyS2sdiE", "userId": "YTMsWX8t"}, {"displayName": "rxzk3VyQ", "namespace": "dWlQVLcg", "userId": "ADFIUVim"}], "members": [{"displayName": "ZOKRMySz", "namespace": "HojYZE2N", "userId": "KIhROryQ"}, {"displayName": "aPhryLnD", "namespace": "Qb6PkpKk", "userId": "sPHIH21h"}, {"displayName": "7ttL8DQR", "namespace": "8ErkD05b", "userId": "2mn4jvUh"}], "permissions": [{"action": 62, "resource": "y8IFHsDQ", "schedAction": 33, "schedCron": "29YVgR46", "schedRange": ["1dRWBsJT", "M1qYiUbz", "BOx8Yhib"]}, {"action": 70, "resource": "V5FpUsQT", "schedAction": 84, "schedCron": "1FXssQOS", "schedRange": ["4YVWd70c", "47Faq3yZ", "8qksK1k3"]}, {"action": 71, "resource": "1HGBsk9J", "schedAction": 79, "schedCron": "vwFoNSP6", "schedRange": ["oPPQDFyl", "1YUWc0kZ", "yll0OPBQ"]}], "roleName": "9hBf6JSU"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminCreateRoleV3' test.out

#- 185 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'e4Ralz39' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleV3' test.out

#- 186 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'wgPE5aQb' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteRoleV3' test.out

#- 187 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'zzUsnbER' \
    --body '{"deletable": true, "isWildcard": true, "roleName": "Nc2b4wjJ"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateRoleV3' test.out

#- 188 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'kv7VXbfR' \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleAdminStatusV3' test.out

#- 189 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'I1UEUUGe' \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateAdminRoleStatusV3' test.out

#- 190 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'x2eDlh0O' \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleAdminV3' test.out

#- 191 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'EmZvhd1B' \
    --after 'wnNe08An' \
    --before 'NKLffhnD' \
    --limit '32' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRoleManagersV3' test.out

#- 192 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'UQ1pW0yF' \
    --body '{"managers": [{"displayName": "m49n6zdI", "namespace": "Xp2V0KJz", "userId": "13Vhk3ci"}, {"displayName": "9sN1Gcok", "namespace": "gH5wOmZ0", "userId": "oTmAGj5t"}, {"displayName": "3nE8Q2Nh", "namespace": "4JZgOjm5", "userId": "nd80jt95"}]}' \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRoleManagersV3' test.out

#- 193 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'cD9UVHn9' \
    --body '{"managers": [{"displayName": "QWA8wMIf", "namespace": "0xy4Usqe", "userId": "hEOCL9mX"}, {"displayName": "Gw22j4Lj", "namespace": "oJvkg7oy", "userId": "MajQVvM3"}, {"displayName": "bp6H3PiR", "namespace": "uqOiAH1d", "userId": "egVjnkkH"}]}' \
    > test.out 2>&1
eval_tap $? 193 'AdminRemoveRoleManagersV3' test.out

#- 194 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'L8yvPgbz' \
    --after 'tELtI8eC' \
    --before 'Arvb9Dpw' \
    --limit '37' \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleMembersV3' test.out

#- 195 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'vi1TIYaj' \
    --body '{"members": [{"displayName": "oo9ISYDz", "namespace": "fY32fdbQ", "userId": "Ox5ECgl1"}, {"displayName": "TQQGC1k8", "namespace": "QQfL7dxM", "userId": "6Ow2P2pE"}, {"displayName": "DHO9mosm", "namespace": "CoSmL2Cp", "userId": "ObuC66gc"}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddRoleMembersV3' test.out

#- 196 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'AL6caPKA' \
    --body '{"members": [{"displayName": "Bs0K3oq3", "namespace": "j48vddxk", "userId": "hVvO3n8a"}, {"displayName": "GePWBcok", "namespace": "9kJ8tANv", "userId": "dP0vIioG"}, {"displayName": "14ODcnIH", "namespace": "daXNsNQm", "userId": "4v8NhXie"}]}' \
    > test.out 2>&1
eval_tap $? 196 'AdminRemoveRoleMembersV3' test.out

#- 197 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'HAr9XTGo' \
    --body '{"permissions": [{"action": 24, "resource": "mn3dZJFa", "schedAction": 18, "schedCron": "VX3ce6i6", "schedRange": ["IqkxZovw", "vyNi8ltV", "TZ1GZK77"]}, {"action": 29, "resource": "jszLkGO9", "schedAction": 29, "schedCron": "Nk2u6XQu", "schedRange": ["p9XafgZR", "XdydV2Sa", "MidKbMYT"]}, {"action": 21, "resource": "AR6cg7Di", "schedAction": 21, "schedCron": "LOxzegwM", "schedRange": ["aEP7dxKw", "Um7qhzW7", "KPNGZKc3"]}]}' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateRolePermissionsV3' test.out

#- 198 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'BLBqt5HY' \
    --body '{"permissions": [{"action": 7, "resource": "6d49GTZn", "schedAction": 83, "schedCron": "eLoo2I23", "schedRange": ["RFdBKHbC", "QjZ9gZbq", "Nxojyq4v"]}, {"action": 62, "resource": "VHLf05PZ", "schedAction": 50, "schedCron": "hZ4EuRtI", "schedRange": ["WBYHE15w", "jqwA1GyY", "YZJizKIA"]}, {"action": 52, "resource": "AJynKcWB", "schedAction": 100, "schedCron": "uDVLSYT7", "schedRange": ["RUHOTVY1", "OtS5p4OW", "ZJpMAKR1"]}]}' \
    > test.out 2>&1
eval_tap $? 198 'AdminAddRolePermissionsV3' test.out

#- 199 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'pb6KQ89X' \
    --body '["OPZ0o8S2", "RXTy18Tj", "1HjpVcwA"]' \
    > test.out 2>&1
eval_tap $? 199 'AdminDeleteRolePermissionsV3' test.out

#- 200 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '6' \
    --resource 'RFdFEib4' \
    --roleId 'pACfbtOz' \
    > test.out 2>&1
eval_tap $? 200 'AdminDeleteRolePermissionV3' test.out

#- 201 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 201 'AdminGetMyUserV3' test.out

#- 202 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'dNkJr3E8' \
    --extendExp 'false' \
    --redirectUri 'qI7yWwwi' \
    --password 'hk9xplsc' \
    --requestId 'QU6HuX8k' \
    --userName 'mKzx1ig0' \
    > test.out 2>&1
eval_tap $? 202 'UserAuthenticationV3' test.out

#- 203 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'HQtMCriY' \
    --linkingToken 'EAaMdEKa' \
    --password 'o8qwrFlG' \
    --username 'd2mUr1Kd' \
    > test.out 2>&1
eval_tap $? 203 'AuthenticationWithPlatformLinkV3' test.out

#- 204 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'true' \
    --linkingToken 'v3neqVfM' \
    > test.out 2>&1
eval_tap $? 204 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 205 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'FQwYgjrw' \
    > test.out 2>&1
eval_tap $? 205 'RequestOneTimeLinkingCodeV3' test.out

#- 206 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode '4KTJ6lkY' \
    > test.out 2>&1
eval_tap $? 206 'ValidateOneTimeLinkingCodeV3' test.out

#- 207 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --clientId 'bMnfNB6i' \
    --oneTimeLinkCode 'Ti9E4s0N' \
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
    --clientId 'L7bvFmfa' \
    > test.out 2>&1
eval_tap $? 210 'RequestGameTokenCodeResponseV3' test.out

#- 211 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'eazF5UX7' \
    --userId '0PEDbiL4' \
    > test.out 2>&1
eval_tap $? 211 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 212 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '7uM5SY6i' \
    > test.out 2>&1
eval_tap $? 212 'RevokeUserV3' test.out

#- 213 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'D2fRiOzh' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'false' \
    --oneTimeLinkCode '00yvX9Yp' \
    --redirectUri 'VQq8fjtU' \
    --scope '43Sr3M2y' \
    --state 'EWZHfknM' \
    --targetAuthPage 'IrItlVxT' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'DNijMmPV' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 213 'AuthorizeV3' test.out

#- 214 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'YsErUppX' \
    > test.out 2>&1
eval_tap $? 214 'TokenIntrospectionV3' test.out

#- 215 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 215 'GetJWKSV3' test.out

#- 216 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId '33pLozdZ' \
    --factor 'QpFRJ0zn' \
    --mfaToken 'V3WxqM5L' \
    > test.out 2>&1
eval_tap $? 216 'SendMFAAuthenticationCode' test.out

#- 217 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'xAGhADlV' \
    --mfaToken 'xynjSfK9' \
    > test.out 2>&1
eval_tap $? 217 'Change2faMethod' test.out

#- 218 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'ON0gZ9tt' \
    --factor '6Ds0b1s6' \
    --mfaToken 'MIFu9DJl' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 218 'Verify2faCode' test.out

#- 219 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'iRNsb9Dh' \
    --userId '9g6vAZww' \
    > test.out 2>&1
eval_tap $? 219 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId '0VnyWPrH' \
    --clientId 'm6lPQmLU' \
    --redirectUri 'ammixYbK' \
    --requestId 'uvos1eRW' \
    > test.out 2>&1
eval_tap $? 220 'AuthCodeRequestV3' test.out

#- 221 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'xjGTd4gD' \
    --clientId 'hUtlvYZ7' \
    --createHeadless 'false' \
    --deviceId 'B11hhBum' \
    --macAddress 'oQCtTcXk' \
    --platformToken 'z5jcYxQV' \
    > test.out 2>&1
eval_tap $? 221 'PlatformTokenGrantV3' test.out

#- 222 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 222 'GetRevocationListV3' test.out

#- 223 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token '4atClrmc' \
    > test.out 2>&1
eval_tap $? 223 'TokenRevocationV3' test.out

#- 224 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --clientId 'SqXdKPu5' \
    --code 'nMPxpveo' \
    --codeVerifier 'cVxaY8TV' \
    --extendExp 'true' \
    --password 'vlOuvPWo' \
    --redirectUri 'ixg7EVCU' \
    --refreshToken 'XnFpfHCL' \
    --username 'QxeKGDEK' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 224 'TokenGrantV3' test.out

#- 225 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'QJPQQtSl' \
    > test.out 2>&1
eval_tap $? 225 'VerifyTokenV3' test.out

#- 226 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'vIObffW9' \
    --code 'bIQVnvy7' \
    --error 'kjmcPy61' \
    --openidAssocHandle 'WEeHlZXz' \
    --openidClaimedId 'dKjgL7qi' \
    --openidIdentity 'vuLqiB4i' \
    --openidMode 'bbIn5JpM' \
    --openidNs 'ksOHheBy' \
    --openidOpEndpoint 'Na92A4b7' \
    --openidResponseNonce 'BNh40Ufi' \
    --openidReturnTo '99Ev2kmg' \
    --openidSig 'UYFJxlzQ' \
    --openidSigned '4lTtv714' \
    --state 'hQSEwFk4' \
    > test.out 2>&1
eval_tap $? 226 'PlatformAuthenticationV3' test.out

#- 227 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'JTlve7LF' \
    > test.out 2>&1
eval_tap $? 227 'PublicGetInputValidations' test.out

#- 228 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'zRZbFGzJ' \
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
    --clientId 'KHj2x4sr' \
    > test.out 2>&1
eval_tap $? 230 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 231 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId '0l97zxRO' \
    --body '{"platformUserIds": ["Aac9mcpo", "uRbe4oSf", "b4u3XnvT"]}' \
    > test.out 2>&1
eval_tap $? 231 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 232 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'V80MVtlM' \
    --platformUserId '8cSNZDzh' \
    > test.out 2>&1
eval_tap $? 232 'PublicGetUserByPlatformUserIDV3' test.out

#- 233 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'yiUuVWKg' \
    > test.out 2>&1
eval_tap $? 233 'PublicGetAsyncStatus' test.out

#- 234 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'EZ6rVXTu' \
    --limit '70' \
    --offset '61' \
    --query 'fcuZ0NjS' \
    > test.out 2>&1
eval_tap $? 234 'PublicSearchUserV3' test.out

#- 235 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "m3CdlJuQ", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "VhFZp1fw", "policyId": "sNmC2Ler", "policyVersionId": "YiOBH3gS"}, {"isAccepted": true, "localizedPolicyVersionId": "foeZcfKk", "policyId": "5ycxi5cf", "policyVersionId": "OnVZLU4t"}, {"isAccepted": false, "localizedPolicyVersionId": "lnOc09du", "policyId": "FDEJqBNz", "policyVersionId": "g0wHJSgq"}], "authType": "dIp38d82", "code": "sQWUyFWa", "country": "h9OlTolx", "dateOfBirth": "aTVeoB1L", "displayName": "9zTSEuOA", "emailAddress": "DDlobdnA", "password": "hnydyfNO", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 235 'PublicCreateUserV3' test.out

#- 236 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'el2RwZD2' \
    --query '17EdReCF' \
    > test.out 2>&1
eval_tap $? 236 'CheckUserAvailability' test.out

#- 237 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["OBoCnCdm", "WYNbd7QB", "tKwdFIJ7"]}' \
    > test.out 2>&1
eval_tap $? 237 'PublicBulkGetUsers' test.out

#- 238 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "fmk5H2pP", "languageTag": "C6ign4CI"}' \
    > test.out 2>&1
eval_tap $? 238 'PublicSendRegistrationCode' test.out

#- 239 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "2PcACD0e", "emailAddress": "6rYcWGvb"}' \
    > test.out 2>&1
eval_tap $? 239 'PublicVerifyRegistrationCode' test.out

#- 240 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "VnnrjOLY", "languageTag": "mfP6IrEg"}' \
    > test.out 2>&1
eval_tap $? 240 'PublicForgotPasswordV3' test.out

#- 241 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'x1AUiQzw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 241 'GetAdminInvitationV3' test.out

#- 242 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'S8pL40x6' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "TbJi8tSR", "policyId": "L0qiY2Ce", "policyVersionId": "kwONRua9"}, {"isAccepted": true, "localizedPolicyVersionId": "cxfqiuEn", "policyId": "7n2IFetP", "policyVersionId": "bxAaYI63"}, {"isAccepted": false, "localizedPolicyVersionId": "5YZRnP11", "policyId": "YMKjhkTx", "policyVersionId": "Cp1M6LKi"}], "authType": "EMAILPASSWD", "country": "s18r8fB7", "dateOfBirth": "XczxCOE9", "displayName": "wmu0pUl6", "password": "X0Z8Z3QL", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 242 'CreateUserFromInvitationV3' test.out

#- 243 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "zyeEx4XZ", "country": "SJyja9r4", "dateOfBirth": "3v8pnM2J", "displayName": "u0Y0Ze3M", "languageTag": "xzMux2na", "userName": "Zm2u8FyU"}' \
    > test.out 2>&1
eval_tap $? 243 'UpdateUserV3' test.out

#- 244 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "REdzPcY3", "country": "VeCb7qMy", "dateOfBirth": "kZ1tPaeN", "displayName": "fpeWM9c2", "languageTag": "yh9wt3ER", "userName": "9nSijR0q"}' \
    > test.out 2>&1
eval_tap $? 244 'PublicPartialUpdateUserV3' test.out

#- 245 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "Q0tUTiW8", "emailAddress": "aSAbRLjw", "languageTag": "dySZ0M61"}' \
    > test.out 2>&1
eval_tap $? 245 'PublicSendVerificationCodeV3' test.out

#- 246 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "aLldaTSS", "contactType": "xhwEHCKk", "languageTag": "g0b1H0pz", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 246 'PublicUserVerificationV3' test.out

#- 247 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "VgGOX3k5", "country": "D6rzzPwc", "dateOfBirth": "zoDWuXED", "displayName": "fuCwe2La", "emailAddress": "v0DFTrgB", "password": "FJwQCrNP", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 247 'PublicUpgradeHeadlessAccountV3' test.out

#- 248 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "U3qIgjn6", "password": "uOvEjn9s"}' \
    > test.out 2>&1
eval_tap $? 248 'PublicVerifyHeadlessAccountV3' test.out

#- 249 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "USmBJAQk", "newPassword": "uvSNP0rK", "oldPassword": "06gA0ifI"}' \
    > test.out 2>&1
eval_tap $? 249 'PublicUpdatePasswordV3' test.out

#- 250 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'yGmwwKlB' \
    > test.out 2>&1
eval_tap $? 250 'PublicCreateJusticeUser' test.out

#- 251 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'B9Qo1na9' \
    --redirectUri 'psyxZHfF' \
    --ticket 'Dboh2y0M' \
    > test.out 2>&1
eval_tap $? 251 'PublicPlatformLinkV3' test.out

#- 252 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'JbhSXV4A' \
    --body '{"platformNamespace": "Ps3r6fsI"}' \
    > test.out 2>&1
eval_tap $? 252 'PublicPlatformUnlinkV3' test.out

#- 253 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ti6q5nMg' \
    > test.out 2>&1
eval_tap $? 253 'PublicPlatformUnlinkAllV3' test.out

#- 254 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'YOIMiFsT' \
    --ticket 'uX3kdsm1' \
    > test.out 2>&1
eval_tap $? 254 'PublicForcePlatformLinkV3' test.out

#- 255 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId '7nekfsQn' \
    --clientId 'l7LwtwvN' \
    --redirectUri 'xueBtEBm' \
    > test.out 2>&1
eval_tap $? 255 'PublicWebLinkPlatform' test.out

#- 256 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'DthxIzsw' \
    --state 'NcKSW2qZ' \
    > test.out 2>&1
eval_tap $? 256 'PublicWebLinkPlatformEstablish' test.out

#- 257 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "De6PLITV", "emailAddress": "J07Lbeas", "newPassword": "4keqdK9K"}' \
    > test.out 2>&1
eval_tap $? 257 'ResetPasswordV3' test.out

#- 258 PublicGetUserByUserIdV3
samples/cli/sample-apps Iam publicGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Mgd7meII' \
    > test.out 2>&1
eval_tap $? 258 'PublicGetUserByUserIdV3' test.out

#- 259 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'oJWlTufB' \
    --activeOnly 'false' \
    --after 'O03cyyO8' \
    --before 'rvYZEiZD' \
    --limit '5' \
    > test.out 2>&1
eval_tap $? 259 'PublicGetUserBanHistoryV3' test.out

#- 260 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'onDXds3N' \
    > test.out 2>&1
eval_tap $? 260 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 261 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PJp1p8ls' \
    > test.out 2>&1
eval_tap $? 261 'PublicGetUserInformationV3' test.out

#- 262 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'oNyHRu50' \
    --after '0.40125308167123197' \
    --before '0.2872316759190714' \
    --limit '90' \
    > test.out 2>&1
eval_tap $? 262 'PublicGetUserLoginHistoriesV3' test.out

#- 263 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'MESu7uH9' \
    --after 'Gm2CS5oa' \
    --before 'Il8s6uxi' \
    --limit '37' \
    > test.out 2>&1
eval_tap $? 263 'PublicGetUserPlatformAccountsV3' test.out

#- 264 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'AdDtyZAv' \
    > test.out 2>&1
eval_tap $? 264 'PublicListJusticePlatformAccountsV3' test.out

#- 265 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '8hP7GuJo' \
    --body '{"platformId": "UBGCnXXR", "platformUserId": "u9Jrq9ar"}' \
    > test.out 2>&1
eval_tap $? 265 'PublicLinkPlatformAccount' test.out

#- 266 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId '346T6H65' \
    --body '{"chosenNamespaces": ["ocMQ0NKK", "0LyPgg01", "z4PpjAEV"], "requestId": "xXTlVAAg"}' \
    > test.out 2>&1
eval_tap $? 266 'PublicForceLinkPlatformWithProgression' test.out

#- 267 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Tg0TXKIr' \
    > test.out 2>&1
eval_tap $? 267 'PublicGetPublisherUserV3' test.out

#- 268 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vJvXe40o' \
    --password 'hz0e6ClX' \
    > test.out 2>&1
eval_tap $? 268 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 269 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'URnwl0oU' \
    --before 'uKBxcmEh' \
    --isWildcard 'false' \
    --limit '73' \
    > test.out 2>&1
eval_tap $? 269 'PublicGetRolesV3' test.out

#- 270 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId '2dAOocf4' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetRoleV3' test.out

#- 271 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 271 'PublicGetMyUserV3' test.out

#- 272 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode '7mcz6F1A' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 273 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["ZiYRfYtl", "RZcB5Hx2", "5zlyEpME"], "oneTimeLinkCode": "Wh3fkKht"}' \
    > test.out 2>&1
eval_tap $? 273 'LinkHeadlessAccountToMyAccountV3' test.out

#- 274 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "ypxHWnpk"}' \
    > test.out 2>&1
eval_tap $? 274 'PublicSendVerificationLinkV3' test.out

#- 275 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'LsY16b8r' \
    > test.out 2>&1
eval_tap $? 275 'PublicVerifyUserByLinkV3' test.out

#- 276 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId '7cGefd8e' \
    --code 'qixJCsyu' \
    --error 'e3sasqOk' \
    --state 'asvC054k' \
    > test.out 2>&1
eval_tap $? 276 'PlatformAuthenticateSAMLV3Handler' test.out

#- 277 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'VNkmiyhg' \
    --payload '2bJTMJm2' \
    > test.out 2>&1
eval_tap $? 277 'LoginSSOClient' test.out

#- 278 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'lAgv5rmS' \
    > test.out 2>&1
eval_tap $? 278 'LogoutSSOClient' test.out

#- 279 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --code 'p77KFloK' \
    > test.out 2>&1
eval_tap $? 279 'RequestGameTokenResponseV3' test.out

#- 280 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'oVnl9Dfw' \
    > test.out 2>&1
eval_tap $? 280 'AdminGetDevicesByUserV4' test.out

#- 281 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'O0JjT8TW' \
    --endDate 'hz3OuoHb' \
    --limit '57' \
    --offset '70' \
    --startDate 'UDuoYojO' \
    > test.out 2>&1
eval_tap $? 281 'AdminGetBannedDevicesV4' test.out

#- 282 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId '7GNoJ0pj' \
    > test.out 2>&1
eval_tap $? 282 'AdminGetUserDeviceBansV4' test.out

#- 283 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "XQEn44F7", "deviceId": "CgsPqKZj", "deviceType": "XMryOEJs", "enabled": false, "endDate": "6xhwO7sk", "ext": {"JWxSIQAG": {}, "TfOllX8q": {}, "ebrN2WTf": {}}, "reason": "ZOnhTMAR"}' \
    > test.out 2>&1
eval_tap $? 283 'AdminBanDeviceV4' test.out

#- 284 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'c7R1eC38' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 284 'AdminGetDeviceBanV4' test.out

#- 285 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId '5LhjPRIJ' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 285 'AdminUpdateDeviceBanV4' test.out

#- 286 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'GkOMuAe0' \
    --startDate '27IqeYjJ' \
    --deviceType 'LtgI0SCo' \
    > test.out 2>&1
eval_tap $? 286 'AdminGenerateReportV4' test.out

#- 287 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 287 'AdminGetDeviceTypesV4' test.out

#- 288 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'qcEUlKZx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 288 'AdminGetDeviceBansV4' test.out

#- 289 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'pS3pqxDg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 289 'AdminDecryptDeviceV4' test.out

#- 290 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'JxYSVM4c' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'AdminUnbanDeviceV4' test.out

#- 291 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'E02KRDQW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 291 'AdminGetUsersByDeviceV4' test.out

#- 292 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 3}' \
    > test.out 2>&1
eval_tap $? 292 'AdminCreateTestUsersV4' test.out

#- 293 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["A9t8vSNi", "PzSWdork", "cbQfiELN"]}' \
    > test.out 2>&1
eval_tap $? 293 'AdminBulkCheckValidUserIDV4' test.out

#- 294 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ydOQ1fYf' \
    --body '{"avatarUrl": "65NigWR7", "country": "6xX0UtVc", "dateOfBirth": "qWlHndvU", "displayName": "bgmU8N1j", "languageTag": "i91MK1Oy", "userName": "QFTQ27U3"}' \
    > test.out 2>&1
eval_tap $? 294 'AdminUpdateUserV4' test.out

#- 295 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'RxKva9yf' \
    --body '{"code": "miVqZVlk", "emailAddress": "yhRTcKcE"}' \
    > test.out 2>&1
eval_tap $? 295 'AdminUpdateUserEmailAddressV4' test.out

#- 296 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'AIUQKKHo' \
    > test.out 2>&1
eval_tap $? 296 'AdminDisableUserMFAV4' test.out

#- 297 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'UYNp7Weu' \
    > test.out 2>&1
eval_tap $? 297 'AdminListUserRolesV4' test.out

#- 298 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'op4ot6g0' \
    --body '{"assignedNamespaces": ["wbKME7pX", "hrH6F2jW", "G6uYgXjr"], "roleId": "qqNTGA5R"}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateUserRoleV4' test.out

#- 299 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '6BTdq66u' \
    --body '{"assignedNamespaces": ["pznD2skp", "J3Rrja44", "VsObW6hy"], "roleId": "QDLXr2DN"}' \
    > test.out 2>&1
eval_tap $? 299 'AdminAddUserRoleV4' test.out

#- 300 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '0q9twvkz' \
    --body '{"assignedNamespaces": ["oRSG4oer", "RKJYXP1L", "TJXnTKHY"], "roleId": "NllTrsCM"}' \
    > test.out 2>&1
eval_tap $? 300 'AdminRemoveUserRoleV4' test.out

#- 301 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'true' \
    --limit '54' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 301 'AdminGetRolesV4' test.out

#- 302 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "lZyr0H5w"}' \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateRoleV4' test.out

#- 303 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'xbaxcgQq' \
    > test.out 2>&1
eval_tap $? 303 'AdminGetRoleV4' test.out

#- 304 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'uwfamsCU' \
    > test.out 2>&1
eval_tap $? 304 'AdminDeleteRoleV4' test.out

#- 305 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId '4iXZeqYM' \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "vAjSUc2E"}' \
    > test.out 2>&1
eval_tap $? 305 'AdminUpdateRoleV4' test.out

#- 306 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'TGO79GfL' \
    --body '{"permissions": [{"action": 43, "resource": "jifxlhDe", "schedAction": 85, "schedCron": "aKz8HgUz", "schedRange": ["lhOaoU9W", "LqZ2R9rH", "FL8ghTVU"]}, {"action": 77, "resource": "8uaNuGzi", "schedAction": 27, "schedCron": "ssSsgm2T", "schedRange": ["sP8ugkLS", "lKVvKGct", "i8RIyBal"]}, {"action": 24, "resource": "pzC6Azva", "schedAction": 30, "schedCron": "ODEqt6bP", "schedRange": ["XSEgWthm", "PxVYWWyo", "t8VOZFre"]}]}' \
    > test.out 2>&1
eval_tap $? 306 'AdminUpdateRolePermissionsV4' test.out

#- 307 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'VekGxKAh' \
    --body '{"permissions": [{"action": 18, "resource": "VZlKQ56r", "schedAction": 87, "schedCron": "ebdUsnDR", "schedRange": ["lsBPtTfB", "WUbIQevn", "CCLLcFij"]}, {"action": 67, "resource": "SHBC3ysC", "schedAction": 97, "schedCron": "gnP1nd4l", "schedRange": ["xhrEHbYy", "ETpOhN2G", "B8IWsKpD"]}, {"action": 42, "resource": "L3GZ4FK4", "schedAction": 18, "schedCron": "vuamJEiP", "schedRange": ["0Y6anF2E", "qanUPe3B", "YQ3d3WiL"]}]}' \
    > test.out 2>&1
eval_tap $? 307 'AdminAddRolePermissionsV4' test.out

#- 308 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'um50AsUg' \
    --body '["b7wf3Isn", "x0ex8bCr", "gVMpjxVq"]' \
    > test.out 2>&1
eval_tap $? 308 'AdminDeleteRolePermissionsV4' test.out

#- 309 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId '44mzXTCW' \
    --after 'TmJjH8b6' \
    --before 'IoFjdDXu' \
    --limit '34' \
    > test.out 2>&1
eval_tap $? 309 'AdminListAssignedUsersV4' test.out

#- 310 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'jKc3M54D' \
    --body '{"assignedNamespaces": ["YyfUSEVZ", "gCMdrvrb", "IYMdBdEG"], "namespace": "ckxb3ox0", "userId": "TWXOViK2"}' \
    > test.out 2>&1
eval_tap $? 310 'AdminAssignUserToRoleV4' test.out

#- 311 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'IxgW3wpq' \
    --body '{"namespace": "5NwudeH5", "userId": "G7nLOUxD"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminRevokeUserFromRoleV4' test.out

#- 312 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "2pSkLGfm", "country": "mfvUERFT", "dateOfBirth": "IKxjg9hI", "displayName": "4ke6IBGG", "languageTag": "T8xvlfsx", "userName": "sp17MBlN"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminUpdateMyUserV4' test.out

#- 313 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 313 'AdminDisableMyAuthenticatorV4' test.out

#- 314 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'uMQKxBTd' \
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
    --code '3PhgXMLU' \
    > test.out 2>&1
eval_tap $? 323 'AdminEnableMyEmailV4' test.out

#- 324 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 324 'AdminGetMyEnabledFactorsV4' test.out

#- 325 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'WRHYjyZF' \
    > test.out 2>&1
eval_tap $? 325 'AdminMakeFactorMyDefaultV4' test.out

#- 326 AdminInviteUserV4
samples/cli/sample-apps Iam adminInviteUserV4 \
    --body '{"assignedNamespaces": ["eHMLxHFP", "ogCasbx1", "Sdq6qh7q"], "emailAddresses": ["JWJNEk1p", "jIKAiBBk", "9pYIZg6e"], "isAdmin": false, "namespace": "BsFBEeZe", "roleId": "grVfmrln"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminInviteUserV4' test.out

#- 327 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "me7Fpe6Z", "policyId": "Ndis9vYd", "policyVersionId": "XaN4UGwj"}, {"isAccepted": true, "localizedPolicyVersionId": "CW93eb6F", "policyId": "IOdeCf8H", "policyVersionId": "n0ZRQAj1"}, {"isAccepted": true, "localizedPolicyVersionId": "doUx4Ixq", "policyId": "Al81wyyV", "policyVersionId": "IZmPklk5"}], "authType": "EMAILPASSWD", "country": "FCKTDBfE", "dateOfBirth": "qCCiSgLc", "displayName": "BZECBfbs", "emailAddress": "OEUEDDvi", "password": "na9tyeW6", "passwordMD5Sum": "fYjv8ECT", "username": "LzHOvvqA", "verified": false}' \
    > test.out 2>&1
eval_tap $? 327 'PublicCreateTestUserV4' test.out

#- 328 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "oTV0TCsl", "policyId": "iYxGbi3f", "policyVersionId": "hLEKL6CV"}, {"isAccepted": false, "localizedPolicyVersionId": "PGRa1vwZ", "policyId": "EP9wouxN", "policyVersionId": "THtjzVbE"}, {"isAccepted": true, "localizedPolicyVersionId": "D37l04Bf", "policyId": "XAkHM1U2", "policyVersionId": "GbzcHUnz"}], "authType": "EMAILPASSWD", "code": "sW0Xp4rr", "country": "XojrT8Hc", "dateOfBirth": "mz6rwSMd", "displayName": "QfBAv8R5", "emailAddress": "FvI3Dx8b", "password": "XPCQxboa", "passwordMD5Sum": "Xe9c6kFC", "reachMinimumAge": true, "username": "SuNROr7s"}' \
    > test.out 2>&1
eval_tap $? 328 'PublicCreateUserV4' test.out

#- 329 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'Y44TLXoU' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "idF43GKn", "policyId": "bbqqOen7", "policyVersionId": "0CGxzRPO"}, {"isAccepted": false, "localizedPolicyVersionId": "F74noC7o", "policyId": "PeMDMhhG", "policyVersionId": "f0xPejzE"}, {"isAccepted": true, "localizedPolicyVersionId": "0FVpePkG", "policyId": "uWKWlWkF", "policyVersionId": "p9uqpDaA"}], "authType": "EMAILPASSWD", "country": "2LNJ0Hps", "dateOfBirth": "YZd1b9Qd", "displayName": "hNBDv1Ii", "password": "OxQosL2Y", "reachMinimumAge": false, "username": "XEadI9to"}' \
    > test.out 2>&1
eval_tap $? 329 'CreateUserFromInvitationV4' test.out

#- 330 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "KyUA0k3K", "country": "DeJUYnFh", "dateOfBirth": "DHKhhZ6y", "displayName": "cU0TSB15", "languageTag": "RuLIbU5q", "userName": "rEUTFGfL"}' \
    > test.out 2>&1
eval_tap $? 330 'PublicUpdateUserV4' test.out

#- 331 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "8mrlesJQ", "emailAddress": "snjguXWt"}' \
    > test.out 2>&1
eval_tap $? 331 'PublicUpdateUserEmailAddressV4' test.out

#- 332 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "884PfzIO", "country": "YuG1reJB", "dateOfBirth": "N0FzH03A", "displayName": "gG4PRrzD", "emailAddress": "4jpcSfEf", "password": "9GrcjLxI", "reachMinimumAge": false, "username": "5dLslt9p", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 332 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 333 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "smyOxqHC", "password": "Lxn3D4Wt", "username": "SzLqwQOd"}' \
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
    --code 'NmJfoRvO' \
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
    --code 'odX9vxCB' \
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
    --factor 'gmJ7t0SZ' \
    > test.out 2>&1
eval_tap $? 347 'PublicMakeFactorMyDefaultV4' test.out

#- 348 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"emailAddress": "0dkVrkAN", "namespace": "ktxrnsGx", "namespaceDisplayName": "lqvJ8Sce"}' \
    > test.out 2>&1
eval_tap $? 348 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE