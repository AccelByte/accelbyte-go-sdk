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
echo "1..321"

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
    --body '[{"field": "B414a30j", "validation": {"allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "blockedWord": ["lb6KH2lR", "T9DRD2ml", "E6olZPIC"], "description": [{"language": "hV7E3GOr", "message": ["RX1XDsyG", "r8xD2CXY", "QCMHJtVg"]}, {"language": "hYpp0eqg", "message": ["6vdieXI3", "ZsfEY6hQ", "WmzGLysA"]}, {"language": "jRaGli0F", "message": ["9UENVkYN", "WCjHCF2j", "erWxa4an"]}], "isCustomRegex": false, "letterCase": "J8DJb8Xe", "maxLength": 60, "maxRepeatingAlphaNum": 100, "maxRepeatingSpecialCharacter": 90, "minCharType": 3, "minLength": 86, "regex": "JudS3BGJ", "specialCharacterLocation": "xXsdh6hK", "specialCharacters": ["Mrl1Hv6R", "z0rnx3I1", "bYGNlLu7"]}}, {"field": "JKi3UT6n", "validation": {"allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "blockedWord": ["CbhuKrp5", "9XkohjZ5", "9Cr062Tm"], "description": [{"language": "YOgzkVbu", "message": ["aqoDEANd", "NUOCA4uG", "z7BgFljT"]}, {"language": "KWiCMZGy", "message": ["agL5k3I7", "Jsdh2x7C", "RN7oyhYQ"]}, {"language": "4CVMDo4M", "message": ["0JdZwB9q", "03eOkOtA", "ZbYZk6eA"]}], "isCustomRegex": true, "letterCase": "TYq4j0uf", "maxLength": 40, "maxRepeatingAlphaNum": 51, "maxRepeatingSpecialCharacter": 79, "minCharType": 5, "minLength": 95, "regex": "fZ4If3qG", "specialCharacterLocation": "r5Lyhkc7", "specialCharacters": ["ocoBLiAc", "gpiTGe1L", "Xn46DTRJ"]}}, {"field": "RDAwMOL1", "validation": {"allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "blockedWord": ["UrS84amo", "YUNkmd5z", "12eG2lrL"], "description": [{"language": "8xViWopV", "message": ["dZOHyDAU", "ymB2pXrp", "mQzo5iCf"]}, {"language": "XemA3qHX", "message": ["fr6kJSQt", "JoEgFkCP", "XwUD9Iv7"]}, {"language": "EG6XvAWk", "message": ["EB2t7nf1", "NohnOwve", "KjYFKPzw"]}], "isCustomRegex": true, "letterCase": "v39WYZfP", "maxLength": 73, "maxRepeatingAlphaNum": 75, "maxRepeatingSpecialCharacter": 75, "minCharType": 32, "minLength": 56, "regex": "bO0N1jU7", "specialCharacterLocation": "jrGzDfOG", "specialCharacters": ["LpUEPdij", "2gJzaV3d", "BKCR6Kof"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'D116ns2v' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'KnGypXk2' \
    --before 'HIUSSRJy' \
    --limit '67' \
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
    --body '{"ageRestriction": 8, "enable": true}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'L7iQtlN2' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 63}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'x99XhXFP' \
    --limit '63' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "BrxcdbJw", "comment": "EpKVS0xY", "endDate": "0OGGphG1", "reason": "tgXJruPA", "skipNotif": true, "userIds": ["hDyk7i34", "BgRYHfn1", "fYocOHBi"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "J163cRFh", "userId": "Bcmi5pyx"}, {"banId": "QQmDgvwC", "userId": "8jtOPfhZ"}, {"banId": "ni2Y64R3", "userId": "DXYElAXX"}]}' \
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
    --limit '65' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["OjM9Ibc4", "rCN9jN6I", "NexkeNfp"], "baseUri": "oIqconVi", "clientId": "4cqCxSY4", "clientName": "EkARSARV", "clientPermissions": [{"action": 41, "resource": "LolUHahQ", "schedAction": 12, "schedCron": "AwLkeowS", "schedRange": ["58lMlLFc", "gldeC7Kx", "1GU5cxhj"]}, {"action": 50, "resource": "GnuO4UM3", "schedAction": 77, "schedCron": "7RFA8VpM", "schedRange": ["j6ax0ywS", "jf58atWy", "6K7gocHq"]}, {"action": 71, "resource": "nCzTO6MV", "schedAction": 86, "schedCron": "AD1cXI9R", "schedRange": ["phLbSYqU", "4jYLlRjr", "EmelTkNg"]}], "clientPlatform": "IvLIVvkK", "deletable": false, "namespace": "pOnO5SPw", "oauthClientType": "GMXCxpxa", "redirectUri": "BBVkXrkt", "secret": "HLS5D55a"}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId '23R4knlR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'cHpF2Oyy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'hkJ2Lh8n' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["OKRYojQH", "cgl8QBEN", "4LbmEzKZ"], "baseUri": "vJY4lcmr", "clientName": "nfR6uCJy", "clientPermissions": [{"action": 44, "resource": "HoMEehcF", "schedAction": 86, "schedCron": "bOtgHKQ5", "schedRange": ["ENt5Q1aS", "ApdCNPuq", "cchf0qtg"]}, {"action": 27, "resource": "Jr0i01zA", "schedAction": 79, "schedCron": "USvebPD4", "schedRange": ["jkYrFRne", "7gYgIowD", "oFgJpeIz"]}, {"action": 97, "resource": "kHOrBBr2", "schedAction": 80, "schedCron": "Rww3DN5p", "schedRange": ["fnDc3Yre", "n05rrvEL", "6dFGISTh"]}], "clientPlatform": "AzcR1kpO", "deletable": true, "namespace": "rjQBjeOW", "redirectUri": "PbUeFXJ3"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'RV7xKjjh' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 31, "resource": "l1zRr6Qk"}, {"action": 85, "resource": "zlhjvaMN"}, {"action": 77, "resource": "45akAs3T"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'MWt6lZzx' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 30, "resource": "NYnGxyYN"}, {"action": 57, "resource": "Vnorr2RH"}, {"action": 63, "resource": "v1QL5OOW"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '50' \
    --clientId 'xq9wPcge' \
    --namespace $AB_NAMESPACE \
    --resource 'YmOkgByr' \
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
    --limit '85' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 130 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 131 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Xgxa3ZMB' \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'wn7iFevT' \
    --body '{"ACSURL": "JbMYDW7V", "AWSCognitoRegion": "ZKrgG5jF", "AWSCognitoUserPool": "PXUBcnNJ", "AllowedClients": ["vEYN7hG5", "c5tPy5Ui", "usWGlpUG"], "AppId": "TxoSVcIH", "AuthorizationEndpoint": "VOFhCYNw", "ClientId": "Bh9llPwm", "Environment": "8HYFenRk", "FederationMetadataURL": "hwhuD3hX", "GenericOauthFlow": false, "IsActive": false, "Issuer": "0cR3Tw4k", "JWKSEndpoint": "HKRBq1nx", "KeyID": "j4Xbh7Sl", "NetflixCertificates": {"encryptedPrivateKey": "TKPmWiS0", "encryptedPrivateKeyName": "RPmKNqNW", "publicCertificate": "WqmpFVZD", "publicCertificateName": "gZBScKC3", "rootCertificate": "bVDxlKPg", "rootCertificateName": "nV0TQs7w"}, "OrganizationId": "waMAHGBj", "PlatformName": "mJVZGxpc", "RedirectUri": "fWdU2X2r", "RegisteredDomains": [{"affectedClientIDs": ["xQuUcJI0", "ksbuEUVd", "PLc5nhX8"], "domain": "PkjAXNWk", "namespaces": ["zBT72Fan", "zV4dm9He", "PMyzGGkx"], "roleId": "OFZlQ14c"}, {"affectedClientIDs": ["UvLefakF", "1CFmQVGF", "ccVV4F38"], "domain": "nHwHOCcR", "namespaces": ["0qmRYqvG", "UMV6ZzQv", "JzwT5hUE"], "roleId": "ABDihcrQ"}, {"affectedClientIDs": ["oMFRpQxQ", "PUEC6gYB", "p8csXXT2"], "domain": "nNwAOYnv", "namespaces": ["GIV2mqto", "ky7eQSmD", "vnobtGvj"], "roleId": "DQh2U7Ai"}], "Secret": "o1qQjVXR", "TeamID": "pSAo5qx8", "TokenAuthenticationType": "lucy5IlC", "TokenClaimsMapping": {"YNBSB57x": "rFZaBjwf", "MaV46fsw": "4NM4MO5i", "Z7qA851Q": "6rvBuBlS"}, "TokenEndpoint": "wdp5GVfY"}' \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'AbRzEHh7' \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'KwInbbfX' \
    --body '{"ACSURL": "hVMXO4zI", "AWSCognitoRegion": "n7U3RmUH", "AWSCognitoUserPool": "BwZbXGIj", "AllowedClients": ["2IVcE0kU", "GDElmjVt", "CY6lTdIa"], "AppId": "QgroXFo7", "AuthorizationEndpoint": "sgAv5dnE", "ClientId": "2l3JPhbR", "Environment": "kvYU0sTt", "FederationMetadataURL": "5cmLIRFG", "GenericOauthFlow": false, "IsActive": false, "Issuer": "W6IHE7La", "JWKSEndpoint": "KvWeadqC", "KeyID": "gQmBCo4S", "NetflixCertificates": {"encryptedPrivateKey": "d1jyHExR", "encryptedPrivateKeyName": "2gdPwYR8", "publicCertificate": "Q2DLCZFM", "publicCertificateName": "8FdLhDdq", "rootCertificate": "9FE0vu6y", "rootCertificateName": "lTzZ8U4b"}, "OrganizationId": "hi26dxQg", "PlatformName": "LmNWNmpb", "RedirectUri": "sW6nObWS", "RegisteredDomains": [{"affectedClientIDs": ["k1KttWEz", "xplWDmdt", "xGnodzVS"], "domain": "P2whCgNw", "namespaces": ["KUQRMET6", "G9YtFSCI", "ZrzLqVja"], "roleId": "xVP9iC9A"}, {"affectedClientIDs": ["bBaIzpEl", "dpwtAcNa", "c7yO6hQd"], "domain": "k6S4Q8ss", "namespaces": ["MTMMw3Df", "JbNsjAiO", "ye3zY0Mh"], "roleId": "FT2TE5GL"}, {"affectedClientIDs": ["BeYABTHZ", "YynBX9FT", "yET1qthY"], "domain": "FYYSUFBB", "namespaces": ["sA0S7BIC", "j5I6WP5E", "jOl4gx5J"], "roleId": "SKk8407T"}], "Secret": "ueSVNBJH", "TeamID": "x4MEXusc", "TokenAuthenticationType": "aa7p3Sgs", "TokenClaimsMapping": {"xkz0wEYq": "omyL4orE", "L0Ze7bsH": "SmjOyQb7", "gYGn69AY": "mKBnRb0t"}, "TokenEndpoint": "gQFtYbau"}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9fytEUPI' \
    --body '{"affectedClientIDs": ["Sue195Pd", "C2MakA3g", "ALD3ic24"], "assignedNamespaces": ["l82BkBeA", "jdk9t8zf", "Q0RuaulD"], "domain": "y7wvCH9B", "roleId": "vmmqRBb0"}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'pag0cMVs' \
    --body '{"domain": "PH2BAipL"}' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'k0YNGfK8' \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'XsIMa24K' \
    --body '{"acsUrl": "hwcIUi0u", "apiKey": "F0rOAetg", "appId": "cPvqeVrE", "federationMetadataUrl": "Z4Nz1cFX", "isActive": true, "redirectUri": "VwVD7gJM", "secret": "EYIq2cQc", "ssoUrl": "65cbBAAy"}' \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'e44Nn3rk' \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'sg0cWR3K' \
    --body '{"acsUrl": "tM9QemSl", "apiKey": "X0Cfxk1b", "appId": "WMd2JHVw", "federationMetadataUrl": "B9fOkHMh", "isActive": false, "redirectUri": "yt6IkXzH", "secret": "CZXirykl", "ssoUrl": "tjEVmN60"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '8ioHm7EP' \
    --platformUserId 'kPSPcjDw' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'v9LZSkc0' \
    --after '16' \
    --before '63' \
    --limit '0' \
    > test.out 2>&1
eval_tap $? 142 'GetAdminUsersByRoleIdV3' test.out

#- 143 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'Zxjtah7P' \
    > test.out 2>&1
eval_tap $? 143 'AdminGetUserByEmailAddressV3' test.out

#- 144 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["RRxAa3Lb", "R0cR2imN", "Fx13RVda"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["ZYkZ37rh", "vvv4SN13", "KorEgKv6"], "isAdmin": true, "roles": ["LxC4z8yo", "QybrHzhc", "a2jKXasQ"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 146 'AdminListUsersV3' test.out

#- 147 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'dOrilG2i' \
    --endDate '76TdBXWW' \
    --limit '96' \
    --offset '97' \
    --platformBy 'qVGsMRT7' \
    --platformId '50SBUCgp' \
    --query 'vC7B7WL1' \
    --startDate 'QkAJudEZ' \
    > test.out 2>&1
eval_tap $? 147 'AdminSearchUserV3' test.out

#- 148 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["W4SI1v8l", "WepAcODi", "zcgtErG7"]}' \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserByEmailAddressV3' test.out

#- 149 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LxSlnNza' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetUserByUserIdV3' test.out

#- 150 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RiBSuZtZ' \
    --body '{"avatarUrl": "ngq7Bg97", "country": "xIlob7bC", "dateOfBirth": "readpC7j", "displayName": "TSdjkqlm", "languageTag": "zw4mL8Ai", "userName": "r3OSKcgk"}' \
    > test.out 2>&1
eval_tap $? 150 'AdminUpdateUserV3' test.out

#- 151 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'y4cjWeEd' \
    --activeOnly 'false' \
    --after 'DEUYn6PL' \
    --before 'jyp3BBbM' \
    --limit '19' \
    > test.out 2>&1
eval_tap $? 151 'AdminGetUserBanV3' test.out

#- 152 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '7NkmKobG' \
    --body '{"ban": "fr61de5J", "comment": "IhCQy2re", "endDate": "jE8RAJKM", "reason": "ch71eixk", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 152 'AdminBanUserV3' test.out

#- 153 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId '1nbYYXYq' \
    --namespace $AB_NAMESPACE \
    --userId 'Bmq4EbCs' \
    --body '{"enabled": false, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 153 'AdminUpdateUserBanV3' test.out

#- 154 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'AAxOpnZ7' \
    --body '{"context": "qP9RmWtk", "emailAddress": "uzQXAcle", "languageTag": "rNC3fB3x"}' \
    > test.out 2>&1
eval_tap $? 154 'AdminSendVerificationCodeV3' test.out

#- 155 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EGsnbLhs' \
    --body '{"Code": "5TvhNNsL", "ContactType": "8pPbhqLD", "LanguageTag": "QoGF3gIg", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 155 'AdminVerifyAccountV3' test.out

#- 156 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId '63KphRjF' \
    > test.out 2>&1
eval_tap $? 156 'GetUserVerificationCode' test.out

#- 157 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'GLYXQWV9' \
    > test.out 2>&1
eval_tap $? 157 'AdminGetUserDeletionStatusV3' test.out

#- 158 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DHgEjA3c' \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 158 'AdminUpdateUserDeletionStatusV3' test.out

#- 159 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ffg5OG1R' \
    --body '{"code": "ANkBoq8r", "country": "Uu9kP7gb", "dateOfBirth": "n1shubV1", "displayName": "ZF4qqA2O", "emailAddress": "Q2iKiltg", "password": "nkn5CT14", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 159 'AdminUpgradeHeadlessAccountV3' test.out

#- 160 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vgi4myN6' \
    > test.out 2>&1
eval_tap $? 160 'AdminDeleteUserInformationV3' test.out

#- 161 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '7CoKSqQw' \
    --after '0.4676544011289845' \
    --before '0.7220391431615614' \
    --limit '71' \
    > test.out 2>&1
eval_tap $? 161 'AdminGetUserLoginHistoriesV3' test.out

#- 162 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Rv3ftVKE' \
    --body '{"languageTag": "FD3cfnFL", "newPassword": "z0WRPI5L", "oldPassword": "gUryx14y"}' \
    > test.out 2>&1
eval_tap $? 162 'AdminResetPasswordV3' test.out

#- 163 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kaa7oyRD' \
    --body '{"Permissions": [{"Action": 27, "Resource": "1r0gnVmA", "SchedAction": 28, "SchedCron": "zT0Nq092", "SchedRange": ["LH5Xm7si", "EWvq8da0", "K4tFyVBd"]}, {"Action": 56, "Resource": "4VgjpDQY", "SchedAction": 62, "SchedCron": "N19qCUgG", "SchedRange": ["mW2TVANO", "HxM2BB8t", "XNZc5uV1"]}, {"Action": 88, "Resource": "Hi8s4O19", "SchedAction": 55, "SchedCron": "6KaTDMM0", "SchedRange": ["ms8Vqv7C", "Wyqw2vz6", "yYTfHYKx"]}]}' \
    > test.out 2>&1
eval_tap $? 163 'AdminUpdateUserPermissionV3' test.out

#- 164 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'MlxHHCy1' \
    --body '{"Permissions": [{"Action": 56, "Resource": "Y2RM1icx", "SchedAction": 60, "SchedCron": "SeBwfSvc", "SchedRange": ["SL09imPB", "8143D4NP", "zRIXN4ES"]}, {"Action": 54, "Resource": "Lx6khoX1", "SchedAction": 22, "SchedCron": "LohZW1Xj", "SchedRange": ["Ly8CPzFj", "F0nE55yI", "HiZkPtrk"]}, {"Action": 15, "Resource": "pMBrCFWW", "SchedAction": 36, "SchedCron": "Vo6uPHGz", "SchedRange": ["PnGBbAj3", "00m2Llv6", "2vRBBAvP"]}]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminAddUserPermissionsV3' test.out

#- 165 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'H7VOGRs6' \
    --body '[{"Action": 72, "Resource": "k7BOoUxS"}, {"Action": 72, "Resource": "u08U9heU"}, {"Action": 4, "Resource": "6K26PEjR"}]' \
    > test.out 2>&1
eval_tap $? 165 'AdminDeleteUserPermissionBulkV3' test.out

#- 166 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '39' \
    --namespace $AB_NAMESPACE \
    --resource 'Ybkt9hGC' \
    --userId '2VGepJBT' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionV3' test.out

#- 167 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 't26n7e2S' \
    --after 'pANdyyHE' \
    --before '75emJPtU' \
    --limit '42' \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserPlatformAccountsV3' test.out

#- 168 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'TXnqqXBI' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetListJusticePlatformAccounts' test.out

#- 169 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'nGeGtKQK' \
    --userId 'zJvGIz6V' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetUserMapping' test.out

#- 170 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'feeFWwYn' \
    --userId '6N6Im4kN' \
    > test.out 2>&1
eval_tap $? 170 'AdminCreateJusticeUser' test.out

#- 171 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'PPVsm8yq' \
    --body '{"platformId": "FCAksAKB", "platformUserId": "tVTVDERC"}' \
    > test.out 2>&1
eval_tap $? 171 'AdminLinkPlatformAccount' test.out

#- 172 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'KsxOcmnz' \
    --userId 'qo83QqXF' \
    --body '{"platformNamespace": "9y4nc0r4"}' \
    > test.out 2>&1
eval_tap $? 172 'AdminPlatformUnlinkV3' test.out

#- 173 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZS7W4cBr' \
    --userId 'JUMZf2Dk' \
    --ticket 'Jp0ZS1sg' \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformLinkV3' test.out

#- 174 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QR2rsEU6' \
    --body '["2BVQnWZG", "Okv8deh4", "ijyOblnq"]' \
    > test.out 2>&1
eval_tap $? 174 'AdminDeleteUserRolesV3' test.out

#- 175 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId '8HB516rt' \
    --body '[{"namespace": "KEzEczhu", "roleId": "06iJPhOL"}, {"namespace": "46Y4YyE5", "roleId": "s8bLKDCu"}, {"namespace": "jbDKYaSb", "roleId": "0B7UKVi0"}]' \
    > test.out 2>&1
eval_tap $? 175 'AdminSaveUserRoleV3' test.out

#- 176 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'dmktTDKd' \
    --userId 'kEBEyIay' \
    > test.out 2>&1
eval_tap $? 176 'AdminAddUserRoleV3' test.out

#- 177 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'mJcyltt9' \
    --userId '0EG9X7ly' \
    > test.out 2>&1
eval_tap $? 177 'AdminDeleteUserRoleV3' test.out

#- 178 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lNYCae74' \
    --body '{"enabled": true, "reason": "o2Pg3WZQ"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminUpdateUserStatusV3' test.out

#- 179 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Ah7xIDp4' \
    > test.out 2>&1
eval_tap $? 179 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 180 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'A1MJ41Z4' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "tCwXgOwj"}' \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateClientSecretV3' test.out

#- 181 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'HV8r2XFJ' \
    --before 'ZD9F8fOP' \
    --isWildcard 'false' \
    --limit '35' \
    > test.out 2>&1
eval_tap $? 181 'AdminGetRolesV3' test.out

#- 182 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "managers": [{"displayName": "zE3lxjxn", "namespace": "ZOKsSB0F", "userId": "uLvA5BeG"}, {"displayName": "gPRepthT", "namespace": "stbMQs0C", "userId": "qX6VHoYG"}, {"displayName": "cvd9RyCF", "namespace": "lPmRZEKD", "userId": "VG3UjOuu"}], "members": [{"displayName": "DA8O9BXO", "namespace": "7bgqz6c9", "userId": "V0oX7P0r"}, {"displayName": "cWtalhsS", "namespace": "ioI4IR64", "userId": "9Z03RXaY"}, {"displayName": "GTgw5mz9", "namespace": "ah4J49pR", "userId": "d5VlYKtf"}], "permissions": [{"action": 15, "resource": "pOolpnzk", "schedAction": 94, "schedCron": "5vYBueOn", "schedRange": ["Ex4o7dGU", "x6i6heTF", "mgttY2aa"]}, {"action": 12, "resource": "JJ2Yjwom", "schedAction": 87, "schedCron": "FTDgcZ8k", "schedRange": ["ozTuCWyZ", "Bu3Tozf9", "JvvnNRBH"]}, {"action": 58, "resource": "nLI1V36S", "schedAction": 19, "schedCron": "LTgGbBHg", "schedRange": ["TrLG9WSO", "7TylWN7F", "r9cMx6N7"]}], "roleName": "OeUtfz3z"}' \
    > test.out 2>&1
eval_tap $? 182 'AdminCreateRoleV3' test.out

#- 183 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'LYdiy3ps' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRoleV3' test.out

#- 184 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId '6nJ4KZoP' \
    > test.out 2>&1
eval_tap $? 184 'AdminDeleteRoleV3' test.out

#- 185 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'USnKgC1V' \
    --body '{"deletable": true, "isWildcard": true, "roleName": "42X8ONRb"}' \
    > test.out 2>&1
eval_tap $? 185 'AdminUpdateRoleV3' test.out

#- 186 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'eJkxwW5o' \
    > test.out 2>&1
eval_tap $? 186 'AdminGetRoleAdminStatusV3' test.out

#- 187 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'yZ2baEv4' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateAdminRoleStatusV3' test.out

#- 188 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'fvTp8u6q' \
    > test.out 2>&1
eval_tap $? 188 'AdminRemoveRoleAdminV3' test.out

#- 189 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'ndllQFLf' \
    --after 'hK3zHAKq' \
    --before 'N6PV1aAh' \
    --limit '85' \
    > test.out 2>&1
eval_tap $? 189 'AdminGetRoleManagersV3' test.out

#- 190 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'FSVEXmpg' \
    --body '{"managers": [{"displayName": "7mnoIE3n", "namespace": "mYAeCZT6", "userId": "RLPTXzIm"}, {"displayName": "daVYjCni", "namespace": "gcnhntGq", "userId": "GqU7aizX"}, {"displayName": "eq3OpO95", "namespace": "bGssmPzw", "userId": "Ht9xasRh"}]}' \
    > test.out 2>&1
eval_tap $? 190 'AdminAddRoleManagersV3' test.out

#- 191 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'aSbeju14' \
    --body '{"managers": [{"displayName": "elmPRurm", "namespace": "aE5i9Ol9", "userId": "VyuNMj1X"}, {"displayName": "mOcFL8vh", "namespace": "7H1TqxQA", "userId": "kpGoBB5L"}, {"displayName": "BhoMVIxs", "namespace": "a8Y11tES", "userId": "VB35tLoI"}]}' \
    > test.out 2>&1
eval_tap $? 191 'AdminRemoveRoleManagersV3' test.out

#- 192 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'QhgO5LbG' \
    --after '3IgMIEQV' \
    --before 'RVyMovXj' \
    --limit '51' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetRoleMembersV3' test.out

#- 193 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'R25O2d3b' \
    --body '{"members": [{"displayName": "wZ1ZJkOk", "namespace": "jp6xYG5j", "userId": "p8mtsMtR"}, {"displayName": "8v5KcrsH", "namespace": "GwMNFQO9", "userId": "SGIy1Cdc"}, {"displayName": "vdxSjr1b", "namespace": "MBg2b15v", "userId": "1gUYQYH7"}]}' \
    > test.out 2>&1
eval_tap $? 193 'AdminAddRoleMembersV3' test.out

#- 194 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'VNpkwvKJ' \
    --body '{"members": [{"displayName": "FWW7MySu", "namespace": "x58NTacK", "userId": "yt0gdtJU"}, {"displayName": "VmDDBXtD", "namespace": "orhYkRdI", "userId": "N0K8LmbX"}, {"displayName": "dvGe9ALG", "namespace": "8fi9qKx0", "userId": "yC7KTEtt"}]}' \
    > test.out 2>&1
eval_tap $? 194 'AdminRemoveRoleMembersV3' test.out

#- 195 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'BnZ1cEbr' \
    --body '{"permissions": [{"action": 66, "resource": "7SY4nMEF", "schedAction": 44, "schedCron": "9i3jqbUL", "schedRange": ["IfGZ0kPT", "Y0UBCODc", "oShzey15"]}, {"action": 9, "resource": "9LfTofY1", "schedAction": 80, "schedCron": "0L3EFq2C", "schedRange": ["0WWzERCV", "Jk8uSq94", "Z79nwZDh"]}, {"action": 34, "resource": "Wbdc3wnc", "schedAction": 26, "schedCron": "2yO4b5Xd", "schedRange": ["vgQuZjWP", "wXhuNiVS", "LWApIxnn"]}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminUpdateRolePermissionsV3' test.out

#- 196 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'wReS2AQI' \
    --body '{"permissions": [{"action": 40, "resource": "BpgHGTro", "schedAction": 38, "schedCron": "Uz4ap5Sy", "schedRange": ["ViYztqhR", "0Pm5tr9L", "NT5YTSJd"]}, {"action": 27, "resource": "Gtilm7nj", "schedAction": 84, "schedCron": "9pfqke0C", "schedRange": ["7s9GKzJq", "JfQ6JEHa", "cOJZOEyZ"]}, {"action": 13, "resource": "DaA5qmMv", "schedAction": 10, "schedCron": "uEus0OLb", "schedRange": ["VdX7dyvG", "mXNKvcsh", "4dLC9EQp"]}]}' \
    > test.out 2>&1
eval_tap $? 196 'AdminAddRolePermissionsV3' test.out

#- 197 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'ZLO3gA96' \
    --body '["Msn9Kr4I", "3iPY3xBc", "VRF4Jnc3"]' \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteRolePermissionsV3' test.out

#- 198 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '30' \
    --resource 'Ag2ZYELf' \
    --roleId 'LbUIB9gb' \
    > test.out 2>&1
eval_tap $? 198 'AdminDeleteRolePermissionV3' test.out

#- 199 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 199 'AdminGetMyUserV3' test.out

#- 200 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'lMMEYc7L' \
    --extendExp 'true' \
    --redirectUri 'GZmZFfpk' \
    --password '4bSQOBKw' \
    --requestId 'oDyURar8' \
    --userName 'exA6PeLX' \
    > test.out 2>&1
eval_tap $? 200 'UserAuthenticationV3' test.out

#- 201 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'NUPjPy55' \
    --linkingToken 'NHjbVDjg' \
    --password 'LuiYqcp8' \
    --username 'u9n9elQI' \
    > test.out 2>&1
eval_tap $? 201 'AuthenticationWithPlatformLinkV3' test.out

#- 202 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'true' \
    --linkingToken 'oKUTQ8gn' \
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
    --clientId 's3QDyPxE' \
    > test.out 2>&1
eval_tap $? 205 'RequestGameTokenCodeResponseV3' test.out

#- 206 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'W1ktXB70' \
    --userId 'S3h5kALg' \
    > test.out 2>&1
eval_tap $? 206 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 207 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 's4Y83NzL' \
    > test.out 2>&1
eval_tap $? 207 'RevokeUserV3' test.out

#- 208 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge '1NOnjxyo' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'false' \
    --redirectUri 'JLb31iL6' \
    --scope 'MbqjbHAI' \
    --state 'l87M3QOF' \
    --targetAuthPage 'BOrI0NGH' \
    --clientId '8KwiYsZ6' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 208 'AuthorizeV3' test.out

#- 209 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'ksa0OkHU' \
    > test.out 2>&1
eval_tap $? 209 'TokenIntrospectionV3' test.out

#- 210 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 210 'GetJWKSV3' test.out

#- 211 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'Ky6ZaOeb' \
    --mfaToken 'ZwuBUmkG' \
    > test.out 2>&1
eval_tap $? 211 'Change2faMethod' test.out

#- 212 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'ZuHLUwvP' \
    --factor 'nxf2yxBQ' \
    --mfaToken 'KFTDRc7y' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 212 'Verify2faCode' test.out

#- 213 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId '3mu2VWa6' \
    --userId 'ggvQU1Se' \
    > test.out 2>&1
eval_tap $? 213 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 214 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'huo2ks5K' \
    --clientId 'QQheDnQ6' \
    --redirectUri 'kFFlToiT' \
    --requestId 'iLxC5xgJ' \
    > test.out 2>&1
eval_tap $? 214 'AuthCodeRequestV3' test.out

#- 215 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'pGTAxacP' \
    --clientId 'ldSLv5ua' \
    --createHeadless 'true' \
    --deviceId 'OTpfPyDj' \
    --platformToken 'KL7xHSem' \
    > test.out 2>&1
eval_tap $? 215 'PlatformTokenGrantV3' test.out

#- 216 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 216 'GetRevocationListV3' test.out

#- 217 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'i1qGGoiK' \
    > test.out 2>&1
eval_tap $? 217 'TokenRevocationV3' test.out

#- 218 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --clientId 'Jr88157B' \
    --code 'Y5y4mABi' \
    --codeVerifier 'N9Wnkr3j' \
    --extendExp 'false' \
    --password 'GGU30b4Z' \
    --redirectUri 'CCbLOO4o' \
    --refreshToken 'WK78gGnR' \
    --username '8K8JTI31' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 218 'TokenGrantV3' test.out

#- 219 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'NIWz1O9x' \
    > test.out 2>&1
eval_tap $? 219 'VerifyTokenV3' test.out

#- 220 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'Djz3KrnK' \
    --code 'voQP6tEo' \
    --error 'ld0r42yw' \
    --openidAssocHandle 'VqkhSMC3' \
    --openidClaimedId '2QoZGGbZ' \
    --openidIdentity 'jhePrBHU' \
    --openidMode 'gbXjI1bq' \
    --openidNs 'QXvUsSOl' \
    --openidOpEndpoint 'PBH2cF6K' \
    --openidResponseNonce 'o7qX852w' \
    --openidReturnTo 'vTCkYGrS' \
    --openidSig 'ICXZQhYr' \
    --openidSigned 'blDLGVwo' \
    --state '4dYBNh38' \
    > test.out 2>&1
eval_tap $? 220 'PlatformAuthenticationV3' test.out

#- 221 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode 'H1FkqXwW' \
    > test.out 2>&1
eval_tap $? 221 'PublicGetInputValidations' test.out

#- 222 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'JxJ3MXrV' \
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
    --clientId 'mvSSPdwE' \
    > test.out 2>&1
eval_tap $? 224 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 225 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'y7ORIa38' \
    --body '{"platformUserIds": ["GTWX7IAr", "FEDmnb4W", "Atm99tGp"]}' \
    > test.out 2>&1
eval_tap $? 225 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 226 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'xhWx2i39' \
    --platformUserId 'baFEhJow' \
    > test.out 2>&1
eval_tap $? 226 'PublicGetUserByPlatformUserIDV3' test.out

#- 227 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'M5Q3GZ3A' \
    > test.out 2>&1
eval_tap $? 227 'PublicGetAsyncStatus' test.out

#- 228 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'jlEtWxqf' \
    --limit '9' \
    --offset '31' \
    --query 'ValfNn2q' \
    > test.out 2>&1
eval_tap $? 228 'PublicSearchUserV3' test.out

#- 229 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "oNYzQbW6", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "O03e4NAF", "policyId": "SLiyhAjO", "policyVersionId": "peK9dhvS"}, {"isAccepted": true, "localizedPolicyVersionId": "z7U6GObx", "policyId": "GMcfX4Uc", "policyVersionId": "sSdmxKfo"}, {"isAccepted": false, "localizedPolicyVersionId": "zmEyPTRm", "policyId": "71fnBIP2", "policyVersionId": "QAbtagti"}], "authType": "JCM7y5F2", "code": "hicXpXaq", "country": "vmv0eJ9P", "dateOfBirth": "HEiImGfy", "displayName": "grH7ZZ2W", "emailAddress": "mN1oSMt4", "password": "YwaDNJIO", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 229 'PublicCreateUserV3' test.out

#- 230 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'VXnOGyDG' \
    --query '5zMZKOKK' \
    > test.out 2>&1
eval_tap $? 230 'CheckUserAvailability' test.out

#- 231 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["zPUhY7vR", "sHLQI7ow", "ZbfWFben"]}' \
    > test.out 2>&1
eval_tap $? 231 'PublicBulkGetUsers' test.out

#- 232 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "XD4yLwJS", "languageTag": "3ybhsI8R"}' \
    > test.out 2>&1
eval_tap $? 232 'PublicSendRegistrationCode' test.out

#- 233 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "PKuD7dJU", "emailAddress": "BpMD1yVV"}' \
    > test.out 2>&1
eval_tap $? 233 'PublicVerifyRegistrationCode' test.out

#- 234 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "1WS8DHi3", "languageTag": "MdumhnwE"}' \
    > test.out 2>&1
eval_tap $? 234 'PublicForgotPasswordV3' test.out

#- 235 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'PAKYrFLz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 235 'GetAdminInvitationV3' test.out

#- 236 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'jGYesnYD' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "PXgUXCSc", "policyId": "PBExSqjZ", "policyVersionId": "MDoAOX4m"}, {"isAccepted": false, "localizedPolicyVersionId": "h0ks0jzJ", "policyId": "z4DQAyMt", "policyVersionId": "LpzRdGq7"}, {"isAccepted": true, "localizedPolicyVersionId": "lPRvlGJd", "policyId": "03FNO114", "policyVersionId": "DvA2jplF"}], "authType": "EMAILPASSWD", "country": "sZJTBeOJ", "dateOfBirth": "ge0Z8v6w", "displayName": "P90o8GSN", "password": "y3stCOrO", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 236 'CreateUserFromInvitationV3' test.out

#- 237 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "rguy1yH8", "country": "V7EIkpRO", "dateOfBirth": "R5gZR4Vo", "displayName": "kNUN1lls", "languageTag": "IBlQh57a", "userName": "ka20eokL"}' \
    > test.out 2>&1
eval_tap $? 237 'UpdateUserV3' test.out

#- 238 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "gKmuh9Br", "country": "j7ROZuHI", "dateOfBirth": "MvMuapbo", "displayName": "1SEOvjrz", "languageTag": "hWn5Fe7x", "userName": "ZUVOiRiu"}' \
    > test.out 2>&1
eval_tap $? 238 'PublicPartialUpdateUserV3' test.out

#- 239 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "iu9tN89M", "emailAddress": "8hg2utcR", "languageTag": "T9mzA5c1"}' \
    > test.out 2>&1
eval_tap $? 239 'PublicSendVerificationCodeV3' test.out

#- 240 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "CFm55YQh", "contactType": "xQMWRHA0", "languageTag": "4zw0spAo", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 240 'PublicUserVerificationV3' test.out

#- 241 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "VS12Na0o", "country": "5KVu7Uzw", "dateOfBirth": "Q7CFvD0t", "displayName": "C2MZd9EK", "emailAddress": "XCYtMz6L", "password": "9jVWMlJL", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 241 'PublicUpgradeHeadlessAccountV3' test.out

#- 242 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "PrqEvVo7", "password": "o68i380P"}' \
    > test.out 2>&1
eval_tap $? 242 'PublicVerifyHeadlessAccountV3' test.out

#- 243 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "DVMmeIEa", "newPassword": "4VQw8sT9", "oldPassword": "7Pk6FZNm"}' \
    > test.out 2>&1
eval_tap $? 243 'PublicUpdatePasswordV3' test.out

#- 244 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'qw9RG95i' \
    > test.out 2>&1
eval_tap $? 244 'PublicCreateJusticeUser' test.out

#- 245 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ABtCqUDI' \
    --redirectUri 'jrtwCgbv' \
    --ticket 'Iu8K3cWL' \
    > test.out 2>&1
eval_tap $? 245 'PublicPlatformLinkV3' test.out

#- 246 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'VCGZK0Ie' \
    --body '{"platformNamespace": "GQJfLXO7"}' \
    > test.out 2>&1
eval_tap $? 246 'PublicPlatformUnlinkV3' test.out

#- 247 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'i76ta7Og' \
    > test.out 2>&1
eval_tap $? 247 'PublicPlatformUnlinkAllV3' test.out

#- 248 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'M7FdOnSz' \
    --ticket '7HBmXQKt' \
    > test.out 2>&1
eval_tap $? 248 'PublicForcePlatformLinkV3' test.out

#- 249 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'SXbK0HGJ' \
    --clientId 'Dz6YCf4D' \
    --redirectUri 'K1z4BQXt' \
    > test.out 2>&1
eval_tap $? 249 'PublicWebLinkPlatform' test.out

#- 250 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'ffpNTS3N' \
    --state 'dJJwtyQv' \
    > test.out 2>&1
eval_tap $? 250 'PublicWebLinkPlatformEstablish' test.out

#- 251 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "y8F4e7mH", "emailAddress": "yb9UIjfd", "newPassword": "zj1XXgr4"}' \
    > test.out 2>&1
eval_tap $? 251 'ResetPasswordV3' test.out

#- 252 PublicGetUserByUserIdV3
samples/cli/sample-apps Iam publicGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EXITv0aD' \
    > test.out 2>&1
eval_tap $? 252 'PublicGetUserByUserIdV3' test.out

#- 253 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'n5t9T1Nw' \
    --activeOnly 'true' \
    --after 'rYcRyS5r' \
    --before '8FRGfVi0' \
    --limit '48' \
    > test.out 2>&1
eval_tap $? 253 'PublicGetUserBanHistoryV3' test.out

#- 254 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'reSAH3q0' \
    > test.out 2>&1
eval_tap $? 254 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 255 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'j9FIWaZc' \
    > test.out 2>&1
eval_tap $? 255 'PublicGetUserInformationV3' test.out

#- 256 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '2dhmjCho' \
    --after '0.5745581628921109' \
    --before '0.4124882940968285' \
    --limit '2' \
    > test.out 2>&1
eval_tap $? 256 'PublicGetUserLoginHistoriesV3' test.out

#- 257 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TbCzAd8N' \
    --after '7sW25GmM' \
    --before 'cl7U8umj' \
    --limit '38' \
    > test.out 2>&1
eval_tap $? 257 'PublicGetUserPlatformAccountsV3' test.out

#- 258 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QmJdtQU1' \
    > test.out 2>&1
eval_tap $? 258 'PublicListJusticePlatformAccountsV3' test.out

#- 259 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'csRNz05o' \
    --body '{"platformId": "wICaCDmA", "platformUserId": "vTNF5CRx"}' \
    > test.out 2>&1
eval_tap $? 259 'PublicLinkPlatformAccount' test.out

#- 260 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'uonno5og' \
    --body '{"chosenNamespaces": ["2YekMacA", "qDUUzPKA", "jfdCecaG"], "requestId": "hiGovJQy"}' \
    > test.out 2>&1
eval_tap $? 260 'PublicForceLinkPlatformWithProgression' test.out

#- 261 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Q4eoaTEA' \
    > test.out 2>&1
eval_tap $? 261 'PublicGetPublisherUserV3' test.out

#- 262 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Eg2UGDCL' \
    --password 'fcjQOE7I' \
    > test.out 2>&1
eval_tap $? 262 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 263 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'Twkc51eb' \
    --before 'zBQG2Z00' \
    --isWildcard 'false' \
    --limit '4' \
    > test.out 2>&1
eval_tap $? 263 'PublicGetRolesV3' test.out

#- 264 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'a0owJHJ4' \
    > test.out 2>&1
eval_tap $? 264 'PublicGetRoleV3' test.out

#- 265 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 265 'PublicGetMyUserV3' test.out

#- 266 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "KMMzEYLO"}' \
    > test.out 2>&1
eval_tap $? 266 'PublicSendVerificationLinkV3' test.out

#- 267 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'aGPpzAyZ' \
    > test.out 2>&1
eval_tap $? 267 'PublicVerifyUserByLinkV3' test.out

#- 268 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'EJwu0jkE' \
    --code 'Snxvjixt' \
    --error 'TdxTgjGS' \
    --state 'QTwUnWaQ' \
    > test.out 2>&1
eval_tap $? 268 'PlatformAuthenticateSAMLV3Handler' test.out

#- 269 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId '6isDqiJX' \
    --payload '7LVZ0juK' \
    > test.out 2>&1
eval_tap $? 269 'LoginSSOClient' test.out

#- 270 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'O4njkPpx' \
    > test.out 2>&1
eval_tap $? 270 'LogoutSSOClient' test.out

#- 271 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --code '8MM9bSll' \
    > test.out 2>&1
eval_tap $? 271 'RequestGameTokenResponseV3' test.out

#- 272 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 62}' \
    > test.out 2>&1
eval_tap $? 272 'AdminCreateTestUsersV4' test.out

#- 273 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["DQr4k3Fg", "I0eI2o1e", "HL0eLihI"]}' \
    > test.out 2>&1
eval_tap $? 273 'AdminBulkCheckValidUserIDV4' test.out

#- 274 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '7BRgL7B3' \
    --body '{"avatarUrl": "G4j5gjsO", "country": "mvOMJPXI", "dateOfBirth": "pRHH0Y7I", "displayName": "w5CXzaKs", "languageTag": "1NNDb4Qr", "userName": "STFv0AvY"}' \
    > test.out 2>&1
eval_tap $? 274 'AdminUpdateUserV4' test.out

#- 275 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'oZwLiPkj' \
    --body '{"code": "7HIyEt0G", "emailAddress": "mjnx0mKN"}' \
    > test.out 2>&1
eval_tap $? 275 'AdminUpdateUserEmailAddressV4' test.out

#- 276 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ylfrMJcy' \
    > test.out 2>&1
eval_tap $? 276 'AdminDisableUserMFAV4' test.out

#- 277 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'OA6GL31E' \
    > test.out 2>&1
eval_tap $? 277 'AdminListUserRolesV4' test.out

#- 278 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'SZiBFHeF' \
    --body '{"assignedNamespaces": ["WvQTDitF", "bi7d6K0c", "AGem7fFD"], "roleId": "WJIpi1W9"}' \
    > test.out 2>&1
eval_tap $? 278 'AdminUpdateUserRoleV4' test.out

#- 279 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'uyBVXGDg' \
    --body '{"assignedNamespaces": ["n1Nue2qS", "FeOKWFBI", "fRlAjlXo"], "roleId": "DKEmmRG5"}' \
    > test.out 2>&1
eval_tap $? 279 'AdminAddUserRoleV4' test.out

#- 280 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Mv5xKPH5' \
    --body '{"assignedNamespaces": ["lz24o5YO", "0VjpSoRi", "gQTI9eEW"], "roleId": "72xSnMk6"}' \
    > test.out 2>&1
eval_tap $? 280 'AdminRemoveUserRoleV4' test.out

#- 281 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'true' \
    --limit '32' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 281 'AdminGetRolesV4' test.out

#- 282 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "pm5AIJwK"}' \
    > test.out 2>&1
eval_tap $? 282 'AdminCreateRoleV4' test.out

#- 283 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'hP43qhcA' \
    > test.out 2>&1
eval_tap $? 283 'AdminGetRoleV4' test.out

#- 284 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'LVOvBUHr' \
    > test.out 2>&1
eval_tap $? 284 'AdminDeleteRoleV4' test.out

#- 285 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'IzScoFHc' \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "Pzszo6MR"}' \
    > test.out 2>&1
eval_tap $? 285 'AdminUpdateRoleV4' test.out

#- 286 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'l3sdRHfc' \
    --body '{"permissions": [{"action": 39, "resource": "uSxS6JJ4", "schedAction": 84, "schedCron": "scfCp7xp", "schedRange": ["TmbuPhfl", "jQYUxTdj", "u13dP1NR"]}, {"action": 70, "resource": "0rYMWnjs", "schedAction": 56, "schedCron": "DjExDtG3", "schedRange": ["8YhGK9HY", "MAikt6SB", "nfJRnHrg"]}, {"action": 59, "resource": "YRoN22dv", "schedAction": 27, "schedCron": "x4ZFKtLJ", "schedRange": ["taKH7xlH", "Bwrg2s5v", "7ZzkH6Gq"]}]}' \
    > test.out 2>&1
eval_tap $? 286 'AdminUpdateRolePermissionsV4' test.out

#- 287 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'GQUHC6Ze' \
    --body '{"permissions": [{"action": 33, "resource": "0dZR1FdE", "schedAction": 98, "schedCron": "ZwkLbMXx", "schedRange": ["dCcaTqhx", "BOLuw9fa", "zC9GaKbv"]}, {"action": 52, "resource": "7zm5e6Ft", "schedAction": 63, "schedCron": "amauAndi", "schedRange": ["V5cWHTok", "MpoOQS7q", "UqOFQqBf"]}, {"action": 58, "resource": "WAMzaZUo", "schedAction": 89, "schedCron": "naypT1lO", "schedRange": ["7Am55EBp", "qIO6pi62", "UzvIcKpY"]}]}' \
    > test.out 2>&1
eval_tap $? 287 'AdminAddRolePermissionsV4' test.out

#- 288 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'aE48MGzI' \
    --body '["GvuRqw4y", "IHMNCpx9", "hrIfnq56"]' \
    > test.out 2>&1
eval_tap $? 288 'AdminDeleteRolePermissionsV4' test.out

#- 289 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'JFi0sB6G' \
    --after 'eqYf8ycV' \
    --before 'TMQNK8zE' \
    --limit '3' \
    > test.out 2>&1
eval_tap $? 289 'AdminListAssignedUsersV4' test.out

#- 290 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 's1m60CUi' \
    --body '{"assignedNamespaces": ["aXrqdeiy", "54BWQ4Zt", "UVCFdVga"], "namespace": "XTmJUot1", "userId": "j53RuNCl"}' \
    > test.out 2>&1
eval_tap $? 290 'AdminAssignUserToRoleV4' test.out

#- 291 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'UY30Ox2q' \
    --body '{"namespace": "KhC2DTdE", "userId": "Xe5GB1iW"}' \
    > test.out 2>&1
eval_tap $? 291 'AdminRevokeUserFromRoleV4' test.out

#- 292 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "ZpZEMWNw", "country": "aiAG3lNK", "dateOfBirth": "7kjUWI91", "displayName": "dFJjHBow", "languageTag": "mGMihilV", "userName": "lzrp1s6T"}' \
    > test.out 2>&1
eval_tap $? 292 'AdminUpdateMyUserV4' test.out

#- 293 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 293 'AdminDisableMyAuthenticatorV4' test.out

#- 294 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'hd8oNGlX' \
    > test.out 2>&1
eval_tap $? 294 'AdminEnableMyAuthenticatorV4' test.out

#- 295 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 295 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 296 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 296 'AdminGetMyBackupCodesV4' test.out

#- 297 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 297 'AdminGenerateMyBackupCodesV4' test.out

#- 298 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 298 'AdminDisableMyBackupCodesV4' test.out

#- 299 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 299 'AdminDownloadMyBackupCodesV4' test.out

#- 300 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 300 'AdminEnableMyBackupCodesV4' test.out

#- 301 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 301 'AdminGetMyEnabledFactorsV4' test.out

#- 302 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'UL6gpGsQ' \
    > test.out 2>&1
eval_tap $? 302 'AdminMakeFactorMyDefaultV4' test.out

#- 303 AdminInviteUserV4
samples/cli/sample-apps Iam adminInviteUserV4 \
    --body '{"assignedNamespaces": ["MeTBLK5v", "ZimVSy1l", "n997MbaG"], "emailAddresses": ["sRitvssE", "2C7d8njk", "n1NiiqhV"], "isAdmin": false, "roleId": "0cjppzhT"}' \
    > test.out 2>&1
eval_tap $? 303 'AdminInviteUserV4' test.out

#- 304 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "ypvHySzA", "policyId": "9UODqQsq", "policyVersionId": "1vEVO49w"}, {"isAccepted": false, "localizedPolicyVersionId": "ibGWtZjR", "policyId": "mNAIODDu", "policyVersionId": "XwUdEZWi"}, {"isAccepted": false, "localizedPolicyVersionId": "5s70Ofbt", "policyId": "h2Gttpif", "policyVersionId": "wxrCBxOX"}], "authType": "EMAILPASSWD", "country": "w0Cemhhk", "dateOfBirth": "VGVMIvW0", "displayName": "feMBNLss", "emailAddress": "ADyoLNBK", "password": "p93iX7wk", "passwordMD5Sum": "QIPNNhk5", "username": "orgp9zHV", "verified": false}' \
    > test.out 2>&1
eval_tap $? 304 'PublicCreateTestUserV4' test.out

#- 305 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "pwRXsdMr", "policyId": "zb94DIxw", "policyVersionId": "yxtlrSQg"}, {"isAccepted": false, "localizedPolicyVersionId": "eP9pB1hK", "policyId": "tDoQt95q", "policyVersionId": "1TowfsMO"}, {"isAccepted": false, "localizedPolicyVersionId": "o3314lAn", "policyId": "fjXoRzwJ", "policyVersionId": "jqYdxC2K"}], "authType": "EMAILPASSWD", "code": "Fe2An9ev", "country": "5C91sd1S", "dateOfBirth": "M0OY3wAJ", "displayName": "aiuRAA2o", "emailAddress": "7JpgmPiw", "password": "OIvCz3Se", "passwordMD5Sum": "MozFDfcP", "reachMinimumAge": true, "username": "S93kWi6F"}' \
    > test.out 2>&1
eval_tap $? 305 'PublicCreateUserV4' test.out

#- 306 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'ZrvfyVeY' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "uXlZXigR", "policyId": "eLbSVwzD", "policyVersionId": "Eta84Xd0"}, {"isAccepted": false, "localizedPolicyVersionId": "chomv76R", "policyId": "bymedxVM", "policyVersionId": "QZBTp7P5"}, {"isAccepted": true, "localizedPolicyVersionId": "CTxZZy4t", "policyId": "FAZIGH62", "policyVersionId": "Q3y0pbSE"}], "authType": "EMAILPASSWD", "country": "cvoCrbHz", "dateOfBirth": "GBtIKgHC", "displayName": "5Uo7kgku", "password": "vDoYD3QP", "reachMinimumAge": false, "username": "M11RkyVU"}' \
    > test.out 2>&1
eval_tap $? 306 'CreateUserFromInvitationV4' test.out

#- 307 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "CEeV91RQ", "country": "QybNj7ol", "dateOfBirth": "D9eoviQQ", "displayName": "WcoYB16G", "languageTag": "f9yDlVKf", "userName": "XOqzurL3"}' \
    > test.out 2>&1
eval_tap $? 307 'PublicUpdateUserV4' test.out

#- 308 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "2NhCc7Sc", "emailAddress": "bcwpd9vt"}' \
    > test.out 2>&1
eval_tap $? 308 'PublicUpdateUserEmailAddressV4' test.out

#- 309 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "WgWf8VvG", "country": "jIgkDznc", "dateOfBirth": "V5HtBjd9", "displayName": "fQdiqDlA", "emailAddress": "jVD1rUwJ", "password": "SQzjcHxa", "reachMinimumAge": true, "username": "ZqDNHeSf", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 309 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 310 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "KLTgqJeF", "password": "cSTkUIJU", "username": "JmylELXw"}' \
    > test.out 2>&1
eval_tap $? 310 'PublicUpgradeHeadlessAccountV4' test.out

#- 311 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 311 'PublicDisableMyAuthenticatorV4' test.out

#- 312 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'GjUjHJjQ' \
    > test.out 2>&1
eval_tap $? 312 'PublicEnableMyAuthenticatorV4' test.out

#- 313 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 313 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 314 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 314 'PublicGetMyBackupCodesV4' test.out

#- 315 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 315 'PublicGenerateMyBackupCodesV4' test.out

#- 316 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 316 'PublicDisableMyBackupCodesV4' test.out

#- 317 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 317 'PublicDownloadMyBackupCodesV4' test.out

#- 318 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 318 'PublicEnableMyBackupCodesV4' test.out

#- 319 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 319 'PublicRemoveTrustedDeviceV4' test.out

#- 320 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 320 'PublicGetMyEnabledFactorsV4' test.out

#- 321 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'QYZafhFl' \
    > test.out 2>&1
eval_tap $? 321 'PublicMakeFactorMyDefaultV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE