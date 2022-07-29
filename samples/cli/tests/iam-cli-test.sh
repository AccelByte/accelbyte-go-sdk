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
    --body '{"AuthType": "Zixx9yPE", "Country": "8fWx1Tbw", "DisplayName": "hRCRyqnW", "LoginId": "GOlRMgSh", "Password": "xPjpxitl", "PasswordMD5Sum": "fnDyeLcu"}' \
    --namespace 'DqLIRL9V' \
    > test.out 2>&1
eval_tap $? 16 'CreateUser' test.out

#- 17 GetAdminUsersByRoleID
samples/cli/sample-apps Iam getAdminUsersByRoleID \
    --namespace 'jcQo95Cd' \
    --after '28' \
    --before '37' \
    --limit '37' \
    --roleId 'Kwr9I1tX' \
    > test.out 2>&1
eval_tap $? 17 'GetAdminUsersByRoleID' test.out

#- 18 GetUserByLoginID
samples/cli/sample-apps Iam getUserByLoginID \
    --namespace 'G3CNDXoF' \
    --loginId 'n0TP5vAY' \
    > test.out 2>&1
eval_tap $? 18 'GetUserByLoginID' test.out

#- 19 GetUserByPlatformUserID
samples/cli/sample-apps Iam getUserByPlatformUserID \
    --namespace 'ULZNPIlq' \
    --platformID '8JLbLZBj' \
    --platformUserID 'oRlBk2Bg' \
    > test.out 2>&1
eval_tap $? 19 'GetUserByPlatformUserID' test.out

#- 20 ForgotPassword
samples/cli/sample-apps Iam forgotPassword \
    --body '{"Context": "evwTMCcR", "LanguageTag": "BCTkk35n", "LoginID": "7dB7hzbb"}' \
    --namespace 'VmstD1Ig' \
    > test.out 2>&1
eval_tap $? 20 'ForgotPassword' test.out

#- 21 GetUsersByLoginIds
samples/cli/sample-apps Iam getUsersByLoginIds \
    --namespace 'iTi404e9' \
    --loginIds 'YhVVEq2R' \
    > test.out 2>&1
eval_tap $? 21 'GetUsersByLoginIds' test.out

#- 22 ResetPassword
samples/cli/sample-apps Iam resetPassword \
    --body '{"Code": "WvOlIOQj", "LoginID": "u7pvjXwE", "NewPassword": "nDC88Hrk"}' \
    --namespace 'ytszYB5M' \
    > test.out 2>&1
eval_tap $? 22 'ResetPassword' test.out

#- 23 SearchUser
eval_tap 0 23 'SearchUser # SKIP deprecated' test.out

#- 24 GetUserByUserID
samples/cli/sample-apps Iam getUserByUserID \
    --namespace 'DaCIRQpt' \
    --userId 'V2N1FNZb' \
    > test.out 2>&1
eval_tap $? 24 'GetUserByUserID' test.out

#- 25 UpdateUser
samples/cli/sample-apps Iam updateUser \
    --body '{"Country": "humgfJpP", "DateOfBirth": "Fv2qqhsg", "DisplayName": "0AaRwnRf", "LanguageTag": "2ZZHFwuw"}' \
    --namespace 'lsYx7LTY' \
    --userId 'jIRLZyjS' \
    > test.out 2>&1
eval_tap $? 25 'UpdateUser' test.out

#- 26 DeleteUser
samples/cli/sample-apps Iam deleteUser \
    --namespace 'rJsAt8J5' \
    --userId 'Wurji6XP' \
    > test.out 2>&1
eval_tap $? 26 'DeleteUser' test.out

#- 27 BanUser
samples/cli/sample-apps Iam banUser \
    --body '{"ban": "dWHimxZ9", "comment": "ZZPuS766", "endDate": "MTJ9uCp4", "reason": "R6b9RXAx", "skipNotif": true}' \
    --namespace 'kPyRHByE' \
    --userId '1aNdygmG' \
    > test.out 2>&1
eval_tap $? 27 'BanUser' test.out

#- 28 GetUserBanHistory
samples/cli/sample-apps Iam getUserBanHistory \
    --namespace 'NDkoqILM' \
    --userId 'pd1KaWsn' \
    > test.out 2>&1
eval_tap $? 28 'GetUserBanHistory' test.out

#- 29 DisableUserBan
samples/cli/sample-apps Iam disableUserBan \
    --banId '5r3k19F3' \
    --namespace 'XZgAzkWB' \
    --userId 'bcNSoFJW' \
    > test.out 2>&1
eval_tap $? 29 'DisableUserBan' test.out

#- 30 EnableUserBan
samples/cli/sample-apps Iam enableUserBan \
    --banId 'UuDylOSe' \
    --namespace 'pbDmgPCw' \
    --userId 'sZtz2nUE' \
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
    --namespace 'LyQifXyt' \
    --userId 'uPcoDEXz' \
    > test.out 2>&1
eval_tap $? 34 'GetUserInformation' test.out

#- 35 DeleteUserInformation
samples/cli/sample-apps Iam deleteUserInformation \
    --namespace 'trv7QAjr' \
    --userId 'DRC9T7bE' \
    > test.out 2>&1
eval_tap $? 35 'DeleteUserInformation' test.out

#- 36 GetUserLoginHistories
samples/cli/sample-apps Iam getUserLoginHistories \
    --namespace 'MgbDxpF5' \
    --userId 'bz3TNRZ3' \
    --after '0.013593665904332863' \
    --before '0.3175417974768059' \
    --limit '90' \
    > test.out 2>&1
eval_tap $? 36 'GetUserLoginHistories' test.out

#- 37 UpdatePassword
eval_tap 0 37 'UpdatePassword # SKIP deprecated' test.out

#- 38 SaveUserPermission
samples/cli/sample-apps Iam saveUserPermission \
    --body '{"Permissions": [{"Action": 100, "Resource": "sFacHd8s", "SchedAction": 26, "SchedCron": "AnNWE2Nl", "SchedRange": ["TBzuQiEi", "yFi9P10o", "NfFiVR1T"]}, {"Action": 22, "Resource": "x4CcUP10", "SchedAction": 37, "SchedCron": "D8wREcCC", "SchedRange": ["JxiI3PIP", "969FYSnC", "nbTwY8Ix"]}, {"Action": 34, "Resource": "Lgj46Ctj", "SchedAction": 10, "SchedCron": "nZzzvY06", "SchedRange": ["OfdupFyx", "Rgi59TR9", "JVPS8FBc"]}]}' \
    --namespace '96VBPuX7' \
    --userId '7teedMdr' \
    > test.out 2>&1
eval_tap $? 38 'SaveUserPermission' test.out

#- 39 AddUserPermission
samples/cli/sample-apps Iam addUserPermission \
    --body '{"SchedAction": 84, "SchedCron": "eCKGYFaR", "SchedRange": ["Ub7J4vcB", "ZtDtfv67", "cpa5147V"]}' \
    --action '82' \
    --namespace '9O9OIZTg' \
    --resource 'fuoNHzJ3' \
    --userId 'FVfe9Iis' \
    > test.out 2>&1
eval_tap $? 39 'AddUserPermission' test.out

#- 40 DeleteUserPermission
samples/cli/sample-apps Iam deleteUserPermission \
    --action '76' \
    --namespace 'bW9PNBnG' \
    --resource '8V1aTDbG' \
    --userId 'RWbBEuiv' \
    > test.out 2>&1
eval_tap $? 40 'DeleteUserPermission' test.out

#- 41 GetUserPlatformAccounts
samples/cli/sample-apps Iam getUserPlatformAccounts \
    --namespace 'lvIMxf2Y' \
    --userId 'udv1V5vI' \
    > test.out 2>&1
eval_tap $? 41 'GetUserPlatformAccounts' test.out

#- 42 GetUserMapping
samples/cli/sample-apps Iam getUserMapping \
    --namespace 'wmjIJsE8' \
    --targetNamespace 'wZhksjT3' \
    --userId 'TN0SGA6c' \
    > test.out 2>&1
eval_tap $? 42 'GetUserMapping' test.out

#- 43 GetUserJusticePlatformAccount
eval_tap 0 43 'GetUserJusticePlatformAccount # SKIP deprecated' test.out

#- 44 PlatformLink
samples/cli/sample-apps Iam platformLink \
    --ticket 'aZJTsl16' \
    --namespace '8fj3Rvd0' \
    --platformId 'eeh4cVIG' \
    --userId 'zSqFNnIF' \
    > test.out 2>&1
eval_tap $? 44 'PlatformLink' test.out

#- 45 PlatformUnlink
samples/cli/sample-apps Iam platformUnlink \
    --platformNamespace '2hDKEkFi' \
    --namespace 'RcixLnUs' \
    --platformId 'hmCKd9Wn' \
    --userId 'x9Y84VUU' \
    > test.out 2>&1
eval_tap $? 45 'PlatformUnlink' test.out

#- 46 GetPublisherUser
samples/cli/sample-apps Iam getPublisherUser \
    --namespace '9SHnZs3l' \
    --userId 'qvPBfMl7' \
    > test.out 2>&1
eval_tap $? 46 'GetPublisherUser' test.out

#- 47 SaveUserRoles
samples/cli/sample-apps Iam saveUserRoles \
    --body '["rJUyud9F", "p6IwtDB5", "zo98NSHZ"]' \
    --namespace 'EkMR9aeT' \
    --userId 'meLUWbq4' \
    > test.out 2>&1
eval_tap $? 47 'SaveUserRoles' test.out

#- 48 AddUserRole
samples/cli/sample-apps Iam addUserRole \
    --namespace 'ukXA71NX' \
    --roleId 'U9bL2CLm' \
    --userId 'HUM1bUwl' \
    > test.out 2>&1
eval_tap $? 48 'AddUserRole' test.out

#- 49 DeleteUserRole
samples/cli/sample-apps Iam deleteUserRole \
    --namespace 'gUGtj8aZ' \
    --roleId 'QbDSWp5h' \
    --userId 'm0jwKitb' \
    > test.out 2>&1
eval_tap $? 49 'DeleteUserRole' test.out

#- 50 UpgradeHeadlessAccount
samples/cli/sample-apps Iam upgradeHeadlessAccount \
    --body '{"LoginID": "u741mr7r", "Password": "lvELNCJO"}' \
    --namespace 'FE4gArPG' \
    --userId '013xBfGp' \
    > test.out 2>&1
eval_tap $? 50 'UpgradeHeadlessAccount' test.out

#- 51 UpgradeHeadlessAccountWithVerificationCode
samples/cli/sample-apps Iam upgradeHeadlessAccountWithVerificationCode \
    --body '{"Code": "JkBOHTAk", "Password": "yVxPQzlw", "loginId": "b1PU5XWJ"}' \
    --namespace 'vhxUNaa9' \
    --userId 'jpWswyE0' \
    > test.out 2>&1
eval_tap $? 51 'UpgradeHeadlessAccountWithVerificationCode' test.out

#- 52 UserVerification
samples/cli/sample-apps Iam userVerification \
    --body '{"Code": "SiQBYWbO", "ContactType": "sNjFbb5z", "LanguageTag": "j3bjtvtB", "validateOnly": false}' \
    --namespace 'a1wSqq2s' \
    --userId 'xVItg8zT' \
    > test.out 2>&1
eval_tap $? 52 'UserVerification' test.out

#- 53 SendVerificationCode
samples/cli/sample-apps Iam sendVerificationCode \
    --body '{"Context": "vavlAUhD", "LanguageTag": "tdZBu4v5", "LoginID": "qjY6REFP"}' \
    --namespace 'cqj0BAqR' \
    --userId 'vzXhmZ6f' \
    > test.out 2>&1
eval_tap $? 53 'SendVerificationCode' test.out

#- 54 Authorization
samples/cli/sample-apps Iam authorization \
    --login 'uUZobpUX' \
    --password 'zeKfDGH7' \
    --scope '2YEpP7Bj' \
    --state 'YEhmkP6O' \
    --clientId '1s7xGN5x' \
    --redirectUri 'TmYyX7rc' \
    --responseType 'token' \
    > test.out 2>&1
eval_tap $? 54 'Authorization' test.out

#- 55 GetJWKS
samples/cli/sample-apps Iam getJWKS \
    > test.out 2>&1
eval_tap $? 55 'GetJWKS' test.out

#- 56 PlatformTokenRequestHandler
samples/cli/sample-apps Iam platformTokenRequestHandler \
    --deviceId 'iWjQHkLO' \
    --platformToken 'FAmZbtNh' \
    --namespace 'ZQ8M4HV3' \
    --platformId 'kDnjYGjc' \
    > test.out 2>&1
eval_tap $? 56 'PlatformTokenRequestHandler' test.out

#- 57 RevokeUser
samples/cli/sample-apps Iam revokeUser \
    --namespace '6C1sJk8Y' \
    --userId 'KDNgD58S' \
    > test.out 2>&1
eval_tap $? 57 'RevokeUser' test.out

#- 58 GetRevocationList
samples/cli/sample-apps Iam getRevocationList \
    > test.out 2>&1
eval_tap $? 58 'GetRevocationList' test.out

#- 59 RevokeToken
samples/cli/sample-apps Iam revokeToken \
    --token '6pDl7lh1' \
    > test.out 2>&1
eval_tap $? 59 'RevokeToken' test.out

#- 60 RevokeAUser
samples/cli/sample-apps Iam revokeAUser \
    --userID 'lqJ5LEOq' \
    > test.out 2>&1
eval_tap $? 60 'RevokeAUser' test.out

#- 61 TokenGrant
samples/cli/sample-apps Iam tokenGrant \
    --deviceId '2Td5jCaw' \
    --code 'Mz0p3irg' \
    --extendExp 'false' \
    --namespace 'KBw4bkyF' \
    --password 'o8VDDemx' \
    --redirectUri 'O37qg6hx' \
    --refreshToken 'ATcNR2ct' \
    --username 'm02LcBsi' \
    --grantType 'client_credentials' \
    > test.out 2>&1
eval_tap $? 61 'TokenGrant' test.out

#- 62 VerifyToken
samples/cli/sample-apps Iam verifyToken \
    --token 'oiH5Ik2n' \
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
    --namespace 'GRNmBpxK' \
    > test.out 2>&1
eval_tap $? 80 'AdminGetAgeRestrictionStatusV2' test.out

#- 81 AdminUpdateAgeRestrictionConfigV2
samples/cli/sample-apps Iam adminUpdateAgeRestrictionConfigV2 \
    --body '{"AgeRestriction": 79, "Enable": true}' \
    --namespace '3NA7iK0f' \
    > test.out 2>&1
eval_tap $? 81 'AdminUpdateAgeRestrictionConfigV2' test.out

#- 82 GetListCountryAgeRestriction
samples/cli/sample-apps Iam getListCountryAgeRestriction \
    --namespace 'eYTXClvd' \
    > test.out 2>&1
eval_tap $? 82 'GetListCountryAgeRestriction' test.out

#- 83 UpdateCountryAgeRestriction
samples/cli/sample-apps Iam updateCountryAgeRestriction \
    --body '{"AgeRestriction": 96}' \
    --countryCode 'JDnJxBx7' \
    --namespace 'nArriaRQ' \
    > test.out 2>&1
eval_tap $? 83 'UpdateCountryAgeRestriction' test.out

#- 84 AdminSearchUsersV2
samples/cli/sample-apps Iam adminSearchUsersV2 \
    --namespace 'KxKFlCJB' \
    --after 'gBpZaIgC' \
    --before '8stWvn8B' \
    --displayName 'OllVg737' \
    --limit '63' \
    --loginId 'Sca9ZrKU' \
    --platformUserId 'bj269xHD' \
    --roleId 'ismV8QxC' \
    --userId 'beAmCOVD' \
    --platformId 'q1X8fcU4' \
    > test.out 2>&1
eval_tap $? 84 'AdminSearchUsersV2' test.out

#- 85 AdminGetUserByUserIdV2
samples/cli/sample-apps Iam adminGetUserByUserIdV2 \
    --namespace 'j8vEPLnZ' \
    --userId 'Bzz2gWKg' \
    > test.out 2>&1
eval_tap $? 85 'AdminGetUserByUserIdV2' test.out

#- 86 AdminUpdateUserV2
samples/cli/sample-apps Iam adminUpdateUserV2 \
    --body '{"Country": "D1TU4akR", "DateOfBirth": "MVsfKAkS", "DisplayName": "klwQVBtV", "LanguageTag": "h7itNF4R"}' \
    --namespace 'WDVGkKCF' \
    --userId 'CdwipaXY' \
    > test.out 2>&1
eval_tap $? 86 'AdminUpdateUserV2' test.out

#- 87 AdminBanUserV2
samples/cli/sample-apps Iam adminBanUserV2 \
    --body '{"ban": "V1jmQqYV", "comment": "U71Fjw7i", "endDate": "qjYt6niB", "reason": "8ydpGSWs", "skipNotif": true}' \
    --namespace 'm9hoX21F' \
    --userId 'H1Fxn9Ts' \
    > test.out 2>&1
eval_tap $? 87 'AdminBanUserV2' test.out

#- 88 AdminGetUserBanV2
samples/cli/sample-apps Iam adminGetUserBanV2 \
    --namespace 'd8LG7z08' \
    --userId 'obhrtpYd' \
    --activeOnly 'false' \
    > test.out 2>&1
eval_tap $? 88 'AdminGetUserBanV2' test.out

#- 89 AdminDisableUserV2
samples/cli/sample-apps Iam adminDisableUserV2 \
    --body '{"Reason": "UTBqDp2D"}' \
    --namespace 'DiDPEFep' \
    --userId 'kyNYi3ET' \
    > test.out 2>&1
eval_tap $? 89 'AdminDisableUserV2' test.out

#- 90 AdminEnableUserV2
samples/cli/sample-apps Iam adminEnableUserV2 \
    --namespace 'Zz5wVH75' \
    --userId '6NRP9nr7' \
    > test.out 2>&1
eval_tap $? 90 'AdminEnableUserV2' test.out

#- 91 AdminResetPasswordV2
samples/cli/sample-apps Iam adminResetPasswordV2 \
    --body '{"LanguageTag": "IUMCrPcS", "NewPassword": "Fv2UrBzk", "OldPassword": "fZDrIfOe"}' \
    --namespace 'UMOYdKoY' \
    --userId 'BPPxmOk9' \
    > test.out 2>&1
eval_tap $? 91 'AdminResetPasswordV2' test.out

#- 92 AdminDeletePlatformLinkV2
samples/cli/sample-apps Iam adminDeletePlatformLinkV2 \
    --platformNamespace 'pGWT58YW' \
    --namespace 'eHmuSw7V' \
    --platformId 'efG3Jxct' \
    --userId 'D0u0YYrk' \
    > test.out 2>&1
eval_tap $? 92 'AdminDeletePlatformLinkV2' test.out

#- 93 AdminPutUserRolesV2
samples/cli/sample-apps Iam adminPutUserRolesV2 \
    --body '["jRBH9Nis", "SoDMznQZ", "5sntoh3u"]' \
    --namespace '2AnAz9j3' \
    --userId 'qE0XjUnq' \
    > test.out 2>&1
eval_tap $? 93 'AdminPutUserRolesV2' test.out

#- 94 AdminCreateUserRolesV2
samples/cli/sample-apps Iam adminCreateUserRolesV2 \
    --body '["wjRvTMun", "d2zpDDKV", "WrGHRbAh"]' \
    --namespace 'n2dl2LNk' \
    --userId '5MGzlO66' \
    > test.out 2>&1
eval_tap $? 94 'AdminCreateUserRolesV2' test.out

#- 95 PublicGetCountryAgeRestriction
samples/cli/sample-apps Iam publicGetCountryAgeRestriction \
    --countryCode 'TfDy6f3m' \
    --namespace 'zSrsVsZS' \
    > test.out 2>&1
eval_tap $? 95 'PublicGetCountryAgeRestriction' test.out

#- 96 PublicCreateUserV2
samples/cli/sample-apps Iam publicCreateUserV2 \
    --body '{"AuthType": "rLmQT86C", "Country": "e0wDSxvC", "DisplayName": "HcdDeWtW", "LoginId": "GJ0julGQ", "Password": "vpk6MH1z", "PasswordMD5Sum": "A0Tt4S0o"}' \
    --namespace 'k53oke4m' \
    > test.out 2>&1
eval_tap $? 96 'PublicCreateUserV2' test.out

#- 97 PublicForgotPasswordV2
samples/cli/sample-apps Iam publicForgotPasswordV2 \
    --body '{"Context": "N8ZKuDjf", "LanguageTag": "dYJwUmvc", "LoginID": "hvQE4ioP"}' \
    --namespace '8r0NNfYu' \
    > test.out 2>&1
eval_tap $? 97 'PublicForgotPasswordV2' test.out

#- 98 PublicResetPasswordV2
samples/cli/sample-apps Iam publicResetPasswordV2 \
    --body '{"Code": "2WOZt0YG", "LoginID": "rHv57UeI", "NewPassword": "Parvwaig"}' \
    --namespace '1d8aMjLb' \
    > test.out 2>&1
eval_tap $? 98 'PublicResetPasswordV2' test.out

#- 99 PublicGetUserByUserIDV2
samples/cli/sample-apps Iam publicGetUserByUserIDV2 \
    --namespace 'wTI0ytMF' \
    --userId 'uy6Je8Jf' \
    > test.out 2>&1
eval_tap $? 99 'PublicGetUserByUserIDV2' test.out

#- 100 PublicUpdateUserV2
samples/cli/sample-apps Iam publicUpdateUserV2 \
    --body '{"Country": "jvoWWmPj", "DateOfBirth": "LRjLDZkE", "DisplayName": "EoptiakS", "LanguageTag": "lArG7fWD"}' \
    --namespace 'pFyuOj3V' \
    --userId 'vbkCYmVS' \
    > test.out 2>&1
eval_tap $? 100 'PublicUpdateUserV2' test.out

#- 101 PublicGetUserBan
samples/cli/sample-apps Iam publicGetUserBan \
    --namespace 'XW5OdaKy' \
    --userId '9AY7txTR' \
    --activeOnly 'true' \
    > test.out 2>&1
eval_tap $? 101 'PublicGetUserBan' test.out

#- 102 PublicUpdatePasswordV2
samples/cli/sample-apps Iam publicUpdatePasswordV2 \
    --body '{"LanguageTag": "UVtnBnoB", "NewPassword": "cWHJ48FL", "OldPassword": "sPAhti4A"}' \
    --namespace 'gSRetILg' \
    --userId 'wrsJK8kq' \
    > test.out 2>&1
eval_tap $? 102 'PublicUpdatePasswordV2' test.out

#- 103 GetListJusticePlatformAccounts
samples/cli/sample-apps Iam getListJusticePlatformAccounts \
    --namespace 'Estpo2zr' \
    --userId 'qEi57TYt' \
    > test.out 2>&1
eval_tap $? 103 'GetListJusticePlatformAccounts' test.out

#- 104 PublicPlatformLinkV2
samples/cli/sample-apps Iam publicPlatformLinkV2 \
    --ticket 'KnkEnSRY' \
    --namespace 'Fpitmg3J' \
    --platformId 'VehjlZeP' \
    --userId 'pc3okCZe' \
    > test.out 2>&1
eval_tap $? 104 'PublicPlatformLinkV2' test.out

#- 105 PublicDeletePlatformLinkV2
samples/cli/sample-apps Iam publicDeletePlatformLinkV2 \
    --platformNamespace 'yzZ2vx9r' \
    --namespace '8lbwzXsL' \
    --platformId 'JoLfqhgc' \
    --userId 'Zv6iaDft' \
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
    --body '[{"field": "P2dWzLsw", "validation": {"allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "description": [{"language": "yWWSm80j", "message": ["dAxn3oDv", "1JQ3YPNI", "XhzwP1T0"]}, {"language": "sQPUbk2i", "message": ["oxr4TEfe", "B6WFIpA1", "RxrjYsdy"]}, {"language": "xc7WeFBU", "message": ["rZikCyjg", "8P1wlsRx", "PIa8TLHu"]}], "isCustomRegex": true, "letterCase": "eeLmqx7X", "maxLength": 41, "maxRepeatingAlphaNum": 59, "maxRepeatingSpecialCharacter": 78, "minCharType": 6, "minLength": 23, "regex": "NkKtcnIs", "specialCharacterLocation": "lJebX0Am", "specialCharacters": ["Xe1vQGjH", "kMarEJlM", "QNBrehnZ"]}}, {"field": "6mCZpa5o", "validation": {"allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "description": [{"language": "3TWjgVBh", "message": ["UNqd1u6o", "W3poRTde", "CHkL1yCE"]}, {"language": "GHglzGfA", "message": ["JZQWlC22", "V8AQhQIA", "uSbrlrJa"]}, {"language": "34n7ZO15", "message": ["Z4K2QT97", "Aabr8gbK", "KqswmWU4"]}], "isCustomRegex": true, "letterCase": "obZMMrxl", "maxLength": 73, "maxRepeatingAlphaNum": 20, "maxRepeatingSpecialCharacter": 7, "minCharType": 34, "minLength": 14, "regex": "Fxrhctwq", "specialCharacterLocation": "PzpzJCww", "specialCharacters": ["wTZDsvMb", "UqGyZXlm", "M0q3K5Qo"]}}, {"field": "iQnpjZb2", "validation": {"allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "description": [{"language": "6mvQY3ww", "message": ["20O7qaDW", "0wB5tWFA", "9mJeVxb5"]}, {"language": "jWxYETfC", "message": ["D0YLCAVm", "qHl6AHEJ", "lWx3ZQCL"]}, {"language": "Ug1UptVr", "message": ["yeH097cs", "xOiAs5VB", "znVKlfqA"]}], "isCustomRegex": true, "letterCase": "rDmM56y8", "maxLength": 8, "maxRepeatingAlphaNum": 8, "maxRepeatingSpecialCharacter": 22, "minCharType": 94, "minLength": 71, "regex": "vKjcLJcE", "specialCharacterLocation": "pj0olsv0", "specialCharacters": ["nl9LcZsg", "D31aAax9", "8Qowkmtk"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'RYeQ0DIf' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace 'yLQsubLb' \
    --after 'vcPWa7HK' \
    --before '7OBraJEe' \
    --limit '53' \
    > test.out 2>&1
eval_tap $? 111 'ListAdminsV3' test.out

#- 112 AdminGetAgeRestrictionStatusV3
samples/cli/sample-apps Iam adminGetAgeRestrictionStatusV3 \
    --namespace '5bKB2Nkr' \
    > test.out 2>&1
eval_tap $? 112 'AdminGetAgeRestrictionStatusV3' test.out

#- 113 AdminUpdateAgeRestrictionConfigV3
samples/cli/sample-apps Iam adminUpdateAgeRestrictionConfigV3 \
    --body '{"ageRestriction": 80, "enable": true}' \
    --namespace '26ugTur0' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace 'qRZrB8GD' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --body '{"ageRestriction": 7}' \
    --countryCode 'mPofDAls' \
    --namespace '3PqD7Tnz' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace '7R0RgbEo' \
    --activeOnly 'true' \
    --banType 'WettFg2g' \
    --limit '13' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminGetBansTypeWithNamespaceV3
samples/cli/sample-apps Iam adminGetBansTypeWithNamespaceV3 \
    --namespace 'oRGnyOGl' \
    > test.out 2>&1
eval_tap $? 117 'AdminGetBansTypeWithNamespaceV3' test.out

#- 118 AdminGetClientsByNamespaceV3
samples/cli/sample-apps Iam adminGetClientsByNamespaceV3 \
    --namespace 'm6HMj8N1' \
    --limit '87' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 118 'AdminGetClientsByNamespaceV3' test.out

#- 119 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --body '{"audiences": ["FtKaJEjv", "hBGcBu99", "SSr6LNAl"], "baseUri": "e6cnywl6", "clientId": "tvCSiExL", "clientName": "h3bY61oT", "clientPermissions": [{"action": 17, "resource": "ZNuB3zX5", "schedAction": 98, "schedCron": "QTAgR5Z1", "schedRange": ["6Kw19y7g", "TjlXjywI", "fFvAGcyQ"]}, {"action": 88, "resource": "UrNt5TUt", "schedAction": 12, "schedCron": "wh6Hw1yI", "schedRange": ["ZQ1GjOQS", "KLQj30jO", "fBEqkZhk"]}, {"action": 26, "resource": "BzWrHkad", "schedAction": 99, "schedCron": "8tevugCJ", "schedRange": ["Cu6ttrVw", "IOGwDeBs", "G5YCTZvW"]}], "clientPlatform": "VkqtbYBZ", "deletable": true, "namespace": "8Eb3JfVO", "oauthClientType": "lj1Q34zO", "redirectUri": "Sxzhsb1E", "secret": "oz6rTOGT"}' \
    --namespace 'CgWPncrR' \
    > test.out 2>&1
eval_tap $? 119 'AdminCreateClientV3' test.out

#- 120 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'NhYad0qX' \
    --namespace '1Bh6IiiZ' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 121 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'KqJuAsPt' \
    --namespace 'bSX33k35' \
    > test.out 2>&1
eval_tap $? 121 'AdminDeleteClientV3' test.out

#- 122 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --body '{"audiences": ["3apGU9Fa", "IOPXw0xa", "EJSpnQyZ"], "baseUri": "l74XSTQc", "clientName": "JipFU0ok", "clientPermissions": [{"action": 67, "resource": "dCYj9cfj", "schedAction": 25, "schedCron": "g0HANrUj", "schedRange": ["8Zx3xKl0", "vw9XYL4c", "0N3VK4qP"]}, {"action": 49, "resource": "S3sHOZZZ", "schedAction": 89, "schedCron": "uJIzZ7Sd", "schedRange": ["WONxI3G7", "FaL2L5z4", "AQT4pDF3"]}, {"action": 98, "resource": "MgLSanBm", "schedAction": 89, "schedCron": "YpldbiRB", "schedRange": ["NV4B9cam", "OSWGCCnq", "z1Hc02SH"]}], "clientPlatform": "CYJqoJhU", "deletable": false, "namespace": "ndPX8A6w", "redirectUri": "HXvBZd4x"}' \
    --clientId '26q3CtR4' \
    --namespace 'ayMLMJdz' \
    > test.out 2>&1
eval_tap $? 122 'AdminUpdateClientV3' test.out

#- 123 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --body '{"permissions": [{"action": 56, "resource": "QMtHXi3r"}, {"action": 73, "resource": "0JdSYSnr"}, {"action": 84, "resource": "rp4YPrc3"}]}' \
    --clientId 'xj3rvZBv' \
    --namespace 'KErLKdf9' \
    > test.out 2>&1
eval_tap $? 123 'AdminUpdateClientPermissionV3' test.out

#- 124 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --body '{"permissions": [{"action": 15, "resource": "bRCvsuN9"}, {"action": 13, "resource": "jwGtCHPO"}, {"action": 41, "resource": "XLVZrNeo"}]}' \
    --clientId '7u5HUFEh' \
    --namespace 'CnUMRsiH' \
    > test.out 2>&1
eval_tap $? 124 'AdminAddClientPermissionsV3' test.out

#- 125 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '82' \
    --clientId 'FBRreOcL' \
    --namespace 'o7MryYHf' \
    --resource 'frGG8jqY' \
    > test.out 2>&1
eval_tap $? 125 'AdminDeleteClientPermissionV3' test.out

#- 126 RetrieveAllThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 \
    --namespace 'wmnxJOXQ' \
    > test.out 2>&1
eval_tap $? 126 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 127 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 \
    --namespace 'UinDPGLx' \
    > test.out 2>&1
eval_tap $? 127 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 128 RetrieveAllSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 \
    --namespace 'r70aJnZc' \
    --limit '81' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 128 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 129 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace 'e2dECZIV' \
    --platformId 'lRTAfVDd' \
    > test.out 2>&1
eval_tap $? 129 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 130 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --body '{"ACSURL": "BGgB6exm", "AWSCognitoRegion": "z2d0JmOy", "AWSCognitoUserPool": "Y5n2lxD7", "AllowedClients": ["hjqAnL7L", "6L8BjDHn", "9kITWqrj"], "AppId": "Z0NINzP3", "AuthorizationEndpoint": "FGs8arQ0", "ClientId": "Y2TyjQbi", "Environment": "VS2bC0un", "FederationMetadataURL": "EriezPWh", "GenericOauthFlow": true, "IsActive": true, "Issuer": "ADQAgpSL", "JWKSEndpoint": "7ymsVONx", "KeyID": "jOMubo6e", "NetflixCertificates": {"encryptedPrivateKey": "4lC7fLza", "encryptedPrivateKeyName": "iDGDejYd", "publicCertificate": "C2Ii4Pkd", "publicCertificateName": "9AjXOQ3P", "rootCertificate": "1E52us5K", "rootCertificateName": "0Ur3aAph"}, "OrganizationId": "EuF7XJaq", "PlatformName": "05dXBWhj", "RedirectUri": "Y6rtU1Dp", "RegisteredDomains": [{"affectedClientIDs": ["tXnUGjAq", "z48bAyi2", "0RkEw3d8"], "domain": "6mQHmF2y", "namespaces": ["2fuK9wKG", "Y2EitMoy", "8la3I3vr"], "roleId": "zN12GZQY"}, {"affectedClientIDs": ["vdNN3Bpc", "z1JIwfiu", "bRTRh6E6"], "domain": "dmV8vZ5W", "namespaces": ["KrHwmurm", "jkwv2cNY", "zxJWkFvE"], "roleId": "Pr8iuQCJ"}, {"affectedClientIDs": ["bdbAAtiV", "Me52oLhp", "tEYP83Gm"], "domain": "G8xyFyfq", "namespaces": ["WmgP23HR", "E0U8hdCQ", "ca7E375S"], "roleId": "S4xxTmgi"}], "Secret": "Ao7PNwcv", "TeamID": "5extLdpE", "TokenAuthenticationType": "gB0Fc0NX", "TokenClaimsMapping": {"zxWX9syT": "S3zxBhjd", "kaPS9ZL2": "61wolyA0", "XKBCgpQt": "Pha5EBJa"}, "TokenEndpoint": "EoC35tUd"}' \
    --namespace 'EhweJD6O' \
    --platformId 'vphfMAEL' \
    > test.out 2>&1
eval_tap $? 130 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 131 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace 'us26pn8j' \
    --platformId 'sEqCvdrX' \
    > test.out 2>&1
eval_tap $? 131 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 132 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --body '{"ACSURL": "bbTQuTkt", "AWSCognitoRegion": "JRR4ybk5", "AWSCognitoUserPool": "zfC2wser", "AllowedClients": ["FGgURBs7", "qeFL8DYV", "IJom7PgF"], "AppId": "a4fGWcmd", "AuthorizationEndpoint": "WxGrLnaj", "ClientId": "ZRHovtM6", "Environment": "2TwC6gCP", "FederationMetadataURL": "eLesfABZ", "GenericOauthFlow": true, "IsActive": true, "Issuer": "KNjpe05w", "JWKSEndpoint": "Xew2Ppam", "KeyID": "g8Zg0upQ", "NetflixCertificates": {"encryptedPrivateKey": "OQH7w1Rv", "encryptedPrivateKeyName": "pl3fIabo", "publicCertificate": "ypkSosIX", "publicCertificateName": "2kmYf04J", "rootCertificate": "PktGV90B", "rootCertificateName": "BAkfNi4t"}, "OrganizationId": "1cIoqQah", "PlatformName": "eGPT2bS7", "RedirectUri": "CZUFIttR", "RegisteredDomains": [{"affectedClientIDs": ["UzQjKFUS", "xY4s3lBA", "7zvuCj8p"], "domain": "aQST4uUa", "namespaces": ["z7dZqMSf", "arA2eFjA", "wPMoJF5i"], "roleId": "VnOz6exf"}, {"affectedClientIDs": ["H9WyTzM6", "TDrsQOey", "URsxI787"], "domain": "Kr3FmSSI", "namespaces": ["Sb4FU0Yg", "JwhrqBRu", "ZYUOnXU3"], "roleId": "qu1EophK"}, {"affectedClientIDs": ["j1PYoQWv", "oJehmBEg", "mgPbyMiB"], "domain": "e6sNIiDv", "namespaces": ["Nd1WzVSB", "7mq2YKGa", "mdq3fuGR"], "roleId": "drlaDCk9"}], "Secret": "Fepgt9da", "TeamID": "ZrXiRaG7", "TokenAuthenticationType": "VcXKfYoL", "TokenClaimsMapping": {"8m7vQLwf": "6VWROczv", "UTst8Au4": "VLSiBoVz", "Uis3OEcg": "NEjwc6DJ"}, "TokenEndpoint": "yMTgLf7O"}' \
    --namespace 'hDugzoJA' \
    --platformId 'r0qg65zi' \
    > test.out 2>&1
eval_tap $? 132 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 133 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --body '{"affectedClientIDs": ["i5TqBlSW", "BaOLQn8D", "JokhdZp6"], "assignedNamespaces": ["gyz0wkOl", "OEPiF8ds", "dRaRu2h8"], "domain": "yApjynTU", "roleId": "UB07YuYy"}' \
    --namespace 'XX72byZM' \
    --platformId 'qMA2BxZm' \
    > test.out 2>&1
eval_tap $? 133 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 134 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --body '{"domain": "rdbHZKfw"}' \
    --namespace 'Hjsfk7bc' \
    --platformId 'EwPcbrKC' \
    > test.out 2>&1
eval_tap $? 134 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 135 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace 'syn9r770' \
    --platformId 'P9VJO8XX' \
    > test.out 2>&1
eval_tap $? 135 'RetrieveSSOLoginPlatformCredential' test.out

#- 136 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --body '{"acsUrl": "rE3lsvxl", "apiKey": "RxF8S51d", "appId": "mt1vVwgC", "federationMetadataUrl": "20uLwUr6", "isActive": false, "redirectUri": "wucwNJkj", "secret": "ny6JRb74", "ssoUrl": "dKnjir9Y"}' \
    --namespace 'tNWytgoY' \
    --platformId 'IUnT8X5i' \
    > test.out 2>&1
eval_tap $? 136 'AddSSOLoginPlatformCredential' test.out

#- 137 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace 'LpB4lKwj' \
    --platformId '0LpelyTt' \
    > test.out 2>&1
eval_tap $? 137 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 138 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --body '{"acsUrl": "XCQmAi0k", "apiKey": "l2tuCczu", "appId": "vMcRXqfo", "federationMetadataUrl": "tFMALGPE", "isActive": false, "redirectUri": "sl9G68tl", "secret": "mSZjTqva", "ssoUrl": "DqzZtFzf"}' \
    --namespace 'pdl0duoZ' \
    --platformId 'mF8s5eya' \
    > test.out 2>&1
eval_tap $? 138 'UpdateSSOPlatformCredential' test.out

#- 139 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace 'iiz4eYul' \
    --platformId 'Iz2zk1na' \
    --platformUserId 'CrdYMsgq' \
    > test.out 2>&1
eval_tap $? 139 'AdminGetUserByPlatformUserIDV3' test.out

#- 140 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace 'A5iJaIh5' \
    --roleId 'IX3CR8Um' \
    --after '5' \
    --before '91' \
    --limit '69' \
    > test.out 2>&1
eval_tap $? 140 'GetAdminUsersByRoleIdV3' test.out

#- 141 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace 'AumnYDlN' \
    --emailAddress 'uFvlE3Gf' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByEmailAddressV3' test.out

#- 142 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --body '{"userIds": ["Y6Bw7ct8", "1gBvYZ4X", "tUXwHWzA"]}' \
    --namespace 'sfpeD1rg' \
    > test.out 2>&1
eval_tap $? 142 'AdminListUserIDByUserIDsV3' test.out

#- 143 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --body '{"emailAddresses": ["GSStD94p", "KjfKmzuO", "9dD3eLfY"], "isAdmin": false, "roles": ["7tihbB72", "DFJNsK8P", "nteCK2xZ"]}' \
    --namespace '1K8HuWEf' \
    > test.out 2>&1
eval_tap $? 143 'AdminInviteUserV3' test.out

#- 144 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace 'Pl04I6e8' \
    --limit '49' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUsersV3' test.out

#- 145 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace '7XQEgddC' \
    --by '5h15mxxQ' \
    --endDate '2DOAvoRj' \
    --limit '83' \
    --offset '45' \
    --platformBy 'sJRucoGk' \
    --platformId 'RtHXH7g8' \
    --query 'yQwUW7Ku' \
    --startDate '3R7JB8OB' \
    > test.out 2>&1
eval_tap $? 145 'AdminSearchUserV3' test.out

#- 146 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --body '{"listEmailAddressRequest": ["y8eGGqvt", "Ee1hfpYx", "WoI0qYLL"]}' \
    --namespace 'jlt2hA7i' \
    > test.out 2>&1
eval_tap $? 146 'AdminGetBulkUserByEmailAddressV3' test.out

#- 147 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace 'wTF5cSnX' \
    --userId '8pxAn7QC' \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByUserIdV3' test.out

#- 148 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --body '{"avatarUrl": "h4zQUESm", "country": "AHIWmeMW", "dateOfBirth": "dH9e2nJZ", "displayName": "pEXWXwq2", "languageTag": "TYFzp9Nb", "userName": "Vc6sYEYZ"}' \
    --namespace '0zloIrgf' \
    --userId '0H6OD8lT' \
    > test.out 2>&1
eval_tap $? 148 'AdminUpdateUserV3' test.out

#- 149 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace 'z72CfLRW' \
    --userId 'PNkfLHqm' \
    --activeOnly 'true' \
    --after 'gLAKi9a3' \
    --before 'H3CwDMq4' \
    --limit '52' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetUserBanV3' test.out

#- 150 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --body '{"ban": "t6XFQbo9", "comment": "xnMXQW0z", "endDate": "rGi7ku1B", "reason": "HK8uqp51", "skipNotif": false}' \
    --namespace 'O7sB5Nsr' \
    --userId '7p4FxLZS' \
    > test.out 2>&1
eval_tap $? 150 'AdminBanUserV3' test.out

#- 151 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --body '{"enabled": true, "skipNotif": true}' \
    --banId '6IkGtrgs' \
    --namespace 'yfq0sTSy' \
    --userId 'RV2J8xeZ' \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserBanV3' test.out

#- 152 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --body '{"context": "XntVDxHM", "emailAddress": "W2wHKvSC", "languageTag": "33XZStrn"}' \
    --namespace 'Vm6PUlmp' \
    --userId 'S9L0kndH' \
    > test.out 2>&1
eval_tap $? 152 'AdminSendVerificationCodeV3' test.out

#- 153 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --body '{"Code": "9QPqmKp9", "ContactType": "fAtJkIBk", "LanguageTag": "FmQwTccZ", "validateOnly": false}' \
    --namespace '1H7gFVLC' \
    --userId 'RTwhMu7A' \
    > test.out 2>&1
eval_tap $? 153 'AdminVerifyAccountV3' test.out

#- 154 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace '6nxsncea' \
    --userId 'lieC4VaY' \
    > test.out 2>&1
eval_tap $? 154 'GetUserVerificationCode' test.out

#- 155 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace 'fbtMqKqv' \
    --userId 'L6JRJyzP' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetUserDeletionStatusV3' test.out

#- 156 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --body '{"enabled": false}' \
    --namespace 'QNcCbxLn' \
    --userId '7waxQNgI' \
    > test.out 2>&1
eval_tap $? 156 'AdminUpdateUserDeletionStatusV3' test.out

#- 157 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --body '{"code": "h2tUPnIC", "country": "4IfpM3Hh", "dateOfBirth": "e75botvr", "displayName": "dcf4Febf", "emailAddress": "zX2pjMXh", "password": "8pzXwyw1", "validateOnly": true}' \
    --namespace 'qglU2tIj' \
    --userId 'YPwm3qMJ' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpgradeHeadlessAccountV3' test.out

#- 158 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace 'MuDNzREp' \
    --userId '6bGvr9Bt' \
    > test.out 2>&1
eval_tap $? 158 'AdminDeleteUserInformationV3' test.out

#- 159 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace 'V90KWHPj' \
    --userId 'fg3vox1k' \
    --after '0.4491167762243713' \
    --before '0.9171900937960638' \
    --limit '89' \
    > test.out 2>&1
eval_tap $? 159 'AdminGetUserLoginHistoriesV3' test.out

#- 160 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --body '{"Permissions": [{"Action": 53, "Resource": "GvW6gna7", "SchedAction": 23, "SchedCron": "I8D5yjQy", "SchedRange": ["AlVzvk24", "U9EpVB6d", "aLFZnq4x"]}, {"Action": 8, "Resource": "i5QDU99Y", "SchedAction": 17, "SchedCron": "2ywVDPGh", "SchedRange": ["M1Z5ZTtu", "Ev8boeZ9", "QMI7XQU2"]}, {"Action": 75, "Resource": "TI6pe259", "SchedAction": 36, "SchedCron": "cKFWiMOZ", "SchedRange": ["AweC9u1M", "Jiaj7ucu", "I4krk5D1"]}]}' \
    --namespace 'bKAtIrOB' \
    --userId 'gHwcHJLM' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserPermissionV3' test.out

#- 161 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --body '{"Permissions": [{"Action": 29, "Resource": "VEKnBHvv", "SchedAction": 24, "SchedCron": "DhIeavvP", "SchedRange": ["kPKzdNWw", "pJp2nx21", "uvvCK0nn"]}, {"Action": 70, "Resource": "nhP5fThZ", "SchedAction": 36, "SchedCron": "dpRJck4s", "SchedRange": ["y8msvvxx", "iyu90JZ0", "cPRO4bfh"]}, {"Action": 70, "Resource": "DlOsZDPt", "SchedAction": 84, "SchedCron": "B9UdlT7z", "SchedRange": ["R3gVpNaZ", "8S4Q5dnk", "SPuOmg6V"]}]}' \
    --namespace '0ifqK1z1' \
    --userId 'KEb7Rhxy' \
    > test.out 2>&1
eval_tap $? 161 'AdminAddUserPermissionsV3' test.out

#- 162 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --body '[{"Action": 66, "Resource": "p7TCw6IY"}, {"Action": 53, "Resource": "CYS1jiGA"}, {"Action": 58, "Resource": "ux2d0ox8"}]' \
    --namespace 'KFe7DUVI' \
    --userId 'dEqTgSRT' \
    > test.out 2>&1
eval_tap $? 162 'AdminDeleteUserPermissionBulkV3' test.out

#- 163 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '25' \
    --namespace 'q7QNhU1d' \
    --resource 'TvWe9OQE' \
    --userId 'eW3XEIrF' \
    > test.out 2>&1
eval_tap $? 163 'AdminDeleteUserPermissionV3' test.out

#- 164 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace '1hutvnbd' \
    --userId '99yvdnoH' \
    --after 'yMxS4I6l' \
    --before '5BsWF6XF' \
    --limit '19' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserPlatformAccountsV3' test.out

#- 165 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace '37FKSL8Z' \
    --userId '5Ex5UMaG' \
    > test.out 2>&1
eval_tap $? 165 'AdminGetListJusticePlatformAccounts' test.out

#- 166 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace '9jHwn6ty' \
    --targetNamespace 'xbUmyu5m' \
    --userId 'KniSkB0o' \
    > test.out 2>&1
eval_tap $? 166 'AdminCreateJusticeUser' test.out

#- 167 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --body '{"platformId": "1qTSLHo5", "platformUserId": "nHm8l9Eo"}' \
    --namespace 'D0jHQmbZ' \
    --userId 'ZqOoLYNh' \
    > test.out 2>&1
eval_tap $? 167 'AdminLinkPlatformAccount' test.out

#- 168 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --body '{"platformNamespace": "v2Y0J7lN"}' \
    --namespace 'oO1mHKz2' \
    --platformId '2TDTj2fN' \
    --userId 'JjIVE0EM' \
    > test.out 2>&1
eval_tap $? 168 'AdminPlatformUnlinkV3' test.out

#- 169 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --ticket 'GtCNU33T' \
    --namespace 'K5Wsw5Wo' \
    --platformId 'bMzCX6h1' \
    --userId 'WJJTxRy5' \
    > test.out 2>&1
eval_tap $? 169 'AdminPlatformLinkV3' test.out

#- 170 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --body '["FbrlBcmv", "aY4en8rX", "fP4wFpbV"]' \
    --namespace 'b622AcwD' \
    --userId 'RyKWddEO' \
    > test.out 2>&1
eval_tap $? 170 'AdminDeleteUserRolesV3' test.out

#- 171 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --body '[{"namespace": "YLcPC2u1", "roleId": "i30fD8Ss"}, {"namespace": "cjCu4dYy", "roleId": "JZdlzX1A"}, {"namespace": "ZEjYUkUy", "roleId": "yQT5qArW"}]' \
    --namespace 'bKrxCA6z' \
    --userId 'XX9NR4PK' \
    > test.out 2>&1
eval_tap $? 171 'AdminSaveUserRoleV3' test.out

#- 172 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace 'AhTSzYNO' \
    --roleId 'Z91HMy6U' \
    --userId 'wsAx65VZ' \
    > test.out 2>&1
eval_tap $? 172 'AdminAddUserRoleV3' test.out

#- 173 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace 'K4tAuvJE' \
    --roleId 'Gv299PsA' \
    --userId '5dPiPF0g' \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserRoleV3' test.out

#- 174 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --body '{"enabled": true, "reason": "L1SZ9Evm"}' \
    --namespace 'XaUbpXfT' \
    --userId 'j24QIRCy' \
    > test.out 2>&1
eval_tap $? 174 'AdminUpdateUserStatusV3' test.out

#- 175 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace 'FBNCHuyn' \
    --userId 'yqPoHx9B' \
    > test.out 2>&1
eval_tap $? 175 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 176 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --body '{"newSecret": "U9dpbWNF"}' \
    --clientId 'CFFHMtan' \
    --namespace '4FF2Z9DN' \
    > test.out 2>&1
eval_tap $? 176 'AdminUpdateClientSecretV3' test.out

#- 177 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'WPqz1xAo' \
    --before 'ZL7mN6Oh' \
    --isWildcard 'false' \
    --limit '11' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetRolesV3' test.out

#- 178 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "managers": [{"displayName": "bcQ7hyKj", "namespace": "2QS1tWg8", "userId": "Ob0PrWQV"}, {"displayName": "PyM5nPim", "namespace": "1o73LMMM", "userId": "mJr43FLm"}, {"displayName": "tQcCPoUQ", "namespace": "xFYJMCpP", "userId": "3QuuXaJm"}], "members": [{"displayName": "jiyF4khp", "namespace": "J9N7Dw6f", "userId": "T4a8zxSh"}, {"displayName": "rAn3Q4Q3", "namespace": "Pc2gh4Rq", "userId": "CXCXS420"}, {"displayName": "1wGDvFpR", "namespace": "dABiXhnO", "userId": "upSlk8Ok"}], "permissions": [{"action": 85, "resource": "Vz4YfnZ3", "schedAction": 64, "schedCron": "KX4rkq0i", "schedRange": ["OiFTdH8z", "34qpjDBq", "CjOsG5kp"]}, {"action": 41, "resource": "pND3Rk0Q", "schedAction": 2, "schedCron": "uzIHJrcL", "schedRange": ["PFfaeCNt", "azrLEYSP", "HVIW99m8"]}, {"action": 27, "resource": "e8Wv79Of", "schedAction": 53, "schedCron": "WOCb04fA", "schedRange": ["6Ff5VkOF", "LHYLTiCQ", "NEan6eTf"]}], "roleName": "vNBxvfz5"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminCreateRoleV3' test.out

#- 179 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'wtcYejiP' \
    > test.out 2>&1
eval_tap $? 179 'AdminGetRoleV3' test.out

#- 180 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId '5eRpo1f6' \
    > test.out 2>&1
eval_tap $? 180 'AdminDeleteRoleV3' test.out

#- 181 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --body '{"deletable": false, "isWildcard": false, "roleName": "lfOIs0ns"}' \
    --roleId 'b4QnIynz' \
    > test.out 2>&1
eval_tap $? 181 'AdminUpdateRoleV3' test.out

#- 182 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'McnRCNY4' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetRoleAdminStatusV3' test.out

#- 183 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'wzhj4PFC' \
    > test.out 2>&1
eval_tap $? 183 'AdminUpdateAdminRoleStatusV3' test.out

#- 184 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'ocQxP0bI' \
    > test.out 2>&1
eval_tap $? 184 'AdminRemoveRoleAdminV3' test.out

#- 185 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'aXG6MdJp' \
    --after '95olVRzH' \
    --before 'D3490FQc' \
    --limit '94' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleManagersV3' test.out

#- 186 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --body '{"managers": [{"displayName": "SfJ3lHNO", "namespace": "bVCeFQps", "userId": "u3WeoUC6"}, {"displayName": "OZ3treBo", "namespace": "cohWab9Z", "userId": "Ux4zVN17"}, {"displayName": "1Z12pk3B", "namespace": "cHpKoy2g", "userId": "iw0FWgYC"}]}' \
    --roleId '2k5NDEay' \
    > test.out 2>&1
eval_tap $? 186 'AdminAddRoleManagersV3' test.out

#- 187 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --body '{"managers": [{"displayName": "YgmsRsdJ", "namespace": "JjI6nelK", "userId": "oPTTVOvd"}, {"displayName": "S3c8djUZ", "namespace": "4663Fyl4", "userId": "qWGVJcoV"}, {"displayName": "hekGSxUU", "namespace": "vOCnY5mG", "userId": "CSIBbIrd"}]}' \
    --roleId '6IARzR8O' \
    > test.out 2>&1
eval_tap $? 187 'AdminRemoveRoleManagersV3' test.out

#- 188 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'nxSVkgqq' \
    --after '7JmCsqE5' \
    --before 'oevU6k0H' \
    --limit '15' \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleMembersV3' test.out

#- 189 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --body '{"members": [{"displayName": "n0Eq8pKw", "namespace": "Kf7p5Psj", "userId": "PI5zATp3"}, {"displayName": "HjFcFHRJ", "namespace": "34qZH51t", "userId": "JoA2lyqp"}, {"displayName": "N3NJSevH", "namespace": "2spvvXXc", "userId": "RRdSDBf2"}]}' \
    --roleId '82yjpdqt' \
    > test.out 2>&1
eval_tap $? 189 'AdminAddRoleMembersV3' test.out

#- 190 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --body '{"members": [{"displayName": "cknsgY5M", "namespace": "CYn36iPn", "userId": "vonqxmMs"}, {"displayName": "mcfPcLN6", "namespace": "OezDfUXk", "userId": "qilFQxC3"}, {"displayName": "VTSHVPCs", "namespace": "xyjPhC7c", "userId": "k4u474Sq"}]}' \
    --roleId 'WhV2QyBC' \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleMembersV3' test.out

#- 191 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --body '{"permissions": [{"action": 69, "resource": "qj9uiUO3", "schedAction": 66, "schedCron": "8wFia1eC", "schedRange": ["IUN5PNOT", "W2U4q861", "9sUFQBro"]}, {"action": 98, "resource": "nD1EFsw5", "schedAction": 67, "schedCron": "eSIGU4Ek", "schedRange": ["fEVrUvmx", "5MxmAdF6", "hxVqD5dD"]}, {"action": 54, "resource": "Ma29CJy2", "schedAction": 11, "schedCron": "vMOeEn2r", "schedRange": ["Zr3UBxqh", "CORU42jM", "b8EKXXaI"]}]}' \
    --roleId 'CnSa6jsZ' \
    > test.out 2>&1
eval_tap $? 191 'AdminUpdateRolePermissionsV3' test.out

#- 192 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --body '{"permissions": [{"action": 78, "resource": "T3VmGOqA", "schedAction": 98, "schedCron": "SNX9k9Wd", "schedRange": ["5Dz9xNCk", "AiiYbXHy", "P9vdUy1Y"]}, {"action": 98, "resource": "GyTg3UFw", "schedAction": 33, "schedCron": "bXsH0AEn", "schedRange": ["VsntPZXE", "DYQAbfpn", "FMPc8Qh5"]}, {"action": 15, "resource": "4AMGP8TJ", "schedAction": 99, "schedCron": "HMBCu1z6", "schedRange": ["6dgnNMfp", "QqCir2cC", "WQsxLfxF"]}]}' \
    --roleId 'EqOGeMJu' \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRolePermissionsV3' test.out

#- 193 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --body '["s1H8fZIF", "aio5RQF4", "rgyOPjz9"]' \
    --roleId 'yacH2fXn' \
    > test.out 2>&1
eval_tap $? 193 'AdminDeleteRolePermissionsV3' test.out

#- 194 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '46' \
    --resource 'vkjcgR7G' \
    --roleId 'SIA87yI7' \
    > test.out 2>&1
eval_tap $? 194 'AdminDeleteRolePermissionV3' test.out

#- 195 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 195 'AdminGetMyUserV3' test.out

#- 196 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'EWnjAHwy' \
    --extendExp 'true' \
    --redirectUri 'HtUuh62V' \
    --password 'VF8kLsaQ' \
    --requestId 'PckgKCtG' \
    --userName 'qnoDZjx9' \
    > test.out 2>&1
eval_tap $? 196 'UserAuthenticationV3' test.out

#- 197 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'dWWvEFda' \
    --linkingToken 'pKuTln9u' \
    --password 'mQH0z2dn' \
    --username 'lo4UQX0l' \
    > test.out 2>&1
eval_tap $? 197 'AuthenticationWithPlatformLinkV3' test.out

#- 198 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'false' \
    --linkingToken 'ynsIneeo' \
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
    --namespace 'LzWT4VL0' \
    --platformId '8tvmkypd' \
    --userId '7zUXiJmU' \
    > test.out 2>&1
eval_tap $? 201 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 202 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace 'kl3tt0KS' \
    --userId 'jsVRzkI2' \
    > test.out 2>&1
eval_tap $? 202 'RevokeUserV3' test.out

#- 203 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'PaV1Snv5' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'true' \
    --redirectUri 'CPp1FsBA' \
    --scope 'a6qkoVA3' \
    --state 'ICDXuHxa' \
    --targetAuthPage 'WLoIOF6u' \
    --clientId '0w6fjy0l' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 203 'AuthorizeV3' test.out

#- 204 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'eGaVclfA' \
    > test.out 2>&1
eval_tap $? 204 'TokenIntrospectionV3' test.out

#- 205 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 205 'GetJWKSV3' test.out

#- 206 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor '89BjHHvx' \
    --mfaToken '0jCWm0tW' \
    > test.out 2>&1
eval_tap $? 206 'Change2faMethod' test.out

#- 207 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'pgV1J4Ig' \
    --factor 'IimXVak5' \
    --mfaToken '05FztPLP' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 207 'Verify2faCode' test.out

#- 208 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace 'CyrIdt1t' \
    --platformId 'cztGPQTx' \
    --userId '5sTxtCrI' \
    > test.out 2>&1
eval_tap $? 208 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 209 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'p99u2pnZ' \
    --clientId 'fvEo61hc' \
    --redirectUri 'pHZYZlbG' \
    --requestId 'BJeDkDXO' \
    > test.out 2>&1
eval_tap $? 209 'AuthCodeRequestV3' test.out

#- 210 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --clientId 'nPPpIr1z' \
    --createHeadless 'true' \
    --deviceId 'A0hhS3cg' \
    --platformToken '4QlelUYv' \
    --platformId 'cut7y9JP' \
    > test.out 2>&1
eval_tap $? 210 'PlatformTokenGrantV3' test.out

#- 211 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 211 'GetRevocationListV3' test.out

#- 212 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token '4t7jZ3nl' \
    > test.out 2>&1
eval_tap $? 212 'TokenRevocationV3' test.out

#- 213 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --deviceId 'i9lkuExY' \
    --clientId 'o9ziF1Rn' \
    --code 'SH2i9zWY' \
    --codeVerifier 'VfbtCcc8' \
    --extendExp 'true' \
    --password 'KxW2oyJq' \
    --redirectUri 'KEAZyfmV' \
    --refreshToken 'MmuvBNop' \
    --username '3KCJX5Zp' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 213 'TokenGrantV3' test.out

#- 214 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'h1TvUNtQ' \
    > test.out 2>&1
eval_tap $? 214 'VerifyTokenV3' test.out

#- 215 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'EQT4Zy3z' \
    --code 'aMiyBr7d' \
    --error 'QhlSrXme' \
    --openidAssocHandle 'rfwAv5jz' \
    --openidClaimedId 'FS0dvrsv' \
    --openidIdentity 'lP6HabF5' \
    --openidMode 'EoTdpgrp' \
    --openidNs 'Z6ABW9a9' \
    --openidOpEndpoint 'tKGGRZnf' \
    --openidResponseNonce 'PRfZOCdx' \
    --openidReturnTo 'rjcegI7Q' \
    --openidSig 's4b9HRAV' \
    --openidSigned 'LZgYs0kb' \
    --state 'iYjgLQLm' \
    > test.out 2>&1
eval_tap $? 215 'PlatformAuthenticationV3' test.out

#- 216 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'KWhCxWBg' \
    > test.out 2>&1
eval_tap $? 216 'PublicGetInputValidations' test.out

#- 217 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace 'iH5PWqRD' \
    > test.out 2>&1
eval_tap $? 217 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 218 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace 'w5AXv2J7' \
    --clientId 'AQtArvdg' \
    > test.out 2>&1
eval_tap $? 218 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 219 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --body '{"platformUserIds": ["JsD50Zcq", "DDN0hNRf", "6BI7HTE0"]}' \
    --namespace '8l1l1lnA' \
    --platformId 'wZP8bx2F' \
    > test.out 2>&1
eval_tap $? 219 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 220 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace 'jfDESq1d' \
    --platformId 'szgVicH9' \
    --platformUserId '0JsTvRcu' \
    > test.out 2>&1
eval_tap $? 220 'PublicGetUserByPlatformUserIDV3' test.out

#- 221 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace 's7OxHlN9' \
    --requestId 'VpiCyG9b' \
    > test.out 2>&1
eval_tap $? 221 'PublicGetAsyncStatus' test.out

#- 222 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace '1k84cXXn' \
    --by 'hLKfP0fa' \
    --limit '55' \
    --offset '26' \
    --query '0Ak6qPnx' \
    > test.out 2>&1
eval_tap $? 222 'PublicSearchUserV3' test.out

#- 223 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --body '{"PasswordMD5Sum": "Yj1JXte8", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Mwvu3bwJ", "policyId": "awp1Ob2I", "policyVersionId": "RC06hpcd"}, {"isAccepted": true, "localizedPolicyVersionId": "i6WYFmEs", "policyId": "3RMWEB7d", "policyVersionId": "0yjdirv0"}, {"isAccepted": false, "localizedPolicyVersionId": "vN0is0jg", "policyId": "nib4emtI", "policyVersionId": "A8fmOeGk"}], "authType": "2wftUlVE", "code": "GyH8YyU2", "country": "qOXeFVSY", "dateOfBirth": "ynZzew7F", "displayName": "G2qt1fRO", "emailAddress": "MMBqnDfi", "password": "vVuQOxya", "reachMinimumAge": true}' \
    --namespace 'xIWPxmG5' \
    > test.out 2>&1
eval_tap $? 223 'PublicCreateUserV3' test.out

#- 224 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace 'XHvjmZVo' \
    --field 'f7s2OH8R' \
    --query '81rEBbJy' \
    > test.out 2>&1
eval_tap $? 224 'CheckUserAvailability' test.out

#- 225 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --body '{"userIds": ["W0WbfLhL", "D6zYIhyK", "isamOkZl"]}' \
    --namespace '3bQeKeBY' \
    > test.out 2>&1
eval_tap $? 225 'PublicBulkGetUsers' test.out

#- 226 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --body '{"emailAddress": "mJTOVjwW", "languageTag": "2WmgGHvQ"}' \
    --namespace 'T4bVjLVn' \
    > test.out 2>&1
eval_tap $? 226 'PublicSendRegistrationCode' test.out

#- 227 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --body '{"code": "t6yRyu25", "emailAddress": "eREJqcOf"}' \
    --namespace '5IDtdSCw' \
    > test.out 2>&1
eval_tap $? 227 'PublicVerifyRegistrationCode' test.out

#- 228 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --body '{"emailAddress": "YIdQx8UG", "languageTag": "BQQ4vz4s"}' \
    --namespace 'cFmjCSYv' \
    > test.out 2>&1
eval_tap $? 228 'PublicForgotPasswordV3' test.out

#- 229 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'x7fqwXXc' \
    --namespace 'FBsd2EPn' \
    > test.out 2>&1
eval_tap $? 229 'GetAdminInvitationV3' test.out

#- 230 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "IKE702Ou", "policyId": "PmX916aP", "policyVersionId": "h1p4TCZM"}, {"isAccepted": true, "localizedPolicyVersionId": "ETJ28U7L", "policyId": "zOI3I6VX", "policyVersionId": "iuOIjXg4"}, {"isAccepted": true, "localizedPolicyVersionId": "xc6VWwIj", "policyId": "BCWgQeCP", "policyVersionId": "DOiXrbB1"}], "authType": "EMAILPASSWD", "country": "S9xr40hX", "dateOfBirth": "FoXqOzb3", "displayName": "l5n5tIHP", "password": "dtwm4Umx", "reachMinimumAge": false}' \
    --invitationId 'UgocWFFM' \
    --namespace '5c9tGyzk' \
    > test.out 2>&1
eval_tap $? 230 'CreateUserFromInvitationV3' test.out

#- 231 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --body '{"avatarUrl": "SbmVOlDr", "country": "AzODco6F", "dateOfBirth": "Gq5mSK7U", "displayName": "YKN2Oith", "languageTag": "Q2ZnBnBd", "userName": "3zvxgNip"}' \
    --namespace 'yiCQyHXF' \
    > test.out 2>&1
eval_tap $? 231 'UpdateUserV3' test.out

#- 232 PublicUpdateUserV3
samples/cli/sample-apps Iam publicUpdateUserV3 \
    --body '{"avatarUrl": "WC8tKPUg", "country": "VAqEavbc", "dateOfBirth": "apW79NTx", "displayName": "gFLnVTLi", "languageTag": "ZKQuVpIW", "userName": "YSy8QqeR"}' \
    --namespace 'wPMz3NQH' \
    > test.out 2>&1
eval_tap $? 232 'PublicUpdateUserV3' test.out

#- 233 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --body '{"context": "gCSB5Mfz", "emailAddress": "gk7wcflL", "languageTag": "BnkHD8c0"}' \
    --namespace 'jvQwk0eI' \
    > test.out 2>&1
eval_tap $? 233 'PublicSendVerificationCodeV3' test.out

#- 234 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --body '{"code": "tMwm9qC8", "contactType": "qTBJCwfp", "languageTag": "FEQls8p8", "validateOnly": false}' \
    --namespace '5HnRZaG6' \
    > test.out 2>&1
eval_tap $? 234 'PublicUserVerificationV3' test.out

#- 235 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --body '{"code": "rYifErQf", "country": "wOT956jB", "dateOfBirth": "wMj7c6KR", "displayName": "Og4I8kFW", "emailAddress": "6RmDwFMC", "password": "HODs6mjX", "validateOnly": true}' \
    --namespace 'gOuEnpl0' \
    > test.out 2>&1
eval_tap $? 235 'PublicUpgradeHeadlessAccountV3' test.out

#- 236 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --body '{"emailAddress": "GkMe1a2C", "password": "kDQAj0sF"}' \
    --namespace 'Hx78oPta' \
    > test.out 2>&1
eval_tap $? 236 'PublicVerifyHeadlessAccountV3' test.out

#- 237 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --body '{"languageTag": "w6sKw64R", "newPassword": "hXBWghJJ", "oldPassword": "fNEyvGFc"}' \
    --namespace 'hXQr9whz' \
    > test.out 2>&1
eval_tap $? 237 'PublicUpdatePasswordV3' test.out

#- 238 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace 'zD2yZBs7' \
    --targetNamespace '9kG0srFp' \
    > test.out 2>&1
eval_tap $? 238 'PublicCreateJusticeUser' test.out

#- 239 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --redirectUri 'sbyELpzo' \
    --ticket 'KJulPqP6' \
    --namespace 'YM8vdpxH' \
    --platformId 'Zr6GFJVs' \
    > test.out 2>&1
eval_tap $? 239 'PublicPlatformLinkV3' test.out

#- 240 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --body '{"platformNamespace": "DCBI6ecs"}' \
    --namespace '1Qt7iD3t' \
    --platformId 'tHLqYNmp' \
    > test.out 2>&1
eval_tap $? 240 'PublicPlatformUnlinkV3' test.out

#- 241 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace 'Is9OfOyq' \
    --platformId 'MQx4eeSZ' \
    > test.out 2>&1
eval_tap $? 241 'PublicPlatformUnlinkAllV3' test.out

#- 242 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace 'Qevxu1Rc' \
    --platformId 'Pk6QABLh' \
    --clientId 'aJx3xdxC' \
    --redirectUri 'yMda3Rsu' \
    > test.out 2>&1
eval_tap $? 242 'PublicWebLinkPlatform' test.out

#- 243 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace '6KKE2sIO' \
    --platformId 'F9q5Tnr5' \
    --state 'HC9xETpo' \
    > test.out 2>&1
eval_tap $? 243 'PublicWebLinkPlatformEstablish' test.out

#- 244 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --body '{"code": "IRrmI3OV", "emailAddress": "46Hm1fvj", "newPassword": "qMOf296z"}' \
    --namespace 'EY8Tdre6' \
    > test.out 2>&1
eval_tap $? 244 'ResetPasswordV3' test.out

#- 245 PublicGetUserByUserIdV3
samples/cli/sample-apps Iam publicGetUserByUserIdV3 \
    --namespace 'cFGNqZPH' \
    --userId 'aAuzMrVI' \
    > test.out 2>&1
eval_tap $? 245 'PublicGetUserByUserIdV3' test.out

#- 246 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace 'W2rjisW7' \
    --userId 'cWozkyUM' \
    --activeOnly 'true' \
    --after 'tEaEvBjj' \
    --before 's5uPTbhm' \
    --limit '78' \
    > test.out 2>&1
eval_tap $? 246 'PublicGetUserBanHistoryV3' test.out

#- 247 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace 'Hu9QVig3' \
    --userId 'XmtInzpi' \
    > test.out 2>&1
eval_tap $? 247 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 248 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace 'g7IIk5VZ' \
    --userId 'Y8pD2yCr' \
    --after '0.5367257676507783' \
    --before '0.382927260075404' \
    --limit '80' \
    > test.out 2>&1
eval_tap $? 248 'PublicGetUserLoginHistoriesV3' test.out

#- 249 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace 't19xwVon' \
    --userId 'DP7RYwOb' \
    --after 'lfWp0K6D' \
    --before 'eG3Hmuym' \
    --limit '83' \
    > test.out 2>&1
eval_tap $? 249 'PublicGetUserPlatformAccountsV3' test.out

#- 250 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --body '{"platformId": "TLR5rPzk", "platformUserId": "dxXBg33a"}' \
    --namespace 'V3WO0LaI' \
    --userId 'lYOlBvzS' \
    > test.out 2>&1
eval_tap $? 250 'PublicLinkPlatformAccount' test.out

#- 251 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --body '{"chosenNamespaces": ["f23TgJPl", "mCp6U14P", "GaiNgNcA"], "requestId": "PznzBIbq"}' \
    --namespace 'fsSKv6Sv' \
    --userId 'sVKQebbQ' \
    > test.out 2>&1
eval_tap $? 251 'PublicForceLinkPlatformWithProgression' test.out

#- 252 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --password 'SBRKsWXh' \
    --namespace '0TCb36To' \
    --userId 'uObzJl9k' \
    > test.out 2>&1
eval_tap $? 252 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 253 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'EQq7tsEf' \
    --before 'mSDET1pe' \
    --isWildcard 'false' \
    --limit '15' \
    > test.out 2>&1
eval_tap $? 253 'PublicGetRolesV3' test.out

#- 254 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId '1vkNkoxe' \
    > test.out 2>&1
eval_tap $? 254 'PublicGetRoleV3' test.out

#- 255 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 255 'PublicGetMyUserV3' test.out

#- 256 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'uvS1oVCT' \
    --code 'BGJBV36Q' \
    --error 'Wlbai5cM' \
    --state '2DgK4nqK' \
    > test.out 2>&1
eval_tap $? 256 'PlatformAuthenticateSAMLV3Handler' test.out

#- 257 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'NPPFi5QV' \
    --payload 't97wzhI6' \
    > test.out 2>&1
eval_tap $? 257 'LoginSSOClient' test.out

#- 258 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'I4ltyu9X' \
    > test.out 2>&1
eval_tap $? 258 'LogoutSSOClient' test.out

#- 259 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --body '{"userIds": ["wqWDKc9i", "di3SR8Bv", "ywLGeDhz"]}' \
    --namespace 'SocLCutX' \
    > test.out 2>&1
eval_tap $? 259 'AdminBulkCheckValidUserIDV4' test.out

#- 260 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --body '{"avatarUrl": "7VsT5BSF", "country": "oLtgq2Vw", "dateOfBirth": "1gMXYfOl", "displayName": "XG9UkUsf", "languageTag": "kDIRCYin", "userName": "JWm5Ehc8"}' \
    --namespace '0iDt8xHr' \
    --userId 'uaHK4LL6' \
    > test.out 2>&1
eval_tap $? 260 'AdminUpdateUserV4' test.out

#- 261 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --body '{"code": "5TTm7Ce5", "emailAddress": "p0GzbLBU"}' \
    --namespace 'ZP0o6zm3' \
    --userId 'byjenfsn' \
    > test.out 2>&1
eval_tap $? 261 'AdminUpdateUserEmailAddressV4' test.out

#- 262 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace 'QCOMMXKM' \
    --userId 'dtEW1R84' \
    > test.out 2>&1
eval_tap $? 262 'AdminDisableUserMFAV4' test.out

#- 263 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace 'Q0fiVwoh' \
    --userId '6bNyLBHW' \
    > test.out 2>&1
eval_tap $? 263 'AdminListUserRolesV4' test.out

#- 264 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --body '{"assignedNamespaces": ["WGnHH86c", "H7AQhabJ", "doY7w87h"], "roleId": "bGI3dq9F"}' \
    --namespace '9GbmwIyb' \
    --userId 'WGGrYWjU' \
    > test.out 2>&1
eval_tap $? 264 'AdminUpdateUserRoleV4' test.out

#- 265 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --body '{"assignedNamespaces": ["LFZlLMxs", "CXxt1kZW", "KANINtJD"], "roleId": "0QeSvmrb"}' \
    --namespace 'A7g8o0tU' \
    --userId 'r2vct2Vc' \
    > test.out 2>&1
eval_tap $? 265 'AdminAddUserRoleV4' test.out

#- 266 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --body '{"assignedNamespaces": ["n9UdkKRt", "dZQwVRS2", "Ddwbl3At"], "roleId": "Dk268fsv"}' \
    --namespace '0x9au8g1' \
    --userId 'JAf5pVHK' \
    > test.out 2>&1
eval_tap $? 266 'AdminRemoveUserRoleV4' test.out

#- 267 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'true' \
    --limit '98' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 267 'AdminGetRolesV4' test.out

#- 268 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "fkrJtC9n"}' \
    > test.out 2>&1
eval_tap $? 268 'AdminCreateRoleV4' test.out

#- 269 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'THObbFUb' \
    > test.out 2>&1
eval_tap $? 269 'AdminGetRoleV4' test.out

#- 270 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'IRs8XJZL' \
    > test.out 2>&1
eval_tap $? 270 'AdminDeleteRoleV4' test.out

#- 271 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "b1sxnE2r"}' \
    --roleId 'sQaThNV9' \
    > test.out 2>&1
eval_tap $? 271 'AdminUpdateRoleV4' test.out

#- 272 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --body '{"permissions": [{"action": 16, "resource": "MWHLFPUv", "schedAction": 65, "schedCron": "RHki06we", "schedRange": ["kjrBjQjh", "LzVaVpej", "DXYkQyOK"]}, {"action": 10, "resource": "lV7zBl07", "schedAction": 94, "schedCron": "GxhFJHEy", "schedRange": ["nW15bzjX", "GXgCjj0r", "PsY3mFyC"]}, {"action": 96, "resource": "5PgM32gR", "schedAction": 39, "schedCron": "QhWF9w6B", "schedRange": ["ZwTzBVTF", "O6vOvNnD", "9xOD59dy"]}]}' \
    --roleId '0BHwhplS' \
    > test.out 2>&1
eval_tap $? 272 'AdminUpdateRolePermissionsV4' test.out

#- 273 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --body '{"permissions": [{"action": 12, "resource": "x9ahluMM", "schedAction": 65, "schedCron": "78rD6lui", "schedRange": ["A8OQEbCf", "StivKEhb", "wbAdNewn"]}, {"action": 85, "resource": "CQUmUlwM", "schedAction": 55, "schedCron": "3k98HwC6", "schedRange": ["jGwp53Xp", "RPfP9YGL", "AqPxNKPV"]}, {"action": 95, "resource": "Pw0rlujZ", "schedAction": 79, "schedCron": "HvGkTTGd", "schedRange": ["E9enFPDY", "V5RW7E9Z", "QChBf1GT"]}]}' \
    --roleId 'l2BJvZa3' \
    > test.out 2>&1
eval_tap $? 273 'AdminAddRolePermissionsV4' test.out

#- 274 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --body '["d7lo4U5D", "GkwfD89X", "ntKfy6l8"]' \
    --roleId '5aqEsT6d' \
    > test.out 2>&1
eval_tap $? 274 'AdminDeleteRolePermissionsV4' test.out

#- 275 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'N5SSTvql' \
    --after 'TG8q3pCG' \
    --before 'SRNkJult' \
    --limit '26' \
    > test.out 2>&1
eval_tap $? 275 'AdminListAssignedUsersV4' test.out

#- 276 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --body '{"assignedNamespaces": ["hbvgkgPT", "VXXXGZgs", "mwaaLK0X"], "namespace": "tIz2vBPK", "userId": "snwXNaXf"}' \
    --roleId 'gkcnd9sv' \
    > test.out 2>&1
eval_tap $? 276 'AdminAssignUserToRoleV4' test.out

#- 277 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --body '{"namespace": "YcpqwB5E", "userId": "vKEI9Olm"}' \
    --roleId 'knt6ktd8' \
    > test.out 2>&1
eval_tap $? 277 'AdminRevokeUserFromRoleV4' test.out

#- 278 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "PHJhh60c", "country": "oprRTAo5", "dateOfBirth": "j0kLQY0T", "displayName": "ZTLFpqrU", "languageTag": "AwWun0Rk", "userName": "bOCp96c3"}' \
    > test.out 2>&1
eval_tap $? 278 'AdminUpdateMyUserV4' test.out

#- 279 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 279 'AdminDisableMyAuthenticatorV4' test.out

#- 280 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'AvSZ3Jbb' \
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
    --factor 'cZfJq8bl' \
    > test.out 2>&1
eval_tap $? 288 'AdminMakeFactorMyDefaultV4' test.out

#- 289 AdminInviteUserV4
samples/cli/sample-apps Iam adminInviteUserV4 \
    --body '{"assignedNamespaces": ["7NT1qzJ3", "oCcMDN8m", "a4IG1Zjs"], "emailAddresses": ["7TUz2p4J", "GRND1Rlv", "xWxH29zL"], "isAdmin": true, "roleId": "qN7kCdRS"}' \
    > test.out 2>&1
eval_tap $? 289 'AdminInviteUserV4' test.out

#- 290 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "Dx3R0gpz", "policyId": "v9I17myy", "policyVersionId": "6G0gqNcO"}, {"isAccepted": true, "localizedPolicyVersionId": "xSpUSKda", "policyId": "OpfY7qRn", "policyVersionId": "j58j9qkn"}, {"isAccepted": true, "localizedPolicyVersionId": "qx4kU3FI", "policyId": "FK0jPOVR", "policyVersionId": "VVyJ8qo1"}], "authType": "EMAILPASSWD", "country": "skE9VknY", "dateOfBirth": "KFimxFki", "displayName": "ZuSugh8I", "emailAddress": "r2b5VuOS", "password": "QldP0YL7", "passwordMD5Sum": "leYqcOfO", "username": "zru4cSO8", "verified": false}' \
    --namespace 'MKRjZ5OT' \
    > test.out 2>&1
eval_tap $? 290 'PublicCreateTestUserV4' test.out

#- 291 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "NmHTRBs3", "policyId": "KnRpYgDV", "policyVersionId": "AG7jjkyE"}, {"isAccepted": false, "localizedPolicyVersionId": "wuVVga5S", "policyId": "bHTfcEIJ", "policyVersionId": "qYr08Kty"}, {"isAccepted": true, "localizedPolicyVersionId": "nKYWToF1", "policyId": "CpaFwpEd", "policyVersionId": "p217SUF0"}], "authType": "EMAILPASSWD", "code": "nlgco6lt", "country": "i9tByzGJ", "dateOfBirth": "BBXNqC2I", "displayName": "W9AomkuH", "emailAddress": "G53u89dp", "password": "ZpwXd7ng", "passwordMD5Sum": "1bdIETyh", "reachMinimumAge": true, "username": "nOmJmNmj"}' \
    --namespace 'CdBbir9U' \
    > test.out 2>&1
eval_tap $? 291 'PublicCreateUserV4' test.out

#- 292 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "HHfmrzPI", "policyId": "xFrOmKW4", "policyVersionId": "fNKPAjXf"}, {"isAccepted": false, "localizedPolicyVersionId": "mJ4hglaI", "policyId": "K38jVhBR", "policyVersionId": "I9zwffU2"}, {"isAccepted": false, "localizedPolicyVersionId": "C6f01m9A", "policyId": "AMcFxzrZ", "policyVersionId": "lKKZgsXx"}], "authType": "EMAILPASSWD", "country": "7Qf4n9p1", "dateOfBirth": "aItrwlFo", "displayName": "nLmQ7fvx", "password": "rRWdNWQu", "reachMinimumAge": true, "username": "YPxOq7j5"}' \
    --invitationId 'JnFfrb4o' \
    --namespace 'hAL8pJ17' \
    > test.out 2>&1
eval_tap $? 292 'CreateUserFromInvitationV4' test.out

#- 293 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --body '{"avatarUrl": "n5AuueYv", "country": "4pKOVWMB", "dateOfBirth": "NqpMStiN", "displayName": "UcU8Wl6I", "languageTag": "o0HRKNr8", "userName": "7JJLynGl"}' \
    --namespace 'd6FI6XPG' \
    > test.out 2>&1
eval_tap $? 293 'PublicUpdateUserV4' test.out

#- 294 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --body '{"code": "ZSuGCSTQ", "emailAddress": "VNz3QmiS"}' \
    --namespace 'kMJMCzWc' \
    > test.out 2>&1
eval_tap $? 294 'PublicUpdateUserEmailAddressV4' test.out

#- 295 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --body '{"code": "9cfzUrjB", "country": "ygEnGR1x", "dateOfBirth": "GKLLKbfZ", "displayName": "FHajWAqU", "emailAddress": "OE1Zg8Ms", "password": "0AW9VcVS", "reachMinimumAge": true, "username": "4nQWGlct", "validateOnly": true}' \
    --namespace 'S9kAK3T8' \
    > test.out 2>&1
eval_tap $? 295 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 296 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --body '{"emailAddress": "gRuAeqZh", "password": "2CZGn4YK", "username": "ebjdPxa0"}' \
    --namespace 'e2ch7LwA' \
    > test.out 2>&1
eval_tap $? 296 'PublicUpgradeHeadlessAccountV4' test.out

#- 297 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace 'VhFls9yq' \
    > test.out 2>&1
eval_tap $? 297 'PublicDisableMyAuthenticatorV4' test.out

#- 298 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --code 'e55RtmjR' \
    --namespace 'ia60AB3P' \
    > test.out 2>&1
eval_tap $? 298 'PublicEnableMyAuthenticatorV4' test.out

#- 299 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace 'wLaJzz6c' \
    > test.out 2>&1
eval_tap $? 299 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 300 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace 'G9iw0P6I' \
    > test.out 2>&1
eval_tap $? 300 'PublicGetMyBackupCodesV4' test.out

#- 301 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace '5T1gYTQ2' \
    > test.out 2>&1
eval_tap $? 301 'PublicGenerateMyBackupCodesV4' test.out

#- 302 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace '5wWOSmD2' \
    > test.out 2>&1
eval_tap $? 302 'PublicDisableMyBackupCodesV4' test.out

#- 303 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace 'nssVIhyv' \
    > test.out 2>&1
eval_tap $? 303 'PublicDownloadMyBackupCodesV4' test.out

#- 304 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace 'eKl9CEAD' \
    > test.out 2>&1
eval_tap $? 304 'PublicEnableMyBackupCodesV4' test.out

#- 305 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --cookie 'SYxGoYGA' \
    --namespace 'mlxvVrS3' \
    > test.out 2>&1
eval_tap $? 305 'PublicRemoveTrustedDeviceV4' test.out

#- 306 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace 'GJur8F9t' \
    > test.out 2>&1
eval_tap $? 306 'PublicGetMyEnabledFactorsV4' test.out

#- 307 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --factor '1cdzVqWv' \
    --namespace 'KcEfQlC7' \
    > test.out 2>&1
eval_tap $? 307 'PublicMakeFactorMyDefaultV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE