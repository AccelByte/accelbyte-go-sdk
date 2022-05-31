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
    --body '{"ACSURL": "k0Zthaj0", "AWSCognitoRegion": "EBA4azRz", "AWSCognitoUserPool": "0d56smob", "AppId": "or4p1Plg", "ClientId": "QB9EcNGO", "Environment": "eBRY6G5a", "FederationMetadataURL": "e07deDLa", "GenericOauthFlow": true, "IsActive": true, "Issuer": "beTfW0hg", "JWKSEndpoint": "zrabLJxE", "KeyID": "wJrEBmQ6", "OrganizationId": "4haNOzlG", "PlatformName": "u68UYyup", "RedirectUri": "jdDetnoT", "Secret": "0rfWtVPw", "TeamID": "Qfq6V92g", "TokenAuthenticationType": "bfPouNdm", "TokenClaimsMapping": {"P7fckVnu": "DGvYIb1p"}}' \
    --namespace '5tcR5z8Z' \
    --platformId 'JLjSHcaR' \
    > test.out 2>&1
eval_tap $? 130 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 131 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace '3X4tZmwr' \
    --platformId '0QmOnsEg' \
    > test.out 2>&1
eval_tap $? 131 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 132 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --body '{"ACSURL": "49eXp0xQ", "AWSCognitoRegion": "kZ2JjuwW", "AWSCognitoUserPool": "Wy0tU11P", "AppId": "CeSrvejU", "ClientId": "KwVfF37V", "Environment": "r7mkDzFB", "FederationMetadataURL": "I1VwhkVS", "GenericOauthFlow": true, "IsActive": false, "Issuer": "NFOUHBJs", "JWKSEndpoint": "vTsqk9hg", "KeyID": "4hj6nUde", "OrganizationId": "bW6UskbP", "PlatformName": "kkZAk01f", "RedirectUri": "1KxCtWAD", "Secret": "U2guN6U9", "TeamID": "w13W1K9T", "TokenAuthenticationType": "ZQ4qRLEi", "TokenClaimsMapping": {"5wowE36r": "fmM0CCs3"}}' \
    --namespace '5TPUPLms' \
    --platformId 'Y8WgwSx1' \
    > test.out 2>&1
eval_tap $? 132 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 133 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --body '{"affectedClientIDs": ["DI5GH9bv"], "assignedNamespaces": ["9ZTo2HpA"], "domain": "6pzjHpZO", "roleId": "0E9iLgRP"}' \
    --namespace 'JK3nBae3' \
    --platformId 'GOgbQrqr' \
    > test.out 2>&1
eval_tap $? 133 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 134 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --body '{"domain": "a0PtkfvO"}' \
    --namespace 'pY2ramp5' \
    --platformId 'lnBn6xmB' \
    > test.out 2>&1
eval_tap $? 134 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 135 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace 'kfMtC66h' \
    --platformId 'Fq0kPOkO' \
    > test.out 2>&1
eval_tap $? 135 'RetrieveSSOLoginPlatformCredential' test.out

#- 136 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --body '{"acsUrl": "Rm2XjlNE", "apiKey": "E5ecPzAm", "appId": "i0ySJHfP", "federationMetadataUrl": "loP1XkYK", "isActive": false, "redirectUri": "IsDSFMPy", "secret": "Mhyw1OLZ", "ssoUrl": "PVwwxH4B"}' \
    --namespace 'IDJuDoSh' \
    --platformId 'MMftll8N' \
    > test.out 2>&1
eval_tap $? 136 'AddSSOLoginPlatformCredential' test.out

#- 137 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace '0VvChHz9' \
    --platformId 'urmt7QWv' \
    > test.out 2>&1
eval_tap $? 137 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 138 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --body '{"acsUrl": "E8s6Uz8B", "apiKey": "RuYWDTtL", "appId": "6MTTRkCb", "federationMetadataUrl": "b9S5Q1IV", "isActive": false, "redirectUri": "rREBgYOW", "secret": "dHJ9Jumo", "ssoUrl": "htU13gf7"}' \
    --namespace 'TRigNZj5' \
    --platformId 'w5y3HmK8' \
    > test.out 2>&1
eval_tap $? 138 'UpdateSSOPlatformCredential' test.out

#- 139 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace 'QVOa62eQ' \
    --platformId 'ZtbLLcF6' \
    --platformUserId '71WLtv38' \
    > test.out 2>&1
eval_tap $? 139 'AdminGetUserByPlatformUserIDV3' test.out

#- 140 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace 'HecczopF' \
    --roleId 'meRwpcJB' \
    --after '49' \
    --before '17' \
    --limit '25' \
    > test.out 2>&1
eval_tap $? 140 'GetAdminUsersByRoleIdV3' test.out

#- 141 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace 'LC4Kzeki' \
    --emailAddress 'SzeyolnO' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByEmailAddressV3' test.out

#- 142 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --body '{"userIds": ["Qt0joVHg"]}' \
    --namespace 'CytC6lRG' \
    > test.out 2>&1
eval_tap $? 142 'AdminListUserIDByUserIDsV3' test.out

#- 143 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --body '{"emailAddresses": ["98YxnHbR"], "isAdmin": false, "roles": ["oTKKeuSj"]}' \
    --namespace 'fZe9i1os' \
    > test.out 2>&1
eval_tap $? 143 'AdminInviteUserV3' test.out

#- 144 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace 'ghF1hzi1' \
    --limit '79' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUsersV3' test.out

#- 145 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace '47syJ5ib' \
    --by 'zSHZeCLI' \
    --endDate 'vWPVRsdE' \
    --limit '33' \
    --offset '53' \
    --platformBy '61yTrMgs' \
    --platformId 'ycTgmPzc' \
    --query '20EuO5dM' \
    --startDate 'qGDlSZPY' \
    > test.out 2>&1
eval_tap $? 145 'AdminSearchUserV3' test.out

#- 146 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --body '{"listEmailAddressRequest": ["07rEVSjz"]}' \
    --namespace 'HjL6ZbXj' \
    > test.out 2>&1
eval_tap $? 146 'AdminGetBulkUserByEmailAddressV3' test.out

#- 147 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace 'G6DSmpp3' \
    --userId 'op8htaRL' \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByUserIdV3' test.out

#- 148 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --body '{"country": "xtW4PvFk", "dateOfBirth": "ESTULat5", "displayName": "F1Le7cR7", "languageTag": "q6PWhZmm", "userName": "Kz41i1Tp"}' \
    --namespace '78FipJHa' \
    --userId 'hViJvLYW' \
    > test.out 2>&1
eval_tap $? 148 'AdminUpdateUserV3' test.out

#- 149 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace '0kdmlk2l' \
    --userId 'uqSOOA2V' \
    --activeOnly 'True' \
    --after 'oNbB98Pu' \
    --before 'SGykqFzP' \
    --limit '45' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetUserBanV3' test.out

#- 150 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --body '{"ban": "SMXT53bB", "comment": "uL38beOY", "endDate": "DVuHZQ9L", "reason": "Yt6w23Wf", "skipNotif": false}' \
    --namespace 'EQo72sH0' \
    --userId 'aRdcDlDy' \
    > test.out 2>&1
eval_tap $? 150 'AdminBanUserV3' test.out

#- 151 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --body '{"enabled": false, "skipNotif": true}' \
    --banId 'fIuI4Dv5' \
    --namespace 'lEJpK1Ay' \
    --userId 'RlzsrRXE' \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserBanV3' test.out

#- 152 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --body '{"context": "FZivQOHG", "emailAddress": "6wVicNra", "languageTag": "tsvvHLmI"}' \
    --namespace 'ohfNISLX' \
    --userId 'MDWDdm5F' \
    > test.out 2>&1
eval_tap $? 152 'AdminSendVerificationCodeV3' test.out

#- 153 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --body '{"Code": "E4lliQMn", "ContactType": "utJbpEo4", "LanguageTag": "mUNHFtdm", "validateOnly": false}' \
    --namespace '2xNviWac' \
    --userId 'Jc3Fm7Z5' \
    > test.out 2>&1
eval_tap $? 153 'AdminVerifyAccountV3' test.out

#- 154 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace '48uuKgoC' \
    --userId 'BqS5uIdC' \
    > test.out 2>&1
eval_tap $? 154 'GetUserVerificationCode' test.out

#- 155 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace 'bwCeeq9o' \
    --userId 'uEdDtjOg' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetUserDeletionStatusV3' test.out

#- 156 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --body '{"enabled": true}' \
    --namespace 'ypLkm2ZY' \
    --userId 'ew5H7Zm0' \
    > test.out 2>&1
eval_tap $? 156 'AdminUpdateUserDeletionStatusV3' test.out

#- 157 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --body '{"code": "gnYyj6MX", "country": "f9G1ntye", "dateOfBirth": "bvoeHenA", "displayName": "ALKt7Efx", "emailAddress": "IH446oUn", "password": "P2S74unX", "validateOnly": true}' \
    --namespace 'g0JKqVWW' \
    --userId '1rjK1epw' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpgradeHeadlessAccountV3' test.out

#- 158 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace 'kAvcsYvb' \
    --userId 'gfBVPpTa' \
    > test.out 2>&1
eval_tap $? 158 'AdminDeleteUserInformationV3' test.out

#- 159 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace '8Yuq7TKi' \
    --userId 'NXmz7eMr' \
    --after '0.5994643901502835' \
    --before '0.9044328236015272' \
    --limit '2' \
    > test.out 2>&1
eval_tap $? 159 'AdminGetUserLoginHistoriesV3' test.out

#- 160 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --body '{"Permissions": [{"Action": 0, "Resource": "UxTCTng0", "SchedAction": 46, "SchedCron": "jtdBrjs3", "SchedRange": ["Kiykt2Ck"]}]}' \
    --namespace '2gOlSatE' \
    --userId 'CZ2UgwQL' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserPermissionV3' test.out

#- 161 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --body '{"Permissions": [{"Action": 33, "Resource": "DqYSxTPu", "SchedAction": 94, "SchedCron": "lBqirdp3", "SchedRange": ["yxnsETl1"]}]}' \
    --namespace 'SvhQudsj' \
    --userId 'IhXdxiSo' \
    > test.out 2>&1
eval_tap $? 161 'AdminAddUserPermissionsV3' test.out

#- 162 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --body '[{"Action": 97, "Resource": "pnnxgX7B"}]' \
    --namespace 'CPMqzQIx' \
    --userId 'ibhpNYsH' \
    > test.out 2>&1
eval_tap $? 162 'AdminDeleteUserPermissionBulkV3' test.out

#- 163 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '38' \
    --namespace 'dB3Ikjua' \
    --resource 'ZqhJilrZ' \
    --userId 'kSSKgP5r' \
    > test.out 2>&1
eval_tap $? 163 'AdminDeleteUserPermissionV3' test.out

#- 164 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace 'xCR77G9d' \
    --userId '5CA1GORS' \
    --after 'bL9n0dbW' \
    --before 'DEupmdLQ' \
    --limit '50' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserPlatformAccountsV3' test.out

#- 165 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace 'PnNfBAcW' \
    --userId 'ArbkCfdH' \
    > test.out 2>&1
eval_tap $? 165 'AdminGetListJusticePlatformAccounts' test.out

#- 166 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace 'IZb03otq' \
    --targetNamespace 'mBuS9V2p' \
    --userId 'CZ23UHmk' \
    > test.out 2>&1
eval_tap $? 166 'AdminCreateJusticeUser' test.out

#- 167 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --body '{"platformId": "0lpJ4JLl", "platformUserId": "01qi7L2o"}' \
    --namespace 'DUoVRUb3' \
    --userId '9j22P4Sp' \
    > test.out 2>&1
eval_tap $? 167 'AdminLinkPlatformAccount' test.out

#- 168 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --body '{"platformNamespace": "09cKmjRU"}' \
    --namespace 'bZVBVS7O' \
    --platformId 'K2Zrdcsc' \
    --userId 'kMekROWZ' \
    > test.out 2>&1
eval_tap $? 168 'AdminPlatformUnlinkV3' test.out

#- 169 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --ticket '2KUTqkK2' \
    --namespace 'eFaGLoSm' \
    --platformId 'EEPbLywJ' \
    --userId 'syUie6fZ' \
    > test.out 2>&1
eval_tap $? 169 'AdminPlatformLinkV3' test.out

#- 170 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --body '["gLllUPsO"]' \
    --namespace '8lg46Si7' \
    --userId '006vL2w4' \
    > test.out 2>&1
eval_tap $? 170 'AdminDeleteUserRolesV3' test.out

#- 171 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --body '[{"namespace": "aajDAOx0", "roleId": "iJjYleak"}]' \
    --namespace 'tqv2Wklj' \
    --userId 'QuD5mnJO' \
    > test.out 2>&1
eval_tap $? 171 'AdminSaveUserRoleV3' test.out

#- 172 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace 'NqHGq8mB' \
    --roleId '7mF2lMFc' \
    --userId 'aghFXJIJ' \
    > test.out 2>&1
eval_tap $? 172 'AdminAddUserRoleV3' test.out

#- 173 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace 'flRHFcsI' \
    --roleId 'qCy4xDif' \
    --userId 'SSQ5On2c' \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserRoleV3' test.out

#- 174 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --body '{"enabled": false, "reason": "Ecl3xeiO"}' \
    --namespace '4bwF5JOj' \
    --userId 'GoGxKM3q' \
    > test.out 2>&1
eval_tap $? 174 'AdminUpdateUserStatusV3' test.out

#- 175 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace 'Mce5tfLc' \
    --userId 'pjFZMKCb' \
    > test.out 2>&1
eval_tap $? 175 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 176 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'p0pEbLCL' \
    --before 'FpHxMYF8' \
    --isWildcard 'True' \
    --limit '60' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetRolesV3' test.out

#- 177 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "managers": [{"displayName": "nYtpja5i", "namespace": "g2isQZga", "userId": "6Vy76izP"}], "members": [{"displayName": "iQRjYa8f", "namespace": "v5fIt22t", "userId": "IZhjhgki"}], "permissions": [{"action": 13, "resource": "W22zXMWX", "schedAction": 11, "schedCron": "bcM0GIAL", "schedRange": ["IbFCQgBc"]}], "roleName": "LNT6iOQV"}' \
    > test.out 2>&1
eval_tap $? 177 'AdminCreateRoleV3' test.out

#- 178 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'Yx5rW2gM' \
    > test.out 2>&1
eval_tap $? 178 'AdminGetRoleV3' test.out

#- 179 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'sI1aYBit' \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteRoleV3' test.out

#- 180 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --body '{"deletable": false, "isWildcard": true, "roleName": "eKj97I4W"}' \
    --roleId 'YXLqjN7k' \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateRoleV3' test.out

#- 181 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'tOBTraBx' \
    > test.out 2>&1
eval_tap $? 181 'AdminGetRoleAdminStatusV3' test.out

#- 182 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'WRTVuYEq' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateAdminRoleStatusV3' test.out

#- 183 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'GlKDwTKX' \
    > test.out 2>&1
eval_tap $? 183 'AdminRemoveRoleAdminV3' test.out

#- 184 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'BrXiQcd9' \
    --after 'IW8kiCKe' \
    --before 'QJWZBvcq' \
    --limit '61' \
    > test.out 2>&1
eval_tap $? 184 'AdminGetRoleManagersV3' test.out

#- 185 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --body '{"managers": [{"displayName": "TvWBxYZJ", "namespace": "h7B8gbnS", "userId": "u9M2OxD2"}]}' \
    --roleId 'udaeYpCX' \
    > test.out 2>&1
eval_tap $? 185 'AdminAddRoleManagersV3' test.out

#- 186 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --body '{"managers": [{"displayName": "YSMiy87C", "namespace": "TqEQBg36", "userId": "my3sY2cl"}]}' \
    --roleId 'rDcain0c' \
    > test.out 2>&1
eval_tap $? 186 'AdminRemoveRoleManagersV3' test.out

#- 187 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'OVF1zHwD' \
    --after 'TI0sJ1Q0' \
    --before 'kphMTggS' \
    --limit '82' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetRoleMembersV3' test.out

#- 188 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --body '{"members": [{"displayName": "2SLcuAP7", "namespace": "vU971Czw", "userId": "2nbg8C7M"}]}' \
    --roleId 'vywhu6Mj' \
    > test.out 2>&1
eval_tap $? 188 'AdminAddRoleMembersV3' test.out

#- 189 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --body '{"members": [{"displayName": "OjuGzo1F", "namespace": "z4tU0aSn", "userId": "98N8qOUA"}]}' \
    --roleId '0z92RaDe' \
    > test.out 2>&1
eval_tap $? 189 'AdminRemoveRoleMembersV3' test.out

#- 190 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --body '{"permissions": [{"action": 27, "resource": "gT8LRQkM", "schedAction": 26, "schedCron": "G1LZyF2m", "schedRange": ["dYY6ZMfu"]}]}' \
    --roleId 'TYTKsue4' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpdateRolePermissionsV3' test.out

#- 191 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --body '{"permissions": [{"action": 32, "resource": "BEBNAV5B", "schedAction": 91, "schedCron": "e6ec1zA9", "schedRange": ["2URCLSGP"]}]}' \
    --roleId 'mRBZWunH' \
    > test.out 2>&1
eval_tap $? 191 'AdminAddRolePermissionsV3' test.out

#- 192 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --body '["W7MYvr6Q"]' \
    --roleId 'A7Ppepc9' \
    > test.out 2>&1
eval_tap $? 192 'AdminDeleteRolePermissionsV3' test.out

#- 193 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '67' \
    --resource 'A94eACde' \
    --roleId 'yfUpgiPp' \
    > test.out 2>&1
eval_tap $? 193 'AdminDeleteRolePermissionV3' test.out

#- 194 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 194 'AdminGetMyUserV3' test.out

#- 195 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'f8nxKJ3d' \
    --extendExp 'False' \
    --redirectUri 'mtPwa64Y' \
    --password '4gPEKMhh' \
    --requestId 'u9a6f3xJ' \
    --userName 'NtUlKLlI' \
    > test.out 2>&1
eval_tap $? 195 'UserAuthenticationV3' test.out

#- 196 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'True' \
    --clientId 'eHbm5M6L' \
    --linkingToken 'sY1VMuIE' \
    --password 'cRls68M3' \
    --username 'MPMRPBep' \
    > test.out 2>&1
eval_tap $? 196 'AuthenticationWithPlatformLinkV3' test.out

#- 197 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'True' \
    --linkingToken 'yMz6zfR1' \
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
    --namespace 'pvTYYtDO' \
    --platformId 'iEi4RuEc' \
    --userId 'HCSGhpOZ' \
    > test.out 2>&1
eval_tap $? 200 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 201 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace 'QFlwOiuK' \
    --userId 'GDFgK49Y' \
    > test.out 2>&1
eval_tap $? 201 'RevokeUserV3' test.out

#- 202 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'uKnXks0m' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'True' \
    --redirectUri 'cRal7ta3' \
    --scope 'fojA3h4M' \
    --state 'MW3AJ5zl' \
    --targetAuthPage 'sFBwjvLY' \
    --clientId 'vmg6avud' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 202 'AuthorizeV3' test.out

#- 203 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'F1CPNY9u' \
    > test.out 2>&1
eval_tap $? 203 'TokenIntrospectionV3' test.out

#- 204 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 204 'GetJWKSV3' test.out

#- 205 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor '2dVYdglO' \
    --mfaToken 'OoCeK0kP' \
    > test.out 2>&1
eval_tap $? 205 'Change2faMethod' test.out

#- 206 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'KmBqVux3' \
    --factor 'lXcD8aer' \
    --mfaToken 'tAVCqs8X' \
    --rememberDevice 'True' \
    > test.out 2>&1
eval_tap $? 206 'Verify2faCode' test.out

#- 207 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace 'y3nJ06Kk' \
    --platformId 'seA0ARj9' \
    --userId 'ricfayvn' \
    > test.out 2>&1
eval_tap $? 207 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 208 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'hi8MDdY4' \
    --clientId 'WLHoaUkY' \
    --redirectUri 'nQp5egdm' \
    --requestId 'VE8ImivN' \
    > test.out 2>&1
eval_tap $? 208 'AuthCodeRequestV3' test.out

#- 209 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --clientId 'tQxqWRKH' \
    --createHeadless 'False' \
    --deviceId 'hODoWOr9' \
    --platformToken '8kjBUas9' \
    --platformId 'jjz2Frgi' \
    > test.out 2>&1
eval_tap $? 209 'PlatformTokenGrantV3' test.out

#- 210 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 210 'GetRevocationListV3' test.out

#- 211 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'aGrcB7dI' \
    > test.out 2>&1
eval_tap $? 211 'TokenRevocationV3' test.out

#- 212 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --deviceId 'OVKIPSJJ' \
    --clientId 'Ho5W8tKH' \
    --code '8ou9Sdbx' \
    --codeVerifier 'SXcrEFCw' \
    --extendExp 'True' \
    --password 'eGNLdIBR' \
    --redirectUri 'dliFQVMK' \
    --refreshToken 'EzVUWlUW' \
    --username 'Ds2x1EQU' \
    --grantType 'client_credentials' \
    > test.out 2>&1
eval_tap $? 212 'TokenGrantV3' test.out

#- 213 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'epEvcjaS' \
    --code 'gEh6jJnF' \
    --error 'xinIHJ1o' \
    --openidAssocHandle '7aq5Zznd' \
    --openidClaimedId '5eacobTs' \
    --openidIdentity 'uRlhreQV' \
    --openidMode 'FID3o8hJ' \
    --openidNs 'WVjKIOAw' \
    --openidOpEndpoint '70DvAHhS' \
    --openidResponseNonce 'GWUvzq1Z' \
    --openidReturnTo 'a3IBC4vQ' \
    --openidSig 'FsUJPfia' \
    --openidSigned 'Jp1rt7OB' \
    --state 'gBCe6N0e' \
    > test.out 2>&1
eval_tap $? 213 'PlatformAuthenticationV3' test.out

#- 214 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'False' \
    --languageCode '5tngEYXg' \
    > test.out 2>&1
eval_tap $? 214 'PublicGetInputValidations' test.out

#- 215 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace 'PVT5CqXD' \
    > test.out 2>&1
eval_tap $? 215 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 216 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --body '{"platformUserIds": ["ZBVMJyJe"]}' \
    --namespace 'KFO92YDt' \
    --platformId 'aZvJoKS0' \
    > test.out 2>&1
eval_tap $? 216 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 217 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace 'OxyipZuO' \
    --platformId '4N9S2YCg' \
    --platformUserId 'Ha6XBcvG' \
    > test.out 2>&1
eval_tap $? 217 'PublicGetUserByPlatformUserIDV3' test.out

#- 218 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace 'RYk5rUtW' \
    --requestId 'HCnhmzzp' \
    > test.out 2>&1
eval_tap $? 218 'PublicGetAsyncStatus' test.out

#- 219 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace 'pV7tKNKY' \
    --by 'UQVBXymW' \
    --limit 'cNlHaFxY' \
    --offset 'aGHUpmBF' \
    --query 'yOrFKtxG' \
    > test.out 2>&1
eval_tap $? 219 'PublicSearchUserV3' test.out

#- 220 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --body '{"PasswordMD5Sum": "NAi0fq4x", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "hPLd2lOo", "policyId": "pc7XoVpd", "policyVersionId": "d6rCpyMr"}], "authType": "nH9YHXh7", "code": "KnCVOKY2", "country": "zsBRGtd8", "dateOfBirth": "QY2OLbij", "displayName": "rvfr8hkn", "emailAddress": "jWUWdMUX", "password": "Hvw4pNlG", "reachMinimumAge": false}' \
    --namespace 'dBxLM079' \
    > test.out 2>&1
eval_tap $? 220 'PublicCreateUserV3' test.out

#- 221 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace 'pDAbTgms' \
    --field 'EYEq2GkY' \
    --query 'K1vYm9fl' \
    > test.out 2>&1
eval_tap $? 221 'CheckUserAvailability' test.out

#- 222 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --body '{"userIds": ["XQ7CQoem"]}' \
    --namespace 'nQG0dH0N' \
    > test.out 2>&1
eval_tap $? 222 'PublicBulkGetUsers' test.out

#- 223 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --body '{"emailAddress": "VM9VEHTP", "languageTag": "qDhkcu5v"}' \
    --namespace 'nz6GiNMb' \
    > test.out 2>&1
eval_tap $? 223 'PublicSendRegistrationCode' test.out

#- 224 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --body '{"code": "oBJHml0L", "emailAddress": "JmpPi4mq"}' \
    --namespace 'hruiCZLG' \
    > test.out 2>&1
eval_tap $? 224 'PublicVerifyRegistrationCode' test.out

#- 225 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --body '{"emailAddress": "GP5UXkHN", "languageTag": "TMapp5Sb"}' \
    --namespace 'onsUJKAD' \
    > test.out 2>&1
eval_tap $? 225 'PublicForgotPasswordV3' test.out

#- 226 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'r60EkdFr' \
    --namespace 'pLsGt9yT' \
    > test.out 2>&1
eval_tap $? 226 'GetAdminInvitationV3' test.out

#- 227 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "QcMsHN7r", "policyId": "eI22ks7I", "policyVersionId": "12tAZc8s"}], "authType": "EMAILPASSWD", "country": "xLx9XQeq", "dateOfBirth": "NWLm8cNJ", "displayName": "bYH5J4Wi", "password": "JLv9NvHw", "reachMinimumAge": true}' \
    --invitationId 'w2Mjcy9Z' \
    --namespace 'L6Zs5Bu2' \
    > test.out 2>&1
eval_tap $? 227 'CreateUserFromInvitationV3' test.out

#- 228 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --body '{"country": "XYopLWZe", "dateOfBirth": "UKJJNftR", "displayName": "pGgk1ise", "languageTag": "REzzRG6z", "userName": "9wmuHddy"}' \
    --namespace 'OdibI1LV' \
    > test.out 2>&1
eval_tap $? 228 'UpdateUserV3' test.out

#- 229 PublicUpdateUserV3
samples/cli/sample-apps Iam publicUpdateUserV3 \
    --body '{"country": "yqbdY8DG", "dateOfBirth": "ZKAuoIKz", "displayName": "3Pp3zLWU", "languageTag": "xMzMtSmM", "userName": "mZP8nG0F"}' \
    --namespace 'oQP8q7aS' \
    > test.out 2>&1
eval_tap $? 229 'PublicUpdateUserV3' test.out

#- 230 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --body '{"context": "sb85gAh9", "emailAddress": "RD3ZzN6N", "languageTag": "1iJ8ltt9"}' \
    --namespace 'IRqCflgl' \
    > test.out 2>&1
eval_tap $? 230 'PublicSendVerificationCodeV3' test.out

#- 231 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --body '{"code": "n6r5f0s5", "contactType": "H6lCf3QH", "languageTag": "a11hLLCg", "validateOnly": true}' \
    --namespace '5av4LExd' \
    > test.out 2>&1
eval_tap $? 231 'PublicUserVerificationV3' test.out

#- 232 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --body '{"code": "abD8g2cv", "country": "HfMRupDA", "dateOfBirth": "5xbjs3XR", "displayName": "dHUJ0GCm", "emailAddress": "flIXkgJ6", "password": "zkTwoakq", "validateOnly": true}' \
    --namespace 'EejFZ1Nt' \
    > test.out 2>&1
eval_tap $? 232 'PublicUpgradeHeadlessAccountV3' test.out

#- 233 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --body '{"emailAddress": "ONXb9w9h", "password": "sQHszIsf"}' \
    --namespace 'rlzKpQdd' \
    > test.out 2>&1
eval_tap $? 233 'PublicVerifyHeadlessAccountV3' test.out

#- 234 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --body '{"languageTag": "58dZP5Rv", "newPassword": "rinNtvBt", "oldPassword": "qFSkA68m"}' \
    --namespace 'IVYJ5pSV' \
    > test.out 2>&1
eval_tap $? 234 'PublicUpdatePasswordV3' test.out

#- 235 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace 'xBsLhty3' \
    --targetNamespace 'pecToXA4' \
    > test.out 2>&1
eval_tap $? 235 'PublicCreateJusticeUser' test.out

#- 236 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --redirectUri 'M1oUFPhg' \
    --ticket 'o7Z6mwNC' \
    --namespace '4FY69mM8' \
    --platformId '7joJNOGB' \
    > test.out 2>&1
eval_tap $? 236 'PublicPlatformLinkV3' test.out

#- 237 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --body '{"platformNamespace": "83Ns6Hl5"}' \
    --namespace 'Poab6lKo' \
    --platformId 'VqNBUzIx' \
    > test.out 2>&1
eval_tap $? 237 'PublicPlatformUnlinkV3' test.out

#- 238 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace 'OfglquS2' \
    --platformId 'q2DoWr9z' \
    > test.out 2>&1
eval_tap $? 238 'PublicPlatformUnlinkAllV3' test.out

#- 239 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace 'vFtKa2mO' \
    --platformId 'AqOokV1p' \
    --clientId 'lxQ2YriT' \
    --redirectUri 'PfipD67j' \
    > test.out 2>&1
eval_tap $? 239 'PublicWebLinkPlatform' test.out

#- 240 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace 'I2hiZkrt' \
    --platformId 'Lnh2U1RQ' \
    --state 'lMxkfNMP' \
    > test.out 2>&1
eval_tap $? 240 'PublicWebLinkPlatformEstablish' test.out

#- 241 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --body '{"code": "Ntqv2TMz", "emailAddress": "1b7SnzkX", "newPassword": "Oek83Igm"}' \
    --namespace '1wkSWsYv' \
    > test.out 2>&1
eval_tap $? 241 'ResetPasswordV3' test.out

#- 242 PublicGetUserByUserIdV3
samples/cli/sample-apps Iam publicGetUserByUserIdV3 \
    --namespace 'Asu18obU' \
    --userId 'dc8mbvXc' \
    > test.out 2>&1
eval_tap $? 242 'PublicGetUserByUserIdV3' test.out

#- 243 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace 'wcgMqOXM' \
    --userId 'ziXrVdsE' \
    --activeOnly 'False' \
    --after '3ClFP3mJ' \
    --before 'wusCBTe4' \
    --limit '20' \
    > test.out 2>&1
eval_tap $? 243 'PublicGetUserBanHistoryV3' test.out

#- 244 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace 'LcuqL40N' \
    --userId 'YgekRavp' \
    > test.out 2>&1
eval_tap $? 244 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 245 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace 'aGTA9BTy' \
    --userId 'CCyN4Fw9' \
    --after '0.13759618931287587' \
    --before '0.19359723133652773' \
    --limit '96' \
    > test.out 2>&1
eval_tap $? 245 'PublicGetUserLoginHistoriesV3' test.out

#- 246 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace '3tjjCqPV' \
    --userId 'yYs01hEY' \
    --after 'zWw3qrcx' \
    --before 'M0DPAXQB' \
    --limit '79' \
    > test.out 2>&1
eval_tap $? 246 'PublicGetUserPlatformAccountsV3' test.out

#- 247 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --body '{"platformId": "MP7j3xfP", "platformUserId": "aoZaWFsp"}' \
    --namespace 'kU5kn6Pl' \
    --userId 'PqD4Agfa' \
    > test.out 2>&1
eval_tap $? 247 'PublicLinkPlatformAccount' test.out

#- 248 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --body '{"chosenNamespaces": ["sBfclBhZ"], "requestId": "jZbLnmgh"}' \
    --namespace 'KwPyVIn3' \
    --userId 'qaHP7KNu' \
    > test.out 2>&1
eval_tap $? 248 'PublicForceLinkPlatformWithProgression' test.out

#- 249 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --password 'lyfrENVQ' \
    --namespace 'kpcaWHf6' \
    --userId 'T2xOOljn' \
    > test.out 2>&1
eval_tap $? 249 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 250 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after '7c6c9efJ' \
    --before 'I02TZxrg' \
    --isWildcard 'True' \
    --limit '62' \
    > test.out 2>&1
eval_tap $? 250 'PublicGetRolesV3' test.out

#- 251 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'JEkphFz0' \
    > test.out 2>&1
eval_tap $? 251 'PublicGetRoleV3' test.out

#- 252 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 252 'PublicGetMyUserV3' test.out

#- 253 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'h6WpoVpV' \
    --code 'c2HBBmj6' \
    --error 'cEi02hXl' \
    --state '42ubCRfy' \
    > test.out 2>&1
eval_tap $? 253 'PlatformAuthenticateSAMLV3Handler' test.out

#- 254 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId '4GjKn5It' \
    --payload 'HXLDZqpR' \
    > test.out 2>&1
eval_tap $? 254 'LoginSSOClient' test.out

#- 255 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'hqnR742G' \
    > test.out 2>&1
eval_tap $? 255 'LogoutSSOClient' test.out

#- 256 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --body '{"userIds": ["cbLuQOGM"]}' \
    --namespace 'OEzmdjNh' \
    > test.out 2>&1
eval_tap $? 256 'AdminBulkCheckValidUserIDV4' test.out

#- 257 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --body '{"country": "T0S46kqy", "dateOfBirth": "fMBSaZc4", "displayName": "SA16M8gQ", "languageTag": "CD7aBHWC", "userName": "YevNkfcQ"}' \
    --namespace 'vl4Oso7t' \
    --userId 'x65zXCiT' \
    > test.out 2>&1
eval_tap $? 257 'AdminUpdateUserV4' test.out

#- 258 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --body '{"code": "fjorLFqT", "emailAddress": "mIUFUoon"}' \
    --namespace 'HBI13SZF' \
    --userId 'Hfm0F8vS' \
    > test.out 2>&1
eval_tap $? 258 'AdminUpdateUserEmailAddressV4' test.out

#- 259 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace '2BrZ3nq8' \
    --userId '8YSSD7zV' \
    > test.out 2>&1
eval_tap $? 259 'AdminDisableUserMFAV4' test.out

#- 260 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace '0C8FvVU3' \
    --userId 'kRXBGPXI' \
    > test.out 2>&1
eval_tap $? 260 'AdminListUserRolesV4' test.out

#- 261 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --body '{"assignedNamespaces": ["dft1biZH"], "roleId": "uhWyFPHd"}' \
    --namespace 'XcyvZEhY' \
    --userId 'eUSy5Ukc' \
    > test.out 2>&1
eval_tap $? 261 'AdminUpdateUserRoleV4' test.out

#- 262 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --body '{"assignedNamespaces": ["65naP11R"], "roleId": "8Xww9vq9"}' \
    --namespace 'nMa2Btgw' \
    --userId 'yuf2fjV3' \
    > test.out 2>&1
eval_tap $? 262 'AdminAddUserRoleV4' test.out

#- 263 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --body '{"assignedNamespaces": ["0SLxi7uy"], "roleId": "haeFtcO9"}' \
    --namespace 'XNy63QO9' \
    --userId 'vW0ck7TE' \
    > test.out 2>&1
eval_tap $? 263 'AdminRemoveUserRoleV4' test.out

#- 264 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'True' \
    --isWildcard 'True' \
    --limit '75' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 264 'AdminGetRolesV4' test.out

#- 265 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "GPLiE6tH"}' \
    > test.out 2>&1
eval_tap $? 265 'AdminCreateRoleV4' test.out

#- 266 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'Cr0GPFvT' \
    > test.out 2>&1
eval_tap $? 266 'AdminGetRoleV4' test.out

#- 267 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId '0SAK91y5' \
    > test.out 2>&1
eval_tap $? 267 'AdminDeleteRoleV4' test.out

#- 268 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "BIJq0B9U"}' \
    --roleId 'cI6c5cre' \
    > test.out 2>&1
eval_tap $? 268 'AdminUpdateRoleV4' test.out

#- 269 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --body '{"permissions": [{"action": 8, "resource": "alHOZphc", "schedAction": 75, "schedCron": "ncnjnmyU", "schedRange": ["8FSxXdCr"]}]}' \
    --roleId 'skoFqnow' \
    > test.out 2>&1
eval_tap $? 269 'AdminUpdateRolePermissionsV4' test.out

#- 270 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --body '{"permissions": [{"action": 33, "resource": "9Laz1GLt", "schedAction": 76, "schedCron": "hf8Z7ahm", "schedRange": ["bVPm2g7x"]}]}' \
    --roleId 'AFfRRLUj' \
    > test.out 2>&1
eval_tap $? 270 'AdminAddRolePermissionsV4' test.out

#- 271 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --body '["fWS9sftI"]' \
    --roleId 'fHGe5bUT' \
    > test.out 2>&1
eval_tap $? 271 'AdminDeleteRolePermissionsV4' test.out

#- 272 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'SXOv12PM' \
    --after 'cRO6E2Mk' \
    --before 're5q7Fva' \
    --limit '53' \
    > test.out 2>&1
eval_tap $? 272 'AdminListAssignedUsersV4' test.out

#- 273 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --body '{"assignedNamespaces": ["Cp6he0fz"], "namespace": "jkPNNS0B", "userId": "fgF6inIR"}' \
    --roleId 'sZ5hrqNz' \
    > test.out 2>&1
eval_tap $? 273 'AdminAssignUserToRoleV4' test.out

#- 274 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --body '{"namespace": "VszGVP5P", "userId": "1iwhcf30"}' \
    --roleId 'C1KHRZHM' \
    > test.out 2>&1
eval_tap $? 274 'AdminRevokeUserFromRoleV4' test.out

#- 275 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"country": "Gy5vbfZv", "dateOfBirth": "YIFFctEK", "displayName": "OLxSRxe0", "languageTag": "wmWBMcNi", "userName": "WoobB6o6"}' \
    > test.out 2>&1
eval_tap $? 275 'AdminUpdateMyUserV4' test.out

#- 276 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 276 'AdminDisableMyAuthenticatorV4' test.out

#- 277 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'alTQcP0E' \
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
    --factor 'pE9wGNVw' \
    > test.out 2>&1
eval_tap $? 285 'AdminMakeFactorMyDefaultV4' test.out

#- 286 AdminInviteUserV4
samples/cli/sample-apps Iam adminInviteUserV4 \
    --body '{"assignedNamespaces": ["kgfJJ2HI"], "emailAddresses": ["alfzgRpT"], "isAdmin": false, "roleId": "9lxF1JPB"}' \
    > test.out 2>&1
eval_tap $? 286 'AdminInviteUserV4' test.out

#- 287 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "zXZtrGe8", "policyId": "LyOH24nn", "policyVersionId": "eZHFeRld"}], "authType": "EMAILPASSWD", "country": "GA7JxWYz", "dateOfBirth": "aEaimvok", "displayName": "cWX59kwi", "emailAddress": "YHgHT6Iv", "password": "d0fGpU20", "passwordMD5Sum": "9nVRclum", "username": "QTFvr5rR", "verified": true}' \
    --namespace 'YzaNmz3P' \
    > test.out 2>&1
eval_tap $? 287 'PublicCreateTestUserV4' test.out

#- 288 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "Mx2T89NT", "policyId": "rFRUCXFk", "policyVersionId": "ruxegpkc"}], "authType": "EMAILPASSWD", "code": "fzgcvv0W", "country": "E5EQhcom", "dateOfBirth": "PS1E7cps", "displayName": "Lgr2zEnj", "emailAddress": "yRNjEC3F", "password": "MDcZvwwf", "passwordMD5Sum": "8aU98In3", "reachMinimumAge": false, "username": "F4jlwKyG"}' \
    --namespace 'xTF1l5q1' \
    > test.out 2>&1
eval_tap $? 288 'PublicCreateUserV4' test.out

#- 289 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "0sT1X8J2", "policyId": "eAWOzjmh", "policyVersionId": "9UzIfnho"}], "authType": "EMAILPASSWD", "country": "6xUmTleU", "dateOfBirth": "nJFM7Xho", "displayName": "DxGik2JS", "password": "fZ64wWeP", "reachMinimumAge": true, "username": "6103PONK"}' \
    --invitationId 'IS7F9emW' \
    --namespace '4R15tAsi' \
    > test.out 2>&1
eval_tap $? 289 'CreateUserFromInvitationV4' test.out

#- 290 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --body '{"country": "G31CEyUO", "dateOfBirth": "uOZhmnHk", "displayName": "vek6Aa5k", "languageTag": "Nnoclxs9", "userName": "kxcvIpV7"}' \
    --namespace 'mCYfWKjY' \
    > test.out 2>&1
eval_tap $? 290 'PublicUpdateUserV4' test.out

#- 291 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --body '{"code": "9CsQYsGy", "emailAddress": "hEOntEke"}' \
    --namespace 'dM1A0bFq' \
    > test.out 2>&1
eval_tap $? 291 'PublicUpdateUserEmailAddressV4' test.out

#- 292 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --body '{"code": "vjxbT3Yu", "country": "VdaBN5RS", "dateOfBirth": "jhcjuDvN", "displayName": "rXL845jf", "emailAddress": "h5tZ0hqJ", "password": "LjQUmoYU", "reachMinimumAge": false, "username": "C849OBNu", "validateOnly": true}' \
    --namespace 'ofGAAaMp' \
    > test.out 2>&1
eval_tap $? 292 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 293 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --body '{"emailAddress": "BQArU4RS", "password": "0FQRy5Qz", "username": "5VcyfBpH"}' \
    --namespace 'jtvFwKSJ' \
    > test.out 2>&1
eval_tap $? 293 'PublicUpgradeHeadlessAccountV4' test.out

#- 294 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace 'yZeqvpev' \
    > test.out 2>&1
eval_tap $? 294 'PublicDisableMyAuthenticatorV4' test.out

#- 295 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --code 'cVXTxs9L' \
    --namespace 'TorIyx23' \
    > test.out 2>&1
eval_tap $? 295 'PublicEnableMyAuthenticatorV4' test.out

#- 296 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace 'LhLy7ds3' \
    > test.out 2>&1
eval_tap $? 296 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 297 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace 'g3BuHTPF' \
    > test.out 2>&1
eval_tap $? 297 'PublicGetMyBackupCodesV4' test.out

#- 298 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace '19dBYFws' \
    > test.out 2>&1
eval_tap $? 298 'PublicGenerateMyBackupCodesV4' test.out

#- 299 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace '5Ya4eOwW' \
    > test.out 2>&1
eval_tap $? 299 'PublicDisableMyBackupCodesV4' test.out

#- 300 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace 'qW8HiLpT' \
    > test.out 2>&1
eval_tap $? 300 'PublicDownloadMyBackupCodesV4' test.out

#- 301 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace 'i1W63Hcc' \
    > test.out 2>&1
eval_tap $? 301 'PublicEnableMyBackupCodesV4' test.out

#- 302 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --cookie 'gM5kYu36' \
    --namespace 'JpTL55W4' \
    > test.out 2>&1
eval_tap $? 302 'PublicRemoveTrustedDeviceV4' test.out

#- 303 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace 'ws3KCypl' \
    > test.out 2>&1
eval_tap $? 303 'PublicGetMyEnabledFactorsV4' test.out

#- 304 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --factor 'Y1ocKDCV' \
    --namespace 'aqrVeegT' \
    > test.out 2>&1
eval_tap $? 304 'PublicMakeFactorMyDefaultV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE