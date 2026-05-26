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
echo "1..444"

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

#- 2 GetAuthorizationServerMetadataWithNamespace
samples/cli/sample-apps Iam getAuthorizationServerMetadataWithNamespace \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 2 'GetAuthorizationServerMetadataWithNamespace' test.out

#- 3 GetBansType
eval_tap 0 3 'GetBansType # SKIP deprecated' test.out

#- 4 GetListBanReason
eval_tap 0 4 'GetListBanReason # SKIP deprecated' test.out

#- 5 GetClients
eval_tap 0 5 'GetClients # SKIP deprecated' test.out

#- 6 CreateClient
eval_tap 0 6 'CreateClient # SKIP deprecated' test.out

#- 7 GetClient
eval_tap 0 7 'GetClient # SKIP deprecated' test.out

#- 8 UpdateClient
eval_tap 0 8 'UpdateClient # SKIP deprecated' test.out

#- 9 DeleteClient
eval_tap 0 9 'DeleteClient # SKIP deprecated' test.out

#- 10 UpdateClientPermission
eval_tap 0 10 'UpdateClientPermission # SKIP deprecated' test.out

#- 11 AddClientPermission
eval_tap 0 11 'AddClientPermission # SKIP deprecated' test.out

#- 12 DeleteClientPermission
eval_tap 0 12 'DeleteClientPermission # SKIP deprecated' test.out

#- 13 UpdateClientSecret
eval_tap 0 13 'UpdateClientSecret # SKIP deprecated' test.out

#- 14 GetClientsbyNamespace
eval_tap 0 14 'GetClientsbyNamespace # SKIP deprecated' test.out

#- 15 CreateClientByNamespace
eval_tap 0 15 'CreateClientByNamespace # SKIP deprecated' test.out

#- 16 DeleteClientByNamespace
eval_tap 0 16 'DeleteClientByNamespace # SKIP deprecated' test.out

#- 17 CreateUser
eval_tap 0 17 'CreateUser # SKIP deprecated' test.out

#- 18 GetAdminUsersByRoleID
eval_tap 0 18 'GetAdminUsersByRoleID # SKIP deprecated' test.out

#- 19 GetUserByLoginID
eval_tap 0 19 'GetUserByLoginID # SKIP deprecated' test.out

#- 20 GetUserByPlatformUserID
eval_tap 0 20 'GetUserByPlatformUserID # SKIP deprecated' test.out

#- 21 ForgotPassword
eval_tap 0 21 'ForgotPassword # SKIP deprecated' test.out

#- 22 GetUsersByLoginIds
eval_tap 0 22 'GetUsersByLoginIds # SKIP deprecated' test.out

#- 23 ResetPassword
eval_tap 0 23 'ResetPassword # SKIP deprecated' test.out

#- 24 SearchUser
eval_tap 0 24 'SearchUser # SKIP deprecated' test.out

#- 25 GetUserByUserID
eval_tap 0 25 'GetUserByUserID # SKIP deprecated' test.out

#- 26 UpdateUser
eval_tap 0 26 'UpdateUser # SKIP deprecated' test.out

#- 27 DeleteUser
eval_tap 0 27 'DeleteUser # SKIP deprecated' test.out

#- 28 BanUser
eval_tap 0 28 'BanUser # SKIP deprecated' test.out

#- 29 GetUserBanHistory
eval_tap 0 29 'GetUserBanHistory # SKIP deprecated' test.out

#- 30 DisableUserBan
eval_tap 0 30 'DisableUserBan # SKIP deprecated' test.out

#- 31 EnableUserBan
eval_tap 0 31 'EnableUserBan # SKIP deprecated' test.out

#- 32 ListCrossNamespaceAccountLink
eval_tap 0 32 'ListCrossNamespaceAccountLink # SKIP deprecated' test.out

#- 33 DisableUser
eval_tap 0 33 'DisableUser # SKIP deprecated' test.out

#- 34 EnableUser
eval_tap 0 34 'EnableUser # SKIP deprecated' test.out

#- 35 GetUserInformation
eval_tap 0 35 'GetUserInformation # SKIP deprecated' test.out

#- 36 DeleteUserInformation
eval_tap 0 36 'DeleteUserInformation # SKIP deprecated' test.out

#- 37 GetUserLoginHistories
eval_tap 0 37 'GetUserLoginHistories # SKIP deprecated' test.out

#- 38 UpdatePassword
eval_tap 0 38 'UpdatePassword # SKIP deprecated' test.out

#- 39 SaveUserPermission
eval_tap 0 39 'SaveUserPermission # SKIP deprecated' test.out

#- 40 AddUserPermission
eval_tap 0 40 'AddUserPermission # SKIP deprecated' test.out

#- 41 DeleteUserPermission
eval_tap 0 41 'DeleteUserPermission # SKIP deprecated' test.out

#- 42 GetUserPlatformAccounts
eval_tap 0 42 'GetUserPlatformAccounts # SKIP deprecated' test.out

#- 43 GetUserMapping
eval_tap 0 43 'GetUserMapping # SKIP deprecated' test.out

#- 44 GetUserJusticePlatformAccount
eval_tap 0 44 'GetUserJusticePlatformAccount # SKIP deprecated' test.out

#- 45 PlatformLink
eval_tap 0 45 'PlatformLink # SKIP deprecated' test.out

#- 46 PlatformUnlink
eval_tap 0 46 'PlatformUnlink # SKIP deprecated' test.out

#- 47 GetPublisherUser
eval_tap 0 47 'GetPublisherUser # SKIP deprecated' test.out

#- 48 SaveUserRoles
eval_tap 0 48 'SaveUserRoles # SKIP deprecated' test.out

#- 49 AddUserRole
eval_tap 0 49 'AddUserRole # SKIP deprecated' test.out

#- 50 DeleteUserRole
eval_tap 0 50 'DeleteUserRole # SKIP deprecated' test.out

#- 51 UpgradeHeadlessAccount
eval_tap 0 51 'UpgradeHeadlessAccount # SKIP deprecated' test.out

#- 52 UpgradeHeadlessAccountWithVerificationCode
eval_tap 0 52 'UpgradeHeadlessAccountWithVerificationCode # SKIP deprecated' test.out

#- 53 UserVerification
eval_tap 0 53 'UserVerification # SKIP deprecated' test.out

#- 54 SendVerificationCode
eval_tap 0 54 'SendVerificationCode # SKIP deprecated' test.out

#- 55 Authorization
eval_tap 0 55 'Authorization # SKIP deprecated' test.out

#- 56 GetJWKS
eval_tap 0 56 'GetJWKS # SKIP deprecated' test.out

#- 57 PlatformTokenRequestHandler
eval_tap 0 57 'PlatformTokenRequestHandler # SKIP deprecated' test.out

#- 58 RevokeUser
eval_tap 0 58 'RevokeUser # SKIP deprecated' test.out

#- 59 GetRevocationList
eval_tap 0 59 'GetRevocationList # SKIP deprecated' test.out

#- 60 RevokeToken
eval_tap 0 60 'RevokeToken # SKIP deprecated' test.out

#- 61 RevokeAUser
eval_tap 0 61 'RevokeAUser # SKIP deprecated' test.out

#- 62 TokenGrant
eval_tap 0 62 'TokenGrant # SKIP deprecated' test.out

#- 63 VerifyToken
eval_tap 0 63 'VerifyToken # SKIP deprecated' test.out

#- 64 GetRoles
eval_tap 0 64 'GetRoles # SKIP deprecated' test.out

#- 65 CreateRole
eval_tap 0 65 'CreateRole # SKIP deprecated' test.out

#- 66 GetRole
eval_tap 0 66 'GetRole # SKIP deprecated' test.out

#- 67 UpdateRole
eval_tap 0 67 'UpdateRole # SKIP deprecated' test.out

#- 68 DeleteRole
eval_tap 0 68 'DeleteRole # SKIP deprecated' test.out

#- 69 GetRoleAdminStatus
eval_tap 0 69 'GetRoleAdminStatus # SKIP deprecated' test.out

#- 70 SetRoleAsAdmin
eval_tap 0 70 'SetRoleAsAdmin # SKIP deprecated' test.out

#- 71 RemoveRoleAdmin
eval_tap 0 71 'RemoveRoleAdmin # SKIP deprecated' test.out

#- 72 GetRoleManagers
eval_tap 0 72 'GetRoleManagers # SKIP deprecated' test.out

#- 73 AddRoleManagers
eval_tap 0 73 'AddRoleManagers # SKIP deprecated' test.out

#- 74 RemoveRoleManagers
eval_tap 0 74 'RemoveRoleManagers # SKIP deprecated' test.out

#- 75 GetRoleMembers
eval_tap 0 75 'GetRoleMembers # SKIP deprecated' test.out

#- 76 AddRoleMembers
eval_tap 0 76 'AddRoleMembers # SKIP deprecated' test.out

#- 77 RemoveRoleMembers
eval_tap 0 77 'RemoveRoleMembers # SKIP deprecated' test.out

#- 78 UpdateRolePermissions
eval_tap 0 78 'UpdateRolePermissions # SKIP deprecated' test.out

#- 79 AddRolePermission
eval_tap 0 79 'AddRolePermission # SKIP deprecated' test.out

#- 80 DeleteRolePermission
eval_tap 0 80 'DeleteRolePermission # SKIP deprecated' test.out

#- 81 AdminGetAgeRestrictionStatusV2
eval_tap 0 81 'AdminGetAgeRestrictionStatusV2 # SKIP deprecated' test.out

#- 82 AdminUpdateAgeRestrictionConfigV2
eval_tap 0 82 'AdminUpdateAgeRestrictionConfigV2 # SKIP deprecated' test.out

#- 83 GetListCountryAgeRestriction
eval_tap 0 83 'GetListCountryAgeRestriction # SKIP deprecated' test.out

#- 84 UpdateCountryAgeRestriction
eval_tap 0 84 'UpdateCountryAgeRestriction # SKIP deprecated' test.out

#- 85 AdminSearchUsersV2
eval_tap 0 85 'AdminSearchUsersV2 # SKIP deprecated' test.out

#- 86 AdminGetUserByUserIdV2
eval_tap 0 86 'AdminGetUserByUserIdV2 # SKIP deprecated' test.out

#- 87 AdminUpdateUserV2
eval_tap 0 87 'AdminUpdateUserV2 # SKIP deprecated' test.out

#- 88 AdminBanUserV2
eval_tap 0 88 'AdminBanUserV2 # SKIP deprecated' test.out

#- 89 AdminGetUserBanV2
eval_tap 0 89 'AdminGetUserBanV2 # SKIP deprecated' test.out

#- 90 AdminDisableUserV2
eval_tap 0 90 'AdminDisableUserV2 # SKIP deprecated' test.out

#- 91 AdminEnableUserV2
eval_tap 0 91 'AdminEnableUserV2 # SKIP deprecated' test.out

#- 92 AdminResetPasswordV2
eval_tap 0 92 'AdminResetPasswordV2 # SKIP deprecated' test.out

#- 93 AdminDeletePlatformLinkV2
eval_tap 0 93 'AdminDeletePlatformLinkV2 # SKIP deprecated' test.out

#- 94 AdminPutUserRolesV2
eval_tap 0 94 'AdminPutUserRolesV2 # SKIP deprecated' test.out

#- 95 AdminCreateUserRolesV2
eval_tap 0 95 'AdminCreateUserRolesV2 # SKIP deprecated' test.out

#- 96 PublicGetCountryAgeRestriction
eval_tap 0 96 'PublicGetCountryAgeRestriction # SKIP deprecated' test.out

#- 97 PublicCreateUserV2
eval_tap 0 97 'PublicCreateUserV2 # SKIP deprecated' test.out

#- 98 PublicForgotPasswordV2
eval_tap 0 98 'PublicForgotPasswordV2 # SKIP deprecated' test.out

#- 99 PublicResetPasswordV2
eval_tap 0 99 'PublicResetPasswordV2 # SKIP deprecated' test.out

#- 100 PublicGetUserByUserIDV2
eval_tap 0 100 'PublicGetUserByUserIDV2 # SKIP deprecated' test.out

#- 101 PublicUpdateUserV2
eval_tap 0 101 'PublicUpdateUserV2 # SKIP deprecated' test.out

#- 102 PublicGetUserBan
eval_tap 0 102 'PublicGetUserBan # SKIP deprecated' test.out

#- 103 PublicUpdatePasswordV2
eval_tap 0 103 'PublicUpdatePasswordV2 # SKIP deprecated' test.out

#- 104 GetListJusticePlatformAccounts
eval_tap 0 104 'GetListJusticePlatformAccounts # SKIP deprecated' test.out

#- 105 PublicPlatformLinkV2
eval_tap 0 105 'PublicPlatformLinkV2 # SKIP deprecated' test.out

#- 106 PublicDeletePlatformLinkV2
eval_tap 0 106 'PublicDeletePlatformLinkV2 # SKIP deprecated' test.out

#- 107 AdminGetBansTypeV3
samples/cli/sample-apps Iam adminGetBansTypeV3 \
    > test.out 2>&1
eval_tap $? 107 'AdminGetBansTypeV3' test.out

#- 108 AdminGetListBanReasonV3
samples/cli/sample-apps Iam adminGetListBanReasonV3 \
    > test.out 2>&1
eval_tap $? 108 'AdminGetListBanReasonV3' test.out

#- 109 AdminListClientAvailablePermissions
samples/cli/sample-apps Iam adminListClientAvailablePermissions \
    --excludePermissions 'false' \
    > test.out 2>&1
eval_tap $? 109 'AdminListClientAvailablePermissions' test.out

#- 110 AdminUpdateAvailablePermissionsByModule
samples/cli/sample-apps Iam adminUpdateAvailablePermissionsByModule \
    --forceDelete 'true' \
    --body '{"modules": [{"docLink": "ETORpx4DMyZUa6Pp", "groups": [{"group": "JptkVmtSF6lhzAXm", "groupId": "mTdYSBAXWZQUvnyl", "package": "7qBh7qZ5UsMw5gVQ", "permissions": [{"allowedActions": [4, 42, 69], "resource": "5Jv1YmSGRgJMdzuP"}, {"allowedActions": [71, 15, 75], "resource": "HM9VubupsaB1LZhd"}, {"allowedActions": [57, 4, 70], "resource": "5sbusqctK9Ev6J1h"}]}, {"group": "oeTh64PKdFMdfIa7", "groupId": "mFF4S7gt1aYVlbUN", "package": "UIOQNa0NaXpJzS4l", "permissions": [{"allowedActions": [24, 42, 69], "resource": "0yQqGtFJzwAQVLqW"}, {"allowedActions": [31, 97, 10], "resource": "YfKsHPGgzWXr9nn3"}, {"allowedActions": [20, 19, 60], "resource": "J0vZ6dIAwlZSRE4Z"}]}, {"group": "n3fBF13wa04d3PK4", "groupId": "PXxRRdUVxONDpIwp", "package": "404zwpET4brqBykX", "permissions": [{"allowedActions": [48, 6, 30], "resource": "CfqCaj3Vxg3aExyf"}, {"allowedActions": [24, 21, 10], "resource": "kGJYTSILxXd2DDHC"}, {"allowedActions": [88, 6, 31], "resource": "q957NSnjv4KwAUMt"}]}], "module": "RqswHRtxCfofRXYF", "moduleId": "moiK2PIQbXKlbCgP", "package": "OnLHx2y9rWKeeN9g"}, {"docLink": "rEt0C7r9O9KmwCHP", "groups": [{"group": "2DDfmAtVb9kECaC9", "groupId": "MbBpOl3r7ldTEtkg", "package": "P4uTC8NpPWRL0rgJ", "permissions": [{"allowedActions": [5, 53, 99], "resource": "Zha4NGGlfnPXqXlz"}, {"allowedActions": [81, 100, 11], "resource": "OBpbxmYlBohJAcnR"}, {"allowedActions": [4, 37, 13], "resource": "zu3CAHdRw44igQfu"}]}, {"group": "xRrXKTJPWF51mxz6", "groupId": "pbce9TfXtCnX3wlE", "package": "XHm34OZghnwqOLxb", "permissions": [{"allowedActions": [43, 37, 86], "resource": "ky9KSiOIQhq3RK5H"}, {"allowedActions": [14, 34, 17], "resource": "80vkLNpedp52xliZ"}, {"allowedActions": [28, 14, 4], "resource": "HmBnfb6YxbkKih5v"}]}, {"group": "ZGEIWFPMRA8graCk", "groupId": "fh38f9ugRqXq0OKj", "package": "P0ujhUelZUoTST6i", "permissions": [{"allowedActions": [87, 73, 38], "resource": "WGPXEFCKi319PpEp"}, {"allowedActions": [50, 89, 54], "resource": "xGrqn13u1BYQCeD6"}, {"allowedActions": [39, 99, 3], "resource": "6HRImi5Wj7sJZCTe"}]}], "module": "N7dpAIDc1gffQg28", "moduleId": "tcHhtJ3bABiU1Dh1", "package": "tEPJZ3cqBfuHChKg"}, {"docLink": "wqPddJsEV0ouE4Pw", "groups": [{"group": "R2wx99csxht5HnRJ", "groupId": "uWCuRjCHZynZRClU", "package": "CmnisYlv3doYqjRR", "permissions": [{"allowedActions": [3, 18, 24], "resource": "YA5NIEX5bA3MXM1y"}, {"allowedActions": [98, 42, 33], "resource": "8jkVSGKRuyHDvqMU"}, {"allowedActions": [32, 67, 71], "resource": "0CIPKPkA5yfmlDWA"}]}, {"group": "IvYVNrXRyid6KNHT", "groupId": "kULFQ7cQr8N82IjC", "package": "Xvs9wUesw8gvnVmr", "permissions": [{"allowedActions": [75, 72, 78], "resource": "nEaN019TGEdoB51S"}, {"allowedActions": [59, 12, 13], "resource": "OpI2i6w3X7VPxcWL"}, {"allowedActions": [73, 19, 22], "resource": "AyDXGJ59iTenzFRV"}]}, {"group": "3OKZKDUSFDOBXJ2R", "groupId": "ntiNDvb6w7vRx0xP", "package": "b3l7jcJscsHfFr9Y", "permissions": [{"allowedActions": [84, 71, 6], "resource": "VZPCnzslgfhk7r3X"}, {"allowedActions": [47, 11, 89], "resource": "XxBl8jJ6nDREg3lR"}, {"allowedActions": [43, 17, 3], "resource": "Y3kLTqxnI5Caw7Zm"}]}], "module": "AyYp1gnIHhntHtxy", "moduleId": "bhfcSs5cTAnixCz5", "package": "lrf3JixEPkeDgYNb"}]}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateAvailablePermissionsByModule' test.out

#- 111 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'false' \
    --body '{"groupId": "PCXG4BOoBAvvzF8e", "moduleId": "4fiZEFHn2GhSSCsy"}' \
    > test.out 2>&1
eval_tap $? 111 'AdminDeleteConfigPermissionsByGroup' test.out

#- 112 AdminUpdateModulePackage
samples/cli/sample-apps Iam adminUpdateModulePackage \
    --body '{"data": [{"moduleId": "drMlJcYWbHKEek32", "package": "tWTLnQXtG4Pmpz3W"}, {"moduleId": "0lZCw0AhzBRf2F99", "package": "XCE8D1Rvv0HR3bVJ"}, {"moduleId": "KGdKwQGDzb4HTPbn", "package": "8KROaCsc6TiwW98c"}]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminUpdateModulePackage' test.out

#- 113 AdminListClientTemplates
samples/cli/sample-apps Iam adminListClientTemplates \
    > test.out 2>&1
eval_tap $? 113 'AdminListClientTemplates' test.out

#- 114 AdminGetInputValidations
eval_tap 0 114 'AdminGetInputValidations # SKIP deprecated' test.out

#- 115 AdminUpdateInputValidations
eval_tap 0 115 'AdminUpdateInputValidations # SKIP deprecated' test.out

#- 116 AdminResetInputValidations
eval_tap 0 116 'AdminResetInputValidations # SKIP deprecated' test.out

#- 117 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'OodJFAftSoBYImhP' \
    --before 'MsKghqrtJAJps75L' \
    --endDate 'dSq6b1TWgILG5Qoi' \
    --limit '1' \
    --query 'vg5GIVC8e3ngDApV' \
    --roleId 'GBfkwJB8qdqVJpSZ' \
    --startDate 'm2Xcf3Uc0VGUHA75' \
    > test.out 2>&1
eval_tap $? 117 'ListAdminsV3' test.out

#- 118 AdminGetAgeRestrictionStatusV3
samples/cli/sample-apps Iam adminGetAgeRestrictionStatusV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetAgeRestrictionStatusV3' test.out

#- 119 AdminUpdateAgeRestrictionConfigV3
samples/cli/sample-apps Iam adminUpdateAgeRestrictionConfigV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 98, "enable": true}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 120 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'AdminGetListCountryAgeRestrictionV3' test.out

#- 121 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'YifuMpgPT4BFxCeT' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 26}' \
    > test.out 2>&1
eval_tap $? 121 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 122 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'DcrAL6wthrB43TWw' \
    --limit '59' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 122 'AdminGetBannedUsersV3' test.out

#- 123 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "uHvGL3I4HrFXa0Be", "comment": "OBNDzy0Mxk1i7s6U", "endDate": "o9RHaaxrX1Qh1iZY", "reason": "dTVvxJWoO7TtUG7E", "skipNotif": false, "userIds": ["r6lvOvHEmkGtD5Lf", "EcBWltP10KabAnid", "2nYErPIljUMoJ73Y"]}' \
    > test.out 2>&1
eval_tap $? 123 'AdminBanUserBulkV3' test.out

#- 124 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "jmhCASTqp1ykQowA", "userId": "eTCt6xIgcKTLY53t"}, {"banId": "bXY46Kz2ykj9hpN6", "userId": "kH2f02r0SbfZUUTS"}, {"banId": "kIcYuWem1sqp122l", "userId": "P3ncDFFmU18SxhnF"}]}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUnbanUserBulkV3' test.out

#- 125 AdminGetBansTypeWithNamespaceV3
samples/cli/sample-apps Iam adminGetBansTypeWithNamespaceV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 125 'AdminGetBansTypeWithNamespaceV3' test.out

#- 126 AdminGetClientsByNamespaceV3
samples/cli/sample-apps Iam adminGetClientsByNamespaceV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'Oi1PUSvKVyoYys4T' \
    --clientName 'aHIw4IVDfI0wOWfL' \
    --clientType 'cGewwW7OmPyGWCCq' \
    --limit '21' \
    --offset '32' \
    --skipLoginQueue 'true' \
    > test.out 2>&1
eval_tap $? 126 'AdminGetClientsByNamespaceV3' test.out

#- 127 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["DpD74bOWBh7Vxoxf", "TMSd9CNmCABsft9O", "OhYOFSS5NUXwEruE"], "clientUpdateRequest": {"audiences": ["dtZtJhUWxPPxqclr", "m6aIRqggjGvmN9rC", "c98xVV2TNuCA78dP"], "baseUri": "Oq5OurJdyQpZmnig", "clientName": "bpx4K5KHzFC4S4xf", "clientPermissions": [{"action": 31, "resource": "n04ufHIzFrSXRFhI", "schedAction": 84, "schedCron": "RXNs8WoXyUJmwfmQ", "schedRange": ["IhohlGioIJCykt8d", "uca45k19UK0oVdIz", "bnc37RVda7xMiRcz"]}, {"action": 12, "resource": "TwgQprkwor5JyBva", "schedAction": 31, "schedCron": "p4nHkNyfQbcTzGkJ", "schedRange": ["QHUb7KTXkmCGjj8r", "4o48R6tk3kEoCzWw", "OCYTFv1WxbOPY8lU"]}, {"action": 34, "resource": "9hEWushOoO71XRcS", "schedAction": 96, "schedCron": "Pg2YDZigKk1raMPg", "schedRange": ["M1LFTXT5VEsErtGD", "rYwAl6oyw0xjM1J3", "BELoZkA7Z9Qh96pr"]}], "clientPlatform": "eYvKZEOP2KOlFRJa", "deletable": true, "description": "Ub6OEwnpgOP8df7E", "modulePermissions": [{"moduleId": "I3HlsrpxCBY5EoD1", "selectedGroups": [{"groupId": "ggn0TeyBkmunQ0m5", "selectedActions": [67, 24, 6]}, {"groupId": "YHY7QF45lPe0qiDm", "selectedActions": [70, 12, 86]}, {"groupId": "PGWHxE0F9F6N8KC0", "selectedActions": [61, 40, 16]}]}, {"moduleId": "w42eXVEG8kyWNw1K", "selectedGroups": [{"groupId": "Ivm1nPz12IGPpkyB", "selectedActions": [44, 32, 73]}, {"groupId": "HfuVPfscCjlsbZU3", "selectedActions": [2, 41, 6]}, {"groupId": "btufC6CbtPJ5BXK1", "selectedActions": [43, 70, 50]}]}, {"moduleId": "1Dg8Uidw7ekpAR0l", "selectedGroups": [{"groupId": "4jDRxpTKZxcY1LQP", "selectedActions": [74, 11, 18]}, {"groupId": "NlVmGcN5uKpmnz5x", "selectedActions": [84, 93, 69]}, {"groupId": "fx4lYZsBzPTv7yBQ", "selectedActions": [91, 99, 25]}]}], "namespace": "coBxepIhrakTLu6D", "oauthAccessTokenExpiration": 34, "oauthAccessTokenExpirationTimeUnit": "BSfw1VKeDPKd9Py9", "oauthRefreshTokenExpiration": 58, "oauthRefreshTokenExpirationTimeUnit": "aHRvj46ZFXbqxavA", "redirectUri": "DhEUDIXoBQc86aH0", "scopes": ["oGhsqEle5MCd9Jn9", "wFYxrkCdNObE5eB9", "hE0CqQ0uoxBkvicB"], "skipLoginQueue": false, "twoFactorEnabled": true}}' \
    > test.out 2>&1
eval_tap $? 127 'AdminBulkUpdateClientsV3' test.out

#- 128 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["WGNaz8x4EJdXguqH", "7Baau05W6H6W5MOH", "LrdCtnL9zSIdbYGo"], "baseUri": "6ACUHeWXSVPD4Q0P", "clientId": "nERUxxmQaz7X6h38", "clientName": "qNKQAMjLLzk3KVOX", "clientPermissions": [{"action": 25, "resource": "HXmmZFmzIM3zp29Q", "schedAction": 71, "schedCron": "CNB5PsvP8kiKyyUj", "schedRange": ["7ikuHjV0oeNZRJWF", "zLjWk3uy9FEitTOl", "qNdnqYGvJG60exGZ"]}, {"action": 74, "resource": "HugwKYYS8N9msWJV", "schedAction": 64, "schedCron": "b6WqRjf98WNx00a6", "schedRange": ["nkOsFwuf9LNOusfg", "UNpE5aAf7NxWBlzK", "ait0dDxb4nQDfyV2"]}, {"action": 91, "resource": "9nobIBnKCYh3IIgF", "schedAction": 12, "schedCron": "HhhRp7DRJUFZ8dYe", "schedRange": ["oDru7tGezYA348lr", "I6kTrVKAFiZeKM1w", "2mQUuz7vhtRAJ60r"]}], "clientPlatform": "nSAH8pRbB4Smz2Kq", "deletable": true, "description": "mEkMP351dqgwz6xl", "modulePermissions": [{"moduleId": "YesNSTRceFByOnai", "selectedGroups": [{"groupId": "JX2ZT0Tw5UB1Wzop", "selectedActions": [98, 89, 1]}, {"groupId": "ECqiyHAFBv9otQL8", "selectedActions": [55, 51, 91]}, {"groupId": "ylMuXl6baIc3D1lI", "selectedActions": [19, 35, 16]}]}, {"moduleId": "lkcoASwak4O2ZW4e", "selectedGroups": [{"groupId": "VdY4pBqQMuyOBqGT", "selectedActions": [87, 0, 25]}, {"groupId": "iVTZZYquoywHofQr", "selectedActions": [47, 27, 48]}, {"groupId": "1B0KABCVs3e37Fh2", "selectedActions": [5, 7, 62]}]}, {"moduleId": "9XffnIDBzFswgIKw", "selectedGroups": [{"groupId": "cRBcdoyyZevX67XC", "selectedActions": [69, 88, 38]}, {"groupId": "OuN4rzzWvNtMKd4n", "selectedActions": [81, 92, 42]}, {"groupId": "BPv9qNMT0fOuA0Zy", "selectedActions": [64, 56, 98]}]}], "namespace": "wR62CF1C4vX2bfai", "oauthAccessTokenExpiration": 97, "oauthAccessTokenExpirationTimeUnit": "rTFp68fGoJsAvIBp", "oauthClientType": "416pA4J3CI01x7iB", "oauthRefreshTokenExpiration": 90, "oauthRefreshTokenExpirationTimeUnit": "qdxJgklrLkLu7GvU", "redirectUri": "cF531tQ3x3HmIFhP", "scopes": ["jiSYIxQU23qNDMKB", "KK9ksG2zJhkWTFg9", "fKeeKsiyjRa5R1Y1"], "secret": "nNGabdyvQBlongXW", "skipLoginQueue": true, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 128 'AdminCreateClientV3' test.out

#- 129 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'EdT3xrSXgs3Mm03Q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 129 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 130 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'UfzOzYrFxEiah1xQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 130 'AdminDeleteClientV3' test.out

#- 131 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'kKPSvVk2MuGNozys' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["bHmGLzKrHdRapTbF", "DW9xW0bXgLFm5vol", "RV6OJ9LSfsA14WIC"], "baseUri": "CtyrdjQtjRfmUjW8", "clientName": "DJbx8juzTqlunSxo", "clientPermissions": [{"action": 59, "resource": "zYCDWewPFCqd9MI9", "schedAction": 97, "schedCron": "DZvIUocOKAJ3Lz0h", "schedRange": ["XxpcGnMYVePjvxmn", "OrGlui2CyDHAMaHG", "OtuPcdoAOGcr2SwR"]}, {"action": 73, "resource": "gW4KLH3EZVr9Eqsn", "schedAction": 91, "schedCron": "IrVTZs5JK8STFCRj", "schedRange": ["sCDpYAonF5Zth9ti", "EDL8B1mF1wGp9SHb", "fWUeTwHQQDrYyXxZ"]}, {"action": 19, "resource": "oQr0TM0qwvdbUPll", "schedAction": 4, "schedCron": "HNNR0bygbUKP5y9g", "schedRange": ["kCiHTwdNAeymiEZb", "uQLMYV2GtRwllUDq", "3gvwNGhHND6r1V7M"]}], "clientPlatform": "SElaVAv6HjcA6KHb", "deletable": true, "description": "DQczeccQxKVVz3Mo", "modulePermissions": [{"moduleId": "F4SMTFDwk5kECFVi", "selectedGroups": [{"groupId": "uFtk9S6VudKoAoTv", "selectedActions": [53, 2, 81]}, {"groupId": "OxasmQWKhPKRCbmO", "selectedActions": [51, 53, 9]}, {"groupId": "VJ9S9swkyaUrHGJq", "selectedActions": [95, 8, 33]}]}, {"moduleId": "z6ByTRc8qGX9O8rd", "selectedGroups": [{"groupId": "TyTkS0lDofW8gCkl", "selectedActions": [23, 80, 62]}, {"groupId": "uvGws3Ip2hb6XWPN", "selectedActions": [64, 100, 64]}, {"groupId": "qdx7YcEu3jBCftBE", "selectedActions": [5, 23, 68]}]}, {"moduleId": "dxpAigzuitKWKW3Q", "selectedGroups": [{"groupId": "yosmsNB8MDLwBfS6", "selectedActions": [69, 56, 9]}, {"groupId": "0pes2Xp8xmoCrUkR", "selectedActions": [54, 100, 73]}, {"groupId": "avlF1ZbrmYOJFKZh", "selectedActions": [40, 77, 41]}]}], "namespace": "U7VKk4zumZK9tXX9", "oauthAccessTokenExpiration": 56, "oauthAccessTokenExpirationTimeUnit": "K64ZoU180xPEE3Zf", "oauthRefreshTokenExpiration": 81, "oauthRefreshTokenExpirationTimeUnit": "FwSnWGTsRJNprMoY", "redirectUri": "vTUS211ltknvl5p9", "scopes": ["81uZzKSgq6cAP7C4", "W4UctSA5AxRiYP9O", "vNdRr0AKF4EhLnys"], "skipLoginQueue": false, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 131 'AdminUpdateClientV3' test.out

#- 132 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'Y9Fk1w3WUGcoichD' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 92, "resource": "sv3AHR2oq7mb3OGQ"}, {"action": 57, "resource": "MYTTyXYXK23YjJFu"}, {"action": 0, "resource": "rcfTZzUaq7ALGhYT"}]}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateClientPermissionV3' test.out

#- 133 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'axHnwIBzxoeOOlAk' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 70, "resource": "xm21URx4J3XVhH6v"}, {"action": 29, "resource": "UAv6YtP9Izuj949O"}, {"action": 0, "resource": "896txwq9fPt3kUB3"}]}' \
    > test.out 2>&1
eval_tap $? 133 'AdminAddClientPermissionsV3' test.out

#- 134 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '50' \
    --clientId 'swKBx8QblK4IfSTV' \
    --namespace $AB_NAMESPACE \
    --resource 'H6l8iiOst6Hp8hLW' \
    > test.out 2>&1
eval_tap $? 134 'AdminDeleteClientPermissionV3' test.out

#- 135 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'v5pRQiQ9bvNDbGmS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 135 'AdminGetConfigValueV3' test.out

#- 136 AdminGetCountryListV3
samples/cli/sample-apps Iam adminGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    --filterBlacklist 'false' \
    > test.out 2>&1
eval_tap $? 136 'AdminGetCountryListV3' test.out

#- 137 AdminGetCountryBlacklistV3
samples/cli/sample-apps Iam adminGetCountryBlacklistV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 137 'AdminGetCountryBlacklistV3' test.out

#- 138 AdminAddCountryBlacklistV3
samples/cli/sample-apps Iam adminAddCountryBlacklistV3 \
    --namespace $AB_NAMESPACE \
    --body '{"blacklist": ["CgLthx9qJLdOZTCt", "o0dDtJ6WRI8CCMZr", "V4sy2jUtOvbWr8A7"]}' \
    > test.out 2>&1
eval_tap $? 138 'AdminAddCountryBlacklistV3' test.out

#- 139 AdminGetNamespaceScopedInputValidations
samples/cli/sample-apps Iam adminGetNamespaceScopedInputValidations \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 139 'AdminGetNamespaceScopedInputValidations' test.out

#- 140 AdminUpdateNamespaceScopedInputValidations
samples/cli/sample-apps Iam adminUpdateNamespaceScopedInputValidations \
    --namespace $AB_NAMESPACE \
    --body '[{"field": "tfaF6CLK59uDZhRZ", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["8lGoUSRAGPd7aE4i", "ZO1xtMvIcKQ9I8sL", "37ThBoYyDAsBw5nl"], "preferRegex": true, "regex": "npkHo4OoQmAGialg"}, "blockedWord": ["pENcaiVKVKVOfHzn", "AAuHA2okwVApCbe7", "3FgVS05hOfUOoMEn"], "description": [{"language": "C2sAbmZKvTXeF2Ax", "message": ["VAQes51tej7skPiV", "1VGYBz2RyUiIXxKX", "F8eGtcjUTqbKrU7A"]}, {"language": "ywkaXbpY1nevDJd2", "message": ["6a5aACAg7CfKT22R", "JyqwX7ZAIwNVKyTA", "LUpeLtDqM9E2zqQE"]}, {"language": "6fkkpffm8Vi9wFDG", "message": ["dfgqokA1gZUBa3Fu", "wBGqrdWIaAR0ZC2r", "mwDVGFGT38A6Cd2a"]}], "isCustomRegex": true, "letterCase": "JCTlc7TCX7yu0Ceh", "maxLength": 25, "maxRepeatingAlphaNum": 56, "maxRepeatingSpecialCharacter": 96, "minCharType": 100, "minLength": 99, "profanityFilter": "dTpnqsDMjw2h5EXa", "regex": "5KhIQ9ICObFV4iMq", "specialCharacterLocation": "yXt7lToBoRrRgJmb", "specialCharacters": ["BasAj0YN24F0GXSf", "6Kvx2NLvFqjTDm7C", "ftNmxItr0MXXK1zo"]}}, {"field": "CL5pJziRdtsYi2oS", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["WfO1WKSffu521LH2", "YiyriGaI61OFWNwy", "4CbOoxu3WD3enI7D"], "preferRegex": true, "regex": "2dlPHrFmQfAkLAYo"}, "blockedWord": ["56bFlMthHE6iFuTm", "rhOXGDyb4lATQIuQ", "pWEc0xwUQHcRtc5q"], "description": [{"language": "DNuDYyrziXn7dfbu", "message": ["7605paAXUa4Tf6RI", "0WPz6rbUEw2F2UQD", "fSkM3dgamemQkt4g"]}, {"language": "GU1DSZ77m5wMljuG", "message": ["bwtn71yuTyZGjjmO", "8QLB4k0VxqEjPMlh", "pfL1MPDtTFpV0N9P"]}, {"language": "I0GNfRSOprtbhzwt", "message": ["vV7fc8cQf3NavD3d", "9BjWJL87KibERtWR", "6GUqzLlfBtpCk722"]}], "isCustomRegex": false, "letterCase": "lSFpIxA0dm2UcAtS", "maxLength": 90, "maxRepeatingAlphaNum": 20, "maxRepeatingSpecialCharacter": 60, "minCharType": 27, "minLength": 26, "profanityFilter": "cd5uWmb4DxPVwk7e", "regex": "YrZc4VcA99G67WdH", "specialCharacterLocation": "ZTmKhtbjidl6iOVF", "specialCharacters": ["QeFVCkxfFFQuO9ms", "9ddV1inxcbUYFyF8", "G4ZdPOflqooLzIiy"]}}, {"field": "a0xKpzgMIHYb60nY", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["cQO7uqCoYaks9RRz", "wR3ebYyBKChUNIyM", "mRlIDoK7ofIe4jhL"], "preferRegex": false, "regex": "HDBXE0a9ydXKDLo0"}, "blockedWord": ["584Saom5MpR9IZ2S", "HU2YfMRuQ88snElv", "r0I8KguUnJPmIXq4"], "description": [{"language": "1HYNqXiYxUUTGxQJ", "message": ["d45h7bx2V3NUk466", "05dQFXQEiWVl4svJ", "Nyogf7DAh4WO3trT"]}, {"language": "kqJiXrhRsmYFCwao", "message": ["xmlYElLt9xy0512F", "NXbUseWfaJsFxD3m", "AkGZ23Cgsb94EPbF"]}, {"language": "d6s1e4yqUdFLPmWf", "message": ["lP8XRu5ALdeMdgqT", "9xEdcl8gssnVN0ij", "2O9jAyyvaDUDMrXq"]}], "isCustomRegex": true, "letterCase": "BUVBt48W6siKurl8", "maxLength": 35, "maxRepeatingAlphaNum": 58, "maxRepeatingSpecialCharacter": 93, "minCharType": 8, "minLength": 29, "profanityFilter": "PaTPyHLSiYUwHTnV", "regex": "4uvfDiNyWR3bBnfn", "specialCharacterLocation": "sHcwPI7OLWGCpRGP", "specialCharacters": ["fmwazvqppOJOBJrg", "MLia5ip35ey6R0jl", "d2CRLFbA3MHUSgHn"]}}]' \
    > test.out 2>&1
eval_tap $? 140 'AdminUpdateNamespaceScopedInputValidations' test.out

#- 141 AdminResetNamespaceScopedInputValidations
samples/cli/sample-apps Iam adminResetNamespaceScopedInputValidations \
    --field 'RZ1uuV08XQjqWD1b' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'AdminResetNamespaceScopedInputValidations' test.out

#- 142 AdminGetLoginAllowlistV3
samples/cli/sample-apps Iam adminGetLoginAllowlistV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 142 'AdminGetLoginAllowlistV3' test.out

#- 143 AdminUpdateLoginAllowlistV3
samples/cli/sample-apps Iam adminUpdateLoginAllowlistV3 \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "roleIds": ["zml6Aji5TidWdxcq", "KNP0ge08zzc5evc2", "oJ37qo4GVM2Pdla8"]}' \
    > test.out 2>&1
eval_tap $? 143 'AdminUpdateLoginAllowlistV3' test.out

#- 144 RetrieveAllThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 144 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 145 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 145 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 146 RetrieveAllSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 146 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 147 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9xvjAM40kBi0aH9I' \
    > test.out 2>&1
eval_tap $? 147 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 148 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7SLnIEqjUR7R2JC4' \
    --body '{"ACSURL": "GhCVXXAsM8J8X0rT", "AWSCognitoRegion": "0YRuSIyv8VctyHfU", "AWSCognitoUserPool": "GWJPQ6KMBKXLDZ2K", "AllowedClients": ["f9UVEF31FGjLECOW", "QK2LnitYLKFV1Efi", "gL5WbpDJHYLuleKw"], "AppId": "lpCuJGdUVy79YtXN", "AuthorizationEndpoint": "p8As6mEYg9GRkBZP", "ClientId": "uwz8nrSOmBpLnwL4", "EmptyStrFieldList": ["p2J78e0bR8DjnmEK", "sQFOhSsF7QZzcXGU", "dYWIze6geXHAUX0X"], "EnableServerLicenseValidation": false, "Environment": "FY7xor89I3qwJwdj", "FederationMetadataURL": "7kZwXqnM59Yyl2Yr", "GenericOauthFlow": false, "IncludePUID": true, "IsActive": true, "Issuer": "Sag9EnEoheDbmrBy", "JWKSEndpoint": "inpJxJ6khnmcf5RF", "KeyID": "XzxyBCgad6jYb5dO", "LogoURL": "ZP9qn8yv2YV9zMdl", "NetflixCertificates": {"encryptedPrivateKey": "Ti9mnJNX7HqqklLg", "encryptedPrivateKeyName": "Cay2n2gfFpjFL55s", "publicCertificate": "hVrRJt3BiFM1IglS", "publicCertificateName": "4YorPKJ7LuT0Deo2", "rootCertificate": "NEGPCA37ApuZ5wjw", "rootCertificateName": "5C2vvByr5TsRiEx8"}, "OrganizationId": "OVuInaSqDgtyeUzA", "PlatformName": "Tl98pQohGJnjHuo8", "PrivateKey": "A60TzXlteMKOTQG4", "RedirectUri": "nS31fwYwcywbmoVp", "RegisteredDomains": [{"affectedClientIDs": ["DkM1Qk9RH7b0QmsE", "SCPcQPpsAPmWCsrk", "zM6YonfRrmX3OxLP"], "domain": "Yg7n9OU1YdV30Jsa", "namespaces": ["rChddBCXhoJj2KoJ", "Cqd3BLtJUJujvReh", "59L10vk2iK7Basr6"], "roleId": "wLXd1cLxAKsV23jL", "ssoCfg": {"googleKey": {"Tag5skENK6RJ8pJk": {}, "PKAqYSzIYhczY5qz": {}, "SuH10aCTIBlyzjA7": {}}, "groupConfigs": [{"assignNamespaces": ["ZHvUN25JGzg4FH4y", "NN5Z7AZUmWFdtl7J", "3wms3Xvan7jgSbDb"], "group": "g7LSfharE5IxbeXl", "roleId": "YkMLmu8F3MmkgwEf"}, {"assignNamespaces": ["5NkqJ9Ow2LRxGs6G", "TcDXEdjbX1qbF1Lu", "kw2QNfejulS13Xjy"], "group": "645RNrDvwCvZsJvv", "roleId": "aZ89KDuMGS287lDk"}, {"assignNamespaces": ["cLGpWENq4EWQXPJR", "xqZ7DV6GOY9G3pNf", "CTTKx8qKtgelTtPQ"], "group": "U0Ho8U3O8LMc5ezZ", "roleId": "SOxVmMf2OjMs2w1O"}]}}, {"affectedClientIDs": ["ZJtyJyITvg2xtrPA", "z6qs0c3uLvJw2ASH", "DxZQayuiq6BHvnHR"], "domain": "tNAiozbxhT17DgzE", "namespaces": ["BEMZE7WRhlRywTZW", "OO9BWMagyMmOWvda", "HYnlifZ8EQv51ksB"], "roleId": "0vn6r22URYGEe9H4", "ssoCfg": {"googleKey": {"ZIS1sr2DPHMaBAIN": {}, "5CnBCm2YCwhrLDdd": {}, "Hl4ZItWkQoxh0Dwv": {}}, "groupConfigs": [{"assignNamespaces": ["adk6PyakF3XKsm0j", "rGvNHF1F4pfhUbKm", "lONs6PzERF3n0oaP"], "group": "1G4gzbik11F94Iip", "roleId": "zJZ2atTsLkT3hJhl"}, {"assignNamespaces": ["uJwRrchnxM28HmL5", "GTC3uQFRMLLI26yk", "NW45TJp2cZnjO7cn"], "group": "33rHRzfAM5rbbjzC", "roleId": "psuJTjp09yHzhij1"}, {"assignNamespaces": ["BZCoV61SqFg3FYEX", "Z6xmZblYHsJh4IZ1", "hgQh1DZgHwJGzWU3"], "group": "Xu9TTv6fwPABqT5q", "roleId": "a9ZzxTD3nchTwsQh"}]}}, {"affectedClientIDs": ["MqlpLvRTCM0Ohoni", "bdsnO8ndajBxOHFD", "Fz9Y2966C5obLgBG"], "domain": "qKmfcBOsNGQ1zxvK", "namespaces": ["Q0t6z7Zu97kD8LkB", "vGgajSzlvl46UMap", "aYjRMLH70XvDiPcn"], "roleId": "k2dhTPSHh5PrDN6W", "ssoCfg": {"googleKey": {"v3uy47uGUjt1wzQh": {}, "I6G8n92ZApn5Bz6G": {}, "l78l35qRPdjq7kOa": {}}, "groupConfigs": [{"assignNamespaces": ["edwOnWfvVoNCJOQZ", "2mMFGsRQieAdwhR8", "ps1hwIYO9PYbMTdX"], "group": "Nu2FPkUTzdBxJAf6", "roleId": "UQLaakxaTu792BJl"}, {"assignNamespaces": ["bS8WctpHJhQCrWPx", "LZFndBm0fuIlAquV", "yzs6C72kwIbXf0Cg"], "group": "dSIkoqkVXL88QxIe", "roleId": "l0NJjKaxSCoER3Cn"}, {"assignNamespaces": ["7zYnksqt6ZOtPg2i", "ZiePwKclpxo11PIP", "3Ex1zGK0QdcQFaKJ"], "group": "OLs3KOkdBCQEUC5H", "roleId": "gVzHhEVm1un8qTNs"}]}}], "RelyingParty": "KnvIYLcJj8X9ggmL", "SandboxId": "7O9rxiUV7MPo2Tsh", "Secret": "w2IwlP1e21Oxgbo1", "TeamID": "Pr3X1fUubk1oxHHx", "TokenAuthenticationType": "jZXD07xmGXoTxdw6", "TokenClaimsMapping": {"RitsJ51QdLja5P5v": "Q4p41b111bD4wNCI", "dbDTbwcqCAYSFRsy": "woFS2HdtpMm9TdRj", "MFy1i6nt6BOqSkyK": "9aNTHGnsCRxWkdq7"}, "TokenEndpoint": "IovG12zmbF0z6wEv", "UserInfoEndpoint": "2CdLWN1yEkJZlQxl", "UserInfoHTTPMethod": "enwqgpYNZ4Lic4PN", "googleAdminConsoleKey": "yAPFcQGQhzmJuLUB", "scopes": ["oHEEE0BNmMiBSSZW", "RTxhFdOgxRrzKP8Z", "mHbb59CR5euXvIed"]}' \
    > test.out 2>&1
eval_tap $? 148 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 149 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'u45dmV9ch9Dcwqp7' \
    > test.out 2>&1
eval_tap $? 149 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 150 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'UVTjkVmolVywRlam' \
    --body '{"ACSURL": "3lDA5fxjjFY7hR9z", "AWSCognitoRegion": "C2ge19r9OUBZVWSX", "AWSCognitoUserPool": "qqBUCapfeyNQLSEP", "AllowedClients": ["IPt2E4gLfZvc736B", "lLmwLX1oyqgflSad", "4RHlqA3oN2MbvQ3Z"], "AppId": "dM0pRJvH2yh26S5L", "AuthorizationEndpoint": "citcmBGcXKl4vMsj", "ClientId": "d0OC19aKsUBOsNEd", "EmptyStrFieldList": ["L4jtQHjT1RUYOau7", "FKkmJ3QnjdecQ2cD", "UaYTIoORxrVr3DsM"], "EnableServerLicenseValidation": true, "Environment": "8k07ZhBCfr1iFlkW", "FederationMetadataURL": "60umTQLZesJ2pwpc", "GenericOauthFlow": false, "IncludePUID": false, "IsActive": false, "Issuer": "UDJT4NeiQ00TC1nk", "JWKSEndpoint": "UoMqOABIgTFSvS7e", "KeyID": "upkkH2dIMnAX4ucY", "LogoURL": "YwmHy7T2NHP90F9y", "NetflixCertificates": {"encryptedPrivateKey": "MkX9L08PgBwbFyAO", "encryptedPrivateKeyName": "9HEUuKz2XcJcA4l9", "publicCertificate": "IWFsN8EAiuAgb2YV", "publicCertificateName": "LH8KOm66GrFEVu9w", "rootCertificate": "8H9TEGaMsFkn4K4A", "rootCertificateName": "a9Oea1r5S7MtRSqO"}, "OrganizationId": "gGZcrLSLzLrzCdd4", "PlatformName": "EHXtrSKrhwQnznuh", "PrivateKey": "OfUfSD7N2YdDEG8u", "RedirectUri": "aNyk80Qqkxw2zpyg", "RegisteredDomains": [{"affectedClientIDs": ["vHyq7xpLrQe0jHML", "1wz90GyJEKiMiDSC", "KzdwT3rqPhclwqoC"], "domain": "QKdVYVr8grYHEmf4", "namespaces": ["aDxBpMYWlyScu1w5", "sEd7jBlFm1MMLMXE", "b691OxUHff2Poc4g"], "roleId": "ID5UaW3ghzPjypJe", "ssoCfg": {"googleKey": {"45ZeKZz9dkGsLlF4": {}, "hzz2NqYoxuMIXbCE": {}, "38z5fLWhcNlQH1m7": {}}, "groupConfigs": [{"assignNamespaces": ["5EPAxjlJFll9JSBY", "cZRM2gomkrdCb2r1", "Zd3fvbX0DDlBE3no"], "group": "XTYJuBlY3nTaAlM0", "roleId": "zgBFomYPda1JoQil"}, {"assignNamespaces": ["9NkMezoMkZyi7usI", "zXkFTIkly35D2jmq", "PUKkDxuLQWbOedZz"], "group": "8Ciqcn6k0F3LIoW8", "roleId": "I6w78Dqv9PxVZD3z"}, {"assignNamespaces": ["a3zR3kaTr6DWVBwP", "7oo91SwiEpZim9UW", "M0etM9589y57SJDQ"], "group": "PibBj37rbG60ymDT", "roleId": "Fuw9ZTBHmXDfQzAp"}]}}, {"affectedClientIDs": ["zCQEuaS1Q8pRQmz7", "n8Qn3Kke1X9u91aW", "SymZjmrpZAXnHocm"], "domain": "krW57SezArcemvJL", "namespaces": ["Fs4AiOvH7xhaySbj", "5jV8LABafLHiQn48", "Xh7Hc5TeLrroNxxA"], "roleId": "sWzuVPAsdCbXvpC1", "ssoCfg": {"googleKey": {"2btpNIee3MtVgVFL": {}, "LnGe756d0S08LWe9": {}, "6geEhA97aYhZlvZj": {}}, "groupConfigs": [{"assignNamespaces": ["gvAF2WZ54LclUhul", "sC19F74QeS5wZCsQ", "WsAQIaBH5vetFlsV"], "group": "DOAU4CeeLul6VAuO", "roleId": "EDzR6hVmyv9NMIWg"}, {"assignNamespaces": ["owTNGCQ9SpjbbH2R", "5dUjvCJq012e2bAJ", "76zclmslEjx8Fb13"], "group": "mGfcSWen2kGhTNO1", "roleId": "Gkh8Vy0WJ5MmfH1E"}, {"assignNamespaces": ["kZ2D9XoMcA4zYUqw", "2yXzUou7eTDiCd2k", "7E74EoOMS5W1WEjs"], "group": "nebiEDgUvTYCdnCv", "roleId": "ff5ig1caOMY21gTx"}]}}, {"affectedClientIDs": ["s3b8IwkMadz3MxtF", "sy8wQs9HAS8by1X2", "MmU61PaMgyBm6gNP"], "domain": "g8txrrDPIq53tFhf", "namespaces": ["0ngbQ9NTSnzXzsp2", "e1MOAfmjd2oHGZpQ", "h1rJaiX7rKimefcS"], "roleId": "88zusSTEh1TuGwK1", "ssoCfg": {"googleKey": {"FICCMgWxhXzddAWj": {}, "YybhoNhyOgJVwkn9": {}, "60kfVeqERHpUEi27": {}}, "groupConfigs": [{"assignNamespaces": ["WZOhcemk3REKHUNx", "En5D8WmdTAFIjxfa", "XyKIWwE472Rp99OA"], "group": "kOS7LyhRFYBzQ158", "roleId": "UfkUiHN51gYXckVV"}, {"assignNamespaces": ["45Wj2OfOdqpr1IkO", "FrLA7vO0OvjOsz6U", "dCmYqdYapNxFOCG0"], "group": "FAlrLqra3tkia7Sf", "roleId": "gPIGc2RYaVH6fSmu"}, {"assignNamespaces": ["OhlVTbTzYQkFXMBX", "ZSWEbc0StosinG18", "TaO0BDa9JYhYfl4T"], "group": "e5VRwst3ojDFYpc0", "roleId": "1oCV79vEmp9BfGc5"}]}}], "RelyingParty": "OZjlm2Up1xwMCW1O", "SandboxId": "RntUxsFv5zD2cVLp", "Secret": "KL9gcI3CvZemVZVO", "TeamID": "Wo3nnQD0KFLHRGGQ", "TokenAuthenticationType": "o2COtSqeLLVVckgw", "TokenClaimsMapping": {"h0GH78lRGo0SONw0": "lYkuPDPgVOkWM5L0", "CrUHLwoiqGhEjJgH": "07sjVcr1JuZkTDUV", "bwci0sCE0wLVvRK8": "s8KVYA9xf10vxz8B"}, "TokenEndpoint": "hfZ19vj0YGiwZvOk", "UserInfoEndpoint": "08V9N3HPnwIG1sgT", "UserInfoHTTPMethod": "DzHxZThibgnkDUAf", "googleAdminConsoleKey": "HgGrt31nMx4m2uoi", "scopes": ["tFVLnA9RTj1ReWbi", "VYJLyg0kmM9qy4M5", "rO8vS6e42FMMrms0"]}' \
    > test.out 2>&1
eval_tap $? 150 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 151 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Quf7iUOYPxVXiR4m' \
    --body '{"affectedClientIDs": ["ZVz60sSBsEBKnn1f", "KDdxYqiS7FMErYsl", "DnO1RUgV3Q1JRB5G"], "assignedNamespaces": ["NygCuXu9WJknWKbl", "WrH6l6ucd4W5kKcs", "OaIWDA9ORiHbDA1l"], "domain": "bVGdvxj2xWqWFDDD", "roleId": "Og8v6WHukfpP0F2K", "ssoCfg": {"googleKey": {"U9zr6ZYp0AvYTCL0": {}, "7OxcUTPoJBx2cghT": {}, "oxH58qHOotxTPaNp": {}}, "groupConfigs": [{"assignNamespaces": ["86CVZCXVEGJjA4Hz", "zjJKAhmMQoFGCKpT", "ER6PD7sj9GaTxpN4"], "group": "v4ZwLZLfZkrxSBan", "roleId": "alnZDaZvdXrAFgnW"}, {"assignNamespaces": ["rw25PKFbZUFOGgLJ", "bRks3rR42vJECxXy", "t1FmUd2UREdzXqsf"], "group": "wKkya0IZBGaslPu3", "roleId": "Dq9NiOgSJ8BOeAsx"}, {"assignNamespaces": ["aOI4QiAyt56wiHVQ", "jIXYjWTJJPw5rKu1", "Z00EhnhfSWIYjDTY"], "group": "H3vm3UpfjqOv9zLq", "roleId": "zXhQWaaCQlkYXdUV"}]}}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 152 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'xhbQxW9LKqFKAQTb' \
    --body '{"domain": "yVaiJzO7nyucW5UP", "ssoGroups": ["GkmKhaV6hT2ubJpT", "HVa1ODGIyLVhPQE2", "KZJGnFdbtBm1E3wK"]}' \
    > test.out 2>&1
eval_tap $? 152 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 153 PartialUpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam partialUpdateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'gcNVKqsl6q3WITRs' \
    --body '{"affectedClientIDs": ["Z476bOYhOBhrqMiX", "wSOWWdKFa46Hzqnk", "YnwqZhcIa9K8j6Ih"], "assignedNamespaces": ["QKaHbi2FnDUstPHK", "HKrpqRZPrjYxXqkY", "Sm6LR3yS6DWonzlW"], "domain": "dPTpsdkMiva1SJZH", "roleId": "rbmtVWJa5viF2qNN", "ssoCfg": {"googleKey": {"OQsSNtenMbIyQRiQ": {}, "bMucNY0v1I7PaoIB": {}, "uF6sEpi0oHH6rD9R": {}}, "groupConfigs": [{"assignNamespaces": ["raWwBXSOclR4l5kN", "hLmS6L9VJKAkJ0D6", "iX9xGTAGOOVG60rC"], "group": "pfBGxV5EXUEPWcUN", "roleId": "6vxYWsFgImu0YNmt"}, {"assignNamespaces": ["Zq3p34QdRKQrFz7z", "CzlQsFTd1SQeDGpT", "PmuYREPoV1r32AoI"], "group": "JtgWpiDyQJT8ve4X", "roleId": "xJ1Q01jE6RWSlXEc"}, {"assignNamespaces": ["y6vTkFbGxIZ2KQa1", "IK8vVniObd5tdxi5", "fzJIu4EApYc60zS9"], "group": "na6AFoQhJEI2rUZg", "roleId": "BIkPCEY7DT13tEIl"}]}}' \
    > test.out 2>&1
eval_tap $? 153 'PartialUpdateThirdPartyLoginPlatformDomainV3' test.out

#- 154 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'lfwyhdJf1X1JCnwc' \
    > test.out 2>&1
eval_tap $? 154 'RetrieveSSOLoginPlatformCredential' test.out

#- 155 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '8rzVWMBV5cyhq5Mk' \
    --body '{"acsUrl": "pyt4VowXqqGsjuwy", "apiKey": "YxSjP5MuXS4oNa7i", "appId": "usy9Iup1dtGvmoGw", "federationMetadataUrl": "I5vuWSpJJVnC5aUn", "isActive": false, "redirectUri": "blLMbnA8gOHypfnT", "secret": "D3DsYnI2jxYkUFWX", "ssoUrl": "ZxfARqLMgC5V97ra"}' \
    > test.out 2>&1
eval_tap $? 155 'AddSSOLoginPlatformCredential' test.out

#- 156 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'C6Rtu2kSYTA6rRjf' \
    > test.out 2>&1
eval_tap $? 156 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 157 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'oKzsf3TnRN54JRnU' \
    --body '{"acsUrl": "RHp3SOz7Axw4iSuv", "apiKey": "Pt7FAU3aQ4Hiy8aZ", "appId": "KIozbgE233ODfrSK", "federationMetadataUrl": "yLKuRrIqEUCzgWVN", "isActive": false, "redirectUri": "olpzHsuTM0cxhCYn", "secret": "TfL4AlguzCrWtp6s", "ssoUrl": "vTLs5uU9tovYrBTN"}' \
    > test.out 2>&1
eval_tap $? 157 'UpdateSSOPlatformCredential' test.out

#- 158 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'EZwNIuY9m8olgjQJ' \
    --rawPID 'false' \
    --rawPUID 'true' \
    --body '{"platformUserIds": ["vtKgpNik49PMbilA", "bsrNRZDsKMrnpyeE", "cifpDVoo4SVOmYDX"]}' \
    > test.out 2>&1
eval_tap $? 158 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 159 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9TjITL5ffIZleFzP' \
    --platformUserId 'BNxEIKaEi4spdylt' \
    --pidType 'zZhdMI0NVka5sy63' \
    > test.out 2>&1
eval_tap $? 159 'AdminGetUserByPlatformUserIDV3' test.out

#- 160 AdminGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'country' \
    > test.out 2>&1
eval_tap $? 160 'AdminGetProfileUpdateStrategyV3' test.out

#- 161 AdminUpdateProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminUpdateProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'country' \
    --body '{"config": {"minimumAllowedInterval": 4}, "type": "fvINEUT0vZIhTPr0"}' \
    > test.out 2>&1
eval_tap $? 161 'AdminUpdateProfileUpdateStrategyV3' test.out

#- 162 AdminGetRoleOverrideConfigV3
samples/cli/sample-apps Iam adminGetRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'VIEW_ONLY' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetRoleOverrideConfigV3' test.out

#- 163 AdminUpdateRoleOverrideConfigV3
samples/cli/sample-apps Iam adminUpdateRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'VIEW_ONLY' \
    --body '{"additions": [{"actions": [53, 39, 23], "resource": "R9DyaqcUvOyYNAZF"}, {"actions": [79, 65, 17], "resource": "JTtQReo6MWgCXaMB"}, {"actions": [62, 57, 18], "resource": "bDZNzsZIkCHsn68C"}], "exclusions": [{"actions": [90, 10, 66], "resource": "tiUUUZTGGazZD59w"}, {"actions": [44, 11, 6], "resource": "E9B1CyBr96irPDcj"}, {"actions": [73, 75, 87], "resource": "EnOzQGfUDGOvVgWn"}], "overrides": [{"actions": [89, 96, 0], "resource": "DzFEX6gh7ttstCe5"}, {"actions": [6, 60, 6], "resource": "XgAx3REPEBbUgoST"}, {"actions": [57, 68, 56], "resource": "NyqiPITHlNSNzo9R"}], "replacements": [{"replacement": {"actions": [68, 80, 94], "resource": "3y1XmOo9DnoFcph5"}, "target": "9SAPFfc8cLhpkrA9"}, {"replacement": {"actions": [40, 45, 90], "resource": "1WL5uHCQtiRgFfEL"}, "target": "5ckMpuooxBra7b2q"}, {"replacement": {"actions": [65, 88, 3], "resource": "9mnKZz3JhGQwTB35"}, "target": "rqa2golHA9HpXj2T"}]}' \
    > test.out 2>&1
eval_tap $? 163 'AdminUpdateRoleOverrideConfigV3' test.out

#- 164 AdminGetRoleSourceV3
samples/cli/sample-apps Iam adminGetRoleSourceV3 \
    --namespace $AB_NAMESPACE \
    --identity 'VIEW_ONLY' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetRoleSourceV3' test.out

#- 165 AdminChangeRoleOverrideConfigStatusV3
samples/cli/sample-apps Iam adminChangeRoleOverrideConfigStatusV3 \
    --namespace $AB_NAMESPACE \
    --identity 'VIEW_ONLY' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 165 'AdminChangeRoleOverrideConfigStatusV3' test.out

#- 166 AdminGetRoleNamespacePermissionV3
samples/cli/sample-apps Iam adminGetRoleNamespacePermissionV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'Lg2JoGn6Achmn7gz' \
    > test.out 2>&1
eval_tap $? 166 'AdminGetRoleNamespacePermissionV3' test.out

#- 167 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'viEmkYkV2bCqfPg1' \
    --after '100' \
    --before '40' \
    --limit '62' \
    > test.out 2>&1
eval_tap $? 167 'GetAdminUsersByRoleIdV3' test.out

#- 168 AdminQueryTagV3
samples/cli/sample-apps Iam adminQueryTagV3 \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '10' \
    --tagName 'S5K6lwiv5A3pN7OY' \
    > test.out 2>&1
eval_tap $? 168 'AdminQueryTagV3' test.out

#- 169 AdminCreateTagV3
samples/cli/sample-apps Iam adminCreateTagV3 \
    --namespace $AB_NAMESPACE \
    --body '{"tagName": "cfBsk7aqQh2Ffw11"}' \
    > test.out 2>&1
eval_tap $? 169 'AdminCreateTagV3' test.out

#- 170 AdminUpdateTagV3
samples/cli/sample-apps Iam adminUpdateTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'dbngSMErxOiqMU3e' \
    --body '{"tagName": "cG37OkZ30C07Pd5F"}' \
    > test.out 2>&1
eval_tap $? 170 'AdminUpdateTagV3' test.out

#- 171 AdminDeleteTagV3
samples/cli/sample-apps Iam adminDeleteTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'U0OG0KM2qvm7caIY' \
    > test.out 2>&1
eval_tap $? 171 'AdminDeleteTagV3' test.out

#- 172 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'qGeKxfizeFRm35Yj' \
    > test.out 2>&1
eval_tap $? 172 'AdminGetUserByEmailAddressV3' test.out

#- 173 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": true}, "userIds": ["w4Xo5DVCOXicVNu5", "VzaqeDpdEvnRpv0z", "OzSAvPcveyHsa39U"]}' \
    > test.out 2>&1
eval_tap $? 173 'AdminBulkUpdateUsersV3' test.out

#- 174 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType '45jzvxknHo6UZ3HZ' \
    --body '{"bulkUserId": ["PlS9S0GUKo0mVPhO", "dC3f14DmnayPYRQQ", "6qKH7rVDBvPbz86J"]}' \
    > test.out 2>&1
eval_tap $? 174 'AdminGetBulkUserBanV3' test.out

#- 175 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"findByPublisherNamespace": false, "userIds": ["jBlA40pJqyfSOiw2", "9IZ1GqMSsEOxEi4H", "T306ZVzP0qbBsGoB"]}' \
    > test.out 2>&1
eval_tap $? 175 'AdminListUserIDByUserIDsV3' test.out

#- 176 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["wcmBy1Ao1vNyzsKt", "2WOOzJTSmZLgC7MH", "Z19ISPUpterfOZ5S"]}' \
    > test.out 2>&1
eval_tap $? 176 'AdminBulkGetUsersPlatform' test.out

#- 177 AdminCursorGetUserV3
samples/cli/sample-apps Iam adminCursorGetUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"cursor": {"cursorTime": "WD4Af9az2vh3kEmz", "userId": "vDYNUtEtqPQq38AO"}, "fields": ["F4aBYg6cSI0RLWbk", "kmWd5n0BmQsMbKlc", "3TJks4VS94ih2SG0"], "limit": 1}' \
    > test.out 2>&1
eval_tap $? 177 'AdminCursorGetUserV3' test.out

#- 178 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["VBXersSn5l5Azt4o", "okk4t2YrdJXgZtZf", "QQB5J6pfQeZyykK0"], "isAdmin": true, "languageTag": "BY4xK2hThOId2054", "namespace": "EhBbUJzijOgPcwt3", "roles": ["YVi5HcqzYqhUaOKn", "36u8DmyfhiGMbT8Z", "IA3kgRKN6Qsl7JXu"]}' \
    > test.out 2>&1
eval_tap $? 178 'AdminInviteUserV3' test.out

#- 179 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '20' \
    --platformUserId 'obsIwjFNXGNVuFal' \
    --platformId 'SZKbG0a92iJKm7PT' \
    > test.out 2>&1
eval_tap $? 179 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 180 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 180 'AdminListUsersV3' test.out

#- 181 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'oFp0mjPO5qtc22Au' \
    --endDate 'CKrhyLDbYpeKEMXr' \
    --includeTotal 'false' \
    --limit '71' \
    --offset '53' \
    --platformBy 'dEtyo0W6bvachG8S' \
    --platformId 'GhzBobiL1GPmdrzx' \
    --query 'BgmrKd3ptypSCrMr' \
    --roleIds 'NljpasXhH92EeGOJ' \
    --selectedFields '9bh4ZgbMU6EpqWSR' \
    --skipLoginQueue 'false' \
    --startDate 'bO4VN8YuMy4iVj2R' \
    --tagIds 'EM3qWhw2dTooDJY8' \
    --testAccount 'true' \
    > test.out 2>&1
eval_tap $? 181 'AdminSearchUserV3' test.out

#- 182 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["SdqgnZ72uD9I1dfi", "XbvZqL7S7MC5Lia4", "r8I0D1fqkcodEbP3"]}' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetBulkUserByEmailAddressV3' test.out

#- 183 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QwBAt6Kv2t7OX9cR' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetUserByUserIdV3' test.out

#- 184 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TFWc5oXV9UIysiPM' \
    --body '{"avatarUrl": "WR0BwcXuyaioSKPT", "country": "B3D36ZVhhwCVFC6f", "dateOfBirth": "nsQab7lS5YR4DUSP", "displayName": "wC8VFOsxaZStoUQK", "languageTag": "hmmsHLJYtKd31vgW", "skipLoginQueue": false, "tags": ["BsN3vAZBWg1PT0NZ", "N6J684JAohlNnF2k", "9iQZOkujoGy5hjXQ"], "uniqueDisplayName": "58l1rpSEN7PAphQt", "userName": "eTjmSnGdIBkmJyIP"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminUpdateUserV3' test.out

#- 185 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zjrGAqhUXAGUIaC0' \
    --activeOnly 'false' \
    --after 'tg9yTIA9ahj0Nas5' \
    --before 'gjmBDSI320MRJdxD' \
    --limit '53' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetUserBanV3' test.out

#- 186 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '80bjcAel0ugzpECH' \
    --body '{"ban": "AhrTPxtoN6ZNwVYo", "comment": "Nnm9bpU3haExkYHV", "endDate": "lUZMb9ZUkP0NSy2l", "reason": "3itRKz0G6BbdQnEA", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 186 'AdminBanUserV3' test.out

#- 187 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hHJqoGSuCzhSuCcH' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetUserBanSummaryV3' test.out

#- 188 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'sWOAqNO3iDgR0Fpz' \
    --namespace $AB_NAMESPACE \
    --userId 'dMUhFcQQrairEGp4' \
    --body '{"enabled": true, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserBanV3' test.out

#- 189 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bJN4J0lQHRtRKVZB' \
    --body '{"context": "jhuAIQjXlX3iHwnx", "emailAddress": "QNWubexlkb3zqjLM", "languageTag": "nuocRi4nBWTqTwMb", "upgradeToken": "KVvOrCBZHcSxT49t"}' \
    > test.out 2>&1
eval_tap $? 189 'AdminSendVerificationCodeV3' test.out

#- 190 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kYIfLFLbio4LbNlD' \
    --body '{"Code": "PBlOU7jSagkGBp3y", "ContactType": "Zzz8UgePG4zZkXGQ", "LanguageTag": "fop7W5jlGbs5pc1J", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 190 'AdminVerifyAccountV3' test.out

#- 191 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'LbqDtaXfCq210hTz' \
    > test.out 2>&1
eval_tap $? 191 'GetUserVerificationCode' test.out

#- 192 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jxTvAHy9lgAKzVfi' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserDeletionStatusV3' test.out

#- 193 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'MV6dLz2gXrT3LGzv' \
    --body '{"deletionDate": 26, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 193 'AdminUpdateUserDeletionStatusV3' test.out

#- 194 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rMFnOIBplxx7lFSf' \
    > test.out 2>&1
eval_tap $? 194 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 195 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId '5hq8sfegrWSXvMH0' \
    --body '{"code": "ilmyl7V9BYklpGw7", "country": "L8LvyHViAr5VZdL6", "dateOfBirth": "z6Q7YPuBZjDnBsVS", "displayName": "lDevAD8bHiFaiBtq", "emailAddress": "TAED14yqifSpNjCq", "password": "lzdBnTnS1j2vobgv", "uniqueDisplayName": "FUEKU0P9J7RD8vPs", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 195 'AdminUpgradeHeadlessAccountV3' test.out

#- 196 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId '3cdVoQQglRQprMoc' \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteUserInformationV3' test.out

#- 197 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '6mf9JvT9i50BrEN7' \
    --after '0.892923545358026' \
    --before '0.15462836882131858' \
    --limit '13' \
    > test.out 2>&1
eval_tap $? 197 'AdminGetUserLoginHistoriesV3' test.out

#- 198 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId '6fNzd4jpGftrlHev' \
    --body '{"languageTag": "8JuD3v6fA2tsjEzn", "mfaToken": "QLnhustd9sz5PP6G", "newPassword": "G3X4mfjuTdrg2YhV", "oldPassword": "gL1mUBqkYnPPau5k"}' \
    > test.out 2>&1
eval_tap $? 198 'AdminResetPasswordV3' test.out

#- 199 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'POaszLfShdth8poO' \
    --body '{"Permissions": [{"Action": 53, "Resource": "Vm40Cwc0X1cjk5oZ", "SchedAction": 25, "SchedCron": "9Opbslq91B2Ansyl", "SchedRange": ["EW6qh9aQCLLK6OGF", "GEmWqP59A7zTVxuW", "8xQMDevrhsWafkJy"]}, {"Action": 1, "Resource": "Nc8LJXT3MtuI7Qv3", "SchedAction": 78, "SchedCron": "pYtNBFGCFjgnMJXn", "SchedRange": ["RFYQcDIQjpfhoz59", "iFdMVdLmoCRT3dP5", "Y3TCY9XdzDxwJcfM"]}, {"Action": 28, "Resource": "1IOipeKgSTtw5bYP", "SchedAction": 19, "SchedCron": "pmq3IgQX9DLFjyNb", "SchedRange": ["0YJNXxLVWtUEuPGV", "qPpOrmc578TEb2JC", "KSoT6D9cSYSgyBza"]}]}' \
    > test.out 2>&1
eval_tap $? 199 'AdminUpdateUserPermissionV3' test.out

#- 200 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'IB5x00JZX6Uu0h1Y' \
    --body '{"Permissions": [{"Action": 21, "Resource": "ONbWyxuWVG0ajFj9", "SchedAction": 75, "SchedCron": "xu2z9MoWk9XCeemd", "SchedRange": ["PxeMX3mz78DAhRsj", "HHAjp1CLkLEaQ4t6", "7bbK2rxXb0mrWtoF"]}, {"Action": 46, "Resource": "sx3aBq53KZzfiqf2", "SchedAction": 58, "SchedCron": "7yWyog5ykOOVQq3S", "SchedRange": ["wtunPaZbaIUAVkli", "id0u45dZHqKJ3ZNh", "5ilaQaZKri6gqJi5"]}, {"Action": 44, "Resource": "QuZ0DbxICyT2koK7", "SchedAction": 10, "SchedCron": "YnPQtGgOdDvkuUYn", "SchedRange": ["uzh1lSJpS4YyXMog", "aYAHx40G0GNISKJx", "KAJVWEfevYg7Of5c"]}]}' \
    > test.out 2>&1
eval_tap $? 200 'AdminAddUserPermissionsV3' test.out

#- 201 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YeOfXlJLYm65s4tG' \
    --body '[{"Action": 14, "Resource": "XmHzOahabaI0Qv8v"}, {"Action": 41, "Resource": "Jg5qXazUVKeKhxh1"}, {"Action": 93, "Resource": "fBynjzd8OcXYVNH5"}]' \
    > test.out 2>&1
eval_tap $? 201 'AdminDeleteUserPermissionBulkV3' test.out

#- 202 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '22' \
    --namespace $AB_NAMESPACE \
    --resource 'fvCjTyfEVEocyqzB' \
    --userId 'ZgfkBGVUAZpjwVEj' \
    > test.out 2>&1
eval_tap $? 202 'AdminDeleteUserPermissionV3' test.out

#- 203 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'OcxefJjNgS6iqTLz' \
    --after 'z9EGrCJqYjcdY9DK' \
    --before 'FAAJC6CuNQyG1IhC' \
    --limit '74' \
    --platformId 'rAy7CaILnLpqHONR' \
    --targetNamespace '7jP3BJR9AJwHq9Gm' \
    > test.out 2>&1
eval_tap $? 203 'AdminGetUserPlatformAccountsV3' test.out

#- 204 AdminListAllDistinctPlatformAccountsV3
samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'j8AIc9jNAQtVH604' \
    --status 'XUbMk2r4FzraqUMo' \
    > test.out 2>&1
eval_tap $? 204 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 205 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'hm4zxcqmZQd1sGLz' \
    > test.out 2>&1
eval_tap $? 205 'AdminGetListJusticePlatformAccounts' test.out

#- 206 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'Szb6KUBVBHapArm3' \
    --userId 'g7QWRW2zDHIhM98K' \
    --createIfNotFound 'false' \
    > test.out 2>&1
eval_tap $? 206 'AdminGetUserMapping' test.out

#- 207 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '07IZfJZYkxU2SmYv' \
    --userId 'VWs2C6h8Yj4jFdUm' \
    > test.out 2>&1
eval_tap $? 207 'AdminCreateJusticeUser' test.out

#- 208 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '5ghnSxYBieyZZoCk' \
    --skipConflict 'false' \
    --body '{"platformId": "C0dO2ALbtaTctd3j", "platformUserId": "nscegRQAnQOUCqfW"}' \
    > test.out 2>&1
eval_tap $? 208 'AdminLinkPlatformAccount' test.out

#- 209 AdminGetUserLinkHistoriesV3
samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wXZjmbwHpxN8CVmJ' \
    --platformId 'Sp9REr7TSKgvczBr' \
    > test.out 2>&1
eval_tap $? 209 'AdminGetUserLinkHistoriesV3' test.out

#- 210 AdminPlatformUnlinkV3
eval_tap 0 210 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 211 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'FBhwmD6v14xVlt78' \
    --userId 'AKzAJ2F5IGkADhxf' \
    > test.out 2>&1
eval_tap $? 211 'AdminPlatformUnlinkAllV3' test.out

#- 212 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '6TXXqp8SkaujRnfS' \
    --userId 'TSlGCuYy7siwRHA9' \
    --ticket 'HuiI3r1T1K0OFYVy' \
    > test.out 2>&1
eval_tap $? 212 'AdminPlatformLinkV3' test.out

#- 213 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 213 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 214 AdminDeleteUserLinkingRestrictionByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ne6ns3inTdT0KKSi' \
    --userId '9afmCk8yxaNdiTBr' \
    > test.out 2>&1
eval_tap $? 214 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 215 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'FB2IQzJa1Fx48jv8' \
    --userId 'zKHE4mEASDTPWsNC' \
    --platformToken 'olKdXuY62DABP5MX' \
    > test.out 2>&1
eval_tap $? 215 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 216 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'QUPaOFpAly41XhrE' \
    --userId '9GPiq2Y1E3sNS98B' \
    --crossNamespace 'true' \
    > test.out 2>&1
eval_tap $? 216 'AdminGetUserSinglePlatformAccount' test.out

#- 217 AdminDeleteUserRolesV3
eval_tap 0 217 'AdminDeleteUserRolesV3 # SKIP deprecated' test.out

#- 218 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DLxaMlOkyZaYs207' \
    --body '[{"namespace": "14FGaQwbzUB3lAVL", "roleId": "OjwPyQdRBoUX4NLK"}, {"namespace": "c96I4XuJcyOZp5p3", "roleId": "yWpGCm2pfqacvIUa"}, {"namespace": "7lH2vxEV0k06apos", "roleId": "IGiG3MxXSUX1uXsv"}]' \
    > test.out 2>&1
eval_tap $? 218 'AdminSaveUserRoleV3' test.out

#- 219 AdminAddUserRoleV3
eval_tap 0 219 'AdminAddUserRoleV3 # SKIP deprecated' test.out

#- 220 AdminDeleteUserRoleV3
eval_tap 0 220 'AdminDeleteUserRoleV3 # SKIP deprecated' test.out

#- 221 AdminGetUserStateByUserIdV3
samples/cli/sample-apps Iam adminGetUserStateByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LJDUjt50wt349fEE' \
    > test.out 2>&1
eval_tap $? 221 'AdminGetUserStateByUserIdV3' test.out

#- 222 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iJYeVjBfs30TRoK4' \
    --body '{"enabled": true, "reason": "xiLLr8IW9FadMc3X"}' \
    > test.out 2>&1
eval_tap $? 222 'AdminUpdateUserStatusV3' test.out

#- 223 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'UCxuStSveRrqNVk9' \
    --body '{"emailAddress": "fu4M8Cya8kcZk15E", "password": "VA3JyIIJmgU7pKNl"}' \
    > test.out 2>&1
eval_tap $? 223 'AdminTrustlyUpdateUserIdentity' test.out

#- 224 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'cqRepig3XlYEoodx' \
    > test.out 2>&1
eval_tap $? 224 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 225 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'fifgvP7GEkKwbsL7' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "TSbljT3rccICztvS"}' \
    > test.out 2>&1
eval_tap $? 225 'AdminUpdateClientSecretV3' test.out

#- 226 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId '4M1dMN7Hm7SiYeZo' \
    > test.out 2>&1
eval_tap $? 226 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 227 GetThirdPartyLoginPlatformDefaultsV3
samples/cli/sample-apps Iam getThirdPartyLoginPlatformDefaultsV3 \
    --platformId '1uufXM7671AFI5aY' \
    > test.out 2>&1
eval_tap $? 227 'GetThirdPartyLoginPlatformDefaultsV3' test.out

#- 228 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'sjpcCcj1KTMCai8M' \
    --before 'Eiu5NHyyziXRIhGy' \
    --isWildcard 'false' \
    --limit '90' \
    > test.out 2>&1
eval_tap $? 228 'AdminGetRolesV3' test.out

#- 229 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "managers": [{"displayName": "M0Z0BM7mSj6vGJRy", "namespace": "epkTJEEyUAfUrzyt", "userId": "QdtSJExfeKXxvcR5"}, {"displayName": "VYrTgmILXBj8M4qC", "namespace": "M1Gl3KwIHnD25g3G", "userId": "ukTcYScBav6Sl4ve"}, {"displayName": "2N2nXiMyoqInvem3", "namespace": "jv2QACXQD1ecSNkq", "userId": "2fwFUGJ1XHQVBeOI"}], "members": [{"displayName": "pXRMmsIeq3g6TS1V", "namespace": "lJLzU161AvVVUBC7", "userId": "yXiB5ph6BvIGxd4z"}, {"displayName": "9WDm70VmCtzmRReI", "namespace": "XZdvHkLY8GbhQzUN", "userId": "FYKZZBZYuguuvOMC"}, {"displayName": "31mo2Rzxt75PfRRq", "namespace": "dXCee9V0hSV9qLaC", "userId": "teCifmPjmorQ4eIK"}], "permissions": [{"action": 49, "resource": "vYzMvS0rmzjPkjjT", "schedAction": 84, "schedCron": "kT7l2UXuIYnktyAj", "schedRange": ["nxrgduMmn8hKmX56", "ZdOzmtbURbwyPgHq", "3LpQ9cL2o8RTs7Gz"]}, {"action": 62, "resource": "aALbzGd4R3Em2f2V", "schedAction": 31, "schedCron": "0CTNbDD0IIrjxoWi", "schedRange": ["I1um52edv4o4l33Q", "vudmg6vCgJskMbEk", "Era5YcmYHmaKelN3"]}, {"action": 59, "resource": "pNV6sNMyYKpk3KKo", "schedAction": 9, "schedCron": "6mUioVmgGnH8B43K", "schedRange": ["LfI1BUXAeWamtq3K", "sX25n72jhI13i2vk", "6PnlkMoltcAOFK1a"]}], "roleName": "aCUiGE4V9Hp0MBmJ"}' \
    > test.out 2>&1
eval_tap $? 229 'AdminCreateRoleV3' test.out

#- 230 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId '0Oi6j5uMhjguAH1g' \
    > test.out 2>&1
eval_tap $? 230 'AdminGetRoleV3' test.out

#- 231 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'KJrz327MfYhKBDkN' \
    > test.out 2>&1
eval_tap $? 231 'AdminDeleteRoleV3' test.out

#- 232 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'QHgj4fqiPW3RkZAg' \
    --body '{"deletable": false, "isWildcard": false, "roleName": "vssIwTzxEpq1BzXt"}' \
    > test.out 2>&1
eval_tap $? 232 'AdminUpdateRoleV3' test.out

#- 233 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'IuPwh66SdISJN9Dm' \
    > test.out 2>&1
eval_tap $? 233 'AdminGetRoleAdminStatusV3' test.out

#- 234 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'dvluUtdTdTHRHu0J' \
    > test.out 2>&1
eval_tap $? 234 'AdminUpdateAdminRoleStatusV3' test.out

#- 235 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'qtWY32LT7NxG3H6J' \
    > test.out 2>&1
eval_tap $? 235 'AdminRemoveRoleAdminV3' test.out

#- 236 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId '05DWhipEjadUADgf' \
    --after 'yXqL1HFkkjDslfYu' \
    --before 'wzErnm6X9FNv53Ue' \
    --limit '17' \
    > test.out 2>&1
eval_tap $? 236 'AdminGetRoleManagersV3' test.out

#- 237 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId '3cHMa9DJzBYziybj' \
    --body '{"managers": [{"displayName": "6XoRH5Q2yip7BeXb", "namespace": "OaxgG7hysM0O7nYQ", "userId": "QiQuS7Z9CYJ06CCV"}, {"displayName": "Vw4QYanXEhGzZ9rO", "namespace": "oMSdlmXS4aMy90vA", "userId": "rqNgejnqylIYFtvy"}, {"displayName": "OGeUHr1tOd29rkB1", "namespace": "VbU8T9Ow2r9qWp4q", "userId": "V9i5W31Fvd0sICNG"}]}' \
    > test.out 2>&1
eval_tap $? 237 'AdminAddRoleManagersV3' test.out

#- 238 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'FllHfHpdxk2FVkpv' \
    --body '{"managers": [{"displayName": "XMPCNVdDnFmX0Dve", "namespace": "MHZDBnt2T49db4HX", "userId": "albTBIFr1Ml58Rh6"}, {"displayName": "DbHGKAl2G76TFkkJ", "namespace": "VadLkfTnFRvFAv5Y", "userId": "7DJp4Fp2XVZFjFVP"}, {"displayName": "oEP4dTfG7QOCiDHY", "namespace": "FmltIsKjCYSpx7oD", "userId": "SQdMfRXINNd3VUGO"}]}' \
    > test.out 2>&1
eval_tap $? 238 'AdminRemoveRoleManagersV3' test.out

#- 239 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'oGof1JZH51zrrJog' \
    --after 'LPMFjafytiErehUQ' \
    --before 'aiu3ooLktFKlYvxW' \
    --limit '16' \
    > test.out 2>&1
eval_tap $? 239 'AdminGetRoleMembersV3' test.out

#- 240 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'BrUr9uMS4kIxSz4n' \
    --body '{"members": [{"displayName": "8BDASGGMM5Lj2qo5", "namespace": "1qKJqCMYdxdjC51T", "userId": "xXew09h4gxW9oNUY"}, {"displayName": "1JROS0tGxz43ik5R", "namespace": "GWXHWVT52i3Tx4EU", "userId": "4VWEK1mTq0pmV2n9"}, {"displayName": "gPZZ0bwI2OfnSWBE", "namespace": "Lz8mQR04XUatJAPR", "userId": "9OQqVcAHRcSBRuF5"}]}' \
    > test.out 2>&1
eval_tap $? 240 'AdminAddRoleMembersV3' test.out

#- 241 AdminRemoveRoleMembersV3
eval_tap 0 241 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 242 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'x1zZBD3Uu9tfCsKi' \
    --body '{"permissions": [{"action": 84, "resource": "6B1RwJc31AmIzFhH", "schedAction": 63, "schedCron": "0wm9Psw7kfQRtzzO", "schedRange": ["tYDdrsUNidnUD3zr", "mpJXm4K6UR1feHjv", "RKrW6s74mmzfnaLk"]}, {"action": 2, "resource": "VxUgo2TTt5OBdNit", "schedAction": 22, "schedCron": "zZkS4LdqLPeAAShr", "schedRange": ["sChKYImd2VkYCXQv", "ctFysCiIndTHFnmX", "glypS3qcNf7gSQ9m"]}, {"action": 9, "resource": "YJba4d9EMq0evXZ6", "schedAction": 34, "schedCron": "5p5gYIvrvfXifC78", "schedRange": ["NGqIpkJgw2cZa84o", "Eof2gFXNIZuzXeCN", "IbNsgCKnwuQioZPA"]}]}' \
    > test.out 2>&1
eval_tap $? 242 'AdminUpdateRolePermissionsV3' test.out

#- 243 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'SoquUQhBrFDyRIwV' \
    --body '{"permissions": [{"action": 77, "resource": "6phds5VOn3CLhSWn", "schedAction": 92, "schedCron": "dz6AbXOHgxq4wrGA", "schedRange": ["sW7rTenQ8s9amHhC", "qjIqoZ9OLd8Q5O8B", "O33YWdz7YGTaS0xw"]}, {"action": 32, "resource": "cnxbuf2yUGbziIHh", "schedAction": 5, "schedCron": "fgwEABX0XobPSRif", "schedRange": ["gss8TpBelRWnLiYu", "6AUwA5sB22M6YkNo", "I513w9bPDqrWBldD"]}, {"action": 73, "resource": "m9MBvVTA7Y4cHOl0", "schedAction": 44, "schedCron": "gTKfdp4w0mNrW5Z7", "schedRange": ["OT2zBjQkvtAfZXVe", "G7MAFgGueOkUaIT8", "kGCRFWNe1F6r8VhE"]}]}' \
    > test.out 2>&1
eval_tap $? 243 'AdminAddRolePermissionsV3' test.out

#- 244 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'juLx5QVKXkROJxN9' \
    --body '["pU8m9Zvjn2ZrL9IV", "owLZbFX5HAgMh6X6", "6anQjNLiFAZzOQgq"]' \
    > test.out 2>&1
eval_tap $? 244 'AdminDeleteRolePermissionsV3' test.out

#- 245 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '64' \
    --resource 'AbgVdl5RNsflzPnv' \
    --roleId 'pAFvUtlOs4KDBAlE' \
    > test.out 2>&1
eval_tap $? 245 'AdminDeleteRolePermissionV3' test.out

#- 246 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 246 'AdminGetMyUserV3' test.out

#- 247 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId '6Pf2MOZnTWxt2xNP' \
    --extendExp 'true' \
    --redirectUri 'LE8gNfWDGbSU8OfZ' \
    --password 'AH1c2mqvlBIUnzCG' \
    --requestId 'zTlAOBI8jDWk75gJ' \
    --userName 'vMFp3rKNX3MWcRkb' \
    > test.out 2>&1
eval_tap $? 247 'UserAuthenticationV3' test.out

#- 248 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId '5PKWVlk3NFOPW1yL' \
    --linkingToken 'OuWFm4fmrDsYkRUC' \
    --password '8b2EpiQ5DAO9rcje' \
    --username 'NooM2tiPpCvEEwOg' \
    > test.out 2>&1
eval_tap $? 248 'AuthenticationWithPlatformLinkV3' test.out

#- 249 AuthenticateAndLinkForwardV3
samples/cli/sample-apps Iam authenticateAndLinkForwardV3 \
    --extendExp 'false' \
    --clientId 'VTw3Q8VdfvHFs4i8' \
    --linkingToken 'nFmV5h6NrdtTp0gD' \
    --password 'dkqz6tiP922Bb34z' \
    --username 'C4ibAtpRNsC7ZyL7' \
    > test.out 2>&1
eval_tap $? 249 'AuthenticateAndLinkForwardV3' test.out

#- 250 PublicGetSystemConfigV3
samples/cli/sample-apps Iam publicGetSystemConfigV3 \
    > test.out 2>&1
eval_tap $? 250 'PublicGetSystemConfigV3' test.out

#- 251 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData '1sKEPOrzLeztbZAu' \
    --extendExp 'false' \
    --linkingToken 'HwHpX4xbn36JVEmp' \
    > test.out 2>&1
eval_tap $? 251 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 252 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --redirectUri 'ytWYZ1HXAMSR6Ccl' \
    --state '7VdvUaCjYQt3AX7p' \
    --platformId 'IQzY02GyvNUfvp2D' \
    > test.out 2>&1
eval_tap $? 252 'RequestOneTimeLinkingCodeV3' test.out

#- 253 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'wAehwd25lLYTdRpR' \
    > test.out 2>&1
eval_tap $? 253 'ValidateOneTimeLinkingCodeV3' test.out

#- 254 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'MTrd7vTKrmB7DmbV' \
    --isTransient 'false' \
    --clientId 'kLu0xn8rv5Iy4R6p' \
    --oneTimeLinkCode 'stAxlcTsjqgRTsem' \
    > test.out 2>&1
eval_tap $? 254 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 255 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 255 'GetCountryLocationV3' test.out

#- 256 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 256 'Logout' test.out

#- 257 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --codeChallenge 'xEG22BoF0qFlvHHL' \
    --codeChallengeMethod 'S256' \
    --clientId '2RtSBxBbTWmxKTLr' \
    > test.out 2>&1
eval_tap $? 257 'RequestTokenExchangeCodeV3' test.out

#- 258 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'CKddL3gp3LkZlNAQ' \
    --userId 'aYqvToUBT1ytu4U4' \
    --platformUserId 'FeYzLBclXsGO4UQQ' \
    > test.out 2>&1
eval_tap $? 258 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 259 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LZ67vOjs8LmiGURr' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 259 'RevokeUserV3' test.out

#- 260 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --blockedPlatformId 'cNWvglKM8Lbx48Wf' \
    --codeChallenge 'Br4IsMuh7qwy822m' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'false' \
    --loginWebBased 'false' \
    --nonce 'I6QWulBXvgVtrIQX' \
    --oneTimeLinkCode 'ZrGd3yAM4li2H5KG' \
    --redirectUri 'RbbUh8RHy7AMGbE1' \
    --scope 'GmpSCRSDVqJMbfat' \
    --state 'UOL7cFqsFk8G7qUA' \
    --targetAuthPage 'nljEBrToL1IAkJwG' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'Rp6NDXO8jqwBNmqu' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 260 'AuthorizeV3' test.out

#- 261 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'Phbui0Gxvc6MWNJR' \
    > test.out 2>&1
eval_tap $? 261 'TokenIntrospectionV3' test.out

#- 262 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 262 'GetJWKSV3' test.out

#- 263 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'KWEXM28FUwNEhoZS' \
    --factor 'xqo3OXhk8MihfcEV' \
    --mfaToken 'vByZDPa0YXr1NfeM' \
    > test.out 2>&1
eval_tap $? 263 'SendMFAAuthenticationCode' test.out

#- 264 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'CK1jStFl3aiqCObv' \
    --mfaToken 'jtoMHnF24QNkZtlM' \
    > test.out 2>&1
eval_tap $? 264 'Change2faMethod' test.out

#- 265 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'NbPwxKPBd0F9psm8' \
    --factor 'TPx0QQa3ls7zYyf0' \
    --mfaToken 'T7uTTXVGkHposCs7' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 265 'Verify2faCode' test.out

#- 266 Verify2faCodeForward
samples/cli/sample-apps Iam verify2faCodeForward \
    --defaultFactor 'O1fbF8TCLV6AEo4K' \
    --factors 'ljlwiLJY9cBkkSlb' \
    --rememberDevice 'true' \
    --clientId 'CblJEeMpAAwkOKPM' \
    --code 'P0xIZgmyJxDw8qJh' \
    --factor 'Nwv2p9H61jeetGqi' \
    --mfaToken 'lYZmHH8lOKjiuxUC' \
    > test.out 2>&1
eval_tap $? 266 'Verify2faCodeForward' test.out

#- 267 OAuthDynamicClientRegisterWithNamespaceV3
samples/cli/sample-apps Iam oAuthDynamicClientRegisterWithNamespaceV3 \
    --namespace $AB_NAMESPACE \
    --body '{"client_name": "BjvH8HMzhWLY7rSX", "client_uri": "ZX0ZDMpdjcwSSqye", "grant_types": ["eT2n3Lyvxml0WGhz", "BTHs51TBqAc6XvMu", "z7bjBa3alYaphzxT"], "redirect_uris": ["FxCIXj3XsGjdZeHg", "7jgNKiGKDl2RAplN", "x97JgI47O1zsizND"], "response_types": ["lisWqRVVKUdX3tAq", "BsGUTJYakdJ608Nv", "f9FFQ4rMkPtPWMpu"], "scopes": ["eOk9hjGjTG4AxmOj", "WWHWwCNyE198M6C0", "F5Z83k4Wpp7mCOl6"], "token_endpoint_auth_method": "x8DCGPdFvS5z8YnL"}' \
    > test.out 2>&1
eval_tap $? 267 'OAuthDynamicClientRegisterWithNamespaceV3' test.out

#- 268 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'CqRbooycmu41roc5' \
    --userId 'N6gziHt1NLZjNSkJ' \
    > test.out 2>&1
eval_tap $? 268 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 269 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'U1d1MyTV2MrDwd2L' \
    --clientId 'zL2z8jTx0BYc8tNo' \
    --redirectUri 'Ojz8Uo7S96XTt8Bw' \
    --requestId 'IUEAwNPcCzNINg6v' \
    > test.out 2>&1
eval_tap $? 269 'AuthCodeRequestV3' test.out

#- 270 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'YGezTqtOjCxyznQQ' \
    --additionalData 'Sq21ntfvYzJwTwpC' \
    --clientId 'jalJAMBp6zez7Uv6' \
    --createHeadless 'true' \
    --deviceId 'FZHCdBXvPva1NLkq' \
    --macAddress 'SvhvrcscbLbYTinD' \
    --platformToken 'hKrnUnEjQqw6jJCF' \
    --serviceLabel '0.7255271679328402' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 270 'PlatformTokenGrantV3' test.out

#- 271 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 271 'GetRevocationListV3' test.out

#- 272 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token '5r7NxJeqGOmRYosq' \
    > test.out 2>&1
eval_tap $? 272 'TokenRevocationV3' test.out

#- 273 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform '9Ki5UBSM6GUVpXS5' \
    --simultaneousTicket 'hsgj6FLd8EUxTsYI' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'F68vfdSDvpIIw3n0' \
    > test.out 2>&1
eval_tap $? 273 'SimultaneousLoginV3' test.out

#- 274 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData '0Wdmh3p06RcGYh3A' \
    --clientId '6bizYhsvaFYQVAs2' \
    --clientSecret '23ivQISETvjfcjQK' \
    --code '4BT9ZX5n5GHVIcqJ' \
    --codeVerifier 'oyOsaV5Gf5uCgqVf' \
    --extendNamespace 'eYxdqLz0PCricbXZ' \
    --extendExp 'true' \
    --password 'vIp7JRa9UCCWY3d4' \
    --redirectUri 'NirrNmuRHjPom7bn' \
    --refreshToken 'DBuzTY6EmzFuMURD' \
    --scope 'zcAaAeXgrfmlr9i2' \
    --username 'YFdxspu4FMZ8DkCs' \
    --grantType 'refresh_token' \
    > test.out 2>&1
eval_tap $? 274 'TokenGrantV3' test.out

#- 275 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'Ox2RisRMm3Go5utE' \
    > test.out 2>&1
eval_tap $? 275 'VerifyTokenV3' test.out

#- 276 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'BcVi8JOijE1YUOxT' \
    --code 'f1bg3stl7Edn57cc' \
    --error 'CXZCoBjM3aoO1RP3' \
    --openidAssocHandle 'bLJ3CmoNBo5JQxzm' \
    --openidClaimedId 'Db3B7ehaqlWQGYKs' \
    --openidIdentity 'yOWdfuotmzJLlljv' \
    --openidMode 'Cj59Hwr4DQ4FPkzR' \
    --openidNs '7UPkxwJJ8o1Krtr9' \
    --openidOpEndpoint '9LMedzLSCUZnqTkg' \
    --openidResponseNonce 'LmDLE7rQLh9cmXC5' \
    --openidReturnTo 'CM6udmUj3xSKpcTo' \
    --openidSig '1PA3LFbbu3yEHrvV' \
    --openidSigned 'Ds4vsWJoYLa1TNGB' \
    --state 'tz3C82xYPJkE2jJm' \
    > test.out 2>&1
eval_tap $? 276 'PlatformAuthenticationV3' test.out

#- 277 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'blsCzIl0a3beSdv6' \
    --platformToken 'YMzY4HFbEJvn3FtT' \
    > test.out 2>&1
eval_tap $? 277 'PlatformTokenRefreshV3' test.out

#- 278 PublicGetInputValidations
eval_tap 0 278 'PublicGetInputValidations # SKIP deprecated' test.out

#- 279 PublicGetInputValidationByField
eval_tap 0 279 'PublicGetInputValidationByField # SKIP deprecated' test.out

#- 280 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode '15gtf6Zu3yMGcnZ5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 280 'PublicGetCountryAgeRestrictionV3' test.out

#- 281 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'hdXT0SsFBPMX7Y5Q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 281 'PublicGetConfigValueV3' test.out

#- 282 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 282 'PublicGetCountryListV3' test.out

#- 283 PublicGetNamespaceScopedInputValidations
samples/cli/sample-apps Iam publicGetNamespaceScopedInputValidations \
    --namespace $AB_NAMESPACE \
    --defaultOnEmpty 'false' \
    --languageCode 'QwqwBzqw9KstxVNO' \
    > test.out 2>&1
eval_tap $? 283 'PublicGetNamespaceScopedInputValidations' test.out

#- 284 PublicGetNamespaceScopedInputValidationByField
samples/cli/sample-apps Iam publicGetNamespaceScopedInputValidationByField \
    --field 'zZ9PqJvO5j7GNrTD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 284 'PublicGetNamespaceScopedInputValidationByField' test.out

#- 285 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 285 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 286 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId '57NXf043geTCN4le' \
    > test.out 2>&1
eval_tap $? 286 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 287 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 287 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 288 PublicGetUserByPlatformUserIDV3
eval_tap 0 288 'PublicGetUserByPlatformUserIDV3 # SKIP deprecated' test.out

#- 289 PublicGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam publicGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'dob' \
    > test.out 2>&1
eval_tap $? 289 'PublicGetProfileUpdateStrategyV3' test.out

#- 290 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'pQAn27AwCf78tPb3' \
    > test.out 2>&1
eval_tap $? 290 'PublicGetAsyncStatus' test.out

#- 291 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'JIop9BOBTmci8eIv' \
    --limit '45' \
    --offset '44' \
    --platformBy 'YrDp6mqn3JDtxT5J' \
    --platformId 'FqB2M3JTCNIWdNNF' \
    --query '6Nj9kgeZiIEctZoS' \
    > test.out 2>&1
eval_tap $? 291 'PublicSearchUserV3' test.out

#- 292 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "fCsZMsWlNwirBjsv", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "0snILCX4Fk4grzo9", "policyId": "M8XTzt0fdFrHkd5D", "policyVersionId": "UHNBZei8RlXztL2U"}, {"isAccepted": true, "localizedPolicyVersionId": "1KdriO3vWPRqosK5", "policyId": "Rp87mF0Rn0zPdVNf", "policyVersionId": "IfRyVJyK0USFbOYF"}, {"isAccepted": true, "localizedPolicyVersionId": "OGuQsJiWYr04Luo8", "policyId": "0JjeJ5bY75MCsfHh", "policyVersionId": "XoK8MrwdsAQmaJGG"}], "authType": "RZydfmYOQYaq5URO", "code": "efi0ynnS5i2SEdob", "country": "l8HQWn6l5ENFW8sM", "dateOfBirth": "U5fbeX9X6UhxMDLz", "displayName": "oxxbTCettStjK4qe", "emailAddress": "KYlPSqwrISm3xRXB", "password": "UQIg14k8wYGCURR8", "reachMinimumAge": true, "uniqueDisplayName": "3nhpgAeM6CUvacKv"}' \
    > test.out 2>&1
eval_tap $? 292 'PublicCreateUserV3' test.out

#- 293 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'M1O3o7dDC04PEgGP' \
    --query 'Xsxxj0iPjJEF0aqp' \
    > test.out 2>&1
eval_tap $? 293 'CheckUserAvailability' test.out

#- 294 PublicBulkGetUsers
eval_tap 0 294 'PublicBulkGetUsers # SKIP deprecated' test.out

#- 295 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "y47PEW87Sm1KeET5", "languageTag": "CYMzPY9qR5VGDpTV"}' \
    > test.out 2>&1
eval_tap $? 295 'PublicSendRegistrationCode' test.out

#- 296 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "UuHN3MY2DwIX38RT", "emailAddress": "tyOvVFfbdD7v0xjw"}' \
    > test.out 2>&1
eval_tap $? 296 'PublicVerifyRegistrationCode' test.out

#- 297 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "YNg9UE3XA610iYOA", "languageTag": "BI6Du42nMZ7ZC0zk"}' \
    > test.out 2>&1
eval_tap $? 297 'PublicForgotPasswordV3' test.out

#- 298 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "H0m6Pr2CDkwpj8sF", "password": "4h3dZuzDjoHHmupP", "uniqueDisplayName": "mXxImpeGqFMdVcRh", "username": "vP16R49paFC39Lv5"}' \
    > test.out 2>&1
eval_tap $? 298 'PublicValidateUserInput' test.out

#- 299 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'K3973FfGPUiwzkGS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 299 'GetAdminInvitationV3' test.out

#- 300 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'xhFsELV3rXnvbrBd' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "cx7M4YezVXjHpK1L", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "0ZohF6tX3cLxYUCH", "policyId": "0OPe5dPZ6gXcYX5A", "policyVersionId": "MZdqMpe54rbkNnoR"}, {"isAccepted": false, "localizedPolicyVersionId": "Lc4vF6UHRoPaoTYV", "policyId": "Rl2CKrefnetVnWX0", "policyVersionId": "i97AKEqVcfLp1LEf"}, {"isAccepted": false, "localizedPolicyVersionId": "ONXfkI3OJ48cF9xV", "policyId": "2YiQbf33XZuK0CQ5", "policyVersionId": "y58M0QVcCvPHdTMr"}], "authType": "pA8lfFabQNQMUFcy", "code": "KTdX8nt476TGDdi1", "country": "wcN0tjthwLe54HU1", "dateOfBirth": "oWnnfcQrn1xbDYuE", "displayName": "QbLP7g6B60qnEP4j", "emailAddress": "fNu2btyGenXLZJUN", "password": "bGbabdyCG6LkZqcg", "reachMinimumAge": false, "uniqueDisplayName": "Vx7videCbk5eVlzu"}' \
    > test.out 2>&1
eval_tap $? 300 'CreateUserFromInvitationV3' test.out

#- 301 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "sgIC3sKHnhsU9kGV", "country": "GezpcbWawyDYegfA", "dateOfBirth": "19BgzuuCc6qb1cjY", "displayName": "N68BtkNmBn14hFYd", "languageTag": "qZFPoNTuOCiJ62b0", "uniqueDisplayName": "208Q5KeTu7TS3mtt", "userName": "vfdBtdVt3BK2zwcc"}' \
    > test.out 2>&1
eval_tap $? 301 'UpdateUserV3' test.out

#- 302 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "6MMpfPMDulpwheVl", "country": "UjenKOYM74yVOo3K", "dateOfBirth": "zDuWO8j7W8n8QbD0", "displayName": "RAauwJnPN2yn6DXi", "languageTag": "TCfod0ow1S4ntElt", "uniqueDisplayName": "QMt7yYpgLa91eIE3", "userName": "30JoQ8JdFLOk0gs2"}' \
    > test.out 2>&1
eval_tap $? 302 'PublicPartialUpdateUserV3' test.out

#- 303 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "SB5GtyH2TRlN8Pu3", "emailAddress": "f6xg6Gvgo7s0Rl3E", "languageTag": "KzTxvCHloXVTgqCo", "upgradeToken": "eYkfk7E78ysJKHKJ"}' \
    > test.out 2>&1
eval_tap $? 303 'PublicSendVerificationCodeV3' test.out

#- 304 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "8rQsngi3Fbg0fNnO", "contactType": "pXqkvlKsg0x1mrv5", "languageTag": "wBe58RkPhZnqv9ng", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 304 'PublicUserVerificationV3' test.out

#- 305 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "saxOvdPjZMyvfWFc", "country": "5j164ZJlp9uPIaSF", "dateOfBirth": "6SKMcI474GYqbL7M", "displayName": "XwXlk0Pkjj5nfryH", "emailAddress": "X9mmMYfZVZVuoQQu", "password": "dOASKMfPutqizEqy", "uniqueDisplayName": "rCguJzatBy31cTvk", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 305 'PublicUpgradeHeadlessAccountV3' test.out

#- 306 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "djas5Uoa73eROdJN", "password": "T8HxNNtET0gLlpn2"}' \
    > test.out 2>&1
eval_tap $? 306 'PublicVerifyHeadlessAccountV3' test.out

#- 307 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "2GiXVb9viF6k2mzD", "mfaToken": "3QdWFSnL4ZuWf6Ye", "newPassword": "7x5pDdNSIUlIrxtJ", "oldPassword": "ortIRxunVFZdEciC"}' \
    > test.out 2>&1
eval_tap $? 307 'PublicUpdatePasswordV3' test.out

#- 308 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'IEYtJ0l26OrLSZmG' \
    > test.out 2>&1
eval_tap $? 308 'PublicCreateJusticeUser' test.out

#- 309 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'NRiUlY6sH1JoeuFg' \
    --redirectUri 'CBOnZH8dTB8OytnK' \
    --ticket 'jZRQwnHTcAjaO6J3' \
    > test.out 2>&1
eval_tap $? 309 'PublicPlatformLinkV3' test.out

#- 310 PublicPlatformUnlinkV3
eval_tap 0 310 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 311 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'F12R5DkXeHecm0tq' \
    > test.out 2>&1
eval_tap $? 311 'PublicPlatformUnlinkAllV3' test.out

#- 312 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'eCg2bSikWYSwBRpN' \
    --ticket 'fLdllrZAmWrVVb2G' \
    > test.out 2>&1
eval_tap $? 312 'PublicForcePlatformLinkV3' test.out

#- 313 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'gZLNQAkT9vP3RPyq' \
    --clientId 'KS5Ma6v41cGl4wg1' \
    --redirectUri 'cO50dcpmCJIBVprE' \
    > test.out 2>&1
eval_tap $? 313 'PublicWebLinkPlatform' test.out

#- 314 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId '0qdS4FmzJLrbnT3K' \
    --code 'htr6anvTwYnASYO3' \
    --state 'EFqpNivqd4sndsQd' \
    > test.out 2>&1
eval_tap $? 314 'PublicWebLinkPlatformEstablish' test.out

#- 315 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'SXFPSipePY2qRzH6' \
    --code 'hsiUPPpOVq7TIyvD' \
    --state 'l9nNCDsns0QAz6og' \
    > test.out 2>&1
eval_tap $? 315 'PublicProcessWebLinkPlatformV3' test.out

#- 316 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "RytEpOXll3sg0ktt", "userIds": ["F2opOKMLphWaLAoY", "ioBQwTZHm5izVeHH", "JZ1SmqaDCBgd7PHf"]}' \
    > test.out 2>&1
eval_tap $? 316 'PublicGetUsersPlatformInfosV3' test.out

#- 317 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "2X52NNTuhGx2k3mJ", "code": "aIZj64fjUdRYbSPV", "emailAddress": "pX1axFI5JfK0KWFx", "languageTag": "QgjHH1fDKzg4FF20", "newPassword": "uRa8kfODmncJ6Ycn"}' \
    > test.out 2>&1
eval_tap $? 317 'ResetPasswordV3' test.out

#- 318 PublicGetUserByUserIdV3
eval_tap 0 318 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 319 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId '1JqtlvSS3pby9DnX' \
    --activeOnly 'true' \
    --limit '89' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 319 'PublicGetUserBanHistoryV3' test.out

#- 320 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gRmvsNhrDXHJ892W' \
    > test.out 2>&1
eval_tap $? 320 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 321 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId '6tEDobeVJXTDZevi' \
    > test.out 2>&1
eval_tap $? 321 'PublicGetUserInformationV3' test.out

#- 322 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'uLktLjtqVhWF0L3M' \
    --after '0.3204576857222766' \
    --before '0.9061569439529665' \
    --limit '69' \
    > test.out 2>&1
eval_tap $? 322 'PublicGetUserLoginHistoriesV3' test.out

#- 323 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'KNPu3JG5MWLzUBFT' \
    --after 'agbs36uueckIFqcg' \
    --before 'sT3IcrYcyjwTHAsS' \
    --limit '73' \
    --platformId 'PWHk4o6ufW3OQKIM' \
    > test.out 2>&1
eval_tap $? 323 'PublicGetUserPlatformAccountsV3' test.out

#- 324 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'X5SyVHzPHwCUiShp' \
    > test.out 2>&1
eval_tap $? 324 'PublicListJusticePlatformAccountsV3' test.out

#- 325 PublicLinkPlatformAccount
eval_tap 0 325 'PublicLinkPlatformAccount # SKIP deprecated' test.out

#- 326 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'IR6ePIQ1kWKdGrkY' \
    --body '{"chosenNamespaces": ["LNSkSYE3mG2WIhtZ", "rEnXwqqzVu8SIE7X", "cmZkwiKB3lXVvHgA"], "requestId": "DWWzeEOMCmCf6mnd"}' \
    > test.out 2>&1
eval_tap $? 326 'PublicForceLinkPlatformWithProgression' test.out

#- 327 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'GUHAo2PAh8avxoFN' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetPublisherUserV3' test.out

#- 328 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'f2eOO4WkfUfDcEvf' \
    --password '3bm4fvTHCYCmlu0P' \
    > test.out 2>&1
eval_tap $? 328 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 329 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'hRBlx0XkLdhYMj2F' \
    --before 'AIWIOGbj1RHLDA8q' \
    --isWildcard 'true' \
    --limit '62' \
    > test.out 2>&1
eval_tap $? 329 'PublicGetRolesV3' test.out

#- 330 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'mwWIhFylo1iv3P7O' \
    > test.out 2>&1
eval_tap $? 330 'PublicGetRoleV3' test.out

#- 331 PublicForgotPasswordWithoutNamespaceV3
samples/cli/sample-apps Iam publicForgotPasswordWithoutNamespaceV3 \
    --body '{"clientId": "gQLg0e7W3wRxF2rj", "emailAddress": "EbBTjeAm2w5qdeBa", "languageTag": "zjCgS6MJQqcNyPaR"}' \
    > test.out 2>&1
eval_tap $? 331 'PublicForgotPasswordWithoutNamespaceV3' test.out

#- 332 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'false' \
    > test.out 2>&1
eval_tap $? 332 'PublicGetMyUserV3' test.out

#- 333 PublicSendCodeForwardV3
samples/cli/sample-apps Iam publicSendCodeForwardV3 \
    --body '{"context": "rVms1HGLZlCtQi3X", "emailAddress": "NubmH1u9GWGHGahB", "languageTag": "Ba5A2ILVn8jVivcv", "upgradeToken": "4QY2lqtWSbQtgBaX"}' \
    > test.out 2>&1
eval_tap $? 333 'PublicSendCodeForwardV3' test.out

#- 334 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode '5OiPY3MiznxhRAVL' \
    > test.out 2>&1
eval_tap $? 334 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 335 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["7HIS1d0jtvieqXwz", "t78XOJ3mac6lmcM5", "H27clkUdVYNc0lm9"], "oneTimeLinkCode": "nFbPIbTnRCgCmJbM"}' \
    > test.out 2>&1
eval_tap $? 335 'LinkHeadlessAccountToMyAccountV3' test.out

#- 336 PublicGetMyRedirectionAfterLinkV3
samples/cli/sample-apps Iam publicGetMyRedirectionAfterLinkV3 \
    --oneTimeLinkCode 'vJbunmw066Jurtxw' \
    > test.out 2>&1
eval_tap $? 336 'PublicGetMyRedirectionAfterLinkV3' test.out

#- 337 PublicGetMyProfileAllowUpdateStatusV3
samples/cli/sample-apps Iam publicGetMyProfileAllowUpdateStatusV3 \
    > test.out 2>&1
eval_tap $? 337 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 338 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "jyrYnFltyHfOMXuk"}' \
    > test.out 2>&1
eval_tap $? 338 'PublicSendVerificationLinkV3' test.out

#- 339 PublicGetOpenidUserInfoV3
samples/cli/sample-apps Iam publicGetOpenidUserInfoV3 \
    > test.out 2>&1
eval_tap $? 339 'PublicGetOpenidUserInfoV3' test.out

#- 340 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code '6PxNAcO1zeXB0Frc' \
    > test.out 2>&1
eval_tap $? 340 'PublicVerifyUserByLinkV3' test.out

#- 341 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'fRLL1f0lk8tgIBuk' \
    --code 'l3snZgYmcfre7ny3' \
    --error 'dwvy5yOCg482Hw4c' \
    --state 'meALPyGGQeNA4QAE' \
    > test.out 2>&1
eval_tap $? 341 'PlatformAuthenticateSAMLV3Handler' test.out

#- 342 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId '4yIHNuOm3NwlwkLp' \
    --payload 'mDyq6VEmX7EUpvLp' \
    > test.out 2>&1
eval_tap $? 342 'LoginSSOClient' test.out

#- 343 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'NGAIOd4o6URDpT07' \
    > test.out 2>&1
eval_tap $? 343 'LogoutSSOClient' test.out

#- 344 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'JVpy9IWKud1Twszh' \
    --code 'DITYMyKrSfweDZWC' \
    > test.out 2>&1
eval_tap $? 344 'RequestTargetTokenResponseV3' test.out

#- 345 UpgradeAndAuthenticateForwardV3
samples/cli/sample-apps Iam upgradeAndAuthenticateForwardV3 \
    --clientId 'ZcBNpzkhbEy85AvT' \
    --upgradeSuccessToken 'kkjQg4Ym3UfAfJYy' \
    > test.out 2>&1
eval_tap $? 345 'UpgradeAndAuthenticateForwardV3' test.out

#- 346 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '2' \
    --namespace 'ZwJywFyMrEfazJQs' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 346 'AdminListInvitationHistoriesV4' test.out

#- 347 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'LK2eWQy3dK6uSOcB' \
    > test.out 2>&1
eval_tap $? 347 'AdminGetDevicesByUserV4' test.out

#- 348 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'Q8caOSa5QDJlri8B' \
    --endDate 'lvOwtpBmd0Tq6D6K' \
    --limit '49' \
    --offset '35' \
    --startDate 'Wc1xdVqOmIvurSas' \
    > test.out 2>&1
eval_tap $? 348 'AdminGetBannedDevicesV4' test.out

#- 349 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId '3jkkFX156TKvnm7G' \
    > test.out 2>&1
eval_tap $? 349 'AdminGetUserDeviceBansV4' test.out

#- 350 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "baVxpbpbvk4I7uAE", "deviceId": "mMNwHDOLcNWzMVLO", "deviceType": "KqN9rjt7JtnMLb6U", "enabled": true, "endDate": "QHmlkrGrCWV9mOf3", "ext": {"1NxFwdj8WW4PV6mx": {}, "w86yO90EyFiMT86T": {}, "3cPv01BEri8yomXV": {}}, "reason": "UVXP3poYbyqswJDZ"}' \
    > test.out 2>&1
eval_tap $? 350 'AdminBanDeviceV4' test.out

#- 351 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'ornYSeBLynSzFxOH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 351 'AdminGetDeviceBanV4' test.out

#- 352 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'YV0Pzt767sHlgCRG' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 352 'AdminUpdateDeviceBanV4' test.out

#- 353 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'vgGXL611h5XntEMT' \
    --startDate 'u97vLdppGyPJTXjJ' \
    --deviceType 'uyWIZdPilbYoGjUO' \
    > test.out 2>&1
eval_tap $? 353 'AdminGenerateReportV4' test.out

#- 354 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 354 'AdminGetDeviceTypesV4' test.out

#- 355 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'g5myJjOcdLPKD36X' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 355 'AdminGetDeviceBansV4' test.out

#- 356 AdminDecryptDeviceV4
eval_tap 0 356 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 357 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId '5VTQNNewH4xuuPDO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 357 'AdminUnbanDeviceV4' test.out

#- 358 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'PlOoT4ckxtLJ9Rxo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 358 'AdminGetUsersByDeviceV4' test.out

#- 359 AdminGetNamespaceInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 359 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 360 AdminGetNamespaceUserInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceUserInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 360 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 361 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "knuyHEEymJQJXU79", "policyId": "LT3SVTxWPIcAuQ5M", "policyVersionId": "FBnVSGxR2qYjHFmR"}, {"isAccepted": false, "localizedPolicyVersionId": "m3AYELxz9KLnasV1", "policyId": "Q3YZxIyMSRUv7wJB", "policyVersionId": "SFcysCRWuCucbtAf"}, {"isAccepted": false, "localizedPolicyVersionId": "uK4hNfQ68Y4oobLi", "policyId": "756B5tjXUDf09mwq", "policyVersionId": "Hg5u8KgVTANj6U0B"}], "count": 16, "userInfo": {"country": "dZxJNkP79FOSGPoX"}}' \
    > test.out 2>&1
eval_tap $? 361 'AdminCreateTestUsersV4' test.out

#- 362 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "DGXgFeXhs5SJOjkV", "policyId": "LI0DpyYs4JV667ci", "policyVersionId": "lATBJbCP1zagkWDz"}, {"isAccepted": true, "localizedPolicyVersionId": "r1u2OcFMFkPgcoZA", "policyId": "xvU0B5DkRHKCTTUd", "policyVersionId": "NKo7wQ3emAfFfgnM"}, {"isAccepted": false, "localizedPolicyVersionId": "MtPL24hzy1MTkKt0", "policyId": "l6rRwUxnEmknBH25", "policyVersionId": "4fW8t0ikmQpguNN2"}], "authType": "EMAILPASSWD", "code": "NscovJGyJMZzAsW0", "country": "0ilpnC9n7VV7Caa0", "dateOfBirth": "uxiFiAserZoGrLdc", "displayName": "3z4M2RiPijbsbuv2", "emailAddress": "5ev7Drd3i6zur1v7", "password": "URPMQqnk0xbHYUsn", "passwordMD5Sum": "PAyNxlh0AEioZlzk", "reachMinimumAge": false, "uniqueDisplayName": "Mky5eyFw8EspIrFR", "username": "pu21RtYTlQP6IyB5"}' \
    > test.out 2>&1
eval_tap $? 362 'AdminCreateUserV4' test.out

#- 363 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": false, "userIds": ["2WQx9ELhjN2538p8", "wLlUjfzBcP8lGXQp", "dz0pVy68HXzmosG2"]}' \
    > test.out 2>&1
eval_tap $? 363 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 364 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["PJEpfybmexd9rHEe", "Z7jt4xB0TAJ9pvxi", "z12EOyd33ZdN3rgb"]}' \
    > test.out 2>&1
eval_tap $? 364 'AdminBulkCheckValidUserIDV4' test.out

#- 365 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'DTF0KTOWntBzny1m' \
    --body '{"avatarUrl": "xtBXnxiJHN7LriyN", "country": "hTISrttR2m3qeaBE", "dateOfBirth": "MgPJFrfA5XHiS653", "displayName": "DwyKPX1SqnCBIGdl", "languageTag": "RwVaj55FiXXzayOM", "skipLoginQueue": true, "tags": ["bdFv389N4TXixEeq", "ucGmSd2gF6VxVrvN", "JvRi6yw4tgQrvpTw"], "uniqueDisplayName": "zbYiCzDKoLnmJOYd", "userName": "NDGkKL0pvVamu7YK"}' \
    > test.out 2>&1
eval_tap $? 365 'AdminUpdateUserV4' test.out

#- 366 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'gl2MMxgzY9LqoV1Z' \
    --body '{"code": "aW1GE3vq61Hu79HA", "emailAddress": "o6kp8Tsl62cgcCDH"}' \
    > test.out 2>&1
eval_tap $? 366 'AdminUpdateUserEmailAddressV4' test.out

#- 367 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'mmEu0KqwJV9c75fi' \
    --body '{"factor": "xGhDX1zchnoS76xr", "mfaToken": "LeCo1JnOzNssovz0"}' \
    > test.out 2>&1
eval_tap $? 367 'AdminDisableUserMFAV4' test.out

#- 368 AdminGetUserMFAStatusV4
samples/cli/sample-apps Iam adminGetUserMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    --userId '2JAHCOb2DMYQqk9e' \
    > test.out 2>&1
eval_tap $? 368 'AdminGetUserMFAStatusV4' test.out

#- 369 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'U9ZsqiiTB1rEgSn1' \
    > test.out 2>&1
eval_tap $? 369 'AdminListUserRolesV4' test.out

#- 370 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'EnbiYR6YPKRZWf1a' \
    --body '{"assignedNamespaces": ["AjYKyfYvrUu8Dced", "hOfgXbCyCI76pRUh", "PJDkJCTD2OWHPuSu"], "roleId": "PTSkTleJBGaUQKhF"}' \
    > test.out 2>&1
eval_tap $? 370 'AdminUpdateUserRoleV4' test.out

#- 371 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'NVkfFC2PtntJdHtx' \
    --body '{"assignedNamespaces": ["kYJP6mN4O8BsT7IQ", "JjJLmoYyhc4OOkZx", "RxZj0korUyykuppO"], "roleId": "IaFGhZikHIkvbWza"}' \
    > test.out 2>&1
eval_tap $? 371 'AdminAddUserRoleV4' test.out

#- 372 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'WhLvCwzrPof9qKUW' \
    --body '{"assignedNamespaces": ["5sK1cnfFyNnYtaXV", "sG55Qi4AwADf4THz", "ZUDZze28TmfxsRgk"], "roleId": "zmTtlhPi4HQCNODL"}' \
    > test.out 2>&1
eval_tap $? 372 'AdminRemoveUserRoleV4' test.out

#- 373 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'false' \
    --limit '68' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 373 'AdminGetRolesV4' test.out

#- 374 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "wQBQyjTpmqhDlKno"}' \
    > test.out 2>&1
eval_tap $? 374 'AdminCreateRoleV4' test.out

#- 375 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'YF4JReMYOREZnmLE' \
    > test.out 2>&1
eval_tap $? 375 'AdminGetRoleV4' test.out

#- 376 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'RZZbKQX07ieU5ZZ5' \
    > test.out 2>&1
eval_tap $? 376 'AdminDeleteRoleV4' test.out

#- 377 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'a4pJgmps59wrGQoy' \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "GHQMpZ1Laov59VmO"}' \
    > test.out 2>&1
eval_tap $? 377 'AdminUpdateRoleV4' test.out

#- 378 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'pJ1EdyuZhnIsY3FS' \
    --body '{"permissions": [{"action": 21, "resource": "NOy7NCfhLsMzeYxZ", "schedAction": 5, "schedCron": "D7YKYIilEJOksw4c", "schedRange": ["MLp1CZnNFeyVyFj5", "cVeiWXs3sbOoNevN", "yEC5d3mxB5HezcVm"]}, {"action": 86, "resource": "RLQNiWhkhRDm1sqe", "schedAction": 90, "schedCron": "EW6HLTyekR0zIOHU", "schedRange": ["QabIjRd1wFNgF9MF", "ihrJsz7wmUBNmwes", "etIXc76gAk7DgXVb"]}, {"action": 5, "resource": "CZ2ekNlEn2pfaCFl", "schedAction": 45, "schedCron": "MHAlz2QU8fbM605F", "schedRange": ["MZLXX9wwY9nt7UCO", "KE5cdMkewHFJN9uD", "9fRUPElu0ZGrp3Za"]}]}' \
    > test.out 2>&1
eval_tap $? 378 'AdminUpdateRolePermissionsV4' test.out

#- 379 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'hIxwmaOKTDysx4su' \
    --body '{"permissions": [{"action": 26, "resource": "GtQXj64r2rbKvTHS", "schedAction": 5, "schedCron": "ckjEYJ7tXsh3Pcz6", "schedRange": ["zL8X8pyyW3g0PRUh", "SVJsFuj29QEF8ULj", "dsZJDbmoRKuaSH3G"]}, {"action": 99, "resource": "HtKVE5Y2MnnX8CnA", "schedAction": 68, "schedCron": "2y4wjJTGgbkz5wYY", "schedRange": ["vS9zyjk098GtgHwT", "BL1KSAUqX6Ftb5Kv", "E1rftEyENwsuzBds"]}, {"action": 82, "resource": "rcVPox3VAqEXJhOm", "schedAction": 7, "schedCron": "4Ypbz6txGGtB7zgQ", "schedRange": ["KPB88fev2kfSNcHr", "2HdW9eYwLgVVa81L", "GnP5XLaly55XQUpK"]}]}' \
    > test.out 2>&1
eval_tap $? 379 'AdminAddRolePermissionsV4' test.out

#- 380 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId '8dhzII7AfVk7QXt8' \
    --body '["aWU0k3JaYn0pn7X1", "l0Ncr4w6LqMnMyiU", "rdTMLZ1xHNcqTa7S"]' \
    > test.out 2>&1
eval_tap $? 380 'AdminDeleteRolePermissionsV4' test.out

#- 381 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'ISQPbb3WlxjTZApx' \
    --after 'sNlmDdPpWt12zPhr' \
    --before 'aguVm8mbJdN5T3WG' \
    --limit '18' \
    > test.out 2>&1
eval_tap $? 381 'AdminListAssignedUsersV4' test.out

#- 382 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'Ux6NLvIUBqlngeAh' \
    --body '{"assignedNamespaces": ["dhaxORZlKOnQYFzi", "HIcJs4oSo1QGPeal", "OPjvBxue1kHPCU5g"], "namespace": "02pfA3LsddydvBZz", "userId": "q7Fo7XDxRT9OzLjH"}' \
    > test.out 2>&1
eval_tap $? 382 'AdminAssignUserToRoleV4' test.out

#- 383 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'XG5Q3sbXubNKv4SH' \
    --body '{"namespace": "RzS39RLTszpKAiC5", "userId": "iFn8F66MlHlhv6eW"}' \
    > test.out 2>&1
eval_tap $? 383 'AdminRevokeUserFromRoleV4' test.out

#- 384 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["StmLxKGoslHBKW04", "AnLgszWFctxwnDRR", "EjTfISUpGoUK0IBA"], "emailAddresses": ["itv0RURE1TyazwAf", "ZKJmLsOf02XIomdp", "3z9YTyPqI55mOqAt"], "isAdmin": false, "isNewStudio": false, "languageTag": "Ik5sbXaRj47axrGR", "namespace": "QaBnhZSoDGAEDgoT", "roleId": "a4ODyqxunsjPGJTT"}' \
    > test.out 2>&1
eval_tap $? 384 'AdminInviteUserNewV4' test.out

#- 385 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "2R6jne7jk2a3ZUVf", "country": "IIdYnagqxIPgDsxK", "dateOfBirth": "o6CA6kvz3YNiZmk8", "displayName": "BUzKy7pec4KaPmuT", "languageTag": "QH8Sbu8u8bHXaRMj", "skipLoginQueue": true, "tags": ["AXVom6SLLN3jktFW", "ErXLBWYHuqTTCHik", "nh8HV6lrh0FV7G0N"], "uniqueDisplayName": "dFVgmecxAcnKkqzg", "userName": "pxa57WX5aOx3YWLc"}' \
    > test.out 2>&1
eval_tap $? 385 'AdminUpdateMyUserV4' test.out

#- 386 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"factor": "cD3GCPjmI97TIys3", "mfaToken": "l1ktVCWrpwwdd6ya"}' \
    > test.out 2>&1
eval_tap $? 386 'AdminDisableMyAuthenticatorV4' test.out

#- 387 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code '0arEzuWfNoM7VkLk' \
    > test.out 2>&1
eval_tap $? 387 'AdminEnableMyAuthenticatorV4' test.out

#- 388 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 388 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 389 AdminGetMyBackupCodesV4
eval_tap 0 389 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 390 AdminGenerateMyBackupCodesV4
eval_tap 0 390 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 391 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    --body '{"factor": "whDf7AClVSVtC0dN", "mfaToken": "ly5cgD2rLQP5Uxil"}' \
    > test.out 2>&1
eval_tap $? 391 'AdminDisableMyBackupCodesV4' test.out

#- 392 AdminDownloadMyBackupCodesV4
eval_tap 0 392 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 393 AdminEnableMyBackupCodesV4
eval_tap 0 393 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 394 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag 'L03eMh0wDxqqu55T' \
    > test.out 2>&1
eval_tap $? 394 'AdminGetBackupCodesV4' test.out

#- 395 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag 'bZp55WDMCV6bUkgR' \
    > test.out 2>&1
eval_tap $? 395 'AdminGenerateBackupCodesV4' test.out

#- 396 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag 'UcZN78DrX8PxKYnS' \
    > test.out 2>&1
eval_tap $? 396 'AdminEnableBackupCodesV4' test.out

#- 397 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code 'aRlJU2YgXYs454A9' \
    --factor '8cJaIJwqUW4AamCb' \
    > test.out 2>&1
eval_tap $? 397 'AdminChallengeMyMFAV4' test.out

#- 398 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action 'QmvLzsx4PV6VhT2L' \
    --languageTag 'qukJS6mHwvxfH2ew' \
    > test.out 2>&1
eval_tap $? 398 'AdminSendMyMFAEmailCodeV4' test.out

#- 399 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"factor": "rMiYbx7PAgRDjvMl", "mfaToken": "ucfBYt45H0PT7Fib"}' \
    > test.out 2>&1
eval_tap $? 399 'AdminDisableMyEmailV4' test.out

#- 400 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code '2sNjmYfyK4UiRcVP' \
    > test.out 2>&1
eval_tap $? 400 'AdminEnableMyEmailV4' test.out

#- 401 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 401 'AdminGetMyEnabledFactorsV4' test.out

#- 402 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'RAOAE6Yf74ge46sB' \
    > test.out 2>&1
eval_tap $? 402 'AdminMakeFactorMyDefaultV4' test.out

#- 403 AdminGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam adminGetMyOwnMFAStatusV4 \
    > test.out 2>&1
eval_tap $? 403 'AdminGetMyOwnMFAStatusV4' test.out

#- 404 AdminGetMyMFAStatusV4
eval_tap 0 404 'AdminGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 405 AdminInviteUserV4
eval_tap 0 405 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 406 AuthenticationWithPlatformLinkV4
samples/cli/sample-apps Iam authenticationWithPlatformLinkV4 \
    --extendExp 'true' \
    --clientId 'EKzewNoYI1M7gnRg' \
    --linkingToken 'Zq44BsKryggjXkTG' \
    --password 'Lt3HWI6NrwlJa2s5' \
    --username 'f1IFfUCAgr1avCXs' \
    > test.out 2>&1
eval_tap $? 406 'AuthenticationWithPlatformLinkV4' test.out

#- 407 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'QwHoIYfYGKr6lPWb' \
    --extendExp 'true' \
    --linkingToken '2FG0OwjPxwyOg2Aj' \
    > test.out 2>&1
eval_tap $? 407 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 408 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'Gni7sjRGAhOImIsY' \
    --factor '8sVCSeMZHlXEwxfR' \
    --mfaToken 'pDVFljjRgtVxF8J7' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 408 'Verify2faCodeV4' test.out

#- 409 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'yd85FEAdwhDGOIfB' \
    --codeChallenge 'jDAtCDRtEQZhzulF' \
    --codeChallengeMethod 'plain' \
    --additionalData 'cKG1n4iyqq6qEttD' \
    --clientId 'AG0NnzABV6rFpfuc' \
    --createHeadless 'false' \
    --deviceId 'esIkxIPClPUktFmE' \
    --macAddress '2Gn1haQdgdEwHbA9' \
    --platformToken 'j8FEG9iUzrzgQ8A0' \
    --serviceLabel '0.39261607796503883' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 409 'PlatformTokenGrantV4' test.out

#- 410 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'W7JG1c0Non0VJ0Qh' \
    --codeChallengeMethod 'plain' \
    --simultaneousPlatform 'YiYxXniU4kWp3PnU' \
    --simultaneousTicket 'ic2cnpnnZGBLEfsS' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket 'ctZSfIZpATHnKN2k' \
    > test.out 2>&1
eval_tap $? 410 'SimultaneousLoginV4' test.out

#- 411 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge 'VeLGjB3oYZDHzeZe' \
    --codeChallengeMethod 'plain' \
    --additionalData '6K4apc2gnD7NvODP' \
    --clientId 'ozzD6q9wtXNocQMq' \
    --clientSecret '7EtlU177KGbZPEg7' \
    --code 'As7IvNnJrhVQBL9f' \
    --codeVerifier 'pD3c8P5ZrYv1CR59' \
    --extendNamespace 'Gk227ttNDO57xzJH' \
    --extendExp 'true' \
    --loginQueueTicket '9z1NjVMLBGGq9OaM' \
    --password '7gwV2a2GbQZjfGxm' \
    --redirectUri 'pMeska7tMNXlNEoK' \
    --refreshToken 'blL5ksPrCw2e9HsW' \
    --scope 'cT5BgwbzPsAm6PRB' \
    --username 'hlCKYmqKeRucRgC4' \
    --grantType 'refresh_token' \
    > test.out 2>&1
eval_tap $? 411 'TokenGrantV4' test.out

#- 412 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData '7RdDLYAm8GuWBhwv' \
    --code '5W4MuujtFDwMP60l' \
    > test.out 2>&1
eval_tap $? 412 'RequestTargetTokenResponseV4' test.out

#- 413 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId '4XnPV41FjZIEO3NN' \
    --rawPUID 'true' \
    --body '{"pidType": "YRQcsrsTWbNb0Lwk", "platformUserIds": ["GfGuDWkinkkOwI94", "i9KpwOzhF2yMj3LN", "c2gwy3efYl2bphT6"]}' \
    > test.out 2>&1
eval_tap $? 413 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 414 PublicGetUserByPlatformUserIDV4
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'NC7EKn1qzNPlAn1H' \
    --platformUserId 'MghNP5RQcBEQZrLO' \
    > test.out 2>&1
eval_tap $? 414 'PublicGetUserByPlatformUserIDV4' test.out

#- 415 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "ng91Mr8uzCYLm1P6", "policyId": "L5he0iq66OZzf4cG", "policyVersionId": "esL9AqR4atvGUgoP"}, {"isAccepted": false, "localizedPolicyVersionId": "FzB4ZvuTielKfeR7", "policyId": "EdgdZt6pAIGnqQ5K", "policyVersionId": "R9IhK3lTvkoYTBYD"}, {"isAccepted": true, "localizedPolicyVersionId": "Hk3armM4nZQngCle", "policyId": "lABF4lhUFYVEq61c", "policyVersionId": "PHB8lC4pwoDiYd90"}], "authType": "EMAILPASSWD", "country": "hxthR6o40oCvyibQ", "dateOfBirth": "zZ3DxSXDZf6CGpUk", "displayName": "JdmfhteHCaviTlAr", "emailAddress": "eL6eInvy22wh9uY2", "password": "myP70iQXTWbZRXWE", "passwordMD5Sum": "71yyWDsQlvokiMnD", "uniqueDisplayName": "D4QufaqHGnW0pEQ9", "username": "DSDXTF7nIdxpxqcy", "verified": true}' \
    > test.out 2>&1
eval_tap $? 415 'PublicCreateTestUserV4' test.out

#- 416 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "Iz7fB0CqXB7tKnPD", "policyId": "syY63Gx7073vA3SL", "policyVersionId": "Wg27wUuUeTYIjiOD"}, {"isAccepted": false, "localizedPolicyVersionId": "8Ui1E6bplcjewY6y", "policyId": "onjYI8q6CBt0KMxN", "policyVersionId": "NkZ9PV76ZPsGqJi9"}, {"isAccepted": true, "localizedPolicyVersionId": "Xb4IZLMiKS7RWDq8", "policyId": "9rHB58ge2WaPSiPL", "policyVersionId": "WaSPny1G9aCvQG5C"}], "authType": "EMAILPASSWD", "code": "tlwF0iY08xyvJlf3", "country": "JE8sjlLkHHNLmeyN", "dateOfBirth": "LuQMexsoBQamLTjF", "displayName": "SXbvbbgsmQSp4c9G", "emailAddress": "RzyyYtE1UTgYsQTo", "password": "EPNQhtiRRVMNd3y6", "passwordMD5Sum": "rmLnf044ChZPAnry", "reachMinimumAge": true, "uniqueDisplayName": "sRFIeZQTenUyAe9z", "username": "vfT271h4k3jKsmtg"}' \
    > test.out 2>&1
eval_tap $? 416 'PublicCreateUserV4' test.out

#- 417 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'PS2lplgyyohsjjsv' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "7jemkleZPEQS0Nbs", "policyId": "4xdiuab6DqAlFifD", "policyVersionId": "VETx6t5txUq6FKBa"}, {"isAccepted": true, "localizedPolicyVersionId": "w4JQ7LCyFmLCt97z", "policyId": "tq8pnLtiws2ewX54", "policyVersionId": "eaSwMI1R4K20FVi2"}, {"isAccepted": true, "localizedPolicyVersionId": "TVrqO3zNBRWeAhft", "policyId": "KLYzfCkcdBu9DWxy", "policyVersionId": "V05MkEzeDSHzLJVg"}], "authType": "EMAILPASSWD", "code": "GaVp22r7X28tDuB8", "country": "kmhwn0hB79D5I0pR", "dateOfBirth": "S4fd4H02qdFBSPcp", "displayName": "EHRr0H4WIDVLuXCt", "emailAddress": "cPq4Gbj7RdoDBX2Q", "password": "Kdq7UKXyYFf6XyQm", "passwordMD5Sum": "A2dw9yFSPuOcuC0I", "reachMinimumAge": true, "uniqueDisplayName": "eTGx66Gla82byB8E", "username": "d9rp84hQ5830FUmH"}' \
    > test.out 2>&1
eval_tap $? 417 'CreateUserFromInvitationV4' test.out

#- 418 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "bkdb4p2jwcwrYGc5", "country": "rEZIEE74NOhsBQ50", "dateOfBirth": "YqkDDeGaA32XTbrF", "displayName": "gFhOT0CuK2K14jQI", "languageTag": "uNAw5FgaRBQgdAg3", "uniqueDisplayName": "uk9WRkXaJu7jpbUN", "userName": "Y1OKmGOxhtooegHa"}' \
    > test.out 2>&1
eval_tap $? 418 'PublicUpdateUserV4' test.out

#- 419 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "YwYF1njKJJbtmLXn", "emailAddress": "u5meHzGakKwTHq6x"}' \
    > test.out 2>&1
eval_tap $? 419 'PublicUpdateUserEmailAddressV4' test.out

#- 420 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "sF3rzVLpESF8WrtO", "country": "tSPfU58I5GlFCYuQ", "dateOfBirth": "l4oMObc5tMrpa9T0", "displayName": "u5TQmyzFv2Pdo05w", "emailAddress": "sFKS6cV7Ze5yvamp", "password": "NTz12arYUcQfKiNo", "reachMinimumAge": false, "uniqueDisplayName": "dJPvupej6mAksodA", "username": "1yNbimNO4o8L6Vlg", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 420 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 421 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"dateOfBirth": "2C9gw6aa4r6yiONN", "displayName": "vC8Mdw2KPiqVZ3h4", "emailAddress": "aLKn7d2VxGvHRBhk", "password": "zzACDWVYK6adQEJo", "uniqueDisplayName": "lydcCfLPn6Wd7Nqj", "username": "Nw9y7VI5HypFgKHt"}' \
    > test.out 2>&1
eval_tap $? 421 'PublicUpgradeHeadlessAccountV4' test.out

#- 422 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "Q1cSI5Z8jLSMVLqN", "mfaToken": "xMK18Qb4MF4P8CHI"}' \
    > test.out 2>&1
eval_tap $? 422 'PublicDisableMyAuthenticatorV4' test.out

#- 423 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'EBSgiYdDC10VzhHy' \
    > test.out 2>&1
eval_tap $? 423 'PublicEnableMyAuthenticatorV4' test.out

#- 424 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 424 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 425 PublicGetMyBackupCodesV4
eval_tap 0 425 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 426 PublicGenerateMyBackupCodesV4
eval_tap 0 426 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 427 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "q9sP4IEuyWvQd6jk", "mfaToken": "iiSPwhDK3yt4sXHS"}' \
    > test.out 2>&1
eval_tap $? 427 'PublicDisableMyBackupCodesV4' test.out

#- 428 PublicDownloadMyBackupCodesV4
eval_tap 0 428 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 429 PublicEnableMyBackupCodesV4
eval_tap 0 429 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 430 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'gugbYoCYggzr7cyT' \
    > test.out 2>&1
eval_tap $? 430 'PublicGetBackupCodesV4' test.out

#- 431 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'TokTo7F87QHaTJlT' \
    > test.out 2>&1
eval_tap $? 431 'PublicGenerateBackupCodesV4' test.out

#- 432 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'aAk3E3g7jAZhk4vu' \
    > test.out 2>&1
eval_tap $? 432 'PublicEnableBackupCodesV4' test.out

#- 433 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code 'MgRVI3ds1jrFWMzN' \
    --factor '8ldemeWM0b2el8Uq' \
    > test.out 2>&1
eval_tap $? 433 'PublicChallengeMyMFAV4' test.out

#- 434 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 434 'PublicRemoveTrustedDeviceV4' test.out

#- 435 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    --action 'gazW2hJu1lGlYLqi' \
    --languageTag 'oLqNBlzCHQwheCBr' \
    > test.out 2>&1
eval_tap $? 435 'PublicSendMyMFAEmailCodeV4' test.out

#- 436 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "mNXm9KXkUEN0HLGP", "mfaToken": "C9YFcWjlNCZtmIah"}' \
    > test.out 2>&1
eval_tap $? 436 'PublicDisableMyEmailV4' test.out

#- 437 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'Wk1Ac9hSkP1ZDT3A' \
    > test.out 2>&1
eval_tap $? 437 'PublicEnableMyEmailV4' test.out

#- 438 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 438 'PublicGetMyEnabledFactorsV4' test.out

#- 439 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'nwtjGEjR0i6z1mMN' \
    > test.out 2>&1
eval_tap $? 439 'PublicMakeFactorMyDefaultV4' test.out

#- 440 PublicGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam publicGetMyOwnMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 440 'PublicGetMyOwnMFAStatusV4' test.out

#- 441 PublicGetMyMFAStatusV4
eval_tap 0 441 'PublicGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 442 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'SkuHG6WMpES1ZP4g' \
    > test.out 2>&1
eval_tap $? 442 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 443 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "KJNlTYVEUlpFT0Ga", "emailAddress": "xj9R1AIR9MSpZcMk", "languageTag": "816m1zhNxRcB9m5W", "namespace": "4UX3ne50lGqDd2IM", "namespaceDisplayName": "WS9wlH9IaCPQ49Na"}' \
    > test.out 2>&1
eval_tap $? 443 'PublicInviteUserV4' test.out

#- 444 PublicUpgradeHeadlessWithCodeV4Forward
samples/cli/sample-apps Iam publicUpgradeHeadlessWithCodeV4Forward \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "XG7GdEcyp3OKi4Ez", "policyId": "JOd5C1ZfeJrnRFAq", "policyVersionId": "TUUidA2bCq6w4EZN"}, {"isAccepted": false, "localizedPolicyVersionId": "EwfuWVLIQMuLLMb8", "policyId": "3O8T630qThx91Kq3", "policyVersionId": "lNPfZKJbbk8zknmE"}, {"isAccepted": true, "localizedPolicyVersionId": "uNPHOYSYA9vlKFHL", "policyId": "uZvXdSxZzjSWcXp7", "policyVersionId": "2DEKAL7HhmT5G8tg"}], "code": "tFwSNe9S0VSJiJrm", "country": "pk6zfDf2w0EIK6hy", "dateOfBirth": "ihqroXGlEltt9pyh", "displayName": "BJwIouc4VlD7rtur", "emailAddress": "m33Gtzkl7jKQodNR", "password": "udFwhg6yAFuhQpCP", "reachMinimumAge": true, "uniqueDisplayName": "Sf1Tkvirsy0NwTrZ", "username": "mKuk9NXMd8VYXUBy", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 444 'PublicUpgradeHeadlessWithCodeV4Forward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE