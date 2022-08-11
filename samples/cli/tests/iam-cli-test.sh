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
echo "1..307"

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
samples/cli/sample-apps Iam createUser \
    --namespace $AB_NAMESPACE \
    --body '{"AuthType": "j5MWuw2E", "Country": "HuwT5bKK", "DisplayName": "0EB5YO0i", "LoginId": "183bX2eO", "Password": "oX7mbDMC", "PasswordMD5Sum": "JYodQBIR"}' \
    > test.out 2>&1
eval_tap $? 16 'CreateUser' test.out

#- 17 GetAdminUsersByRoleID
samples/cli/sample-apps Iam getAdminUsersByRoleID \
    --namespace $AB_NAMESPACE \
    --after '84' \
    --before '65' \
    --limit '60' \
    --roleId 'oRsj1f40' \
    > test.out 2>&1
eval_tap $? 17 'GetAdminUsersByRoleID' test.out

#- 18 GetUserByLoginID
samples/cli/sample-apps Iam getUserByLoginID \
    --namespace $AB_NAMESPACE \
    --loginId '1HR3pJYD' \
    > test.out 2>&1
eval_tap $? 18 'GetUserByLoginID' test.out

#- 19 GetUserByPlatformUserID
samples/cli/sample-apps Iam getUserByPlatformUserID \
    --namespace $AB_NAMESPACE \
    --platformID 'EZnsJ4bI' \
    --platformUserID 'Rv4dfBXn' \
    > test.out 2>&1
eval_tap $? 19 'GetUserByPlatformUserID' test.out

#- 20 ForgotPassword
samples/cli/sample-apps Iam forgotPassword \
    --namespace $AB_NAMESPACE \
    --body '{"Context": "IvReqT04", "LanguageTag": "BV17j7xl", "LoginID": "0vC4bDMO"}' \
    > test.out 2>&1
eval_tap $? 20 'ForgotPassword' test.out

#- 21 GetUsersByLoginIds
samples/cli/sample-apps Iam getUsersByLoginIds \
    --namespace $AB_NAMESPACE \
    --loginIds 'ZNIf5a7K' \
    > test.out 2>&1
eval_tap $? 21 'GetUsersByLoginIds' test.out

#- 22 ResetPassword
samples/cli/sample-apps Iam resetPassword \
    --namespace $AB_NAMESPACE \
    --body '{"Code": "o0KulhNs", "LoginID": "I1wCdl91", "NewPassword": "fv2lUmKD"}' \
    > test.out 2>&1
eval_tap $? 22 'ResetPassword' test.out

#- 23 SearchUser
eval_tap 0 23 'SearchUser # SKIP deprecated' test.out

#- 24 GetUserByUserID
samples/cli/sample-apps Iam getUserByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'v4uqo1dC' \
    > test.out 2>&1
eval_tap $? 24 'GetUserByUserID' test.out

#- 25 UpdateUser
samples/cli/sample-apps Iam updateUser \
    --namespace $AB_NAMESPACE \
    --userId 'P7FbcPEw' \
    --body '{"Country": "8KFoFegu", "DateOfBirth": "hPZxgKv4", "DisplayName": "JmORZAVV", "LanguageTag": "Er10XvUB"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdateUser' test.out

#- 26 DeleteUser
samples/cli/sample-apps Iam deleteUser \
    --namespace $AB_NAMESPACE \
    --userId 'XdJ1jKVb' \
    > test.out 2>&1
eval_tap $? 26 'DeleteUser' test.out

#- 27 BanUser
samples/cli/sample-apps Iam banUser \
    --namespace $AB_NAMESPACE \
    --userId 'rGKEIdyR' \
    --body '{"ban": "c8s9qImX", "comment": "AY6S3snu", "endDate": "h5l2cHik", "reason": "8GYLa4n6", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 27 'BanUser' test.out

#- 28 GetUserBanHistory
samples/cli/sample-apps Iam getUserBanHistory \
    --namespace $AB_NAMESPACE \
    --userId 'vXk8vzxr' \
    > test.out 2>&1
eval_tap $? 28 'GetUserBanHistory' test.out

#- 29 DisableUserBan
samples/cli/sample-apps Iam disableUserBan \
    --banId 'ldC7jdjc' \
    --namespace $AB_NAMESPACE \
    --userId '3dl9vQ7c' \
    > test.out 2>&1
eval_tap $? 29 'DisableUserBan' test.out

#- 30 EnableUserBan
samples/cli/sample-apps Iam enableUserBan \
    --banId '9ldvtkL1' \
    --namespace $AB_NAMESPACE \
    --userId 'YeDTUHz9' \
    > test.out 2>&1
eval_tap $? 30 'EnableUserBan' test.out

#- 31 ListCrossNamespaceAccountLink
eval_tap 0 31 'ListCrossNamespaceAccountLink # SKIP deprecated' test.out

#- 32 DisableUser
eval_tap 0 32 'DisableUser # SKIP deprecated' test.out

#- 33 EnableUser
eval_tap 0 33 'EnableUser # SKIP deprecated' test.out

#- 34 GetUserInformation
samples/cli/sample-apps Iam getUserInformation \
    --namespace $AB_NAMESPACE \
    --userId 'zbfUdfSu' \
    > test.out 2>&1
eval_tap $? 34 'GetUserInformation' test.out

#- 35 DeleteUserInformation
samples/cli/sample-apps Iam deleteUserInformation \
    --namespace $AB_NAMESPACE \
    --userId 'nNVUCWqP' \
    > test.out 2>&1
eval_tap $? 35 'DeleteUserInformation' test.out

#- 36 GetUserLoginHistories
samples/cli/sample-apps Iam getUserLoginHistories \
    --namespace $AB_NAMESPACE \
    --userId 'aPuj8BWE' \
    --after '0.24425023673306379' \
    --before '0.4297698165080709' \
    --limit '4' \
    > test.out 2>&1
eval_tap $? 36 'GetUserLoginHistories' test.out

#- 37 UpdatePassword
eval_tap 0 37 'UpdatePassword # SKIP deprecated' test.out

#- 38 SaveUserPermission
samples/cli/sample-apps Iam saveUserPermission \
    --namespace $AB_NAMESPACE \
    --userId 'hTtYaNdb' \
    --body '{"Permissions": [{"Action": 13, "Resource": "WwRJy5W9", "SchedAction": 93, "SchedCron": "mWfv0Zu9", "SchedRange": ["NuG3yR9z", "dbH2cwnd", "SJMCvy5x"]}, {"Action": 49, "Resource": "JJwc23SF", "SchedAction": 84, "SchedCron": "3lqYZAq3", "SchedRange": ["dpqkMyee", "8EA5Lc7V", "XzOs7v4Q"]}, {"Action": 1, "Resource": "j2KcEbck", "SchedAction": 77, "SchedCron": "j0U4kOem", "SchedRange": ["GAyKVVPX", "XNFgCh0t", "eXfAmEVz"]}]}' \
    > test.out 2>&1
eval_tap $? 38 'SaveUserPermission' test.out

#- 39 AddUserPermission
samples/cli/sample-apps Iam addUserPermission \
    --action '61' \
    --namespace $AB_NAMESPACE \
    --resource 'rfgwNwoF' \
    --userId 'BRFGTiQM' \
    --body '{"SchedAction": 30, "SchedCron": "EZEaM29X", "SchedRange": ["nw2mrMS2", "MYxMQlqN", "nwLMWHQt"]}' \
    > test.out 2>&1
eval_tap $? 39 'AddUserPermission' test.out

#- 40 DeleteUserPermission
samples/cli/sample-apps Iam deleteUserPermission \
    --action '25' \
    --namespace $AB_NAMESPACE \
    --resource 'aJkQCEo9' \
    --userId 'vKUdqvAk' \
    > test.out 2>&1
eval_tap $? 40 'DeleteUserPermission' test.out

#- 41 GetUserPlatformAccounts
samples/cli/sample-apps Iam getUserPlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'GOHeCQeU' \
    > test.out 2>&1
eval_tap $? 41 'GetUserPlatformAccounts' test.out

#- 42 GetUserMapping
samples/cli/sample-apps Iam getUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'ZAF8JTKF' \
    --userId 'DHB4f6Es' \
    > test.out 2>&1
eval_tap $? 42 'GetUserMapping' test.out

#- 43 GetUserJusticePlatformAccount
eval_tap 0 43 'GetUserJusticePlatformAccount # SKIP deprecated' test.out

#- 44 PlatformLink
samples/cli/sample-apps Iam platformLink \
    --namespace $AB_NAMESPACE \
    --platformId 'Ma3UQ19v' \
    --userId 'cvJa5svL' \
    --ticket 'J52DOrfo' \
    > test.out 2>&1
eval_tap $? 44 'PlatformLink' test.out

#- 45 PlatformUnlink
samples/cli/sample-apps Iam platformUnlink \
    --namespace $AB_NAMESPACE \
    --platformId 'YRnGhhxs' \
    --userId 'WD0UgNTX' \
    --platformNamespace '8h6N7Dwb' \
    > test.out 2>&1
eval_tap $? 45 'PlatformUnlink' test.out

#- 46 GetPublisherUser
samples/cli/sample-apps Iam getPublisherUser \
    --namespace $AB_NAMESPACE \
    --userId 'onks9EIJ' \
    > test.out 2>&1
eval_tap $? 46 'GetPublisherUser' test.out

#- 47 SaveUserRoles
samples/cli/sample-apps Iam saveUserRoles \
    --namespace $AB_NAMESPACE \
    --userId '4hWnRhBK' \
    --body '["vaqBNLY8", "QloNr3cm", "miaMGV5v"]' \
    > test.out 2>&1
eval_tap $? 47 'SaveUserRoles' test.out

#- 48 AddUserRole
samples/cli/sample-apps Iam addUserRole \
    --namespace $AB_NAMESPACE \
    --roleId 'p3xkr8Ox' \
    --userId 'wkJvkasF' \
    > test.out 2>&1
eval_tap $? 48 'AddUserRole' test.out

#- 49 DeleteUserRole
samples/cli/sample-apps Iam deleteUserRole \
    --namespace $AB_NAMESPACE \
    --roleId '1H98EoBl' \
    --userId '5EDv1ePc' \
    > test.out 2>&1
eval_tap $? 49 'DeleteUserRole' test.out

#- 50 UpgradeHeadlessAccount
samples/cli/sample-apps Iam upgradeHeadlessAccount \
    --namespace $AB_NAMESPACE \
    --userId 'rEAHJNZt' \
    --body '{"LoginID": "nn1TGADt", "Password": "G0fEFnEb"}' \
    > test.out 2>&1
eval_tap $? 50 'UpgradeHeadlessAccount' test.out

#- 51 UpgradeHeadlessAccountWithVerificationCode
samples/cli/sample-apps Iam upgradeHeadlessAccountWithVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'e9oL1uHt' \
    --body '{"Code": "R0f59WTr", "Password": "x51UJQXz", "loginId": "NdBIqx2U"}' \
    > test.out 2>&1
eval_tap $? 51 'UpgradeHeadlessAccountWithVerificationCode' test.out

#- 52 UserVerification
samples/cli/sample-apps Iam userVerification \
    --namespace $AB_NAMESPACE \
    --userId 'V5Ts2Npc' \
    --body '{"Code": "jV6O22CS", "ContactType": "WljB8LsT", "LanguageTag": "PJBYP4yM", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 52 'UserVerification' test.out

#- 53 SendVerificationCode
samples/cli/sample-apps Iam sendVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'fHZhhGCh' \
    --body '{"Context": "A8KF42CZ", "LanguageTag": "65d8Eohy", "LoginID": "5yMgI0S0"}' \
    > test.out 2>&1
eval_tap $? 53 'SendVerificationCode' test.out

#- 54 Authorization
samples/cli/sample-apps Iam authorization \
    --login 'neyAKGJ5' \
    --password 'wDF0QO7t' \
    --scope 'ji912BoI' \
    --state '07d0Voov' \
    --clientId '5gT9hy92' \
    --redirectUri 'F0pfLBkH' \
    --responseType 'token' \
    > test.out 2>&1
eval_tap $? 54 'Authorization' test.out

#- 55 GetJWKS
samples/cli/sample-apps Iam getJWKS \
    > test.out 2>&1
eval_tap $? 55 'GetJWKS' test.out

#- 56 PlatformTokenRequestHandler
samples/cli/sample-apps Iam platformTokenRequestHandler \
    --namespace $AB_NAMESPACE \
    --platformId 'xKZERRbS' \
    --deviceId 'bNUoNAbT' \
    --platformToken 'wVRaHUsL' \
    > test.out 2>&1
eval_tap $? 56 'PlatformTokenRequestHandler' test.out

#- 57 RevokeUser
samples/cli/sample-apps Iam revokeUser \
    --namespace $AB_NAMESPACE \
    --userId 'YGAPp6HN' \
    > test.out 2>&1
eval_tap $? 57 'RevokeUser' test.out

#- 58 GetRevocationList
samples/cli/sample-apps Iam getRevocationList \
    > test.out 2>&1
eval_tap $? 58 'GetRevocationList' test.out

#- 59 RevokeToken
samples/cli/sample-apps Iam revokeToken \
    --token 'QIfGPGZw' \
    > test.out 2>&1
eval_tap $? 59 'RevokeToken' test.out

#- 60 RevokeAUser
samples/cli/sample-apps Iam revokeAUser \
    --userID 'aDIpn0X0' \
    > test.out 2>&1
eval_tap $? 60 'RevokeAUser' test.out

#- 61 TokenGrant
samples/cli/sample-apps Iam tokenGrant \
    --code 'nd1mOorc' \
    --extendExp 'false' \
    --namespace 'atG0D67B' \
    --password 'odQPtBEE' \
    --redirectUri '3F16oo0H' \
    --refreshToken 'uTU54NYs' \
    --username 'T0Z8Q9sP' \
    --grantType 'refresh_token' \
    > test.out 2>&1
eval_tap $? 61 'TokenGrant' test.out

#- 62 VerifyToken
samples/cli/sample-apps Iam verifyToken \
    --token 'KDUypnWV' \
    > test.out 2>&1
eval_tap $? 62 'VerifyToken' test.out

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
samples/cli/sample-apps Iam adminGetAgeRestrictionStatusV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 80 'AdminGetAgeRestrictionStatusV2' test.out

#- 81 AdminUpdateAgeRestrictionConfigV2
samples/cli/sample-apps Iam adminUpdateAgeRestrictionConfigV2 \
    --namespace $AB_NAMESPACE \
    --body '{"AgeRestriction": 93, "Enable": false}' \
    > test.out 2>&1
eval_tap $? 81 'AdminUpdateAgeRestrictionConfigV2' test.out

#- 82 GetListCountryAgeRestriction
samples/cli/sample-apps Iam getListCountryAgeRestriction \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 82 'GetListCountryAgeRestriction' test.out

#- 83 UpdateCountryAgeRestriction
samples/cli/sample-apps Iam updateCountryAgeRestriction \
    --countryCode 'WbdNlsa9' \
    --namespace $AB_NAMESPACE \
    --body '{"AgeRestriction": 91}' \
    > test.out 2>&1
eval_tap $? 83 'UpdateCountryAgeRestriction' test.out

#- 84 AdminSearchUsersV2
samples/cli/sample-apps Iam adminSearchUsersV2 \
    --namespace $AB_NAMESPACE \
    --after 'Zpimiylw' \
    --before 'OqMKl67m' \
    --displayName 'YxfQieEB' \
    --limit '66' \
    --loginId 'L59b4nqK' \
    --platformUserId 'SpkhBxCf' \
    --roleId 'mBp1vCDD' \
    --userId 'U2KIJOLV' \
    --platformId 'hozhgYJH' \
    > test.out 2>&1
eval_tap $? 84 'AdminSearchUsersV2' test.out

#- 85 AdminGetUserByUserIdV2
samples/cli/sample-apps Iam adminGetUserByUserIdV2 \
    --namespace $AB_NAMESPACE \
    --userId '9Tuj3dhz' \
    > test.out 2>&1
eval_tap $? 85 'AdminGetUserByUserIdV2' test.out

#- 86 AdminUpdateUserV2
samples/cli/sample-apps Iam adminUpdateUserV2 \
    --namespace $AB_NAMESPACE \
    --userId 'PiKHkz29' \
    --body '{"Country": "FOd6mFzZ", "DateOfBirth": "j0NaSjUa", "DisplayName": "V9gHHLit", "LanguageTag": "F1NCZpNf"}' \
    > test.out 2>&1
eval_tap $? 86 'AdminUpdateUserV2' test.out

#- 87 AdminBanUserV2
samples/cli/sample-apps Iam adminBanUserV2 \
    --namespace $AB_NAMESPACE \
    --userId 'HWGBTNIw' \
    --body '{"ban": "AmmMtWIq", "comment": "AiaasRty", "endDate": "SsucDL1t", "reason": "2mW9QoLK", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 87 'AdminBanUserV2' test.out

#- 88 AdminGetUserBanV2
samples/cli/sample-apps Iam adminGetUserBanV2 \
    --namespace $AB_NAMESPACE \
    --userId 'tyQaRwTT' \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 88 'AdminGetUserBanV2' test.out

#- 89 AdminDisableUserV2
samples/cli/sample-apps Iam adminDisableUserV2 \
    --namespace $AB_NAMESPACE \
    --userId 'NBztNBZb' \
    --body '{"Reason": "daY0sAJr"}' \
    > test.out 2>&1
eval_tap $? 89 'AdminDisableUserV2' test.out

#- 90 AdminEnableUserV2
samples/cli/sample-apps Iam adminEnableUserV2 \
    --namespace $AB_NAMESPACE \
    --userId 'aY4Bw0aB' \
    > test.out 2>&1
eval_tap $? 90 'AdminEnableUserV2' test.out

#- 91 AdminResetPasswordV2
samples/cli/sample-apps Iam adminResetPasswordV2 \
    --namespace $AB_NAMESPACE \
    --userId 'OMkURcCB' \
    --body '{"LanguageTag": "StK3w8wz", "NewPassword": "MKtUlGHF", "OldPassword": "WHkLE9Au"}' \
    > test.out 2>&1
eval_tap $? 91 'AdminResetPasswordV2' test.out

#- 92 AdminDeletePlatformLinkV2
samples/cli/sample-apps Iam adminDeletePlatformLinkV2 \
    --namespace $AB_NAMESPACE \
    --platformId 'S4RZbrKc' \
    --userId 'wxSCSN8e' \
    --platformNamespace 'CXYdiys2' \
    > test.out 2>&1
eval_tap $? 92 'AdminDeletePlatformLinkV2' test.out

#- 93 AdminPutUserRolesV2
samples/cli/sample-apps Iam adminPutUserRolesV2 \
    --namespace $AB_NAMESPACE \
    --userId 'XCL6rhse' \
    --body '["zm4j79SG", "eI3v0AFp", "lXRSSYn6"]' \
    > test.out 2>&1
eval_tap $? 93 'AdminPutUserRolesV2' test.out

#- 94 AdminCreateUserRolesV2
samples/cli/sample-apps Iam adminCreateUserRolesV2 \
    --namespace $AB_NAMESPACE \
    --userId 'jZOAvMHK' \
    --body '["7RqgcxMa", "ZLZPFBLe", "q8pf01m6"]' \
    > test.out 2>&1
eval_tap $? 94 'AdminCreateUserRolesV2' test.out

#- 95 PublicGetCountryAgeRestriction
samples/cli/sample-apps Iam publicGetCountryAgeRestriction \
    --countryCode 'fjUzZgPm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 95 'PublicGetCountryAgeRestriction' test.out

#- 96 PublicCreateUserV2
samples/cli/sample-apps Iam publicCreateUserV2 \
    --namespace $AB_NAMESPACE \
    --body '{"AuthType": "MpC4Sho8", "Country": "4pFOA7JO", "DisplayName": "DEVcXZ5s", "LoginId": "KCtLVhvP", "Password": "VFw4Z8Rl", "PasswordMD5Sum": "QWv1AUU0"}' \
    > test.out 2>&1
eval_tap $? 96 'PublicCreateUserV2' test.out

#- 97 PublicForgotPasswordV2
samples/cli/sample-apps Iam publicForgotPasswordV2 \
    --namespace $AB_NAMESPACE \
    --body '{"Context": "QoHAKmGj", "LanguageTag": "6EI8qpWO", "LoginID": "Kz5NWkY9"}' \
    > test.out 2>&1
eval_tap $? 97 'PublicForgotPasswordV2' test.out

#- 98 PublicResetPasswordV2
samples/cli/sample-apps Iam publicResetPasswordV2 \
    --namespace $AB_NAMESPACE \
    --body '{"Code": "tvO6ZI03", "LoginID": "ZzbdYeZP", "NewPassword": "Okk52262"}' \
    > test.out 2>&1
eval_tap $? 98 'PublicResetPasswordV2' test.out

#- 99 PublicGetUserByUserIDV2
samples/cli/sample-apps Iam publicGetUserByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'ejeRqpqO' \
    > test.out 2>&1
eval_tap $? 99 'PublicGetUserByUserIDV2' test.out

#- 100 PublicUpdateUserV2
samples/cli/sample-apps Iam publicUpdateUserV2 \
    --namespace $AB_NAMESPACE \
    --userId 'aboXbogf' \
    --body '{"Country": "YDo1eji0", "DateOfBirth": "YXo2kk9V", "DisplayName": "lZ7Bgbi5", "LanguageTag": "zJ75dFu0"}' \
    > test.out 2>&1
eval_tap $? 100 'PublicUpdateUserV2' test.out

#- 101 PublicGetUserBan
samples/cli/sample-apps Iam publicGetUserBan \
    --namespace $AB_NAMESPACE \
    --userId 'UN5dg6OK' \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 101 'PublicGetUserBan' test.out

#- 102 PublicUpdatePasswordV2
samples/cli/sample-apps Iam publicUpdatePasswordV2 \
    --namespace $AB_NAMESPACE \
    --userId 'sltr97GG' \
    --body '{"LanguageTag": "ndmHkTFv", "NewPassword": "h9wq9qMa", "OldPassword": "XW6E6T3v"}' \
    > test.out 2>&1
eval_tap $? 102 'PublicUpdatePasswordV2' test.out

#- 103 GetListJusticePlatformAccounts
samples/cli/sample-apps Iam getListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId '2DW0YGBJ' \
    > test.out 2>&1
eval_tap $? 103 'GetListJusticePlatformAccounts' test.out

#- 104 PublicPlatformLinkV2
samples/cli/sample-apps Iam publicPlatformLinkV2 \
    --namespace $AB_NAMESPACE \
    --platformId 'ByW7wX5Z' \
    --userId 'mmjgd9gI' \
    --ticket 'xqKXLVNv' \
    > test.out 2>&1
eval_tap $? 104 'PublicPlatformLinkV2' test.out

#- 105 PublicDeletePlatformLinkV2
samples/cli/sample-apps Iam publicDeletePlatformLinkV2 \
    --namespace $AB_NAMESPACE \
    --platformId 'R1aGAaNY' \
    --userId 'pTtSyETG' \
    --platformNamespace 'UCFska6u' \
    > test.out 2>&1
eval_tap $? 105 'PublicDeletePlatformLinkV2' test.out

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
    --body '[{"field": "OsruJUbl", "validation": {"allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "description": [{"language": "Zt37oB0g", "message": ["cNccukD2", "vwEa7QOe", "d80Q5ypG"]}, {"language": "HVeUDpVa", "message": ["Ydkip8ft", "F4Bin3WM", "UmnvlFRN"]}, {"language": "wD784EHZ", "message": ["gCShwJmA", "RNtfgezn", "ADo9z2ks"]}], "isCustomRegex": false, "letterCase": "hEplT1l0", "maxLength": 41, "maxRepeatingAlphaNum": 62, "maxRepeatingSpecialCharacter": 91, "minCharType": 0, "minLength": 18, "regex": "i0k9g622", "specialCharacterLocation": "dWDSzqtd", "specialCharacters": ["3Q5mnmAG", "u3XbOjoE", "8DtygUfs"]}}, {"field": "Aoo6uZvp", "validation": {"allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "description": [{"language": "dOr0kuQK", "message": ["K1yHuDp7", "TF9CxEeL", "4Egwlskp"]}, {"language": "hxVh62cT", "message": ["BJ1x1hUg", "Emn7FGWS", "hv9NWdfQ"]}, {"language": "RBpLWH7r", "message": ["dsND4DmU", "DxEwoJyL", "Pl7USYDB"]}], "isCustomRegex": false, "letterCase": "GedWdxrc", "maxLength": 30, "maxRepeatingAlphaNum": 99, "maxRepeatingSpecialCharacter": 29, "minCharType": 10, "minLength": 21, "regex": "fO4HWtCg", "specialCharacterLocation": "OIZWYLFu", "specialCharacters": ["FOdkNpcd", "w23iCZI5", "cowxT64N"]}}, {"field": "2LVYckd6", "validation": {"allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "description": [{"language": "j34jY1km", "message": ["gXaJlMiU", "3kOWSzrm", "izfkC3wL"]}, {"language": "jijoeIgS", "message": ["cqFziqVr", "sU9OEcp0", "zWZyagcL"]}, {"language": "K2OOeXK2", "message": ["Dn45Ww21", "Mm76jtfT", "I44sFQ59"]}], "isCustomRegex": true, "letterCase": "KTl4YIqL", "maxLength": 35, "maxRepeatingAlphaNum": 57, "maxRepeatingSpecialCharacter": 31, "minCharType": 95, "minLength": 99, "regex": "CkowdiSF", "specialCharacterLocation": "btGJweXZ", "specialCharacters": ["hf4Neuuh", "w6tY3aYb", "zZAGZQnO"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'tQ16mWnW' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'cEoRaZGh' \
    --before 'OdNX2GEN' \
    --limit '86' \
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
    --body '{"ageRestriction": 53, "enable": true}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'Wqd17fWV' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 72}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'gpqaVodg' \
    --limit '52' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminGetBansTypeWithNamespaceV3
samples/cli/sample-apps Iam adminGetBansTypeWithNamespaceV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 117 'AdminGetBansTypeWithNamespaceV3' test.out

#- 118 AdminGetClientsByNamespaceV3
samples/cli/sample-apps Iam adminGetClientsByNamespaceV3 \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 118 'AdminGetClientsByNamespaceV3' test.out

#- 119 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["nkBHKXCS", "TVFfuSEO", "2pdvDldx"], "baseUri": "QAOcvl2s", "clientId": "5n4qU7jx", "clientName": "OwXPYsyo", "clientPermissions": [{"action": 41, "resource": "y8SWWGzc", "schedAction": 17, "schedCron": "B4uA5s2h", "schedRange": ["hfdcEosg", "fZUXY7yh", "4X26Yxx6"]}, {"action": 14, "resource": "zZWSEiDg", "schedAction": 6, "schedCron": "RiXb1qrE", "schedRange": ["6y1mhfqU", "BVMIDMVE", "Oze39QYf"]}, {"action": 92, "resource": "7xxpJdNz", "schedAction": 48, "schedCron": "W6mzvQzX", "schedRange": ["ylQ5Gzku", "QH9K1bkW", "rx6veUm0"]}], "clientPlatform": "Ag76QLXz", "deletable": false, "namespace": "oB3lrdl5", "oauthClientType": "JVuybWW9", "redirectUri": "2GCkKVmb", "secret": "VJvcOMni"}' \
    > test.out 2>&1
eval_tap $? 119 'AdminCreateClientV3' test.out

#- 120 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId '77pcJlLL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 121 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'WzGeAgmC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 121 'AdminDeleteClientV3' test.out

#- 122 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'TqwVGkEa' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["TdFvKwce", "fu5NIqGI", "zW9YqvcK"], "baseUri": "uRZ6YapJ", "clientName": "smxxywuT", "clientPermissions": [{"action": 94, "resource": "KELN30v3", "schedAction": 13, "schedCron": "yyNNurcj", "schedRange": ["Bi5Qnnuw", "OzMVsj0T", "A6zeBt8R"]}, {"action": 5, "resource": "jRz4QlaY", "schedAction": 5, "schedCron": "xgfZ6Vbj", "schedRange": ["NeTyWQOI", "gIIGUbub", "do1I9JAR"]}, {"action": 45, "resource": "q3ckAuq8", "schedAction": 71, "schedCron": "ixWJNZ18", "schedRange": ["M6SckAPh", "9hjb0mUg", "rkcbZ3aH"]}], "clientPlatform": "nXu2xUdp", "deletable": true, "namespace": "BubTS4XF", "redirectUri": "aRExdttl"}' \
    > test.out 2>&1
eval_tap $? 122 'AdminUpdateClientV3' test.out

#- 123 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'BBd3VNsX' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 84, "resource": "W4OJONn8"}, {"action": 4, "resource": "At6I9tZh"}, {"action": 59, "resource": "m2LgN8ln"}]}' \
    > test.out 2>&1
eval_tap $? 123 'AdminUpdateClientPermissionV3' test.out

#- 124 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'ysL4RdpC' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 37, "resource": "zx4qmdkr"}, {"action": 49, "resource": "bLLFNDbc"}, {"action": 33, "resource": "cjgYC0v2"}]}' \
    > test.out 2>&1
eval_tap $? 124 'AdminAddClientPermissionsV3' test.out

#- 125 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '43' \
    --clientId 'TIkInMNh' \
    --namespace $AB_NAMESPACE \
    --resource 'Eupqt52v' \
    > test.out 2>&1
eval_tap $? 125 'AdminDeleteClientPermissionV3' test.out

#- 126 RetrieveAllThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 126 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 127 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 128 RetrieveAllSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 128 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 129 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'qRdhtf1B' \
    > test.out 2>&1
eval_tap $? 129 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 130 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9KXk3Upv' \
    --body '{"ACSURL": "YyzzQ9xf", "AWSCognitoRegion": "GOKajh4P", "AWSCognitoUserPool": "EATBWgKT", "AllowedClients": ["dOyAy1Uw", "sHTCKqjQ", "2WXKjJlo"], "AppId": "sBc3ryVF", "AuthorizationEndpoint": "Gf0SsCDv", "ClientId": "jQyqrBdX", "Environment": "AmjvETCT", "FederationMetadataURL": "Wtt4dBe1", "GenericOauthFlow": false, "IsActive": true, "Issuer": "623QM815", "JWKSEndpoint": "7nMU7qa5", "KeyID": "H67igXnx", "NetflixCertificates": {"encryptedPrivateKey": "X2oNJOTz", "encryptedPrivateKeyName": "CpJn2E2U", "publicCertificate": "7LbDPCFL", "publicCertificateName": "AbisBuWc", "rootCertificate": "MXbc3jX7", "rootCertificateName": "v5mePr97"}, "OrganizationId": "EY8jOQgb", "PlatformName": "jGjvpoRh", "RedirectUri": "c2FBMRHc", "RegisteredDomains": [{"affectedClientIDs": ["pHyzbVQj", "qzxVydqS", "RyJ13NSF"], "domain": "LCH2Jnu5", "namespaces": ["3EpeWifH", "t9aLbRbu", "u13iQreO"], "roleId": "3n7NzwM9"}, {"affectedClientIDs": ["AN6fQg7R", "pfFPkoLK", "0hBb757p"], "domain": "o7TgdJko", "namespaces": ["GRNF0QPo", "iNmubaId", "Bp8aG0Cv"], "roleId": "ZhTnJ24w"}, {"affectedClientIDs": ["AH8wevjy", "EzgAhIeY", "ssG5HiuE"], "domain": "fEh3IKkR", "namespaces": ["de5KniFs", "PdU9v6qI", "94lTlopp"], "roleId": "ZIbtrp3M"}], "Secret": "Iis6WSZg", "TeamID": "gDdiOSg0", "TokenAuthenticationType": "H54a9i1m", "TokenClaimsMapping": {"LXX3Cp11": "uouHtkA6", "3PSJ0jg8": "lL15Q46Z", "KcYg5mQd": "LkKiCsui"}, "TokenEndpoint": "09hO3boQ"}' \
    > test.out 2>&1
eval_tap $? 130 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 131 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'BTTAKxBN' \
    > test.out 2>&1
eval_tap $? 131 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 132 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'UEX1JGem' \
    --body '{"ACSURL": "uoIA89mp", "AWSCognitoRegion": "l4ITvUw1", "AWSCognitoUserPool": "eCprhC9R", "AllowedClients": ["G5d2oSEw", "luHUgn3J", "zeNdxh5B"], "AppId": "qZ2sPYF7", "AuthorizationEndpoint": "BMQxpOVD", "ClientId": "DWUASV0i", "Environment": "Y6wvthMm", "FederationMetadataURL": "jaleQSnQ", "GenericOauthFlow": false, "IsActive": false, "Issuer": "x7oHBUrC", "JWKSEndpoint": "LhIc3Sfy", "KeyID": "vSLv3F6d", "NetflixCertificates": {"encryptedPrivateKey": "mBfzAL0O", "encryptedPrivateKeyName": "Y4ZFvInt", "publicCertificate": "hEfNfLZc", "publicCertificateName": "HDG34ZsY", "rootCertificate": "gmJm2w2U", "rootCertificateName": "UNs1r2FV"}, "OrganizationId": "nVQeTkb0", "PlatformName": "yfklqSgP", "RedirectUri": "UH1mvM94", "RegisteredDomains": [{"affectedClientIDs": ["qKp4mxfU", "G3lUnm2Z", "x6pW7dJB"], "domain": "KIa42gAX", "namespaces": ["6UhsYguU", "YZDRpqZj", "OrLN1fzf"], "roleId": "BhwWhKH3"}, {"affectedClientIDs": ["P4q0yJfr", "4WLxxTf4", "8IPGfvdR"], "domain": "xHPGRbAo", "namespaces": ["DwlHMJoa", "d7N9VsV4", "05TURhNt"], "roleId": "CqnbEl8X"}, {"affectedClientIDs": ["eiDxXVgl", "EC2nNsZR", "8ZYyeBYY"], "domain": "X8LZL3ib", "namespaces": ["fiG1LYPK", "aD7A43ny", "xVSaN4yz"], "roleId": "XOTEtROL"}], "Secret": "uQ2MdcpK", "TeamID": "3P8nlScZ", "TokenAuthenticationType": "ni9iUsxZ", "TokenClaimsMapping": {"2dHK2wI1": "pBLpllEw", "Zd01wCbl": "PCJX9W4q", "fyBAAPjG": "0ZVAkIxU"}, "TokenEndpoint": "wZfAv3dW"}' \
    > test.out 2>&1
eval_tap $? 132 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 133 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId '5UD3kAzJ' \
    --body '{"affectedClientIDs": ["iH3W9gHn", "DYU3jWsr", "GijZ43In"], "assignedNamespaces": ["6eTdivSe", "S5mIG4ac", "L4FoBf43"], "domain": "sIh1Mrfh", "roleId": "zi63iUeP"}' \
    > test.out 2>&1
eval_tap $? 133 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 134 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'VconVDv0' \
    --body '{"domain": "rqxh9jQz"}' \
    > test.out 2>&1
eval_tap $? 134 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 135 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'T1qMb3Ve' \
    > test.out 2>&1
eval_tap $? 135 'RetrieveSSOLoginPlatformCredential' test.out

#- 136 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'R96B2pEX' \
    --body '{"acsUrl": "RqjSveEc", "apiKey": "GnHbzkk6", "appId": "R3Df0SlM", "federationMetadataUrl": "fBrJB5Ew", "isActive": true, "redirectUri": "37lECRWc", "secret": "412j0P2c", "ssoUrl": "NEu2pqUt"}' \
    > test.out 2>&1
eval_tap $? 136 'AddSSOLoginPlatformCredential' test.out

#- 137 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '3I0J9lZy' \
    > test.out 2>&1
eval_tap $? 137 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 138 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'TQyVXYik' \
    --body '{"acsUrl": "cxIvVZZ2", "apiKey": "PvwRuifw", "appId": "9tIXi41I", "federationMetadataUrl": "4B52g919", "isActive": true, "redirectUri": "OFRzc8qo", "secret": "WsbPVn3p", "ssoUrl": "q13eWbUg"}' \
    > test.out 2>&1
eval_tap $? 138 'UpdateSSOPlatformCredential' test.out

#- 139 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'gZuLUe5b' \
    --platformUserId 'uOKBNZHg' \
    > test.out 2>&1
eval_tap $? 139 'AdminGetUserByPlatformUserIDV3' test.out

#- 140 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'kyEaWXmH' \
    --after '92' \
    --before '39' \
    --limit '45' \
    > test.out 2>&1
eval_tap $? 140 'GetAdminUsersByRoleIdV3' test.out

#- 141 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'MqHswJUV' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByEmailAddressV3' test.out

#- 142 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["y4RbXUGZ", "RZlOL0eg", "EYnvYpxI"]}' \
    > test.out 2>&1
eval_tap $? 142 'AdminListUserIDByUserIDsV3' test.out

#- 143 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["62iBV3Fr", "QU51pZoU", "yEoqk6Ip"], "isAdmin": true, "roles": ["u471BAXb", "PjsDHo89", "rz6bouTa"]}' \
    > test.out 2>&1
eval_tap $? 143 'AdminInviteUserV3' test.out

#- 144 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUsersV3' test.out

#- 145 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'MsEMBvCw' \
    --endDate 'jhCE6yBZ' \
    --limit '98' \
    --offset '15' \
    --platformBy 'QxBibQIp' \
    --platformId 'sPPjlK5s' \
    --query '9YH29dfq' \
    --startDate 'CdegRZPY' \
    > test.out 2>&1
eval_tap $? 145 'AdminSearchUserV3' test.out

#- 146 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["z3ZDE2VE", "qoonMttG", "rkH4XEmQ"]}' \
    > test.out 2>&1
eval_tap $? 146 'AdminGetBulkUserByEmailAddressV3' test.out

#- 147 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wfzKC6hh' \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByUserIdV3' test.out

#- 148 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '14DhwdHq' \
    --body '{"avatarUrl": "RwqLYYO4", "country": "HgG1NhOr", "dateOfBirth": "HkRjo2dl", "displayName": "ogYRvoX4", "languageTag": "yNhFA7rp", "userName": "1fl7YVph"}' \
    > test.out 2>&1
eval_tap $? 148 'AdminUpdateUserV3' test.out

#- 149 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bFstx6sc' \
    --activeOnly 'true' \
    --after '8q2eofsT' \
    --before 'aaMDaPs8' \
    --limit '81' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetUserBanV3' test.out

#- 150 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '8T1c9ldL' \
    --body '{"ban": "NOEtNe9n", "comment": "I6vlWNyQ", "endDate": "9NUNULnB", "reason": "fzvUwyDY", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 150 'AdminBanUserV3' test.out

#- 151 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'bOToR2aB' \
    --namespace $AB_NAMESPACE \
    --userId 'hOiR6MtT' \
    --body '{"enabled": true, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserBanV3' test.out

#- 152 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hxdR0MSB' \
    --body '{"context": "H2ukIC6K", "emailAddress": "4RDdlhJl", "languageTag": "SZ9glxhA"}' \
    > test.out 2>&1
eval_tap $? 152 'AdminSendVerificationCodeV3' test.out

#- 153 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ews1KCVa' \
    --body '{"Code": "tNSXK00P", "ContactType": "IY3z7EDd", "LanguageTag": "K2w8kgI5", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 153 'AdminVerifyAccountV3' test.out

#- 154 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId '0bnfuNdF' \
    > test.out 2>&1
eval_tap $? 154 'GetUserVerificationCode' test.out

#- 155 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Aoov4f0h' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetUserDeletionStatusV3' test.out

#- 156 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gBW8qlGh' \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 156 'AdminUpdateUserDeletionStatusV3' test.out

#- 157 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'uiTzEtkP' \
    --body '{"code": "JxwTDvxw", "country": "RQ12aZby", "dateOfBirth": "aWQTBw0t", "displayName": "W00cQOGj", "emailAddress": "cPlQgpnL", "password": "7yMq3XDh", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpgradeHeadlessAccountV3' test.out

#- 158 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gLZTj6xI' \
    > test.out 2>&1
eval_tap $? 158 'AdminDeleteUserInformationV3' test.out

#- 159 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '2bKKcltp' \
    --after '0.5790941354616149' \
    --before '0.22908353982135243' \
    --limit '72' \
    > test.out 2>&1
eval_tap $? 159 'AdminGetUserLoginHistoriesV3' test.out

#- 160 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId '3iFQ8jde' \
    --body '{"Permissions": [{"Action": 93, "Resource": "1htdpOWO", "SchedAction": 60, "SchedCron": "Vjc7mKmY", "SchedRange": ["jUMroekd", "U0cMRqD8", "MjKatBqo"]}, {"Action": 20, "Resource": "HaE262Lp", "SchedAction": 27, "SchedCron": "GvNrQ7WM", "SchedRange": ["nuYLLTvW", "kLkvUCPM", "QrKV4RRV"]}, {"Action": 76, "Resource": "1mncXvFs", "SchedAction": 46, "SchedCron": "3Jp2R9G2", "SchedRange": ["gJFbuNl1", "ByH29wgf", "5i2qver1"]}]}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserPermissionV3' test.out

#- 161 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YWWRkwJT' \
    --body '{"Permissions": [{"Action": 59, "Resource": "rCFJDFCw", "SchedAction": 28, "SchedCron": "rHojTuG1", "SchedRange": ["v1fFtCrg", "G86HJR4F", "n4LCeIcq"]}, {"Action": 17, "Resource": "UjfId1ay", "SchedAction": 49, "SchedCron": "FacZxvXY", "SchedRange": ["ndUJOtIq", "p3AwDcgh", "ObwFA1w1"]}, {"Action": 14, "Resource": "9ByDvbuL", "SchedAction": 46, "SchedCron": "xoTFuL5F", "SchedRange": ["O7fPllGD", "cmsqAbpq", "ygt9228m"]}]}' \
    > test.out 2>&1
eval_tap $? 161 'AdminAddUserPermissionsV3' test.out

#- 162 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'XWLQe9YL' \
    --body '[{"Action": 77, "Resource": "TO4KVa0m"}, {"Action": 57, "Resource": "jh047TkI"}, {"Action": 71, "Resource": "Sl7q3xp2"}]' \
    > test.out 2>&1
eval_tap $? 162 'AdminDeleteUserPermissionBulkV3' test.out

#- 163 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '55' \
    --namespace $AB_NAMESPACE \
    --resource 'BrJqqoxA' \
    --userId 'T1doGfTl' \
    > test.out 2>&1
eval_tap $? 163 'AdminDeleteUserPermissionV3' test.out

#- 164 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vOfwj07a' \
    --after 'XNaE0Hrr' \
    --before 'DXfCkJbK' \
    --limit '71' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserPlatformAccountsV3' test.out

#- 165 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'p29k3EDb' \
    > test.out 2>&1
eval_tap $? 165 'AdminGetListJusticePlatformAccounts' test.out

#- 166 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'jG3FRj8i' \
    --userId 'cYDgMBQl' \
    > test.out 2>&1
eval_tap $? 166 'AdminCreateJusticeUser' test.out

#- 167 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'vWMiX6of' \
    --body '{"platformId": "oJTGMpHQ", "platformUserId": "sQF3lF3G"}' \
    > test.out 2>&1
eval_tap $? 167 'AdminLinkPlatformAccount' test.out

#- 168 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'rjhf1t5y' \
    --userId 'k2EoSQPC' \
    --body '{"platformNamespace": "ZJRFtrLX"}' \
    > test.out 2>&1
eval_tap $? 168 'AdminPlatformUnlinkV3' test.out

#- 169 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'PJ0UY3Ax' \
    --userId 'K9Ud47fj' \
    --ticket 'LJRmx4Nx' \
    > test.out 2>&1
eval_tap $? 169 'AdminPlatformLinkV3' test.out

#- 170 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'GYSHoDOe' \
    --body '["6N7ZPyl5", "r63wClet", "mjJAQdms"]' \
    > test.out 2>&1
eval_tap $? 170 'AdminDeleteUserRolesV3' test.out

#- 171 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Kt8qitac' \
    --body '[{"namespace": "h3LvVbb4", "roleId": "tzkUj9K6"}, {"namespace": "uTtRnuoS", "roleId": "Ecz2ALfK"}, {"namespace": "kWxy14Qu", "roleId": "OsRUD8FT"}]' \
    > test.out 2>&1
eval_tap $? 171 'AdminSaveUserRoleV3' test.out

#- 172 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'roCS5vfR' \
    --userId 'OSFZxTrw' \
    > test.out 2>&1
eval_tap $? 172 'AdminAddUserRoleV3' test.out

#- 173 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'Nu8ltJnn' \
    --userId '2AXbPh9a' \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserRoleV3' test.out

#- 174 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'nlNPdX6p' \
    --body '{"enabled": false, "reason": "goRqbUPw"}' \
    > test.out 2>&1
eval_tap $? 174 'AdminUpdateUserStatusV3' test.out

#- 175 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wNLU1vRo' \
    > test.out 2>&1
eval_tap $? 175 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 176 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'kNhxEcZ7' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "FzIdip7m"}' \
    > test.out 2>&1
eval_tap $? 176 'AdminUpdateClientSecretV3' test.out

#- 177 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'LUbNIyYo' \
    --before 'WYytih50' \
    --isWildcard 'false' \
    --limit '80' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetRolesV3' test.out

#- 178 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "managers": [{"displayName": "m1Nx1W7l", "namespace": "pn2TxBmi", "userId": "cRwGA7i5"}, {"displayName": "BhRF2VvV", "namespace": "XnrFKeBU", "userId": "FmbYftm8"}, {"displayName": "2DAKnuaU", "namespace": "oEKEsNra", "userId": "a1zEnAyy"}], "members": [{"displayName": "mOZesD0C", "namespace": "MDGzPPJV", "userId": "X0grMxlC"}, {"displayName": "GkfVbhzR", "namespace": "eCD1Fh7p", "userId": "reWg6NY2"}, {"displayName": "zq5DQddI", "namespace": "QcxJ8G1t", "userId": "wuwwrnfh"}], "permissions": [{"action": 24, "resource": "u906T0oD", "schedAction": 95, "schedCron": "YgxgdKD4", "schedRange": ["In2IEbuZ", "J0k1xdSF", "uzpyGrqv"]}, {"action": 14, "resource": "yhPfV5G5", "schedAction": 96, "schedCron": "zsyiYcCn", "schedRange": ["5iBFpjIx", "dI59J6kH", "cQnJScKq"]}, {"action": 37, "resource": "Y7GvNY4B", "schedAction": 33, "schedCron": "OrfhKKWi", "schedRange": ["ACAVDCmk", "9BDDWHrM", "YdhO8tWW"]}], "roleName": "DL98Zrny"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminCreateRoleV3' test.out

#- 179 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'Q5iXU2r9' \
    > test.out 2>&1
eval_tap $? 179 'AdminGetRoleV3' test.out

#- 180 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'LERUHGHo' \
    > test.out 2>&1
eval_tap $? 180 'AdminDeleteRoleV3' test.out

#- 181 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'Do0BMXh6' \
    --body '{"deletable": false, "isWildcard": true, "roleName": "dMdwiMhA"}' \
    > test.out 2>&1
eval_tap $? 181 'AdminUpdateRoleV3' test.out

#- 182 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'GoU0pwAs' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetRoleAdminStatusV3' test.out

#- 183 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'MJAmWRxe' \
    > test.out 2>&1
eval_tap $? 183 'AdminUpdateAdminRoleStatusV3' test.out

#- 184 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'bD004W1X' \
    > test.out 2>&1
eval_tap $? 184 'AdminRemoveRoleAdminV3' test.out

#- 185 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'ftDWkxIt' \
    --after 'tn9hvpFd' \
    --before 'b1Z20d9s' \
    --limit '27' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleManagersV3' test.out

#- 186 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'k9xPDjZu' \
    --body '{"managers": [{"displayName": "GsnU8aKc", "namespace": "x38OJCUk", "userId": "QEj5GEs3"}, {"displayName": "utNGxcd9", "namespace": "2f71WQAh", "userId": "T3he8U9d"}, {"displayName": "0VhMgq3Q", "namespace": "mQBT9hxg", "userId": "5WyIfwKJ"}]}' \
    > test.out 2>&1
eval_tap $? 186 'AdminAddRoleManagersV3' test.out

#- 187 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'HftwTOpP' \
    --body '{"managers": [{"displayName": "m9K4MTK0", "namespace": "sqdjT3a8", "userId": "Pq4KFC7l"}, {"displayName": "N2XawK5g", "namespace": "utXsO65U", "userId": "NbiZY5KG"}, {"displayName": "JlNPlR8n", "namespace": "pLwcFFxC", "userId": "L00fKqEW"}]}' \
    > test.out 2>&1
eval_tap $? 187 'AdminRemoveRoleManagersV3' test.out

#- 188 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'X4gMtAus' \
    --after 'nJcZISHX' \
    --before '3VQr72Yf' \
    --limit '28' \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleMembersV3' test.out

#- 189 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'gZ6XxbU9' \
    --body '{"members": [{"displayName": "I5k9Z2If", "namespace": "20quySgs", "userId": "JwgzwqIF"}, {"displayName": "cRkPqUfq", "namespace": "CqHzxBv3", "userId": "OIqN3Q8t"}, {"displayName": "Q6o12lvT", "namespace": "WxL8VTdO", "userId": "qe4pvEo2"}]}' \
    > test.out 2>&1
eval_tap $? 189 'AdminAddRoleMembersV3' test.out

#- 190 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'P6XAGUiK' \
    --body '{"members": [{"displayName": "nxzk5973", "namespace": "cHIeIK0g", "userId": "CysKoakO"}, {"displayName": "4PbjAti4", "namespace": "oWHe33jQ", "userId": "d4OiGYua"}, {"displayName": "CZOJxnkp", "namespace": "IQ1bREki", "userId": "mvbVrZaD"}]}' \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleMembersV3' test.out

#- 191 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'clz3j27S' \
    --body '{"permissions": [{"action": 6, "resource": "Q7g1fi9E", "schedAction": 55, "schedCron": "2P2nkZr2", "schedRange": ["Gb870ahK", "gR84Hs4s", "wdKYBaWY"]}, {"action": 18, "resource": "7eobMVO8", "schedAction": 77, "schedCron": "3kgmXrnw", "schedRange": ["xii29VUa", "jaZv8HtY", "qGNE59AK"]}, {"action": 61, "resource": "eEiORlne", "schedAction": 72, "schedCron": "HdnbXfDo", "schedRange": ["I8e0nsBs", "3Fy947PH", "iHzdIvO8"]}]}' \
    > test.out 2>&1
eval_tap $? 191 'AdminUpdateRolePermissionsV3' test.out

#- 192 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'lRUqXg8C' \
    --body '{"permissions": [{"action": 47, "resource": "aBMMvZwA", "schedAction": 47, "schedCron": "duEgwSun", "schedRange": ["lEVkZhNZ", "dR4XBgCs", "SzjY8WZH"]}, {"action": 14, "resource": "VAbCTnkz", "schedAction": 80, "schedCron": "v3lSngxl", "schedRange": ["nJCevcTw", "u0692h7b", "k0Jxe8MU"]}, {"action": 27, "resource": "6eNUiw0M", "schedAction": 30, "schedCron": "G5AAQlKW", "schedRange": ["9VmgTjgj", "eGVbFpDq", "214WkgDr"]}]}' \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRolePermissionsV3' test.out

#- 193 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'b7LfWtk6' \
    --body '["OiTo8dn9", "pgQNMeaQ", "JD0kC7Cx"]' \
    > test.out 2>&1
eval_tap $? 193 'AdminDeleteRolePermissionsV3' test.out

#- 194 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '81' \
    --resource 'h2jD9RaV' \
    --roleId 'RqBN2ptc' \
    > test.out 2>&1
eval_tap $? 194 'AdminDeleteRolePermissionV3' test.out

#- 195 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 195 'AdminGetMyUserV3' test.out

#- 196 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'AesrVJoI' \
    --extendExp 'false' \
    --redirectUri 'XOkXiMpd' \
    --password 'hkWjvvqp' \
    --requestId 'oZLx99EQ' \
    --userName 'Rq32N28P' \
    > test.out 2>&1
eval_tap $? 196 'UserAuthenticationV3' test.out

#- 197 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'zfWDaxGq' \
    --linkingToken 'dEpODJUm' \
    --password 'YB4fn2i0' \
    --username 'W278R9Lu' \
    > test.out 2>&1
eval_tap $? 197 'AuthenticationWithPlatformLinkV3' test.out

#- 198 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'true' \
    --linkingToken 'q810O3kN' \
    > test.out 2>&1
eval_tap $? 198 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 199 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 199 'GetCountryLocationV3' test.out

#- 200 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 200 'Logout' test.out

#- 201 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9v1Ne2qu' \
    --userId '3bx6U1v6' \
    > test.out 2>&1
eval_tap $? 201 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 202 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TzbCdFLf' \
    > test.out 2>&1
eval_tap $? 202 'RevokeUserV3' test.out

#- 203 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'KPjLAANy' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'true' \
    --redirectUri '5Y4vTwVC' \
    --scope 't23Yh1G2' \
    --state 'cM8fqzi5' \
    --targetAuthPage 'TLSlVmlf' \
    --clientId '4qihZXze' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 203 'AuthorizeV3' test.out

#- 204 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'jPdqvplJ' \
    > test.out 2>&1
eval_tap $? 204 'TokenIntrospectionV3' test.out

#- 205 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 205 'GetJWKSV3' test.out

#- 206 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'JDmrF0tZ' \
    --mfaToken 'MzwP0GlG' \
    > test.out 2>&1
eval_tap $? 206 'Change2faMethod' test.out

#- 207 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'kqACTO0c' \
    --factor 'MfZZsrk4' \
    --mfaToken 'GWpxx27S' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 207 'Verify2faCode' test.out

#- 208 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'jQguhEiQ' \
    --userId 'NzUYDILv' \
    > test.out 2>&1
eval_tap $? 208 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 209 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'DBugmNwd' \
    --clientId 'OU8SKBcL' \
    --redirectUri '3D6MBglf' \
    --requestId 'lhhnjOha' \
    > test.out 2>&1
eval_tap $? 209 'AuthCodeRequestV3' test.out

#- 210 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId '86sgnC2h' \
    --clientId 'nZjuX6fn' \
    --createHeadless 'true' \
    --deviceId 'qeL2Y9N5' \
    --platformToken 'JbBIOuvN' \
    > test.out 2>&1
eval_tap $? 210 'PlatformTokenGrantV3' test.out

#- 211 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 211 'GetRevocationListV3' test.out

#- 212 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'L2l2EWO2' \
    > test.out 2>&1
eval_tap $? 212 'TokenRevocationV3' test.out

#- 213 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --clientId 'FDjSFuOw' \
    --code '522fTKd4' \
    --codeVerifier 'cpDqf0wZ' \
    --extendExp 'false' \
    --password 'pLXAKCp3' \
    --redirectUri 'VTDz4ARk' \
    --refreshToken 'ebe9ipwm' \
    --username 'u3rblxFO' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 213 'TokenGrantV3' test.out

#- 214 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'sHScwAO8' \
    > test.out 2>&1
eval_tap $? 214 'VerifyTokenV3' test.out

#- 215 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'W34RMM3A' \
    --code '23M1Me2P' \
    --error 'dLZUJwj2' \
    --openidAssocHandle '88QQ9WVG' \
    --openidClaimedId 'wN6MRe6C' \
    --openidIdentity 'Rj0Ssj2u' \
    --openidMode 'ZOr27qyS' \
    --openidNs 'jRuKkCXu' \
    --openidOpEndpoint 'TKzziNMl' \
    --openidResponseNonce 'flTFe1gZ' \
    --openidReturnTo 'pj1aRitq' \
    --openidSig 'uhccziQ0' \
    --openidSigned 'un4uf5D4' \
    --state 'aNo9lJ2k' \
    > test.out 2>&1
eval_tap $? 215 'PlatformAuthenticationV3' test.out

#- 216 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'FofOJWdX' \
    > test.out 2>&1
eval_tap $? 216 'PublicGetInputValidations' test.out

#- 217 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 217 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 218 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'WN3FjnGp' \
    > test.out 2>&1
eval_tap $? 218 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 219 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId '5QdVpt6W' \
    --body '{"platformUserIds": ["tH2q9IJD", "fkqs4cdg", "1fc0erJE"]}' \
    > test.out 2>&1
eval_tap $? 219 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 220 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '8c0925NG' \
    --platformUserId 'NMYzxTD9' \
    > test.out 2>&1
eval_tap $? 220 'PublicGetUserByPlatformUserIDV3' test.out

#- 221 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'qrMYEchE' \
    > test.out 2>&1
eval_tap $? 221 'PublicGetAsyncStatus' test.out

#- 222 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'DDSbYBqr' \
    --limit '22' \
    --offset '70' \
    --query 'gJ3kjh9H' \
    > test.out 2>&1
eval_tap $? 222 'PublicSearchUserV3' test.out

#- 223 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "q9ytpbBM", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "eGt0Xirk", "policyId": "pikmG7gx", "policyVersionId": "y5ec5XRH"}, {"isAccepted": false, "localizedPolicyVersionId": "DL8l1oyA", "policyId": "w2GeZm8l", "policyVersionId": "WtajMGgd"}, {"isAccepted": true, "localizedPolicyVersionId": "XflGiUQf", "policyId": "whMhbnrt", "policyVersionId": "4l1NWYJJ"}], "authType": "cjvWBgpZ", "code": "QrM4oeM7", "country": "WDBYoUD7", "dateOfBirth": "6iKL2lhH", "displayName": "XnMr8f9i", "emailAddress": "4EpmDn7b", "password": "FjlaaKc4", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 223 'PublicCreateUserV3' test.out

#- 224 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'UyXkLGJv' \
    --query 'oHDd1O8M' \
    > test.out 2>&1
eval_tap $? 224 'CheckUserAvailability' test.out

#- 225 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["SYc7Tjtp", "uEeEAt6R", "EGXMkVRu"]}' \
    > test.out 2>&1
eval_tap $? 225 'PublicBulkGetUsers' test.out

#- 226 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "WojymRXq", "languageTag": "b7IqzZcv"}' \
    > test.out 2>&1
eval_tap $? 226 'PublicSendRegistrationCode' test.out

#- 227 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "T04MgwSt", "emailAddress": "ZSDRXVEg"}' \
    > test.out 2>&1
eval_tap $? 227 'PublicVerifyRegistrationCode' test.out

#- 228 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "NDvjdu0L", "languageTag": "cEd9LoY1"}' \
    > test.out 2>&1
eval_tap $? 228 'PublicForgotPasswordV3' test.out

#- 229 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'lEZ26Qef' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 229 'GetAdminInvitationV3' test.out

#- 230 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'EuZpihY9' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "9jra06Ul", "policyId": "CPRzTe8A", "policyVersionId": "1xmBE1LY"}, {"isAccepted": false, "localizedPolicyVersionId": "YvAACSKX", "policyId": "g4o1y0F0", "policyVersionId": "Q5yTpLBW"}, {"isAccepted": false, "localizedPolicyVersionId": "qp142Hjo", "policyId": "Ha6ddY4x", "policyVersionId": "ECalLJZf"}], "authType": "EMAILPASSWD", "country": "GT7VUqtQ", "dateOfBirth": "tAOiYCVE", "displayName": "KqgTYnnJ", "password": "TjxKSNPq", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 230 'CreateUserFromInvitationV3' test.out

#- 231 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "7XDXPX1p", "country": "ajvSy7vn", "dateOfBirth": "Mpfrk4wg", "displayName": "3X2uinz7", "languageTag": "1pEoTNeg", "userName": "TpTc7Mwl"}' \
    > test.out 2>&1
eval_tap $? 231 'UpdateUserV3' test.out

#- 232 PublicUpdateUserV3
samples/cli/sample-apps Iam publicUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "tT6e9PHt", "country": "wj2Hqj3I", "dateOfBirth": "WP7dYlSy", "displayName": "h2y7SzNT", "languageTag": "EBUWF99o", "userName": "68vqmHjr"}' \
    > test.out 2>&1
eval_tap $? 232 'PublicUpdateUserV3' test.out

#- 233 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "HQMWYZ2X", "emailAddress": "41nHK6f0", "languageTag": "vdAftkPw"}' \
    > test.out 2>&1
eval_tap $? 233 'PublicSendVerificationCodeV3' test.out

#- 234 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "rEo0Dvyz", "contactType": "wlpQdI7y", "languageTag": "QVOYOWPS", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 234 'PublicUserVerificationV3' test.out

#- 235 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "5l0qqZgm", "country": "WO2zN9T2", "dateOfBirth": "2cxVVGJl", "displayName": "EJXDse2n", "emailAddress": "JkvhKEAp", "password": "K89TFxol", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 235 'PublicUpgradeHeadlessAccountV3' test.out

#- 236 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "UtoqqVOn", "password": "V0waTEhs"}' \
    > test.out 2>&1
eval_tap $? 236 'PublicVerifyHeadlessAccountV3' test.out

#- 237 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "p0abWlZs", "newPassword": "WI93oSJU", "oldPassword": "azn4Vf9P"}' \
    > test.out 2>&1
eval_tap $? 237 'PublicUpdatePasswordV3' test.out

#- 238 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'DryEhox9' \
    > test.out 2>&1
eval_tap $? 238 'PublicCreateJusticeUser' test.out

#- 239 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'hTIKD2XR' \
    --redirectUri '4bwgpmv3' \
    --ticket 'OUjtQstw' \
    > test.out 2>&1
eval_tap $? 239 'PublicPlatformLinkV3' test.out

#- 240 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'IDvyHyaF' \
    --body '{"platformNamespace": "rSnZU5gP"}' \
    > test.out 2>&1
eval_tap $? 240 'PublicPlatformUnlinkV3' test.out

#- 241 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'hILMjaGH' \
    > test.out 2>&1
eval_tap $? 241 'PublicPlatformUnlinkAllV3' test.out

#- 242 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'XJaavspa' \
    --clientId 'Fv0AikGl' \
    --redirectUri 'PYf90p4j' \
    > test.out 2>&1
eval_tap $? 242 'PublicWebLinkPlatform' test.out

#- 243 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'xOMih2b5' \
    --state 'gzR7iRza' \
    > test.out 2>&1
eval_tap $? 243 'PublicWebLinkPlatformEstablish' test.out

#- 244 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "jU22jzRg", "emailAddress": "qktb7jIO", "newPassword": "jRd3t8Wm"}' \
    > test.out 2>&1
eval_tap $? 244 'ResetPasswordV3' test.out

#- 245 PublicGetUserByUserIdV3
samples/cli/sample-apps Iam publicGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UsKdXvIJ' \
    > test.out 2>&1
eval_tap $? 245 'PublicGetUserByUserIdV3' test.out

#- 246 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'yNJtDcdh' \
    --activeOnly 'false' \
    --after 'sMGrbppZ' \
    --before 'sD6AZnOs' \
    --limit '58' \
    > test.out 2>&1
eval_tap $? 246 'PublicGetUserBanHistoryV3' test.out

#- 247 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BfMayimz' \
    > test.out 2>&1
eval_tap $? 247 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 248 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LrXJSnMJ' \
    --after '0.8470057492444394' \
    --before '0.7336828596772643' \
    --limit '48' \
    > test.out 2>&1
eval_tap $? 248 'PublicGetUserLoginHistoriesV3' test.out

#- 249 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'XDZ1WMPY' \
    --after 'QEHU0KIr' \
    --before 'CjLC1dox' \
    --limit '54' \
    > test.out 2>&1
eval_tap $? 249 'PublicGetUserPlatformAccountsV3' test.out

#- 250 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'A5GY8o18' \
    --body '{"platformId": "fXZkTKDa", "platformUserId": "e2NayVYC"}' \
    > test.out 2>&1
eval_tap $? 250 'PublicLinkPlatformAccount' test.out

#- 251 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'AfmTLLTb' \
    --body '{"chosenNamespaces": ["EHtk5D4Y", "ms4hqCts", "lHGjr8Ti"], "requestId": "dICSyoDM"}' \
    > test.out 2>&1
eval_tap $? 251 'PublicForceLinkPlatformWithProgression' test.out

#- 252 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YKfb4fYd' \
    --password 'Oz7FsiTF' \
    > test.out 2>&1
eval_tap $? 252 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 253 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'ZXwzCpoA' \
    --before 'dPSU2L9Y' \
    --isWildcard 'true' \
    --limit '87' \
    > test.out 2>&1
eval_tap $? 253 'PublicGetRolesV3' test.out

#- 254 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'LzXgqBWB' \
    > test.out 2>&1
eval_tap $? 254 'PublicGetRoleV3' test.out

#- 255 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 255 'PublicGetMyUserV3' test.out

#- 256 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'tNkpBhVi' \
    --code 'Lwz2VHJm' \
    --error 'dagVc4fJ' \
    --state 'nf6YYXZ1' \
    > test.out 2>&1
eval_tap $? 256 'PlatformAuthenticateSAMLV3Handler' test.out

#- 257 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'g0Htb98y' \
    --payload 'bdgvqpS6' \
    > test.out 2>&1
eval_tap $? 257 'LoginSSOClient' test.out

#- 258 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'gYhtWOFN' \
    > test.out 2>&1
eval_tap $? 258 'LogoutSSOClient' test.out

#- 259 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["s4dlZWlO", "Uxj2c9Ur", "oNzWMnzW"]}' \
    > test.out 2>&1
eval_tap $? 259 'AdminBulkCheckValidUserIDV4' test.out

#- 260 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'JwI6aL3B' \
    --body '{"avatarUrl": "JonOU3cY", "country": "8jKypy2T", "dateOfBirth": "gX7hAwgh", "displayName": "YylUpiV4", "languageTag": "qrbCJUES", "userName": "iQZCjcWN"}' \
    > test.out 2>&1
eval_tap $? 260 'AdminUpdateUserV4' test.out

#- 261 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Y7MFqEhP' \
    --body '{"code": "L4sdZL5f", "emailAddress": "5EEkk3WB"}' \
    > test.out 2>&1
eval_tap $? 261 'AdminUpdateUserEmailAddressV4' test.out

#- 262 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId '311qaYSO' \
    > test.out 2>&1
eval_tap $? 262 'AdminDisableUserMFAV4' test.out

#- 263 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'h57PY4EW' \
    > test.out 2>&1
eval_tap $? 263 'AdminListUserRolesV4' test.out

#- 264 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'raFUrp4A' \
    --body '{"assignedNamespaces": ["uYzXg1i8", "ZCtgybGk", "4OpvpFVB"], "roleId": "iXFFG4FI"}' \
    > test.out 2>&1
eval_tap $? 264 'AdminUpdateUserRoleV4' test.out

#- 265 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'AQYPaDdC' \
    --body '{"assignedNamespaces": ["vjtE2qmH", "GfJLaIB9", "vdZccbnl"], "roleId": "k7RP8OAS"}' \
    > test.out 2>&1
eval_tap $? 265 'AdminAddUserRoleV4' test.out

#- 266 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ZRlOjTxr' \
    --body '{"assignedNamespaces": ["ZsKAWzkE", "f5ipNuSk", "19y0X8ar"], "roleId": "lfT1xVQU"}' \
    > test.out 2>&1
eval_tap $? 266 'AdminRemoveUserRoleV4' test.out

#- 267 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'false' \
    --limit '71' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 267 'AdminGetRolesV4' test.out

#- 268 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "fkFJyCgH"}' \
    > test.out 2>&1
eval_tap $? 268 'AdminCreateRoleV4' test.out

#- 269 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'umZDDThC' \
    > test.out 2>&1
eval_tap $? 269 'AdminGetRoleV4' test.out

#- 270 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'cvZIdzab' \
    > test.out 2>&1
eval_tap $? 270 'AdminDeleteRoleV4' test.out

#- 271 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId '273EcXOi' \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "HIQVQjHD"}' \
    > test.out 2>&1
eval_tap $? 271 'AdminUpdateRoleV4' test.out

#- 272 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'ydTJZCK7' \
    --body '{"permissions": [{"action": 95, "resource": "Sw3WRMBp", "schedAction": 59, "schedCron": "H4jxUYEJ", "schedRange": ["JEo5U4vj", "XCGKjCNC", "1iW43ICB"]}, {"action": 37, "resource": "ZObiuipR", "schedAction": 55, "schedCron": "zVtGT8t1", "schedRange": ["44MsOteZ", "4vQYz43P", "BcxmZIon"]}, {"action": 57, "resource": "4J7of50M", "schedAction": 77, "schedCron": "hqPIDsRG", "schedRange": ["SqK98wpf", "sa4sz63N", "nM4y8yce"]}]}' \
    > test.out 2>&1
eval_tap $? 272 'AdminUpdateRolePermissionsV4' test.out

#- 273 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'S5b8gxhx' \
    --body '{"permissions": [{"action": 33, "resource": "Sj2WPS2h", "schedAction": 64, "schedCron": "OyhZ5FJ7", "schedRange": ["AxdSMIiv", "t5hFduPv", "L7OoBdsv"]}, {"action": 67, "resource": "NI0VjG7h", "schedAction": 65, "schedCron": "bQ3SyAIf", "schedRange": ["RMoHmDx6", "ctuVwmcd", "g3iB9Hwz"]}, {"action": 35, "resource": "Ng1qSsvZ", "schedAction": 73, "schedCron": "luaDWrZX", "schedRange": ["PX7kucDg", "DqupmrSL", "rqFG2DQn"]}]}' \
    > test.out 2>&1
eval_tap $? 273 'AdminAddRolePermissionsV4' test.out

#- 274 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'uUBWQtTH' \
    --body '["U1zcpAOA", "Rtky2P5p", "nlark2ZH"]' \
    > test.out 2>&1
eval_tap $? 274 'AdminDeleteRolePermissionsV4' test.out

#- 275 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'tFkBE5Lc' \
    --after 'vJ9HXJAM' \
    --before 'MhVGNavi' \
    --limit '28' \
    > test.out 2>&1
eval_tap $? 275 'AdminListAssignedUsersV4' test.out

#- 276 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'j8qqdVHT' \
    --body '{"assignedNamespaces": ["s7fq4kH3", "SEl7uqB8", "GCeM24dd"], "namespace": "a27dFzV8", "userId": "VG2WleUX"}' \
    > test.out 2>&1
eval_tap $? 276 'AdminAssignUserToRoleV4' test.out

#- 277 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'G5XdOtrP' \
    --body '{"namespace": "0ojhm3Nj", "userId": "BT9Vtv68"}' \
    > test.out 2>&1
eval_tap $? 277 'AdminRevokeUserFromRoleV4' test.out

#- 278 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "hI97i37T", "country": "ALzt8XNZ", "dateOfBirth": "I9nV1o2B", "displayName": "BFfg6jyb", "languageTag": "ixnJPaJN", "userName": "lPHaE0Zn"}' \
    > test.out 2>&1
eval_tap $? 278 'AdminUpdateMyUserV4' test.out

#- 279 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 279 'AdminDisableMyAuthenticatorV4' test.out

#- 280 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'iv4nMYwP' \
    > test.out 2>&1
eval_tap $? 280 'AdminEnableMyAuthenticatorV4' test.out

#- 281 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 281 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 282 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 282 'AdminGetMyBackupCodesV4' test.out

#- 283 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 283 'AdminGenerateMyBackupCodesV4' test.out

#- 284 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 284 'AdminDisableMyBackupCodesV4' test.out

#- 285 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 285 'AdminDownloadMyBackupCodesV4' test.out

#- 286 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 286 'AdminEnableMyBackupCodesV4' test.out

#- 287 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 287 'AdminGetMyEnabledFactorsV4' test.out

#- 288 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor '6XEmR1NZ' \
    > test.out 2>&1
eval_tap $? 288 'AdminMakeFactorMyDefaultV4' test.out

#- 289 AdminInviteUserV4
samples/cli/sample-apps Iam adminInviteUserV4 \
    --body '{"assignedNamespaces": ["nGWfCdnH", "1s6N4IGy", "E7QKQbw8"], "emailAddresses": ["IeVJ1kyS", "x76eT8QK", "L5T27Adt"], "isAdmin": true, "roleId": "VwU46NRz"}' \
    > test.out 2>&1
eval_tap $? 289 'AdminInviteUserV4' test.out

#- 290 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "iIRYTXKX", "policyId": "FGOBtRKu", "policyVersionId": "Wslm7mw6"}, {"isAccepted": true, "localizedPolicyVersionId": "D2BX92sS", "policyId": "y0oQUFHH", "policyVersionId": "e6pqmjUo"}, {"isAccepted": true, "localizedPolicyVersionId": "xU4xfr2Q", "policyId": "QBsQxBot", "policyVersionId": "2OJebqpp"}], "authType": "EMAILPASSWD", "country": "5QTgUDtZ", "dateOfBirth": "DXgrX1nI", "displayName": "qiO9mGJh", "emailAddress": "q3soRY3q", "password": "fTOOqCIj", "passwordMD5Sum": "0TRuqyqx", "username": "IPPcsvMF", "verified": false}' \
    > test.out 2>&1
eval_tap $? 290 'PublicCreateTestUserV4' test.out

#- 291 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "84hoaCn8", "policyId": "6C4UkgAO", "policyVersionId": "tdpO4ToM"}, {"isAccepted": false, "localizedPolicyVersionId": "xdbByX5s", "policyId": "sPvLe5fv", "policyVersionId": "GUFoJ6HL"}, {"isAccepted": true, "localizedPolicyVersionId": "OzyGWQHj", "policyId": "oJ4sMoOF", "policyVersionId": "IMfaYgJD"}], "authType": "EMAILPASSWD", "code": "oyak9Fut", "country": "7KsdNvct", "dateOfBirth": "4bK5PHof", "displayName": "l2ArFwPB", "emailAddress": "bdnhUdNY", "password": "Pz6Tqc9N", "passwordMD5Sum": "u5ijEOT0", "reachMinimumAge": false, "username": "uvd4GLtk"}' \
    > test.out 2>&1
eval_tap $? 291 'PublicCreateUserV4' test.out

#- 292 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'pfBQwKcV' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "V63d4v1R", "policyId": "jlmU3tu3", "policyVersionId": "12HrtaYV"}, {"isAccepted": true, "localizedPolicyVersionId": "5OqlmEml", "policyId": "Jgz2Vh6A", "policyVersionId": "Fy5YMTTV"}, {"isAccepted": true, "localizedPolicyVersionId": "QVzD9b7q", "policyId": "tgaPUtwH", "policyVersionId": "4JXTW13f"}], "authType": "EMAILPASSWD", "country": "P3ujM4PA", "dateOfBirth": "0Y708hPk", "displayName": "qs8bKJiS", "password": "i89g9hPw", "reachMinimumAge": false, "username": "4vGV9MUs"}' \
    > test.out 2>&1
eval_tap $? 292 'CreateUserFromInvitationV4' test.out

#- 293 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "NXoHyRxS", "country": "czH7B5MB", "dateOfBirth": "NkG6P0TO", "displayName": "II3CSBDC", "languageTag": "udjlBB8x", "userName": "ynUHKzKJ"}' \
    > test.out 2>&1
eval_tap $? 293 'PublicUpdateUserV4' test.out

#- 294 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "HQJU3Xzm", "emailAddress": "PBIw00sc"}' \
    > test.out 2>&1
eval_tap $? 294 'PublicUpdateUserEmailAddressV4' test.out

#- 295 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "CevcbD82", "country": "BbYugbrb", "dateOfBirth": "g6spHISj", "displayName": "a3R5aMFg", "emailAddress": "nj2wrHS4", "password": "YDENawJN", "reachMinimumAge": true, "username": "7akcAKQ7", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 295 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 296 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "A7Epjp47", "password": "vZqljMZT", "username": "QrEZJ0bz"}' \
    > test.out 2>&1
eval_tap $? 296 'PublicUpgradeHeadlessAccountV4' test.out

#- 297 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 297 'PublicDisableMyAuthenticatorV4' test.out

#- 298 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'Otl1bcbz' \
    > test.out 2>&1
eval_tap $? 298 'PublicEnableMyAuthenticatorV4' test.out

#- 299 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 299 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 300 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 300 'PublicGetMyBackupCodesV4' test.out

#- 301 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 301 'PublicGenerateMyBackupCodesV4' test.out

#- 302 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 302 'PublicDisableMyBackupCodesV4' test.out

#- 303 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 303 'PublicDownloadMyBackupCodesV4' test.out

#- 304 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 304 'PublicEnableMyBackupCodesV4' test.out

#- 305 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 305 'PublicRemoveTrustedDeviceV4' test.out

#- 306 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 306 'PublicGetMyEnabledFactorsV4' test.out

#- 307 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'rPQY0XAp' \
    > test.out 2>&1
eval_tap $? 307 'PublicMakeFactorMyDefaultV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE