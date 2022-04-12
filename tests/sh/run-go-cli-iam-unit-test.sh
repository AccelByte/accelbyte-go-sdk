#!/bin/bash

#Meta:
#- random seed: 256
#- template file: go-cli-unit-test.j2

#Instructions:
#- Run the Justice SDK Mock Server first before running this script.

MODULE='cmd'
MODULE_PATH='../samples/cli'
TEMP_TOKEN="/tmp/justice-sample-apps/userData"
TEMP_FILE='file.tmp'

OPERATIONS_COUNT=298

FINISHED_COUNT=0
SUCCESS_COUNT=0
FAILED_COUNT=0

export JUSTICE_BASE_URL="http://0.0.0.0:8080"
export APP_CLIENT_ID="admin"
export APP_CLIENT_SECRET="admin"

create_file() {
    touch $1
}

delete_file() {
    [ ! -e $1 ] || rm $1
}

update_status() {
    return_code=$1
    operation_name=$2

    FINISHED_COUNT=$(( $FINISHED_COUNT + 1 ))

    if [ $return_code == 0 ]
    then
        SUCCESS_COUNT=$(( $SUCCESS_COUNT + 1 ))
        echo "ok $FINISHED_COUNT $operation_name"
    else
        FAILED_COUNT=$(( $FAILED_COUNT + 1 ))
        echo "not ok $FINISHED_COUNT - $operation_name"
        echo '  ---'
        echo '  error: |-'
        while read line; do
          echo "    $line" | tr '\n' ' '
        echo $line
        done < $TEMP_FILE
    fi
}

create_file 'tmp.dat'

rm -f $TEMP_TOKEN
mkdir -p $(dirname $TEMP_TOKEN)
echo {"\"access_token"\":"\"foo"\"} >> $TEMP_TOKEN
echo "1..$OPERATIONS_COUNT"

#- 1 getBansType
samples/cli/sample-apps Iam getBansType \
    >$TEMP_FILE 2>&1
update_status $? 'getBansType'
delete_file $TEMP_FILE

#- 2 getListBanReason
samples/cli/sample-apps Iam getListBanReason \
    >$TEMP_FILE 2>&1
update_status $? 'getListBanReason'
delete_file $TEMP_FILE

#- 3 getClients
update_status 0 'getClients (skipped deprecated)'

#- 4 createClient
update_status 0 'createClient (skipped deprecated)'

#- 5 getClient
samples/cli/sample-apps Iam getClient \
    --clientId 'FtBxyZcD' \
    >$TEMP_FILE 2>&1
update_status $? 'getClient'
delete_file $TEMP_FILE

#- 6 updateClient
samples/cli/sample-apps Iam updateClient \
    --body '{"ClientName": "XBpGlsQu", "RedirectUri": "Ju8vMf0I"}' \
    --clientId 'sJkTrd8I' \
    >$TEMP_FILE 2>&1
update_status $? 'updateClient'
delete_file $TEMP_FILE

#- 7 deleteClient
update_status 0 'deleteClient (skipped deprecated)'

#- 8 updateClientPermission
samples/cli/sample-apps Iam updateClientPermission \
    --body '{"Permissions": [{"Action": 59, "Resource": "cV2zXnTK"}]}' \
    --clientId 'jXY1bPqa' \
    >$TEMP_FILE 2>&1
update_status $? 'updateClientPermission'
delete_file $TEMP_FILE

#- 9 addClientPermission
samples/cli/sample-apps Iam addClientPermission \
    --action '24' \
    --clientId 'iBxx9Cs1' \
    --resource '8EY84ekI' \
    >$TEMP_FILE 2>&1
update_status $? 'addClientPermission'
delete_file $TEMP_FILE

#- 10 deleteClientPermission
samples/cli/sample-apps Iam deleteClientPermission \
    --action '39' \
    --clientId 'qRzHU1oh' \
    --resource '570KQBVa' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteClientPermission'
delete_file $TEMP_FILE

#- 11 updateClientSecret
samples/cli/sample-apps Iam updateClientSecret \
    --body '{"NewSecret": "ewc72krS"}' \
    --clientId 'ha68n3Yn' \
    >$TEMP_FILE 2>&1
update_status $? 'updateClientSecret'
delete_file $TEMP_FILE

#- 12 getClientsbyNamespace
samples/cli/sample-apps Iam getClientsbyNamespace \
    --namespace 'ozp1C2Km' \
    >$TEMP_FILE 2>&1
update_status $? 'getClientsbyNamespace'
delete_file $TEMP_FILE

#- 13 createClientByNamespace
samples/cli/sample-apps Iam createClientByNamespace \
    --body '{"ClientId": "IQTuBdNE", "ClientName": "UsxFb8CJ", "ClientPermissions": [{"Action": 76, "Resource": "7DJZaMSx", "SchedAction": 61, "SchedCron": "CbZbygyo", "SchedRange": ["arORoeNH"]}], "Namespace": "Sb8Rh3kg", "RedirectUri": "s9qqJbnQ", "Secret": "soBgiVpP"}' \
    --namespace '8Cm3yvAS' \
    >$TEMP_FILE 2>&1
update_status $? 'createClientByNamespace'
delete_file $TEMP_FILE

#- 14 deleteClientByNamespace
samples/cli/sample-apps Iam deleteClientByNamespace \
    --clientId 'UoxdxxFq' \
    --namespace 'mAGTJ8IE' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteClientByNamespace'
delete_file $TEMP_FILE

#- 15 createUser
samples/cli/sample-apps Iam createUser \
    --body '{"AuthType": "dagEtp4w", "Country": "29KOu9c1", "DisplayName": "9R6XDqWH", "LoginId": "kkP8npLE", "Password": "KMfjiX7j", "PasswordMD5Sum": "pkVZk3Ia"}' \
    --namespace 'QYEmqGod' \
    >$TEMP_FILE 2>&1
update_status $? 'createUser'
delete_file $TEMP_FILE

#- 16 getAdminUsersByRoleID
samples/cli/sample-apps Iam getAdminUsersByRoleID \
    --namespace 'OEGt9gPO' \
    --after '18' \
    --before '5' \
    --limit '16' \
    --roleId '0JkvIas7' \
    >$TEMP_FILE 2>&1
update_status $? 'getAdminUsersByRoleID'
delete_file $TEMP_FILE

#- 17 getUserByLoginID
samples/cli/sample-apps Iam getUserByLoginID \
    --namespace '3ucYnFAJ' \
    --loginId '3DK5T4Eo' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserByLoginID'
delete_file $TEMP_FILE

#- 18 getUserByPlatformUserID
samples/cli/sample-apps Iam getUserByPlatformUserID \
    --namespace 'gg0Y39Uo' \
    --platformID 'Ylpv5bVA' \
    --platformUserID 'gtsDhUTD' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserByPlatformUserID'
delete_file $TEMP_FILE

#- 19 forgotPassword
samples/cli/sample-apps Iam forgotPassword \
    --body '{"Context": "UscbQDjb", "LanguageTag": "TQuPMz2P", "LoginID": "TRlkyU89"}' \
    --namespace 'ZPOw6zPF' \
    >$TEMP_FILE 2>&1
update_status $? 'forgotPassword'
delete_file $TEMP_FILE

#- 20 getUsersByLoginIds
samples/cli/sample-apps Iam getUsersByLoginIds \
    --namespace 'J42cwmzB' \
    --loginIds 'BSMNcoAA' \
    >$TEMP_FILE 2>&1
update_status $? 'getUsersByLoginIds'
delete_file $TEMP_FILE

#- 21 resetPassword
samples/cli/sample-apps Iam resetPassword \
    --body '{"Code": "OjKNjfcY", "LoginID": "Hm093aYg", "NewPassword": "BU1sqjyK"}' \
    --namespace '0XH45PaR' \
    >$TEMP_FILE 2>&1
update_status $? 'resetPassword'
delete_file $TEMP_FILE

#- 22 searchUser
update_status 0 'searchUser (skipped deprecated)'

#- 23 getUserByUserID
samples/cli/sample-apps Iam getUserByUserID \
    --namespace 'SOFQBtu2' \
    --userId '3REZ8hRV' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserByUserID'
delete_file $TEMP_FILE

#- 24 updateUser
samples/cli/sample-apps Iam updateUser \
    --body '{"Country": "X7LGOvDd", "DateOfBirth": "YiQS9i7m", "DisplayName": "V1C91pjG", "LanguageTag": "9gpxL6yc"}' \
    --namespace 'TQdvln2L' \
    --userId 'AuSQWEXL' \
    >$TEMP_FILE 2>&1
update_status $? 'updateUser'
delete_file $TEMP_FILE

#- 25 deleteUser
samples/cli/sample-apps Iam deleteUser \
    --namespace '6LFE1YHo' \
    --userId '9m126ZWc' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteUser'
delete_file $TEMP_FILE

#- 26 banUser
samples/cli/sample-apps Iam banUser \
    --body '{"ban": "8hHtWvbN", "comment": "YqgUqslA", "endDate": "rFPiHUIv", "reason": "aCv8kU9d", "skipNotif": true}' \
    --namespace 'BpdsJLhs' \
    --userId 'VyExrkxo' \
    >$TEMP_FILE 2>&1
update_status $? 'banUser'
delete_file $TEMP_FILE

#- 27 getUserBanHistory
samples/cli/sample-apps Iam getUserBanHistory \
    --namespace 'ot0B7WOf' \
    --userId 'ercZdpMc' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserBanHistory'
delete_file $TEMP_FILE

#- 28 disableUserBan
samples/cli/sample-apps Iam disableUserBan \
    --banId 'i37Ds7YS' \
    --namespace 'fExaI3uz' \
    --userId 'LteMbFAl' \
    >$TEMP_FILE 2>&1
update_status $? 'disableUserBan'
delete_file $TEMP_FILE

#- 29 enableUserBan
samples/cli/sample-apps Iam enableUserBan \
    --banId 't4hr7HmO' \
    --namespace 'YiBA5ltA' \
    --userId 'OXmlG6eh' \
    >$TEMP_FILE 2>&1
update_status $? 'enableUserBan'
delete_file $TEMP_FILE

#- 30 listCrossNamespaceAccountLink
update_status 0 'listCrossNamespaceAccountLink (skipped deprecated)'

#- 31 disableUser
update_status 0 'disableUser (skipped deprecated)'

#- 32 enableUser
update_status 0 'enableUser (skipped deprecated)'

#- 33 getUserInformation
samples/cli/sample-apps Iam getUserInformation \
    --namespace '1dTdoTFp' \
    --userId 'BIcuC1dQ' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserInformation'
delete_file $TEMP_FILE

#- 34 deleteUserInformation
samples/cli/sample-apps Iam deleteUserInformation \
    --namespace 'Y93OJnJ6' \
    --userId 'Te9vD8ld' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteUserInformation'
delete_file $TEMP_FILE

#- 35 getUserLoginHistories
samples/cli/sample-apps Iam getUserLoginHistories \
    --namespace 'z7Hu8AD7' \
    --userId '9kdWunvi' \
    --after '0.39802825247019424' \
    --before '0.82465128795751' \
    --limit '31' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserLoginHistories'
delete_file $TEMP_FILE

#- 36 updatePassword
update_status 0 'updatePassword (skipped deprecated)'

#- 37 saveUserPermission
samples/cli/sample-apps Iam saveUserPermission \
    --body '{"Permissions": [{"Action": 66, "Resource": "yhhERoGg", "SchedAction": 7, "SchedCron": "rysMizBG", "SchedRange": ["SRdP2l7D"]}]}' \
    --namespace 'NSZ8Aq0X' \
    --userId 'iPLQXSe0' \
    >$TEMP_FILE 2>&1
update_status $? 'saveUserPermission'
delete_file $TEMP_FILE

#- 38 addUserPermission
samples/cli/sample-apps Iam addUserPermission \
    --body '{"SchedAction": 7, "SchedCron": "dOGTMlJj", "SchedRange": ["Bwj9HJHQ"]}' \
    --action '72' \
    --namespace 'seEdSXRD' \
    --resource 'Svguauw1' \
    --userId 'xT7eMwSl' \
    >$TEMP_FILE 2>&1
update_status $? 'addUserPermission'
delete_file $TEMP_FILE

#- 39 deleteUserPermission
samples/cli/sample-apps Iam deleteUserPermission \
    --action '76' \
    --namespace 'LH0NnTJ2' \
    --resource 'ulNzBvwJ' \
    --userId 'aQa547Jl' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteUserPermission'
delete_file $TEMP_FILE

#- 40 getUserPlatformAccounts
samples/cli/sample-apps Iam getUserPlatformAccounts \
    --namespace 'lvA8RWSp' \
    --userId 'abUt7xk6' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserPlatformAccounts'
delete_file $TEMP_FILE

#- 41 getUserMapping
samples/cli/sample-apps Iam getUserMapping \
    --namespace 'QxyWhfqo' \
    --targetNamespace 'WfJw2o8o' \
    --userId 'WUqvPCZ2' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserMapping'
delete_file $TEMP_FILE

#- 42 getUserJusticePlatformAccount
update_status 0 'getUserJusticePlatformAccount (skipped deprecated)'

#- 43 platformLink
samples/cli/sample-apps Iam platformLink \
    --ticket 'HzT7NXmW' \
    --namespace 'DlXsuNId' \
    --platformId 'QJR5lsNO' \
    --userId 'lvkfwaSb' \
    >$TEMP_FILE 2>&1
update_status $? 'platformLink'
delete_file $TEMP_FILE

#- 44 platformUnlink
samples/cli/sample-apps Iam platformUnlink \
    --platformNamespace 'nsuLCgTo' \
    --namespace 'xuVTekJg' \
    --platformId 'vg6h5HIp' \
    --userId 'H0DviplE' \
    >$TEMP_FILE 2>&1
update_status $? 'platformUnlink'
delete_file $TEMP_FILE

#- 45 getPublisherUser
samples/cli/sample-apps Iam getPublisherUser \
    --namespace 'k4vj3LDp' \
    --userId '4yqDt8QU' \
    >$TEMP_FILE 2>&1
update_status $? 'getPublisherUser'
delete_file $TEMP_FILE

#- 46 saveUserRoles
samples/cli/sample-apps Iam saveUserRoles \
    --body '["ZDpxlHas"]' \
    --namespace 'inGcjrkm' \
    --userId 'RMttgjDS' \
    >$TEMP_FILE 2>&1
update_status $? 'saveUserRoles'
delete_file $TEMP_FILE

#- 47 addUserRole
samples/cli/sample-apps Iam addUserRole \
    --namespace 'aIVBmft3' \
    --roleId 'Udg7p9PG' \
    --userId 'mY2H5kX4' \
    >$TEMP_FILE 2>&1
update_status $? 'addUserRole'
delete_file $TEMP_FILE

#- 48 deleteUserRole
samples/cli/sample-apps Iam deleteUserRole \
    --namespace 'MsisSX28' \
    --roleId 'nARxWRpv' \
    --userId '5ou5xtvd' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteUserRole'
delete_file $TEMP_FILE

#- 49 upgradeHeadlessAccount
samples/cli/sample-apps Iam upgradeHeadlessAccount \
    --body '{"LoginID": "28OUfCt8", "Password": "UJC5flNy"}' \
    --namespace 'j6HsTtX8' \
    --userId 'P3llnaaS' \
    >$TEMP_FILE 2>&1
update_status $? 'upgradeHeadlessAccount'
delete_file $TEMP_FILE

#- 50 upgradeHeadlessAccountWithVerificationCode
samples/cli/sample-apps Iam upgradeHeadlessAccountWithVerificationCode \
    --body '{"Code": "9lqyygPc", "Password": "fkJIxfQZ", "loginId": "za8kNVbD"}' \
    --namespace 'xVMq7HJk' \
    --userId '0F89xAc3' \
    >$TEMP_FILE 2>&1
update_status $? 'upgradeHeadlessAccountWithVerificationCode'
delete_file $TEMP_FILE

#- 51 userVerification
samples/cli/sample-apps Iam userVerification \
    --body '{"Code": "YVfaENtr", "ContactType": "l0pTKZTX", "LanguageTag": "qzHuBMYQ", "validateOnly": true}' \
    --namespace '2jz1ZOpd' \
    --userId 'OjSyMddB' \
    >$TEMP_FILE 2>&1
update_status $? 'userVerification'
delete_file $TEMP_FILE

#- 52 sendVerificationCode
samples/cli/sample-apps Iam sendVerificationCode \
    --body '{"Context": "41JuMf7R", "LanguageTag": "UyBHRj8I", "LoginID": "iRimRllH"}' \
    --namespace 'T6Dc40vF' \
    --userId 'FA6gpU7E' \
    >$TEMP_FILE 2>&1
update_status $? 'sendVerificationCode'
delete_file $TEMP_FILE

#- 53 authorization
samples/cli/sample-apps Iam authorization \
    --login 'W3x1dCpm' \
    --password '55gOeqQI' \
    --scope 'qcJVKmBM' \
    --state '1J1IbuTr' \
    --clientId 'rkbmuT1w' \
    --redirectUri 'hOqmEnDX' \
    --responseType 'token' \
    >$TEMP_FILE 2>&1
update_status $? 'authorization'
delete_file $TEMP_FILE

#- 54 getJWKS
samples/cli/sample-apps Iam getJWKS \
    >$TEMP_FILE 2>&1
update_status $? 'getJWKS'
delete_file $TEMP_FILE

#- 55 platformTokenRequestHandler
update_status 0 'platformTokenRequestHandler (skipped deprecated)'

#- 56 revokeUser
samples/cli/sample-apps Iam revokeUser \
    --namespace 'BPlSay46' \
    --userId 'mv71BAZA' \
    >$TEMP_FILE 2>&1
update_status $? 'revokeUser'
delete_file $TEMP_FILE

#- 57 getRevocationList
samples/cli/sample-apps Iam getRevocationList \
    >$TEMP_FILE 2>&1
update_status $? 'getRevocationList'
delete_file $TEMP_FILE

#- 58 revokeToken
update_status 0 'revokeToken (skipped deprecated)'

#- 59 revokeAUser
update_status 0 'revokeAUser (skipped deprecated)'

#- 60 tokenGrant
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
    >$TEMP_FILE 2>&1
update_status $? 'tokenGrant'
delete_file $TEMP_FILE

#- 61 verifyToken
samples/cli/sample-apps Iam verifyToken \
    --token '99XVlV8r' \
    >$TEMP_FILE 2>&1
update_status $? 'verifyToken'
delete_file $TEMP_FILE

#- 62 getRoles
samples/cli/sample-apps Iam getRoles \
    --isWildcard 'K3tE6n0s' \
    >$TEMP_FILE 2>&1
update_status $? 'getRoles'
delete_file $TEMP_FILE

#- 63 createRole
samples/cli/sample-apps Iam createRole \
    --body '{"AdminRole": false, "Managers": [{"DisplayName": "ip1tw3L7", "Namespace": "cUd9pqtv", "UserId": "6JfPZwcC"}], "Members": [{"DisplayName": "VOXcVa80", "Namespace": "TmCwtD2l", "UserId": "AH01o6Nd"}], "Permissions": [{"Action": 4, "Resource": "BIgzrDyW", "SchedAction": 31, "SchedCron": "FBYGmmBa", "SchedRange": ["wMyoKyNp"]}], "RoleName": "dAasm8xw"}' \
    >$TEMP_FILE 2>&1
update_status $? 'createRole'
delete_file $TEMP_FILE

#- 64 getRole
samples/cli/sample-apps Iam getRole \
    --roleId 'UfzOlQiZ' \
    >$TEMP_FILE 2>&1
update_status $? 'getRole'
delete_file $TEMP_FILE

#- 65 updateRole
samples/cli/sample-apps Iam updateRole \
    --body '{"RoleName": "Y4NbOQXJ"}' \
    --roleId '7uOTzNMv' \
    >$TEMP_FILE 2>&1
update_status $? 'updateRole'
delete_file $TEMP_FILE

#- 66 deleteRole
samples/cli/sample-apps Iam deleteRole \
    --roleId 'uq2tNl4C' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteRole'
delete_file $TEMP_FILE

#- 67 getRoleAdminStatus
samples/cli/sample-apps Iam getRoleAdminStatus \
    --roleId 'X4IjiK4D' \
    >$TEMP_FILE 2>&1
update_status $? 'getRoleAdminStatus'
delete_file $TEMP_FILE

#- 68 setRoleAsAdmin
samples/cli/sample-apps Iam setRoleAsAdmin \
    --roleId 'EUJRVK3l' \
    >$TEMP_FILE 2>&1
update_status $? 'setRoleAsAdmin'
delete_file $TEMP_FILE

#- 69 removeRoleAdmin
samples/cli/sample-apps Iam removeRoleAdmin \
    --roleId '9Eb0R1XR' \
    >$TEMP_FILE 2>&1
update_status $? 'removeRoleAdmin'
delete_file $TEMP_FILE

#- 70 getRoleManagers
samples/cli/sample-apps Iam getRoleManagers \
    --roleId 'b0RH8vS1' \
    >$TEMP_FILE 2>&1
update_status $? 'getRoleManagers'
delete_file $TEMP_FILE

#- 71 addRoleManagers
samples/cli/sample-apps Iam addRoleManagers \
    --body '{"Managers": [{"DisplayName": "smeOlngr", "Namespace": "dTXCzaPB", "UserId": "tkZMio4w"}]}' \
    --roleId 'cyhloVS3' \
    >$TEMP_FILE 2>&1
update_status $? 'addRoleManagers'
delete_file $TEMP_FILE

#- 72 removeRoleManagers
samples/cli/sample-apps Iam removeRoleManagers \
    --body '{"Managers": [{"DisplayName": "rYp8QtcE", "Namespace": "mCEVc75U", "UserId": "feypWjDN"}]}' \
    --roleId 'hzCL5sWS' \
    >$TEMP_FILE 2>&1
update_status $? 'removeRoleManagers'
delete_file $TEMP_FILE

#- 73 getRoleMembers
samples/cli/sample-apps Iam getRoleMembers \
    --roleId '2qwO763i' \
    >$TEMP_FILE 2>&1
update_status $? 'getRoleMembers'
delete_file $TEMP_FILE

#- 74 addRoleMembers
samples/cli/sample-apps Iam addRoleMembers \
    --body '{"Members": [{"DisplayName": "EklkzLm8", "Namespace": "8LpLuYRO", "UserId": "3C55yHpw"}]}' \
    --roleId 'K2JaqenD' \
    >$TEMP_FILE 2>&1
update_status $? 'addRoleMembers'
delete_file $TEMP_FILE

#- 75 removeRoleMembers
samples/cli/sample-apps Iam removeRoleMembers \
    --body '{"Members": [{"DisplayName": "Gn7a2NUp", "Namespace": "lWiLjq06", "UserId": "n6a0rW8E"}]}' \
    --roleId 'fkpaXtwY' \
    >$TEMP_FILE 2>&1
update_status $? 'removeRoleMembers'
delete_file $TEMP_FILE

#- 76 updateRolePermissions
samples/cli/sample-apps Iam updateRolePermissions \
    --body '{"Permissions": [{"Action": 70, "Resource": "aQ4WbwNm", "SchedAction": 37, "SchedCron": "FYetjEur", "SchedRange": ["H8eloJzN"]}]}' \
    --roleId 'KtRUaTz1' \
    >$TEMP_FILE 2>&1
update_status $? 'updateRolePermissions'
delete_file $TEMP_FILE

#- 77 addRolePermission
samples/cli/sample-apps Iam addRolePermission \
    --body '{"SchedAction": 61, "SchedCron": "Tdsmwzjk", "SchedRange": ["kn9oiQl0"]}' \
    --action '13' \
    --resource '7cO3ZMb6' \
    --roleId 'Ojlo6DMN' \
    >$TEMP_FILE 2>&1
update_status $? 'addRolePermission'
delete_file $TEMP_FILE

#- 78 deleteRolePermission
samples/cli/sample-apps Iam deleteRolePermission \
    --action '30' \
    --resource 'P2qMrTQ1' \
    --roleId 'UpjfU6wJ' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteRolePermission'
delete_file $TEMP_FILE

#- 79 adminGetAgeRestrictionStatusV2
samples/cli/sample-apps Iam adminGetAgeRestrictionStatusV2 \
    --namespace 'hy1jOVkk' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetAgeRestrictionStatusV2'
delete_file $TEMP_FILE

#- 80 adminUpdateAgeRestrictionConfigV2
samples/cli/sample-apps Iam adminUpdateAgeRestrictionConfigV2 \
    --body '{"AgeRestriction": 92, "Enable": false}' \
    --namespace 'S79527EZ' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateAgeRestrictionConfigV2'
delete_file $TEMP_FILE

#- 81 getListCountryAgeRestriction
samples/cli/sample-apps Iam getListCountryAgeRestriction \
    --namespace '25Ia8uCe' \
    >$TEMP_FILE 2>&1
update_status $? 'getListCountryAgeRestriction'
delete_file $TEMP_FILE

#- 82 updateCountryAgeRestriction
samples/cli/sample-apps Iam updateCountryAgeRestriction \
    --body '{"AgeRestriction": 62}' \
    --countryCode 'lLtEVpDA' \
    --namespace 'EbA82jy7' \
    >$TEMP_FILE 2>&1
update_status $? 'updateCountryAgeRestriction'
delete_file $TEMP_FILE

#- 83 adminSearchUsersV2
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
    >$TEMP_FILE 2>&1
update_status $? 'adminSearchUsersV2'
delete_file $TEMP_FILE

#- 84 adminGetUserByUserIdV2
samples/cli/sample-apps Iam adminGetUserByUserIdV2 \
    --namespace 'gRB1GyLf' \
    --userId 'Lg4RYuEb' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserByUserIdV2'
delete_file $TEMP_FILE

#- 85 adminUpdateUserV2
samples/cli/sample-apps Iam adminUpdateUserV2 \
    --body '{"Country": "gUDEcJyI", "DateOfBirth": "vsPwOr0B", "DisplayName": "mV5iFvfw", "LanguageTag": "FjTSmIEq"}' \
    --namespace 'oLyLeUGm' \
    --userId 'omGX9sXT' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateUserV2'
delete_file $TEMP_FILE

#- 86 adminBanUserV2
samples/cli/sample-apps Iam adminBanUserV2 \
    --body '{"ban": "Z0v8pqLf", "comment": "c5SwGnRe", "endDate": "UULDX4QU", "reason": "Ibb5nh68", "skipNotif": false}' \
    --namespace 'yUtRvW9h' \
    --userId 'NBSFTtFr' \
    >$TEMP_FILE 2>&1
update_status $? 'adminBanUserV2'
delete_file $TEMP_FILE

#- 87 adminGetUserBanV2
samples/cli/sample-apps Iam adminGetUserBanV2 \
    --namespace 'OmjkFrFV' \
    --userId 'A8t0xF34' \
    --activeOnly 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserBanV2'
delete_file $TEMP_FILE

#- 88 adminDisableUserV2
samples/cli/sample-apps Iam adminDisableUserV2 \
    --body '{"Reason": "t6ZlTTic"}' \
    --namespace '0kr2a0nI' \
    --userId '2oo7UHCJ' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDisableUserV2'
delete_file $TEMP_FILE

#- 89 adminEnableUserV2
samples/cli/sample-apps Iam adminEnableUserV2 \
    --namespace 'K5sp0aCv' \
    --userId 'Iq3aHVYI' \
    >$TEMP_FILE 2>&1
update_status $? 'adminEnableUserV2'
delete_file $TEMP_FILE

#- 90 adminResetPasswordV2
samples/cli/sample-apps Iam adminResetPasswordV2 \
    --body '{"LanguageTag": "lewLRuHY", "NewPassword": "83bGj0HT", "OldPassword": "eeWXlIcR"}' \
    --namespace 'idqctDpy' \
    --userId 'gY0ax476' \
    >$TEMP_FILE 2>&1
update_status $? 'adminResetPasswordV2'
delete_file $TEMP_FILE

#- 91 adminDeletePlatformLinkV2
samples/cli/sample-apps Iam adminDeletePlatformLinkV2 \
    --platformNamespace 'ED4MMO9T' \
    --namespace 'w2JH0qhW' \
    --platformId 'IwHWTgzJ' \
    --userId 'FRYw6t1I' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeletePlatformLinkV2'
delete_file $TEMP_FILE

#- 92 adminPutUserRolesV2
samples/cli/sample-apps Iam adminPutUserRolesV2 \
    --body '["KZLO6V4O"]' \
    --namespace 'de46QmCi' \
    --userId 'dgdpP7RT' \
    >$TEMP_FILE 2>&1
update_status $? 'adminPutUserRolesV2'
delete_file $TEMP_FILE

#- 93 adminCreateUserRolesV2
samples/cli/sample-apps Iam adminCreateUserRolesV2 \
    --body '["C587lmUm"]' \
    --namespace 'BziPZBnp' \
    --userId 'Ofkllxfq' \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateUserRolesV2'
delete_file $TEMP_FILE

#- 94 publicGetCountryAgeRestriction
samples/cli/sample-apps Iam publicGetCountryAgeRestriction \
    --countryCode '0NsrSjw5' \
    --namespace 'Hog0blM1' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetCountryAgeRestriction'
delete_file $TEMP_FILE

#- 95 publicCreateUserV2
samples/cli/sample-apps Iam publicCreateUserV2 \
    --body '{"AuthType": "d5MStYGc", "Country": "zLINlEC0", "DisplayName": "OEsE3yzI", "LoginId": "sUP0Njlu", "Password": "OrGZTzsL", "PasswordMD5Sum": "W7Fjfs9n"}' \
    --namespace 'IkcZ38fU' \
    >$TEMP_FILE 2>&1
update_status $? 'publicCreateUserV2'
delete_file $TEMP_FILE

#- 96 publicForgotPasswordV2
samples/cli/sample-apps Iam publicForgotPasswordV2 \
    --body '{"Context": "EanjKHbX", "LanguageTag": "fk1zxdzx", "LoginID": "g0UXcRyH"}' \
    --namespace 'i3u8BzVW' \
    >$TEMP_FILE 2>&1
update_status $? 'publicForgotPasswordV2'
delete_file $TEMP_FILE

#- 97 publicResetPasswordV2
samples/cli/sample-apps Iam publicResetPasswordV2 \
    --body '{"Code": "u1tOmhUt", "LoginID": "CgcpvGrE", "NewPassword": "bcZUDExH"}' \
    --namespace '1tayOGXI' \
    >$TEMP_FILE 2>&1
update_status $? 'publicResetPasswordV2'
delete_file $TEMP_FILE

#- 98 publicGetUserByUserIDV2
samples/cli/sample-apps Iam publicGetUserByUserIDV2 \
    --namespace 'HzMRjMCt' \
    --userId 'OJsEijlr' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserByUserIDV2'
delete_file $TEMP_FILE

#- 99 publicUpdateUserV2
samples/cli/sample-apps Iam publicUpdateUserV2 \
    --body '{"Country": "bpyyEcQx", "DateOfBirth": "VgJIjMZq", "DisplayName": "cWfMl6dq", "LanguageTag": "rpD4tnc3"}' \
    --namespace 'ZRB3Ikdt' \
    --userId 'PfAJEomw' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdateUserV2'
delete_file $TEMP_FILE

#- 100 publicGetUserBan
samples/cli/sample-apps Iam publicGetUserBan \
    --namespace 'enJvQ8gr' \
    --userId 'tQSv6EcA' \
    --activeOnly 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserBan'
delete_file $TEMP_FILE

#- 101 publicUpdatePasswordV2
samples/cli/sample-apps Iam publicUpdatePasswordV2 \
    --body '{"LanguageTag": "MIPms5bT", "NewPassword": "51M4yko8", "OldPassword": "S0EnGLvG"}' \
    --namespace 'vfuSyCTy' \
    --userId 'jj4mCaiu' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdatePasswordV2'
delete_file $TEMP_FILE

#- 102 getListJusticePlatformAccounts
samples/cli/sample-apps Iam getListJusticePlatformAccounts \
    --namespace 'MGKOF5GJ' \
    --userId 'JooSXUl3' \
    >$TEMP_FILE 2>&1
update_status $? 'getListJusticePlatformAccounts'
delete_file $TEMP_FILE

#- 103 publicPlatformLinkV2
samples/cli/sample-apps Iam publicPlatformLinkV2 \
    --ticket 'YU35QHGp' \
    --namespace 'BABnOlxD' \
    --platformId 'znICQVyq' \
    --userId 'Bg34WTtD' \
    >$TEMP_FILE 2>&1
update_status $? 'publicPlatformLinkV2'
delete_file $TEMP_FILE

#- 104 publicDeletePlatformLinkV2
samples/cli/sample-apps Iam publicDeletePlatformLinkV2 \
    --platformNamespace 'kn0rtn6t' \
    --namespace '0Yx4z12E' \
    --platformId 'aQ1rUQYC' \
    --userId 'NTiDX4jE' \
    >$TEMP_FILE 2>&1
update_status $? 'publicDeletePlatformLinkV2'
delete_file $TEMP_FILE

#- 105 adminGetBansTypeV3
samples/cli/sample-apps Iam adminGetBansTypeV3 \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetBansTypeV3'
delete_file $TEMP_FILE

#- 106 adminGetListBanReasonV3
samples/cli/sample-apps Iam adminGetListBanReasonV3 \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetListBanReasonV3'
delete_file $TEMP_FILE

#- 107 adminGetInputValidations
samples/cli/sample-apps Iam adminGetInputValidations \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetInputValidations'
delete_file $TEMP_FILE

#- 108 adminUpdateInputValidations
samples/cli/sample-apps Iam adminUpdateInputValidations \
    --body '[{"field": "3M2IsTHu", "validation": {"allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "description": [{"language": "IWd0mcq5", "message": ["T4SUc7cW"]}], "isCustomRegex": false, "letterCase": "CKK6Dij1", "maxLength": 12, "maxRepeatingAlphaNum": 63, "maxRepeatingSpecialCharacter": 5, "minCharType": 9, "minLength": 27, "regex": "EMySPfhx", "specialCharacterLocation": "BenDiTiA", "specialCharacters": ["qFYmFKja"]}}]' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateInputValidations'
delete_file $TEMP_FILE

#- 109 adminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'ELmmll6o' \
    >$TEMP_FILE 2>&1
update_status $? 'adminResetInputValidations'
delete_file $TEMP_FILE

#- 110 listAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace 'exId1OKG' \
    --after 'UN2Uznd7' \
    --before 'uVa7t14y' \
    --limit '43' \
    >$TEMP_FILE 2>&1
update_status $? 'listAdminsV3'
delete_file $TEMP_FILE

#- 111 adminGetAgeRestrictionStatusV3
samples/cli/sample-apps Iam adminGetAgeRestrictionStatusV3 \
    --namespace 'SYSV52bH' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetAgeRestrictionStatusV3'
delete_file $TEMP_FILE

#- 112 adminUpdateAgeRestrictionConfigV3
samples/cli/sample-apps Iam adminUpdateAgeRestrictionConfigV3 \
    --body '{"ageRestriction": 16, "enable": false}' \
    --namespace 'CIf4tsuu' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateAgeRestrictionConfigV3'
delete_file $TEMP_FILE

#- 113 adminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace '6Pkam6tF' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetListCountryAgeRestrictionV3'
delete_file $TEMP_FILE

#- 114 adminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --body '{"ageRestriction": 89}' \
    --countryCode 'YFt4ZxA2' \
    --namespace 'PzZFRkBN' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateCountryAgeRestrictionV3'
delete_file $TEMP_FILE

#- 115 adminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace 'lg6hn5qu' \
    --activeOnly 'True' \
    --banType 'KyZAuV6u' \
    --limit '92' \
    --offset '42' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetBannedUsersV3'
delete_file $TEMP_FILE

#- 116 adminGetBansTypeWithNamespaceV3
samples/cli/sample-apps Iam adminGetBansTypeWithNamespaceV3 \
    --namespace 'qM0lV6UZ' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetBansTypeWithNamespaceV3'
delete_file $TEMP_FILE

#- 117 adminGetClientsByNamespaceV3
samples/cli/sample-apps Iam adminGetClientsByNamespaceV3 \
    --namespace 'MlEbxHNg' \
    --limit '70' \
    --offset '87' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetClientsByNamespaceV3'
delete_file $TEMP_FILE

#- 118 adminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --body '{"audiences": ["iQExaunj"], "baseUri": "dAqnHUz4", "clientId": "4tx4O6ha", "clientName": "mPwNoi07", "clientPermissions": [{"action": 8, "resource": "zDK56JFI", "schedAction": 65, "schedCron": "e1IMUCLc", "schedRange": ["N0DsaD5F"]}], "deletable": true, "namespace": "BsFe9OYE", "oauthClientType": "JVsYffmh", "redirectUri": "yx6J25Pr", "secret": "M4S3cB8m"}' \
    --namespace '17hEeLLg' \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateClientV3'
delete_file $TEMP_FILE

#- 119 adminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'oaYth6zc' \
    --namespace 'f8eA45OM' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetClientsbyNamespacebyIDV3'
delete_file $TEMP_FILE

#- 120 adminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'vObWejo9' \
    --namespace 'LfGeegJM' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteClientV3'
delete_file $TEMP_FILE

#- 121 adminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --body '{"audiences": ["aBGR6D1Z"], "baseUri": "oZEZQkJ8", "clientName": "DSqFnhdK", "clientPermissions": [{"action": 43, "resource": "jFCFbSFl", "schedAction": 60, "schedCron": "WoMPdgK5", "schedRange": ["zn62mhnF"]}], "deletable": false, "namespace": "CTlDNBOc", "redirectUri": "ygvv2LAg"}' \
    --clientId 'fBGVzanb' \
    --namespace 'KYsB0gqJ' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateClientV3'
delete_file $TEMP_FILE

#- 122 adminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --body '{"permissions": [{"action": 95, "resource": "hYSikJl2"}]}' \
    --clientId 'p9rBx8N5' \
    --namespace 'egapqxDy' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateClientPermissionV3'
delete_file $TEMP_FILE

#- 123 adminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --body '{"permissions": [{"action": 4, "resource": "LfNjzzEZ"}]}' \
    --clientId 'YA8jIkMJ' \
    --namespace 'b7cZ2bPs' \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddClientPermissionsV3'
delete_file $TEMP_FILE

#- 124 adminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '1' \
    --clientId 'LLpEBVEM' \
    --namespace 'k5AsKaF2' \
    --resource 'P44lXkI3' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteClientPermissionV3'
delete_file $TEMP_FILE

#- 125 retrieveAllThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 \
    --namespace 'zdiRiC5I' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveAllThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 126 retrieveAllActiveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 \
    --namespace 'bPit71JW' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveAllActiveThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 127 retrieveAllSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 \
    --namespace 'lYCoi4nD' \
    --limit '10' \
    --offset '83' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveAllSSOLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 128 retrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace 'u5V6QSYx' \
    --platformId 'EVOryVuZ' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 129 addThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --body '{"ACSURL": "YmgUeEPB", "AWSCognitoRegion": "5AGPgvk0", "AWSCognitoUserPool": "Zthaj0EB", "AppId": "A4azRz0d", "ClientId": "56smobor", "Environment": "4p1PlgQB", "FederationMetadataURL": "9EcNGOeB", "GenericOauthFlow": false, "IsActive": false, "Issuer": "07deDLaZ", "JWKSEndpoint": "8JCvbeTf", "KeyID": "W0hgzrab", "OrganizationId": "LJxEwJrE", "PlatformName": "BmQ64haN", "RedirectUri": "OzlGu68U", "Secret": "YyupjdDe", "TeamID": "tnoT0rfW", "TokenAuthenticationType": "tVPwQfq6", "TokenClaimsMapping": {"V92gbfPo": "uNdmP7fc"}}' \
    --namespace 'kVnuDGvY' \
    --platformId 'Ib1p5tcR' \
    >$TEMP_FILE 2>&1
update_status $? 'addThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 130 deleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace '5z8ZJLjS' \
    --platformId 'HcaR3X4t' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 131 updateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --body '{"ACSURL": "Zmwr0QmO", "AWSCognitoRegion": "nsEg49eX", "AWSCognitoUserPool": "p0xQkZ2J", "AppId": "juwWWy0t", "ClientId": "U11PCeSr", "Environment": "vejUKwVf", "FederationMetadataURL": "F37Vr7mk", "GenericOauthFlow": true, "IsActive": true, "Issuer": "FBI1Vwhk", "JWKSEndpoint": "VSKDlNFO", "KeyID": "UHBJsvTs", "OrganizationId": "qk9hg4hj", "PlatformName": "6nUdebW6", "RedirectUri": "UskbPkkZ", "Secret": "Ak01f1Kx", "TeamID": "CtWADU2g", "TokenAuthenticationType": "uN6U9w13", "TokenClaimsMapping": {"W1K9TZQ4": "qRLEi5wo"}}' \
    --namespace 'wE36rfmM' \
    --platformId '0CCs35TP' \
    >$TEMP_FILE 2>&1
update_status $? 'updateThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 132 updateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --body '{"affectedClientIDs": ["UPLmsY8W"], "assignedNamespaces": ["gwSx1DI5"], "domain": "GH9bv9ZT", "roleId": "o2HpA6pz"}' \
    --namespace 'jHpZO0E9' \
    --platformId 'iLgRPJK3' \
    >$TEMP_FILE 2>&1
update_status $? 'updateThirdPartyLoginPlatformDomainV3'
delete_file $TEMP_FILE

#- 133 deleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --body '{"domain": "nBae3GOg"}' \
    --namespace 'bQrqra0P' \
    --platformId 'tkfvOpY2' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteThirdPartyLoginPlatformDomainV3'
delete_file $TEMP_FILE

#- 134 retrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace 'ramp5lnB' \
    --platformId 'n6xmBkfM' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveSSOLoginPlatformCredential'
delete_file $TEMP_FILE

#- 135 addSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --body '{"acsUrl": "tC66hFq0", "apiKey": "kPOkORm2", "appId": "XjlNEE5e", "federationMetadataUrl": "cPzAmi0y", "isActive": false, "redirectUri": "PloP1XkY", "secret": "K4MgIsDS", "ssoUrl": "FMPyMhyw"}' \
    --namespace '1OLZPVww' \
    --platformId 'xH4BIDJu' \
    >$TEMP_FILE 2>&1
update_status $? 'addSSOLoginPlatformCredential'
delete_file $TEMP_FILE

#- 136 deleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace 'DoShMMft' \
    --platformId 'll8N0VvC' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteSSOLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 137 updateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --body '{"acsUrl": "hHz9urmt", "apiKey": "7QWvE8s6", "appId": "Uz8BRuYW", "federationMetadataUrl": "DTtL6MTT", "isActive": false, "redirectUri": "Cbb9S5Q1", "secret": "IVHGT88p", "ssoUrl": "rREBgYOW"}' \
    --namespace 'dHJ9Jumo' \
    --platformId 'htU13gf7' \
    >$TEMP_FILE 2>&1
update_status $? 'updateSSOPlatformCredential'
delete_file $TEMP_FILE

#- 138 adminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace 'TRigNZj5' \
    --platformId 'w5y3HmK8' \
    --platformUserId 'QVOa62eQ' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserByPlatformUserIDV3'
delete_file $TEMP_FILE

#- 139 getAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace 'ZtbLLcF6' \
    --roleId '71WLtv38' \
    --after '67' \
    --before '8' \
    --limit '4' \
    >$TEMP_FILE 2>&1
update_status $? 'getAdminUsersByRoleIdV3'
delete_file $TEMP_FILE

#- 140 adminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace 'czopFmeR' \
    --emailAddress 'wpcJBZyi' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserByEmailAddressV3'
delete_file $TEMP_FILE

#- 141 adminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --body '{"userIds": ["3mLC4Kze"]}' \
    --namespace 'kiSzeyol' \
    >$TEMP_FILE 2>&1
update_status $? 'adminListUserIDByUserIDsV3'
delete_file $TEMP_FILE

#- 142 adminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --body '{"emailAddresses": ["nOQt0joV"], "isAdmin": false, "roles": ["CytC6lRG"]}' \
    --namespace '98YxnHbR' \
    >$TEMP_FILE 2>&1
update_status $? 'adminInviteUserV3'
delete_file $TEMP_FILE

#- 143 adminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace 'doTKKeuS' \
    --limit '19' \
    --offset '10' \
    >$TEMP_FILE 2>&1
update_status $? 'adminListUsersV3'
delete_file $TEMP_FILE

#- 144 adminSearchUserV3
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
    >$TEMP_FILE 2>&1
update_status $? 'adminSearchUserV3'
delete_file $TEMP_FILE

#- 145 adminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --body '{"listEmailAddressRequest": ["c20EuO5d"]}' \
    --namespace 'MqGDlSZP' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetBulkUserByEmailAddressV3'
delete_file $TEMP_FILE

#- 146 adminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace 'Y07rEVSj' \
    --userId 'zHjL6ZbX' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserByUserIdV3'
delete_file $TEMP_FILE

#- 147 adminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --body '{"country": "jG6DSmpp", "dateOfBirth": "3op8htaR", "displayName": "LxtW4PvF", "languageTag": "kESTULat", "userName": "5F1Le7cR"}' \
    --namespace '7q6PWhZm' \
    --userId 'mKz41i1T' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateUserV3'
delete_file $TEMP_FILE

#- 148 adminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace 'p78FipJH' \
    --userId 'ahViJvLY' \
    --activeOnly 'False' \
    --after 'dmlk2luq' \
    --before 'SOOA2VOZ' \
    --limit '55' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserBanV3'
delete_file $TEMP_FILE

#- 149 adminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --body '{"ban": "oNbB98Pu", "comment": "SGykqFzP", "endDate": "wSMXT53b", "reason": "BuL38beO", "skipNotif": true}' \
    --namespace 'VuHZQ9LY' \
    --userId 't6w23Wf8' \
    >$TEMP_FILE 2>&1
update_status $? 'adminBanUserV3'
delete_file $TEMP_FILE

#- 150 adminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --body '{"enabled": false, "skipNotif": true}' \
    --banId 'Qo72sH0a' \
    --namespace 'RdcDlDyG' \
    --userId 'csfIuI4D' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateUserBanV3'
delete_file $TEMP_FILE

#- 151 adminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --body '{"context": "v5lEJpK1", "emailAddress": "AyRlzsrR", "languageTag": "XEFZivQO"}' \
    --namespace 'HG6wVicN' \
    --userId 'ratsvvHL' \
    >$TEMP_FILE 2>&1
update_status $? 'adminSendVerificationCodeV3'
delete_file $TEMP_FILE

#- 152 adminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --body '{"Code": "mIohfNIS", "ContactType": "LXMDWDdm", "LanguageTag": "5FE4lliQ", "validateOnly": false}' \
    --namespace 'utJbpEo4' \
    --userId 'mUNHFtdm' \
    >$TEMP_FILE 2>&1
update_status $? 'adminVerifyAccountV3'
delete_file $TEMP_FILE

#- 153 getUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace 'l2xNviWa' \
    --userId 'cJc3Fm7Z' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserVerificationCode'
delete_file $TEMP_FILE

#- 154 adminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace '548uuKgo' \
    --userId 'CBqS5uId' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserDeletionStatusV3'
delete_file $TEMP_FILE

#- 155 adminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --body '{"enabled": true}' \
    --namespace 'bwCeeq9o' \
    --userId 'uEdDtjOg' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateUserDeletionStatusV3'
delete_file $TEMP_FILE

#- 156 adminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --body '{"code": "sypLkm2Z", "country": "Yew5H7Zm", "dateOfBirth": "0gnYyj6M", "displayName": "Xf9G1nty", "emailAddress": "ebvoeHen", "password": "AALKt7Ef", "validateOnly": true}' \
    --namespace 'IH446oUn' \
    --userId 'P2S74unX' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpgradeHeadlessAccountV3'
delete_file $TEMP_FILE

#- 157 adminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace 'wg0JKqVW' \
    --userId 'W1rjK1ep' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteUserInformationV3'
delete_file $TEMP_FILE

#- 158 adminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace 'wkAvcsYv' \
    --userId 'bgfBVPpT' \
    --after '0.009010791422114361' \
    --before '0.7923140177423913' \
    --limit '32' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserLoginHistoriesV3'
delete_file $TEMP_FILE

#- 159 adminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --body '{"Permissions": [{"Action": 90, "Resource": "KiNXmz7e", "SchedAction": 77, "SchedCron": "rMD5TbaU", "SchedRange": ["xTCTng0x"]}]}' \
    --namespace 'jtdBrjs3' \
    --userId 'Kiykt2Ck' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateUserPermissionV3'
delete_file $TEMP_FILE

#- 160 adminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --body '{"Permissions": [{"Action": 12, "Resource": "OlSatECZ", "SchedAction": 93, "SchedCron": "gwQLqDqY", "SchedRange": ["SxTPuVlB"]}]}' \
    --namespace 'qirdp3yx' \
    --userId 'nsETl1Sv' \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddUserPermissionsV3'
delete_file $TEMP_FILE

#- 161 adminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --body '[{"Action": 14, "Resource": "QudsjIhX"}]' \
    --namespace 'dxiSoWpn' \
    --userId 'nxgX7BCP' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteUserPermissionBulkV3'
delete_file $TEMP_FILE

#- 162 adminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '76' \
    --namespace 'qzQIxibh' \
    --resource 'pNYsHtdB' \
    --userId '3IkjuaZq' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteUserPermissionV3'
delete_file $TEMP_FILE

#- 163 adminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace 'hJilrZkS' \
    --userId 'SKgP5rxC' \
    --after 'R77G9d5C' \
    --before 'A1GORSbL' \
    --limit '27' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserPlatformAccountsV3'
delete_file $TEMP_FILE

#- 164 adminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace '0dbWDEup' \
    --userId 'mdLQzPnN' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetListJusticePlatformAccounts'
delete_file $TEMP_FILE

#- 165 adminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace 'fBAcWArb' \
    --targetNamespace 'kCfdHIZb' \
    --userId '03otqmBu' \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateJusticeUser'
delete_file $TEMP_FILE

#- 166 adminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --body '{"platformId": "S9V2pCZ2", "platformUserId": "3UHmk0lp"}' \
    --namespace 'J4JLl01q' \
    --userId 'i7L2oDUo' \
    >$TEMP_FILE 2>&1
update_status $? 'adminLinkPlatformAccount'
delete_file $TEMP_FILE

#- 167 adminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --body '{"platformNamespace": "VRUb39j2"}' \
    --namespace '2P4Sp09c' \
    --platformId 'KmjRUbZV' \
    --userId 'BVS7OK2Z' \
    >$TEMP_FILE 2>&1
update_status $? 'adminPlatformUnlinkV3'
delete_file $TEMP_FILE

#- 168 adminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --ticket 'rdcsckMe' \
    --namespace 'kROWZ2KU' \
    --platformId 'TqkK2eFa' \
    --userId 'GLoSmEEP' \
    >$TEMP_FILE 2>&1
update_status $? 'adminPlatformLinkV3'
delete_file $TEMP_FILE

#- 169 adminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --body '["bLywJsyU"]' \
    --namespace 'ie6fZgLl' \
    --userId 'lUPsO8lg' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteUserRolesV3'
delete_file $TEMP_FILE

#- 170 adminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --body '[{"namespace": "46Si7006", "roleId": "vL2w4aaj"}]' \
    --namespace 'DAOx0iJj' \
    --userId 'Yleaktqv' \
    >$TEMP_FILE 2>&1
update_status $? 'adminSaveUserRoleV3'
delete_file $TEMP_FILE

#- 171 adminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace '2WkljQuD' \
    --roleId '5mnJONqH' \
    --userId 'Gq8mB7mF' \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddUserRoleV3'
delete_file $TEMP_FILE

#- 172 adminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace '2lMFcagh' \
    --roleId 'FXJIJflR' \
    --userId 'HFcsIqCy' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteUserRoleV3'
delete_file $TEMP_FILE

#- 173 adminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --body '{"enabled": true, "reason": "DifSSQ5O"}' \
    --namespace 'n2ccEcl3' \
    --userId 'xeiO4bwF' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateUserStatusV3'
delete_file $TEMP_FILE

#- 174 adminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace '5JOjGoGx' \
    --userId 'KM3qMce5' \
    >$TEMP_FILE 2>&1
update_status $? 'adminVerifyUserWithoutVerificationCodeV3'
delete_file $TEMP_FILE

#- 175 adminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'tfLcpjFZ' \
    --before 'MKCbp0pE' \
    --isWildcard 'False' \
    --limit '74' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetRolesV3'
delete_file $TEMP_FILE

#- 176 adminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "managers": [{"displayName": "HxMYF836", "namespace": "075xEpzd", "userId": "nYtpja5i"}], "members": [{"displayName": "g2isQZga", "namespace": "6Vy76izP", "userId": "iQRjYa8f"}], "permissions": [{"action": 43, "resource": "5fIt22tI", "schedAction": 15, "schedCron": "jhgkigW2", "schedRange": ["2zXMWXfb"]}], "roleName": "cM0GIALI"}' \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateRoleV3'
delete_file $TEMP_FILE

#- 177 adminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'bFCQgBcL' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetRoleV3'
delete_file $TEMP_FILE

#- 178 adminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'NT6iOQVY' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteRoleV3'
delete_file $TEMP_FILE

#- 179 adminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --body '{"deletable": true, "isWildcard": true, "roleName": "W2gMsI1a"}' \
    --roleId 'YBitSn3U' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateRoleV3'
delete_file $TEMP_FILE

#- 180 adminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'DeKj97I4' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetRoleAdminStatusV3'
delete_file $TEMP_FILE

#- 181 adminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'WYXLqjN7' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateAdminRoleStatusV3'
delete_file $TEMP_FILE

#- 182 adminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'ktOBTraB' \
    >$TEMP_FILE 2>&1
update_status $? 'adminRemoveRoleAdminV3'
delete_file $TEMP_FILE

#- 183 adminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'xWRTVuYE' \
    --after 'qGlKDwTK' \
    --before 'XBrXiQcd' \
    --limit '69' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetRoleManagersV3'
delete_file $TEMP_FILE

#- 184 adminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --body '{"managers": [{"displayName": "W8kiCKeQ", "namespace": "JWZBvcq1", "userId": "ETvWBxYZ"}]}' \
    --roleId 'Jh7B8gbn' \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddRoleManagersV3'
delete_file $TEMP_FILE

#- 185 adminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --body '{"managers": [{"displayName": "Su9M2OxD", "namespace": "2udaeYpC", "userId": "XYSMiy87"}]}' \
    --roleId 'CTqEQBg3' \
    >$TEMP_FILE 2>&1
update_status $? 'adminRemoveRoleManagersV3'
delete_file $TEMP_FILE

#- 186 adminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId '6my3sY2c' \
    --after 'lrDcain0' \
    --before 'cOVF1zHw' \
    --limit '58' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetRoleMembersV3'
delete_file $TEMP_FILE

#- 187 adminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --body '{"members": [{"displayName": "TI0sJ1Q0", "namespace": "kphMTggS", "userId": "P2SLcuAP"}]}' \
    --roleId '7vU971Cz' \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddRoleMembersV3'
delete_file $TEMP_FILE

#- 188 adminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --body '{"members": [{"displayName": "w2nbg8C7", "namespace": "Mvywhu6M", "userId": "jOjuGzo1"}]}' \
    --roleId 'Fz4tU0aS' \
    >$TEMP_FILE 2>&1
update_status $? 'adminRemoveRoleMembersV3'
delete_file $TEMP_FILE

#- 189 adminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --body '{"permissions": [{"action": 26, "resource": "98N8qOUA", "schedAction": 50, "schedCron": "92RaDe8n", "schedRange": ["gT8LRQkM"]}]}' \
    --roleId 'nG1LZyF2' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateRolePermissionsV3'
delete_file $TEMP_FILE

#- 190 adminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --body '{"permissions": [{"action": 24, "resource": "dYY6ZMfu", "schedAction": 90, "schedCron": "YTKsue48", "schedRange": ["qBEBNAV5"]}]}' \
    --roleId 'BTe6ec1z' \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddRolePermissionsV3'
delete_file $TEMP_FILE

#- 191 adminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --body '["A92URCLS"]' \
    --roleId 'GPmRBZWu' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteRolePermissionsV3'
delete_file $TEMP_FILE

#- 192 adminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '26' \
    --resource 'HW7MYvr6' \
    --roleId 'QA7Ppepc' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteRolePermissionV3'
delete_file $TEMP_FILE

#- 193 adminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetMyUserV3'
delete_file $TEMP_FILE

#- 194 userAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId '92HA94eA' \
    --extendExp 'True' \
    --redirectUri 'deyfUpgi' \
    --password 'Ppf8nxKJ' \
    --requestId '3dnmtPwa' \
    --userName '64Y4gPEK' \
    >$TEMP_FILE 2>&1
update_status $? 'userAuthenticationV3'
delete_file $TEMP_FILE

#- 195 getCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    >$TEMP_FILE 2>&1
update_status $? 'getCountryLocationV3'
delete_file $TEMP_FILE

#- 196 logout
samples/cli/sample-apps Iam logout \
    >$TEMP_FILE 2>&1
update_status $? 'logout'
delete_file $TEMP_FILE

#- 197 adminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace 'Mhhu9a6f' \
    --platformId '3xJNtUlK' \
    --userId 'LlIIAeHb' \
    >$TEMP_FILE 2>&1
update_status $? 'adminRetrieveUserThirdPartyPlatformTokenV3'
delete_file $TEMP_FILE

#- 198 revokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace 'm5M6LsY1' \
    --userId 'VMuIEcRl' \
    >$TEMP_FILE 2>&1
update_status $? 'revokeUserV3'
delete_file $TEMP_FILE

#- 199 authorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 's68M3MPM' \
    --codeChallengeMethod 'plain' \
    --redirectUri 'epyyMz6z' \
    --scope 'fR1pvTYY' \
    --state 'tDOiEi4R' \
    --targetAuthPage 'uEcHCSGh' \
    --clientId 'pOZQFlwO' \
    --responseType 'code' \
    >$TEMP_FILE 2>&1
update_status $? 'authorizeV3'
delete_file $TEMP_FILE

#- 200 tokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'uKGDFgK4' \
    >$TEMP_FILE 2>&1
update_status $? 'tokenIntrospectionV3'
delete_file $TEMP_FILE

#- 201 getJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    >$TEMP_FILE 2>&1
update_status $? 'getJWKSV3'
delete_file $TEMP_FILE

#- 202 change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor '9YuKnXks' \
    --mfaToken '0m8ANrcR' \
    >$TEMP_FILE 2>&1
update_status $? 'change2faMethod'
delete_file $TEMP_FILE

#- 203 verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'al7ta3fo' \
    --factor 'jA3h4MMW' \
    --mfaToken '3AJ5zlsF' \
    --rememberDevice 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'verify2faCode'
delete_file $TEMP_FILE

#- 204 retrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace 'wjvLYvmg' \
    --platformId '6avudQFF' \
    --userId '1CPNY9u2' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveUserThirdPartyPlatformTokenV3'
delete_file $TEMP_FILE

#- 205 authCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'dVYdglOO' \
    --clientId 'oCeK0kPK' \
    --redirectUri 'mBqVux3l' \
    --requestId 'XcD8aert' \
    >$TEMP_FILE 2>&1
update_status $? 'authCodeRequestV3'
delete_file $TEMP_FILE

#- 206 platformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --clientId 'AVCqs8XT' \
    --deviceId '8xy3nJ06' \
    --platformToken 'KkseA0AR' \
    --platformId 'j9ricfay' \
    >$TEMP_FILE 2>&1
update_status $? 'platformTokenGrantV3'
delete_file $TEMP_FILE

#- 207 getRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    >$TEMP_FILE 2>&1
update_status $? 'getRevocationListV3'
delete_file $TEMP_FILE

#- 208 tokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'vnhi8MDd' \
    >$TEMP_FILE 2>&1
update_status $? 'tokenRevocationV3'
delete_file $TEMP_FILE

#- 209 tokenGrantV3
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
    >$TEMP_FILE 2>&1
update_status $? 'tokenGrantV3'
delete_file $TEMP_FILE

#- 210 platformAuthenticationV3
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
    >$TEMP_FILE 2>&1
update_status $? 'platformAuthenticationV3'
delete_file $TEMP_FILE

#- 211 publicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'False' \
    --languageCode 'KIOAw70D' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetInputValidations'
delete_file $TEMP_FILE

#- 212 retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace 'vAHhSGWU' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3'
delete_file $TEMP_FILE

#- 213 publicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --body '{"platformUserIds": ["vzq1Za3I"]}' \
    --namespace 'BC4vQFsU' \
    --platformId 'JPfiaJp1' \
    >$TEMP_FILE 2>&1
update_status $? 'publicListUserIDByPlatformUserIDsV3'
delete_file $TEMP_FILE

#- 214 publicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace 'rt7OBgBC' \
    --platformId 'e6N0eI65' \
    --platformUserId 'Mn5tngEY' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserByPlatformUserIDV3'
delete_file $TEMP_FILE

#- 215 publicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace 'XgPVT5Cq' \
    --requestId 'XDZBVMJy' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetAsyncStatus'
delete_file $TEMP_FILE

#- 216 publicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace 'JeKFO92Y' \
    --by 'DtaZvJoK' \
    --query 'S0OxyipZ' \
    >$TEMP_FILE 2>&1
update_status $? 'publicSearchUserV3'
delete_file $TEMP_FILE

#- 217 publicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --body '{"PasswordMD5Sum": "uO4N9S2Y", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "gHa6XBcv", "policyId": "GRYk5rUt", "policyVersionId": "WHCnhmzz"}], "authType": "ppV7tKNK", "code": "YUQVBXym", "country": "WcNlHaFx", "dateOfBirth": "YaGHUpmB", "displayName": "FyOrFKtx", "emailAddress": "GNAi0fq4", "password": "xChPLd2l", "reachMinimumAge": false}' \
    --namespace 'pc7XoVpd' \
    >$TEMP_FILE 2>&1
update_status $? 'publicCreateUserV3'
delete_file $TEMP_FILE

#- 218 checkUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace 'd6rCpyMr' \
    --field 'nH9YHXh7' \
    --query 'KnCVOKY2' \
    >$TEMP_FILE 2>&1
update_status $? 'checkUserAvailability'
delete_file $TEMP_FILE

#- 219 publicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --body '{"userIds": ["zsBRGtd8"]}' \
    --namespace 'QY2OLbij' \
    >$TEMP_FILE 2>&1
update_status $? 'publicBulkGetUsers'
delete_file $TEMP_FILE

#- 220 publicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --body '{"emailAddress": "rvfr8hkn", "languageTag": "jWUWdMUX"}' \
    --namespace 'Hvw4pNlG' \
    >$TEMP_FILE 2>&1
update_status $? 'publicSendRegistrationCode'
delete_file $TEMP_FILE

#- 221 publicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --body '{"code": "LjdBxLM0", "emailAddress": "79pDAbTg"}' \
    --namespace 'msEYEq2G' \
    >$TEMP_FILE 2>&1
update_status $? 'publicVerifyRegistrationCode'
delete_file $TEMP_FILE

#- 222 publicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --body '{"emailAddress": "kYK1vYm9", "languageTag": "flXQ7CQo"}' \
    --namespace 'emnQG0dH' \
    >$TEMP_FILE 2>&1
update_status $? 'publicForgotPasswordV3'
delete_file $TEMP_FILE

#- 223 getAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId '0NVM9VEH' \
    --namespace 'TPqDhkcu' \
    >$TEMP_FILE 2>&1
update_status $? 'getAdminInvitationV3'
delete_file $TEMP_FILE

#- 224 createUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "nz6GiNMb", "policyId": "oBJHml0L", "policyVersionId": "JmpPi4mq"}], "authType": "hruiCZLG", "country": "GP5UXkHN", "dateOfBirth": "TMapp5Sb", "displayName": "onsUJKAD", "password": "r60EkdFr", "reachMinimumAge": false}' \
    --invitationId 'LsGt9yTX' \
    --namespace 'WUSCQcMs' \
    >$TEMP_FILE 2>&1
update_status $? 'createUserFromInvitationV3'
delete_file $TEMP_FILE

#- 225 updateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --body '{"country": "HN7reI22", "dateOfBirth": "ks7I12tA", "displayName": "Zc8sxxLx", "languageTag": "9XQeqNWL", "userName": "m8cNJbYH"}' \
    --namespace '5J4WiJLv' \
    >$TEMP_FILE 2>&1
update_status $? 'updateUserV3'
delete_file $TEMP_FILE

#- 226 publicUpdateUserV3
samples/cli/sample-apps Iam publicUpdateUserV3 \
    --body '{"country": "9NvHwtw2", "dateOfBirth": "Mjcy9ZL6", "displayName": "Zs5Bu2XY", "languageTag": "opLWZeUK", "userName": "JJNftRpG"}' \
    --namespace 'gk1iseRE' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdateUserV3'
delete_file $TEMP_FILE

#- 227 publicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --body '{"context": "zzRG6z9w", "emailAddress": "muHddyOd", "languageTag": "ibI1LVyq"}' \
    --namespace 'bdY8DGZK' \
    >$TEMP_FILE 2>&1
update_status $? 'publicSendVerificationCodeV3'
delete_file $TEMP_FILE

#- 228 publicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --body '{"code": "AuoIKz3P", "contactType": "p3zLWUxM", "languageTag": "zMtSmMmZ", "validateOnly": false}' \
    --namespace 'G0FoQP8q' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUserVerificationV3'
delete_file $TEMP_FILE

#- 229 publicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --body '{"code": "7aSsb85g", "country": "Ah9RD3Zz", "dateOfBirth": "N6N1iJ8l", "displayName": "tt9IRqCf", "emailAddress": "lgln6r5f", "password": "0s5H6lCf", "validateOnly": false}' \
    --namespace '11hLLCgw' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpgradeHeadlessAccountV3'
delete_file $TEMP_FILE

#- 230 publicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --body '{"emailAddress": "5av4LExd", "password": "abD8g2cv"}' \
    --namespace 'HfMRupDA' \
    >$TEMP_FILE 2>&1
update_status $? 'publicVerifyHeadlessAccountV3'
delete_file $TEMP_FILE

#- 231 publicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --body '{"languageTag": "5xbjs3XR", "newPassword": "dHUJ0GCm", "oldPassword": "flIXkgJ6"}' \
    --namespace 'zkTwoakq' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdatePasswordV3'
delete_file $TEMP_FILE

#- 232 publicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace '7sEejFZ1' \
    --targetNamespace 'NtONXb9w' \
    >$TEMP_FILE 2>&1
update_status $? 'publicCreateJusticeUser'
delete_file $TEMP_FILE

#- 233 publicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --redirectUri '9hsQHszI' \
    --ticket 'sfrlzKpQ' \
    --namespace 'dd58dZP5' \
    --platformId 'RvrinNtv' \
    >$TEMP_FILE 2>&1
update_status $? 'publicPlatformLinkV3'
delete_file $TEMP_FILE

#- 234 publicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --body '{"platformNamespace": "BtqFSkA6"}' \
    --namespace '8mIVYJ5p' \
    --platformId 'SVxBsLht' \
    >$TEMP_FILE 2>&1
update_status $? 'publicPlatformUnlinkV3'
delete_file $TEMP_FILE

#- 235 publicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace 'y3pecToX' \
    --platformId 'A4M1oUFP' \
    --clientId 'hgo7Z6mw' \
    --redirectUri 'NC4FY69m' \
    >$TEMP_FILE 2>&1
update_status $? 'publicWebLinkPlatform'
delete_file $TEMP_FILE

#- 236 publicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace 'M87joJNO' \
    --platformId 'GB83Ns6H' \
    --state 'l5Poab6l' \
    >$TEMP_FILE 2>&1
update_status $? 'publicWebLinkPlatformEstablish'
delete_file $TEMP_FILE

#- 237 resetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --body '{"code": "KoVqNBUz", "emailAddress": "IxOfglqu", "newPassword": "S2q2DoWr"}' \
    --namespace '9zvFtKa2' \
    >$TEMP_FILE 2>&1
update_status $? 'resetPasswordV3'
delete_file $TEMP_FILE

#- 238 publicGetUserByUserIdV3
samples/cli/sample-apps Iam publicGetUserByUserIdV3 \
    --namespace 'mOAqOokV' \
    --userId '1plxQ2Yr' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserByUserIdV3'
delete_file $TEMP_FILE

#- 239 publicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace 'iTPfipD6' \
    --userId '7jI2hiZk' \
    --activeOnly 'True' \
    --after 'tLnh2U1R' \
    --before 'QlMxkfNM' \
    --limit '82' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserBanHistoryV3'
delete_file $TEMP_FILE

#- 240 publicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace 'Ntqv2TMz' \
    --userId '1b7SnzkX' \
    --after '0.633865774178752' \
    --before '0.9701707300846726' \
    --limit '68' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserLoginHistoriesV3'
delete_file $TEMP_FILE

#- 241 publicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace 'gm1wkSWs' \
    --userId 'YvAsu18o' \
    --after 'bUdc8mbv' \
    --before 'XcwcgMqO' \
    --limit '98' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserPlatformAccountsV3'
delete_file $TEMP_FILE

#- 242 publicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --body '{"platformId": "MziXrVds", "platformUserId": "Ec3ClFP3"}' \
    --namespace 'mJwusCBT' \
    --userId 'e4kLcuqL' \
    >$TEMP_FILE 2>&1
update_status $? 'publicLinkPlatformAccount'
delete_file $TEMP_FILE

#- 243 publicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --password '40NYgekR' \
    --namespace 'avpaGTA9' \
    --userId 'BTyCCyN4' \
    >$TEMP_FILE 2>&1
update_status $? 'publicValidateUserByUserIDAndPasswordV3'
delete_file $TEMP_FILE

#- 244 publicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'Fw9i6mI2' \
    --before 'W3tjjCqP' \
    --isWildcard 'True' \
    --limit '100' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetRolesV3'
delete_file $TEMP_FILE

#- 245 publicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 's01hEYzW' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetRoleV3'
delete_file $TEMP_FILE

#- 246 publicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetMyUserV3'
delete_file $TEMP_FILE

#- 247 platformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'w3qrcxM0' \
    --code 'DPAXQBNM' \
    --error 'P7j3xfPa' \
    --state 'oZaWFspk' \
    >$TEMP_FILE 2>&1
update_status $? 'platformAuthenticateSAMLV3Handler'
delete_file $TEMP_FILE

#- 248 loginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'U5kn6PlP' \
    --payload 'qD4Agfas' \
    >$TEMP_FILE 2>&1
update_status $? 'loginSSOClient'
delete_file $TEMP_FILE

#- 249 logoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'BfclBhZj' \
    >$TEMP_FILE 2>&1
update_status $? 'logoutSSOClient'
delete_file $TEMP_FILE

#- 250 adminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --body '{"userIds": ["ZbLnmghK"]}' \
    --namespace 'wPyVIn3q' \
    >$TEMP_FILE 2>&1
update_status $? 'adminBulkCheckValidUserIDV4'
delete_file $TEMP_FILE

#- 251 adminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --body '{"country": "aHP7KNul", "dateOfBirth": "yfrENVQk", "displayName": "pcaWHf6T", "languageTag": "2xOOljn7", "userName": "c6c9efJI"}' \
    --namespace '02TZxrgL' \
    --userId 'BFJEkphF' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateUserV4'
delete_file $TEMP_FILE

#- 252 adminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --body '{"code": "z0h6WpoV", "emailAddress": "pVc2HBBm"}' \
    --namespace 'j6cEi02h' \
    --userId 'Xl42ubCR' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateUserEmailAddressV4'
delete_file $TEMP_FILE

#- 253 adminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace 'fy4GjKn5' \
    --userId 'ItHXLDZq' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDisableUserMFAV4'
delete_file $TEMP_FILE

#- 254 adminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace 'pRhqnR74' \
    --userId '2GcbLuQO' \
    >$TEMP_FILE 2>&1
update_status $? 'adminListUserRolesV4'
delete_file $TEMP_FILE

#- 255 adminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --body '{"assignedNamespaces": ["GMOEzmdj"], "roleId": "NhT0S46k"}' \
    --namespace 'qyfMBSaZ' \
    --userId 'c4SA16M8' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateUserRoleV4'
delete_file $TEMP_FILE

#- 256 adminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --body '{"assignedNamespaces": ["gQCD7aBH"], "roleId": "WCYevNkf"}' \
    --namespace 'cQvl4Oso' \
    --userId '7tx65zXC' \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddUserRoleV4'
delete_file $TEMP_FILE

#- 257 adminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --body '{"assignedNamespaces": ["iTfjorLF"], "roleId": "qTmIUFUo"}' \
    --namespace 'onHBI13S' \
    --userId 'ZFHfm0F8' \
    >$TEMP_FILE 2>&1
update_status $? 'adminRemoveUserRoleV4'
delete_file $TEMP_FILE

#- 258 adminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'True' \
    --isWildcard 'True' \
    --limit '35' \
    --offset '27' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetRolesV4'
delete_file $TEMP_FILE

#- 259 adminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "V0C8FvVU"}' \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateRoleV4'
delete_file $TEMP_FILE

#- 260 adminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId '3kRXBGPX' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetRoleV4'
delete_file $TEMP_FILE

#- 261 adminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'Idft1biZ' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteRoleV4'
delete_file $TEMP_FILE

#- 262 adminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "FPHdXcyv"}' \
    --roleId 'ZEhYeUSy' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateRoleV4'
delete_file $TEMP_FILE

#- 263 adminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --body '{"permissions": [{"action": 92, "resource": "kc65naP1", "schedAction": 86, "schedCron": "8Xww9vq9", "schedRange": ["nMa2Btgw"]}]}' \
    --roleId 'yuf2fjV3' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateRolePermissionsV4'
delete_file $TEMP_FILE

#- 264 adminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --body '{"permissions": [{"action": 89, "resource": "Lxi7uyha", "schedAction": 9, "schedCron": "FtcO9XNy", "schedRange": ["63QO9vW0"]}]}' \
    --roleId 'ck7TEDE8' \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddRolePermissionsV4'
delete_file $TEMP_FILE

#- 265 adminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --body '["LeEQBeGP"]' \
    --roleId 'LiE6tHCr' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteRolePermissionsV4'
delete_file $TEMP_FILE

#- 266 adminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId '0GPFvT0S' \
    --after 'AK91y5vC' \
    --before 'eBIJq0B9' \
    --limit '93' \
    >$TEMP_FILE 2>&1
update_status $? 'adminListAssignedUsersV4'
delete_file $TEMP_FILE

#- 267 adminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --body '{"assignedNamespaces": ["cI6c5cre"], "namespace": "9ealHOZp", "userId": "hcLncnjn"}' \
    --roleId 'myU8FSxX' \
    >$TEMP_FILE 2>&1
update_status $? 'adminAssignUserToRoleV4'
delete_file $TEMP_FILE

#- 268 adminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --body '{"namespace": "dCrskoFq", "userId": "nowq9Laz"}' \
    --roleId '1GLt5Mhf' \
    >$TEMP_FILE 2>&1
update_status $? 'adminRevokeUserFromRoleV4'
delete_file $TEMP_FILE

#- 269 adminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"country": "8Z7ahmbV", "dateOfBirth": "Pm2g7xAF", "displayName": "fRRLUjfW", "languageTag": "S9sftIfH", "userName": "Ge5bUTSX"}' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateMyUserV4'
delete_file $TEMP_FILE

#- 270 adminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    >$TEMP_FILE 2>&1
update_status $? 'adminDisableMyAuthenticatorV4'
delete_file $TEMP_FILE

#- 271 adminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'Ov12PMcR' \
    >$TEMP_FILE 2>&1
update_status $? 'adminEnableMyAuthenticatorV4'
delete_file $TEMP_FILE

#- 272 adminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    >$TEMP_FILE 2>&1
update_status $? 'adminGenerateMyAuthenticatorKeyV4'
delete_file $TEMP_FILE

#- 273 adminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetMyBackupCodesV4'
delete_file $TEMP_FILE

#- 274 adminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    >$TEMP_FILE 2>&1
update_status $? 'adminGenerateMyBackupCodesV4'
delete_file $TEMP_FILE

#- 275 adminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    >$TEMP_FILE 2>&1
update_status $? 'adminDisableMyBackupCodesV4'
delete_file $TEMP_FILE

#- 276 adminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    >$TEMP_FILE 2>&1
update_status $? 'adminDownloadMyBackupCodesV4'
delete_file $TEMP_FILE

#- 277 adminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    >$TEMP_FILE 2>&1
update_status $? 'adminEnableMyBackupCodesV4'
delete_file $TEMP_FILE

#- 278 adminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetMyEnabledFactorsV4'
delete_file $TEMP_FILE

#- 279 adminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'O6E2Mkre' \
    >$TEMP_FILE 2>&1
update_status $? 'adminMakeFactorMyDefaultV4'
delete_file $TEMP_FILE

#- 280 adminInviteUserV4
samples/cli/sample-apps Iam adminInviteUserV4 \
    --body '{"assignedNamespaces": ["5q7FvaAC"], "emailAddresses": ["p6he0fzj"], "isAdmin": false, "roleId": "PNNS0Bfg"}' \
    >$TEMP_FILE 2>&1
update_status $? 'adminInviteUserV4'
delete_file $TEMP_FILE

#- 281 publicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "6inIRsZ5", "policyId": "hrqNzVsz", "policyVersionId": "GVP5P1iw"}], "authType": "hcf30C1K", "country": "HRZHMGy5", "dateOfBirth": "vbfZvYIF", "displayName": "FctEKOLx", "emailAddress": "SRxe0wmW", "password": "BMcNiWoo", "passwordMD5Sum": "bB6o6alT", "username": "QcP0EpE9", "verified": true}' \
    --namespace 'GNVwkgfJ' \
    >$TEMP_FILE 2>&1
update_status $? 'publicCreateTestUserV4'
delete_file $TEMP_FILE

#- 282 publicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "lfzgRpTf", "policyId": "9lxF1JPB", "policyVersionId": "izXZtrGe"}], "authType": "8LyOH24n", "code": "neZHFeRl", "country": "d0bGA7Jx", "dateOfBirth": "WYzaEaim", "displayName": "vokcWX59", "emailAddress": "kwiYHgHT", "password": "6Ivd0fGp", "passwordMD5Sum": "U209nVRc", "reachMinimumAge": false, "username": "umQTFvr5"}' \
    --namespace 'rRyYzaNm' \
    >$TEMP_FILE 2>&1
update_status $? 'publicCreateUserV4'
delete_file $TEMP_FILE

#- 283 createUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "3PjMx2T8", "policyId": "9NTrFRUC", "policyVersionId": "XFkruxeg"}], "authType": "pkcXCfzg", "country": "cvv0WE5E", "dateOfBirth": "QhcomPS1", "displayName": "E7cpsLgr", "password": "2zEnjyRN", "reachMinimumAge": false, "username": "EC3FMDcZ"}' \
    --invitationId 'vwwf8aU9' \
    --namespace '8In31mF4' \
    >$TEMP_FILE 2>&1
update_status $? 'createUserFromInvitationV4'
delete_file $TEMP_FILE

#- 284 publicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --body '{"country": "jlwKyGxT", "dateOfBirth": "F1l5q1Np", "displayName": "0sT1X8J2", "languageTag": "eAWOzjmh", "userName": "9UzIfnho"}' \
    --namespace 'o6xUmTle' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdateUserV4'
delete_file $TEMP_FILE

#- 285 publicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --body '{"code": "UnJFM7Xh", "emailAddress": "oDxGik2J"}' \
    --namespace 'SfZ64wWe' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdateUserEmailAddressV4'
delete_file $TEMP_FILE

#- 286 publicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --body '{"code": "Pq6103PO", "country": "NKIS7F9e", "dateOfBirth": "mW4R15tA", "displayName": "siG31CEy", "emailAddress": "UOuOZhmn", "password": "Hkvek6Aa", "reachMinimumAge": false, "username": "Nnoclxs9", "validateOnly": false}' \
    --namespace 'xcvIpV7m' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpgradeHeadlessAccountWithVerificationCodeV4'
delete_file $TEMP_FILE

#- 287 publicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --body '{"emailAddress": "CYfWKjY9", "password": "CsQYsGyh", "username": "EOntEked"}' \
    --namespace 'M1A0bFqv' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpgradeHeadlessAccountV4'
delete_file $TEMP_FILE

#- 288 publicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace 'jxbT3YuV' \
    >$TEMP_FILE 2>&1
update_status $? 'publicDisableMyAuthenticatorV4'
delete_file $TEMP_FILE

#- 289 publicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --code 'daBN5RSj' \
    --namespace 'hcjuDvNr' \
    >$TEMP_FILE 2>&1
update_status $? 'publicEnableMyAuthenticatorV4'
delete_file $TEMP_FILE

#- 290 publicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace 'XL845jfh' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGenerateMyAuthenticatorKeyV4'
delete_file $TEMP_FILE

#- 291 publicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace '5tZ0hqJL' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetMyBackupCodesV4'
delete_file $TEMP_FILE

#- 292 publicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace 'jQUmoYUn' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGenerateMyBackupCodesV4'
delete_file $TEMP_FILE

#- 293 publicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace 'C849OBNu' \
    >$TEMP_FILE 2>&1
update_status $? 'publicDisableMyBackupCodesV4'
delete_file $TEMP_FILE

#- 294 publicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace 'LZtofGAA' \
    >$TEMP_FILE 2>&1
update_status $? 'publicDownloadMyBackupCodesV4'
delete_file $TEMP_FILE

#- 295 publicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace 'aMpBQArU' \
    >$TEMP_FILE 2>&1
update_status $? 'publicEnableMyBackupCodesV4'
delete_file $TEMP_FILE

#- 296 publicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace '4RS0FQRy' \
    >$TEMP_FILE 2>&1
update_status $? 'publicRemoveTrustedDeviceV4'
delete_file $TEMP_FILE

#- 297 publicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace '5Qz5Vcyf' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetMyEnabledFactorsV4'
delete_file $TEMP_FILE

#- 298 publicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --factor 'BpHjtvFw' \
    --namespace 'KSJyZeqv' \
    >$TEMP_FILE 2>&1
update_status $? 'publicMakeFactorMyDefaultV4'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT