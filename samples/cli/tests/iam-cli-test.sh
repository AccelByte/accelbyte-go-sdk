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
echo "1..305"

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
    --body '{"AuthType": "FtBxyZcD", "Country": "XBpGlsQu", "DisplayName": "Ju8vMf0I", "LoginId": "sJkTrd8I", "Password": "DcV2zXnT", "PasswordMD5Sum": "KjXY1bPq"}' \
    --namespace 'amiBxx9C' \
    > test.out 2>&1
eval_tap $? 16 'CreateUser' test.out

#- 17 GetAdminUsersByRoleID
samples/cli/sample-apps Iam getAdminUsersByRoleID \
    --namespace 's18EY84e' \
    --after '20' \
    --before '69' \
    --limit '39' \
    --roleId 'qRzHU1oh' \
    > test.out 2>&1
eval_tap $? 17 'GetAdminUsersByRoleID' test.out

#- 18 GetUserByLoginID
samples/cli/sample-apps Iam getUserByLoginID \
    --namespace '570KQBVa' \
    --loginId 'ewc72krS' \
    > test.out 2>&1
eval_tap $? 18 'GetUserByLoginID' test.out

#- 19 GetUserByPlatformUserID
samples/cli/sample-apps Iam getUserByPlatformUserID \
    --namespace 'ha68n3Yn' \
    --platformID 'ozp1C2Km' \
    --platformUserID 'IQTuBdNE' \
    > test.out 2>&1
eval_tap $? 19 'GetUserByPlatformUserID' test.out

#- 20 ForgotPassword
samples/cli/sample-apps Iam forgotPassword \
    --body '{"Context": "UsxFb8CJ", "LanguageTag": "17M7DJZa", "LoginID": "MSxECbZb"}' \
    --namespace 'ygyoarOR' \
    > test.out 2>&1
eval_tap $? 20 'ForgotPassword' test.out

#- 21 GetUsersByLoginIds
samples/cli/sample-apps Iam getUsersByLoginIds \
    --namespace 'oeNHSb8R' \
    --loginIds 'h3kgs9qq' \
    > test.out 2>&1
eval_tap $? 21 'GetUsersByLoginIds' test.out

#- 22 ResetPassword
samples/cli/sample-apps Iam resetPassword \
    --body '{"Code": "JbnQsoBg", "LoginID": "iVpP8Cm3", "NewPassword": "yvASUoxd"}' \
    --namespace 'xxFqmAGT' \
    > test.out 2>&1
eval_tap $? 22 'ResetPassword' test.out

#- 23 SearchUser
eval_tap 0 23 'SearchUser # SKIP deprecated' test.out

#- 24 GetUserByUserID
samples/cli/sample-apps Iam getUserByUserID \
    --namespace 'J8IEdagE' \
    --userId 'tp4w29KO' \
    > test.out 2>&1
eval_tap $? 24 'GetUserByUserID' test.out

#- 25 UpdateUser
samples/cli/sample-apps Iam updateUser \
    --body '{"Country": "u9c19R6X", "DateOfBirth": "DqWHkkP8", "DisplayName": "npLEKMfj", "LanguageTag": "iX7jpkVZ"}' \
    --namespace 'k3IaQYEm' \
    --userId 'qGodOEGt' \
    > test.out 2>&1
eval_tap $? 25 'UpdateUser' test.out

#- 26 DeleteUser
samples/cli/sample-apps Iam deleteUser \
    --namespace '9gPOj0c6' \
    --userId 'i0JkvIas' \
    > test.out 2>&1
eval_tap $? 26 'DeleteUser' test.out

#- 27 BanUser
samples/cli/sample-apps Iam banUser \
    --body '{"ban": "73ucYnFA", "comment": "J3DK5T4E", "endDate": "ogg0Y39U", "reason": "oYlpv5bV", "skipNotif": true}' \
    --namespace 'gtsDhUTD' \
    --userId 'UscbQDjb' \
    > test.out 2>&1
eval_tap $? 27 'BanUser' test.out

#- 28 GetUserBanHistory
samples/cli/sample-apps Iam getUserBanHistory \
    --namespace 'TQuPMz2P' \
    --userId 'TRlkyU89' \
    > test.out 2>&1
eval_tap $? 28 'GetUserBanHistory' test.out

#- 29 DisableUserBan
samples/cli/sample-apps Iam disableUserBan \
    --banId 'ZPOw6zPF' \
    --namespace 'J42cwmzB' \
    --userId 'BSMNcoAA' \
    > test.out 2>&1
eval_tap $? 29 'DisableUserBan' test.out

#- 30 EnableUserBan
samples/cli/sample-apps Iam enableUserBan \
    --banId 'OjKNjfcY' \
    --namespace 'Hm093aYg' \
    --userId 'BU1sqjyK' \
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
    --namespace '0XH45PaR' \
    --userId 'SOFQBtu2' \
    > test.out 2>&1
eval_tap $? 34 'GetUserInformation' test.out

#- 35 DeleteUserInformation
samples/cli/sample-apps Iam deleteUserInformation \
    --namespace '3REZ8hRV' \
    --userId 'X7LGOvDd' \
    > test.out 2>&1
eval_tap $? 35 'DeleteUserInformation' test.out

#- 36 GetUserLoginHistories
samples/cli/sample-apps Iam getUserLoginHistories \
    --namespace 'YiQS9i7m' \
    --userId 'V1C91pjG' \
    --after '0.9574297897867518' \
    --before '0.24520407895979457' \
    --limit '75' \
    > test.out 2>&1
eval_tap $? 36 'GetUserLoginHistories' test.out

#- 37 UpdatePassword
eval_tap 0 37 'UpdatePassword # SKIP deprecated' test.out

#- 38 SaveUserPermission
samples/cli/sample-apps Iam saveUserPermission \
    --body '{"Permissions": [{"Action": 48, "Resource": "cTQdvln2", "SchedAction": 74, "SchedCron": "AuSQWEXL", "SchedRange": ["6LFE1YHo"]}]}' \
    --namespace '9m126ZWc' \
    --userId '8hHtWvbN' \
    > test.out 2>&1
eval_tap $? 38 'SaveUserPermission' test.out

#- 39 AddUserPermission
samples/cli/sample-apps Iam addUserPermission \
    --body '{"SchedAction": 33, "SchedCron": "gUqslArF", "SchedRange": ["PiHUIvaC"]}' \
    --action '43' \
    --namespace '8kU9dBBp' \
    --resource 'dsJLhsVy' \
    --userId 'Exrkxoot' \
    > test.out 2>&1
eval_tap $? 39 'AddUserPermission' test.out

#- 40 DeleteUserPermission
samples/cli/sample-apps Iam deleteUserPermission \
    --action '54' \
    --namespace '7WOfercZ' \
    --resource 'dpMci37D' \
    --userId 's7YSfExa' \
    > test.out 2>&1
eval_tap $? 40 'DeleteUserPermission' test.out

#- 41 GetUserPlatformAccounts
samples/cli/sample-apps Iam getUserPlatformAccounts \
    --namespace 'I3uzLteM' \
    --userId 'bFAlt4hr' \
    > test.out 2>&1
eval_tap $? 41 'GetUserPlatformAccounts' test.out

#- 42 GetUserMapping
samples/cli/sample-apps Iam getUserMapping \
    --namespace '7HmOYiBA' \
    --targetNamespace '5ltAOXml' \
    --userId 'G6eh1dTd' \
    > test.out 2>&1
eval_tap $? 42 'GetUserMapping' test.out

#- 43 GetUserJusticePlatformAccount
eval_tap 0 43 'GetUserJusticePlatformAccount # SKIP deprecated' test.out

#- 44 PlatformLink
samples/cli/sample-apps Iam platformLink \
    --ticket 'oTFpBIcu' \
    --namespace 'C1dQY93O' \
    --platformId 'JnJ6Te9v' \
    --userId 'D8ldz7Hu' \
    > test.out 2>&1
eval_tap $? 44 'PlatformLink' test.out

#- 45 PlatformUnlink
samples/cli/sample-apps Iam platformUnlink \
    --platformNamespace '8AD79kdW' \
    --namespace 'unvizU0q' \
    --platformId '1pHyhhER' \
    --userId 'oGgdrysM' \
    > test.out 2>&1
eval_tap $? 45 'PlatformUnlink' test.out

#- 46 GetPublisherUser
samples/cli/sample-apps Iam getPublisherUser \
    --namespace 'izBGSRdP' \
    --userId '2l7DNSZ8' \
    > test.out 2>&1
eval_tap $? 46 'GetPublisherUser' test.out

#- 47 SaveUserRoles
samples/cli/sample-apps Iam saveUserRoles \
    --body '["Aq0XiPLQ"]' \
    --namespace 'XSe07Zdd' \
    --userId 'OGTMlJjB' \
    > test.out 2>&1
eval_tap $? 47 'SaveUserRoles' test.out

#- 48 AddUserRole
samples/cli/sample-apps Iam addUserRole \
    --namespace 'wj9HJHQK' \
    --roleId 'seEdSXRD' \
    --userId 'Svguauw1' \
    > test.out 2>&1
eval_tap $? 48 'AddUserRole' test.out

#- 49 DeleteUserRole
samples/cli/sample-apps Iam deleteUserRole \
    --namespace 'xT7eMwSl' \
    --roleId '9MLH0NnT' \
    --userId 'J2ulNzBv' \
    > test.out 2>&1
eval_tap $? 49 'DeleteUserRole' test.out

#- 50 UpgradeHeadlessAccount
samples/cli/sample-apps Iam upgradeHeadlessAccount \
    --body '{"LoginID": "wJaQa547", "Password": "JllvA8RW"}' \
    --namespace 'SpabUt7x' \
    --userId 'k6QxyWhf' \
    > test.out 2>&1
eval_tap $? 50 'UpgradeHeadlessAccount' test.out

#- 51 UpgradeHeadlessAccountWithVerificationCode
samples/cli/sample-apps Iam upgradeHeadlessAccountWithVerificationCode \
    --body '{"Code": "qoWfJw2o", "Password": "8oWUqvPC", "loginId": "Z2HzT7NX"}' \
    --namespace 'mWDlXsuN' \
    --userId 'IdQJR5ls' \
    > test.out 2>&1
eval_tap $? 51 'UpgradeHeadlessAccountWithVerificationCode' test.out

#- 52 UserVerification
samples/cli/sample-apps Iam userVerification \
    --body '{"Code": "NOlvkfwa", "ContactType": "SbnsuLCg", "LanguageTag": "ToxuVTek", "validateOnly": false}' \
    --namespace 'vg6h5HIp' \
    --userId 'H0DviplE' \
    > test.out 2>&1
eval_tap $? 52 'UserVerification' test.out

#- 53 SendVerificationCode
samples/cli/sample-apps Iam sendVerificationCode \
    --body '{"Context": "k4vj3LDp", "LanguageTag": "4yqDt8QU", "LoginID": "ZDpxlHas"}' \
    --namespace 'inGcjrkm' \
    --userId 'RMttgjDS' \
    > test.out 2>&1
eval_tap $? 53 'SendVerificationCode' test.out

#- 54 Authorization
samples/cli/sample-apps Iam authorization \
    --login 'aIVBmft3' \
    --password 'Udg7p9PG' \
    --scope 'mY2H5kX4' \
    --state 'MsisSX28' \
    --clientId 'nARxWRpv' \
    --redirectUri '5ou5xtvd' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 54 'Authorization' test.out

#- 55 GetJWKS
samples/cli/sample-apps Iam getJWKS \
    > test.out 2>&1
eval_tap $? 55 'GetJWKS' test.out

#- 56 PlatformTokenRequestHandler
eval_tap 0 56 'PlatformTokenRequestHandler # SKIP deprecated' test.out

#- 57 RevokeUser
samples/cli/sample-apps Iam revokeUser \
    --namespace 'Ct8UJC5f' \
    --userId 'lNyj6HsT' \
    > test.out 2>&1
eval_tap $? 57 'RevokeUser' test.out

#- 58 GetRevocationList
samples/cli/sample-apps Iam getRevocationList \
    > test.out 2>&1
eval_tap $? 58 'GetRevocationList' test.out

#- 59 RevokeToken
eval_tap 0 59 'RevokeToken # SKIP deprecated' test.out

#- 60 RevokeAUser
eval_tap 0 60 'RevokeAUser # SKIP deprecated' test.out

#- 61 TokenGrant
samples/cli/sample-apps Iam tokenGrant \
    --deviceId 'tX8P3lln' \
    --code 'aaS9lqyy' \
    --extendExp 'False' \
    --namespace 'PcfkJIxf' \
    --password 'QZza8kNV' \
    --redirectUri 'bDxVMq7H' \
    --refreshToken 'Jk0F89xA' \
    --username 'c3YVfaEN' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 61 'TokenGrant' test.out

#- 62 VerifyToken
samples/cli/sample-apps Iam verifyToken \
    --token 'rl0pTKZT' \
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
    --namespace 'XqzHuBMY' \
    > test.out 2>&1
eval_tap $? 80 'AdminGetAgeRestrictionStatusV2' test.out

#- 81 AdminUpdateAgeRestrictionConfigV2
samples/cli/sample-apps Iam adminUpdateAgeRestrictionConfigV2 \
    --body '{"AgeRestriction": 85, "Enable": true}' \
    --namespace '2jz1ZOpd' \
    > test.out 2>&1
eval_tap $? 81 'AdminUpdateAgeRestrictionConfigV2' test.out

#- 82 GetListCountryAgeRestriction
samples/cli/sample-apps Iam getListCountryAgeRestriction \
    --namespace 'OjSyMddB' \
    > test.out 2>&1
eval_tap $? 82 'GetListCountryAgeRestriction' test.out

#- 83 UpdateCountryAgeRestriction
samples/cli/sample-apps Iam updateCountryAgeRestriction \
    --body '{"AgeRestriction": 70}' \
    --countryCode 'uMf7RUyB' \
    --namespace 'HRj8IiRi' \
    > test.out 2>&1
eval_tap $? 83 'UpdateCountryAgeRestriction' test.out

#- 84 AdminSearchUsersV2
samples/cli/sample-apps Iam adminSearchUsersV2 \
    --namespace 'mRllHT6D' \
    --after 'c40vFFA6' \
    --before 'gpU7EW3x' \
    --displayName '1dCpm55g' \
    --limit '80' \
    --loginId 'eqQIqcJV' \
    --platformUserId 'KmBM1J1I' \
    --roleId 'buTrrkbm' \
    --userId 'uT1whOqm' \
    --platformId 'EnDXIWrB' \
    > test.out 2>&1
eval_tap $? 84 'AdminSearchUsersV2' test.out

#- 85 AdminGetUserByUserIdV2
samples/cli/sample-apps Iam adminGetUserByUserIdV2 \
    --namespace 'PlSay46m' \
    --userId 'v71BAZAO' \
    > test.out 2>&1
eval_tap $? 85 'AdminGetUserByUserIdV2' test.out

#- 86 AdminUpdateUserV2
samples/cli/sample-apps Iam adminUpdateUserV2 \
    --body '{"Country": "jtFJ2vmT", "DateOfBirth": "j7tT7TZH", "DisplayName": "WDdCkIsZ", "LanguageTag": "oArWwPHc"}' \
    --namespace 'yFAdAtYc' \
    --userId 'iLIgRwFR' \
    > test.out 2>&1
eval_tap $? 86 'AdminUpdateUserV2' test.out

#- 87 AdminBanUserV2
samples/cli/sample-apps Iam adminBanUserV2 \
    --body '{"ban": "r0gwB9tz", "comment": "3vp99XVl", "endDate": "V8rK3tE6", "reason": "n0smip1t", "skipNotif": true}' \
    --namespace '3L7cUd9p' \
    --userId 'qtv6JfPZ' \
    > test.out 2>&1
eval_tap $? 87 'AdminBanUserV2' test.out

#- 88 AdminGetUserBanV2
samples/cli/sample-apps Iam adminGetUserBanV2 \
    --namespace 'wcCVOXcV' \
    --userId 'a80TmCwt' \
    --activeOnly 'True' \
    > test.out 2>&1
eval_tap $? 88 'AdminGetUserBanV2' test.out

#- 89 AdminDisableUserV2
samples/cli/sample-apps Iam adminDisableUserV2 \
    --body '{"Reason": "2lAH01o6"}' \
    --namespace 'NdcBIgzr' \
    --userId 'DyWpFBYG' \
    > test.out 2>&1
eval_tap $? 89 'AdminDisableUserV2' test.out

#- 90 AdminEnableUserV2
samples/cli/sample-apps Iam adminEnableUserV2 \
    --namespace 'mmBawMyo' \
    --userId 'KyNpdAas' \
    > test.out 2>&1
eval_tap $? 90 'AdminEnableUserV2' test.out

#- 91 AdminResetPasswordV2
samples/cli/sample-apps Iam adminResetPasswordV2 \
    --body '{"LanguageTag": "m8xwUfzO", "NewPassword": "lQiZY4Nb", "OldPassword": "OQXJ7uOT"}' \
    --namespace 'zNMvuq2t' \
    --userId 'Nl4CX4Ij' \
    > test.out 2>&1
eval_tap $? 91 'AdminResetPasswordV2' test.out

#- 92 AdminDeletePlatformLinkV2
samples/cli/sample-apps Iam adminDeletePlatformLinkV2 \
    --platformNamespace 'iK4DEUJR' \
    --namespace 'VK3l9Eb0' \
    --platformId 'R1XRb0RH' \
    --userId '8vS1smeO' \
    > test.out 2>&1
eval_tap $? 92 'AdminDeletePlatformLinkV2' test.out

#- 93 AdminPutUserRolesV2
samples/cli/sample-apps Iam adminPutUserRolesV2 \
    --body '["lngrdTXC"]' \
    --namespace 'zaPBtkZM' \
    --userId 'io4wcyhl' \
    > test.out 2>&1
eval_tap $? 93 'AdminPutUserRolesV2' test.out

#- 94 AdminCreateUserRolesV2
samples/cli/sample-apps Iam adminCreateUserRolesV2 \
    --body '["oVS3rYp8"]' \
    --namespace 'QtcEmCEV' \
    --userId 'c75Ufeyp' \
    > test.out 2>&1
eval_tap $? 94 'AdminCreateUserRolesV2' test.out

#- 95 PublicGetCountryAgeRestriction
samples/cli/sample-apps Iam publicGetCountryAgeRestriction \
    --countryCode 'WjDNhzCL' \
    --namespace '5sWS2qwO' \
    > test.out 2>&1
eval_tap $? 95 'PublicGetCountryAgeRestriction' test.out

#- 96 PublicCreateUserV2
samples/cli/sample-apps Iam publicCreateUserV2 \
    --body '{"AuthType": "763iEklk", "Country": "zLm88LpL", "DisplayName": "uYRO3C55", "LoginId": "yHpwK2Ja", "Password": "qenDGn7a", "PasswordMD5Sum": "2NUplWiL"}' \
    --namespace 'jq06n6a0' \
    > test.out 2>&1
eval_tap $? 96 'PublicCreateUserV2' test.out

#- 97 PublicForgotPasswordV2
samples/cli/sample-apps Iam publicForgotPasswordV2 \
    --body '{"Context": "rW8Efkpa", "LanguageTag": "XtwYZJaQ", "LoginID": "4WbwNmsF"}' \
    --namespace 'YetjEurH' \
    > test.out 2>&1
eval_tap $? 97 'PublicForgotPasswordV2' test.out

#- 98 PublicResetPasswordV2
samples/cli/sample-apps Iam publicResetPasswordV2 \
    --body '{"Code": "8eloJzNK", "LoginID": "tRUaTz1E", "NewPassword": "Tdsmwzjk"}' \
    --namespace 'kn9oiQl0' \
    > test.out 2>&1
eval_tap $? 98 'PublicResetPasswordV2' test.out

#- 99 PublicGetUserByUserIDV2
samples/cli/sample-apps Iam publicGetUserByUserIDV2 \
    --namespace '5g7cO3ZM' \
    --userId 'b6Ojlo6D' \
    > test.out 2>&1
eval_tap $? 99 'PublicGetUserByUserIDV2' test.out

#- 100 PublicUpdateUserV2
samples/cli/sample-apps Iam publicUpdateUserV2 \
    --body '{"Country": "MNpP2qMr", "DateOfBirth": "TQ1UpjfU", "DisplayName": "6wJhy1jO", "LanguageTag": "VkkUlS79"}' \
    --namespace '527EZ25I' \
    --userId 'a8uCeZFl' \
    > test.out 2>&1
eval_tap $? 100 'PublicUpdateUserV2' test.out

#- 101 PublicGetUserBan
samples/cli/sample-apps Iam publicGetUserBan \
    --namespace 'LtEVpDAE' \
    --userId 'bA82jy74' \
    --activeOnly 'False' \
    > test.out 2>&1
eval_tap $? 101 'PublicGetUserBan' test.out

#- 102 PublicUpdatePasswordV2
samples/cli/sample-apps Iam publicUpdatePasswordV2 \
    --body '{"LanguageTag": "q0pDE5xR", "NewPassword": "wh5b45eb", "OldPassword": "pcM7ScSs"}' \
    --namespace '3UOpAwIp' \
    --userId '9rRtn1Pc' \
    > test.out 2>&1
eval_tap $? 102 'PublicUpdatePasswordV2' test.out

#- 103 GetListJusticePlatformAccounts
samples/cli/sample-apps Iam getListJusticePlatformAccounts \
    --namespace 'CxdbumeY' \
    --userId 'gOdEBWRQ' \
    > test.out 2>&1
eval_tap $? 103 'GetListJusticePlatformAccounts' test.out

#- 104 PublicPlatformLinkV2
samples/cli/sample-apps Iam publicPlatformLinkV2 \
    --ticket 'iW3KFfU8' \
    --namespace 'icH4081g' \
    --platformId 'RB1GyLfL' \
    --userId 'g4RYuEbg' \
    > test.out 2>&1
eval_tap $? 104 'PublicPlatformLinkV2' test.out

#- 105 PublicDeletePlatformLinkV2
samples/cli/sample-apps Iam publicDeletePlatformLinkV2 \
    --platformNamespace 'UDEcJyIv' \
    --namespace 'sPwOr0Bm' \
    --platformId 'V5iFvfwF' \
    --userId 'jTSmIEqo' \
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
    --body '[{"field": "LyLeUGmo", "validation": {"allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "description": [{"language": "qLfc5SwG", "message": ["nReUULDX"]}], "isCustomRegex": false, "letterCase": "b5nh68Zn", "maxLength": 48, "maxRepeatingAlphaNum": 92, "maxRepeatingSpecialCharacter": 39, "minCharType": 87, "minLength": 42, "regex": "W9hNBSFT", "specialCharacterLocation": "tFrOmjkF", "specialCharacters": ["rFVA8t0x"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'F34Xpt6Z' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace 'lTTic0kr' \
    --after '2a0nI2oo' \
    --before '7UHCJK5s' \
    --limit '30' \
    > test.out 2>&1
eval_tap $? 111 'ListAdminsV3' test.out

#- 112 AdminGetAgeRestrictionStatusV3
samples/cli/sample-apps Iam adminGetAgeRestrictionStatusV3 \
    --namespace '0aCvIq3a' \
    > test.out 2>&1
eval_tap $? 112 'AdminGetAgeRestrictionStatusV3' test.out

#- 113 AdminUpdateAgeRestrictionConfigV3
samples/cli/sample-apps Iam adminUpdateAgeRestrictionConfigV3 \
    --body '{"ageRestriction": 66, "enable": false}' \
    --namespace 'ewLRuHY8' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace '3bGj0HTe' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --body '{"ageRestriction": 9}' \
    --countryCode 'WXlIcRid' \
    --namespace 'qctDpygY' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace '0ax476ED' \
    --activeOnly 'True' \
    --banType '2JH0qhWI' \
    --limit '45' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminGetBansTypeWithNamespaceV3
samples/cli/sample-apps Iam adminGetBansTypeWithNamespaceV3 \
    --namespace 'WTgzJFRY' \
    > test.out 2>&1
eval_tap $? 117 'AdminGetBansTypeWithNamespaceV3' test.out

#- 118 AdminGetClientsByNamespaceV3
samples/cli/sample-apps Iam adminGetClientsByNamespaceV3 \
    --namespace 'w6t1IKZL' \
    --limit '81' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 118 'AdminGetClientsByNamespaceV3' test.out

#- 119 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --body '{"audiences": ["4Ode46Qm"], "baseUri": "CidgdpP7", "clientId": "RTC587lm", "clientName": "UmBziPZB", "clientPermissions": [{"action": 27, "resource": "pOfkllxf", "schedAction": 33, "schedCron": "0NsrSjw5", "schedRange": ["Hog0blM1"]}], "clientPlatform": "d5MStYGc", "deletable": true, "namespace": "LINlEC0O", "oauthClientType": "EsE3yzIs", "redirectUri": "UP0NjluO", "secret": "rGZTzsLW"}' \
    --namespace '7Fjfs9nI' \
    > test.out 2>&1
eval_tap $? 119 'AdminCreateClientV3' test.out

#- 120 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'kcZ38fUE' \
    --namespace 'anjKHbXf' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 121 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'k1zxdzxg' \
    --namespace '0UXcRyHi' \
    > test.out 2>&1
eval_tap $? 121 'AdminDeleteClientV3' test.out

#- 122 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --body '{"audiences": ["3u8BzVWu"], "baseUri": "1tOmhUtC", "clientName": "gcpvGrEb", "clientPermissions": [{"action": 4, "resource": "ZUDExH1t", "schedAction": 0, "schedCron": "yOGXIHzM", "schedRange": ["RjMCtOJs"]}], "clientPlatform": "Eijlrbpy", "deletable": true, "namespace": "EcQxVgJI", "redirectUri": "jMZqcWfM"}' \
    --clientId 'l6dqrpD4' \
    --namespace 'tnc3ZRB3' \
    > test.out 2>&1
eval_tap $? 122 'AdminUpdateClientV3' test.out

#- 123 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --body '{"permissions": [{"action": 68, "resource": "kdtPfAJE"}]}' \
    --clientId 'omwenJvQ' \
    --namespace '8grtQSv6' \
    > test.out 2>&1
eval_tap $? 123 'AdminUpdateClientPermissionV3' test.out

#- 124 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --body '{"permissions": [{"action": 61, "resource": "cALcMIPm"}]}' \
    --clientId 's5bT51M4' \
    --namespace 'yko8S0En' \
    > test.out 2>&1
eval_tap $? 124 'AdminAddClientPermissionsV3' test.out

#- 125 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '65' \
    --clientId 'LvGvfuSy' \
    --namespace 'CTyjj4mC' \
    --resource 'aiuMGKOF' \
    > test.out 2>&1
eval_tap $? 125 'AdminDeleteClientPermissionV3' test.out

#- 126 RetrieveAllThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 \
    --namespace '5GJJooSX' \
    > test.out 2>&1
eval_tap $? 126 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 127 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 \
    --namespace 'Ul3YU35Q' \
    > test.out 2>&1
eval_tap $? 127 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 128 RetrieveAllSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 \
    --namespace 'HGpBABnO' \
    --limit '22' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 128 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 129 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace 'DznICQVy' \
    --platformId 'qBg34WTt' \
    > test.out 2>&1
eval_tap $? 129 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 130 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --body '{"ACSURL": "Dkn0rtn6", "AWSCognitoRegion": "t0Yx4z12", "AWSCognitoUserPool": "EaQ1rUQY", "AppId": "CNTiDX4j", "ClientId": "E3M2IsTH", "Environment": "u8QwNyOl", "FederationMetadataURL": "XfIWd0mc", "GenericOauthFlow": true, "IsActive": false, "Issuer": "7cWfCKK6", "JWKSEndpoint": "Dij1gFce", "KeyID": "nEMySPfh", "NetflixCertificates": {"encryptedPrivateKey": "xBenDiTi", "encryptedPrivateKeyName": "AqFYmFKj", "publicCertificate": "aELmmll6", "publicCertificateName": "oexId1OK", "rootCertificate": "GUN2Uznd", "rootCertificateName": "7uVa7t14"}, "OrganizationId": "yvSYSV52", "PlatformName": "bHifCIf4", "RedirectUri": "tsuu6Pka", "Secret": "m6tFSYFt", "TeamID": "4ZxA2PzZ", "TokenAuthenticationType": "FRkBNlg6", "TokenClaimsMapping": {"hn5qusKy": "ZAuV6uUv"}}' \
    --namespace 'qM0lV6UZ' \
    --platformId 'MlEbxHNg' \
    > test.out 2>&1
eval_tap $? 130 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 131 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace 'JRiQExau' \
    --platformId 'njdAqnHU' \
    > test.out 2>&1
eval_tap $? 131 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 132 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --body '{"ACSURL": "z44tx4O6", "AWSCognitoRegion": "hamPwNoi", "AWSCognitoUserPool": "071ezDK5", "AppId": "6JFIGe1I", "ClientId": "MUCLcN0D", "Environment": "saD5FyBs", "FederationMetadataURL": "Fe9OYEJV", "GenericOauthFlow": true, "IsActive": false, "Issuer": "fmhyx6J2", "JWKSEndpoint": "5PrM4S3c", "KeyID": "B8m17hEe", "NetflixCertificates": {"encryptedPrivateKey": "LLgoaYth", "encryptedPrivateKeyName": "6zcf8eA4", "publicCertificate": "5OMvObWe", "publicCertificateName": "jo9LfGee", "rootCertificate": "gJMaBGR6", "rootCertificateName": "D1ZoZEZQ"}, "OrganizationId": "kJ8DSqFn", "PlatformName": "hdKvjFCF", "RedirectUri": "bSFlEWoM", "Secret": "PdgK5zn6", "TeamID": "2mhnFSpC", "TokenAuthenticationType": "TlDNBOcy", "TokenClaimsMapping": {"gvv2LAgf": "BGVzanbK"}}' \
    --namespace 'YsB0gqJ8' \
    --platformId 'VhYSikJl' \
    > test.out 2>&1
eval_tap $? 132 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 133 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --body '{"affectedClientIDs": ["2p9rBx8N"], "assignedNamespaces": ["5egapqxD"], "domain": "y4cLfNjz", "roleId": "zEZYA8jI"}' \
    --namespace 'kMJb7cZ2' \
    --platformId 'bPsaLLpE' \
    > test.out 2>&1
eval_tap $? 133 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 134 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --body '{"domain": "BVEMk5As"}' \
    --namespace 'KaF2P44l' \
    --platformId 'XkI3zdiR' \
    > test.out 2>&1
eval_tap $? 134 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 135 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace 'iC5IbPit' \
    --platformId '71JWlYCo' \
    > test.out 2>&1
eval_tap $? 135 'RetrieveSSOLoginPlatformCredential' test.out

#- 136 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --body '{"acsUrl": "i4nDfPu5", "apiKey": "V6QSYxEV", "appId": "OryVuZYm", "federationMetadataUrl": "gUeEPB5A", "isActive": false, "redirectUri": "vk0Zthaj", "secret": "0EBA4azR", "ssoUrl": "z0d56smo"}' \
    --namespace 'bor4p1Pl' \
    --platformId 'gQB9EcNG' \
    > test.out 2>&1
eval_tap $? 136 'AddSSOLoginPlatformCredential' test.out

#- 137 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace 'OeBRY6G5' \
    --platformId 'ae07deDL' \
    > test.out 2>&1
eval_tap $? 137 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 138 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --body '{"acsUrl": "aZ8JCvbe", "apiKey": "TfW0hgzr", "appId": "abLJxEwJ", "federationMetadataUrl": "rEBmQ64h", "isActive": false, "redirectUri": "NOzlGu68", "secret": "UYyupjdD", "ssoUrl": "etnoT0rf"}' \
    --namespace 'WtVPwQfq' \
    --platformId '6V92gbfP' \
    > test.out 2>&1
eval_tap $? 138 'UpdateSSOPlatformCredential' test.out

#- 139 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace 'ouNdmP7f' \
    --platformId 'ckVnuDGv' \
    --platformUserId 'YIb1p5tc' \
    > test.out 2>&1
eval_tap $? 139 'AdminGetUserByPlatformUserIDV3' test.out

#- 140 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace 'R5z8ZJLj' \
    --roleId 'SHcaR3X4' \
    --after '39' \
    --before '25' \
    --limit '44' \
    > test.out 2>&1
eval_tap $? 140 'GetAdminUsersByRoleIdV3' test.out

#- 141 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace 'r0QmOnsE' \
    --emailAddress 'g49eXp0x' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByEmailAddressV3' test.out

#- 142 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --body '{"userIds": ["QkZ2Jjuw"]}' \
    --namespace 'WWy0tU11' \
    > test.out 2>&1
eval_tap $? 142 'AdminListUserIDByUserIDsV3' test.out

#- 143 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --body '{"emailAddresses": ["PCeSrvej"], "isAdmin": true, "roles": ["VfF37Vr7"]}' \
    --namespace 'mkDzFBI1' \
    > test.out 2>&1
eval_tap $? 143 'AdminInviteUserV3' test.out

#- 144 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace 'VwhkVSKD' \
    --limit '22' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUsersV3' test.out

#- 145 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace 'FOUHBJsv' \
    --by 'Tsqk9hg4' \
    --endDate 'hj6nUdeb' \
    --limit '96' \
    --offset '93' \
    --platformBy 'skbPkkZA' \
    --platformId 'k01f1KxC' \
    --query 'tWADU2gu' \
    --startDate 'N6U9w13W' \
    > test.out 2>&1
eval_tap $? 145 'AdminSearchUserV3' test.out

#- 146 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --body '{"listEmailAddressRequest": ["1K9TZQ4q"]}' \
    --namespace 'RLEi5wow' \
    > test.out 2>&1
eval_tap $? 146 'AdminGetBulkUserByEmailAddressV3' test.out

#- 147 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace 'E36rfmM0' \
    --userId 'CCs35TPU' \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByUserIdV3' test.out

#- 148 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --body '{"avatarUrl": "PLmsY8Wg", "country": "wSx1DI5G", "dateOfBirth": "H9bv9ZTo", "displayName": "2HpA6pzj", "languageTag": "HpZO0E9i", "userName": "LgRPJK3n"}' \
    --namespace 'Bae3GOgb' \
    --userId 'Qrqra0Pt' \
    > test.out 2>&1
eval_tap $? 148 'AdminUpdateUserV3' test.out

#- 149 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace 'kfvOpY2r' \
    --userId 'amp5lnBn' \
    --activeOnly 'True' \
    --after 'mBkfMtC6' \
    --before '6hFq0kPO' \
    --limit '21' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetUserBanV3' test.out

#- 150 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --body '{"ban": "ORm2XjlN", "comment": "EE5ecPzA", "endDate": "mi0ySJHf", "reason": "PloP1XkY", "skipNotif": false}' \
    --namespace 'IsDSFMPy' \
    --userId 'Mhyw1OLZ' \
    > test.out 2>&1
eval_tap $? 150 'AdminBanUserV3' test.out

#- 151 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --body '{"enabled": true, "skipNotif": true}' \
    --banId 'xH4BIDJu' \
    --namespace 'DoShMMft' \
    --userId 'll8N0VvC' \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserBanV3' test.out

#- 152 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --body '{"context": "hHz9urmt", "emailAddress": "7QWvE8s6", "languageTag": "Uz8BRuYW"}' \
    --namespace 'DTtL6MTT' \
    --userId 'RkCbb9S5' \
    > test.out 2>&1
eval_tap $? 152 'AdminSendVerificationCodeV3' test.out

#- 153 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --body '{"Code": "Q1IVHGT8", "ContactType": "8prREBgY", "LanguageTag": "OWdHJ9Ju", "validateOnly": false}' \
    --namespace 'ohtU13gf' \
    --userId '7TRigNZj' \
    > test.out 2>&1
eval_tap $? 153 'AdminVerifyAccountV3' test.out

#- 154 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace '5w5y3HmK' \
    --userId '8QVOa62e' \
    > test.out 2>&1
eval_tap $? 154 'GetUserVerificationCode' test.out

#- 155 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace 'QZtbLLcF' \
    --userId '671WLtv3' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetUserDeletionStatusV3' test.out

#- 156 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --body '{"enabled": false}' \
    --namespace 'cczopFme' \
    --userId 'RwpcJBZy' \
    > test.out 2>&1
eval_tap $? 156 'AdminUpdateUserDeletionStatusV3' test.out

#- 157 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --body '{"code": "i3mLC4Kz", "country": "ekiSzeyo", "dateOfBirth": "lnOQt0jo", "displayName": "VHgCytC6", "emailAddress": "lRG98Yxn", "password": "HbRdoTKK", "validateOnly": false}' \
    --namespace 'uSjfZe9i' \
    --userId '1osghF1h' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpgradeHeadlessAccountV3' test.out

#- 158 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace 'zi1Nl47s' \
    --userId 'yJ5ibzSH' \
    > test.out 2>&1
eval_tap $? 158 'AdminDeleteUserInformationV3' test.out

#- 159 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace 'ZeCLIvWP' \
    --userId 'VRsdEqA6' \
    --after '0.8324940009328605' \
    --before '0.7111927738496974' \
    --limit '76' \
    > test.out 2>&1
eval_tap $? 159 'AdminGetUserLoginHistoriesV3' test.out

#- 160 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --body '{"Permissions": [{"Action": 12, "Resource": "sycTgmPz", "SchedAction": 5, "SchedCron": "20EuO5dM", "SchedRange": ["qGDlSZPY"]}]}' \
    --namespace '07rEVSjz' \
    --userId 'HjL6ZbXj' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserPermissionV3' test.out

#- 161 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --body '{"Permissions": [{"Action": 64, "Resource": "6DSmpp3o", "SchedAction": 30, "SchedCron": "8htaRLxt", "SchedRange": ["W4PvFkES"]}]}' \
    --namespace 'TULat5F1' \
    --userId 'Le7cR7q6' \
    > test.out 2>&1
eval_tap $? 161 'AdminAddUserPermissionsV3' test.out

#- 162 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --body '[{"Action": 82, "Resource": "WhZmmKz4"}]' \
    --namespace '1i1Tp78F' \
    --userId 'ipJHahVi' \
    > test.out 2>&1
eval_tap $? 162 'AdminDeleteUserPermissionBulkV3' test.out

#- 163 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '71' \
    --namespace 'vLYW0kdm' \
    --resource 'lk2luqSO' \
    --userId 'OA2VOZBo' \
    > test.out 2>&1
eval_tap $? 163 'AdminDeleteUserPermissionV3' test.out

#- 164 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace 'NbB98PuS' \
    --userId 'GykqFzPw' \
    --after 'SMXT53bB' \
    --before 'uL38beOY' \
    --limit '59' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserPlatformAccountsV3' test.out

#- 165 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace 'VuHZQ9LY' \
    --userId 't6w23Wf8' \
    > test.out 2>&1
eval_tap $? 165 'AdminGetListJusticePlatformAccounts' test.out

#- 166 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace 'iEQo72sH' \
    --targetNamespace '0aRdcDlD' \
    --userId 'yGcsfIuI' \
    > test.out 2>&1
eval_tap $? 166 'AdminCreateJusticeUser' test.out

#- 167 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --body '{"platformId": "4Dv5lEJp", "platformUserId": "K1AyRlzs"}' \
    --namespace 'rRXEFZiv' \
    --userId 'QOHG6wVi' \
    > test.out 2>&1
eval_tap $? 167 'AdminLinkPlatformAccount' test.out

#- 168 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --body '{"platformNamespace": "cNratsvv"}' \
    --namespace 'HLmIohfN' \
    --platformId 'ISLXMDWD' \
    --userId 'dm5FE4ll' \
    > test.out 2>&1
eval_tap $? 168 'AdminPlatformUnlinkV3' test.out

#- 169 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --ticket 'iQMnutJb' \
    --namespace 'pEo4mUNH' \
    --platformId 'Ftdml2xN' \
    --userId 'viWacJc3' \
    > test.out 2>&1
eval_tap $? 169 'AdminPlatformLinkV3' test.out

#- 170 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --body '["Fm7Z548u"]' \
    --namespace 'uKgoCBqS' \
    --userId '5uIdCbwC' \
    > test.out 2>&1
eval_tap $? 170 'AdminDeleteUserRolesV3' test.out

#- 171 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --body '[{"namespace": "eeq9ouEd", "roleId": "DtjOgsyp"}]' \
    --namespace 'Lkm2ZYew' \
    --userId '5H7Zm0gn' \
    > test.out 2>&1
eval_tap $? 171 'AdminSaveUserRoleV3' test.out

#- 172 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace 'Yyj6MXf9' \
    --roleId 'G1ntyebv' \
    --userId 'oeHenAAL' \
    > test.out 2>&1
eval_tap $? 172 'AdminAddUserRoleV3' test.out

#- 173 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace 'Kt7EfxIH' \
    --roleId '446oUnP2' \
    --userId 'S74unXwg' \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserRoleV3' test.out

#- 174 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --body '{"enabled": true, "reason": "VWW1rjK1"}' \
    --namespace 'epwkAvcs' \
    --userId 'YvbgfBVP' \
    > test.out 2>&1
eval_tap $? 174 'AdminUpdateUserStatusV3' test.out

#- 175 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace 'pTa8Yuq7' \
    --userId 'TKiNXmz7' \
    > test.out 2>&1
eval_tap $? 175 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 176 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --body '{"newSecret": "eMrMD5Tb"}' \
    --clientId 'aUxTCTng' \
    --namespace '0xjtdBrj' \
    > test.out 2>&1
eval_tap $? 176 'AdminUpdateClientSecretV3' test.out

#- 177 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 's3Kiykt2' \
    --before 'Ck2gOlSa' \
    --isWildcard 'True' \
    --limit '60' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetRolesV3' test.out

#- 178 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "managers": [{"displayName": "QLqDqYSx", "namespace": "TPuVlBqi", "userId": "rdp3yxns"}], "members": [{"displayName": "ETl1SvhQ", "namespace": "udsjIhXd", "userId": "xiSoWpnn"}], "permissions": [{"action": 47, "resource": "gX7BCPMq", "schedAction": 51, "schedCron": "QIxibhpN", "schedRange": ["YsHtdB3I"]}], "roleName": "kjuaZqhJ"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminCreateRoleV3' test.out

#- 179 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'ilrZkSSK' \
    > test.out 2>&1
eval_tap $? 179 'AdminGetRoleV3' test.out

#- 180 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'gP5rxCR7' \
    > test.out 2>&1
eval_tap $? 180 'AdminDeleteRoleV3' test.out

#- 181 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --body '{"deletable": false, "isWildcard": true, "roleName": "A1GORSbL"}' \
    --roleId '9n0dbWDE' \
    > test.out 2>&1
eval_tap $? 181 'AdminUpdateRoleV3' test.out

#- 182 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'upmdLQzP' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetRoleAdminStatusV3' test.out

#- 183 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'nNfBAcWA' \
    > test.out 2>&1
eval_tap $? 183 'AdminUpdateAdminRoleStatusV3' test.out

#- 184 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'rbkCfdHI' \
    > test.out 2>&1
eval_tap $? 184 'AdminRemoveRoleAdminV3' test.out

#- 185 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'Zb03otqm' \
    --after 'BuS9V2pC' \
    --before 'Z23UHmk0' \
    --limit '23' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleManagersV3' test.out

#- 186 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --body '{"managers": [{"displayName": "pJ4JLl01", "namespace": "qi7L2oDU", "userId": "oVRUb39j"}]}' \
    --roleId '22P4Sp09' \
    > test.out 2>&1
eval_tap $? 186 'AdminAddRoleManagersV3' test.out

#- 187 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --body '{"managers": [{"displayName": "cKmjRUbZ", "namespace": "VBVS7OK2", "userId": "ZrdcsckM"}]}' \
    --roleId 'ekROWZ2K' \
    > test.out 2>&1
eval_tap $? 187 'AdminRemoveRoleManagersV3' test.out

#- 188 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'UTqkK2eF' \
    --after 'aGLoSmEE' \
    --before 'PbLywJsy' \
    --limit '93' \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleMembersV3' test.out

#- 189 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --body '{"members": [{"displayName": "ie6fZgLl", "namespace": "lUPsO8lg", "userId": "46Si7006"}]}' \
    --roleId 'vL2w4aaj' \
    > test.out 2>&1
eval_tap $? 189 'AdminAddRoleMembersV3' test.out

#- 190 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --body '{"members": [{"displayName": "DAOx0iJj", "namespace": "Yleaktqv", "userId": "2WkljQuD"}]}' \
    --roleId '5mnJONqH' \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleMembersV3' test.out

#- 191 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --body '{"permissions": [{"action": 64, "resource": "q8mB7mF2", "schedAction": 23, "schedCron": "MFcaghFX", "schedRange": ["JIJflRHF"]}]}' \
    --roleId 'csIqCy4x' \
    > test.out 2>&1
eval_tap $? 191 'AdminUpdateRolePermissionsV3' test.out

#- 192 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --body '{"permissions": [{"action": 58, "resource": "ifSSQ5On", "schedAction": 4, "schedCron": "cEcl3xei", "schedRange": ["O4bwF5JO"]}]}' \
    --roleId 'jGoGxKM3' \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRolePermissionsV3' test.out

#- 193 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --body '["qMce5tfL"]' \
    --roleId 'cpjFZMKC' \
    > test.out 2>&1
eval_tap $? 193 'AdminDeleteRolePermissionsV3' test.out

#- 194 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '2' \
    --resource 'p0pEbLCL' \
    --roleId 'FpHxMYF8' \
    > test.out 2>&1
eval_tap $? 194 'AdminDeleteRolePermissionV3' test.out

#- 195 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 195 'AdminGetMyUserV3' test.out

#- 196 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId '36075xEp' \
    --extendExp 'True' \
    --redirectUri 'dnYtpja5' \
    --password 'ig2isQZg' \
    --requestId 'a6Vy76iz' \
    --userName 'PiQRjYa8' \
    > test.out 2>&1
eval_tap $? 196 'UserAuthenticationV3' test.out

#- 197 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'False' \
    --clientId 'v5fIt22t' \
    --linkingToken 'IZhjhgki' \
    --password 'gW22zXMW' \
    --username 'XfbcM0GI' \
    > test.out 2>&1
eval_tap $? 197 'AuthenticationWithPlatformLinkV3' test.out

#- 198 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'True' \
    --linkingToken 'LIbFCQgB' \
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
    --namespace 'cLNT6iOQ' \
    --platformId 'VYx5rW2g' \
    --userId 'MsI1aYBi' \
    > test.out 2>&1
eval_tap $? 201 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 202 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace 'tSn3UDeK' \
    --userId 'j97I4WYX' \
    > test.out 2>&1
eval_tap $? 202 'RevokeUserV3' test.out

#- 203 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'LqjN7ktO' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'True' \
    --redirectUri 'aBxWRTVu' \
    --scope 'YEqGlKDw' \
    --state 'TKXBrXiQ' \
    --targetAuthPage 'cd9IW8ki' \
    --clientId 'CKeQJWZB' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 203 'AuthorizeV3' test.out

#- 204 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'cq1ETvWB' \
    > test.out 2>&1
eval_tap $? 204 'TokenIntrospectionV3' test.out

#- 205 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 205 'GetJWKSV3' test.out

#- 206 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'xYZJh7B8' \
    --mfaToken 'gbnSu9M2' \
    > test.out 2>&1
eval_tap $? 206 'Change2faMethod' test.out

#- 207 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'OxD2udae' \
    --factor 'YpCXYSMi' \
    --mfaToken 'y87CTqEQ' \
    --rememberDevice 'True' \
    > test.out 2>&1
eval_tap $? 207 'Verify2faCode' test.out

#- 208 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace 'g36my3sY' \
    --platformId '2clrDcai' \
    --userId 'n0cOVF1z' \
    > test.out 2>&1
eval_tap $? 208 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 209 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'HwDTI0sJ' \
    --clientId '1Q0kphMT' \
    --redirectUri 'ggSP2SLc' \
    --requestId 'uAP7vU97' \
    > test.out 2>&1
eval_tap $? 209 'AuthCodeRequestV3' test.out

#- 210 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --clientId '1Czw2nbg' \
    --createHeadless 'True' \
    --deviceId '7Mvywhu6' \
    --platformToken 'MjOjuGzo' \
    --platformId '1Fz4tU0a' \
    > test.out 2>&1
eval_tap $? 210 'PlatformTokenGrantV3' test.out

#- 211 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 211 'GetRevocationListV3' test.out

#- 212 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'Sn98N8qO' \
    > test.out 2>&1
eval_tap $? 212 'TokenRevocationV3' test.out

#- 213 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --deviceId 'UA0z92Ra' \
    --clientId 'De8ngT8L' \
    --code 'RQkMnG1L' \
    --codeVerifier 'ZyF2mdYY' \
    --extendExp 'False' \
    --password 'uTYTKsue' \
    --redirectUri '48qBEBNA' \
    --refreshToken 'V5BTe6ec' \
    --username '1zA92URC' \
    --grantType 'client_credentials' \
    > test.out 2>&1
eval_tap $? 213 'TokenGrantV3' test.out

#- 214 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'RBZWunHW' \
    --code '7MYvr6QA' \
    --error '7Ppepc92' \
    --openidAssocHandle 'HA94eACd' \
    --openidClaimedId 'eyfUpgiP' \
    --openidIdentity 'pf8nxKJ3' \
    --openidMode 'dnmtPwa6' \
    --openidNs '4Y4gPEKM' \
    --openidOpEndpoint 'hhu9a6f3' \
    --openidResponseNonce 'xJNtUlKL' \
    --openidReturnTo 'lIIAeHbm' \
    --openidSig '5M6LsY1V' \
    --openidSigned 'MuIEcRls' \
    --state '68M3MPMR' \
    > test.out 2>&1
eval_tap $? 214 'PlatformAuthenticationV3' test.out

#- 215 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'True' \
    --languageCode 'epyyMz6z' \
    > test.out 2>&1
eval_tap $? 215 'PublicGetInputValidations' test.out

#- 216 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace 'fR1pvTYY' \
    > test.out 2>&1
eval_tap $? 216 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 217 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --body '{"platformUserIds": ["tDOiEi4R"]}' \
    --namespace 'uEcHCSGh' \
    --platformId 'pOZQFlwO' \
    > test.out 2>&1
eval_tap $? 217 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 218 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace 'iuKGDFgK' \
    --platformId '49YuKnXk' \
    --platformUserId 's0m8ANrc' \
    > test.out 2>&1
eval_tap $? 218 'PublicGetUserByPlatformUserIDV3' test.out

#- 219 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace 'Ral7ta3f' \
    --requestId 'ojA3h4MM' \
    > test.out 2>&1
eval_tap $? 219 'PublicGetAsyncStatus' test.out

#- 220 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace 'W3AJ5zls' \
    --by 'FBwjvLYv' \
    --limit '25' \
    --offset '12' \
    --query '6avudQFF' \
    > test.out 2>&1
eval_tap $? 220 'PublicSearchUserV3' test.out

#- 221 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --body '{"PasswordMD5Sum": "1CPNY9u2", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "VYdglOOo", "policyId": "CeK0kPKm", "policyVersionId": "BqVux3lX"}], "authType": "cD8aertA", "code": "VCqs8XT8", "country": "xy3nJ06K", "dateOfBirth": "kseA0ARj", "displayName": "9ricfayv", "emailAddress": "nhi8MDdY", "password": "4WLHoaUk", "reachMinimumAge": false}' \
    --namespace 'Qp5egdmV' \
    > test.out 2>&1
eval_tap $? 221 'PublicCreateUserV3' test.out

#- 222 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace 'E8ImivNt' \
    --field 'QxqWRKHo' \
    --query 'hODoWOr9' \
    > test.out 2>&1
eval_tap $? 222 'CheckUserAvailability' test.out

#- 223 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --body '{"userIds": ["8kjBUas9"]}' \
    --namespace 'jjz2Frgi' \
    > test.out 2>&1
eval_tap $? 223 'PublicBulkGetUsers' test.out

#- 224 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --body '{"emailAddress": "aGrcB7dI", "languageTag": "OVKIPSJJ"}' \
    --namespace 'Ho5W8tKH' \
    > test.out 2>&1
eval_tap $? 224 'PublicSendRegistrationCode' test.out

#- 225 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --body '{"code": "8ou9Sdbx", "emailAddress": "SXcrEFCw"}' \
    --namespace 'qeGNLdIB' \
    > test.out 2>&1
eval_tap $? 225 'PublicVerifyRegistrationCode' test.out

#- 226 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --body '{"emailAddress": "RdliFQVM", "languageTag": "KEzVUWlU"}' \
    --namespace 'WDs2x1EQ' \
    > test.out 2>&1
eval_tap $? 226 'PublicForgotPasswordV3' test.out

#- 227 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'U0oepEvc' \
    --namespace 'jaSgEh6j' \
    > test.out 2>&1
eval_tap $? 227 'GetAdminInvitationV3' test.out

#- 228 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "FxinIHJ1", "policyId": "o7aq5Zzn", "policyVersionId": "d5eacobT"}], "authType": "EMAILPASSWD", "country": "uRlhreQV", "dateOfBirth": "FID3o8hJ", "displayName": "WVjKIOAw", "password": "70DvAHhS", "reachMinimumAge": true}' \
    --invitationId 'zq1Za3IB' \
    --namespace 'C4vQFsUJ' \
    > test.out 2>&1
eval_tap $? 228 'CreateUserFromInvitationV3' test.out

#- 229 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --body '{"avatarUrl": "PfiaJp1r", "country": "t7OBgBCe", "dateOfBirth": "6N0eI65M", "displayName": "n5tngEYX", "languageTag": "gPVT5CqX", "userName": "DZBVMJyJ"}' \
    --namespace 'eKFO92YD' \
    > test.out 2>&1
eval_tap $? 229 'UpdateUserV3' test.out

#- 230 PublicUpdateUserV3
samples/cli/sample-apps Iam publicUpdateUserV3 \
    --body '{"avatarUrl": "taZvJoKS", "country": "0OxyipZu", "dateOfBirth": "O4N9S2YC", "displayName": "gHa6XBcv", "languageTag": "GRYk5rUt", "userName": "WHCnhmzz"}' \
    --namespace 'ppV7tKNK' \
    > test.out 2>&1
eval_tap $? 230 'PublicUpdateUserV3' test.out

#- 231 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --body '{"context": "YUQVBXym", "emailAddress": "WcNlHaFx", "languageTag": "YaGHUpmB"}' \
    --namespace 'FyOrFKtx' \
    > test.out 2>&1
eval_tap $? 231 'PublicSendVerificationCodeV3' test.out

#- 232 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --body '{"code": "GNAi0fq4", "contactType": "xChPLd2l", "languageTag": "Oopc7XoV", "validateOnly": false}' \
    --namespace 'dd6rCpyM' \
    > test.out 2>&1
eval_tap $? 232 'PublicUserVerificationV3' test.out

#- 233 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --body '{"code": "rnH9YHXh", "country": "7KnCVOKY", "dateOfBirth": "2zsBRGtd", "displayName": "8QY2OLbi", "emailAddress": "jrvfr8hk", "password": "njWUWdMU", "validateOnly": true}' \
    --namespace 'w4pNlGLj' \
    > test.out 2>&1
eval_tap $? 233 'PublicUpgradeHeadlessAccountV3' test.out

#- 234 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --body '{"emailAddress": "dBxLM079", "password": "pDAbTgms"}' \
    --namespace 'EYEq2GkY' \
    > test.out 2>&1
eval_tap $? 234 'PublicVerifyHeadlessAccountV3' test.out

#- 235 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --body '{"languageTag": "K1vYm9fl", "newPassword": "XQ7CQoem", "oldPassword": "nQG0dH0N"}' \
    --namespace 'VM9VEHTP' \
    > test.out 2>&1
eval_tap $? 235 'PublicUpdatePasswordV3' test.out

#- 236 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace 'qDhkcu5v' \
    --targetNamespace 'nz6GiNMb' \
    > test.out 2>&1
eval_tap $? 236 'PublicCreateJusticeUser' test.out

#- 237 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --redirectUri 'oBJHml0L' \
    --ticket 'JmpPi4mq' \
    --namespace 'hruiCZLG' \
    --platformId 'GP5UXkHN' \
    > test.out 2>&1
eval_tap $? 237 'PublicPlatformLinkV3' test.out

#- 238 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --body '{"platformNamespace": "TMapp5Sb"}' \
    --namespace 'onsUJKAD' \
    --platformId 'r60EkdFr' \
    > test.out 2>&1
eval_tap $? 238 'PublicPlatformUnlinkV3' test.out

#- 239 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace 'pLsGt9yT' \
    --platformId 'XWUSCQcM' \
    > test.out 2>&1
eval_tap $? 239 'PublicPlatformUnlinkAllV3' test.out

#- 240 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace 'sHN7reI2' \
    --platformId '2ks7I12t' \
    --clientId 'AZc8sxxL' \
    --redirectUri 'x9XQeqNW' \
    > test.out 2>&1
eval_tap $? 240 'PublicWebLinkPlatform' test.out

#- 241 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace 'Lm8cNJbY' \
    --platformId 'H5J4WiJL' \
    --state 'v9NvHwtw' \
    > test.out 2>&1
eval_tap $? 241 'PublicWebLinkPlatformEstablish' test.out

#- 242 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --body '{"code": "2Mjcy9ZL", "emailAddress": "6Zs5Bu2X", "newPassword": "YopLWZeU"}' \
    --namespace 'KJJNftRp' \
    > test.out 2>&1
eval_tap $? 242 'ResetPasswordV3' test.out

#- 243 PublicGetUserByUserIdV3
samples/cli/sample-apps Iam publicGetUserByUserIdV3 \
    --namespace 'Ggk1iseR' \
    --userId 'EzzRG6z9' \
    > test.out 2>&1
eval_tap $? 243 'PublicGetUserByUserIdV3' test.out

#- 244 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace 'wmuHddyO' \
    --userId 'dibI1LVy' \
    --activeOnly 'True' \
    --after 'bdY8DGZK' \
    --before 'AuoIKz3P' \
    --limit '31' \
    > test.out 2>&1
eval_tap $? 244 'PublicGetUserBanHistoryV3' test.out

#- 245 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace '3zLWUxMz' \
    --userId 'MtSmMmZP' \
    > test.out 2>&1
eval_tap $? 245 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 246 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace '8nG0FoQP' \
    --userId '8q7aSsb8' \
    --after '0.8967075057500808' \
    --before '0.40954464018624537' \
    --limit '86' \
    > test.out 2>&1
eval_tap $? 246 'PublicGetUserLoginHistoriesV3' test.out

#- 247 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace 'D3ZzN6N1' \
    --userId 'iJ8ltt9I' \
    --after 'RqCflgln' \
    --before '6r5f0s5H' \
    --limit '22' \
    > test.out 2>&1
eval_tap $? 247 'PublicGetUserPlatformAccountsV3' test.out

#- 248 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --body '{"platformId": "Cf3QHa11", "platformUserId": "hLLCgw5a"}' \
    --namespace 'v4LExdab' \
    --userId 'D8g2cvHf' \
    > test.out 2>&1
eval_tap $? 248 'PublicLinkPlatformAccount' test.out

#- 249 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --body '{"chosenNamespaces": ["MRupDA5x"], "requestId": "bjs3XRdH"}' \
    --namespace 'UJ0GCmfl' \
    --userId 'IXkgJ6zk' \
    > test.out 2>&1
eval_tap $? 249 'PublicForceLinkPlatformWithProgression' test.out

#- 250 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --password 'Twoakq7s' \
    --namespace 'EejFZ1Nt' \
    --userId 'ONXb9w9h' \
    > test.out 2>&1
eval_tap $? 250 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 251 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'sQHszIsf' \
    --before 'rlzKpQdd' \
    --isWildcard 'False' \
    --limit '82' \
    > test.out 2>&1
eval_tap $? 251 'PublicGetRolesV3' test.out

#- 252 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId '5RvrinNt' \
    > test.out 2>&1
eval_tap $? 252 'PublicGetRoleV3' test.out

#- 253 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 253 'PublicGetMyUserV3' test.out

#- 254 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'vBtqFSkA' \
    --code '68mIVYJ5' \
    --error 'pSVxBsLh' \
    --state 'ty3pecTo' \
    > test.out 2>&1
eval_tap $? 254 'PlatformAuthenticateSAMLV3Handler' test.out

#- 255 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'XA4M1oUF' \
    --payload 'Phgo7Z6m' \
    > test.out 2>&1
eval_tap $? 255 'LoginSSOClient' test.out

#- 256 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'wNC4FY69' \
    > test.out 2>&1
eval_tap $? 256 'LogoutSSOClient' test.out

#- 257 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --body '{"userIds": ["mM87joJN"]}' \
    --namespace 'OGB83Ns6' \
    > test.out 2>&1
eval_tap $? 257 'AdminBulkCheckValidUserIDV4' test.out

#- 258 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --body '{"avatarUrl": "Hl5Poab6", "country": "lKoVqNBU", "dateOfBirth": "zIxOfglq", "displayName": "uS2q2DoW", "languageTag": "r9zvFtKa", "userName": "2mOAqOok"}' \
    --namespace 'V1plxQ2Y' \
    --userId 'riTPfipD' \
    > test.out 2>&1
eval_tap $? 258 'AdminUpdateUserV4' test.out

#- 259 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --body '{"code": "67jI2hiZ", "emailAddress": "krtLnh2U"}' \
    --namespace '1RQlMxkf' \
    --userId 'NMPNtqv2' \
    > test.out 2>&1
eval_tap $? 259 'AdminUpdateUserEmailAddressV4' test.out

#- 260 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace 'TMz1b7Sn' \
    --userId 'zkXOek83' \
    > test.out 2>&1
eval_tap $? 260 'AdminDisableUserMFAV4' test.out

#- 261 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace 'Igm1wkSW' \
    --userId 'sYvAsu18' \
    > test.out 2>&1
eval_tap $? 261 'AdminListUserRolesV4' test.out

#- 262 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --body '{"assignedNamespaces": ["obUdc8mb"], "roleId": "vXcwcgMq"}' \
    --namespace 'OXMziXrV' \
    --userId 'dsEc3ClF' \
    > test.out 2>&1
eval_tap $? 262 'AdminUpdateUserRoleV4' test.out

#- 263 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --body '{"assignedNamespaces": ["P3mJwusC"], "roleId": "BTe4kLcu"}' \
    --namespace 'qL40NYge' \
    --userId 'kRavpaGT' \
    > test.out 2>&1
eval_tap $? 263 'AdminAddUserRoleV4' test.out

#- 264 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --body '{"assignedNamespaces": ["A9BTyCCy"], "roleId": "N4Fw9i6m"}' \
    --namespace 'I2W3tjjC' \
    --userId 'qPVyYs01' \
    > test.out 2>&1
eval_tap $? 264 'AdminRemoveUserRoleV4' test.out

#- 265 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'False' \
    --isWildcard 'True' \
    --limit '100' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 265 'AdminGetRolesV4' test.out

#- 266 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "cxM0DPAX"}' \
    > test.out 2>&1
eval_tap $? 266 'AdminCreateRoleV4' test.out

#- 267 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'QBNMP7j3' \
    > test.out 2>&1
eval_tap $? 267 'AdminGetRoleV4' test.out

#- 268 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'xfPaoZaW' \
    > test.out 2>&1
eval_tap $? 268 'AdminDeleteRoleV4' test.out

#- 269 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "kU5kn6Pl"}' \
    --roleId 'PqD4Agfa' \
    > test.out 2>&1
eval_tap $? 269 'AdminUpdateRoleV4' test.out

#- 270 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --body '{"permissions": [{"action": 37, "resource": "BfclBhZj", "schedAction": 3, "schedCron": "LnmghKwP", "schedRange": ["yVIn3qaH"]}]}' \
    --roleId 'P7KNulyf' \
    > test.out 2>&1
eval_tap $? 270 'AdminUpdateRolePermissionsV4' test.out

#- 271 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --body '{"permissions": [{"action": 35, "resource": "ENVQkpca", "schedAction": 97, "schedCron": "Hf6T2xOO", "schedRange": ["ljn7c6c9"]}]}' \
    --roleId 'efJI02TZ' \
    > test.out 2>&1
eval_tap $? 271 'AdminAddRolePermissionsV4' test.out

#- 272 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --body '["xrgLBFJE"]' \
    --roleId 'kphFz0h6' \
    > test.out 2>&1
eval_tap $? 272 'AdminDeleteRolePermissionsV4' test.out

#- 273 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'WpoVpVc2' \
    --after 'HBBmj6cE' \
    --before 'i02hXl42' \
    --limit '41' \
    > test.out 2>&1
eval_tap $? 273 'AdminListAssignedUsersV4' test.out

#- 274 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --body '{"assignedNamespaces": ["bCRfy4Gj"], "namespace": "Kn5ItHXL", "userId": "DZqpRhqn"}' \
    --roleId 'R742GcbL' \
    > test.out 2>&1
eval_tap $? 274 'AdminAssignUserToRoleV4' test.out

#- 275 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --body '{"namespace": "uQOGMOEz", "userId": "mdjNhT0S"}' \
    --roleId '46kqyfMB' \
    > test.out 2>&1
eval_tap $? 275 'AdminRevokeUserFromRoleV4' test.out

#- 276 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "SaZc4SA1", "country": "6M8gQCD7", "dateOfBirth": "aBHWCYev", "displayName": "NkfcQvl4", "languageTag": "Oso7tx65", "userName": "zXCiTfjo"}' \
    > test.out 2>&1
eval_tap $? 276 'AdminUpdateMyUserV4' test.out

#- 277 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 277 'AdminDisableMyAuthenticatorV4' test.out

#- 278 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'rLFqTmIU' \
    > test.out 2>&1
eval_tap $? 278 'AdminEnableMyAuthenticatorV4' test.out

#- 279 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 279 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 280 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 280 'AdminGetMyBackupCodesV4' test.out

#- 281 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 281 'AdminGenerateMyBackupCodesV4' test.out

#- 282 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 282 'AdminDisableMyBackupCodesV4' test.out

#- 283 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 283 'AdminDownloadMyBackupCodesV4' test.out

#- 284 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 284 'AdminEnableMyBackupCodesV4' test.out

#- 285 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 285 'AdminGetMyEnabledFactorsV4' test.out

#- 286 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'FUoonHBI' \
    > test.out 2>&1
eval_tap $? 286 'AdminMakeFactorMyDefaultV4' test.out

#- 287 AdminInviteUserV4
samples/cli/sample-apps Iam adminInviteUserV4 \
    --body '{"assignedNamespaces": ["13SZFHfm"], "emailAddresses": ["0F8vS2Br"], "isAdmin": false, "roleId": "q88YSSD7"}' \
    > test.out 2>&1
eval_tap $? 287 'AdminInviteUserV4' test.out

#- 288 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "V0C8FvVU", "policyId": "3kRXBGPX", "policyVersionId": "Idft1biZ"}], "authType": "EMAILPASSWD", "country": "hWyFPHdX", "dateOfBirth": "cyvZEhYe", "displayName": "USy5Ukc6", "emailAddress": "5naP11R8", "password": "Xww9vq9n", "passwordMD5Sum": "Ma2Btgwy", "username": "uf2fjV30", "verified": true}' \
    --namespace 'i7uyhaeF' \
    > test.out 2>&1
eval_tap $? 288 'PublicCreateTestUserV4' test.out

#- 289 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "cO9XNy63", "policyId": "QO9vW0ck", "policyVersionId": "7TEDE8Le"}], "authType": "EMAILPASSWD", "code": "QBeGPLiE", "country": "6tHCr0GP", "dateOfBirth": "FvT0SAK9", "displayName": "1y5vCeBI", "emailAddress": "Jq0B9UcI", "password": "6c5cre9e", "passwordMD5Sum": "alHOZphc", "reachMinimumAge": false, "username": "cnjnmyU8"}' \
    --namespace 'FSxXdCrs' \
    > test.out 2>&1
eval_tap $? 289 'PublicCreateUserV4' test.out

#- 290 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "oFqnowq9", "policyId": "Laz1GLt5", "policyVersionId": "Mhf8Z7ah"}], "authType": "EMAILPASSWD", "country": "bVPm2g7x", "dateOfBirth": "AFfRRLUj", "displayName": "fWS9sftI", "password": "fHGe5bUT", "reachMinimumAge": true, "username": "12PMcRO6"}' \
    --invitationId 'E2Mkre5q' \
    --namespace '7FvaACp6' \
    > test.out 2>&1
eval_tap $? 290 'CreateUserFromInvitationV4' test.out

#- 291 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --body '{"avatarUrl": "he0fzjkP", "country": "NNS0BfgF", "dateOfBirth": "6inIRsZ5", "displayName": "hrqNzVsz", "languageTag": "GVP5P1iw", "userName": "hcf30C1K"}' \
    --namespace 'HRZHMGy5' \
    > test.out 2>&1
eval_tap $? 291 'PublicUpdateUserV4' test.out

#- 292 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --body '{"code": "vbfZvYIF", "emailAddress": "FctEKOLx"}' \
    --namespace 'SRxe0wmW' \
    > test.out 2>&1
eval_tap $? 292 'PublicUpdateUserEmailAddressV4' test.out

#- 293 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --body '{"code": "BMcNiWoo", "country": "bB6o6alT", "dateOfBirth": "QcP0EpE9", "displayName": "wGNVwkgf", "emailAddress": "JJ2HIalf", "password": "zgRpTf9l", "reachMinimumAge": true, "username": "F1JPBizX", "validateOnly": true}' \
    --namespace 'rGe8LyOH' \
    > test.out 2>&1
eval_tap $? 293 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 294 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --body '{"emailAddress": "24nneZHF", "password": "eRld0bGA", "username": "7JxWYzaE"}' \
    --namespace 'aimvokcW' \
    > test.out 2>&1
eval_tap $? 294 'PublicUpgradeHeadlessAccountV4' test.out

#- 295 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace 'X59kwiYH' \
    > test.out 2>&1
eval_tap $? 295 'PublicDisableMyAuthenticatorV4' test.out

#- 296 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --code 'gHT6Ivd0' \
    --namespace 'fGpU209n' \
    > test.out 2>&1
eval_tap $? 296 'PublicEnableMyAuthenticatorV4' test.out

#- 297 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace 'VRclumQT' \
    > test.out 2>&1
eval_tap $? 297 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 298 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace 'Fvr5rRyY' \
    > test.out 2>&1
eval_tap $? 298 'PublicGetMyBackupCodesV4' test.out

#- 299 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace 'zaNmz3Pj' \
    > test.out 2>&1
eval_tap $? 299 'PublicGenerateMyBackupCodesV4' test.out

#- 300 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace 'Mx2T89NT' \
    > test.out 2>&1
eval_tap $? 300 'PublicDisableMyBackupCodesV4' test.out

#- 301 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace 'rFRUCXFk' \
    > test.out 2>&1
eval_tap $? 301 'PublicDownloadMyBackupCodesV4' test.out

#- 302 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace 'ruxegpkc' \
    > test.out 2>&1
eval_tap $? 302 'PublicEnableMyBackupCodesV4' test.out

#- 303 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --cookie 'XCfzgcvv' \
    --namespace '0WE5EQhc' \
    > test.out 2>&1
eval_tap $? 303 'PublicRemoveTrustedDeviceV4' test.out

#- 304 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace 'omPS1E7c' \
    > test.out 2>&1
eval_tap $? 304 'PublicGetMyEnabledFactorsV4' test.out

#- 305 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --factor 'psLgr2zE' \
    --namespace 'njyRNjEC' \
    > test.out 2>&1
eval_tap $? 305 'PublicMakeFactorMyDefaultV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE