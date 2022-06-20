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
    --body '{"ACSURL": "k0Zthaj0", "AWSCognitoRegion": "EBA4azRz", "AWSCognitoUserPool": "0d56smob", "AppId": "or4p1Plg", "ClientId": "QB9EcNGO", "Environment": "eBRY6G5a", "FederationMetadataURL": "e07deDLa", "GenericOauthFlow": true, "IsActive": true, "Issuer": "beTfW0hg", "JWKSEndpoint": "zrabLJxE", "KeyID": "wJrEBmQ6", "NetflixCertificates": {"encryptedPrivateKey": "4haNOzlG", "publicCertificate": "u68UYyup", "rootCertificate": "jdDetnoT"}, "OrganizationId": "0rfWtVPw", "PlatformName": "Qfq6V92g", "RedirectUri": "bfPouNdm", "Secret": "P7fckVnu", "TeamID": "DGvYIb1p", "TokenAuthenticationType": "5tcR5z8Z", "TokenClaimsMapping": {"JLjSHcaR": "3X4tZmwr"}}' \
    --namespace '0QmOnsEg' \
    --platformId '49eXp0xQ' \
    > test.out 2>&1
eval_tap $? 130 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 131 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace 'kZ2JjuwW' \
    --platformId 'Wy0tU11P' \
    > test.out 2>&1
eval_tap $? 131 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 132 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --body '{"ACSURL": "CeSrvejU", "AWSCognitoRegion": "KwVfF37V", "AWSCognitoUserPool": "r7mkDzFB", "AppId": "I1VwhkVS", "ClientId": "KDlNFOUH", "Environment": "BJsvTsqk", "FederationMetadataURL": "9hg4hj6n", "GenericOauthFlow": false, "IsActive": false, "Issuer": "bW6UskbP", "JWKSEndpoint": "kkZAk01f", "KeyID": "1KxCtWAD", "NetflixCertificates": {"encryptedPrivateKey": "U2guN6U9", "publicCertificate": "w13W1K9T", "rootCertificate": "ZQ4qRLEi"}, "OrganizationId": "5wowE36r", "PlatformName": "fmM0CCs3", "RedirectUri": "5TPUPLms", "Secret": "Y8WgwSx1", "TeamID": "DI5GH9bv", "TokenAuthenticationType": "9ZTo2HpA", "TokenClaimsMapping": {"6pzjHpZO": "0E9iLgRP"}}' \
    --namespace 'JK3nBae3' \
    --platformId 'GOgbQrqr' \
    > test.out 2>&1
eval_tap $? 132 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 133 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --body '{"affectedClientIDs": ["a0PtkfvO"], "assignedNamespaces": ["pY2ramp5"], "domain": "lnBn6xmB", "roleId": "kfMtC66h"}' \
    --namespace 'Fq0kPOkO' \
    --platformId 'Rm2XjlNE' \
    > test.out 2>&1
eval_tap $? 133 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 134 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --body '{"domain": "E5ecPzAm"}' \
    --namespace 'i0ySJHfP' \
    --platformId 'loP1XkYK' \
    > test.out 2>&1
eval_tap $? 134 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 135 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace '4MgIsDSF' \
    --platformId 'MPyMhyw1' \
    > test.out 2>&1
eval_tap $? 135 'RetrieveSSOLoginPlatformCredential' test.out

#- 136 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --body '{"acsUrl": "OLZPVwwx", "apiKey": "H4BIDJuD", "appId": "oShMMftl", "federationMetadataUrl": "l8N0VvCh", "isActive": true, "redirectUri": "9urmt7QW", "secret": "vE8s6Uz8", "ssoUrl": "BRuYWDTt"}' \
    --namespace 'L6MTTRkC' \
    --platformId 'bb9S5Q1I' \
    > test.out 2>&1
eval_tap $? 136 'AddSSOLoginPlatformCredential' test.out

#- 137 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace 'VHGT88pr' \
    --platformId 'REBgYOWd' \
    > test.out 2>&1
eval_tap $? 137 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 138 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --body '{"acsUrl": "HJ9Jumoh", "apiKey": "tU13gf7T", "appId": "RigNZj5w", "federationMetadataUrl": "5y3HmK8Q", "isActive": false, "redirectUri": "62eQZtbL", "secret": "LcF671WL", "ssoUrl": "tv38Hecc"}' \
    --namespace 'zopFmeRw' \
    --platformId 'pcJBZyi3' \
    > test.out 2>&1
eval_tap $? 138 'UpdateSSOPlatformCredential' test.out

#- 139 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace 'mLC4Kzek' \
    --platformId 'iSzeyoln' \
    --platformUserId 'OQt0joVH' \
    > test.out 2>&1
eval_tap $? 139 'AdminGetUserByPlatformUserIDV3' test.out

#- 140 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace 'gCytC6lR' \
    --roleId 'G98YxnHb' \
    --after '86' \
    --before '7' \
    --limit '29' \
    > test.out 2>&1
eval_tap $? 140 'GetAdminUsersByRoleIdV3' test.out

#- 141 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace 'TKKeuSjf' \
    --emailAddress 'Ze9i1osg' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByEmailAddressV3' test.out

#- 142 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --body '{"userIds": ["hF1hzi1N"]}' \
    --namespace 'l47syJ5i' \
    > test.out 2>&1
eval_tap $? 142 'AdminListUserIDByUserIDsV3' test.out

#- 143 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --body '{"emailAddresses": ["bzSHZeCL"], "isAdmin": true, "roles": ["WPVRsdEq"]}' \
    --namespace 'A61yTrMg' \
    > test.out 2>&1
eval_tap $? 143 'AdminInviteUserV3' test.out

#- 144 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace 'sycTgmPz' \
    --limit '5' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUsersV3' test.out

#- 145 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace 'uO5dMqGD' \
    --by 'lSZPY07r' \
    --endDate 'EVSjzHjL' \
    --limit '2' \
    --offset '99' \
    --platformBy 'jG6DSmpp' \
    --platformId '3op8htaR' \
    --query 'LxtW4PvF' \
    --startDate 'kESTULat' \
    > test.out 2>&1
eval_tap $? 145 'AdminSearchUserV3' test.out

#- 146 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --body '{"listEmailAddressRequest": ["5F1Le7cR"]}' \
    --namespace '7q6PWhZm' \
    > test.out 2>&1
eval_tap $? 146 'AdminGetBulkUserByEmailAddressV3' test.out

#- 147 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace 'mKz41i1T' \
    --userId 'p78FipJH' \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByUserIdV3' test.out

#- 148 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --body '{"avatarUrl": "ahViJvLY", "country": "W0kdmlk2", "dateOfBirth": "luqSOOA2", "displayName": "VOZBoNbB", "languageTag": "98PuSGyk", "userName": "qFzPwSMX"}' \
    --namespace 'T53bBuL3' \
    --userId '8beOYDVu' \
    > test.out 2>&1
eval_tap $? 148 'AdminUpdateUserV3' test.out

#- 149 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace 'HZQ9LYt6' \
    --userId 'w23Wf8iE' \
    --activeOnly 'False' \
    --after '72sH0aRd' \
    --before 'cDlDyGcs' \
    --limit '10' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetUserBanV3' test.out

#- 150 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --body '{"ban": "IuI4Dv5l", "comment": "EJpK1AyR", "endDate": "lzsrRXEF", "reason": "ZivQOHG6", "skipNotif": true}' \
    --namespace 'VicNrats' \
    --userId 'vvHLmIoh' \
    > test.out 2>&1
eval_tap $? 150 'AdminBanUserV3' test.out

#- 151 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --body '{"enabled": false, "skipNotif": true}' \
    --banId 'WDdm5FE4' \
    --namespace 'lliQMnut' \
    --userId 'JbpEo4mU' \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserBanV3' test.out

#- 152 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --body '{"context": "NHFtdml2", "emailAddress": "xNviWacJ", "languageTag": "c3Fm7Z54"}' \
    --namespace '8uuKgoCB' \
    --userId 'qS5uIdCb' \
    > test.out 2>&1
eval_tap $? 152 'AdminSendVerificationCodeV3' test.out

#- 153 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --body '{"Code": "wCeeq9ou", "ContactType": "EdDtjOgs", "LanguageTag": "ypLkm2ZY", "validateOnly": false}' \
    --namespace 'w5H7Zm0g' \
    --userId 'nYyj6MXf' \
    > test.out 2>&1
eval_tap $? 153 'AdminVerifyAccountV3' test.out

#- 154 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace '9G1ntyeb' \
    --userId 'voeHenAA' \
    > test.out 2>&1
eval_tap $? 154 'GetUserVerificationCode' test.out

#- 155 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace 'LKt7EfxI' \
    --userId 'H446oUnP' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetUserDeletionStatusV3' test.out

#- 156 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --body '{"enabled": true}' \
    --namespace 'nXwg0JKq' \
    --userId 'VWW1rjK1' \
    > test.out 2>&1
eval_tap $? 156 'AdminUpdateUserDeletionStatusV3' test.out

#- 157 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --body '{"code": "epwkAvcs", "country": "YvbgfBVP", "dateOfBirth": "pTa8Yuq7", "displayName": "TKiNXmz7", "emailAddress": "eMrMD5Tb", "password": "aUxTCTng", "validateOnly": true}' \
    --namespace 'jtdBrjs3' \
    --userId 'Kiykt2Ck' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpgradeHeadlessAccountV3' test.out

#- 158 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace '2gOlSatE' \
    --userId 'CZ2UgwQL' \
    > test.out 2>&1
eval_tap $? 158 'AdminDeleteUserInformationV3' test.out

#- 159 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace 'qDqYSxTP' \
    --userId 'uVlBqird' \
    --after '0.24796765202749005' \
    --before '0.38898366220518854' \
    --limit '26' \
    > test.out 2>&1
eval_tap $? 159 'AdminGetUserLoginHistoriesV3' test.out

#- 160 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --body '{"Permissions": [{"Action": 36, "Resource": "ETl1SvhQ", "SchedAction": 40, "SchedCron": "dsjIhXdx", "SchedRange": ["iSoWpnnx"]}]}' \
    --namespace 'gX7BCPMq' \
    --userId 'zQIxibhp' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserPermissionV3' test.out

#- 161 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --body '{"Permissions": [{"Action": 79, "Resource": "YsHtdB3I", "SchedAction": 20, "SchedCron": "juaZqhJi", "SchedRange": ["lrZkSSKg"]}]}' \
    --namespace 'P5rxCR77' \
    --userId 'G9d5CA1G' \
    > test.out 2>&1
eval_tap $? 161 'AdminAddUserPermissionsV3' test.out

#- 162 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --body '[{"Action": 81, "Resource": "RSbL9n0d"}]' \
    --namespace 'bWDEupmd' \
    --userId 'LQzPnNfB' \
    > test.out 2>&1
eval_tap $? 162 'AdminDeleteUserPermissionBulkV3' test.out

#- 163 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '52' \
    --namespace 'cWArbkCf' \
    --resource 'dHIZb03o' \
    --userId 'tqmBuS9V' \
    > test.out 2>&1
eval_tap $? 163 'AdminDeleteUserPermissionV3' test.out

#- 164 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace '2pCZ23UH' \
    --userId 'mk0lpJ4J' \
    --after 'Ll01qi7L' \
    --before '2oDUoVRU' \
    --limit '3' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserPlatformAccountsV3' test.out

#- 165 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace '39j22P4S' \
    --userId 'p09cKmjR' \
    > test.out 2>&1
eval_tap $? 165 'AdminGetListJusticePlatformAccounts' test.out

#- 166 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace 'UbZVBVS7' \
    --targetNamespace 'OK2Zrdcs' \
    --userId 'ckMekROW' \
    > test.out 2>&1
eval_tap $? 166 'AdminCreateJusticeUser' test.out

#- 167 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --body '{"platformId": "Z2KUTqkK", "platformUserId": "2eFaGLoS"}' \
    --namespace 'mEEPbLyw' \
    --userId 'JsyUie6f' \
    > test.out 2>&1
eval_tap $? 167 'AdminLinkPlatformAccount' test.out

#- 168 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --body '{"platformNamespace": "ZgLllUPs"}' \
    --namespace 'O8lg46Si' \
    --platformId '7006vL2w' \
    --userId '4aajDAOx' \
    > test.out 2>&1
eval_tap $? 168 'AdminPlatformUnlinkV3' test.out

#- 169 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --ticket '0iJjYlea' \
    --namespace 'ktqv2Wkl' \
    --platformId 'jQuD5mnJ' \
    --userId 'ONqHGq8m' \
    > test.out 2>&1
eval_tap $? 169 'AdminPlatformLinkV3' test.out

#- 170 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --body '["B7mF2lMF"]' \
    --namespace 'caghFXJI' \
    --userId 'JflRHFcs' \
    > test.out 2>&1
eval_tap $? 170 'AdminDeleteUserRolesV3' test.out

#- 171 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --body '[{"namespace": "IqCy4xDi", "roleId": "fSSQ5On2"}]' \
    --namespace 'ccEcl3xe' \
    --userId 'iO4bwF5J' \
    > test.out 2>&1
eval_tap $? 171 'AdminSaveUserRoleV3' test.out

#- 172 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace 'OjGoGxKM' \
    --roleId '3qMce5tf' \
    --userId 'LcpjFZMK' \
    > test.out 2>&1
eval_tap $? 172 'AdminAddUserRoleV3' test.out

#- 173 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace 'Cbp0pEbL' \
    --roleId 'CLFpHxMY' \
    --userId 'F836075x' \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserRoleV3' test.out

#- 174 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --body '{"enabled": true, "reason": "pzdnYtpj"}' \
    --namespace 'a5ig2isQ' \
    --userId 'Zga6Vy76' \
    > test.out 2>&1
eval_tap $? 174 'AdminUpdateUserStatusV3' test.out

#- 175 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace 'izPiQRjY' \
    --userId 'a8fv5fIt' \
    > test.out 2>&1
eval_tap $? 175 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 176 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after '22tIZhjh' \
    --before 'gkigW22z' \
    --isWildcard 'False' \
    --limit '2' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetRolesV3' test.out

#- 177 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "managers": [{"displayName": "FCQgBcLN", "namespace": "T6iOQVYx", "userId": "5rW2gMsI"}], "members": [{"displayName": "1aYBitSn", "namespace": "3UDeKj97", "userId": "I4WYXLqj"}], "permissions": [{"action": 79, "resource": "7ktOBTra", "schedAction": 55, "schedCron": "xWRTVuYE", "schedRange": ["qGlKDwTK"]}], "roleName": "XBrXiQcd"}' \
    > test.out 2>&1
eval_tap $? 177 'AdminCreateRoleV3' test.out

#- 178 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId '9IW8kiCK' \
    > test.out 2>&1
eval_tap $? 178 'AdminGetRoleV3' test.out

#- 179 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'eQJWZBvc' \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteRoleV3' test.out

#- 180 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --body '{"deletable": true, "isWildcard": true, "roleName": "TvWBxYZJ"}' \
    --roleId 'h7B8gbnS' \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateRoleV3' test.out

#- 181 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'u9M2OxD2' \
    > test.out 2>&1
eval_tap $? 181 'AdminGetRoleAdminStatusV3' test.out

#- 182 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'udaeYpCX' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateAdminRoleStatusV3' test.out

#- 183 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'YSMiy87C' \
    > test.out 2>&1
eval_tap $? 183 'AdminRemoveRoleAdminV3' test.out

#- 184 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'TqEQBg36' \
    --after 'my3sY2cl' \
    --before 'rDcain0c' \
    --limit '81' \
    > test.out 2>&1
eval_tap $? 184 'AdminGetRoleManagersV3' test.out

#- 185 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --body '{"managers": [{"displayName": "VF1zHwDT", "namespace": "I0sJ1Q0k", "userId": "phMTggSP"}]}' \
    --roleId '2SLcuAP7' \
    > test.out 2>&1
eval_tap $? 185 'AdminAddRoleManagersV3' test.out

#- 186 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --body '{"managers": [{"displayName": "vU971Czw", "namespace": "2nbg8C7M", "userId": "vywhu6Mj"}]}' \
    --roleId 'OjuGzo1F' \
    > test.out 2>&1
eval_tap $? 186 'AdminRemoveRoleManagersV3' test.out

#- 187 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'z4tU0aSn' \
    --after '98N8qOUA' \
    --before '0z92RaDe' \
    --limit '27' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetRoleMembersV3' test.out

#- 188 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --body '{"members": [{"displayName": "gT8LRQkM", "namespace": "nG1LZyF2", "userId": "mdYY6ZMf"}]}' \
    --roleId 'uTYTKsue' \
    > test.out 2>&1
eval_tap $? 188 'AdminAddRoleMembersV3' test.out

#- 189 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --body '{"members": [{"displayName": "48qBEBNA", "namespace": "V5BTe6ec", "userId": "1zA92URC"}]}' \
    --roleId 'LSGPmRBZ' \
    > test.out 2>&1
eval_tap $? 189 'AdminRemoveRoleMembersV3' test.out

#- 190 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --body '{"permissions": [{"action": 97, "resource": "unHW7MYv", "schedAction": 34, "schedCron": "6QA7Ppep", "schedRange": ["c92HA94e"]}]}' \
    --roleId 'ACdeyfUp' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpdateRolePermissionsV3' test.out

#- 191 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --body '{"permissions": [{"action": 13, "resource": "iPpf8nxK", "schedAction": 71, "schedCron": "3dnmtPwa", "schedRange": ["64Y4gPEK"]}]}' \
    --roleId 'Mhhu9a6f' \
    > test.out 2>&1
eval_tap $? 191 'AdminAddRolePermissionsV3' test.out

#- 192 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --body '["3xJNtUlK"]' \
    --roleId 'LlIIAeHb' \
    > test.out 2>&1
eval_tap $? 192 'AdminDeleteRolePermissionsV3' test.out

#- 193 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '24' \
    --resource '5M6LsY1V' \
    --roleId 'MuIEcRls' \
    > test.out 2>&1
eval_tap $? 193 'AdminDeleteRolePermissionV3' test.out

#- 194 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 194 'AdminGetMyUserV3' test.out

#- 195 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId '68M3MPMR' \
    --extendExp 'True' \
    --redirectUri 'epyyMz6z' \
    --password 'fR1pvTYY' \
    --requestId 'tDOiEi4R' \
    --userName 'uEcHCSGh' \
    > test.out 2>&1
eval_tap $? 195 'UserAuthenticationV3' test.out

#- 196 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'False' \
    --clientId 'OZQFlwOi' \
    --linkingToken 'uKGDFgK4' \
    --password '9YuKnXks' \
    --username '0m8ANrcR' \
    > test.out 2>&1
eval_tap $? 196 'AuthenticationWithPlatformLinkV3' test.out

#- 197 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'False' \
    --linkingToken 'l7ta3foj' \
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
    --namespace 'A3h4MMW3' \
    --platformId 'AJ5zlsFB' \
    --userId 'wjvLYvmg' \
    > test.out 2>&1
eval_tap $? 200 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 201 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace '6avudQFF' \
    --userId '1CPNY9u2' \
    > test.out 2>&1
eval_tap $? 201 'RevokeUserV3' test.out

#- 202 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'dVYdglOO' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'True' \
    --redirectUri 'eK0kPKmB' \
    --scope 'qVux3lXc' \
    --state 'D8aertAV' \
    --targetAuthPage 'Cqs8XT8x' \
    --clientId 'y3nJ06Kk' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 202 'AuthorizeV3' test.out

#- 203 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'eA0ARj9r' \
    > test.out 2>&1
eval_tap $? 203 'TokenIntrospectionV3' test.out

#- 204 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 204 'GetJWKSV3' test.out

#- 205 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'icfayvnh' \
    --mfaToken 'i8MDdY4W' \
    > test.out 2>&1
eval_tap $? 205 'Change2faMethod' test.out

#- 206 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'LHoaUkYn' \
    --factor 'Qp5egdmV' \
    --mfaToken 'E8ImivNt' \
    --rememberDevice 'True' \
    > test.out 2>&1
eval_tap $? 206 'Verify2faCode' test.out

#- 207 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace 'qWRKHohO' \
    --platformId 'DoWOr98k' \
    --userId 'jBUas9jj' \
    > test.out 2>&1
eval_tap $? 207 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 208 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'z2FrgiaG' \
    --clientId 'rcB7dIOV' \
    --redirectUri 'KIPSJJHo' \
    --requestId '5W8tKH8o' \
    > test.out 2>&1
eval_tap $? 208 'AuthCodeRequestV3' test.out

#- 209 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --clientId 'u9SdbxSX' \
    --createHeadless 'False' \
    --deviceId 'rEFCwqeG' \
    --platformToken 'NLdIBRdl' \
    --platformId 'iFQVMKEz' \
    > test.out 2>&1
eval_tap $? 209 'PlatformTokenGrantV3' test.out

#- 210 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 210 'GetRevocationListV3' test.out

#- 211 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'VUWlUWDs' \
    > test.out 2>&1
eval_tap $? 211 'TokenRevocationV3' test.out

#- 212 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --deviceId '2x1EQU0o' \
    --clientId 'epEvcjaS' \
    --code 'gEh6jJnF' \
    --codeVerifier 'xinIHJ1o' \
    --extendExp 'False' \
    --password 'q5Zznd5e' \
    --redirectUri 'acobTsuR' \
    --refreshToken 'lhreQVFI' \
    --username 'D3o8hJWV' \
    --grantType 'client_credentials' \
    > test.out 2>&1
eval_tap $? 212 'TokenGrantV3' test.out

#- 213 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'KIOAw70D' \
    --code 'vAHhSGWU' \
    --error 'vzq1Za3I' \
    --openidAssocHandle 'BC4vQFsU' \
    --openidClaimedId 'JPfiaJp1' \
    --openidIdentity 'rt7OBgBC' \
    --openidMode 'e6N0eI65' \
    --openidNs 'Mn5tngEY' \
    --openidOpEndpoint 'XgPVT5Cq' \
    --openidResponseNonce 'XDZBVMJy' \
    --openidReturnTo 'JeKFO92Y' \
    --openidSig 'DtaZvJoK' \
    --openidSigned 'S0OxyipZ' \
    --state 'uO4N9S2Y' \
    > test.out 2>&1
eval_tap $? 213 'PlatformAuthenticationV3' test.out

#- 214 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'True' \
    --languageCode 'gHa6XBcv' \
    > test.out 2>&1
eval_tap $? 214 'PublicGetInputValidations' test.out

#- 215 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace 'GRYk5rUt' \
    > test.out 2>&1
eval_tap $? 215 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 216 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --body '{"platformUserIds": ["WHCnhmzz"]}' \
    --namespace 'ppV7tKNK' \
    --platformId 'YUQVBXym' \
    > test.out 2>&1
eval_tap $? 216 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 217 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace 'WcNlHaFx' \
    --platformId 'YaGHUpmB' \
    --platformUserId 'FyOrFKtx' \
    > test.out 2>&1
eval_tap $? 217 'PublicGetUserByPlatformUserIDV3' test.out

#- 218 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace 'GNAi0fq4' \
    --requestId 'xChPLd2l' \
    > test.out 2>&1
eval_tap $? 218 'PublicGetAsyncStatus' test.out

#- 219 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace 'Oopc7XoV' \
    --by 'pdd6rCpy' \
    --limit 'MrnH9YHX' \
    --offset 'h7KnCVOK' \
    --query 'Y2zsBRGt' \
    > test.out 2>&1
eval_tap $? 219 'PublicSearchUserV3' test.out

#- 220 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --body '{"PasswordMD5Sum": "d8QY2OLb", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "jrvfr8hk", "policyId": "njWUWdMU", "policyVersionId": "XHvw4pNl"}], "authType": "GLjdBxLM", "code": "079pDAbT", "country": "gmsEYEq2", "dateOfBirth": "GkYK1vYm", "displayName": "9flXQ7CQ", "emailAddress": "oemnQG0d", "password": "H0NVM9VE", "reachMinimumAge": true}' \
    --namespace 'Dhkcu5vn' \
    > test.out 2>&1
eval_tap $? 220 'PublicCreateUserV3' test.out

#- 221 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace 'z6GiNMbo' \
    --field 'BJHml0LJ' \
    --query 'mpPi4mqh' \
    > test.out 2>&1
eval_tap $? 221 'CheckUserAvailability' test.out

#- 222 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --body '{"userIds": ["ruiCZLGG"]}' \
    --namespace 'P5UXkHNT' \
    > test.out 2>&1
eval_tap $? 222 'PublicBulkGetUsers' test.out

#- 223 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --body '{"emailAddress": "Mapp5Sbo", "languageTag": "nsUJKADr"}' \
    --namespace '60EkdFrp' \
    > test.out 2>&1
eval_tap $? 223 'PublicSendRegistrationCode' test.out

#- 224 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --body '{"code": "LsGt9yTX", "emailAddress": "WUSCQcMs"}' \
    --namespace 'HN7reI22' \
    > test.out 2>&1
eval_tap $? 224 'PublicVerifyRegistrationCode' test.out

#- 225 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --body '{"emailAddress": "ks7I12tA", "languageTag": "Zc8sxxLx"}' \
    --namespace '9XQeqNWL' \
    > test.out 2>&1
eval_tap $? 225 'PublicForgotPasswordV3' test.out

#- 226 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'm8cNJbYH' \
    --namespace '5J4WiJLv' \
    > test.out 2>&1
eval_tap $? 226 'GetAdminInvitationV3' test.out

#- 227 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Hwtw2Mjc", "policyId": "y9ZL6Zs5", "policyVersionId": "Bu2XYopL"}], "authType": "EMAILPASSWD", "country": "UKJJNftR", "dateOfBirth": "pGgk1ise", "displayName": "REzzRG6z", "password": "9wmuHddy", "reachMinimumAge": false}' \
    --invitationId 'ibI1LVyq' \
    --namespace 'bdY8DGZK' \
    > test.out 2>&1
eval_tap $? 227 'CreateUserFromInvitationV3' test.out

#- 228 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --body '{"avatarUrl": "AuoIKz3P", "country": "p3zLWUxM", "dateOfBirth": "zMtSmMmZ", "displayName": "P8nG0FoQ", "languageTag": "P8q7aSsb", "userName": "85gAh9RD"}' \
    --namespace '3ZzN6N1i' \
    > test.out 2>&1
eval_tap $? 228 'UpdateUserV3' test.out

#- 229 PublicUpdateUserV3
samples/cli/sample-apps Iam publicUpdateUserV3 \
    --body '{"avatarUrl": "J8ltt9IR", "country": "qCflgln6", "dateOfBirth": "r5f0s5H6", "displayName": "lCf3QHa1", "languageTag": "1hLLCgw5", "userName": "av4LExda"}' \
    --namespace 'bD8g2cvH' \
    > test.out 2>&1
eval_tap $? 229 'PublicUpdateUserV3' test.out

#- 230 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --body '{"context": "fMRupDA5", "emailAddress": "xbjs3XRd", "languageTag": "HUJ0GCmf"}' \
    --namespace 'lIXkgJ6z' \
    > test.out 2>&1
eval_tap $? 230 'PublicSendVerificationCodeV3' test.out

#- 231 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --body '{"code": "kTwoakq7", "contactType": "sEejFZ1N", "languageTag": "tONXb9w9", "validateOnly": false}' \
    --namespace 'sQHszIsf' \
    > test.out 2>&1
eval_tap $? 231 'PublicUserVerificationV3' test.out

#- 232 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --body '{"code": "rlzKpQdd", "country": "58dZP5Rv", "dateOfBirth": "rinNtvBt", "displayName": "qFSkA68m", "emailAddress": "IVYJ5pSV", "password": "xBsLhty3", "validateOnly": false}' \
    --namespace 'ecToXA4M' \
    > test.out 2>&1
eval_tap $? 232 'PublicUpgradeHeadlessAccountV3' test.out

#- 233 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --body '{"emailAddress": "1oUFPhgo", "password": "7Z6mwNC4"}' \
    --namespace 'FY69mM87' \
    > test.out 2>&1
eval_tap $? 233 'PublicVerifyHeadlessAccountV3' test.out

#- 234 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --body '{"languageTag": "joJNOGB8", "newPassword": "3Ns6Hl5P", "oldPassword": "oab6lKoV"}' \
    --namespace 'qNBUzIxO' \
    > test.out 2>&1
eval_tap $? 234 'PublicUpdatePasswordV3' test.out

#- 235 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace 'fglquS2q' \
    --targetNamespace '2DoWr9zv' \
    > test.out 2>&1
eval_tap $? 235 'PublicCreateJusticeUser' test.out

#- 236 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --redirectUri 'FtKa2mOA' \
    --ticket 'qOokV1pl' \
    --namespace 'xQ2YriTP' \
    --platformId 'fipD67jI' \
    > test.out 2>&1
eval_tap $? 236 'PublicPlatformLinkV3' test.out

#- 237 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --body '{"platformNamespace": "2hiZkrtL"}' \
    --namespace 'nh2U1RQl' \
    --platformId 'MxkfNMPN' \
    > test.out 2>&1
eval_tap $? 237 'PublicPlatformUnlinkV3' test.out

#- 238 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace 'tqv2TMz1' \
    --platformId 'b7SnzkXO' \
    > test.out 2>&1
eval_tap $? 238 'PublicPlatformUnlinkAllV3' test.out

#- 239 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace 'ek83Igm1' \
    --platformId 'wkSWsYvA' \
    --clientId 'su18obUd' \
    --redirectUri 'c8mbvXcw' \
    > test.out 2>&1
eval_tap $? 239 'PublicWebLinkPlatform' test.out

#- 240 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace 'cgMqOXMz' \
    --platformId 'iXrVdsEc' \
    --state '3ClFP3mJ' \
    > test.out 2>&1
eval_tap $? 240 'PublicWebLinkPlatformEstablish' test.out

#- 241 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --body '{"code": "wusCBTe4", "emailAddress": "kLcuqL40", "newPassword": "NYgekRav"}' \
    --namespace 'paGTA9BT' \
    > test.out 2>&1
eval_tap $? 241 'ResetPasswordV3' test.out

#- 242 PublicGetUserByUserIdV3
samples/cli/sample-apps Iam publicGetUserByUserIdV3 \
    --namespace 'yCCyN4Fw' \
    --userId '9i6mI2W3' \
    > test.out 2>&1
eval_tap $? 242 'PublicGetUserByUserIdV3' test.out

#- 243 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace 'tjjCqPVy' \
    --userId 'Ys01hEYz' \
    --activeOnly 'True' \
    --after '3qrcxM0D' \
    --before 'PAXQBNMP' \
    --limit '19' \
    > test.out 2>&1
eval_tap $? 243 'PublicGetUserBanHistoryV3' test.out

#- 244 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace '3xfPaoZa' \
    --userId 'WFspkU5k' \
    > test.out 2>&1
eval_tap $? 244 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 245 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace 'n6PlPqD4' \
    --userId 'AgfasBfc' \
    --after '0.18293825109334605' \
    --before '0.11367869975881606' \
    --limit '18' \
    > test.out 2>&1
eval_tap $? 245 'PublicGetUserLoginHistoriesV3' test.out

#- 246 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace 'ZbLnmghK' \
    --userId 'wPyVIn3q' \
    --after 'aHP7KNul' \
    --before 'yfrENVQk' \
    --limit '31' \
    > test.out 2>&1
eval_tap $? 246 'PublicGetUserPlatformAccountsV3' test.out

#- 247 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --body '{"platformId": "caWHf6T2", "platformUserId": "xOOljn7c"}' \
    --namespace '6c9efJI0' \
    --userId '2TZxrgLB' \
    > test.out 2>&1
eval_tap $? 247 'PublicLinkPlatformAccount' test.out

#- 248 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --body '{"chosenNamespaces": ["FJEkphFz"], "requestId": "0h6WpoVp"}' \
    --namespace 'Vc2HBBmj' \
    --userId '6cEi02hX' \
    > test.out 2>&1
eval_tap $? 248 'PublicForceLinkPlatformWithProgression' test.out

#- 249 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --password 'l42ubCRf' \
    --namespace 'y4GjKn5I' \
    --userId 'tHXLDZqp' \
    > test.out 2>&1
eval_tap $? 249 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 250 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'RhqnR742' \
    --before 'GcbLuQOG' \
    --isWildcard 'True' \
    --limit '50' \
    > test.out 2>&1
eval_tap $? 250 'PublicGetRolesV3' test.out

#- 251 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'mdjNhT0S' \
    > test.out 2>&1
eval_tap $? 251 'PublicGetRoleV3' test.out

#- 252 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 252 'PublicGetMyUserV3' test.out

#- 253 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId '46kqyfMB' \
    --code 'SaZc4SA1' \
    --error '6M8gQCD7' \
    --state 'aBHWCYev' \
    > test.out 2>&1
eval_tap $? 253 'PlatformAuthenticateSAMLV3Handler' test.out

#- 254 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'NkfcQvl4' \
    --payload 'Oso7tx65' \
    > test.out 2>&1
eval_tap $? 254 'LoginSSOClient' test.out

#- 255 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'zXCiTfjo' \
    > test.out 2>&1
eval_tap $? 255 'LogoutSSOClient' test.out

#- 256 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --body '{"userIds": ["rLFqTmIU"]}' \
    --namespace 'FUoonHBI' \
    > test.out 2>&1
eval_tap $? 256 'AdminBulkCheckValidUserIDV4' test.out

#- 257 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --body '{"avatarUrl": "13SZFHfm", "country": "0F8vS2Br", "dateOfBirth": "Z3nq88YS", "displayName": "SD7zV0C8", "languageTag": "FvVU3kRX", "userName": "BGPXIdft"}' \
    --namespace '1biZHuhW' \
    --userId 'yFPHdXcy' \
    > test.out 2>&1
eval_tap $? 257 'AdminUpdateUserV4' test.out

#- 258 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --body '{"code": "vZEhYeUS", "emailAddress": "y5Ukc65n"}' \
    --namespace 'aP11R8Xw' \
    --userId 'w9vq9nMa' \
    > test.out 2>&1
eval_tap $? 258 'AdminUpdateUserEmailAddressV4' test.out

#- 259 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace '2Btgwyuf' \
    --userId '2fjV30SL' \
    > test.out 2>&1
eval_tap $? 259 'AdminDisableUserMFAV4' test.out

#- 260 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace 'xi7uyhae' \
    --userId 'FtcO9XNy' \
    > test.out 2>&1
eval_tap $? 260 'AdminListUserRolesV4' test.out

#- 261 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --body '{"assignedNamespaces": ["63QO9vW0"], "roleId": "ck7TEDE8"}' \
    --namespace 'LeEQBeGP' \
    --userId 'LiE6tHCr' \
    > test.out 2>&1
eval_tap $? 261 'AdminUpdateUserRoleV4' test.out

#- 262 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --body '{"assignedNamespaces": ["0GPFvT0S"], "roleId": "AK91y5vC"}' \
    --namespace 'eBIJq0B9' \
    --userId 'UcI6c5cr' \
    > test.out 2>&1
eval_tap $? 262 'AdminAddUserRoleV4' test.out

#- 263 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --body '{"assignedNamespaces": ["e9ealHOZ"], "roleId": "phcLncnj"}' \
    --namespace 'nmyU8FSx' \
    --userId 'XdCrskoF' \
    > test.out 2>&1
eval_tap $? 263 'AdminRemoveUserRoleV4' test.out

#- 264 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'True' \
    --isWildcard 'False' \
    --limit '28' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 264 'AdminGetRolesV4' test.out

#- 265 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "1GLt5Mhf"}' \
    > test.out 2>&1
eval_tap $? 265 'AdminCreateRoleV4' test.out

#- 266 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId '8Z7ahmbV' \
    > test.out 2>&1
eval_tap $? 266 'AdminGetRoleV4' test.out

#- 267 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'Pm2g7xAF' \
    > test.out 2>&1
eval_tap $? 267 'AdminDeleteRoleV4' test.out

#- 268 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "WS9sftIf"}' \
    --roleId 'HGe5bUTS' \
    > test.out 2>&1
eval_tap $? 268 'AdminUpdateRoleV4' test.out

#- 269 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --body '{"permissions": [{"action": 98, "resource": "Ov12PMcR", "schedAction": 81, "schedCron": "6E2Mkre5", "schedRange": ["q7FvaACp"]}]}' \
    --roleId '6he0fzjk' \
    > test.out 2>&1
eval_tap $? 269 'AdminUpdateRolePermissionsV4' test.out

#- 270 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --body '{"permissions": [{"action": 83, "resource": "NNS0BfgF", "schedAction": 16, "schedCron": "nIRsZ5hr", "schedRange": ["qNzVszGV"]}]}' \
    --roleId 'P5P1iwhc' \
    > test.out 2>&1
eval_tap $? 270 'AdminAddRolePermissionsV4' test.out

#- 271 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --body '["f30C1KHR"]' \
    --roleId 'ZHMGy5vb' \
    > test.out 2>&1
eval_tap $? 271 'AdminDeleteRolePermissionsV4' test.out

#- 272 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'fZvYIFFc' \
    --after 'tEKOLxSR' \
    --before 'xe0wmWBM' \
    --limit '4' \
    > test.out 2>&1
eval_tap $? 272 'AdminListAssignedUsersV4' test.out

#- 273 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --body '{"assignedNamespaces": ["NiWoobB6"], "namespace": "o6alTQcP", "userId": "0EpE9wGN"}' \
    --roleId 'VwkgfJJ2' \
    > test.out 2>&1
eval_tap $? 273 'AdminAssignUserToRoleV4' test.out

#- 274 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --body '{"namespace": "HIalfzgR", "userId": "pTf9lxF1"}' \
    --roleId 'JPBizXZt' \
    > test.out 2>&1
eval_tap $? 274 'AdminRevokeUserFromRoleV4' test.out

#- 275 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "rGe8LyOH", "country": "24nneZHF", "dateOfBirth": "eRld0bGA", "displayName": "7JxWYzaE", "languageTag": "aimvokcW", "userName": "X59kwiYH"}' \
    > test.out 2>&1
eval_tap $? 275 'AdminUpdateMyUserV4' test.out

#- 276 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 276 'AdminDisableMyAuthenticatorV4' test.out

#- 277 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'gHT6Ivd0' \
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
    --factor 'fGpU209n' \
    > test.out 2>&1
eval_tap $? 285 'AdminMakeFactorMyDefaultV4' test.out

#- 286 AdminInviteUserV4
samples/cli/sample-apps Iam adminInviteUserV4 \
    --body '{"assignedNamespaces": ["VRclumQT"], "emailAddresses": ["Fvr5rRyY"], "isAdmin": true, "roleId": "aNmz3PjM"}' \
    > test.out 2>&1
eval_tap $? 286 'AdminInviteUserV4' test.out

#- 287 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "2T89NTrF", "policyId": "RUCXFkru", "policyVersionId": "xegpkcXC"}], "authType": "EMAILPASSWD", "country": "zgcvv0WE", "dateOfBirth": "5EQhcomP", "displayName": "S1E7cpsL", "emailAddress": "gr2zEnjy", "password": "RNjEC3FM", "passwordMD5Sum": "DcZvwwf8", "username": "aU98In31", "verified": false}' \
    --namespace 'F4jlwKyG' \
    > test.out 2>&1
eval_tap $? 287 'PublicCreateTestUserV4' test.out

#- 288 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "TF1l5q1N", "policyId": "p0sT1X8J", "policyVersionId": "2eAWOzjm"}], "authType": "EMAILPASSWD", "code": "9UzIfnho", "country": "o6xUmTle", "dateOfBirth": "UnJFM7Xh", "displayName": "oDxGik2J", "emailAddress": "SfZ64wWe", "password": "Pq6103PO", "passwordMD5Sum": "NKIS7F9e", "reachMinimumAge": false, "username": "W4R15tAs"}' \
    --namespace 'iG31CEyU' \
    > test.out 2>&1
eval_tap $? 288 'PublicCreateUserV4' test.out

#- 289 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "OZhmnHkv", "policyId": "ek6Aa5kN", "policyVersionId": "noclxs9k"}], "authType": "EMAILPASSWD", "country": "cvIpV7mC", "dateOfBirth": "YfWKjY9C", "displayName": "sQYsGyhE", "password": "OntEkedM", "reachMinimumAge": true, "username": "0bFqvjxb"}' \
    --invitationId 'T3YuVdaB' \
    --namespace 'N5RSjhcj' \
    > test.out 2>&1
eval_tap $? 289 'CreateUserFromInvitationV4' test.out

#- 290 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --body '{"avatarUrl": "uDvNrXL8", "country": "45jfh5tZ", "dateOfBirth": "0hqJLjQU", "displayName": "moYUnC84", "languageTag": "9OBNuLZt", "userName": "ofGAAaMp"}' \
    --namespace 'BQArU4RS' \
    > test.out 2>&1
eval_tap $? 290 'PublicUpdateUserV4' test.out

#- 291 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --body '{"code": "0FQRy5Qz", "emailAddress": "5VcyfBpH"}' \
    --namespace 'jtvFwKSJ' \
    > test.out 2>&1
eval_tap $? 291 'PublicUpdateUserEmailAddressV4' test.out

#- 292 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --body '{"code": "yZeqvpev", "country": "cVXTxs9L", "dateOfBirth": "TorIyx23", "displayName": "LhLy7ds3", "emailAddress": "g3BuHTPF", "password": "19dBYFws", "reachMinimumAge": false, "username": "4eOwWqW8", "validateOnly": false}' \
    --namespace 'LpTi1W63' \
    > test.out 2>&1
eval_tap $? 292 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 293 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --body '{"emailAddress": "HccgM5kY", "password": "u36JpTL5", "username": "5W4ws3KC"}' \
    --namespace 'yplY1ocK' \
    > test.out 2>&1
eval_tap $? 293 'PublicUpgradeHeadlessAccountV4' test.out

#- 294 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace 'DCVaqrVe' \
    > test.out 2>&1
eval_tap $? 294 'PublicDisableMyAuthenticatorV4' test.out

#- 295 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --code 'egT3uGDI' \
    --namespace 'Icvuuokt' \
    > test.out 2>&1
eval_tap $? 295 'PublicEnableMyAuthenticatorV4' test.out

#- 296 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace '8TC38mYo' \
    > test.out 2>&1
eval_tap $? 296 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 297 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace 'UanQT4Mm' \
    > test.out 2>&1
eval_tap $? 297 'PublicGetMyBackupCodesV4' test.out

#- 298 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace 'znv7r2jt' \
    > test.out 2>&1
eval_tap $? 298 'PublicGenerateMyBackupCodesV4' test.out

#- 299 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace 'hibgeCLX' \
    > test.out 2>&1
eval_tap $? 299 'PublicDisableMyBackupCodesV4' test.out

#- 300 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace '41qyOiLg' \
    > test.out 2>&1
eval_tap $? 300 'PublicDownloadMyBackupCodesV4' test.out

#- 301 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace 'd8Wy739Q' \
    > test.out 2>&1
eval_tap $? 301 'PublicEnableMyBackupCodesV4' test.out

#- 302 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --cookie 'Hzw0TEzp' \
    --namespace 'd7TV5vhM' \
    > test.out 2>&1
eval_tap $? 302 'PublicRemoveTrustedDeviceV4' test.out

#- 303 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace 'M2i3DM6e' \
    > test.out 2>&1
eval_tap $? 303 'PublicGetMyEnabledFactorsV4' test.out

#- 304 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --factor 'tfI7TzC3' \
    --namespace 'sKmtsyEK' \
    > test.out 2>&1
eval_tap $? 304 'PublicMakeFactorMyDefaultV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE