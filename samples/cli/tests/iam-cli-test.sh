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
echo "1..349"

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
    --body '[{"field": "OXgN9AmclgHWyDjX", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "blockedWord": ["dHPCfKk55hT3AcpF", "QyYQmyyWCaVnrX69", "6lu7T4sc3rbHr26t"], "description": [{"language": "5wQh59k8tnPajSkN", "message": ["FlNsUC1WVGgS2GpV", "AHFHbBsyQt0zOnSI", "FRcos9cjewcGQ7DG"]}, {"language": "G7U8mki8XrJnYal7", "message": ["9uMtIqRtrGECwQGx", "1mCB65hqS9iRLQyr", "rjHsZgD9EEIVnOvS"]}, {"language": "7BZuCUZVwBCuVFk3", "message": ["rszaPgVnJQctGZsy", "2LMfxMrB9U1XxMJD", "AdQJPgXuLuBLSfwV"]}], "isCustomRegex": true, "letterCase": "freva1gagIxw2o57", "maxLength": 33, "maxRepeatingAlphaNum": 65, "maxRepeatingSpecialCharacter": 9, "minCharType": 58, "minLength": 58, "regex": "Jp0OQOOOebn9N4uL", "specialCharacterLocation": "Rev1agUqbZBVQO5U", "specialCharacters": ["Nn7KRRG1D7lR3kPe", "RQQxyMbN20kUc2cB", "UyUoef3V36D2iVpZ"]}}, {"field": "D2r4oCg0EDUH1vtL", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "blockedWord": ["pcGAgHu0CI7FLKdU", "f6GoxVX3PAtkbkOr", "WsjTc5EjwKjcDvnn"], "description": [{"language": "Kik4basLkiADCcrw", "message": ["7B57pafjK1EIjr52", "ETUePZkYRbKgP1NX", "YsBZurM8xzUKTyjv"]}, {"language": "coFJhUVvVNGqa3Fq", "message": ["350ZJzJki4vgjHQH", "pAJpcdwTzpQQpOf0", "SJqQ49UBYB7H6Otf"]}, {"language": "d5O7BgxDI62vNzAo", "message": ["43I0KigqdGmQ7eWy", "6qRFOf9FuXduuFEq", "67gF7wVi8t3j0DcD"]}], "isCustomRegex": true, "letterCase": "Om8gJx9oCd35Vre7", "maxLength": 71, "maxRepeatingAlphaNum": 72, "maxRepeatingSpecialCharacter": 67, "minCharType": 3, "minLength": 99, "regex": "RWqFI5FF2wFMXByt", "specialCharacterLocation": "kkCQOVaNQsctdZwy", "specialCharacters": ["LP8K1gF9WbviX45n", "oyUeAasAcxKUkHpC", "Ea0gW89bEe0ATICZ"]}}, {"field": "k4b3ThDjYjvoHmOy", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "blockedWord": ["XQLLKrMXyvpADDcc", "zXVQaGBWrcyH8RT0", "47h0dLQpc10QW0f5"], "description": [{"language": "mMK913L2jHCrJ9Vp", "message": ["lgppVOp7I3ZxlqCy", "HiFyzbWdB7hPBg96", "BM9SqJMMuVRYDSjF"]}, {"language": "0hCt3BziBMrajDt1", "message": ["tMPFJidHsOinZsX2", "GZlc3SjYof72GlFW", "5wmWAD9Obxbi886Q"]}, {"language": "y2n5muoo8Nt9C4U3", "message": ["2T82zO03LxnO2IIV", "CrLeAx6CzBozexNN", "k7QhWloVZ9NZV6gr"]}], "isCustomRegex": false, "letterCase": "9u0nhDUDqiXePA7u", "maxLength": 77, "maxRepeatingAlphaNum": 95, "maxRepeatingSpecialCharacter": 4, "minCharType": 36, "minLength": 41, "regex": "feVVv9zIRIoAD1Jj", "specialCharacterLocation": "dtBNkRjzLxQ9h6Tq", "specialCharacters": ["gfCysBCben6Yswpi", "qTO9Jrb7YvypWFyN", "nP58DafueTXDGWjt"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'R1cely6Y22XeKxVl' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after '6eXR1Q5PkWWlK2hL' \
    --before 'Ctn4J1yEUB4FBqpT' \
    --limit '66' \
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
    --body '{"ageRestriction": 81, "enable": true}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'jbpQiZJvupNNy7Ok' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 20}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'MKoirwP2lyQxXcDf' \
    --limit '94' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "Sk2lnIgSAae4Thdd", "comment": "QJmI8rWThNf1D74C", "endDate": "cYuVZpHD77fP2i0J", "reason": "AO3LZq9lu4eNX6DK", "skipNotif": false, "userIds": ["Eyq8yKl0hdpdVRwn", "MZDnQ4PTX8mOwta6", "qhWZMPPWfm0gZHwN"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "KGMuwYcf1Tmucot2", "userId": "ytkxTXfyF5PbGJOT"}, {"banId": "Am2efU0oG2OxUvfd", "userId": "7HMwM4f6NlC0RfBr"}, {"banId": "W6Cs5tXUMokbpTFJ", "userId": "3lKjkDWO8WXHpBed"}]}' \
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
    --clientId 'Q8DIhrdLBBFdf6ON' \
    --clientName '4sFpmsVBJ0Q2Yy3w' \
    --clientType '5BndejannVZIM2Yj' \
    --limit '83' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["B1XIsA5Xyzxza56M", "HuQDRHVce0bMWu01", "IeNjGmqsSmM6nVOa"], "baseUri": "6qq15NCJt7QurmbC", "clientId": "g2khMpnY2BDJjhgt", "clientName": "zS8mOnW5BHvAF02I", "clientPermissions": [{"action": 9, "resource": "QwT5PlCGHeOl2fo0", "schedAction": 13, "schedCron": "E5wcuaFvqpy1qH8R", "schedRange": ["7ExSrsoJ9cdoAYF8", "lPEfhmAnXLwn3db0", "nZGSSWUmezOMAspU"]}, {"action": 90, "resource": "h02ARFlTgutTMBFx", "schedAction": 10, "schedCron": "SpJ21XHjDLiRxyfF", "schedRange": ["eYSbhBd7KPX9QV61", "ro9twjj0qsJNKHIB", "uPxmzJMkQqDEgiNH"]}, {"action": 71, "resource": "hhLC2hryihhevZKS", "schedAction": 51, "schedCron": "gJM54XXHxS1GSRHY", "schedRange": ["WcomcK522eiYwqma", "XYQDKtQK0DoS2D8F", "8awKO8voNqtC4TgV"]}], "clientPlatform": "P7kZFu7YiVyi4SIk", "deletable": false, "description": "m1G4GYakCYdt0aq8", "namespace": "Qw57pUlfBforE1Q8", "oauthAccessTokenExpiration": 81, "oauthAccessTokenExpirationTimeUnit": "B2eceuKRlTq7ZmJN", "oauthClientType": "CheLwniE203EDYAI", "oauthRefreshTokenExpiration": 53, "oauthRefreshTokenExpirationTimeUnit": "dSyxOIbXWGtffz3l", "parentNamespace": "0paJE1dv3MLAICKi", "redirectUri": "haCkXUBZQxSlD7OU", "scopes": ["Gm0qBcwwMCi29QaH", "KzqUZA6A4X04LuGX", "YAUKlxsftEElINES"], "secret": "Mwva8fC0gyndcLHw", "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId '9JVlePLpCwbat0Ls' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'pwWlerIPRFMekFQN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'b859Us1UIg6gxDIK' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["UcsRtIwaIAOCsG9G", "p6SghQXeb4Vy0YAn", "jWabfO5zm1HGAucY"], "baseUri": "AhhuxOtzlkL1mDOy", "clientName": "tKMJeGNVGhnXrlHf", "clientPermissions": [{"action": 75, "resource": "MrKe0Hfao6b19mwP", "schedAction": 40, "schedCron": "Udoix3oO9cRkXzZs", "schedRange": ["cnSDX2UuP4v55JWO", "dnBWKtCHSCInumrh", "GzzJ8kDyNpR0QxZd"]}, {"action": 68, "resource": "qvV65vby8Y4xShF5", "schedAction": 6, "schedCron": "Re4ljp3OzuBbgPq5", "schedRange": ["DDOQwdAMOKN8q8oY", "A6MaWiYTEHjo3cSe", "JkrK3TdVbe69FtQy"]}, {"action": 93, "resource": "SzN3AjVgqZ7g2Xk4", "schedAction": 79, "schedCron": "CPeAvDTWRaurny1i", "schedRange": ["EYqRk7qB5QFioz95", "vhjzc6Pj7xmN0U1I", "uQlIL4LfaG4YaR9S"]}], "clientPlatform": "09EBld7YsKXrghLN", "deletable": false, "description": "cM7ZqjFH7UsWRo8J", "namespace": "082yVxT1tOAdLJd8", "oauthAccessTokenExpiration": 79, "oauthAccessTokenExpirationTimeUnit": "FW95SdV6gUSb5Lld", "oauthRefreshTokenExpiration": 48, "oauthRefreshTokenExpirationTimeUnit": "Nc58xohQTwJ2n4nY", "redirectUri": "FE6QpZe2eSNKvnZ1", "scopes": ["VbpWZbFztGvVb59E", "zoPR7zJ41Wt7YOGk", "bXubgldxDSo1YHDG"], "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'OrOnyAPzQaJl3d7Q' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 54, "resource": "2SQ72bWE0thR3n5N"}, {"action": 2, "resource": "aJNerxBta9xi81F7"}, {"action": 62, "resource": "UjVBXodPtxSnaQdc"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'ccn0wEfBQCkjBmBh' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 53, "resource": "nenSMuZ6qZtb8HKj"}, {"action": 41, "resource": "BqmPqwttXgrfu1dE"}, {"action": 22, "resource": "5tnUPa4FO5xq3D8E"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '29' \
    --clientId 'paUckiBiquAzO1XR' \
    --namespace $AB_NAMESPACE \
    --resource 'pHk7Fwe2wui6aPus' \
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
    --limit '24' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 130 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 131 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'uJfuZKXAKMuYW3GM' \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'A4sZEhMFO9WLAFkm' \
    --body '{"ACSURL": "mK4tfs06sYjwhAsZ", "AWSCognitoRegion": "OPtxbJ1O2eSGjf7a", "AWSCognitoUserPool": "85PYhwuwBimmcO0E", "AllowedClients": ["utW9mQkbExZWMzIz", "k6afuU93Jet3KprC", "J3ffp0oDcRa3Qzfy"], "AppId": "MhS79xNtl39x6czZ", "AuthorizationEndpoint": "nFx0b8OXFuYX5qAN", "ClientId": "tdPzstvES6BHlWq9", "Environment": "gqJ84LgrkcKBOfCm", "FederationMetadataURL": "LhI2RyKhiyImJMRI", "GenericOauthFlow": false, "IsActive": false, "Issuer": "AeKAuppQQk3iEOn8", "JWKSEndpoint": "Sue2Ye6YK0CPDPXN", "KeyID": "XGjk0SqmCF9XZdyV", "NetflixCertificates": {"encryptedPrivateKey": "cwzW71Q1FseagZeO", "encryptedPrivateKeyName": "HxxplaDhhZXSYfmq", "publicCertificate": "sDRq5561csxVZQcF", "publicCertificateName": "BevR3SsUjJUTAAyR", "rootCertificate": "2LLWRJYmvcdo0yFC", "rootCertificateName": "GO6a13SyX1j2SCQm"}, "OrganizationId": "uIOO5c5PFQ8u9h5t", "PlatformName": "OBoE88rQD5ysdVlY", "RedirectUri": "mj4dL3ECjrrGPuaL", "RegisteredDomains": [{"affectedClientIDs": ["Ziz0SAy61FRtA7qI", "dMrSvRtRDx9bpC9L", "HT6vUkSWyWWGdeQW"], "domain": "SaFeDlmHRnoPQmpt", "namespaces": ["kpGXtfMZwzvlQsQb", "QQ6nWgqZMomGpkP2", "EJUIrRDT9BdptUyG"], "roleId": "BqKJJ0Pfnj9wBFqK"}, {"affectedClientIDs": ["VCxzEM7RQawaH7rj", "ckuavFEJSXZJdRWi", "iEDNgFUardogNnjw"], "domain": "6Xkza6tlHyjdhwgy", "namespaces": ["42OcngDWT11ILg7p", "xgV61azLFU7svb3l", "eCOKOrGBOjFNoBh6"], "roleId": "qrKO5lGmsGsnbvIH"}, {"affectedClientIDs": ["kvDw2c3cLSbePUBP", "AQ2GdD4orJxPdNqp", "zAk64sxelkLsShiG"], "domain": "x1UahAytPJWDcuSe", "namespaces": ["hAZu46wCkdi1Geg1", "cLXFPUdLhhwkuqYZ", "PWplFuAtU9ihqK6I"], "roleId": "yoiXZtHbOgTxSz6H"}], "Secret": "pwHitWJIGHEU8KQO", "TeamID": "KLJYvwGguLx2XZXr", "TokenAuthenticationType": "ZZK4RfY6eFz5VXs9", "TokenClaimsMapping": {"4h4Ttrj9DH63TaTn": "e5jEBqnfA4CfwQGA", "S0wR0iSkBLKRyUfE": "xxwq3vQV1W4jXCYa", "yY2dGwaSlGPXkXdh": "ptLN8zgUXiggm7am"}, "TokenEndpoint": "QlQuTkuhQVLDT7k0", "UserInfoEndpoint": "SVFD8SWINl3KV7n2", "UserInfoHTTPMethod": "l1aCAUsdRMyrAXhn", "scopes": ["lQp8cAWbvssFtwdx", "2T8zChjgmJcFsOjq", "bLz48f8yulDCWs7S"]}' \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'rxCn805qm7heguzh' \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'CUis4mGP4vCvsmQO' \
    --body '{"ACSURL": "oPV0MDl5AhuZyrPl", "AWSCognitoRegion": "fdy3iIGS0OPVYZQH", "AWSCognitoUserPool": "u8hIQoGhvQaXDNGC", "AllowedClients": ["7CBPZe4yA8QaMLIM", "9hD7F7OquY3Q2MQd", "wzJqoY3gGsQPxf9s"], "AppId": "GnPDKmQrsQd4UKF5", "AuthorizationEndpoint": "ZHRqmFuDXr5TLeRQ", "ClientId": "hUTK2uJ8ZfkbdTKJ", "Environment": "UETMiEv6yndknZat", "FederationMetadataURL": "KHBbNFEr522oxT2n", "GenericOauthFlow": false, "IsActive": false, "Issuer": "U4HWbpTr4NfMRO1e", "JWKSEndpoint": "TX7KPEnEZC6NZpYB", "KeyID": "ZKRsZqPH4NFYB5ed", "NetflixCertificates": {"encryptedPrivateKey": "D8wKscV06rcikVbI", "encryptedPrivateKeyName": "KeNtwvxxLHB2p4XK", "publicCertificate": "b0g9gWGovuZvAwtb", "publicCertificateName": "lif2W3M7nVEmyRWS", "rootCertificate": "oKsPxDC72Q0D7SuP", "rootCertificateName": "WkvFZN6V9uaFy4FX"}, "OrganizationId": "2efOHw0hbgvEeDoS", "PlatformName": "QpKVUrBbopeJCleU", "RedirectUri": "PsJ58M9LryV6nVr7", "RegisteredDomains": [{"affectedClientIDs": ["TsIuJAFbQ2DruV8i", "cMOXYsWGACxgXqGL", "k7ipm3wIuqJ7mZxD"], "domain": "yIVkhuQyL7jlyitF", "namespaces": ["BPajCDb4fdsxQIGU", "72vs54GSFtkFMCA8", "QBZfiUaOxf9ogjL9"], "roleId": "qO7iKqvHj4dXzxFH"}, {"affectedClientIDs": ["ruF1dgEsJ7BNQsZt", "V0m8lCnZI9a3hMFY", "hbUkHRUMwMsiUDBR"], "domain": "QtD1fGAVI8YvY1td", "namespaces": ["NtlsNKCsM1Kb1PqF", "mLGXCBCNMPSZBqpC", "YVGM31xSAUanfJVI"], "roleId": "EKp6jHbykVleu4bo"}, {"affectedClientIDs": ["LdlBJkUTQzFuAe22", "c2uiEvUtyJcK9CC6", "WkqmzzTU9iB3e6Vn"], "domain": "aJ5lCO154Qb7LGit", "namespaces": ["41irCO0s85PI06Dn", "qfH5y1STTbvSOwOG", "LrHOn0eHgUiZXdfu"], "roleId": "L0pIzFIa5LT00PHU"}], "Secret": "ZoprE6m2rcwGjayo", "TeamID": "LDe2p0DksqUC4yFH", "TokenAuthenticationType": "PrIOmjMpWjZh5APv", "TokenClaimsMapping": {"eqApsRPBtozBzgW9": "daQ2dyvrjh3jYlPD", "G2olSWB4pJ7b2tQX": "0rINRieRXwjYZV8S", "Yt3ZRJExHTydvne3": "y2S1JilWIioAmneR"}, "TokenEndpoint": "nl3LGpTMPhaxhUib", "UserInfoEndpoint": "bktcSNBv3xUBkCAN", "UserInfoHTTPMethod": "hX4rhr67r0bB8WF3", "scopes": ["bkBbGvDO0U58GEgb", "wBKqcLVVbSyjviGH", "y4T3qHeZqIUrodFq"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'eMtlzY6dPar6T1sp' \
    --body '{"affectedClientIDs": ["3WbVQsFcrIDvf9Od", "W2Hzvpkwr6f4wnk3", "FLlkkzaLOzmH1JkP"], "assignedNamespaces": ["OwQn58ECypmFnzYs", "XkCn8ntNSSkg6NzW", "IjaxtfSmC8ULXH7Y"], "domain": "uWk8jkcuYm5UDiNw", "roleId": "QXF3oc482aZkOm50"}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId '5BNw8CJovx7CV0gi' \
    --body '{"domain": "UwuhCpI73oyh0iUn"}' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'n0l7fcZ0IJzAIja7' \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'MIkm0bQlhAglvE7w' \
    --body '{"acsUrl": "DMH2kr2PEWxgzVOO", "apiKey": "6fT6sPx4GmJB8uRq", "appId": "hUS1RdJ1EMYwJLPM", "federationMetadataUrl": "6x0VunRyZTqM7cCe", "isActive": true, "redirectUri": "cDbSEBFc0lTJwMEr", "secret": "u8vA5vqh1VniKNPb", "ssoUrl": "mmD3qLOP1Se52JnQ"}' \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '722BtIdbEW2dibuj' \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'Pqy0WBlOjfMQJ3Ed' \
    --body '{"acsUrl": "LrWZl2oFF0RYIJq8", "apiKey": "WuuYM9u77CcvK17M", "appId": "WeDR5LGQKThfYbHU", "federationMetadataUrl": "rdadFFuQ6qPe7m7M", "isActive": true, "redirectUri": "IC7LFAKpuYef3OmU", "secret": "bwNbR7PNAFTCKvrE", "ssoUrl": "YWT0JpjDTHbNbvWA"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '2XPwKPqMrHheHBVf' \
    --platformUserId 'IUm5cAcn6TdWW4lt' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'OgYmVeEBQLWf2S6n' \
    --after '68' \
    --before '47' \
    --limit '20' \
    > test.out 2>&1
eval_tap $? 142 'GetAdminUsersByRoleIdV3' test.out

#- 143 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'PhcUb9njuenc2YxC' \
    > test.out 2>&1
eval_tap $? 143 'AdminGetUserByEmailAddressV3' test.out

#- 144 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["qGl9sxYnsh5qMeEb", "lekprYWsPCKqAtyg", "F2uQdmqaXKwx2Imq"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["CdDQrtWyF3iqg48n", "kq5vwqYLV9n7rFpe", "slHEM6s7nzzyds3H"], "isAdmin": true, "namespace": "YpscffOk3PWnKgM1", "roles": ["6hwYIlktAueyp1fp", "NpGQ563ep8InVE31", "xwZORVj08qpIN2RH"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '82' \
    --platformUserId 'NsVwN5uV9jc23zM1' \
    --platformId 'K30u65bfTpvo6JkE' \
    > test.out 2>&1
eval_tap $? 146 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 147 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 147 'AdminListUsersV3' test.out

#- 148 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'x1nudb5aGgBhnOqb' \
    --endDate 'ACdqm3GeN1h09Ehw' \
    --limit '99' \
    --offset '7' \
    --platformBy 'FnhNqXgniIOa0Um8' \
    --platformId 'obLemsmimEdSZ5NH' \
    --query 'GmdzsnzG4Ul17D7W' \
    --startDate 'mNc9s2zizyxNNR7i' \
    > test.out 2>&1
eval_tap $? 148 'AdminSearchUserV3' test.out

#- 149 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["ycnnyL3kJeAWkFT4", "4m2gZaaXcUqmGkAS", "hTu7JBOD9FnWdEK5"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetBulkUserByEmailAddressV3' test.out

#- 150 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Ilf9UNfKVrlyCnNg' \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByUserIdV3' test.out

#- 151 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'm1vikPcDCjBxo945' \
    --body '{"avatarUrl": "P2OJU6A3GbLdZZu4", "country": "0rzySaAlaDakrT7P", "dateOfBirth": "PNbfSLNUdv0kVrdD", "displayName": "o1HRT7gaVffwDMKU", "languageTag": "VIQ71JKpOPIHn5Tc", "userName": "SCWnHiG8cdhWJFRg"}' \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserV3' test.out

#- 152 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hOeEUv4nGOpbVcKI' \
    --activeOnly 'true' \
    --after '6wLE7JPZVrPLC89P' \
    --before 'Z6LnwlpT6Uy9O0UI' \
    --limit '47' \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserBanV3' test.out

#- 153 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zfCVlPreLHCI2H9A' \
    --body '{"ban": "FTD4YcAIdl2vfXPC", "comment": "GUJrm8y8GoA4cqNj", "endDate": "lrZD1medMVeAuajQ", "reason": "ayXMPf8gGaOcZjFS", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 153 'AdminBanUserV3' test.out

#- 154 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'ODG7IC48ryiZ7CjY' \
    --namespace $AB_NAMESPACE \
    --userId 'H9vDqLKkivLLnJJ6' \
    --body '{"enabled": true, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 154 'AdminUpdateUserBanV3' test.out

#- 155 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WvnQOQZrF4BfNACD' \
    --body '{"context": "pQ6lt6ZRWiGtPjvP", "emailAddress": "w8MikSDwmIu5pdzW", "languageTag": "HYPBRjfSoRoN9g0C"}' \
    > test.out 2>&1
eval_tap $? 155 'AdminSendVerificationCodeV3' test.out

#- 156 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jDrj6mKRruLj2wqb' \
    --body '{"Code": "NcN8VcXWhEQksGM9", "ContactType": "zMaAUT48iP3ya5KC", "LanguageTag": "s91ChbjSHxpLugz9", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 156 'AdminVerifyAccountV3' test.out

#- 157 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'shVLWiZSjIMqWAzc' \
    > test.out 2>&1
eval_tap $? 157 'GetUserVerificationCode' test.out

#- 158 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'prJDJedn6JQJ8udI' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserDeletionStatusV3' test.out

#- 159 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '6IcNQcQM0Km8TbPo' \
    --body '{"deletionDate": 65, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 159 'AdminUpdateUserDeletionStatusV3' test.out

#- 160 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wtmgvYxMyR1IKHgQ' \
    --body '{"code": "81JgSDsjyWIUhtFv", "country": "0o7HxXrwJuDnSWjl", "dateOfBirth": "lKHswJJAwSdB8yjs", "displayName": "R1nN4XdeZQhSFkai", "emailAddress": "3LLF7kwIgdYUHzKX", "password": "nILPRoBzvhLLv4u0", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpgradeHeadlessAccountV3' test.out

#- 161 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NcO9bJGKXMXC843g' \
    > test.out 2>&1
eval_tap $? 161 'AdminDeleteUserInformationV3' test.out

#- 162 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '4f9w28ZVMUARik95' \
    --after '0.4902202126011277' \
    --before '0.83331702927412' \
    --limit '35' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserLoginHistoriesV3' test.out

#- 163 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'y5jy6UMdyLKnZ2Nz' \
    --body '{"languageTag": "W535uiaF5HeXEdLg", "newPassword": "jZt8d6iwsMZX4Hot", "oldPassword": "Qx8uA6PIzQ1fsRXQ"}' \
    > test.out 2>&1
eval_tap $? 163 'AdminResetPasswordV3' test.out

#- 164 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'goN15BAp3e0li1XS' \
    --body '{"Permissions": [{"Action": 91, "Resource": "XhgCgooSNiHo5z1K", "SchedAction": 35, "SchedCron": "YnwC9d2TTTESXr5n", "SchedRange": ["O4JNM8nLGLmufTwY", "BB5Iw1AcWPcXO4ll", "PBcmUR0oD7JUjeED"]}, {"Action": 10, "Resource": "4kIJJ7wJhAuE8PCR", "SchedAction": 48, "SchedCron": "73O8XvGa4BDJDezR", "SchedRange": ["WHD8engqISvIY8d2", "wEdW9yA1DZO9qA9e", "0Nxk7xGk3i0BGgFQ"]}, {"Action": 19, "Resource": "fDAMpwVvXPrBIgt4", "SchedAction": 82, "SchedCron": "E0FH11CBma5qvmBg", "SchedRange": ["Zdjs63QFacofVJ61", "bqhPybkjuNYvZSC2", "VxkH02ckVYPGsvPQ"]}]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserPermissionV3' test.out

#- 165 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId '5bCoNZuLPwLEmusM' \
    --body '{"Permissions": [{"Action": 74, "Resource": "tpBg2Wo76aKHhgPf", "SchedAction": 10, "SchedCron": "itwRjqi35oDZbwox", "SchedRange": ["iUnQUJpDQfXGPMBh", "3u88LKPDtKnw8Z2X", "ul4e2NVYCbxWODEV"]}, {"Action": 96, "Resource": "jPawVSxmVudk7iGG", "SchedAction": 90, "SchedCron": "eqxSYXQX0Ckwid7B", "SchedRange": ["XQmB9BwVN1r1IZWj", "yzHfkC32UkjjREXw", "hyFkq1XkqQRk7aHd"]}, {"Action": 95, "Resource": "1SIKAy5QUdl3lmDm", "SchedAction": 55, "SchedCron": "6jGQwyHdLVwmcMNl", "SchedRange": ["l2yoEM2JwSs8p9K5", "UiRdEopWg8u2XFY2", "5YEqxFv2UyDMXTvO"]}]}' \
    > test.out 2>&1
eval_tap $? 165 'AdminAddUserPermissionsV3' test.out

#- 166 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'AOamG5Ur4T1Qitap' \
    --body '[{"Action": 40, "Resource": "wnlO5XVSStqiu3CG"}, {"Action": 67, "Resource": "IuYybCUDngePK3Jp"}, {"Action": 79, "Resource": "ndNjW3YDJLP4whfb"}]' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionBulkV3' test.out

#- 167 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '96' \
    --namespace $AB_NAMESPACE \
    --resource '7mBaToSjNNXpcfbW' \
    --userId 'VmTwEEVtqBTmjitS' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionV3' test.out

#- 168 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zUUSh9AZxrNB4FQY' \
    --after 'ZsZfYb6n12DJrIHr' \
    --before 'EAlgzh01RGl0RayA' \
    --limit '76' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserPlatformAccountsV3' test.out

#- 169 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'lx8CMtBx664kOSVs' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetListJusticePlatformAccounts' test.out

#- 170 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'ciT2exgXjTBXnasv' \
    --userId '8bzM1mQJPK2WZfBZ' \
    > test.out 2>&1
eval_tap $? 170 'AdminGetUserMapping' test.out

#- 171 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'eKPqpoYhVt8LoUiu' \
    --userId 'dZR8TZBdE0NPCmwK' \
    > test.out 2>&1
eval_tap $? 171 'AdminCreateJusticeUser' test.out

#- 172 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'aLInJngXhnh8ztJo' \
    --body '{"platformId": "4pX9JHYCIIpXiZB4", "platformUserId": "KEZXChWtOG0z8xma"}' \
    > test.out 2>&1
eval_tap $? 172 'AdminLinkPlatformAccount' test.out

#- 173 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'mtsFKb185T7EMtZ0' \
    --userId 'BrT2yoZDVNumzBBU' \
    --body '{"platformNamespace": "jpxtvu0jpK2sAE0w"}' \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformUnlinkV3' test.out

#- 174 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'zzhs5suK77SjkBPv' \
    --userId 'UcQs0mYZBPXZpus5' \
    --ticket 'X6FxLcTNMDxpW8pa' \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformLinkV3' test.out

#- 175 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'jLnDikkbEtLxtfbF' \
    --userId 'ZslwuDj90xsDlo9m' \
    --platformToken '5x1cH6IROgS7smoa' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 176 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId '7hourc0g8FwweGgD' \
    --body '["nWc6TLix9kMmAqb8", "zOvo9iCVQR8xyuMM", "RBvgq44pidIiKNDX"]' \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserRolesV3' test.out

#- 177 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'I74LXTsjyvA0nLnl' \
    --body '[{"namespace": "oGwvVES43FrIevZJ", "roleId": "wkmH4DPCYlxuFTSY"}, {"namespace": "XIvbwth1XENucD4L", "roleId": "R9IB4nc3avSgiVzv"}, {"namespace": "9XTPRWJRcQ1OhSrh", "roleId": "SBoZ4sIdjvt0xumE"}]' \
    > test.out 2>&1
eval_tap $? 177 'AdminSaveUserRoleV3' test.out

#- 178 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'p05fZAl8AyLqAOHG' \
    --userId 'xrDma8aZAAWIZk0i' \
    > test.out 2>&1
eval_tap $? 178 'AdminAddUserRoleV3' test.out

#- 179 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId '6qWMDbldoE5ROKWU' \
    --userId 'MEdnwevTNUMzN0QB' \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteUserRoleV3' test.out

#- 180 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WjLQvpmkKuKDD941' \
    --body '{"enabled": false, "reason": "dgAOk8fwZ4ydiwSm"}' \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateUserStatusV3' test.out

#- 181 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ovkWGb2pEyfj3MZL' \
    > test.out 2>&1
eval_tap $? 181 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 182 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId '3LwtvKHSFg1Gqmb2' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "WEK2bzNtCczD2Osu"}' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateClientSecretV3' test.out

#- 183 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'M3g6mgmztr5h8q9F' \
    --before '3Q2A7CM554tqys7k' \
    --isWildcard 'true' \
    --limit '72' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRolesV3' test.out

#- 184 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "managers": [{"displayName": "X5ShtVVYIfGE8Nbm", "namespace": "y9rJCEe1SRE7XGeZ", "userId": "GpYJGZdZjP232Gc0"}, {"displayName": "EDP6inhV19JY8nVD", "namespace": "uAjhQfkjr23jLi4n", "userId": "DrgmBbESEOJUmTwE"}, {"displayName": "NHiLK7usBHm8Q1t3", "namespace": "6EJW4zuUJxGjxf47", "userId": "whUPEIP156kYuP4J"}], "members": [{"displayName": "rz4MofRDewknygc6", "namespace": "I3ws9N9ZAZ6CXpWr", "userId": "97xfqJBvy7uxMA2R"}, {"displayName": "fTd3ibk2Ibe3mh0w", "namespace": "OTJSiOgOBDNOEYAy", "userId": "KWGHB7sLQkRl7AE3"}, {"displayName": "Z5FwcMTbhqY8Z4JY", "namespace": "TKnZFSnWuH0Bbs70", "userId": "RtwLb3xtIKkyS2FG"}], "permissions": [{"action": 67, "resource": "pP3m5Jj5NFQaEJjW", "schedAction": 57, "schedCron": "6WNkKeARgEWDd37I", "schedRange": ["dwRpXUnyMR6hmYfl", "501OSfFsgoudv2FC", "qlZSbNipqL3LrzeI"]}, {"action": 0, "resource": "47GNUP0aDf5OiyIT", "schedAction": 53, "schedCron": "DXbubKfBdcVmyygw", "schedRange": ["mfMBOFUksGeCqtvM", "veHcuSwQeGgbsmex", "6PeZjTMFfWkkOnjQ"]}, {"action": 97, "resource": "5JIGNX1O4KrQSq4H", "schedAction": 54, "schedCron": "8Mf1K943kCtA0YPl", "schedRange": ["vB3oGBbqebOnKTZz", "3ccPPlhltruaTXxs", "97o6ZF75KQhrPV3Y"]}], "roleName": "NpVvENe5NxVl1YX9"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminCreateRoleV3' test.out

#- 185 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'RkmHCVOiTw5nUFeb' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleV3' test.out

#- 186 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'RXFOdP0ZYJ674ZNK' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteRoleV3' test.out

#- 187 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'LuaNuR3RktSLXGWf' \
    --body '{"deletable": false, "isWildcard": false, "roleName": "Bv8j9ZIoDid6gOjY"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateRoleV3' test.out

#- 188 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'bdaR63JyOIdbzOM7' \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleAdminStatusV3' test.out

#- 189 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'SNEBiIX7g1dTvI7z' \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateAdminRoleStatusV3' test.out

#- 190 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId '6WjlHpwnhx7qcnsV' \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleAdminV3' test.out

#- 191 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'qrnRZV5at22B5fgw' \
    --after 'O9L64wOW6EhRh9eD' \
    --before '5aP3lXxRQdlN7j9W' \
    --limit '89' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRoleManagersV3' test.out

#- 192 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'f4gNKmqwwFZjMAVM' \
    --body '{"managers": [{"displayName": "8eekqDfa5mtNQByc", "namespace": "Fbgy72NDgphSLxgK", "userId": "o0shxaNRs4IyiQcp"}, {"displayName": "csULyFC4fbjx8EDC", "namespace": "GdI8WDK8vtquRzMg", "userId": "m3Ryi5XnYFTHMp4H"}, {"displayName": "CGP7AWx6r1tTfApJ", "namespace": "siwEgZLfsK6tvfaQ", "userId": "CIXM08K52flLmxBG"}]}' \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRoleManagersV3' test.out

#- 193 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'zv0zpOXpmiCq0lzq' \
    --body '{"managers": [{"displayName": "7wmIxally7M68S7Q", "namespace": "4uhoq2dPyYNWNAi8", "userId": "nyzZJPCjoRhKSVMF"}, {"displayName": "KU59YkasfQqq1FiY", "namespace": "L74hiYuYg5ZpyoNK", "userId": "K7AlaR1l6dVIYAQH"}, {"displayName": "fBLVCTj6e4UK4a32", "namespace": "YXDUDzYjPbTneYEm", "userId": "jAat9X1kjwcMAz6N"}]}' \
    > test.out 2>&1
eval_tap $? 193 'AdminRemoveRoleManagersV3' test.out

#- 194 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId '7mrM6Gp3Mf2CZaSw' \
    --after 'vPNorC6RGElPhsUL' \
    --before 'bFTy3bUW9d0uv61R' \
    --limit '42' \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleMembersV3' test.out

#- 195 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'Nd7sUZAMgbCExJ2o' \
    --body '{"members": [{"displayName": "161cDIfUKEA9ubqq", "namespace": "doX0PKy5Ajp2TdyF", "userId": "D8lIQ7vUtdjLrFhp"}, {"displayName": "wumo2mpdTLNDhPOI", "namespace": "WbWmKqPW59Dnn7iH", "userId": "Nf2ujeg3lH6wM9a5"}, {"displayName": "WOHhWpK03msbTQvJ", "namespace": "WI7D9CEFU53bDYpW", "userId": "TMnzePSQFNJ7EpFl"}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddRoleMembersV3' test.out

#- 196 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'PBmbwjKZUED6CZZV' \
    --body '{"members": [{"displayName": "l96aOpm3lHfAaQtl", "namespace": "Gdkv9MnlCFAD2Ng3", "userId": "bidRVWcsQM8N7oBK"}, {"displayName": "e1EjA5DyfXb0FS4R", "namespace": "woUmXwSC2l3uknkX", "userId": "o6OvawLIvpLZDO4C"}, {"displayName": "SiTWHhMnAYQSJO68", "namespace": "OoIommKG6XxinA8U", "userId": "UPURlM8BWIJblvGA"}]}' \
    > test.out 2>&1
eval_tap $? 196 'AdminRemoveRoleMembersV3' test.out

#- 197 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'Tk2dLdQ1h7k8tuYk' \
    --body '{"permissions": [{"action": 14, "resource": "awGXOckXJ53sDNVm", "schedAction": 24, "schedCron": "nMdxgQZilNhh9iho", "schedRange": ["wgiqaS436oHlXxLU", "POmkE8ZjU9xrolXd", "PwzzyMqPvNAnfaZT"]}, {"action": 47, "resource": "5bbKJKxXRYbsOqWi", "schedAction": 26, "schedCron": "l4ihrxA4TQM7KgDA", "schedRange": ["Gx2c9nxvClE9dvCy", "fh0CayckP15URyed", "AAXo1C9T2djisxh3"]}, {"action": 76, "resource": "or97gOskn3GfWfUX", "schedAction": 39, "schedCron": "96n3viGzffUCBEi8", "schedRange": ["lelpReToFcGkHrpN", "t5egeFpgYXv7kBhj", "Qsp7b1taUmo3DiHb"]}]}' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateRolePermissionsV3' test.out

#- 198 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'OcidNGcvfLZilemC' \
    --body '{"permissions": [{"action": 26, "resource": "KgxrjNSISp8lbpHI", "schedAction": 86, "schedCron": "nolnRCZkHUwB09n1", "schedRange": ["Lta2fcixEMxf5c6P", "XmRVb9GC1f6NqJSV", "2ULwVW4P9DTHkEQT"]}, {"action": 36, "resource": "NirofoL8A9e24tdb", "schedAction": 27, "schedCron": "qaf2BS9qZHP2mjIa", "schedRange": ["QXVxgbcHovh636VT", "MYdykJlRqk0JfWuz", "T90afkBoN1KC2F2q"]}, {"action": 56, "resource": "cfkv8IiKiiXGdcuE", "schedAction": 5, "schedCron": "9s4EZOkZ1TJwAIC2", "schedRange": ["vIhPa7vbqIGigQWp", "EoSBg3VMIlI5DuVA", "LoEfMkrjcog74iU1"]}]}' \
    > test.out 2>&1
eval_tap $? 198 'AdminAddRolePermissionsV3' test.out

#- 199 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'Sadu4i3VTqLf9zbP' \
    --body '["8QcjkrPES3X5Lm1m", "QyC4PvUcsdVk2a1M", "DVsImS758ur9Vyjn"]' \
    > test.out 2>&1
eval_tap $? 199 'AdminDeleteRolePermissionsV3' test.out

#- 200 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '75' \
    --resource 'AoXGFHWqxSKWVXSY' \
    --roleId '5HLVS9xStWUJwhJi' \
    > test.out 2>&1
eval_tap $? 200 'AdminDeleteRolePermissionV3' test.out

#- 201 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 201 'AdminGetMyUserV3' test.out

#- 202 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'Y2T03GhBTwd5MRfT' \
    --extendExp 'false' \
    --redirectUri 'Lw1HrN02qg4L4Q9W' \
    --password 'pK4cz7VjfevxspGl' \
    --requestId 'xe0UyjJvRR9CxXOa' \
    --userName 'UL0xeivQTonajKfY' \
    > test.out 2>&1
eval_tap $? 202 'UserAuthenticationV3' test.out

#- 203 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'BDQ4TKw3Csb0FD3P' \
    --linkingToken 'nTgUEBhvFMRunAh7' \
    --password 'FKmizcmIeBHkaKiB' \
    --username 'rLrKQF1dE27EeHdW' \
    > test.out 2>&1
eval_tap $? 203 'AuthenticationWithPlatformLinkV3' test.out

#- 204 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'false' \
    --linkingToken '0ogbOpe7viVmhaI4' \
    > test.out 2>&1
eval_tap $? 204 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 205 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'kLx84iJ7kc9QGqQQ' \
    > test.out 2>&1
eval_tap $? 205 'RequestOneTimeLinkingCodeV3' test.out

#- 206 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'nCqBdwCC0oX7nl23' \
    > test.out 2>&1
eval_tap $? 206 'ValidateOneTimeLinkingCodeV3' test.out

#- 207 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --isTransient 'false' \
    --clientId 'iEZzDpO30i0Ygv0p' \
    --oneTimeLinkCode 'oixwNWNlUJ8dBuNm' \
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
    --clientId 'zvQ6STvEmEa1B5Gk' \
    > test.out 2>&1
eval_tap $? 210 'RequestGameTokenCodeResponseV3' test.out

#- 211 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Iu9TFqKRMiE60opj' \
    --userId 'WxM6ODCbAD1zB3Ha' \
    > test.out 2>&1
eval_tap $? 211 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 212 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'l5sER6V7GRRBtE3V' \
    > test.out 2>&1
eval_tap $? 212 'RevokeUserV3' test.out

#- 213 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'W217RkjDaEeC9j7h' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'okG1j08Jx2uNlhRF' \
    --redirectUri 'Q7KPfn4PU5cwZD2b' \
    --scope 'FjIbQEHa37Ki7tKO' \
    --state 'cAKRBvcY2oMcaotW' \
    --targetAuthPage 'rH7ndGY0HFcBPrWh' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'kykQygDmG1dRYFZZ' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 213 'AuthorizeV3' test.out

#- 214 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'BxTbrKW6UMnlriOr' \
    > test.out 2>&1
eval_tap $? 214 'TokenIntrospectionV3' test.out

#- 215 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 215 'GetJWKSV3' test.out

#- 216 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'isFfzMyqa3hD5qb5' \
    --factor 'Mf22uSfSxFwCsmeg' \
    --mfaToken 'eYhVOMfrsN6Q76bi' \
    > test.out 2>&1
eval_tap $? 216 'SendMFAAuthenticationCode' test.out

#- 217 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'LrKP3HD0GzKjcta2' \
    --mfaToken 'e87HqCjI3rIlKLrr' \
    > test.out 2>&1
eval_tap $? 217 'Change2faMethod' test.out

#- 218 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'fVwNlOUIzt5gusJJ' \
    --factor 'tJc1jeerWZX8SuAr' \
    --mfaToken '1H1lLymw7xiP591P' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 218 'Verify2faCode' test.out

#- 219 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'AbKANzfVJEqnoC8C' \
    --userId 'HczcYzNOiEmMROdJ' \
    > test.out 2>&1
eval_tap $? 219 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId '4aPY74EVdcuwejvO' \
    --clientId 'ZykTUeZFnjjX2w4x' \
    --redirectUri '2jDMMAehuI22LjLB' \
    --requestId 'dJMtQdmX4kDbpBkN' \
    > test.out 2>&1
eval_tap $? 220 'AuthCodeRequestV3' test.out

#- 221 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'ezGGKMyfsnHIne1q' \
    --clientId '0s4H6E4Nhdvd784T' \
    --createHeadless 'true' \
    --deviceId 'toLsLmvdB5NaU58o' \
    --macAddress 'EtwqQ4f4CGFeQ6Ag' \
    --platformToken 'ieniVJ0nTKX9ym7b' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 221 'PlatformTokenGrantV3' test.out

#- 222 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 222 'GetRevocationListV3' test.out

#- 223 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'LjC4FCheCKMGz4a3' \
    > test.out 2>&1
eval_tap $? 223 'TokenRevocationV3' test.out

#- 224 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --clientId 'WiFqLGJSu1t9sHAB' \
    --code 'CLb3HXxqt4IL46pK' \
    --codeVerifier 'FISDnZArDOlfUHIf' \
    --extendExp 'false' \
    --password 'hPce8bRdDZNlEoAL' \
    --redirectUri 'g6Wc1aYsRh6ymzHg' \
    --refreshToken 'YLGKuNwWVgQxg6pE' \
    --username 'RQ6ZJla39bl9YDWh' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 224 'TokenGrantV3' test.out

#- 225 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'mxrl5OprkOOd9yCh' \
    > test.out 2>&1
eval_tap $? 225 'VerifyTokenV3' test.out

#- 226 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'dMhkG50EFu44Hndp' \
    --code 'AWVON6f0wkoS5fNg' \
    --error 'd490gfFfeqzzAVpT' \
    --openidAssocHandle 'MZTdBkRpExNf6nyo' \
    --openidClaimedId 'K6sYHKA5yZubjYH8' \
    --openidIdentity 'hnEKcGkAJE8DY7lI' \
    --openidMode 'i7N2oX197hSR4ITX' \
    --openidNs 'Uo6hwt3Hd3WKX1sE' \
    --openidOpEndpoint 'bXen7jIcyBVyWeEl' \
    --openidResponseNonce 'aYQyLENjpXYZyi8U' \
    --openidReturnTo 'snOsj10IR4jPlH1C' \
    --openidSig 'iAbcXv81sMO4iPCI' \
    --openidSigned 'ujOFe77fjxEKpM5f' \
    --state '8bmVKoQ0IAAwE5Sr' \
    > test.out 2>&1
eval_tap $? 226 'PlatformAuthenticationV3' test.out

#- 227 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'VZ830j6ZgGqfC5sB' \
    > test.out 2>&1
eval_tap $? 227 'PublicGetInputValidations' test.out

#- 228 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'sLOjQOjFigwyQHUV' \
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
    --clientId 'oEiYehspfU8YBVSN' \
    > test.out 2>&1
eval_tap $? 230 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 231 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId '1cRrQuVFf3uBtrLL' \
    --body '{"platformUserIds": ["Z2LD9fGaukQw9dv9", "j7ZgV2wbECb8dlIQ", "CbulJuOme6GbqjNo"]}' \
    > test.out 2>&1
eval_tap $? 231 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 232 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'VYxmYIQTQR933KZJ' \
    --platformUserId 'CoQHGYx32waz6h0n' \
    > test.out 2>&1
eval_tap $? 232 'PublicGetUserByPlatformUserIDV3' test.out

#- 233 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'zciuOZ4LGtVmJk2Z' \
    > test.out 2>&1
eval_tap $? 233 'PublicGetAsyncStatus' test.out

#- 234 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'A6sxPTZkNH9Ev7Mx' \
    --limit '59' \
    --offset '57' \
    --query 'nKRKVRFDwdXz9T4S' \
    > test.out 2>&1
eval_tap $? 234 'PublicSearchUserV3' test.out

#- 235 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "J05JnsVwPVTYxHmO", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "kReREJh5uRao6VsI", "policyId": "Iv7YCMWSs9vArqd9", "policyVersionId": "gMFjxMBVifNEqULs"}, {"isAccepted": true, "localizedPolicyVersionId": "IXiVz4YhgeS3AqjR", "policyId": "mdCHuORsT1vNcNTc", "policyVersionId": "7tXd8BmOgQqI9TAX"}, {"isAccepted": false, "localizedPolicyVersionId": "zIBwPLlCfvmourxX", "policyId": "dMEkHY7BBdTvwz16", "policyVersionId": "CflFyywLfrwURH5V"}], "authType": "lCpTld1REUAO9c8b", "code": "K7ux1EOHyW8ZFKwF", "country": "ybweOlQ0Rx5kOLYa", "dateOfBirth": "QfpFNEACIEPsUKB2", "displayName": "tWiVrrk3UFJqb1ND", "emailAddress": "99SIMbjwktTPJGw5", "password": "EmZPwwlcJ8TFl6vo", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 235 'PublicCreateUserV3' test.out

#- 236 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'c3K5zf9Bm2pmgn5r' \
    --query 'TaMsXqQOP2EEigjt' \
    > test.out 2>&1
eval_tap $? 236 'CheckUserAvailability' test.out

#- 237 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["519yID7eCQuzl3T8", "hHIc7FIRFqpi9aL1", "e0MK5JwkkPwyjjdI"]}' \
    > test.out 2>&1
eval_tap $? 237 'PublicBulkGetUsers' test.out

#- 238 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "IDYBxVfF3J2Z5176", "languageTag": "Xx5afbwdCQeNW4Wt"}' \
    > test.out 2>&1
eval_tap $? 238 'PublicSendRegistrationCode' test.out

#- 239 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "l4jTez5Z84UdhrcT", "emailAddress": "IJfoMudRy1CwobwG"}' \
    > test.out 2>&1
eval_tap $? 239 'PublicVerifyRegistrationCode' test.out

#- 240 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "3jggqzAjpniOvUMB", "languageTag": "Q2ZbKPmh3k7Nf4w8"}' \
    > test.out 2>&1
eval_tap $? 240 'PublicForgotPasswordV3' test.out

#- 241 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'Q6WRmxrqayDUmX3c' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 241 'GetAdminInvitationV3' test.out

#- 242 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'EHqifmKs0TX9NT8F' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "XyYTXA75kwIX3DZM", "policyId": "sGPAPhUjLQGzMHkF", "policyVersionId": "bLqt79DJ3esStNg6"}, {"isAccepted": true, "localizedPolicyVersionId": "AkGvKQ6ke7BZjvTp", "policyId": "wvZYZvB7gx8buaeY", "policyVersionId": "pJOqvpiHkO2Z4Buv"}, {"isAccepted": true, "localizedPolicyVersionId": "d1HBDCd72t3RQ8rC", "policyId": "gc1cfFl174vLAWfc", "policyVersionId": "8CbLxl1bQCwioYNZ"}], "authType": "EMAILPASSWD", "country": "SBBEHiD7J72PweU6", "dateOfBirth": "7UUi2E86mSn7Oz66", "displayName": "BAtwvrSab6PXaDE3", "password": "Dam8IZ8aSTWIghEv", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 242 'CreateUserFromInvitationV3' test.out

#- 243 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "WeFCmow45dVNXHfx", "country": "kDrqZQgvXADs4l5F", "dateOfBirth": "akReHlfZblnzmTGu", "displayName": "KrF4KFCshNWEqnmA", "languageTag": "e7unV9X2EczagHcP", "userName": "KmXTIv6LvWM7MPTl"}' \
    > test.out 2>&1
eval_tap $? 243 'UpdateUserV3' test.out

#- 244 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "zOie1wkdclHLEUnl", "country": "HvXPXKzTdzkvkTUa", "dateOfBirth": "YrKqHbatZcjorZdd", "displayName": "BtzgQzUSdc0J0gCo", "languageTag": "bqwabkz4RtMa5nZF", "userName": "Qc7ygLasLKYtSpSk"}' \
    > test.out 2>&1
eval_tap $? 244 'PublicPartialUpdateUserV3' test.out

#- 245 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "FFu0rj0QyzgNguSd", "emailAddress": "MfMS9qAJzWcgssf8", "languageTag": "wxzTYNcWEiDnHujW"}' \
    > test.out 2>&1
eval_tap $? 245 'PublicSendVerificationCodeV3' test.out

#- 246 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "MHkSKleq6PDkbx3e", "contactType": "Hm5IpXGw6BRIIgRZ", "languageTag": "WCOCCDXIw1Y1odBa", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 246 'PublicUserVerificationV3' test.out

#- 247 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "xwQRFoZqUOKcjJEw", "country": "jYxh1qhSSHjjtxej", "dateOfBirth": "ot1P44fQnYTFKOlf", "displayName": "pq9sSIgqa7TyUEp1", "emailAddress": "vCGWpHGTt5lUhcBn", "password": "wV3AUJZiTmbMrOMq", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 247 'PublicUpgradeHeadlessAccountV3' test.out

#- 248 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "5082RyPzB6Kx0QFo", "password": "q6wrZOps6YUHGw6a"}' \
    > test.out 2>&1
eval_tap $? 248 'PublicVerifyHeadlessAccountV3' test.out

#- 249 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "FFmQ5fcCUwsX6LqF", "newPassword": "2iAvJo35mlIDWf7H", "oldPassword": "ZCk6bAPKkay1Qht9"}' \
    > test.out 2>&1
eval_tap $? 249 'PublicUpdatePasswordV3' test.out

#- 250 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '8nNETlpaabGmHJmR' \
    > test.out 2>&1
eval_tap $? 250 'PublicCreateJusticeUser' test.out

#- 251 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'IlwXV7gPgVhziOvL' \
    --redirectUri 'PwFgC1SUjdDkzlpp' \
    --ticket 'NvdcnPiQ5hHtOCCV' \
    > test.out 2>&1
eval_tap $? 251 'PublicPlatformLinkV3' test.out

#- 252 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'LgYs1zmcQhq3nNHK' \
    --body '{"platformNamespace": "udddaHgiR06Af0N5"}' \
    > test.out 2>&1
eval_tap $? 252 'PublicPlatformUnlinkV3' test.out

#- 253 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'FwyME2fg6jxg641f' \
    > test.out 2>&1
eval_tap $? 253 'PublicPlatformUnlinkAllV3' test.out

#- 254 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'sXszbvwi7O3ww07p' \
    --ticket '7N9QVlcNIlfZyxeU' \
    > test.out 2>&1
eval_tap $? 254 'PublicForcePlatformLinkV3' test.out

#- 255 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'Tw0r00H1piRP8vuK' \
    --clientId 'EmBPPPTtgVHSwkUd' \
    --redirectUri 'qe10V4fTNpPptt4U' \
    > test.out 2>&1
eval_tap $? 255 'PublicWebLinkPlatform' test.out

#- 256 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'VZDzgoABkQ1lWPn1' \
    --state 'LnZC1zSEKCOWRhuX' \
    > test.out 2>&1
eval_tap $? 256 'PublicWebLinkPlatformEstablish' test.out

#- 257 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "qINcNYrRkxYhgf10", "emailAddress": "Ur3YIErk0TBtjXIO", "newPassword": "6DBU3lTpAuUFhwMQ"}' \
    > test.out 2>&1
eval_tap $? 257 'ResetPasswordV3' test.out

#- 258 PublicGetUserByUserIdV3
eval_tap 0 258 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 259 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lmYKkwa37Laggq7i' \
    --activeOnly 'false' \
    --after 'mxGBtTE4pHaYbRLo' \
    --before 'jh315jHhAecxq4Nv' \
    --limit '13' \
    > test.out 2>&1
eval_tap $? 259 'PublicGetUserBanHistoryV3' test.out

#- 260 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FinNb0b4bT3bNEnW' \
    > test.out 2>&1
eval_tap $? 260 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 261 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'V1kzfZOyzgIEuJYz' \
    > test.out 2>&1
eval_tap $? 261 'PublicGetUserInformationV3' test.out

#- 262 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LDBkN3LOa4YjcVIO' \
    --after '0.9950134025037222' \
    --before '0.03760662754039745' \
    --limit '35' \
    > test.out 2>&1
eval_tap $? 262 'PublicGetUserLoginHistoriesV3' test.out

#- 263 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ADreZPiaHM53wYhx' \
    --after '49Bw9hAGMZX9fPeV' \
    --before 'f2qgY3kNjjUGZJoA' \
    --limit '33' \
    > test.out 2>&1
eval_tap $? 263 'PublicGetUserPlatformAccountsV3' test.out

#- 264 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EONunENmCXcivSX4' \
    > test.out 2>&1
eval_tap $? 264 'PublicListJusticePlatformAccountsV3' test.out

#- 265 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'fi8qrsw2ySTtXbeC' \
    --body '{"platformId": "8BcsLP1ejluOYw6l", "platformUserId": "JEw31jorIZPC2MnF"}' \
    > test.out 2>&1
eval_tap $? 265 'PublicLinkPlatformAccount' test.out

#- 266 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'JTr7a0KOa58oMug6' \
    --body '{"chosenNamespaces": ["OkMJ8Qec25kHuoV1", "a3YSl1KK1O1R6H8X", "GXuT4rUIJbq6oOYl"], "requestId": "F68P3qBgyff0SeJ4"}' \
    > test.out 2>&1
eval_tap $? 266 'PublicForceLinkPlatformWithProgression' test.out

#- 267 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fPaXbcSNUNtEyX3t' \
    > test.out 2>&1
eval_tap $? 267 'PublicGetPublisherUserV3' test.out

#- 268 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'r34mtoZb46ik1xTW' \
    --password 'xzoXn6VzDNTSf15f' \
    > test.out 2>&1
eval_tap $? 268 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 269 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'coCMYEkJFDb5RNo8' \
    --before 'PsaH9srcC11KzgH6' \
    --isWildcard 'false' \
    --limit '15' \
    > test.out 2>&1
eval_tap $? 269 'PublicGetRolesV3' test.out

#- 270 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'lc88StDb6LONPjic' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetRoleV3' test.out

#- 271 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 271 'PublicGetMyUserV3' test.out

#- 272 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'SebrJxogsG265Lgq' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 273 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["3QHwhxhdjqBt0EIm", "uKviqTXv0ztW84su", "A7ctnL3vBZVd2Mpz"], "oneTimeLinkCode": "JwbgJcmRODUYiraX"}' \
    > test.out 2>&1
eval_tap $? 273 'LinkHeadlessAccountToMyAccountV3' test.out

#- 274 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "Mt5fdhfiVuXfzxzn"}' \
    > test.out 2>&1
eval_tap $? 274 'PublicSendVerificationLinkV3' test.out

#- 275 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'JVtELoJCUQbrUVPW' \
    > test.out 2>&1
eval_tap $? 275 'PublicVerifyUserByLinkV3' test.out

#- 276 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'MWw78EYdg5TElGK0' \
    --code 'coArQHdrJsf8MbdJ' \
    --error 'LnzQtH1VZi1WZFMQ' \
    --state '3SMQzszkkFF3V6w9' \
    > test.out 2>&1
eval_tap $? 276 'PlatformAuthenticateSAMLV3Handler' test.out

#- 277 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'kD2f5W5cuErAYsom' \
    --payload 'l3pdZbprB8We4DT3' \
    > test.out 2>&1
eval_tap $? 277 'LoginSSOClient' test.out

#- 278 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'UTb1hn8Aw1gT7Atj' \
    > test.out 2>&1
eval_tap $? 278 'LogoutSSOClient' test.out

#- 279 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --code 'FMfOnbDD67oh65k4' \
    > test.out 2>&1
eval_tap $? 279 'RequestGameTokenResponseV3' test.out

#- 280 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'UO6Gl6O2k9GAlO64' \
    > test.out 2>&1
eval_tap $? 280 'AdminGetDevicesByUserV4' test.out

#- 281 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType '75VW7121QAZVVm1A' \
    --endDate 'FXiKvF6OQTrkrEnN' \
    --limit '83' \
    --offset '61' \
    --startDate 'GRAQHmjQpqRLc279' \
    > test.out 2>&1
eval_tap $? 281 'AdminGetBannedDevicesV4' test.out

#- 282 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'tan4UtTTBjOVUBN4' \
    > test.out 2>&1
eval_tap $? 282 'AdminGetUserDeviceBansV4' test.out

#- 283 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "zBnDLSt4kJpKR9DX", "deviceId": "1zXELzev7QErgNmr", "deviceType": "dV5bizDqjR7GB13P", "enabled": true, "endDate": "XC69pXDVEev21Y1q", "ext": {"J1wdfot5C6uNrGiL": {}, "lPk19ddwXjrx4koQ": {}, "WpzHgY78ADklHdmr": {}}, "reason": "mpuiBecZJzdBkO8Y"}' \
    > test.out 2>&1
eval_tap $? 283 'AdminBanDeviceV4' test.out

#- 284 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'sesHUFM9e3OLIm2q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 284 'AdminGetDeviceBanV4' test.out

#- 285 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId '68zk2ocCUAvgt3zV' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 285 'AdminUpdateDeviceBanV4' test.out

#- 286 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'y0oOsemyflcANKD6' \
    --startDate 'rsmowb9QoX2mgOdL' \
    --deviceType 'fy8eHxt5q4xk7ZUb' \
    > test.out 2>&1
eval_tap $? 286 'AdminGenerateReportV4' test.out

#- 287 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 287 'AdminGetDeviceTypesV4' test.out

#- 288 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'bGID0nNRrE3OyhCL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 288 'AdminGetDeviceBansV4' test.out

#- 289 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'jIO3JTvBrRgAkA0v' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 289 'AdminDecryptDeviceV4' test.out

#- 290 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'f3JFZmyuJAneh3eK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'AdminUnbanDeviceV4' test.out

#- 291 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'IaydZDU8eytr89Z5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 291 'AdminGetUsersByDeviceV4' test.out

#- 292 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 17}' \
    > test.out 2>&1
eval_tap $? 292 'AdminCreateTestUsersV4' test.out

#- 293 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["rBCOnX790Q5YAvuP", "6MOxDTlWD26iHVY6", "3i07zy2WNRMwJx8R"]}' \
    > test.out 2>&1
eval_tap $? 293 'AdminBulkCheckValidUserIDV4' test.out

#- 294 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'juNVUnq7MfquK5dD' \
    --body '{"avatarUrl": "yhIxJ74aGsBMm6Lp", "country": "NWvJ4d01EHpY5H0M", "dateOfBirth": "aXPxcbcoHZCWbsrd", "displayName": "HVtF0Vs9kmINRU60", "languageTag": "UGTbDXOfPgRLZCyK", "userName": "TaY6tqTIWc4CTzGN"}' \
    > test.out 2>&1
eval_tap $? 294 'AdminUpdateUserV4' test.out

#- 295 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'wEDJxPs7ief5fTNl' \
    --body '{"code": "Imp5ZyLEV3LsILf4", "emailAddress": "6RyDOvAiTD0iSvXV"}' \
    > test.out 2>&1
eval_tap $? 295 'AdminUpdateUserEmailAddressV4' test.out

#- 296 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'wT3c1yGPdziXG8UA' \
    > test.out 2>&1
eval_tap $? 296 'AdminDisableUserMFAV4' test.out

#- 297 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'uwq7W3tO8Ys6T1p9' \
    > test.out 2>&1
eval_tap $? 297 'AdminListUserRolesV4' test.out

#- 298 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'dqS3R6OZmIPQBlJm' \
    --body '{"assignedNamespaces": ["4ZdMSxmfDPv2vEEA", "jVHI3LKWR5TPEabN", "OE5B5WSF7txStWCd"], "roleId": "WTblnWXwLm3tqYH8"}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateUserRoleV4' test.out

#- 299 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'W4Ok593MG2Zh09j1' \
    --body '{"assignedNamespaces": ["agwiZ5lt36cPfG68", "ENoyA2GuMGIXB0WC", "wfdxQY4vTMX044VQ"], "roleId": "ZzwpoXwxZ89KCZqM"}' \
    > test.out 2>&1
eval_tap $? 299 'AdminAddUserRoleV4' test.out

#- 300 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'oVDNMFf26Q4RW9kG' \
    --body '{"assignedNamespaces": ["Nd6I4rpgsVVqrF1K", "5bRT2ztcGpCMma3k", "DgPAcKtCv6viBAQA"], "roleId": "8LqSuuYiecpougUi"}' \
    > test.out 2>&1
eval_tap $? 300 'AdminRemoveUserRoleV4' test.out

#- 301 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'false' \
    --limit '21' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 301 'AdminGetRolesV4' test.out

#- 302 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "mKxXXY7HiCJqJOxY"}' \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateRoleV4' test.out

#- 303 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'd9SOzCPGxP9dBJzr' \
    > test.out 2>&1
eval_tap $? 303 'AdminGetRoleV4' test.out

#- 304 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'JdW52EQzmmu7qFym' \
    > test.out 2>&1
eval_tap $? 304 'AdminDeleteRoleV4' test.out

#- 305 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId '3E7BTIyDK4IkOFUt' \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "yrUeqJ4jmqZ7lN43"}' \
    > test.out 2>&1
eval_tap $? 305 'AdminUpdateRoleV4' test.out

#- 306 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'Esn7egel9rQNwvMy' \
    --body '{"permissions": [{"action": 78, "resource": "q4BTIAmKPP6Em3W3", "schedAction": 18, "schedCron": "pqcqBOgo9vW8pEaN", "schedRange": ["JASsB5vArWa4WHSU", "PYoktd1acyVx5qgU", "bRLBkMtcPWcE63Fh"]}, {"action": 79, "resource": "wCSrtQ9EakGDCdhF", "schedAction": 79, "schedCron": "mnIUbZplhmVo6MBr", "schedRange": ["guncdM90iyeTi7Xp", "xKY9KC76XIxxN2bT", "ffNnN7GsCc49QBY0"]}, {"action": 30, "resource": "AtsR56hMqgo294YO", "schedAction": 65, "schedCron": "1aY4euObUfK0MKZh", "schedRange": ["v0Nz6VInfJyr7HeM", "tjQVRPnlCQqkzsWO", "i5uhH2d0jtFKGoEL"]}]}' \
    > test.out 2>&1
eval_tap $? 306 'AdminUpdateRolePermissionsV4' test.out

#- 307 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'QgihBru4JAKwzaVG' \
    --body '{"permissions": [{"action": 84, "resource": "RI0sI9CUWzjDHRVz", "schedAction": 91, "schedCron": "96HWolhu6P33dTbl", "schedRange": ["4jPbLKlQ9pEoZkjz", "nROwhMLtdxyVmKvw", "zflpgoiixXi2jg8X"]}, {"action": 69, "resource": "etT0wbtoIjavAzkh", "schedAction": 16, "schedCron": "JsuamNjQtgF59QAL", "schedRange": ["NejCov9HugnFZjdV", "XPEXbsrfycFuMiYl", "NR2pnWfJEYdyajkG"]}, {"action": 91, "resource": "ylQN60Z2EsrFqgYE", "schedAction": 59, "schedCron": "VonRWAPeguojYU8m", "schedRange": ["zcdKewE7pjvQH0yK", "ehSA3xaWHf8yEEtY", "jX3Z6rxtnHBmrtgW"]}]}' \
    > test.out 2>&1
eval_tap $? 307 'AdminAddRolePermissionsV4' test.out

#- 308 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'VZRxoPsSozuLX426' \
    --body '["6HAakT2JGtDWqdJI", "wkpAl6jbApxEDDkd", "5eH8agW810YtqUII"]' \
    > test.out 2>&1
eval_tap $? 308 'AdminDeleteRolePermissionsV4' test.out

#- 309 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'XnEl08PpBGCfX7pL' \
    --after 'Mrbyt5jOs322e3oL' \
    --before 'e8Ds1jTepuKNGJcJ' \
    --limit '56' \
    > test.out 2>&1
eval_tap $? 309 'AdminListAssignedUsersV4' test.out

#- 310 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'Ssbyb4yYt2kG0U1g' \
    --body '{"assignedNamespaces": ["UNKziG238TIhH6Fc", "PFc8fDkvzETvlFfQ", "ndXaXuTW6W9Jh755"], "namespace": "VhXJ6e5qGOserRZK", "userId": "pBsMNRa6mwf85i8G"}' \
    > test.out 2>&1
eval_tap $? 310 'AdminAssignUserToRoleV4' test.out

#- 311 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'hopiJ01dL2IZU2cE' \
    --body '{"namespace": "Tz7oMRxrOdR16As4", "userId": "ZszdMudC11I5iCig"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminRevokeUserFromRoleV4' test.out

#- 312 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["ue5ciwmVvN5aZrEz", "4o5ZssGK2b0NnYsV", "2EIIntywYoKRv0go"], "emailAddresses": ["cYW2Q4A9LZ6obZC2", "f9H2r2G7RhGMCInm", "eqO2Epcc0aoYoV0F"], "isAdmin": false, "namespace": "RaG4K0VWV1TwTMtM", "roleId": "M5pQkpLpKPecgyB4"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminInviteUserNewV4' test.out

#- 313 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "By5wlV4jGCyYjeX0", "country": "noNNU6oi6keB6zUq", "dateOfBirth": "rDRLyMyaOZA8XENI", "displayName": "1dCsiShsvo8UlRWA", "languageTag": "zW8accb1JgVVhlMg", "userName": "8zIRPrUZNtf0WBrP"}' \
    > test.out 2>&1
eval_tap $? 313 'AdminUpdateMyUserV4' test.out

#- 314 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 314 'AdminDisableMyAuthenticatorV4' test.out

#- 315 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'LIhfKWEhPk3FUsOj' \
    > test.out 2>&1
eval_tap $? 315 'AdminEnableMyAuthenticatorV4' test.out

#- 316 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 316 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 317 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 317 'AdminGetMyBackupCodesV4' test.out

#- 318 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 318 'AdminGenerateMyBackupCodesV4' test.out

#- 319 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 319 'AdminDisableMyBackupCodesV4' test.out

#- 320 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 320 'AdminDownloadMyBackupCodesV4' test.out

#- 321 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 321 'AdminEnableMyBackupCodesV4' test.out

#- 322 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 322 'AdminSendMyMFAEmailCodeV4' test.out

#- 323 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 323 'AdminDisableMyEmailV4' test.out

#- 324 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'DFyv7HWv7mIlIQsh' \
    > test.out 2>&1
eval_tap $? 324 'AdminEnableMyEmailV4' test.out

#- 325 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 325 'AdminGetMyEnabledFactorsV4' test.out

#- 326 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'BNKRiwyjPW8cqjx7' \
    > test.out 2>&1
eval_tap $? 326 'AdminMakeFactorMyDefaultV4' test.out

#- 327 AdminInviteUserV4
eval_tap 0 327 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 328 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "PfurdM5yZj544bcv", "policyId": "82d7rvsFLInozo0I", "policyVersionId": "aKLtYFcFdrow57Ge"}, {"isAccepted": true, "localizedPolicyVersionId": "MlGlyxgdHSUmbOnk", "policyId": "Mo0vaihuBH2Mby2w", "policyVersionId": "DLMfzktP5hSQw5K2"}, {"isAccepted": true, "localizedPolicyVersionId": "LTE5dg6rVJjuHUFR", "policyId": "c1tdlK2qlEbTnGlM", "policyVersionId": "1ZRYf5FPqnaUl9n2"}], "authType": "EMAILPASSWD", "country": "wY4rZrFk2ftqYLXM", "dateOfBirth": "4f72lpH0WnvIeSyp", "displayName": "iX61BIS9TJK1AOUs", "emailAddress": "zUZnRbCxz8dDskQY", "password": "v3NTe3JxXvx4Ul6b", "passwordMD5Sum": "M8kpW3h5DnUJ30DA", "username": "Bd82QLYAF21at55Z", "verified": false}' \
    > test.out 2>&1
eval_tap $? 328 'PublicCreateTestUserV4' test.out

#- 329 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "O2M02VJOfaBmyWQv", "policyId": "TaSIfSr3XxaCGFwv", "policyVersionId": "ar3t38t3ywv2j82s"}, {"isAccepted": false, "localizedPolicyVersionId": "xFu47ZtHR7bsfy3n", "policyId": "03HoPE5ZdBEzaaVP", "policyVersionId": "MwsOceH8qjQEYAuT"}, {"isAccepted": true, "localizedPolicyVersionId": "iYIK3zlVBQHAziaQ", "policyId": "YewKf4s2CdoecLyt", "policyVersionId": "kcgU11PwBHKaYkl4"}], "authType": "EMAILPASSWD", "code": "p6wLWl9S6fb4TleG", "country": "YC2iRhxlBBMI0qoZ", "dateOfBirth": "0aURjfUH1yg0v1HL", "displayName": "yoJ2abB47nlY04VS", "emailAddress": "S04MAavcP6eMMtY9", "password": "xKMBlQlzmWGXDmNY", "passwordMD5Sum": "R7vTTSWNBHjIWZGn", "reachMinimumAge": false, "username": "msbQOdSgpGmAlwyg"}' \
    > test.out 2>&1
eval_tap $? 329 'PublicCreateUserV4' test.out

#- 330 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'jOn1IcNlvKDKd1Fz' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "QxmVoRIQn1wslLQL", "policyId": "rFcS6XYPSx0UKVHI", "policyVersionId": "NV8nryOKoLrUzJEP"}, {"isAccepted": true, "localizedPolicyVersionId": "Qj32Z4qlcmQclHAg", "policyId": "8ZwuQLyTDMGnq8SO", "policyVersionId": "rUd0fCGeej591XhU"}, {"isAccepted": true, "localizedPolicyVersionId": "HN2ADCOGcx4B6vZg", "policyId": "drCb4rNl0bVbqjb8", "policyVersionId": "wWpuLxImge3jfMvv"}], "authType": "EMAILPASSWD", "country": "ik9i1DS3iaRWvtd9", "dateOfBirth": "8my1aJ56vq1D2TjA", "displayName": "jC28B1vEle7EVm8q", "password": "UrfWNQGjNZkHlTjP", "reachMinimumAge": true, "username": "B0YvnRTwVNuEnqRy"}' \
    > test.out 2>&1
eval_tap $? 330 'CreateUserFromInvitationV4' test.out

#- 331 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "H78W3v4AqOFGVyjd", "country": "FtujczMNLXZoRfzQ", "dateOfBirth": "QcBln7Kc7R8MgfA4", "displayName": "jJr7F70eM5LIRTCI", "languageTag": "UQZZebaWqwqJE3dl", "userName": "ShZTDbeEn3qVvYwx"}' \
    > test.out 2>&1
eval_tap $? 331 'PublicUpdateUserV4' test.out

#- 332 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "wFya8GN6BGxLJhZf", "emailAddress": "yEdisdkX4Nn42wQM"}' \
    > test.out 2>&1
eval_tap $? 332 'PublicUpdateUserEmailAddressV4' test.out

#- 333 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "YJhz6Ib9Jf7EjK9B", "country": "9jREcDhinuu2Ibto", "dateOfBirth": "39mAbzuajoXbH3Ol", "displayName": "XdGVk2b5oZZKTJF0", "emailAddress": "QikQ7iC5c3n5yyxY", "password": "9KyTxmVH78UGbUP4", "reachMinimumAge": true, "username": "OTmX8xDPcpTYnipK", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 333 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 334 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "2WJTCb6twUhbvuwq", "password": "RbsgSFwmmQVuhlFz", "username": "RtHb9yUJ2orhGMEt"}' \
    > test.out 2>&1
eval_tap $? 334 'PublicUpgradeHeadlessAccountV4' test.out

#- 335 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 335 'PublicDisableMyAuthenticatorV4' test.out

#- 336 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'HGlwghiKTnQBLHBR' \
    > test.out 2>&1
eval_tap $? 336 'PublicEnableMyAuthenticatorV4' test.out

#- 337 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 337 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 338 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 338 'PublicGetMyBackupCodesV4' test.out

#- 339 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 339 'PublicGenerateMyBackupCodesV4' test.out

#- 340 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 340 'PublicDisableMyBackupCodesV4' test.out

#- 341 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 341 'PublicDownloadMyBackupCodesV4' test.out

#- 342 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'PublicEnableMyBackupCodesV4' test.out

#- 343 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 343 'PublicRemoveTrustedDeviceV4' test.out

#- 344 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 344 'PublicSendMyMFAEmailCodeV4' test.out

#- 345 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 345 'PublicDisableMyEmailV4' test.out

#- 346 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code '4elhox3fSHffF1XJ' \
    > test.out 2>&1
eval_tap $? 346 'PublicEnableMyEmailV4' test.out

#- 347 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 347 'PublicGetMyEnabledFactorsV4' test.out

#- 348 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'ZQ0EzPou5F4XWZyY' \
    > test.out 2>&1
eval_tap $? 348 'PublicMakeFactorMyDefaultV4' test.out

#- 349 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"emailAddress": "OIrvCk2rEequDuvc", "namespace": "RdnxvlP8CdGcUhkP", "namespaceDisplayName": "gur0BUb7ZlWe3oE2"}' \
    > test.out 2>&1
eval_tap $? 349 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE