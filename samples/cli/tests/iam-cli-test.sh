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
echo "1..304"

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
samples/cli/sample-apps Iam getBansType \
    > test.out 2>&1
eval_tap $? 2 'GetBansType' test.out

#- 3 GetListBanReason
samples/cli/sample-apps Iam getListBanReason \
    > test.out 2>&1
eval_tap $? 3 'GetListBanReason' test.out

#- 4 GetClients
eval_tap 0 4 'GetClients # SKIP deprecated' test.out

#- 5 CreateClient
eval_tap 0 5 'CreateClient # SKIP deprecated' test.out

#- 6 GetClient
samples/cli/sample-apps Iam getClient \
    --clientId 'FtBxyZcD' \
    > test.out 2>&1
eval_tap $? 6 'GetClient' test.out

#- 7 UpdateClient
samples/cli/sample-apps Iam updateClient \
    --body '{"ClientName": "XBpGlsQu", "RedirectUri": "Ju8vMf0I"}' \
    --clientId 'sJkTrd8I' \
    > test.out 2>&1
eval_tap $? 7 'UpdateClient' test.out

#- 8 DeleteClient
eval_tap 0 8 'DeleteClient # SKIP deprecated' test.out

#- 9 UpdateClientPermission
samples/cli/sample-apps Iam updateClientPermission \
    --body '{"Permissions": [{"Action": 59, "Resource": "cV2zXnTK"}]}' \
    --clientId 'jXY1bPqa' \
    > test.out 2>&1
eval_tap $? 9 'UpdateClientPermission' test.out

#- 10 AddClientPermission
samples/cli/sample-apps Iam addClientPermission \
    --action '24' \
    --clientId 'iBxx9Cs1' \
    --resource '8EY84ekI' \
    > test.out 2>&1
eval_tap $? 10 'AddClientPermission' test.out

#- 11 DeleteClientPermission
samples/cli/sample-apps Iam deleteClientPermission \
    --action '39' \
    --clientId 'qRzHU1oh' \
    --resource '570KQBVa' \
    > test.out 2>&1
eval_tap $? 11 'DeleteClientPermission' test.out

#- 12 UpdateClientSecret
samples/cli/sample-apps Iam updateClientSecret \
    --body '{"NewSecret": "ewc72krS"}' \
    --clientId 'ha68n3Yn' \
    > test.out 2>&1
eval_tap $? 12 'UpdateClientSecret' test.out

#- 13 GetClientsbyNamespace
samples/cli/sample-apps Iam getClientsbyNamespace \
    --namespace 'ozp1C2Km' \
    > test.out 2>&1
eval_tap $? 13 'GetClientsbyNamespace' test.out

#- 14 CreateClientByNamespace
samples/cli/sample-apps Iam createClientByNamespace \
    --body '{"ClientId": "IQTuBdNE", "ClientName": "UsxFb8CJ", "ClientPermissions": [{"Action": 76, "Resource": "7DJZaMSx", "SchedAction": 61, "SchedCron": "CbZbygyo", "SchedRange": ["arORoeNH"]}], "Namespace": "Sb8Rh3kg", "RedirectUri": "s9qqJbnQ", "Secret": "soBgiVpP"}' \
    --namespace '8Cm3yvAS' \
    > test.out 2>&1
eval_tap $? 14 'CreateClientByNamespace' test.out

#- 15 DeleteClientByNamespace
samples/cli/sample-apps Iam deleteClientByNamespace \
    --clientId 'UoxdxxFq' \
    --namespace 'mAGTJ8IE' \
    > test.out 2>&1
eval_tap $? 15 'DeleteClientByNamespace' test.out

#- 16 CreateUser
samples/cli/sample-apps Iam createUser \
    --body '{"AuthType": "dagEtp4w", "Country": "29KOu9c1", "DisplayName": "9R6XDqWH", "LoginId": "kkP8npLE", "Password": "KMfjiX7j", "PasswordMD5Sum": "pkVZk3Ia"}' \
    --namespace 'QYEmqGod' \
    > test.out 2>&1
eval_tap $? 16 'CreateUser' test.out

#- 17 GetAdminUsersByRoleID
samples/cli/sample-apps Iam getAdminUsersByRoleID \
    --namespace 'OEGt9gPO' \
    --after '18' \
    --before '5' \
    --limit '16' \
    --roleId '0JkvIas7' \
    > test.out 2>&1
eval_tap $? 17 'GetAdminUsersByRoleID' test.out

#- 18 GetUserByLoginID
samples/cli/sample-apps Iam getUserByLoginID \
    --namespace '3ucYnFAJ' \
    --loginId '3DK5T4Eo' \
    > test.out 2>&1
eval_tap $? 18 'GetUserByLoginID' test.out

#- 19 GetUserByPlatformUserID
samples/cli/sample-apps Iam getUserByPlatformUserID \
    --namespace 'gg0Y39Uo' \
    --platformID 'Ylpv5bVA' \
    --platformUserID 'gtsDhUTD' \
    > test.out 2>&1
eval_tap $? 19 'GetUserByPlatformUserID' test.out

#- 20 ForgotPassword
samples/cli/sample-apps Iam forgotPassword \
    --body '{"Context": "UscbQDjb", "LanguageTag": "TQuPMz2P", "LoginID": "TRlkyU89"}' \
    --namespace 'ZPOw6zPF' \
    > test.out 2>&1
eval_tap $? 20 'ForgotPassword' test.out

#- 21 GetUsersByLoginIds
samples/cli/sample-apps Iam getUsersByLoginIds \
    --namespace 'J42cwmzB' \
    --loginIds 'BSMNcoAA' \
    > test.out 2>&1
eval_tap $? 21 'GetUsersByLoginIds' test.out

#- 22 ResetPassword
samples/cli/sample-apps Iam resetPassword \
    --body '{"Code": "OjKNjfcY", "LoginID": "Hm093aYg", "NewPassword": "BU1sqjyK"}' \
    --namespace '0XH45PaR' \
    > test.out 2>&1
eval_tap $? 22 'ResetPassword' test.out

#- 23 SearchUser
eval_tap 0 23 'SearchUser # SKIP deprecated' test.out

#- 24 GetUserByUserID
samples/cli/sample-apps Iam getUserByUserID \
    --namespace 'SOFQBtu2' \
    --userId '3REZ8hRV' \
    > test.out 2>&1
eval_tap $? 24 'GetUserByUserID' test.out

#- 25 UpdateUser
samples/cli/sample-apps Iam updateUser \
    --body '{"Country": "X7LGOvDd", "DateOfBirth": "YiQS9i7m", "DisplayName": "V1C91pjG", "LanguageTag": "9gpxL6yc"}' \
    --namespace 'TQdvln2L' \
    --userId 'AuSQWEXL' \
    > test.out 2>&1
eval_tap $? 25 'UpdateUser' test.out

#- 26 DeleteUser
samples/cli/sample-apps Iam deleteUser \
    --namespace '6LFE1YHo' \
    --userId '9m126ZWc' \
    > test.out 2>&1
eval_tap $? 26 'DeleteUser' test.out

#- 27 BanUser
samples/cli/sample-apps Iam banUser \
    --body '{"ban": "8hHtWvbN", "comment": "YqgUqslA", "endDate": "rFPiHUIv", "reason": "aCv8kU9d", "skipNotif": true}' \
    --namespace 'BpdsJLhs' \
    --userId 'VyExrkxo' \
    > test.out 2>&1
eval_tap $? 27 'BanUser' test.out

#- 28 GetUserBanHistory
samples/cli/sample-apps Iam getUserBanHistory \
    --namespace 'ot0B7WOf' \
    --userId 'ercZdpMc' \
    > test.out 2>&1
eval_tap $? 28 'GetUserBanHistory' test.out

#- 29 DisableUserBan
samples/cli/sample-apps Iam disableUserBan \
    --banId 'i37Ds7YS' \
    --namespace 'fExaI3uz' \
    --userId 'LteMbFAl' \
    > test.out 2>&1
eval_tap $? 29 'DisableUserBan' test.out

#- 30 EnableUserBan
samples/cli/sample-apps Iam enableUserBan \
    --banId 't4hr7HmO' \
    --namespace 'YiBA5ltA' \
    --userId 'OXmlG6eh' \
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
    --namespace '1dTdoTFp' \
    --userId 'BIcuC1dQ' \
    > test.out 2>&1
eval_tap $? 34 'GetUserInformation' test.out

#- 35 DeleteUserInformation
samples/cli/sample-apps Iam deleteUserInformation \
    --namespace 'Y93OJnJ6' \
    --userId 'Te9vD8ld' \
    > test.out 2>&1
eval_tap $? 35 'DeleteUserInformation' test.out

#- 36 GetUserLoginHistories
samples/cli/sample-apps Iam getUserLoginHistories \
    --namespace 'z7Hu8AD7' \
    --userId '9kdWunvi' \
    --after '0.39802825247019424' \
    --before '0.82465128795751' \
    --limit '31' \
    > test.out 2>&1
eval_tap $? 36 'GetUserLoginHistories' test.out

#- 37 UpdatePassword
eval_tap 0 37 'UpdatePassword # SKIP deprecated' test.out

#- 38 SaveUserPermission
samples/cli/sample-apps Iam saveUserPermission \
    --body '{"Permissions": [{"Action": 66, "Resource": "yhhERoGg", "SchedAction": 7, "SchedCron": "rysMizBG", "SchedRange": ["SRdP2l7D"]}]}' \
    --namespace 'NSZ8Aq0X' \
    --userId 'iPLQXSe0' \
    > test.out 2>&1
eval_tap $? 38 'SaveUserPermission' test.out

#- 39 AddUserPermission
samples/cli/sample-apps Iam addUserPermission \
    --body '{"SchedAction": 7, "SchedCron": "dOGTMlJj", "SchedRange": ["Bwj9HJHQ"]}' \
    --action '72' \
    --namespace 'seEdSXRD' \
    --resource 'Svguauw1' \
    --userId 'xT7eMwSl' \
    > test.out 2>&1
eval_tap $? 39 'AddUserPermission' test.out

#- 40 DeleteUserPermission
samples/cli/sample-apps Iam deleteUserPermission \
    --action '76' \
    --namespace 'LH0NnTJ2' \
    --resource 'ulNzBvwJ' \
    --userId 'aQa547Jl' \
    > test.out 2>&1
eval_tap $? 40 'DeleteUserPermission' test.out

#- 41 GetUserPlatformAccounts
samples/cli/sample-apps Iam getUserPlatformAccounts \
    --namespace 'lvA8RWSp' \
    --userId 'abUt7xk6' \
    > test.out 2>&1
eval_tap $? 41 'GetUserPlatformAccounts' test.out

#- 42 GetUserMapping
samples/cli/sample-apps Iam getUserMapping \
    --namespace 'QxyWhfqo' \
    --targetNamespace 'WfJw2o8o' \
    --userId 'WUqvPCZ2' \
    > test.out 2>&1
eval_tap $? 42 'GetUserMapping' test.out

#- 43 GetUserJusticePlatformAccount
eval_tap 0 43 'GetUserJusticePlatformAccount # SKIP deprecated' test.out

#- 44 PlatformLink
samples/cli/sample-apps Iam platformLink \
    --ticket 'HzT7NXmW' \
    --namespace 'DlXsuNId' \
    --platformId 'QJR5lsNO' \
    --userId 'lvkfwaSb' \
    > test.out 2>&1
eval_tap $? 44 'PlatformLink' test.out

#- 45 PlatformUnlink
samples/cli/sample-apps Iam platformUnlink \
    --platformNamespace 'nsuLCgTo' \
    --namespace 'xuVTekJg' \
    --platformId 'vg6h5HIp' \
    --userId 'H0DviplE' \
    > test.out 2>&1
eval_tap $? 45 'PlatformUnlink' test.out

#- 46 GetPublisherUser
samples/cli/sample-apps Iam getPublisherUser \
    --namespace 'k4vj3LDp' \
    --userId '4yqDt8QU' \
    > test.out 2>&1
eval_tap $? 46 'GetPublisherUser' test.out

#- 47 SaveUserRoles
samples/cli/sample-apps Iam saveUserRoles \
    --body '["ZDpxlHas"]' \
    --namespace 'inGcjrkm' \
    --userId 'RMttgjDS' \
    > test.out 2>&1
eval_tap $? 47 'SaveUserRoles' test.out

#- 48 AddUserRole
samples/cli/sample-apps Iam addUserRole \
    --namespace 'aIVBmft3' \
    --roleId 'Udg7p9PG' \
    --userId 'mY2H5kX4' \
    > test.out 2>&1
eval_tap $? 48 'AddUserRole' test.out

#- 49 DeleteUserRole
samples/cli/sample-apps Iam deleteUserRole \
    --namespace 'MsisSX28' \
    --roleId 'nARxWRpv' \
    --userId '5ou5xtvd' \
    > test.out 2>&1
eval_tap $? 49 'DeleteUserRole' test.out

#- 50 UpgradeHeadlessAccount
samples/cli/sample-apps Iam upgradeHeadlessAccount \
    --body '{"LoginID": "28OUfCt8", "Password": "UJC5flNy"}' \
    --namespace 'j6HsTtX8' \
    --userId 'P3llnaaS' \
    > test.out 2>&1
eval_tap $? 50 'UpgradeHeadlessAccount' test.out

#- 51 UpgradeHeadlessAccountWithVerificationCode
samples/cli/sample-apps Iam upgradeHeadlessAccountWithVerificationCode \
    --body '{"Code": "9lqyygPc", "Password": "fkJIxfQZ", "loginId": "za8kNVbD"}' \
    --namespace 'xVMq7HJk' \
    --userId '0F89xAc3' \
    > test.out 2>&1
eval_tap $? 51 'UpgradeHeadlessAccountWithVerificationCode' test.out

#- 52 UserVerification
samples/cli/sample-apps Iam userVerification \
    --body '{"Code": "YVfaENtr", "ContactType": "l0pTKZTX", "LanguageTag": "qzHuBMYQ", "validateOnly": true}' \
    --namespace '2jz1ZOpd' \
    --userId 'OjSyMddB' \
    > test.out 2>&1
eval_tap $? 52 'UserVerification' test.out

#- 53 SendVerificationCode
samples/cli/sample-apps Iam sendVerificationCode \
    --body '{"Context": "41JuMf7R", "LanguageTag": "UyBHRj8I", "LoginID": "iRimRllH"}' \
    --namespace 'T6Dc40vF' \
    --userId 'FA6gpU7E' \
    > test.out 2>&1
eval_tap $? 53 'SendVerificationCode' test.out

#- 54 Authorization
samples/cli/sample-apps Iam authorization \
    --login 'W3x1dCpm' \
    --password '55gOeqQI' \
    --scope 'qcJVKmBM' \
    --state '1J1IbuTr' \
    --clientId 'rkbmuT1w' \
    --redirectUri 'hOqmEnDX' \
    --responseType 'token' \
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
    --namespace 'BPlSay46' \
    --userId 'mv71BAZA' \
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
    --deviceId 'OjtFJ2vm' \
    --code 'Tj7tT7TZ' \
    --extendExp 'True' \
    --namespace 'dCkIsZoA' \
    --password 'rWwPHcyF' \
    --redirectUri 'AdAtYciL' \
    --refreshToken 'IgRwFRr0' \
    --username 'gwB9tz3v' \
    --grantType 'client_credentials' \
    > test.out 2>&1
eval_tap $? 61 'TokenGrant' test.out

#- 62 VerifyToken
samples/cli/sample-apps Iam verifyToken \
    --token '99XVlV8r' \
    > test.out 2>&1
eval_tap $? 62 'VerifyToken' test.out

#- 63 GetRoles
samples/cli/sample-apps Iam getRoles \
    --isWildcard 'K3tE6n0s' \
    > test.out 2>&1
eval_tap $? 63 'GetRoles' test.out

#- 64 CreateRole
samples/cli/sample-apps Iam createRole \
    --body '{"AdminRole": false, "Managers": [{"DisplayName": "ip1tw3L7", "Namespace": "cUd9pqtv", "UserId": "6JfPZwcC"}], "Members": [{"DisplayName": "VOXcVa80", "Namespace": "TmCwtD2l", "UserId": "AH01o6Nd"}], "Permissions": [{"Action": 4, "Resource": "BIgzrDyW", "SchedAction": 31, "SchedCron": "FBYGmmBa", "SchedRange": ["wMyoKyNp"]}], "RoleName": "dAasm8xw"}' \
    > test.out 2>&1
eval_tap $? 64 'CreateRole' test.out

#- 65 GetRole
samples/cli/sample-apps Iam getRole \
    --roleId 'UfzOlQiZ' \
    > test.out 2>&1
eval_tap $? 65 'GetRole' test.out

#- 66 UpdateRole
samples/cli/sample-apps Iam updateRole \
    --body '{"RoleName": "Y4NbOQXJ"}' \
    --roleId '7uOTzNMv' \
    > test.out 2>&1
eval_tap $? 66 'UpdateRole' test.out

#- 67 DeleteRole
samples/cli/sample-apps Iam deleteRole \
    --roleId 'uq2tNl4C' \
    > test.out 2>&1
eval_tap $? 67 'DeleteRole' test.out

#- 68 GetRoleAdminStatus
samples/cli/sample-apps Iam getRoleAdminStatus \
    --roleId 'X4IjiK4D' \
    > test.out 2>&1
eval_tap $? 68 'GetRoleAdminStatus' test.out

#- 69 SetRoleAsAdmin
samples/cli/sample-apps Iam setRoleAsAdmin \
    --roleId 'EUJRVK3l' \
    > test.out 2>&1
eval_tap $? 69 'SetRoleAsAdmin' test.out

#- 70 RemoveRoleAdmin
samples/cli/sample-apps Iam removeRoleAdmin \
    --roleId '9Eb0R1XR' \
    > test.out 2>&1
eval_tap $? 70 'RemoveRoleAdmin' test.out

#- 71 GetRoleManagers
samples/cli/sample-apps Iam getRoleManagers \
    --roleId 'b0RH8vS1' \
    > test.out 2>&1
eval_tap $? 71 'GetRoleManagers' test.out

#- 72 AddRoleManagers
samples/cli/sample-apps Iam addRoleManagers \
    --body '{"Managers": [{"DisplayName": "smeOlngr", "Namespace": "dTXCzaPB", "UserId": "tkZMio4w"}]}' \
    --roleId 'cyhloVS3' \
    > test.out 2>&1
eval_tap $? 72 'AddRoleManagers' test.out

#- 73 RemoveRoleManagers
samples/cli/sample-apps Iam removeRoleManagers \
    --body '{"Managers": [{"DisplayName": "rYp8QtcE", "Namespace": "mCEVc75U", "UserId": "feypWjDN"}]}' \
    --roleId 'hzCL5sWS' \
    > test.out 2>&1
eval_tap $? 73 'RemoveRoleManagers' test.out

#- 74 GetRoleMembers
samples/cli/sample-apps Iam getRoleMembers \
    --roleId '2qwO763i' \
    > test.out 2>&1
eval_tap $? 74 'GetRoleMembers' test.out

#- 75 AddRoleMembers
samples/cli/sample-apps Iam addRoleMembers \
    --body '{"Members": [{"DisplayName": "EklkzLm8", "Namespace": "8LpLuYRO", "UserId": "3C55yHpw"}]}' \
    --roleId 'K2JaqenD' \
    > test.out 2>&1
eval_tap $? 75 'AddRoleMembers' test.out

#- 76 RemoveRoleMembers
samples/cli/sample-apps Iam removeRoleMembers \
    --body '{"Members": [{"DisplayName": "Gn7a2NUp", "Namespace": "lWiLjq06", "UserId": "n6a0rW8E"}]}' \
    --roleId 'fkpaXtwY' \
    > test.out 2>&1
eval_tap $? 76 'RemoveRoleMembers' test.out

#- 77 UpdateRolePermissions
samples/cli/sample-apps Iam updateRolePermissions \
    --body '{"Permissions": [{"Action": 70, "Resource": "aQ4WbwNm", "SchedAction": 37, "SchedCron": "FYetjEur", "SchedRange": ["H8eloJzN"]}]}' \
    --roleId 'KtRUaTz1' \
    > test.out 2>&1
eval_tap $? 77 'UpdateRolePermissions' test.out

#- 78 AddRolePermission
samples/cli/sample-apps Iam addRolePermission \
    --body '{"SchedAction": 61, "SchedCron": "Tdsmwzjk", "SchedRange": ["kn9oiQl0"]}' \
    --action '13' \
    --resource '7cO3ZMb6' \
    --roleId 'Ojlo6DMN' \
    > test.out 2>&1
eval_tap $? 78 'AddRolePermission' test.out

#- 79 DeleteRolePermission
samples/cli/sample-apps Iam deleteRolePermission \
    --action '30' \
    --resource 'P2qMrTQ1' \
    --roleId 'UpjfU6wJ' \
    > test.out 2>&1
eval_tap $? 79 'DeleteRolePermission' test.out

#- 80 AdminGetAgeRestrictionStatusV2
samples/cli/sample-apps Iam adminGetAgeRestrictionStatusV2 \
    --namespace 'hy1jOVkk' \
    > test.out 2>&1
eval_tap $? 80 'AdminGetAgeRestrictionStatusV2' test.out

#- 81 AdminUpdateAgeRestrictionConfigV2
samples/cli/sample-apps Iam adminUpdateAgeRestrictionConfigV2 \
    --body '{"AgeRestriction": 92, "Enable": false}' \
    --namespace 'S79527EZ' \
    > test.out 2>&1
eval_tap $? 81 'AdminUpdateAgeRestrictionConfigV2' test.out

#- 82 GetListCountryAgeRestriction
samples/cli/sample-apps Iam getListCountryAgeRestriction \
    --namespace '25Ia8uCe' \
    > test.out 2>&1
eval_tap $? 82 'GetListCountryAgeRestriction' test.out

#- 83 UpdateCountryAgeRestriction
samples/cli/sample-apps Iam updateCountryAgeRestriction \
    --body '{"AgeRestriction": 62}' \
    --countryCode 'lLtEVpDA' \
    --namespace 'EbA82jy7' \
    > test.out 2>&1
eval_tap $? 83 'UpdateCountryAgeRestriction' test.out

#- 84 AdminSearchUsersV2
samples/cli/sample-apps Iam adminSearchUsersV2 \
    --namespace '4lq0pDE5' \
    --after 'xRwh5b45' \
    --before 'ebpcM7Sc' \
    --displayName 'Ss3UOpAw' \
    --limit '68' \
    --loginId 'p9rRtn1P' \
    --platformUserId 'cCxdbume' \
    --roleId 'YgOdEBWR' \
    --userId 'QiW3KFfU' \
    --platformId '8icH4081' \
    > test.out 2>&1
eval_tap $? 84 'AdminSearchUsersV2' test.out

#- 85 AdminGetUserByUserIdV2
samples/cli/sample-apps Iam adminGetUserByUserIdV2 \
    --namespace 'gRB1GyLf' \
    --userId 'Lg4RYuEb' \
    > test.out 2>&1
eval_tap $? 85 'AdminGetUserByUserIdV2' test.out

#- 86 AdminUpdateUserV2
samples/cli/sample-apps Iam adminUpdateUserV2 \
    --body '{"Country": "gUDEcJyI", "DateOfBirth": "vsPwOr0B", "DisplayName": "mV5iFvfw", "LanguageTag": "FjTSmIEq"}' \
    --namespace 'oLyLeUGm' \
    --userId 'omGX9sXT' \
    > test.out 2>&1
eval_tap $? 86 'AdminUpdateUserV2' test.out

#- 87 AdminBanUserV2
samples/cli/sample-apps Iam adminBanUserV2 \
    --body '{"ban": "Z0v8pqLf", "comment": "c5SwGnRe", "endDate": "UULDX4QU", "reason": "Ibb5nh68", "skipNotif": false}' \
    --namespace 'yUtRvW9h' \
    --userId 'NBSFTtFr' \
    > test.out 2>&1
eval_tap $? 87 'AdminBanUserV2' test.out

#- 88 AdminGetUserBanV2
samples/cli/sample-apps Iam adminGetUserBanV2 \
    --namespace 'OmjkFrFV' \
    --userId 'A8t0xF34' \
    --activeOnly 'False' \
    > test.out 2>&1
eval_tap $? 88 'AdminGetUserBanV2' test.out

#- 89 AdminDisableUserV2
samples/cli/sample-apps Iam adminDisableUserV2 \
    --body '{"Reason": "t6ZlTTic"}' \
    --namespace '0kr2a0nI' \
    --userId '2oo7UHCJ' \
    > test.out 2>&1
eval_tap $? 89 'AdminDisableUserV2' test.out

#- 90 AdminEnableUserV2
samples/cli/sample-apps Iam adminEnableUserV2 \
    --namespace 'K5sp0aCv' \
    --userId 'Iq3aHVYI' \
    > test.out 2>&1
eval_tap $? 90 'AdminEnableUserV2' test.out

#- 91 AdminResetPasswordV2
samples/cli/sample-apps Iam adminResetPasswordV2 \
    --body '{"LanguageTag": "lewLRuHY", "NewPassword": "83bGj0HT", "OldPassword": "eeWXlIcR"}' \
    --namespace 'idqctDpy' \
    --userId 'gY0ax476' \
    > test.out 2>&1
eval_tap $? 91 'AdminResetPasswordV2' test.out

#- 92 AdminDeletePlatformLinkV2
samples/cli/sample-apps Iam adminDeletePlatformLinkV2 \
    --platformNamespace 'ED4MMO9T' \
    --namespace 'w2JH0qhW' \
    --platformId 'IwHWTgzJ' \
    --userId 'FRYw6t1I' \
    > test.out 2>&1
eval_tap $? 92 'AdminDeletePlatformLinkV2' test.out

#- 93 AdminPutUserRolesV2
samples/cli/sample-apps Iam adminPutUserRolesV2 \
    --body '["KZLO6V4O"]' \
    --namespace 'de46QmCi' \
    --userId 'dgdpP7RT' \
    > test.out 2>&1
eval_tap $? 93 'AdminPutUserRolesV2' test.out

#- 94 AdminCreateUserRolesV2
samples/cli/sample-apps Iam adminCreateUserRolesV2 \
    --body '["C587lmUm"]' \
    --namespace 'BziPZBnp' \
    --userId 'Ofkllxfq' \
    > test.out 2>&1
eval_tap $? 94 'AdminCreateUserRolesV2' test.out

#- 95 PublicGetCountryAgeRestriction
samples/cli/sample-apps Iam publicGetCountryAgeRestriction \
    --countryCode '0NsrSjw5' \
    --namespace 'Hog0blM1' \
    > test.out 2>&1
eval_tap $? 95 'PublicGetCountryAgeRestriction' test.out

#- 96 PublicCreateUserV2
samples/cli/sample-apps Iam publicCreateUserV2 \
    --body '{"AuthType": "d5MStYGc", "Country": "zLINlEC0", "DisplayName": "OEsE3yzI", "LoginId": "sUP0Njlu", "Password": "OrGZTzsL", "PasswordMD5Sum": "W7Fjfs9n"}' \
    --namespace 'IkcZ38fU' \
    > test.out 2>&1
eval_tap $? 96 'PublicCreateUserV2' test.out

#- 97 PublicForgotPasswordV2
samples/cli/sample-apps Iam publicForgotPasswordV2 \
    --body '{"Context": "EanjKHbX", "LanguageTag": "fk1zxdzx", "LoginID": "g0UXcRyH"}' \
    --namespace 'i3u8BzVW' \
    > test.out 2>&1
eval_tap $? 97 'PublicForgotPasswordV2' test.out

#- 98 PublicResetPasswordV2
samples/cli/sample-apps Iam publicResetPasswordV2 \
    --body '{"Code": "u1tOmhUt", "LoginID": "CgcpvGrE", "NewPassword": "bcZUDExH"}' \
    --namespace '1tayOGXI' \
    > test.out 2>&1
eval_tap $? 98 'PublicResetPasswordV2' test.out

#- 99 PublicGetUserByUserIDV2
samples/cli/sample-apps Iam publicGetUserByUserIDV2 \
    --namespace 'HzMRjMCt' \
    --userId 'OJsEijlr' \
    > test.out 2>&1
eval_tap $? 99 'PublicGetUserByUserIDV2' test.out

#- 100 PublicUpdateUserV2
samples/cli/sample-apps Iam publicUpdateUserV2 \
    --body '{"Country": "bpyyEcQx", "DateOfBirth": "VgJIjMZq", "DisplayName": "cWfMl6dq", "LanguageTag": "rpD4tnc3"}' \
    --namespace 'ZRB3Ikdt' \
    --userId 'PfAJEomw' \
    > test.out 2>&1
eval_tap $? 100 'PublicUpdateUserV2' test.out

#- 101 PublicGetUserBan
samples/cli/sample-apps Iam publicGetUserBan \
    --namespace 'enJvQ8gr' \
    --userId 'tQSv6EcA' \
    --activeOnly 'False' \
    > test.out 2>&1
eval_tap $? 101 'PublicGetUserBan' test.out

#- 102 PublicUpdatePasswordV2
samples/cli/sample-apps Iam publicUpdatePasswordV2 \
    --body '{"LanguageTag": "MIPms5bT", "NewPassword": "51M4yko8", "OldPassword": "S0EnGLvG"}' \
    --namespace 'vfuSyCTy' \
    --userId 'jj4mCaiu' \
    > test.out 2>&1
eval_tap $? 102 'PublicUpdatePasswordV2' test.out

#- 103 GetListJusticePlatformAccounts
samples/cli/sample-apps Iam getListJusticePlatformAccounts \
    --namespace 'MGKOF5GJ' \
    --userId 'JooSXUl3' \
    > test.out 2>&1
eval_tap $? 103 'GetListJusticePlatformAccounts' test.out

#- 104 PublicPlatformLinkV2
samples/cli/sample-apps Iam publicPlatformLinkV2 \
    --ticket 'YU35QHGp' \
    --namespace 'BABnOlxD' \
    --platformId 'znICQVyq' \
    --userId 'Bg34WTtD' \
    > test.out 2>&1
eval_tap $? 104 'PublicPlatformLinkV2' test.out

#- 105 PublicDeletePlatformLinkV2
samples/cli/sample-apps Iam publicDeletePlatformLinkV2 \
    --platformNamespace 'kn0rtn6t' \
    --namespace '0Yx4z12E' \
    --platformId 'aQ1rUQYC' \
    --userId 'NTiDX4jE' \
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
    --body '[{"field": "3M2IsTHu", "validation": {"allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "description": [{"language": "IWd0mcq5", "message": ["T4SUc7cW"]}], "isCustomRegex": false, "letterCase": "CKK6Dij1", "maxLength": 12, "maxRepeatingAlphaNum": 63, "maxRepeatingSpecialCharacter": 5, "minCharType": 9, "minLength": 27, "regex": "EMySPfhx", "specialCharacterLocation": "BenDiTiA", "specialCharacters": ["qFYmFKja"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'ELmmll6o' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace 'exId1OKG' \
    --after 'UN2Uznd7' \
    --before 'uVa7t14y' \
    --limit '43' \
    > test.out 2>&1
eval_tap $? 111 'ListAdminsV3' test.out

#- 112 AdminGetAgeRestrictionStatusV3
samples/cli/sample-apps Iam adminGetAgeRestrictionStatusV3 \
    --namespace 'SYSV52bH' \
    > test.out 2>&1
eval_tap $? 112 'AdminGetAgeRestrictionStatusV3' test.out

#- 113 AdminUpdateAgeRestrictionConfigV3
samples/cli/sample-apps Iam adminUpdateAgeRestrictionConfigV3 \
    --body '{"ageRestriction": 16, "enable": false}' \
    --namespace 'CIf4tsuu' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace '6Pkam6tF' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --body '{"ageRestriction": 89}' \
    --countryCode 'YFt4ZxA2' \
    --namespace 'PzZFRkBN' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace 'lg6hn5qu' \
    --activeOnly 'True' \
    --banType 'KyZAuV6u' \
    --limit '92' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminGetBansTypeWithNamespaceV3
samples/cli/sample-apps Iam adminGetBansTypeWithNamespaceV3 \
    --namespace 'qM0lV6UZ' \
    > test.out 2>&1
eval_tap $? 117 'AdminGetBansTypeWithNamespaceV3' test.out

#- 118 AdminGetClientsByNamespaceV3
samples/cli/sample-apps Iam adminGetClientsByNamespaceV3 \
    --namespace 'MlEbxHNg' \
    --limit '70' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 118 'AdminGetClientsByNamespaceV3' test.out

#- 119 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --body '{"audiences": ["iQExaunj"], "baseUri": "dAqnHUz4", "clientId": "4tx4O6ha", "clientName": "mPwNoi07", "clientPermissions": [{"action": 8, "resource": "zDK56JFI", "schedAction": 65, "schedCron": "e1IMUCLc", "schedRange": ["N0DsaD5F"]}], "clientPlatform": "yBsFe9OY", "deletable": true, "namespace": "JVsYffmh", "oauthClientType": "yx6J25Pr", "redirectUri": "M4S3cB8m", "secret": "17hEeLLg"}' \
    --namespace 'oaYth6zc' \
    > test.out 2>&1
eval_tap $? 119 'AdminCreateClientV3' test.out

#- 120 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'f8eA45OM' \
    --namespace 'vObWejo9' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 121 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'LfGeegJM' \
    --namespace 'aBGR6D1Z' \
    > test.out 2>&1
eval_tap $? 121 'AdminDeleteClientV3' test.out

#- 122 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --body '{"audiences": ["oZEZQkJ8"], "baseUri": "DSqFnhdK", "clientName": "vjFCFbSF", "clientPermissions": [{"action": 22, "resource": "EWoMPdgK", "schedAction": 51, "schedCron": "n62mhnFS", "schedRange": ["pCTlDNBO"]}], "clientPlatform": "cygvv2LA", "deletable": false, "namespace": "fBGVzanb", "redirectUri": "KYsB0gqJ"}' \
    --clientId '8VhYSikJ' \
    --namespace 'l2p9rBx8' \
    > test.out 2>&1
eval_tap $? 122 'AdminUpdateClientV3' test.out

#- 123 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --body '{"permissions": [{"action": 79, "resource": "5egapqxD"}]}' \
    --clientId 'y4cLfNjz' \
    --namespace 'zEZYA8jI' \
    > test.out 2>&1
eval_tap $? 123 'AdminUpdateClientPermissionV3' test.out

#- 124 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --body '{"permissions": [{"action": 20, "resource": "MJb7cZ2b"}]}' \
    --clientId 'PsaLLpEB' \
    --namespace 'VEMk5AsK' \
    > test.out 2>&1
eval_tap $? 124 'AdminAddClientPermissionsV3' test.out

#- 125 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '0' \
    --clientId 'F2P44lXk' \
    --namespace 'I3zdiRiC' \
    --resource '5IbPit71' \
    > test.out 2>&1
eval_tap $? 125 'AdminDeleteClientPermissionV3' test.out

#- 126 RetrieveAllThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 \
    --namespace 'JWlYCoi4' \
    > test.out 2>&1
eval_tap $? 126 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 127 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 \
    --namespace 'nDfPu5V6' \
    > test.out 2>&1
eval_tap $? 127 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 128 RetrieveAllSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 \
    --namespace 'QSYxEVOr' \
    --limit '48' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 128 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 129 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace 'uZYmgUeE' \
    --platformId 'PB5AGPgv' \
    > test.out 2>&1
eval_tap $? 129 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 130 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --body '{"ACSURL": "k0Zthaj0", "AWSCognitoRegion": "EBA4azRz", "AWSCognitoUserPool": "0d56smob", "AppId": "or4p1Plg", "ClientId": "QB9EcNGO", "Environment": "eBRY6G5a", "FederationMetadataURL": "e07deDLa", "GenericOauthFlow": true, "IsActive": true, "Issuer": "beTfW0hg", "JWKSEndpoint": "zrabLJxE", "KeyID": "wJrEBmQ6", "NetflixCertificates": {"encryptedPrivateKey": "4haNOzlG", "encryptedPrivateKeyName": "u68UYyup", "publicCertificate": "jdDetnoT", "publicCertificateName": "0rfWtVPw", "rootCertificate": "Qfq6V92g", "rootCertificateName": "bfPouNdm"}, "OrganizationId": "P7fckVnu", "PlatformName": "DGvYIb1p", "RedirectUri": "5tcR5z8Z", "Secret": "JLjSHcaR", "TeamID": "3X4tZmwr", "TokenAuthenticationType": "0QmOnsEg", "TokenClaimsMapping": {"49eXp0xQ": "kZ2JjuwW"}}' \
    --namespace 'Wy0tU11P' \
    --platformId 'CeSrvejU' \
    > test.out 2>&1
eval_tap $? 130 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 131 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace 'KwVfF37V' \
    --platformId 'r7mkDzFB' \
    > test.out 2>&1
eval_tap $? 131 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 132 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --body '{"ACSURL": "I1VwhkVS", "AWSCognitoRegion": "KDlNFOUH", "AWSCognitoUserPool": "BJsvTsqk", "AppId": "9hg4hj6n", "ClientId": "UdebW6Us", "Environment": "kbPkkZAk", "FederationMetadataURL": "01f1KxCt", "GenericOauthFlow": true, "IsActive": true, "Issuer": "U2guN6U9", "JWKSEndpoint": "w13W1K9T", "KeyID": "ZQ4qRLEi", "NetflixCertificates": {"encryptedPrivateKey": "5wowE36r", "encryptedPrivateKeyName": "fmM0CCs3", "publicCertificate": "5TPUPLms", "publicCertificateName": "Y8WgwSx1", "rootCertificate": "DI5GH9bv", "rootCertificateName": "9ZTo2HpA"}, "OrganizationId": "6pzjHpZO", "PlatformName": "0E9iLgRP", "RedirectUri": "JK3nBae3", "Secret": "GOgbQrqr", "TeamID": "a0PtkfvO", "TokenAuthenticationType": "pY2ramp5", "TokenClaimsMapping": {"lnBn6xmB": "kfMtC66h"}}' \
    --namespace 'Fq0kPOkO' \
    --platformId 'Rm2XjlNE' \
    > test.out 2>&1
eval_tap $? 132 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 133 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --body '{"affectedClientIDs": ["E5ecPzAm"], "assignedNamespaces": ["i0ySJHfP"], "domain": "loP1XkYK", "roleId": "4MgIsDSF"}' \
    --namespace 'MPyMhyw1' \
    --platformId 'OLZPVwwx' \
    > test.out 2>&1
eval_tap $? 133 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 134 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --body '{"domain": "H4BIDJuD"}' \
    --namespace 'oShMMftl' \
    --platformId 'l8N0VvCh' \
    > test.out 2>&1
eval_tap $? 134 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 135 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace 'Hz9urmt7' \
    --platformId 'QWvE8s6U' \
    > test.out 2>&1
eval_tap $? 135 'RetrieveSSOLoginPlatformCredential' test.out

#- 136 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --body '{"acsUrl": "z8BRuYWD", "apiKey": "TtL6MTTR", "appId": "kCbb9S5Q", "federationMetadataUrl": "1IVHGT88", "isActive": false, "redirectUri": "rREBgYOW", "secret": "dHJ9Jumo", "ssoUrl": "htU13gf7"}' \
    --namespace 'TRigNZj5' \
    --platformId 'w5y3HmK8' \
    > test.out 2>&1
eval_tap $? 136 'AddSSOLoginPlatformCredential' test.out

#- 137 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace 'QVOa62eQ' \
    --platformId 'ZtbLLcF6' \
    > test.out 2>&1
eval_tap $? 137 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 138 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --body '{"acsUrl": "71WLtv38", "apiKey": "HecczopF", "appId": "meRwpcJB", "federationMetadataUrl": "Zyi3mLC4", "isActive": true, "redirectUri": "ekiSzeyo", "secret": "lnOQt0jo", "ssoUrl": "VHgCytC6"}' \
    --namespace 'lRG98Yxn' \
    --platformId 'HbRdoTKK' \
    > test.out 2>&1
eval_tap $? 138 'UpdateSSOPlatformCredential' test.out

#- 139 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace 'euSjfZe9' \
    --platformId 'i1osghF1' \
    --platformUserId 'hzi1Nl47' \
    > test.out 2>&1
eval_tap $? 139 'AdminGetUserByPlatformUserIDV3' test.out

#- 140 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace 'syJ5ibzS' \
    --roleId 'HZeCLIvW' \
    --after '83' \
    --before '94' \
    --limit '86' \
    > test.out 2>&1
eval_tap $? 140 'GetAdminUsersByRoleIdV3' test.out

#- 141 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace 'sdEqA61y' \
    --emailAddress 'TrMgsycT' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByEmailAddressV3' test.out

#- 142 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --body '{"userIds": ["gmPzc20E"]}' \
    --namespace 'uO5dMqGD' \
    > test.out 2>&1
eval_tap $? 142 'AdminListUserIDByUserIDsV3' test.out

#- 143 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --body '{"emailAddresses": ["lSZPY07r"], "isAdmin": true, "roles": ["VSjzHjL6"]}' \
    --namespace 'ZbXjG6DS' \
    > test.out 2>&1
eval_tap $? 143 'AdminInviteUserV3' test.out

#- 144 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace 'mpp3op8h' \
    --limit '38' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUsersV3' test.out

#- 145 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace 'RLxtW4Pv' \
    --by 'FkESTULa' \
    --endDate 't5F1Le7c' \
    --limit '87' \
    --offset '32' \
    --platformBy '6PWhZmmK' \
    --platformId 'z41i1Tp7' \
    --query '8FipJHah' \
    --startDate 'ViJvLYW0' \
    > test.out 2>&1
eval_tap $? 145 'AdminSearchUserV3' test.out

#- 146 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --body '{"listEmailAddressRequest": ["kdmlk2lu"]}' \
    --namespace 'qSOOA2VO' \
    > test.out 2>&1
eval_tap $? 146 'AdminGetBulkUserByEmailAddressV3' test.out

#- 147 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace 'ZBoNbB98' \
    --userId 'PuSGykqF' \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByUserIdV3' test.out

#- 148 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --body '{"avatarUrl": "zPwSMXT5", "country": "3bBuL38b", "dateOfBirth": "eOYDVuHZ", "displayName": "Q9LYt6w2", "languageTag": "3Wf8iEQo", "userName": "72sH0aRd"}' \
    --namespace 'cDlDyGcs' \
    --userId 'fIuI4Dv5' \
    > test.out 2>&1
eval_tap $? 148 'AdminUpdateUserV3' test.out

#- 149 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace 'lEJpK1Ay' \
    --userId 'RlzsrRXE' \
    --activeOnly 'True' \
    --after 'ZivQOHG6' \
    --before 'wVicNrat' \
    --limit '37' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetUserBanV3' test.out

#- 150 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --body '{"ban": "vvHLmIoh", "comment": "fNISLXMD", "endDate": "WDdm5FE4", "reason": "lliQMnut", "skipNotif": false}' \
    --namespace 'pEo4mUNH' \
    --userId 'Ftdml2xN' \
    > test.out 2>&1
eval_tap $? 150 'AdminBanUserV3' test.out

#- 151 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --body '{"enabled": true, "skipNotif": false}' \
    --banId 'WacJc3Fm' \
    --namespace '7Z548uuK' \
    --userId 'goCBqS5u' \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserBanV3' test.out

#- 152 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --body '{"context": "IdCbwCee", "emailAddress": "q9ouEdDt", "languageTag": "jOgsypLk"}' \
    --namespace 'm2ZYew5H' \
    --userId '7Zm0gnYy' \
    > test.out 2>&1
eval_tap $? 152 'AdminSendVerificationCodeV3' test.out

#- 153 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --body '{"Code": "j6MXf9G1", "ContactType": "ntyebvoe", "LanguageTag": "HenAALKt", "validateOnly": true}' \
    --namespace 'fxIH446o' \
    --userId 'UnP2S74u' \
    > test.out 2>&1
eval_tap $? 153 'AdminVerifyAccountV3' test.out

#- 154 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace 'nXwg0JKq' \
    --userId 'VWW1rjK1' \
    > test.out 2>&1
eval_tap $? 154 'GetUserVerificationCode' test.out

#- 155 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace 'epwkAvcs' \
    --userId 'YvbgfBVP' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetUserDeletionStatusV3' test.out

#- 156 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --body '{"enabled": false}' \
    --namespace 'Ta8Yuq7T' \
    --userId 'KiNXmz7e' \
    > test.out 2>&1
eval_tap $? 156 'AdminUpdateUserDeletionStatusV3' test.out

#- 157 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --body '{"code": "MrMD5Tba", "country": "UxTCTng0", "dateOfBirth": "xjtdBrjs", "displayName": "3Kiykt2C", "emailAddress": "k2gOlSat", "password": "ECZ2UgwQ", "validateOnly": true}' \
    --namespace 'DqYSxTPu' \
    --userId 'VlBqirdp' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpgradeHeadlessAccountV3' test.out

#- 158 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace '3yxnsETl' \
    --userId '1SvhQuds' \
    > test.out 2>&1
eval_tap $? 158 'AdminDeleteUserInformationV3' test.out

#- 159 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace 'jIhXdxiS' \
    --userId 'oWpnnxgX' \
    --after '0.9333933028392105' \
    --before '0.4379176918724914' \
    --limit '76' \
    > test.out 2>&1
eval_tap $? 159 'AdminGetUserLoginHistoriesV3' test.out

#- 160 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --body '{"Permissions": [{"Action": 33, "Resource": "zQIxibhp", "SchedAction": 79, "SchedCron": "YsHtdB3I", "SchedRange": ["kjuaZqhJ"]}]}' \
    --namespace 'ilrZkSSK' \
    --userId 'gP5rxCR7' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserPermissionV3' test.out

#- 161 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --body '{"Permissions": [{"Action": 64, "Resource": "9d5CA1GO", "SchedAction": 87, "SchedCron": "SbL9n0db", "SchedRange": ["WDEupmdL"]}]}' \
    --namespace 'QzPnNfBA' \
    --userId 'cWArbkCf' \
    > test.out 2>&1
eval_tap $? 161 'AdminAddUserPermissionsV3' test.out

#- 162 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --body '[{"Action": 7, "Resource": "HIZb03ot"}]' \
    --namespace 'qmBuS9V2' \
    --userId 'pCZ23UHm' \
    > test.out 2>&1
eval_tap $? 162 'AdminDeleteUserPermissionBulkV3' test.out

#- 163 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '20' \
    --namespace '0lpJ4JLl' \
    --resource '01qi7L2o' \
    --userId 'DUoVRUb3' \
    > test.out 2>&1
eval_tap $? 163 'AdminDeleteUserPermissionV3' test.out

#- 164 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace '9j22P4Sp' \
    --userId '09cKmjRU' \
    --after 'bZVBVS7O' \
    --before 'K2Zrdcsc' \
    --limit '21' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserPlatformAccountsV3' test.out

#- 165 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace 'MekROWZ2' \
    --userId 'KUTqkK2e' \
    > test.out 2>&1
eval_tap $? 165 'AdminGetListJusticePlatformAccounts' test.out

#- 166 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace 'FaGLoSmE' \
    --targetNamespace 'EPbLywJs' \
    --userId 'yUie6fZg' \
    > test.out 2>&1
eval_tap $? 166 'AdminCreateJusticeUser' test.out

#- 167 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --body '{"platformId": "LllUPsO8", "platformUserId": "lg46Si70"}' \
    --namespace '06vL2w4a' \
    --userId 'ajDAOx0i' \
    > test.out 2>&1
eval_tap $? 167 'AdminLinkPlatformAccount' test.out

#- 168 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --body '{"platformNamespace": "JjYleakt"}' \
    --namespace 'qv2WkljQ' \
    --platformId 'uD5mnJON' \
    --userId 'qHGq8mB7' \
    > test.out 2>&1
eval_tap $? 168 'AdminPlatformUnlinkV3' test.out

#- 169 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --ticket 'mF2lMFca' \
    --namespace 'ghFXJIJf' \
    --platformId 'lRHFcsIq' \
    --userId 'Cy4xDifS' \
    > test.out 2>&1
eval_tap $? 169 'AdminPlatformLinkV3' test.out

#- 170 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --body '["SQ5On2cc"]' \
    --namespace 'Ecl3xeiO' \
    --userId '4bwF5JOj' \
    > test.out 2>&1
eval_tap $? 170 'AdminDeleteUserRolesV3' test.out

#- 171 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --body '[{"namespace": "GoGxKM3q", "roleId": "Mce5tfLc"}]' \
    --namespace 'pjFZMKCb' \
    --userId 'p0pEbLCL' \
    > test.out 2>&1
eval_tap $? 171 'AdminSaveUserRoleV3' test.out

#- 172 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace 'FpHxMYF8' \
    --roleId '36075xEp' \
    --userId 'zdnYtpja' \
    > test.out 2>&1
eval_tap $? 172 'AdminAddUserRoleV3' test.out

#- 173 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace '5ig2isQZ' \
    --roleId 'ga6Vy76i' \
    --userId 'zPiQRjYa' \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserRoleV3' test.out

#- 174 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --body '{"enabled": false, "reason": "v5fIt22t"}' \
    --namespace 'IZhjhgki' \
    --userId 'gW22zXMW' \
    > test.out 2>&1
eval_tap $? 174 'AdminUpdateUserStatusV3' test.out

#- 175 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace 'XfbcM0GI' \
    --userId 'ALIbFCQg' \
    > test.out 2>&1
eval_tap $? 175 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 176 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'BcLNT6iO' \
    --before 'QVYx5rW2' \
    --isWildcard 'False' \
    --limit '76' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetRolesV3' test.out

#- 177 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "managers": [{"displayName": "itSn3UDe", "namespace": "Kj97I4WY", "userId": "XLqjN7kt"}], "members": [{"displayName": "OBTraBxW", "namespace": "RTVuYEqG", "userId": "lKDwTKXB"}], "permissions": [{"action": 34, "resource": "XiQcd9IW", "schedAction": 21, "schedCron": "iCKeQJWZ", "schedRange": ["Bvcq1ETv"]}], "roleName": "WBxYZJh7"}' \
    > test.out 2>&1
eval_tap $? 177 'AdminCreateRoleV3' test.out

#- 178 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'B8gbnSu9' \
    > test.out 2>&1
eval_tap $? 178 'AdminGetRoleV3' test.out

#- 179 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'M2OxD2ud' \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteRoleV3' test.out

#- 180 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --body '{"deletable": false, "isWildcard": false, "roleName": "YpCXYSMi"}' \
    --roleId 'y87CTqEQ' \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateRoleV3' test.out

#- 181 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'Bg36my3s' \
    > test.out 2>&1
eval_tap $? 181 'AdminGetRoleAdminStatusV3' test.out

#- 182 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'Y2clrDca' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateAdminRoleStatusV3' test.out

#- 183 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'in0cOVF1' \
    > test.out 2>&1
eval_tap $? 183 'AdminRemoveRoleAdminV3' test.out

#- 184 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'zHwDTI0s' \
    --after 'J1Q0kphM' \
    --before 'TggSP2SL' \
    --limit '5' \
    > test.out 2>&1
eval_tap $? 184 'AdminGetRoleManagersV3' test.out

#- 185 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --body '{"managers": [{"displayName": "uAP7vU97", "namespace": "1Czw2nbg", "userId": "8C7Mvywh"}]}' \
    --roleId 'u6MjOjuG' \
    > test.out 2>&1
eval_tap $? 185 'AdminAddRoleManagersV3' test.out

#- 186 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --body '{"managers": [{"displayName": "zo1Fz4tU", "namespace": "0aSn98N8", "userId": "qOUA0z92"}]}' \
    --roleId 'RaDe8ngT' \
    > test.out 2>&1
eval_tap $? 186 'AdminRemoveRoleManagersV3' test.out

#- 187 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId '8LRQkMnG' \
    --after '1LZyF2md' \
    --before 'YY6ZMfuT' \
    --limit '100' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetRoleMembersV3' test.out

#- 188 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --body '{"members": [{"displayName": "TKsue48q", "namespace": "BEBNAV5B", "userId": "Te6ec1zA"}]}' \
    --roleId '92URCLSG' \
    > test.out 2>&1
eval_tap $? 188 'AdminAddRoleMembersV3' test.out

#- 189 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --body '{"members": [{"displayName": "PmRBZWun", "namespace": "HW7MYvr6", "userId": "QA7Ppepc"}]}' \
    --roleId '92HA94eA' \
    > test.out 2>&1
eval_tap $? 189 'AdminRemoveRoleMembersV3' test.out

#- 190 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --body '{"permissions": [{"action": 57, "resource": "deyfUpgi", "schedAction": 82, "schedCron": "pf8nxKJ3", "schedRange": ["dnmtPwa6"]}]}' \
    --roleId '4Y4gPEKM' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpdateRolePermissionsV3' test.out

#- 191 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --body '{"permissions": [{"action": 15, "resource": "hu9a6f3x", "schedAction": 71, "schedCron": "NtUlKLlI", "schedRange": ["IAeHbm5M"]}]}' \
    --roleId '6LsY1VMu' \
    > test.out 2>&1
eval_tap $? 191 'AdminAddRolePermissionsV3' test.out

#- 192 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --body '["IEcRls68"]' \
    --roleId 'M3MPMRPB' \
    > test.out 2>&1
eval_tap $? 192 'AdminDeleteRolePermissionsV3' test.out

#- 193 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '9' \
    --resource 'pyyMz6zf' \
    --roleId 'R1pvTYYt' \
    > test.out 2>&1
eval_tap $? 193 'AdminDeleteRolePermissionV3' test.out

#- 194 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 194 'AdminGetMyUserV3' test.out

#- 195 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'DOiEi4Ru' \
    --extendExp 'True' \
    --redirectUri 'cHCSGhpO' \
    --password 'ZQFlwOiu' \
    --requestId 'KGDFgK49' \
    --userName 'YuKnXks0' \
    > test.out 2>&1
eval_tap $? 195 'UserAuthenticationV3' test.out

#- 196 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'False' \
    --clientId '8ANrcRal' \
    --linkingToken '7ta3fojA' \
    --password '3h4MMW3A' \
    --username 'J5zlsFBw' \
    > test.out 2>&1
eval_tap $? 196 'AuthenticationWithPlatformLinkV3' test.out

#- 197 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'False' \
    --linkingToken 'vLYvmg6a' \
    > test.out 2>&1
eval_tap $? 197 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 198 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 198 'GetCountryLocationV3' test.out

#- 199 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 199 'Logout' test.out

#- 200 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace 'vudQFF1C' \
    --platformId 'PNY9u2dV' \
    --userId 'YdglOOoC' \
    > test.out 2>&1
eval_tap $? 200 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 201 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace 'eK0kPKmB' \
    --userId 'qVux3lXc' \
    > test.out 2>&1
eval_tap $? 201 'RevokeUserV3' test.out

#- 202 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'D8aertAV' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'True' \
    --redirectUri 's8XT8xy3' \
    --scope 'nJ06Kkse' \
    --state 'A0ARj9ri' \
    --targetAuthPage 'cfayvnhi' \
    --clientId '8MDdY4WL' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 202 'AuthorizeV3' test.out

#- 203 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'aUkYnQp5' \
    > test.out 2>&1
eval_tap $? 203 'TokenIntrospectionV3' test.out

#- 204 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 204 'GetJWKSV3' test.out

#- 205 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'egdmVE8I' \
    --mfaToken 'mivNtQxq' \
    > test.out 2>&1
eval_tap $? 205 'Change2faMethod' test.out

#- 206 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'WRKHohOD' \
    --factor 'oWOr98kj' \
    --mfaToken 'BUas9jjz' \
    --rememberDevice 'True' \
    > test.out 2>&1
eval_tap $? 206 'Verify2faCode' test.out

#- 207 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace 'rgiaGrcB' \
    --platformId '7dIOVKIP' \
    --userId 'SJJHo5W8' \
    > test.out 2>&1
eval_tap $? 207 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 208 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'tKH8ou9S' \
    --clientId 'dbxSXcrE' \
    --redirectUri 'FCwqeGNL' \
    --requestId 'dIBRdliF' \
    > test.out 2>&1
eval_tap $? 208 'AuthCodeRequestV3' test.out

#- 209 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --clientId 'QVMKEzVU' \
    --createHeadless 'False' \
    --deviceId 'UWDs2x1E' \
    --platformToken 'QU0oepEv' \
    --platformId 'cjaSgEh6' \
    > test.out 2>&1
eval_tap $? 209 'PlatformTokenGrantV3' test.out

#- 210 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 210 'GetRevocationListV3' test.out

#- 211 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'jJnFxinI' \
    > test.out 2>&1
eval_tap $? 211 'TokenRevocationV3' test.out

#- 212 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --deviceId 'HJ1o7aq5' \
    --clientId 'Zznd5eac' \
    --code 'obTsuRlh' \
    --codeVerifier 'reQVFID3' \
    --extendExp 'False' \
    --password '8hJWVjKI' \
    --redirectUri 'OAw70DvA' \
    --refreshToken 'HhSGWUvz' \
    --username 'q1Za3IBC' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 212 'TokenGrantV3' test.out

#- 213 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'QFsUJPfi' \
    --code 'aJp1rt7O' \
    --error 'BgBCe6N0' \
    --openidAssocHandle 'eI65Mn5t' \
    --openidClaimedId 'ngEYXgPV' \
    --openidIdentity 'T5CqXDZB' \
    --openidMode 'VMJyJeKF' \
    --openidNs 'O92YDtaZ' \
    --openidOpEndpoint 'vJoKS0Ox' \
    --openidResponseNonce 'yipZuO4N' \
    --openidReturnTo '9S2YCgHa' \
    --openidSig '6XBcvGRY' \
    --openidSigned 'k5rUtWHC' \
    --state 'nhmzzppV' \
    > test.out 2>&1
eval_tap $? 213 'PlatformAuthenticationV3' test.out

#- 214 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'True' \
    --languageCode 'KNKYUQVB' \
    > test.out 2>&1
eval_tap $? 214 'PublicGetInputValidations' test.out

#- 215 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace 'XymWcNlH' \
    > test.out 2>&1
eval_tap $? 215 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 216 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --body '{"platformUserIds": ["aFxYaGHU"]}' \
    --namespace 'pmBFyOrF' \
    --platformId 'KtxGNAi0' \
    > test.out 2>&1
eval_tap $? 216 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 217 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace 'fq4xChPL' \
    --platformId 'd2lOopc7' \
    --platformUserId 'XoVpdd6r' \
    > test.out 2>&1
eval_tap $? 217 'PublicGetUserByPlatformUserIDV3' test.out

#- 218 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace 'CpyMrnH9' \
    --requestId 'YHXh7KnC' \
    > test.out 2>&1
eval_tap $? 218 'PublicGetAsyncStatus' test.out

#- 219 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace 'VOKY2zsB' \
    --by 'RGtd8QY2' \
    --limit '81' \
    --offset '75' \
    --query 'bijrvfr8' \
    > test.out 2>&1
eval_tap $? 219 'PublicSearchUserV3' test.out

#- 220 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --body '{"PasswordMD5Sum": "hknjWUWd", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "w4pNlGLj", "policyId": "dBxLM079", "policyVersionId": "pDAbTgms"}], "authType": "EYEq2GkY", "code": "K1vYm9fl", "country": "XQ7CQoem", "dateOfBirth": "nQG0dH0N", "displayName": "VM9VEHTP", "emailAddress": "qDhkcu5v", "password": "nz6GiNMb", "reachMinimumAge": false}' \
    --namespace 'BJHml0LJ' \
    > test.out 2>&1
eval_tap $? 220 'PublicCreateUserV3' test.out

#- 221 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace 'mpPi4mqh' \
    --field 'ruiCZLGG' \
    --query 'P5UXkHNT' \
    > test.out 2>&1
eval_tap $? 221 'CheckUserAvailability' test.out

#- 222 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --body '{"userIds": ["Mapp5Sbo"]}' \
    --namespace 'nsUJKADr' \
    > test.out 2>&1
eval_tap $? 222 'PublicBulkGetUsers' test.out

#- 223 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --body '{"emailAddress": "60EkdFrp", "languageTag": "LsGt9yTX"}' \
    --namespace 'WUSCQcMs' \
    > test.out 2>&1
eval_tap $? 223 'PublicSendRegistrationCode' test.out

#- 224 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --body '{"code": "HN7reI22", "emailAddress": "ks7I12tA"}' \
    --namespace 'Zc8sxxLx' \
    > test.out 2>&1
eval_tap $? 224 'PublicVerifyRegistrationCode' test.out

#- 225 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --body '{"emailAddress": "9XQeqNWL", "languageTag": "m8cNJbYH"}' \
    --namespace '5J4WiJLv' \
    > test.out 2>&1
eval_tap $? 225 'PublicForgotPasswordV3' test.out

#- 226 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId '9NvHwtw2' \
    --namespace 'Mjcy9ZL6' \
    > test.out 2>&1
eval_tap $? 226 'GetAdminInvitationV3' test.out

#- 227 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "5Bu2XYop", "policyId": "LWZeUKJJ", "policyVersionId": "NftRpGgk"}], "authType": "EMAILPASSWD", "country": "seREzzRG", "dateOfBirth": "6z9wmuHd", "displayName": "dyOdibI1", "password": "LVyqbdY8", "reachMinimumAge": true}' \
    --invitationId 'GZKAuoIK' \
    --namespace 'z3Pp3zLW' \
    > test.out 2>&1
eval_tap $? 227 'CreateUserFromInvitationV3' test.out

#- 228 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --body '{"avatarUrl": "UxMzMtSm", "country": "MmZP8nG0", "dateOfBirth": "FoQP8q7a", "displayName": "Ssb85gAh", "languageTag": "9RD3ZzN6", "userName": "N1iJ8ltt"}' \
    --namespace '9IRqCflg' \
    > test.out 2>&1
eval_tap $? 228 'UpdateUserV3' test.out

#- 229 PublicUpdateUserV3
samples/cli/sample-apps Iam publicUpdateUserV3 \
    --body '{"avatarUrl": "ln6r5f0s", "country": "5H6lCf3Q", "dateOfBirth": "Ha11hLLC", "displayName": "gw5av4LE", "languageTag": "xdabD8g2", "userName": "cvHfMRup"}' \
    --namespace 'DA5xbjs3' \
    > test.out 2>&1
eval_tap $? 229 'PublicUpdateUserV3' test.out

#- 230 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --body '{"context": "XRdHUJ0G", "emailAddress": "CmflIXkg", "languageTag": "J6zkTwoa"}' \
    --namespace 'kq7sEejF' \
    > test.out 2>&1
eval_tap $? 230 'PublicSendVerificationCodeV3' test.out

#- 231 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --body '{"code": "Z1NtONXb", "contactType": "9w9hsQHs", "languageTag": "zIsfrlzK", "validateOnly": false}' \
    --namespace 'Qdd58dZP' \
    > test.out 2>&1
eval_tap $? 231 'PublicUserVerificationV3' test.out

#- 232 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --body '{"code": "5RvrinNt", "country": "vBtqFSkA", "dateOfBirth": "68mIVYJ5", "displayName": "pSVxBsLh", "emailAddress": "ty3pecTo", "password": "XA4M1oUF", "validateOnly": false}' \
    --namespace 'go7Z6mwN' \
    > test.out 2>&1
eval_tap $? 232 'PublicUpgradeHeadlessAccountV3' test.out

#- 233 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --body '{"emailAddress": "C4FY69mM", "password": "87joJNOG"}' \
    --namespace 'B83Ns6Hl' \
    > test.out 2>&1
eval_tap $? 233 'PublicVerifyHeadlessAccountV3' test.out

#- 234 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --body '{"languageTag": "5Poab6lK", "newPassword": "oVqNBUzI", "oldPassword": "xOfglquS"}' \
    --namespace '2q2DoWr9' \
    > test.out 2>&1
eval_tap $? 234 'PublicUpdatePasswordV3' test.out

#- 235 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace 'zvFtKa2m' \
    --targetNamespace 'OAqOokV1' \
    > test.out 2>&1
eval_tap $? 235 'PublicCreateJusticeUser' test.out

#- 236 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --redirectUri 'plxQ2Yri' \
    --ticket 'TPfipD67' \
    --namespace 'jI2hiZkr' \
    --platformId 'tLnh2U1R' \
    > test.out 2>&1
eval_tap $? 236 'PublicPlatformLinkV3' test.out

#- 237 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --body '{"platformNamespace": "QlMxkfNM"}' \
    --namespace 'PNtqv2TM' \
    --platformId 'z1b7Snzk' \
    > test.out 2>&1
eval_tap $? 237 'PublicPlatformUnlinkV3' test.out

#- 238 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace 'XOek83Ig' \
    --platformId 'm1wkSWsY' \
    > test.out 2>&1
eval_tap $? 238 'PublicPlatformUnlinkAllV3' test.out

#- 239 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace 'vAsu18ob' \
    --platformId 'Udc8mbvX' \
    --clientId 'cwcgMqOX' \
    --redirectUri 'MziXrVds' \
    > test.out 2>&1
eval_tap $? 239 'PublicWebLinkPlatform' test.out

#- 240 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace 'Ec3ClFP3' \
    --platformId 'mJwusCBT' \
    --state 'e4kLcuqL' \
    > test.out 2>&1
eval_tap $? 240 'PublicWebLinkPlatformEstablish' test.out

#- 241 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --body '{"code": "40NYgekR", "emailAddress": "avpaGTA9", "newPassword": "BTyCCyN4"}' \
    --namespace 'Fw9i6mI2' \
    > test.out 2>&1
eval_tap $? 241 'ResetPasswordV3' test.out

#- 242 PublicGetUserByUserIdV3
samples/cli/sample-apps Iam publicGetUserByUserIdV3 \
    --namespace 'W3tjjCqP' \
    --userId 'VyYs01hE' \
    > test.out 2>&1
eval_tap $? 242 'PublicGetUserByUserIdV3' test.out

#- 243 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace 'YzWw3qrc' \
    --userId 'xM0DPAXQ' \
    --activeOnly 'True' \
    --after 'NMP7j3xf' \
    --before 'PaoZaWFs' \
    --limit '30' \
    > test.out 2>&1
eval_tap $? 243 'PublicGetUserBanHistoryV3' test.out

#- 244 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace 'kU5kn6Pl' \
    --userId 'PqD4Agfa' \
    > test.out 2>&1
eval_tap $? 244 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 245 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace 'sBfclBhZ' \
    --userId 'jZbLnmgh' \
    --after '0.5651488256014353' \
    --before '0.6539421036102435' \
    --limit '95' \
    > test.out 2>&1
eval_tap $? 245 'PublicGetUserLoginHistoriesV3' test.out

#- 246 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace 'In3qaHP7' \
    --userId 'KNulyfrE' \
    --after 'NVQkpcaW' \
    --before 'Hf6T2xOO' \
    --limit '23' \
    > test.out 2>&1
eval_tap $? 246 'PublicGetUserPlatformAccountsV3' test.out

#- 247 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --body '{"platformId": "jn7c6c9e", "platformUserId": "fJI02TZx"}' \
    --namespace 'rgLBFJEk' \
    --userId 'phFz0h6W' \
    > test.out 2>&1
eval_tap $? 247 'PublicLinkPlatformAccount' test.out

#- 248 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --body '{"chosenNamespaces": ["poVpVc2H"], "requestId": "BBmj6cEi"}' \
    --namespace '02hXl42u' \
    --userId 'bCRfy4Gj' \
    > test.out 2>&1
eval_tap $? 248 'PublicForceLinkPlatformWithProgression' test.out

#- 249 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --password 'Kn5ItHXL' \
    --namespace 'DZqpRhqn' \
    --userId 'R742GcbL' \
    > test.out 2>&1
eval_tap $? 249 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 250 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'uQOGMOEz' \
    --before 'mdjNhT0S' \
    --isWildcard 'False' \
    --limit '33' \
    > test.out 2>&1
eval_tap $? 250 'PublicGetRolesV3' test.out

#- 251 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'yfMBSaZc' \
    > test.out 2>&1
eval_tap $? 251 'PublicGetRoleV3' test.out

#- 252 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 252 'PublicGetMyUserV3' test.out

#- 253 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId '4SA16M8g' \
    --code 'QCD7aBHW' \
    --error 'CYevNkfc' \
    --state 'Qvl4Oso7' \
    > test.out 2>&1
eval_tap $? 253 'PlatformAuthenticateSAMLV3Handler' test.out

#- 254 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'tx65zXCi' \
    --payload 'TfjorLFq' \
    > test.out 2>&1
eval_tap $? 254 'LoginSSOClient' test.out

#- 255 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'TmIUFUoo' \
    > test.out 2>&1
eval_tap $? 255 'LogoutSSOClient' test.out

#- 256 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --body '{"userIds": ["nHBI13SZ"]}' \
    --namespace 'FHfm0F8v' \
    > test.out 2>&1
eval_tap $? 256 'AdminBulkCheckValidUserIDV4' test.out

#- 257 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --body '{"avatarUrl": "S2BrZ3nq", "country": "88YSSD7z", "dateOfBirth": "V0C8FvVU", "displayName": "3kRXBGPX", "languageTag": "Idft1biZ", "userName": "HuhWyFPH"}' \
    --namespace 'dXcyvZEh' \
    --userId 'YeUSy5Uk' \
    > test.out 2>&1
eval_tap $? 257 'AdminUpdateUserV4' test.out

#- 258 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --body '{"code": "c65naP11", "emailAddress": "R8Xww9vq"}' \
    --namespace '9nMa2Btg' \
    --userId 'wyuf2fjV' \
    > test.out 2>&1
eval_tap $? 258 'AdminUpdateUserEmailAddressV4' test.out

#- 259 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace '30SLxi7u' \
    --userId 'yhaeFtcO' \
    > test.out 2>&1
eval_tap $? 259 'AdminDisableUserMFAV4' test.out

#- 260 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace '9XNy63QO' \
    --userId '9vW0ck7T' \
    > test.out 2>&1
eval_tap $? 260 'AdminListUserRolesV4' test.out

#- 261 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --body '{"assignedNamespaces": ["EDE8LeEQ"], "roleId": "BeGPLiE6"}' \
    --namespace 'tHCr0GPF' \
    --userId 'vT0SAK91' \
    > test.out 2>&1
eval_tap $? 261 'AdminUpdateUserRoleV4' test.out

#- 262 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --body '{"assignedNamespaces": ["y5vCeBIJ"], "roleId": "q0B9UcI6"}' \
    --namespace 'c5cre9ea' \
    --userId 'lHOZphcL' \
    > test.out 2>&1
eval_tap $? 262 'AdminAddUserRoleV4' test.out

#- 263 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --body '{"assignedNamespaces": ["ncnjnmyU"], "roleId": "8FSxXdCr"}' \
    --namespace 'skoFqnow' \
    --userId 'q9Laz1GL' \
    > test.out 2>&1
eval_tap $? 263 'AdminRemoveUserRoleV4' test.out

#- 264 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'True' \
    --isWildcard 'False' \
    --limit '11' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 264 'AdminGetRolesV4' test.out

#- 265 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "VPm2g7xA"}' \
    > test.out 2>&1
eval_tap $? 265 'AdminCreateRoleV4' test.out

#- 266 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'FfRRLUjf' \
    > test.out 2>&1
eval_tap $? 266 'AdminGetRoleV4' test.out

#- 267 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'WS9sftIf' \
    > test.out 2>&1
eval_tap $? 267 'AdminDeleteRoleV4' test.out

#- 268 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "12PMcRO6"}' \
    --roleId 'E2Mkre5q' \
    > test.out 2>&1
eval_tap $? 268 'AdminUpdateRoleV4' test.out

#- 269 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --body '{"permissions": [{"action": 63, "resource": "vaACp6he", "schedAction": 10, "schedCron": "zjkPNNS0", "schedRange": ["BfgF6inI"]}]}' \
    --roleId 'RsZ5hrqN' \
    > test.out 2>&1
eval_tap $? 269 'AdminUpdateRolePermissionsV4' test.out

#- 270 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --body '{"permissions": [{"action": 51, "resource": "VszGVP5P", "schedAction": 16, "schedCron": "whcf30C1", "schedRange": ["KHRZHMGy"]}]}' \
    --roleId '5vbfZvYI' \
    > test.out 2>&1
eval_tap $? 270 'AdminAddRolePermissionsV4' test.out

#- 271 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --body '["FFctEKOL"]' \
    --roleId 'xSRxe0wm' \
    > test.out 2>&1
eval_tap $? 271 'AdminDeleteRolePermissionsV4' test.out

#- 272 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'WBMcNiWo' \
    --after 'obB6o6al' \
    --before 'TQcP0EpE' \
    --limit '45' \
    > test.out 2>&1
eval_tap $? 272 'AdminListAssignedUsersV4' test.out

#- 273 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --body '{"assignedNamespaces": ["GNVwkgfJ"], "namespace": "J2HIalfz", "userId": "gRpTf9lx"}' \
    --roleId 'F1JPBizX' \
    > test.out 2>&1
eval_tap $? 273 'AdminAssignUserToRoleV4' test.out

#- 274 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --body '{"namespace": "ZtrGe8Ly", "userId": "OH24nneZ"}' \
    --roleId 'HFeRld0b' \
    > test.out 2>&1
eval_tap $? 274 'AdminRevokeUserFromRoleV4' test.out

#- 275 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "GA7JxWYz", "country": "aEaimvok", "dateOfBirth": "cWX59kwi", "displayName": "YHgHT6Iv", "languageTag": "d0fGpU20", "userName": "9nVRclum"}' \
    > test.out 2>&1
eval_tap $? 275 'AdminUpdateMyUserV4' test.out

#- 276 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 276 'AdminDisableMyAuthenticatorV4' test.out

#- 277 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'QTFvr5rR' \
    > test.out 2>&1
eval_tap $? 277 'AdminEnableMyAuthenticatorV4' test.out

#- 278 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 278 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 279 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 279 'AdminGetMyBackupCodesV4' test.out

#- 280 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 280 'AdminGenerateMyBackupCodesV4' test.out

#- 281 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 281 'AdminDisableMyBackupCodesV4' test.out

#- 282 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 282 'AdminDownloadMyBackupCodesV4' test.out

#- 283 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 283 'AdminEnableMyBackupCodesV4' test.out

#- 284 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 284 'AdminGetMyEnabledFactorsV4' test.out

#- 285 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'yYzaNmz3' \
    > test.out 2>&1
eval_tap $? 285 'AdminMakeFactorMyDefaultV4' test.out

#- 286 AdminInviteUserV4
samples/cli/sample-apps Iam adminInviteUserV4 \
    --body '{"assignedNamespaces": ["PjMx2T89"], "emailAddresses": ["NTrFRUCX"], "isAdmin": true, "roleId": "kruxegpk"}' \
    > test.out 2>&1
eval_tap $? 286 'AdminInviteUserV4' test.out

#- 287 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "XCfzgcvv", "policyId": "0WE5EQhc", "policyVersionId": "omPS1E7c"}], "authType": "EMAILPASSWD", "country": "sLgr2zEn", "dateOfBirth": "jyRNjEC3", "displayName": "FMDcZvww", "emailAddress": "f8aU98In", "password": "31mF4jlw", "passwordMD5Sum": "KyGxTF1l", "username": "5q1Np0sT", "verified": false}' \
    --namespace 'AWOzjmh9' \
    > test.out 2>&1
eval_tap $? 287 'PublicCreateTestUserV4' test.out

#- 288 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Ifnhoo6x", "policyId": "UmTleUnJ", "policyVersionId": "FM7XhoDx"}], "authType": "EMAILPASSWD", "code": "k2JSfZ64", "country": "wWePq610", "dateOfBirth": "3PONKIS7", "displayName": "F9emW4R1", "emailAddress": "5tAsiG31", "password": "CEyUOuOZ", "passwordMD5Sum": "hmnHkvek", "reachMinimumAge": true, "username": "a5kNnocl"}' \
    --namespace 'xs9kxcvI' \
    > test.out 2>&1
eval_tap $? 288 'PublicCreateUserV4' test.out

#- 289 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "V7mCYfWK", "policyId": "jY9CsQYs", "policyVersionId": "GyhEOntE"}], "authType": "EMAILPASSWD", "country": "edM1A0bF", "dateOfBirth": "qvjxbT3Y", "displayName": "uVdaBN5R", "password": "SjhcjuDv", "reachMinimumAge": true, "username": "XL845jfh"}' \
    --invitationId '5tZ0hqJL' \
    --namespace 'jQUmoYUn' \
    > test.out 2>&1
eval_tap $? 289 'CreateUserFromInvitationV4' test.out

#- 290 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --body '{"avatarUrl": "C849OBNu", "country": "LZtofGAA", "dateOfBirth": "aMpBQArU", "displayName": "4RS0FQRy", "languageTag": "5Qz5Vcyf", "userName": "BpHjtvFw"}' \
    --namespace 'KSJyZeqv' \
    > test.out 2>&1
eval_tap $? 290 'PublicUpdateUserV4' test.out

#- 291 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --body '{"code": "pevcVXTx", "emailAddress": "s9LTorIy"}' \
    --namespace 'x23LhLy7' \
    > test.out 2>&1
eval_tap $? 291 'PublicUpdateUserEmailAddressV4' test.out

#- 292 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --body '{"code": "ds3g3BuH", "country": "TPF19dBY", "dateOfBirth": "Fws5Ya4e", "displayName": "OwWqW8Hi", "emailAddress": "LpTi1W63", "password": "HccgM5kY", "reachMinimumAge": true, "username": "36JpTL55", "validateOnly": true}' \
    --namespace 's3KCyplY' \
    > test.out 2>&1
eval_tap $? 292 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 293 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --body '{"emailAddress": "1ocKDCVa", "password": "qrVeegT3", "username": "uGDIIcvu"}' \
    --namespace 'uokt8TC3' \
    > test.out 2>&1
eval_tap $? 293 'PublicUpgradeHeadlessAccountV4' test.out

#- 294 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace '8mYoUanQ' \
    > test.out 2>&1
eval_tap $? 294 'PublicDisableMyAuthenticatorV4' test.out

#- 295 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --code 'T4Mmznv7' \
    --namespace 'r2jthibg' \
    > test.out 2>&1
eval_tap $? 295 'PublicEnableMyAuthenticatorV4' test.out

#- 296 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace 'eCLX41qy' \
    > test.out 2>&1
eval_tap $? 296 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 297 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace 'OiLgd8Wy' \
    > test.out 2>&1
eval_tap $? 297 'PublicGetMyBackupCodesV4' test.out

#- 298 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace '739QHzw0' \
    > test.out 2>&1
eval_tap $? 298 'PublicGenerateMyBackupCodesV4' test.out

#- 299 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace 'TEzpd7TV' \
    > test.out 2>&1
eval_tap $? 299 'PublicDisableMyBackupCodesV4' test.out

#- 300 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace '5vhMM2i3' \
    > test.out 2>&1
eval_tap $? 300 'PublicDownloadMyBackupCodesV4' test.out

#- 301 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace 'DM6etfI7' \
    > test.out 2>&1
eval_tap $? 301 'PublicEnableMyBackupCodesV4' test.out

#- 302 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --cookie 'TzC3sKmt' \
    --namespace 'syEKdO6H' \
    > test.out 2>&1
eval_tap $? 302 'PublicRemoveTrustedDeviceV4' test.out

#- 303 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace 'Nm3zGu71' \
    > test.out 2>&1
eval_tap $? 303 'PublicGetMyEnabledFactorsV4' test.out

#- 304 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --factor 'qTSSJEbW' \
    --namespace 'lETp9XOC' \
    > test.out 2>&1
eval_tap $? 304 'PublicMakeFactorMyDefaultV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE