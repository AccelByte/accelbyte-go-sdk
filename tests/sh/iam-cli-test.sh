#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Meta:
# - random seed: 256
# - template file: go-cli-unit-test.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

export JUSTICE_BASE_URL="$AB_BASE_URL"
export APP_CLIENT_ID="$AB_CLIENT_ID"
export APP_CLIENT_SECRET="$AB_CLIENT_SECRET"

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

MODULE='cmd'
MODULE_PATH='../samples/cli'
TEMP_TOKEN="/tmp/justice-sample-apps/userData"

echo "TAP version 13"
echo "1..299"

#- 1 Login
rm -f $TEMP_TOKEN \
    && mkdir -p $(dirname $TEMP_TOKEN) \
    && echo {"\"access_token"\":"\"foo"\"} >> $TEMP_TOKEN
eval_tap 0 1 'Login # SKIP not tested' test.out

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
    --body '{"audiences": ["iQExaunj"], "baseUri": "dAqnHUz4", "clientId": "4tx4O6ha", "clientName": "mPwNoi07", "clientPermissions": [{"action": 8, "resource": "zDK56JFI", "schedAction": 65, "schedCron": "e1IMUCLc", "schedRange": ["N0DsaD5F"]}], "deletable": true, "namespace": "BsFe9OYE", "oauthClientType": "JVsYffmh", "redirectUri": "yx6J25Pr", "secret": "M4S3cB8m"}' \
    --namespace '17hEeLLg' \
    > test.out 2>&1
eval_tap $? 119 'AdminCreateClientV3' test.out

#- 120 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'oaYth6zc' \
    --namespace 'f8eA45OM' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 121 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'vObWejo9' \
    --namespace 'LfGeegJM' \
    > test.out 2>&1
eval_tap $? 121 'AdminDeleteClientV3' test.out

#- 122 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --body '{"audiences": ["aBGR6D1Z"], "baseUri": "oZEZQkJ8", "clientName": "DSqFnhdK", "clientPermissions": [{"action": 43, "resource": "jFCFbSFl", "schedAction": 60, "schedCron": "WoMPdgK5", "schedRange": ["zn62mhnF"]}], "deletable": false, "namespace": "CTlDNBOc", "redirectUri": "ygvv2LAg"}' \
    --clientId 'fBGVzanb' \
    --namespace 'KYsB0gqJ' \
    > test.out 2>&1
eval_tap $? 122 'AdminUpdateClientV3' test.out

#- 123 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --body '{"permissions": [{"action": 95, "resource": "hYSikJl2"}]}' \
    --clientId 'p9rBx8N5' \
    --namespace 'egapqxDy' \
    > test.out 2>&1
eval_tap $? 123 'AdminUpdateClientPermissionV3' test.out

#- 124 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --body '{"permissions": [{"action": 4, "resource": "LfNjzzEZ"}]}' \
    --clientId 'YA8jIkMJ' \
    --namespace 'b7cZ2bPs' \
    > test.out 2>&1
eval_tap $? 124 'AdminAddClientPermissionsV3' test.out

#- 125 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '1' \
    --clientId 'LLpEBVEM' \
    --namespace 'k5AsKaF2' \
    --resource 'P44lXkI3' \
    > test.out 2>&1
eval_tap $? 125 'AdminDeleteClientPermissionV3' test.out

#- 126 RetrieveAllThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 \
    --namespace 'zdiRiC5I' \
    > test.out 2>&1
eval_tap $? 126 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 127 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 \
    --namespace 'bPit71JW' \
    > test.out 2>&1
eval_tap $? 127 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 128 RetrieveAllSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 \
    --namespace 'lYCoi4nD' \
    --limit '10' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 128 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 129 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace 'u5V6QSYx' \
    --platformId 'EVOryVuZ' \
    > test.out 2>&1
eval_tap $? 129 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 130 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --body '{"ACSURL": "YmgUeEPB", "AWSCognitoRegion": "5AGPgvk0", "AWSCognitoUserPool": "Zthaj0EB", "AppId": "A4azRz0d", "ClientId": "56smobor", "Environment": "4p1PlgQB", "FederationMetadataURL": "9EcNGOeB", "GenericOauthFlow": false, "IsActive": false, "Issuer": "07deDLaZ", "JWKSEndpoint": "8JCvbeTf", "KeyID": "W0hgzrab", "OrganizationId": "LJxEwJrE", "PlatformName": "BmQ64haN", "RedirectUri": "OzlGu68U", "Secret": "YyupjdDe", "TeamID": "tnoT0rfW", "TokenAuthenticationType": "tVPwQfq6", "TokenClaimsMapping": {"V92gbfPo": "uNdmP7fc"}}' \
    --namespace 'kVnuDGvY' \
    --platformId 'Ib1p5tcR' \
    > test.out 2>&1
eval_tap $? 130 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 131 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace '5z8ZJLjS' \
    --platformId 'HcaR3X4t' \
    > test.out 2>&1
eval_tap $? 131 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 132 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --body '{"ACSURL": "Zmwr0QmO", "AWSCognitoRegion": "nsEg49eX", "AWSCognitoUserPool": "p0xQkZ2J", "AppId": "juwWWy0t", "ClientId": "U11PCeSr", "Environment": "vejUKwVf", "FederationMetadataURL": "F37Vr7mk", "GenericOauthFlow": true, "IsActive": true, "Issuer": "FBI1Vwhk", "JWKSEndpoint": "VSKDlNFO", "KeyID": "UHBJsvTs", "OrganizationId": "qk9hg4hj", "PlatformName": "6nUdebW6", "RedirectUri": "UskbPkkZ", "Secret": "Ak01f1Kx", "TeamID": "CtWADU2g", "TokenAuthenticationType": "uN6U9w13", "TokenClaimsMapping": {"W1K9TZQ4": "qRLEi5wo"}}' \
    --namespace 'wE36rfmM' \
    --platformId '0CCs35TP' \
    > test.out 2>&1
eval_tap $? 132 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 133 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --body '{"affectedClientIDs": ["UPLmsY8W"], "assignedNamespaces": ["gwSx1DI5"], "domain": "GH9bv9ZT", "roleId": "o2HpA6pz"}' \
    --namespace 'jHpZO0E9' \
    --platformId 'iLgRPJK3' \
    > test.out 2>&1
eval_tap $? 133 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 134 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --body '{"domain": "nBae3GOg"}' \
    --namespace 'bQrqra0P' \
    --platformId 'tkfvOpY2' \
    > test.out 2>&1
eval_tap $? 134 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 135 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace 'ramp5lnB' \
    --platformId 'n6xmBkfM' \
    > test.out 2>&1
eval_tap $? 135 'RetrieveSSOLoginPlatformCredential' test.out

#- 136 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --body '{"acsUrl": "tC66hFq0", "apiKey": "kPOkORm2", "appId": "XjlNEE5e", "federationMetadataUrl": "cPzAmi0y", "isActive": false, "redirectUri": "PloP1XkY", "secret": "K4MgIsDS", "ssoUrl": "FMPyMhyw"}' \
    --namespace '1OLZPVww' \
    --platformId 'xH4BIDJu' \
    > test.out 2>&1
eval_tap $? 136 'AddSSOLoginPlatformCredential' test.out

#- 137 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace 'DoShMMft' \
    --platformId 'll8N0VvC' \
    > test.out 2>&1
eval_tap $? 137 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 138 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --body '{"acsUrl": "hHz9urmt", "apiKey": "7QWvE8s6", "appId": "Uz8BRuYW", "federationMetadataUrl": "DTtL6MTT", "isActive": false, "redirectUri": "Cbb9S5Q1", "secret": "IVHGT88p", "ssoUrl": "rREBgYOW"}' \
    --namespace 'dHJ9Jumo' \
    --platformId 'htU13gf7' \
    > test.out 2>&1
eval_tap $? 138 'UpdateSSOPlatformCredential' test.out

#- 139 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace 'TRigNZj5' \
    --platformId 'w5y3HmK8' \
    --platformUserId 'QVOa62eQ' \
    > test.out 2>&1
eval_tap $? 139 'AdminGetUserByPlatformUserIDV3' test.out

#- 140 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace 'ZtbLLcF6' \
    --roleId '71WLtv38' \
    --after '67' \
    --before '8' \
    --limit '4' \
    > test.out 2>&1
eval_tap $? 140 'GetAdminUsersByRoleIdV3' test.out

#- 141 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace 'czopFmeR' \
    --emailAddress 'wpcJBZyi' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByEmailAddressV3' test.out

#- 142 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --body '{"userIds": ["3mLC4Kze"]}' \
    --namespace 'kiSzeyol' \
    > test.out 2>&1
eval_tap $? 142 'AdminListUserIDByUserIDsV3' test.out

#- 143 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --body '{"emailAddresses": ["nOQt0joV"], "isAdmin": false, "roles": ["CytC6lRG"]}' \
    --namespace '98YxnHbR' \
    > test.out 2>&1
eval_tap $? 143 'AdminInviteUserV3' test.out

#- 144 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace 'doTKKeuS' \
    --limit '19' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUsersV3' test.out

#- 145 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace 'Ze9i1osg' \
    --by 'hF1hzi1N' \
    --endDate 'l47syJ5i' \
    --limit '3' \
    --offset '51' \
    --platformBy 'SHZeCLIv' \
    --platformId 'WPVRsdEq' \
    --query 'A61yTrMg' \
    --startDate 'sycTgmPz' \
    > test.out 2>&1
eval_tap $? 145 'AdminSearchUserV3' test.out

#- 146 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --body '{"listEmailAddressRequest": ["c20EuO5d"]}' \
    --namespace 'MqGDlSZP' \
    > test.out 2>&1
eval_tap $? 146 'AdminGetBulkUserByEmailAddressV3' test.out

#- 147 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace 'Y07rEVSj' \
    --userId 'zHjL6ZbX' \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByUserIdV3' test.out

#- 148 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --body '{"country": "jG6DSmpp", "dateOfBirth": "3op8htaR", "displayName": "LxtW4PvF", "languageTag": "kESTULat", "userName": "5F1Le7cR"}' \
    --namespace '7q6PWhZm' \
    --userId 'mKz41i1T' \
    > test.out 2>&1
eval_tap $? 148 'AdminUpdateUserV3' test.out

#- 149 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace 'p78FipJH' \
    --userId 'ahViJvLY' \
    --activeOnly 'False' \
    --after 'dmlk2luq' \
    --before 'SOOA2VOZ' \
    --limit '55' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetUserBanV3' test.out

#- 150 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --body '{"ban": "oNbB98Pu", "comment": "SGykqFzP", "endDate": "wSMXT53b", "reason": "BuL38beO", "skipNotif": true}' \
    --namespace 'VuHZQ9LY' \
    --userId 't6w23Wf8' \
    > test.out 2>&1
eval_tap $? 150 'AdminBanUserV3' test.out

#- 151 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --body '{"enabled": false, "skipNotif": true}' \
    --banId 'Qo72sH0a' \
    --namespace 'RdcDlDyG' \
    --userId 'csfIuI4D' \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserBanV3' test.out

#- 152 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --body '{"context": "v5lEJpK1", "emailAddress": "AyRlzsrR", "languageTag": "XEFZivQO"}' \
    --namespace 'HG6wVicN' \
    --userId 'ratsvvHL' \
    > test.out 2>&1
eval_tap $? 152 'AdminSendVerificationCodeV3' test.out

#- 153 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --body '{"Code": "mIohfNIS", "ContactType": "LXMDWDdm", "LanguageTag": "5FE4lliQ", "validateOnly": false}' \
    --namespace 'utJbpEo4' \
    --userId 'mUNHFtdm' \
    > test.out 2>&1
eval_tap $? 153 'AdminVerifyAccountV3' test.out

#- 154 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace 'l2xNviWa' \
    --userId 'cJc3Fm7Z' \
    > test.out 2>&1
eval_tap $? 154 'GetUserVerificationCode' test.out

#- 155 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace '548uuKgo' \
    --userId 'CBqS5uId' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetUserDeletionStatusV3' test.out

#- 156 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --body '{"enabled": true}' \
    --namespace 'bwCeeq9o' \
    --userId 'uEdDtjOg' \
    > test.out 2>&1
eval_tap $? 156 'AdminUpdateUserDeletionStatusV3' test.out

#- 157 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --body '{"code": "sypLkm2Z", "country": "Yew5H7Zm", "dateOfBirth": "0gnYyj6M", "displayName": "Xf9G1nty", "emailAddress": "ebvoeHen", "password": "AALKt7Ef", "validateOnly": true}' \
    --namespace 'IH446oUn' \
    --userId 'P2S74unX' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpgradeHeadlessAccountV3' test.out

#- 158 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace 'wg0JKqVW' \
    --userId 'W1rjK1ep' \
    > test.out 2>&1
eval_tap $? 158 'AdminDeleteUserInformationV3' test.out

#- 159 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace 'wkAvcsYv' \
    --userId 'bgfBVPpT' \
    --after '0.009010791422114361' \
    --before '0.7923140177423913' \
    --limit '32' \
    > test.out 2>&1
eval_tap $? 159 'AdminGetUserLoginHistoriesV3' test.out

#- 160 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --body '{"Permissions": [{"Action": 90, "Resource": "KiNXmz7e", "SchedAction": 77, "SchedCron": "rMD5TbaU", "SchedRange": ["xTCTng0x"]}]}' \
    --namespace 'jtdBrjs3' \
    --userId 'Kiykt2Ck' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserPermissionV3' test.out

#- 161 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --body '{"Permissions": [{"Action": 12, "Resource": "OlSatECZ", "SchedAction": 93, "SchedCron": "gwQLqDqY", "SchedRange": ["SxTPuVlB"]}]}' \
    --namespace 'qirdp3yx' \
    --userId 'nsETl1Sv' \
    > test.out 2>&1
eval_tap $? 161 'AdminAddUserPermissionsV3' test.out

#- 162 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --body '[{"Action": 14, "Resource": "QudsjIhX"}]' \
    --namespace 'dxiSoWpn' \
    --userId 'nxgX7BCP' \
    > test.out 2>&1
eval_tap $? 162 'AdminDeleteUserPermissionBulkV3' test.out

#- 163 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '76' \
    --namespace 'qzQIxibh' \
    --resource 'pNYsHtdB' \
    --userId '3IkjuaZq' \
    > test.out 2>&1
eval_tap $? 163 'AdminDeleteUserPermissionV3' test.out

#- 164 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace 'hJilrZkS' \
    --userId 'SKgP5rxC' \
    --after 'R77G9d5C' \
    --before 'A1GORSbL' \
    --limit '27' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserPlatformAccountsV3' test.out

#- 165 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace '0dbWDEup' \
    --userId 'mdLQzPnN' \
    > test.out 2>&1
eval_tap $? 165 'AdminGetListJusticePlatformAccounts' test.out

#- 166 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace 'fBAcWArb' \
    --targetNamespace 'kCfdHIZb' \
    --userId '03otqmBu' \
    > test.out 2>&1
eval_tap $? 166 'AdminCreateJusticeUser' test.out

#- 167 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --body '{"platformId": "S9V2pCZ2", "platformUserId": "3UHmk0lp"}' \
    --namespace 'J4JLl01q' \
    --userId 'i7L2oDUo' \
    > test.out 2>&1
eval_tap $? 167 'AdminLinkPlatformAccount' test.out

#- 168 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --body '{"platformNamespace": "VRUb39j2"}' \
    --namespace '2P4Sp09c' \
    --platformId 'KmjRUbZV' \
    --userId 'BVS7OK2Z' \
    > test.out 2>&1
eval_tap $? 168 'AdminPlatformUnlinkV3' test.out

#- 169 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --ticket 'rdcsckMe' \
    --namespace 'kROWZ2KU' \
    --platformId 'TqkK2eFa' \
    --userId 'GLoSmEEP' \
    > test.out 2>&1
eval_tap $? 169 'AdminPlatformLinkV3' test.out

#- 170 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --body '["bLywJsyU"]' \
    --namespace 'ie6fZgLl' \
    --userId 'lUPsO8lg' \
    > test.out 2>&1
eval_tap $? 170 'AdminDeleteUserRolesV3' test.out

#- 171 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --body '[{"namespace": "46Si7006", "roleId": "vL2w4aaj"}]' \
    --namespace 'DAOx0iJj' \
    --userId 'Yleaktqv' \
    > test.out 2>&1
eval_tap $? 171 'AdminSaveUserRoleV3' test.out

#- 172 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace '2WkljQuD' \
    --roleId '5mnJONqH' \
    --userId 'Gq8mB7mF' \
    > test.out 2>&1
eval_tap $? 172 'AdminAddUserRoleV3' test.out

#- 173 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace '2lMFcagh' \
    --roleId 'FXJIJflR' \
    --userId 'HFcsIqCy' \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserRoleV3' test.out

#- 174 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --body '{"enabled": true, "reason": "DifSSQ5O"}' \
    --namespace 'n2ccEcl3' \
    --userId 'xeiO4bwF' \
    > test.out 2>&1
eval_tap $? 174 'AdminUpdateUserStatusV3' test.out

#- 175 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace '5JOjGoGx' \
    --userId 'KM3qMce5' \
    > test.out 2>&1
eval_tap $? 175 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 176 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'tfLcpjFZ' \
    --before 'MKCbp0pE' \
    --isWildcard 'False' \
    --limit '74' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetRolesV3' test.out

#- 177 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "managers": [{"displayName": "HxMYF836", "namespace": "075xEpzd", "userId": "nYtpja5i"}], "members": [{"displayName": "g2isQZga", "namespace": "6Vy76izP", "userId": "iQRjYa8f"}], "permissions": [{"action": 43, "resource": "5fIt22tI", "schedAction": 15, "schedCron": "jhgkigW2", "schedRange": ["2zXMWXfb"]}], "roleName": "cM0GIALI"}' \
    > test.out 2>&1
eval_tap $? 177 'AdminCreateRoleV3' test.out

#- 178 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'bFCQgBcL' \
    > test.out 2>&1
eval_tap $? 178 'AdminGetRoleV3' test.out

#- 179 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'NT6iOQVY' \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteRoleV3' test.out

#- 180 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --body '{"deletable": true, "isWildcard": true, "roleName": "W2gMsI1a"}' \
    --roleId 'YBitSn3U' \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateRoleV3' test.out

#- 181 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'DeKj97I4' \
    > test.out 2>&1
eval_tap $? 181 'AdminGetRoleAdminStatusV3' test.out

#- 182 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'WYXLqjN7' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateAdminRoleStatusV3' test.out

#- 183 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'ktOBTraB' \
    > test.out 2>&1
eval_tap $? 183 'AdminRemoveRoleAdminV3' test.out

#- 184 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'xWRTVuYE' \
    --after 'qGlKDwTK' \
    --before 'XBrXiQcd' \
    --limit '69' \
    > test.out 2>&1
eval_tap $? 184 'AdminGetRoleManagersV3' test.out

#- 185 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --body '{"managers": [{"displayName": "W8kiCKeQ", "namespace": "JWZBvcq1", "userId": "ETvWBxYZ"}]}' \
    --roleId 'Jh7B8gbn' \
    > test.out 2>&1
eval_tap $? 185 'AdminAddRoleManagersV3' test.out

#- 186 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --body '{"managers": [{"displayName": "Su9M2OxD", "namespace": "2udaeYpC", "userId": "XYSMiy87"}]}' \
    --roleId 'CTqEQBg3' \
    > test.out 2>&1
eval_tap $? 186 'AdminRemoveRoleManagersV3' test.out

#- 187 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId '6my3sY2c' \
    --after 'lrDcain0' \
    --before 'cOVF1zHw' \
    --limit '58' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetRoleMembersV3' test.out

#- 188 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --body '{"members": [{"displayName": "TI0sJ1Q0", "namespace": "kphMTggS", "userId": "P2SLcuAP"}]}' \
    --roleId '7vU971Cz' \
    > test.out 2>&1
eval_tap $? 188 'AdminAddRoleMembersV3' test.out

#- 189 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --body '{"members": [{"displayName": "w2nbg8C7", "namespace": "Mvywhu6M", "userId": "jOjuGzo1"}]}' \
    --roleId 'Fz4tU0aS' \
    > test.out 2>&1
eval_tap $? 189 'AdminRemoveRoleMembersV3' test.out

#- 190 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --body '{"permissions": [{"action": 26, "resource": "98N8qOUA", "schedAction": 50, "schedCron": "92RaDe8n", "schedRange": ["gT8LRQkM"]}]}' \
    --roleId 'nG1LZyF2' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpdateRolePermissionsV3' test.out

#- 191 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --body '{"permissions": [{"action": 24, "resource": "dYY6ZMfu", "schedAction": 90, "schedCron": "YTKsue48", "schedRange": ["qBEBNAV5"]}]}' \
    --roleId 'BTe6ec1z' \
    > test.out 2>&1
eval_tap $? 191 'AdminAddRolePermissionsV3' test.out

#- 192 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --body '["A92URCLS"]' \
    --roleId 'GPmRBZWu' \
    > test.out 2>&1
eval_tap $? 192 'AdminDeleteRolePermissionsV3' test.out

#- 193 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '26' \
    --resource 'HW7MYvr6' \
    --roleId 'QA7Ppepc' \
    > test.out 2>&1
eval_tap $? 193 'AdminDeleteRolePermissionV3' test.out

#- 194 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 194 'AdminGetMyUserV3' test.out

#- 195 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId '92HA94eA' \
    --extendExp 'True' \
    --redirectUri 'deyfUpgi' \
    --password 'Ppf8nxKJ' \
    --requestId '3dnmtPwa' \
    --userName '64Y4gPEK' \
    > test.out 2>&1
eval_tap $? 195 'UserAuthenticationV3' test.out

#- 196 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 196 'GetCountryLocationV3' test.out

#- 197 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 197 'Logout' test.out

#- 198 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace 'Mhhu9a6f' \
    --platformId '3xJNtUlK' \
    --userId 'LlIIAeHb' \
    > test.out 2>&1
eval_tap $? 198 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 199 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace 'm5M6LsY1' \
    --userId 'VMuIEcRl' \
    > test.out 2>&1
eval_tap $? 199 'RevokeUserV3' test.out

#- 200 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 's68M3MPM' \
    --codeChallengeMethod 'plain' \
    --redirectUri 'epyyMz6z' \
    --scope 'fR1pvTYY' \
    --state 'tDOiEi4R' \
    --targetAuthPage 'uEcHCSGh' \
    --clientId 'pOZQFlwO' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 200 'AuthorizeV3' test.out

#- 201 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'uKGDFgK4' \
    > test.out 2>&1
eval_tap $? 201 'TokenIntrospectionV3' test.out

#- 202 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 202 'GetJWKSV3' test.out

#- 203 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor '9YuKnXks' \
    --mfaToken '0m8ANrcR' \
    > test.out 2>&1
eval_tap $? 203 'Change2faMethod' test.out

#- 204 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'al7ta3fo' \
    --factor 'jA3h4MMW' \
    --mfaToken '3AJ5zlsF' \
    --rememberDevice 'True' \
    > test.out 2>&1
eval_tap $? 204 'Verify2faCode' test.out

#- 205 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace 'wjvLYvmg' \
    --platformId '6avudQFF' \
    --userId '1CPNY9u2' \
    > test.out 2>&1
eval_tap $? 205 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 206 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'dVYdglOO' \
    --clientId 'oCeK0kPK' \
    --redirectUri 'mBqVux3l' \
    --requestId 'XcD8aert' \
    > test.out 2>&1
eval_tap $? 206 'AuthCodeRequestV3' test.out

#- 207 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --clientId 'AVCqs8XT' \
    --deviceId '8xy3nJ06' \
    --platformToken 'KkseA0AR' \
    --platformId 'j9ricfay' \
    > test.out 2>&1
eval_tap $? 207 'PlatformTokenGrantV3' test.out

#- 208 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 208 'GetRevocationListV3' test.out

#- 209 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'vnhi8MDd' \
    > test.out 2>&1
eval_tap $? 209 'TokenRevocationV3' test.out

#- 210 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --deviceId 'Y4WLHoaU' \
    --clientId 'kYnQp5eg' \
    --code 'dmVE8Imi' \
    --codeVerifier 'vNtQxqWR' \
    --extendExp 'False' \
    --password 'hODoWOr9' \
    --redirectUri '8kjBUas9' \
    --refreshToken 'jjz2Frgi' \
    --username 'aGrcB7dI' \
    --grantType 'client_credentials' \
    > test.out 2>&1
eval_tap $? 210 'TokenGrantV3' test.out

#- 211 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId '5W8tKH8o' \
    --code 'u9SdbxSX' \
    --error 'crEFCwqe' \
    --openidAssocHandle 'GNLdIBRd' \
    --openidClaimedId 'liFQVMKE' \
    --openidIdentity 'zVUWlUWD' \
    --openidMode 's2x1EQU0' \
    --openidNs 'oepEvcja' \
    --openidOpEndpoint 'SgEh6jJn' \
    --openidResponseNonce 'FxinIHJ1' \
    --openidReturnTo 'o7aq5Zzn' \
    --openidSig 'd5eacobT' \
    --openidSigned 'suRlhreQ' \
    --state 'VFID3o8h' \
    > test.out 2>&1
eval_tap $? 211 'PlatformAuthenticationV3' test.out

#- 212 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'False' \
    --languageCode 'KIOAw70D' \
    > test.out 2>&1
eval_tap $? 212 'PublicGetInputValidations' test.out

#- 213 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace 'vAHhSGWU' \
    > test.out 2>&1
eval_tap $? 213 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 214 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --body '{"platformUserIds": ["vzq1Za3I"]}' \
    --namespace 'BC4vQFsU' \
    --platformId 'JPfiaJp1' \
    > test.out 2>&1
eval_tap $? 214 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 215 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace 'rt7OBgBC' \
    --platformId 'e6N0eI65' \
    --platformUserId 'Mn5tngEY' \
    > test.out 2>&1
eval_tap $? 215 'PublicGetUserByPlatformUserIDV3' test.out

#- 216 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace 'XgPVT5Cq' \
    --requestId 'XDZBVMJy' \
    > test.out 2>&1
eval_tap $? 216 'PublicGetAsyncStatus' test.out

#- 217 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace 'JeKFO92Y' \
    --by 'DtaZvJoK' \
    --query 'S0OxyipZ' \
    > test.out 2>&1
eval_tap $? 217 'PublicSearchUserV3' test.out

#- 218 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --body '{"PasswordMD5Sum": "uO4N9S2Y", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "gHa6XBcv", "policyId": "GRYk5rUt", "policyVersionId": "WHCnhmzz"}], "authType": "ppV7tKNK", "code": "YUQVBXym", "country": "WcNlHaFx", "dateOfBirth": "YaGHUpmB", "displayName": "FyOrFKtx", "emailAddress": "GNAi0fq4", "password": "xChPLd2l", "reachMinimumAge": false}' \
    --namespace 'pc7XoVpd' \
    > test.out 2>&1
eval_tap $? 218 'PublicCreateUserV3' test.out

#- 219 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace 'd6rCpyMr' \
    --field 'nH9YHXh7' \
    --query 'KnCVOKY2' \
    > test.out 2>&1
eval_tap $? 219 'CheckUserAvailability' test.out

#- 220 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --body '{"userIds": ["zsBRGtd8"]}' \
    --namespace 'QY2OLbij' \
    > test.out 2>&1
eval_tap $? 220 'PublicBulkGetUsers' test.out

#- 221 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --body '{"emailAddress": "rvfr8hkn", "languageTag": "jWUWdMUX"}' \
    --namespace 'Hvw4pNlG' \
    > test.out 2>&1
eval_tap $? 221 'PublicSendRegistrationCode' test.out

#- 222 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --body '{"code": "LjdBxLM0", "emailAddress": "79pDAbTg"}' \
    --namespace 'msEYEq2G' \
    > test.out 2>&1
eval_tap $? 222 'PublicVerifyRegistrationCode' test.out

#- 223 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --body '{"emailAddress": "kYK1vYm9", "languageTag": "flXQ7CQo"}' \
    --namespace 'emnQG0dH' \
    > test.out 2>&1
eval_tap $? 223 'PublicForgotPasswordV3' test.out

#- 224 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId '0NVM9VEH' \
    --namespace 'TPqDhkcu' \
    > test.out 2>&1
eval_tap $? 224 'GetAdminInvitationV3' test.out

#- 225 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "nz6GiNMb", "policyId": "oBJHml0L", "policyVersionId": "JmpPi4mq"}], "authType": "hruiCZLG", "country": "GP5UXkHN", "dateOfBirth": "TMapp5Sb", "displayName": "onsUJKAD", "password": "r60EkdFr", "reachMinimumAge": false}' \
    --invitationId 'LsGt9yTX' \
    --namespace 'WUSCQcMs' \
    > test.out 2>&1
eval_tap $? 225 'CreateUserFromInvitationV3' test.out

#- 226 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --body '{"country": "HN7reI22", "dateOfBirth": "ks7I12tA", "displayName": "Zc8sxxLx", "languageTag": "9XQeqNWL", "userName": "m8cNJbYH"}' \
    --namespace '5J4WiJLv' \
    > test.out 2>&1
eval_tap $? 226 'UpdateUserV3' test.out

#- 227 PublicUpdateUserV3
samples/cli/sample-apps Iam publicUpdateUserV3 \
    --body '{"country": "9NvHwtw2", "dateOfBirth": "Mjcy9ZL6", "displayName": "Zs5Bu2XY", "languageTag": "opLWZeUK", "userName": "JJNftRpG"}' \
    --namespace 'gk1iseRE' \
    > test.out 2>&1
eval_tap $? 227 'PublicUpdateUserV3' test.out

#- 228 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --body '{"context": "zzRG6z9w", "emailAddress": "muHddyOd", "languageTag": "ibI1LVyq"}' \
    --namespace 'bdY8DGZK' \
    > test.out 2>&1
eval_tap $? 228 'PublicSendVerificationCodeV3' test.out

#- 229 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --body '{"code": "AuoIKz3P", "contactType": "p3zLWUxM", "languageTag": "zMtSmMmZ", "validateOnly": false}' \
    --namespace 'G0FoQP8q' \
    > test.out 2>&1
eval_tap $? 229 'PublicUserVerificationV3' test.out

#- 230 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --body '{"code": "7aSsb85g", "country": "Ah9RD3Zz", "dateOfBirth": "N6N1iJ8l", "displayName": "tt9IRqCf", "emailAddress": "lgln6r5f", "password": "0s5H6lCf", "validateOnly": false}' \
    --namespace '11hLLCgw' \
    > test.out 2>&1
eval_tap $? 230 'PublicUpgradeHeadlessAccountV3' test.out

#- 231 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --body '{"emailAddress": "5av4LExd", "password": "abD8g2cv"}' \
    --namespace 'HfMRupDA' \
    > test.out 2>&1
eval_tap $? 231 'PublicVerifyHeadlessAccountV3' test.out

#- 232 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --body '{"languageTag": "5xbjs3XR", "newPassword": "dHUJ0GCm", "oldPassword": "flIXkgJ6"}' \
    --namespace 'zkTwoakq' \
    > test.out 2>&1
eval_tap $? 232 'PublicUpdatePasswordV3' test.out

#- 233 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace '7sEejFZ1' \
    --targetNamespace 'NtONXb9w' \
    > test.out 2>&1
eval_tap $? 233 'PublicCreateJusticeUser' test.out

#- 234 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --redirectUri '9hsQHszI' \
    --ticket 'sfrlzKpQ' \
    --namespace 'dd58dZP5' \
    --platformId 'RvrinNtv' \
    > test.out 2>&1
eval_tap $? 234 'PublicPlatformLinkV3' test.out

#- 235 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --body '{"platformNamespace": "BtqFSkA6"}' \
    --namespace '8mIVYJ5p' \
    --platformId 'SVxBsLht' \
    > test.out 2>&1
eval_tap $? 235 'PublicPlatformUnlinkV3' test.out

#- 236 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace 'y3pecToX' \
    --platformId 'A4M1oUFP' \
    --clientId 'hgo7Z6mw' \
    --redirectUri 'NC4FY69m' \
    > test.out 2>&1
eval_tap $? 236 'PublicWebLinkPlatform' test.out

#- 237 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace 'M87joJNO' \
    --platformId 'GB83Ns6H' \
    --state 'l5Poab6l' \
    > test.out 2>&1
eval_tap $? 237 'PublicWebLinkPlatformEstablish' test.out

#- 238 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --body '{"code": "KoVqNBUz", "emailAddress": "IxOfglqu", "newPassword": "S2q2DoWr"}' \
    --namespace '9zvFtKa2' \
    > test.out 2>&1
eval_tap $? 238 'ResetPasswordV3' test.out

#- 239 PublicGetUserByUserIdV3
samples/cli/sample-apps Iam publicGetUserByUserIdV3 \
    --namespace 'mOAqOokV' \
    --userId '1plxQ2Yr' \
    > test.out 2>&1
eval_tap $? 239 'PublicGetUserByUserIdV3' test.out

#- 240 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace 'iTPfipD6' \
    --userId '7jI2hiZk' \
    --activeOnly 'True' \
    --after 'tLnh2U1R' \
    --before 'QlMxkfNM' \
    --limit '82' \
    > test.out 2>&1
eval_tap $? 240 'PublicGetUserBanHistoryV3' test.out

#- 241 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace 'Ntqv2TMz' \
    --userId '1b7SnzkX' \
    --after '0.633865774178752' \
    --before '0.9701707300846726' \
    --limit '68' \
    > test.out 2>&1
eval_tap $? 241 'PublicGetUserLoginHistoriesV3' test.out

#- 242 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace 'gm1wkSWs' \
    --userId 'YvAsu18o' \
    --after 'bUdc8mbv' \
    --before 'XcwcgMqO' \
    --limit '98' \
    > test.out 2>&1
eval_tap $? 242 'PublicGetUserPlatformAccountsV3' test.out

#- 243 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --body '{"platformId": "MziXrVds", "platformUserId": "Ec3ClFP3"}' \
    --namespace 'mJwusCBT' \
    --userId 'e4kLcuqL' \
    > test.out 2>&1
eval_tap $? 243 'PublicLinkPlatformAccount' test.out

#- 244 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --password '40NYgekR' \
    --namespace 'avpaGTA9' \
    --userId 'BTyCCyN4' \
    > test.out 2>&1
eval_tap $? 244 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 245 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'Fw9i6mI2' \
    --before 'W3tjjCqP' \
    --isWildcard 'True' \
    --limit '100' \
    > test.out 2>&1
eval_tap $? 245 'PublicGetRolesV3' test.out

#- 246 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 's01hEYzW' \
    > test.out 2>&1
eval_tap $? 246 'PublicGetRoleV3' test.out

#- 247 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 247 'PublicGetMyUserV3' test.out

#- 248 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'w3qrcxM0' \
    --code 'DPAXQBNM' \
    --error 'P7j3xfPa' \
    --state 'oZaWFspk' \
    > test.out 2>&1
eval_tap $? 248 'PlatformAuthenticateSAMLV3Handler' test.out

#- 249 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'U5kn6PlP' \
    --payload 'qD4Agfas' \
    > test.out 2>&1
eval_tap $? 249 'LoginSSOClient' test.out

#- 250 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'BfclBhZj' \
    > test.out 2>&1
eval_tap $? 250 'LogoutSSOClient' test.out

#- 251 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --body '{"userIds": ["ZbLnmghK"]}' \
    --namespace 'wPyVIn3q' \
    > test.out 2>&1
eval_tap $? 251 'AdminBulkCheckValidUserIDV4' test.out

#- 252 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --body '{"country": "aHP7KNul", "dateOfBirth": "yfrENVQk", "displayName": "pcaWHf6T", "languageTag": "2xOOljn7", "userName": "c6c9efJI"}' \
    --namespace '02TZxrgL' \
    --userId 'BFJEkphF' \
    > test.out 2>&1
eval_tap $? 252 'AdminUpdateUserV4' test.out

#- 253 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --body '{"code": "z0h6WpoV", "emailAddress": "pVc2HBBm"}' \
    --namespace 'j6cEi02h' \
    --userId 'Xl42ubCR' \
    > test.out 2>&1
eval_tap $? 253 'AdminUpdateUserEmailAddressV4' test.out

#- 254 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace 'fy4GjKn5' \
    --userId 'ItHXLDZq' \
    > test.out 2>&1
eval_tap $? 254 'AdminDisableUserMFAV4' test.out

#- 255 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace 'pRhqnR74' \
    --userId '2GcbLuQO' \
    > test.out 2>&1
eval_tap $? 255 'AdminListUserRolesV4' test.out

#- 256 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --body '{"assignedNamespaces": ["GMOEzmdj"], "roleId": "NhT0S46k"}' \
    --namespace 'qyfMBSaZ' \
    --userId 'c4SA16M8' \
    > test.out 2>&1
eval_tap $? 256 'AdminUpdateUserRoleV4' test.out

#- 257 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --body '{"assignedNamespaces": ["gQCD7aBH"], "roleId": "WCYevNkf"}' \
    --namespace 'cQvl4Oso' \
    --userId '7tx65zXC' \
    > test.out 2>&1
eval_tap $? 257 'AdminAddUserRoleV4' test.out

#- 258 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --body '{"assignedNamespaces": ["iTfjorLF"], "roleId": "qTmIUFUo"}' \
    --namespace 'onHBI13S' \
    --userId 'ZFHfm0F8' \
    > test.out 2>&1
eval_tap $? 258 'AdminRemoveUserRoleV4' test.out

#- 259 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'True' \
    --isWildcard 'True' \
    --limit '35' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 259 'AdminGetRolesV4' test.out

#- 260 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "V0C8FvVU"}' \
    > test.out 2>&1
eval_tap $? 260 'AdminCreateRoleV4' test.out

#- 261 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId '3kRXBGPX' \
    > test.out 2>&1
eval_tap $? 261 'AdminGetRoleV4' test.out

#- 262 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'Idft1biZ' \
    > test.out 2>&1
eval_tap $? 262 'AdminDeleteRoleV4' test.out

#- 263 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "FPHdXcyv"}' \
    --roleId 'ZEhYeUSy' \
    > test.out 2>&1
eval_tap $? 263 'AdminUpdateRoleV4' test.out

#- 264 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --body '{"permissions": [{"action": 92, "resource": "kc65naP1", "schedAction": 86, "schedCron": "8Xww9vq9", "schedRange": ["nMa2Btgw"]}]}' \
    --roleId 'yuf2fjV3' \
    > test.out 2>&1
eval_tap $? 264 'AdminUpdateRolePermissionsV4' test.out

#- 265 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --body '{"permissions": [{"action": 89, "resource": "Lxi7uyha", "schedAction": 9, "schedCron": "FtcO9XNy", "schedRange": ["63QO9vW0"]}]}' \
    --roleId 'ck7TEDE8' \
    > test.out 2>&1
eval_tap $? 265 'AdminAddRolePermissionsV4' test.out

#- 266 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --body '["LeEQBeGP"]' \
    --roleId 'LiE6tHCr' \
    > test.out 2>&1
eval_tap $? 266 'AdminDeleteRolePermissionsV4' test.out

#- 267 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId '0GPFvT0S' \
    --after 'AK91y5vC' \
    --before 'eBIJq0B9' \
    --limit '93' \
    > test.out 2>&1
eval_tap $? 267 'AdminListAssignedUsersV4' test.out

#- 268 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --body '{"assignedNamespaces": ["cI6c5cre"], "namespace": "9ealHOZp", "userId": "hcLncnjn"}' \
    --roleId 'myU8FSxX' \
    > test.out 2>&1
eval_tap $? 268 'AdminAssignUserToRoleV4' test.out

#- 269 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --body '{"namespace": "dCrskoFq", "userId": "nowq9Laz"}' \
    --roleId '1GLt5Mhf' \
    > test.out 2>&1
eval_tap $? 269 'AdminRevokeUserFromRoleV4' test.out

#- 270 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"country": "8Z7ahmbV", "dateOfBirth": "Pm2g7xAF", "displayName": "fRRLUjfW", "languageTag": "S9sftIfH", "userName": "Ge5bUTSX"}' \
    > test.out 2>&1
eval_tap $? 270 'AdminUpdateMyUserV4' test.out

#- 271 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 271 'AdminDisableMyAuthenticatorV4' test.out

#- 272 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'Ov12PMcR' \
    > test.out 2>&1
eval_tap $? 272 'AdminEnableMyAuthenticatorV4' test.out

#- 273 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 273 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 274 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 274 'AdminGetMyBackupCodesV4' test.out

#- 275 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 275 'AdminGenerateMyBackupCodesV4' test.out

#- 276 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 276 'AdminDisableMyBackupCodesV4' test.out

#- 277 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 277 'AdminDownloadMyBackupCodesV4' test.out

#- 278 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 278 'AdminEnableMyBackupCodesV4' test.out

#- 279 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 279 'AdminGetMyEnabledFactorsV4' test.out

#- 280 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'O6E2Mkre' \
    > test.out 2>&1
eval_tap $? 280 'AdminMakeFactorMyDefaultV4' test.out

#- 281 AdminInviteUserV4
samples/cli/sample-apps Iam adminInviteUserV4 \
    --body '{"assignedNamespaces": ["5q7FvaAC"], "emailAddresses": ["p6he0fzj"], "isAdmin": false, "roleId": "PNNS0Bfg"}' \
    > test.out 2>&1
eval_tap $? 281 'AdminInviteUserV4' test.out

#- 282 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "6inIRsZ5", "policyId": "hrqNzVsz", "policyVersionId": "GVP5P1iw"}], "authType": "hcf30C1K", "country": "HRZHMGy5", "dateOfBirth": "vbfZvYIF", "displayName": "FctEKOLx", "emailAddress": "SRxe0wmW", "password": "BMcNiWoo", "passwordMD5Sum": "bB6o6alT", "username": "QcP0EpE9", "verified": true}' \
    --namespace 'GNVwkgfJ' \
    > test.out 2>&1
eval_tap $? 282 'PublicCreateTestUserV4' test.out

#- 283 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "lfzgRpTf", "policyId": "9lxF1JPB", "policyVersionId": "izXZtrGe"}], "authType": "8LyOH24n", "code": "neZHFeRl", "country": "d0bGA7Jx", "dateOfBirth": "WYzaEaim", "displayName": "vokcWX59", "emailAddress": "kwiYHgHT", "password": "6Ivd0fGp", "passwordMD5Sum": "U209nVRc", "reachMinimumAge": false, "username": "umQTFvr5"}' \
    --namespace 'rRyYzaNm' \
    > test.out 2>&1
eval_tap $? 283 'PublicCreateUserV4' test.out

#- 284 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "3PjMx2T8", "policyId": "9NTrFRUC", "policyVersionId": "XFkruxeg"}], "authType": "pkcXCfzg", "country": "cvv0WE5E", "dateOfBirth": "QhcomPS1", "displayName": "E7cpsLgr", "password": "2zEnjyRN", "reachMinimumAge": false, "username": "EC3FMDcZ"}' \
    --invitationId 'vwwf8aU9' \
    --namespace '8In31mF4' \
    > test.out 2>&1
eval_tap $? 284 'CreateUserFromInvitationV4' test.out

#- 285 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --body '{"country": "jlwKyGxT", "dateOfBirth": "F1l5q1Np", "displayName": "0sT1X8J2", "languageTag": "eAWOzjmh", "userName": "9UzIfnho"}' \
    --namespace 'o6xUmTle' \
    > test.out 2>&1
eval_tap $? 285 'PublicUpdateUserV4' test.out

#- 286 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --body '{"code": "UnJFM7Xh", "emailAddress": "oDxGik2J"}' \
    --namespace 'SfZ64wWe' \
    > test.out 2>&1
eval_tap $? 286 'PublicUpdateUserEmailAddressV4' test.out

#- 287 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --body '{"code": "Pq6103PO", "country": "NKIS7F9e", "dateOfBirth": "mW4R15tA", "displayName": "siG31CEy", "emailAddress": "UOuOZhmn", "password": "Hkvek6Aa", "reachMinimumAge": false, "username": "Nnoclxs9", "validateOnly": false}' \
    --namespace 'xcvIpV7m' \
    > test.out 2>&1
eval_tap $? 287 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 288 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --body '{"emailAddress": "CYfWKjY9", "password": "CsQYsGyh", "username": "EOntEked"}' \
    --namespace 'M1A0bFqv' \
    > test.out 2>&1
eval_tap $? 288 'PublicUpgradeHeadlessAccountV4' test.out

#- 289 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace 'jxbT3YuV' \
    > test.out 2>&1
eval_tap $? 289 'PublicDisableMyAuthenticatorV4' test.out

#- 290 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --code 'daBN5RSj' \
    --namespace 'hcjuDvNr' \
    > test.out 2>&1
eval_tap $? 290 'PublicEnableMyAuthenticatorV4' test.out

#- 291 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace 'XL845jfh' \
    > test.out 2>&1
eval_tap $? 291 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 292 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace '5tZ0hqJL' \
    > test.out 2>&1
eval_tap $? 292 'PublicGetMyBackupCodesV4' test.out

#- 293 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace 'jQUmoYUn' \
    > test.out 2>&1
eval_tap $? 293 'PublicGenerateMyBackupCodesV4' test.out

#- 294 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace 'C849OBNu' \
    > test.out 2>&1
eval_tap $? 294 'PublicDisableMyBackupCodesV4' test.out

#- 295 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace 'LZtofGAA' \
    > test.out 2>&1
eval_tap $? 295 'PublicDownloadMyBackupCodesV4' test.out

#- 296 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace 'aMpBQArU' \
    > test.out 2>&1
eval_tap $? 296 'PublicEnableMyBackupCodesV4' test.out

#- 297 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace '4RS0FQRy' \
    > test.out 2>&1
eval_tap $? 297 'PublicRemoveTrustedDeviceV4' test.out

#- 298 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace '5Qz5Vcyf' \
    > test.out 2>&1
eval_tap $? 298 'PublicGetMyEnabledFactorsV4' test.out

#- 299 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --factor 'BpHjtvFw' \
    --namespace 'KSJyZeqv' \
    > test.out 2>&1
eval_tap $? 299 'PublicMakeFactorMyDefaultV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE