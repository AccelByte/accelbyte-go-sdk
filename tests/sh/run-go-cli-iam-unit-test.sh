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

OPERATIONS_COUNT=273

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
    --limit 'Ip9rRtn1' \
    --loginId 'PcCxdbum' \
    --platformUserId 'eYgOdEBW' \
    --roleId 'RQiW3KFf' \
    --userId 'U8icH408' \
    --platformId '1gRB1GyL' \
    >$TEMP_FILE 2>&1
update_status $? 'adminSearchUsersV2'
delete_file $TEMP_FILE

#- 84 adminGetUserByUserIdV2
samples/cli/sample-apps Iam adminGetUserByUserIdV2 \
    --namespace 'fLg4RYuE' \
    --userId 'bgUDEcJy' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserByUserIdV2'
delete_file $TEMP_FILE

#- 85 adminUpdateUserV2
samples/cli/sample-apps Iam adminUpdateUserV2 \
    --body '{"Country": "IvsPwOr0", "DateOfBirth": "BmV5iFvf", "DisplayName": "wFjTSmIE", "LanguageTag": "qoLyLeUG"}' \
    --namespace 'momGX9sX' \
    --userId 'TZ0v8pqL' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateUserV2'
delete_file $TEMP_FILE

#- 86 adminBanUserV2
samples/cli/sample-apps Iam adminBanUserV2 \
    --body '{"ban": "fc5SwGnR", "comment": "eUULDX4Q", "endDate": "UIbb5nh6", "reason": "8ZnyUtRv", "skipNotif": false}' \
    --namespace 'NBSFTtFr' \
    --userId 'OmjkFrFV' \
    >$TEMP_FILE 2>&1
update_status $? 'adminBanUserV2'
delete_file $TEMP_FILE

#- 87 adminGetUserBanV2
samples/cli/sample-apps Iam adminGetUserBanV2 \
    --namespace 'A8t0xF34' \
    --userId 'Xpt6ZlTT' \
    --activeOnly 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserBanV2'
delete_file $TEMP_FILE

#- 88 adminDisableUserV2
samples/cli/sample-apps Iam adminDisableUserV2 \
    --body '{"Reason": "c0kr2a0n"}' \
    --namespace 'I2oo7UHC' \
    --userId 'JK5sp0aC' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDisableUserV2'
delete_file $TEMP_FILE

#- 89 adminEnableUserV2
samples/cli/sample-apps Iam adminEnableUserV2 \
    --namespace 'vIq3aHVY' \
    --userId 'IlewLRuH' \
    >$TEMP_FILE 2>&1
update_status $? 'adminEnableUserV2'
delete_file $TEMP_FILE

#- 90 adminResetPasswordV2
samples/cli/sample-apps Iam adminResetPasswordV2 \
    --body '{"LanguageTag": "Y83bGj0H", "NewPassword": "TeeWXlIc", "OldPassword": "RidqctDp"}' \
    --namespace 'ygY0ax47' \
    --userId '6ED4MMO9' \
    >$TEMP_FILE 2>&1
update_status $? 'adminResetPasswordV2'
delete_file $TEMP_FILE

#- 91 adminDeletePlatformLinkV2
samples/cli/sample-apps Iam adminDeletePlatformLinkV2 \
    --platformNamespace 'Tw2JH0qh' \
    --namespace 'WIwHWTgz' \
    --platformId 'JFRYw6t1' \
    --userId 'IKZLO6V4' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeletePlatformLinkV2'
delete_file $TEMP_FILE

#- 92 adminPutUserRolesV2
samples/cli/sample-apps Iam adminPutUserRolesV2 \
    --body '["Ode46QmC"]' \
    --namespace 'idgdpP7R' \
    --userId 'TC587lmU' \
    >$TEMP_FILE 2>&1
update_status $? 'adminPutUserRolesV2'
delete_file $TEMP_FILE

#- 93 adminCreateUserRolesV2
samples/cli/sample-apps Iam adminCreateUserRolesV2 \
    --body '["mBziPZBn"]' \
    --namespace 'pOfkllxf' \
    --userId 'q0NsrSjw' \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateUserRolesV2'
delete_file $TEMP_FILE

#- 94 publicGetCountryAgeRestriction
samples/cli/sample-apps Iam publicGetCountryAgeRestriction \
    --countryCode '5Hog0blM' \
    --namespace '1d5MStYG' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetCountryAgeRestriction'
delete_file $TEMP_FILE

#- 95 publicCreateUserV2
samples/cli/sample-apps Iam publicCreateUserV2 \
    --body '{"AuthType": "czLINlEC", "Country": "0OEsE3yz", "DisplayName": "IsUP0Njl", "LoginId": "uOrGZTzs", "Password": "LW7Fjfs9", "PasswordMD5Sum": "nIkcZ38f"}' \
    --namespace 'UEanjKHb' \
    >$TEMP_FILE 2>&1
update_status $? 'publicCreateUserV2'
delete_file $TEMP_FILE

#- 96 publicForgotPasswordV2
samples/cli/sample-apps Iam publicForgotPasswordV2 \
    --body '{"Context": "Xfk1zxdz", "LanguageTag": "xg0UXcRy", "LoginID": "Hi3u8BzV"}' \
    --namespace 'Wu1tOmhU' \
    >$TEMP_FILE 2>&1
update_status $? 'publicForgotPasswordV2'
delete_file $TEMP_FILE

#- 97 publicResetPasswordV2
samples/cli/sample-apps Iam publicResetPasswordV2 \
    --body '{"Code": "tCgcpvGr", "LoginID": "EbcZUDEx", "NewPassword": "H1tayOGX"}' \
    --namespace 'IHzMRjMC' \
    >$TEMP_FILE 2>&1
update_status $? 'publicResetPasswordV2'
delete_file $TEMP_FILE

#- 98 publicGetUserByUserIDV2
samples/cli/sample-apps Iam publicGetUserByUserIDV2 \
    --namespace 'tOJsEijl' \
    --userId 'rbpyyEcQ' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserByUserIDV2'
delete_file $TEMP_FILE

#- 99 publicUpdateUserV2
samples/cli/sample-apps Iam publicUpdateUserV2 \
    --body '{"Country": "xVgJIjMZ", "DateOfBirth": "qcWfMl6d", "DisplayName": "qrpD4tnc", "LanguageTag": "3ZRB3Ikd"}' \
    --namespace 'tPfAJEom' \
    --userId 'wenJvQ8g' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdateUserV2'
delete_file $TEMP_FILE

#- 100 publicGetUserBan
samples/cli/sample-apps Iam publicGetUserBan \
    --namespace 'rtQSv6Ec' \
    --userId 'ALcMIPms' \
    --activeOnly 'False' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserBan'
delete_file $TEMP_FILE

#- 101 publicUpdatePasswordV2
samples/cli/sample-apps Iam publicUpdatePasswordV2 \
    --body '{"LanguageTag": "T51M4yko", "NewPassword": "8S0EnGLv", "OldPassword": "GvfuSyCT"}' \
    --namespace 'yjj4mCai' \
    --userId 'uMGKOF5G' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdatePasswordV2'
delete_file $TEMP_FILE

#- 102 getListJusticePlatformAccounts
samples/cli/sample-apps Iam getListJusticePlatformAccounts \
    --namespace 'JJooSXUl' \
    --userId '3YU35QHG' \
    >$TEMP_FILE 2>&1
update_status $? 'getListJusticePlatformAccounts'
delete_file $TEMP_FILE

#- 103 publicPlatformLinkV2
samples/cli/sample-apps Iam publicPlatformLinkV2 \
    --ticket 'pBABnOlx' \
    --namespace 'DznICQVy' \
    --platformId 'qBg34WTt' \
    --userId 'Dkn0rtn6' \
    >$TEMP_FILE 2>&1
update_status $? 'publicPlatformLinkV2'
delete_file $TEMP_FILE

#- 104 publicDeletePlatformLinkV2
samples/cli/sample-apps Iam publicDeletePlatformLinkV2 \
    --platformNamespace 't0Yx4z12' \
    --namespace 'EaQ1rUQY' \
    --platformId 'CNTiDX4j' \
    --userId 'E3M2IsTH' \
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
    --body '[{"field": "u8QwNyOl", "validation": {"allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "description": [{"language": "q5T4SUc7", "message": ["cWfCKK6D"]}], "isCustomRegex": false, "letterCase": "j1gFcenE", "maxLength": 77, "maxRepeatingAlphaNum": 48, "maxRepeatingSpecialCharacter": 89, "minCharType": 83, "minLength": 11, "regex": "hxBenDiT", "specialCharacterLocation": "iAqFYmFK", "specialCharacters": ["jaELmmll"]}}]' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateInputValidations'
delete_file $TEMP_FILE

#- 109 adminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field '6oexId1O' \
    >$TEMP_FILE 2>&1
update_status $? 'adminResetInputValidations'
delete_file $TEMP_FILE

#- 110 listAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace 'KGUN2Uzn' \
    --after 'd7uVa7t1' \
    --before '4yvSYSV5' \
    --limit '3' \
    >$TEMP_FILE 2>&1
update_status $? 'listAdminsV3'
delete_file $TEMP_FILE

#- 111 adminGetAgeRestrictionStatusV3
samples/cli/sample-apps Iam adminGetAgeRestrictionStatusV3 \
    --namespace 'HifCIf4t' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetAgeRestrictionStatusV3'
delete_file $TEMP_FILE

#- 112 adminUpdateAgeRestrictionConfigV3
samples/cli/sample-apps Iam adminUpdateAgeRestrictionConfigV3 \
    --body '{"ageRestriction": 36, "enable": true}' \
    --namespace 'u6Pkam6t' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateAgeRestrictionConfigV3'
delete_file $TEMP_FILE

#- 113 adminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace 'FSYFt4Zx' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetListCountryAgeRestrictionV3'
delete_file $TEMP_FILE

#- 114 adminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --body '{"ageRestriction": 53}' \
    --countryCode '2PzZFRkB' \
    --namespace 'Nlg6hn5q' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateCountryAgeRestrictionV3'
delete_file $TEMP_FILE

#- 115 adminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace 'usKyZAuV' \
    --activeOnly 'True' \
    --banType 'UvqM0lV6' \
    --limit '93' \
    --offset '77' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetBannedUsersV3'
delete_file $TEMP_FILE

#- 116 adminGetBansTypeWithNamespaceV3
samples/cli/sample-apps Iam adminGetBansTypeWithNamespaceV3 \
    --namespace 'lEbxHNgJ' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetBansTypeWithNamespaceV3'
delete_file $TEMP_FILE

#- 117 adminGetClientsByNamespaceV3
samples/cli/sample-apps Iam adminGetClientsByNamespaceV3 \
    --namespace 'RiQExaun' \
    --limit '19' \
    --offset 'dAqnHUz4' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetClientsByNamespaceV3'
delete_file $TEMP_FILE

#- 118 adminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --body '{"audiences": ["4tx4O6ha"], "baseUri": "mPwNoi07", "clientId": "1ezDK56J", "clientName": "FIGe1IMU", "clientPermissions": [{"action": 56, "resource": "LcN0DsaD", "schedAction": 62, "schedCron": "yBsFe9OY", "schedRange": ["EJVsYffm"]}], "deletable": false, "namespace": "yx6J25Pr", "oauthClientType": "M4S3cB8m", "redirectUri": "17hEeLLg", "secret": "oaYth6zc"}' \
    --namespace 'f8eA45OM' \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateClientV3'
delete_file $TEMP_FILE

#- 119 adminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'vObWejo9' \
    --namespace 'LfGeegJM' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetClientsbyNamespacebyIDV3'
delete_file $TEMP_FILE

#- 120 adminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'aBGR6D1Z' \
    --namespace 'oZEZQkJ8' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteClientV3'
delete_file $TEMP_FILE

#- 121 adminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --body '{"audiences": ["DSqFnhdK"], "baseUri": "vjFCFbSF", "clientName": "lEWoMPdg", "clientPermissions": [{"action": 73, "resource": "5zn62mhn", "schedAction": 62, "schedCron": "SpCTlDNB", "schedRange": ["Ocygvv2L"]}], "deletable": true, "namespace": "gfBGVzan", "redirectUri": "bKYsB0gq"}' \
    --clientId 'J8VhYSik' \
    --namespace 'Jl2p9rBx' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateClientV3'
delete_file $TEMP_FILE

#- 122 adminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --body '{"permissions": [{"action": 79, "resource": "5egapqxD"}]}' \
    --clientId 'y4cLfNjz' \
    --namespace 'zEZYA8jI' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateClientPermissionV3'
delete_file $TEMP_FILE

#- 123 adminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --body '{"permissions": [{"action": 20, "resource": "MJb7cZ2b"}]}' \
    --clientId 'PsaLLpEB' \
    --namespace 'VEMk5AsK' \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddClientPermissionsV3'
delete_file $TEMP_FILE

#- 124 adminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '0' \
    --clientId 'F2P44lXk' \
    --namespace 'I3zdiRiC' \
    --resource '5IbPit71' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteClientPermissionV3'
delete_file $TEMP_FILE

#- 125 retrieveAllThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 \
    --namespace 'JWlYCoi4' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveAllThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 126 retrieveAllActiveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 \
    --namespace 'nDfPu5V6' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveAllActiveThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 127 retrieveAllSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 \
    --namespace 'QSYxEVOr' \
    --limit '48' \
    --offset 'VuZYmgUe' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveAllSSOLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 128 retrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace 'EPB5AGPg' \
    --platformId 'vk0Zthaj' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 129 addThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --body '{"ACSURL": "0EBA4azR", "AWSCognitoRegion": "z0d56smo", "AWSCognitoUserPool": "bor4p1Pl", "AppId": "gQB9EcNG", "ClientId": "OeBRY6G5", "Environment": "ae07deDL", "FederationMetadataURL": "aZ8JCvbe", "IsActive": false, "KeyID": "W0hgzrab", "OrganizationId": "LJxEwJrE", "RedirectUri": "BmQ64haN", "Secret": "OzlGu68U", "TeamID": "YyupjdDe"}' \
    --namespace 'tnoT0rfW' \
    --platformId 'tVPwQfq6' \
    >$TEMP_FILE 2>&1
update_status $? 'addThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 130 deleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace 'V92gbfPo' \
    --platformId 'uNdmP7fc' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 131 updateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --body '{"ACSURL": "kVnuDGvY", "AWSCognitoRegion": "Ib1p5tcR", "AWSCognitoUserPool": "5z8ZJLjS", "AppId": "HcaR3X4t", "ClientId": "Zmwr0QmO", "Environment": "nsEg49eX", "FederationMetadataURL": "p0xQkZ2J", "IsActive": false, "KeyID": "uwWWy0tU", "OrganizationId": "11PCeSrv", "RedirectUri": "ejUKwVfF", "Secret": "37Vr7mkD", "TeamID": "zFBI1Vwh"}' \
    --namespace 'kVSKDlNF' \
    --platformId 'OUHBJsvT' \
    >$TEMP_FILE 2>&1
update_status $? 'updateThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 132 updateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --body '{"affectedClientIDs": ["sqk9hg4h"], "assignedNamespaces": ["j6nUdebW"], "domain": "6UskbPkk", "roleId": "ZAk01f1K"}' \
    --namespace 'xCtWADU2' \
    --platformId 'guN6U9w1' \
    >$TEMP_FILE 2>&1
update_status $? 'updateThirdPartyLoginPlatformDomainV3'
delete_file $TEMP_FILE

#- 133 deleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --body '{"domain": "3W1K9TZQ"}' \
    --namespace '4qRLEi5w' \
    --platformId 'owE36rfm' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteThirdPartyLoginPlatformDomainV3'
delete_file $TEMP_FILE

#- 134 retrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace 'M0CCs35T' \
    --platformId 'PUPLmsY8' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveSSOLoginPlatformCredential'
delete_file $TEMP_FILE

#- 135 addSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --body '{"acsUrl": "WgwSx1DI", "apiKey": "5GH9bv9Z", "appId": "To2HpA6p", "federationMetadataUrl": "zjHpZO0E", "isActive": false, "redirectUri": "LgRPJK3n", "secret": "Bae3GOgb", "ssoUrl": "Qrqra0Pt"}' \
    --namespace 'kfvOpY2r' \
    --platformId 'amp5lnBn' \
    >$TEMP_FILE 2>&1
update_status $? 'addSSOLoginPlatformCredential'
delete_file $TEMP_FILE

#- 136 deleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace '6xmBkfMt' \
    --platformId 'C66hFq0k' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteSSOLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 137 updateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --body '{"acsUrl": "POkORm2X", "apiKey": "jlNEE5ec", "appId": "PzAmi0yS", "federationMetadataUrl": "JHfPloP1", "isActive": false, "redirectUri": "YK4MgIsD", "secret": "SFMPyMhy", "ssoUrl": "w1OLZPVw"}' \
    --namespace 'wxH4BIDJ' \
    --platformId 'uDoShMMf' \
    >$TEMP_FILE 2>&1
update_status $? 'updateSSOPlatformCredential'
delete_file $TEMP_FILE

#- 138 adminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace 'tll8N0Vv' \
    --platformId 'ChHz9urm' \
    --platformUserId 't7QWvE8s' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserByPlatformUserIDV3'
delete_file $TEMP_FILE

#- 139 getAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace '6Uz8BRuY' \
    --roleId 'WDTtL6MT' \
    --after '90' \
    --before '86' \
    --limit '21' \
    >$TEMP_FILE 2>&1
update_status $? 'getAdminUsersByRoleIdV3'
delete_file $TEMP_FILE

#- 140 adminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace 'Cbb9S5Q1' \
    --emailAddress 'IVHGT88p' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserByEmailAddressV3'
delete_file $TEMP_FILE

#- 141 adminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --body '{"userIds": ["rREBgYOW"]}' \
    --namespace 'dHJ9Jumo' \
    >$TEMP_FILE 2>&1
update_status $? 'adminListUserIDByUserIDsV3'
delete_file $TEMP_FILE

#- 142 adminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --body '{"emailAddresses": ["htU13gf7"], "isAdmin": false, "roles": ["gNZj5w5y"]}' \
    --namespace '3HmK8QVO' \
    >$TEMP_FILE 2>&1
update_status $? 'adminInviteUserV3'
delete_file $TEMP_FILE

#- 143 adminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace 'a62eQZtb' \
    --limit '74' \
    --offset '74' \
    >$TEMP_FILE 2>&1
update_status $? 'adminListUsersV3'
delete_file $TEMP_FILE

#- 144 adminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace 'cF671WLt' \
    --by 'v38Heccz' \
    --endDate 'opFmeRwp' \
    --limit '5' \
    --offset 'JBZyi3mL' \
    --platformBy 'C4KzekiS' \
    --platformId 'zeyolnOQ' \
    --query 't0joVHgC' \
    --startDate 'ytC6lRG9' \
    >$TEMP_FILE 2>&1
update_status $? 'adminSearchUserV3'
delete_file $TEMP_FILE

#- 145 adminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --body '{"listEmailAddressRequest": ["8YxnHbRd"]}' \
    --namespace 'oTKKeuSj' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetBulkUserByEmailAddressV3'
delete_file $TEMP_FILE

#- 146 adminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace 'fZe9i1os' \
    --userId 'ghF1hzi1' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserByUserIdV3'
delete_file $TEMP_FILE

#- 147 adminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --body '{"country": "Nl47syJ5", "dateOfBirth": "ibzSHZeC", "displayName": "LIvWPVRs", "languageTag": "dEqA61yT", "userName": "rMgsycTg"}' \
    --namespace 'mPzc20Eu' \
    --userId 'O5dMqGDl' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateUserV3'
delete_file $TEMP_FILE

#- 148 adminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace 'SZPY07rE' \
    --userId 'VSjzHjL6' \
    --activeOnly 'False' \
    --after 'XjG6DSmp' \
    --before 'p3op8hta' \
    --limit '86' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserBanV3'
delete_file $TEMP_FILE

#- 149 adminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --body '{"ban": "LxtW4PvF", "comment": "kESTULat", "endDate": "5F1Le7cR", "reason": "7q6PWhZm", "skipNotif": false}' \
    --namespace 'Kz41i1Tp' \
    --userId '78FipJHa' \
    >$TEMP_FILE 2>&1
update_status $? 'adminBanUserV3'
delete_file $TEMP_FILE

#- 150 adminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --body '{"enabled": false, "skipNotif": false}' \
    --banId 'JvLYW0kd' \
    --namespace 'mlk2luqS' \
    --userId 'OOA2VOZB' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateUserBanV3'
delete_file $TEMP_FILE

#- 151 adminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --body '{"context": "oNbB98Pu", "emailAddress": "SGykqFzP", "languageTag": "wSMXT53b"}' \
    --namespace 'BuL38beO' \
    --userId 'YDVuHZQ9' \
    >$TEMP_FILE 2>&1
update_status $? 'adminSendVerificationCodeV3'
delete_file $TEMP_FILE

#- 152 adminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --body '{"Code": "LYt6w23W", "ContactType": "f8iEQo72", "LanguageTag": "sH0aRdcD", "validateOnly": false}' \
    --namespace 'DyGcsfIu' \
    --userId 'I4Dv5lEJ' \
    >$TEMP_FILE 2>&1
update_status $? 'adminVerifyAccountV3'
delete_file $TEMP_FILE

#- 153 getUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace 'pK1AyRlz' \
    --userId 'srRXEFZi' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserVerificationCode'
delete_file $TEMP_FILE

#- 154 adminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace 'vQOHG6wV' \
    --userId 'icNratsv' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserDeletionStatusV3'
delete_file $TEMP_FILE

#- 155 adminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --body '{"enabled": true}' \
    --namespace 'HLmIohfN' \
    --userId 'ISLXMDWD' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateUserDeletionStatusV3'
delete_file $TEMP_FILE

#- 156 adminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --body '{"code": "dm5FE4ll", "country": "iQMnutJb", "dateOfBirth": "pEo4mUNH", "displayName": "Ftdml2xN", "emailAddress": "viWacJc3", "password": "Fm7Z548u", "validateOnly": true}' \
    --namespace 'KgoCBqS5' \
    --userId 'uIdCbwCe' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpgradeHeadlessAccountV3'
delete_file $TEMP_FILE

#- 157 adminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace 'eq9ouEdD' \
    --userId 'tjOgsypL' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteUserInformationV3'
delete_file $TEMP_FILE

#- 158 adminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace 'km2ZYew5' \
    --userId 'H7Zm0gnY' \
    --after '0.3817896258195451' \
    --before '0.9154243811841436' \
    --limit '99' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserLoginHistoriesV3'
delete_file $TEMP_FILE

#- 159 adminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --body '{"Permissions": [{"Action": 11, "Resource": "9G1ntyeb", "SchedAction": 42, "SchedCron": "oeHenAAL", "SchedRange": ["Kt7EfxIH"]}]}' \
    --namespace '446oUnP2' \
    --userId 'S74unXwg' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateUserPermissionV3'
delete_file $TEMP_FILE

#- 160 adminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --body '{"Permissions": [{"Action": 70, "Resource": "KqVWW1rj", "SchedAction": 72, "SchedCron": "1epwkAvc", "SchedRange": ["sYvbgfBV"]}]}' \
    --namespace 'PpTa8Yuq' \
    --userId '7TKiNXmz' \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddUserPermissionsV3'
delete_file $TEMP_FILE

#- 161 adminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --body '[{"Action": 8, "Resource": "MrMD5Tba"}]' \
    --namespace 'UxTCTng0' \
    --userId 'xjtdBrjs' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteUserPermissionBulkV3'
delete_file $TEMP_FILE

#- 162 adminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '72' \
    --namespace 'iykt2Ck2' \
    --resource 'gOlSatEC' \
    --userId 'Z2UgwQLq' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteUserPermissionV3'
delete_file $TEMP_FILE

#- 163 adminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace 'DqYSxTPu' \
    --userId 'VlBqirdp' \
    --after '3yxnsETl' \
    --before '1SvhQuds' \
    --limit '19' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserPlatformAccountsV3'
delete_file $TEMP_FILE

#- 164 adminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace 'IhXdxiSo' \
    --userId 'WpnnxgX7' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetListJusticePlatformAccounts'
delete_file $TEMP_FILE

#- 165 adminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace 'BCPMqzQI' \
    --targetNamespace 'xibhpNYs' \
    --userId 'HtdB3Ikj' \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateJusticeUser'
delete_file $TEMP_FILE

#- 166 adminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --body '{"platformId": "uaZqhJil", "platformUserId": "rZkSSKgP"}' \
    --namespace '5rxCR77G' \
    --userId '9d5CA1GO' \
    >$TEMP_FILE 2>&1
update_status $? 'adminLinkPlatformAccount'
delete_file $TEMP_FILE

#- 167 adminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --body '{"platformNamespace": "RSbL9n0d"}' \
    --namespace 'bWDEupmd' \
    --platformId 'LQzPnNfB' \
    --userId 'AcWArbkC' \
    >$TEMP_FILE 2>&1
update_status $? 'adminPlatformUnlinkV3'
delete_file $TEMP_FILE

#- 168 adminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --ticket 'fdHIZb03' \
    --namespace 'otqmBuS9' \
    --platformId 'V2pCZ23U' \
    --userId 'Hmk0lpJ4' \
    >$TEMP_FILE 2>&1
update_status $? 'adminPlatformLinkV3'
delete_file $TEMP_FILE

#- 169 adminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --body '["JLl01qi7"]' \
    --namespace 'L2oDUoVR' \
    --userId 'Ub39j22P' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteUserRolesV3'
delete_file $TEMP_FILE

#- 170 adminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --body '[{"namespace": "4Sp09cKm", "roleId": "jRUbZVBV"}]' \
    --namespace 'S7OK2Zrd' \
    --userId 'csckMekR' \
    >$TEMP_FILE 2>&1
update_status $? 'adminSaveUserRoleV3'
delete_file $TEMP_FILE

#- 171 adminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace 'OWZ2KUTq' \
    --roleId 'kK2eFaGL' \
    --userId 'oSmEEPbL' \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddUserRoleV3'
delete_file $TEMP_FILE

#- 172 adminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace 'ywJsyUie' \
    --roleId '6fZgLllU' \
    --userId 'PsO8lg46' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteUserRoleV3'
delete_file $TEMP_FILE

#- 173 adminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --body '{"enabled": false, "reason": "7006vL2w"}' \
    --namespace '4aajDAOx' \
    --userId '0iJjYlea' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateUserStatusV3'
delete_file $TEMP_FILE

#- 174 adminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace 'ktqv2Wkl' \
    --userId 'jQuD5mnJ' \
    >$TEMP_FILE 2>&1
update_status $? 'adminVerifyUserWithoutVerificationCodeV3'
delete_file $TEMP_FILE

#- 175 adminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'ONqHGq8m' \
    --before 'B7mF2lMF' \
    --isWildcard 'False' \
    --limit '1' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetRolesV3'
delete_file $TEMP_FILE

#- 176 adminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "managers": [{"displayName": "XJIJflRH", "namespace": "FcsIqCy4", "userId": "xDifSSQ5"}], "members": [{"displayName": "On2ccEcl", "namespace": "3xeiO4bw", "userId": "F5JOjGoG"}], "permissions": [{"action": 47, "resource": "KM3qMce5", "schedAction": 38, "schedCron": "fLcpjFZM", "schedRange": ["KCbp0pEb"]}], "roleName": "LCLFpHxM"}' \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateRoleV3'
delete_file $TEMP_FILE

#- 177 adminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'YF836075' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetRoleV3'
delete_file $TEMP_FILE

#- 178 adminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'xEpzdnYt' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteRoleV3'
delete_file $TEMP_FILE

#- 179 adminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --body '{"deletable": false, "isWildcard": false, "roleName": "a5ig2isQ"}' \
    --roleId 'Zga6Vy76' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateRoleV3'
delete_file $TEMP_FILE

#- 180 adminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'izPiQRjY' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetRoleAdminStatusV3'
delete_file $TEMP_FILE

#- 181 adminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'a8fv5fIt' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateAdminRoleStatusV3'
delete_file $TEMP_FILE

#- 182 adminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId '22tIZhjh' \
    >$TEMP_FILE 2>&1
update_status $? 'adminRemoveRoleAdminV3'
delete_file $TEMP_FILE

#- 183 adminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'gkigW22z' \
    --after 'XMWXfbcM' \
    --before '0GIALIbF' \
    --limit '56' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetRoleManagersV3'
delete_file $TEMP_FILE

#- 184 adminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --body '{"managers": [{"displayName": "QgBcLNT6", "namespace": "iOQVYx5r", "userId": "W2gMsI1a"}]}' \
    --roleId 'YBitSn3U' \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddRoleManagersV3'
delete_file $TEMP_FILE

#- 185 adminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --body '{"managers": [{"displayName": "DeKj97I4", "namespace": "WYXLqjN7", "userId": "ktOBTraB"}]}' \
    --roleId 'xWRTVuYE' \
    >$TEMP_FILE 2>&1
update_status $? 'adminRemoveRoleManagersV3'
delete_file $TEMP_FILE

#- 186 adminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'qGlKDwTK' \
    --after 'XBrXiQcd' \
    --before '9IW8kiCK' \
    --limit '9' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetRoleMembersV3'
delete_file $TEMP_FILE

#- 187 adminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --body '{"members": [{"displayName": "QJWZBvcq", "namespace": "1ETvWBxY", "userId": "ZJh7B8gb"}]}' \
    --roleId 'nSu9M2Ox' \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddRoleMembersV3'
delete_file $TEMP_FILE

#- 188 adminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --body '{"members": [{"displayName": "D2udaeYp", "namespace": "CXYSMiy8", "userId": "7CTqEQBg"}]}' \
    --roleId '36my3sY2' \
    >$TEMP_FILE 2>&1
update_status $? 'adminRemoveRoleMembersV3'
delete_file $TEMP_FILE

#- 189 adminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --body '{"permissions": [{"action": 4, "resource": "lrDcain0", "schedAction": 5, "schedCron": "OVF1zHwD", "schedRange": ["TI0sJ1Q0"]}]}' \
    --roleId 'kphMTggS' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateRolePermissionsV3'
delete_file $TEMP_FILE

#- 190 adminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --body '{"permissions": [{"action": 82, "resource": "2SLcuAP7", "schedAction": 43, "schedCron": "U971Czw2", "schedRange": ["nbg8C7Mv"]}]}' \
    --roleId 'ywhu6MjO' \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddRolePermissionsV3'
delete_file $TEMP_FILE

#- 191 adminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --body '["juGzo1Fz"]' \
    --roleId '4tU0aSn9' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteRolePermissionsV3'
delete_file $TEMP_FILE

#- 192 adminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '79' \
    --resource '8qOUA0z9' \
    --roleId '2RaDe8ng' \
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
    --clientId 'T8LRQkMn' \
    --extendExp 'True' \
    --redirectUri 'F2mdYY6Z' \
    --password 'MfuTYTKs' \
    --requestId 'ue48qBEB' \
    --userName 'NAV5BTe6' \
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
    --namespace 'ec1zA92U' \
    --platformId 'RCLSGPmR' \
    --userId 'BZWunHW7' \
    >$TEMP_FILE 2>&1
update_status $? 'adminRetrieveUserThirdPartyPlatformTokenV3'
delete_file $TEMP_FILE

#- 198 revokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace 'MYvr6QA7' \
    --userId 'Ppepc92H' \
    >$TEMP_FILE 2>&1
update_status $? 'revokeUserV3'
delete_file $TEMP_FILE

#- 199 authorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'A94eACde' \
    --codeChallengeMethod 'plain' \
    --redirectUri 'fUpgiPpf' \
    --scope '8nxKJ3dn' \
    --state 'mtPwa64Y' \
    --targetAuthPage '4gPEKMhh' \
    --clientId 'u9a6f3xJ' \
    --responseType 'code' \
    >$TEMP_FILE 2>&1
update_status $? 'authorizeV3'
delete_file $TEMP_FILE

#- 200 tokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'UlKLlIIA' \
    >$TEMP_FILE 2>&1
update_status $? 'tokenIntrospectionV3'
delete_file $TEMP_FILE

#- 201 getJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    >$TEMP_FILE 2>&1
update_status $? 'getJWKSV3'
delete_file $TEMP_FILE

#- 202 retrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace 'eHbm5M6L' \
    --platformId 'sY1VMuIE' \
    --userId 'cRls68M3' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveUserThirdPartyPlatformTokenV3'
delete_file $TEMP_FILE

#- 203 authCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'MPMRPBep' \
    --clientId 'yyMz6zfR' \
    --redirectUri '1pvTYYtD' \
    --requestId 'OiEi4RuE' \
    >$TEMP_FILE 2>&1
update_status $? 'authCodeRequestV3'
delete_file $TEMP_FILE

#- 204 platformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --clientId 'cHCSGhpO' \
    --deviceId 'ZQFlwOiu' \
    --platformToken 'KGDFgK49' \
    --platformId 'YuKnXks0' \
    >$TEMP_FILE 2>&1
update_status $? 'platformTokenGrantV3'
delete_file $TEMP_FILE

#- 205 getRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    >$TEMP_FILE 2>&1
update_status $? 'getRevocationListV3'
delete_file $TEMP_FILE

#- 206 tokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'm8ANrcRa' \
    >$TEMP_FILE 2>&1
update_status $? 'tokenRevocationV3'
delete_file $TEMP_FILE

#- 207 tokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --deviceId 'l7ta3foj' \
    --clientId 'A3h4MMW3' \
    --code 'AJ5zlsFB' \
    --codeVerifier 'wjvLYvmg' \
    --extendExp 'False' \
    --password 'vudQFF1C' \
    --redirectUri 'PNY9u2dV' \
    --refreshToken 'YdglOOoC' \
    --username 'eK0kPKmB' \
    --grantType 'password' \
    >$TEMP_FILE 2>&1
update_status $? 'tokenGrantV3'
delete_file $TEMP_FILE

#- 208 platformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'Vux3lXcD' \
    --code '8aertAVC' \
    --error 'qs8XT8xy' \
    --openidAssocHandle '3nJ06Kks' \
    --openidClaimedId 'eA0ARj9r' \
    --openidIdentity 'icfayvnh' \
    --openidMode 'i8MDdY4W' \
    --openidNs 'LHoaUkYn' \
    --openidOpEndpoint 'Qp5egdmV' \
    --openidResponseNonce 'E8ImivNt' \
    --openidReturnTo 'QxqWRKHo' \
    --openidSig 'hODoWOr9' \
    --openidSigned '8kjBUas9' \
    --state 'jjz2Frgi' \
    >$TEMP_FILE 2>&1
update_status $? 'platformAuthenticationV3'
delete_file $TEMP_FILE

#- 209 publicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'False' \
    --languageCode 'GrcB7dIO' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetInputValidations'
delete_file $TEMP_FILE

#- 210 retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace 'VKIPSJJH' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3'
delete_file $TEMP_FILE

#- 211 publicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --body '{"platformUserIds": ["o5W8tKH8"]}' \
    --namespace 'ou9SdbxS' \
    --platformId 'XcrEFCwq' \
    >$TEMP_FILE 2>&1
update_status $? 'publicListUserIDByPlatformUserIDsV3'
delete_file $TEMP_FILE

#- 212 publicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace 'eGNLdIBR' \
    --platformId 'dliFQVMK' \
    --platformUserId 'EzVUWlUW' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserByPlatformUserIDV3'
delete_file $TEMP_FILE

#- 213 publicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace 'Ds2x1EQU' \
    --requestId '0oepEvcj' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetAsyncStatus'
delete_file $TEMP_FILE

#- 214 publicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace 'aSgEh6jJ' \
    --by 'nFxinIHJ' \
    --query '1o7aq5Zz' \
    >$TEMP_FILE 2>&1
update_status $? 'publicSearchUserV3'
delete_file $TEMP_FILE

#- 215 publicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --body '{"PasswordMD5Sum": "nd5eacob", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "uRlhreQV", "policyId": "FID3o8hJ", "policyVersionId": "WVjKIOAw"}], "authType": "70DvAHhS", "code": "GWUvzq1Z", "country": "a3IBC4vQ", "dateOfBirth": "FsUJPfia", "displayName": "Jp1rt7OB", "emailAddress": "gBCe6N0e", "password": "I65Mn5tn", "reachMinimumAge": false}' \
    --namespace 'EYXgPVT5' \
    >$TEMP_FILE 2>&1
update_status $? 'publicCreateUserV3'
delete_file $TEMP_FILE

#- 216 checkUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace 'CqXDZBVM' \
    --field 'JyJeKFO9' \
    --query '2YDtaZvJ' \
    >$TEMP_FILE 2>&1
update_status $? 'checkUserAvailability'
delete_file $TEMP_FILE

#- 217 publicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --body '{"userIds": ["oKS0Oxyi"]}' \
    --namespace 'pZuO4N9S' \
    >$TEMP_FILE 2>&1
update_status $? 'publicBulkGetUsers'
delete_file $TEMP_FILE

#- 218 publicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --body '{"emailAddress": "2YCgHa6X", "languageTag": "BcvGRYk5"}' \
    --namespace 'rUtWHCnh' \
    >$TEMP_FILE 2>&1
update_status $? 'publicSendRegistrationCode'
delete_file $TEMP_FILE

#- 219 publicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --body '{"code": "mzzppV7t", "emailAddress": "KNKYUQVB"}' \
    --namespace 'XymWcNlH' \
    >$TEMP_FILE 2>&1
update_status $? 'publicVerifyRegistrationCode'
delete_file $TEMP_FILE

#- 220 publicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --body '{"emailAddress": "aFxYaGHU", "languageTag": "pmBFyOrF"}' \
    --namespace 'KtxGNAi0' \
    >$TEMP_FILE 2>&1
update_status $? 'publicForgotPasswordV3'
delete_file $TEMP_FILE

#- 221 getAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'fq4xChPL' \
    --namespace 'd2lOopc7' \
    >$TEMP_FILE 2>&1
update_status $? 'getAdminInvitationV3'
delete_file $TEMP_FILE

#- 222 createUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "Vpdd6rCp", "policyId": "yMrnH9YH", "policyVersionId": "Xh7KnCVO"}], "authType": "KY2zsBRG", "country": "td8QY2OL", "dateOfBirth": "bijrvfr8", "displayName": "hknjWUWd", "password": "MUXHvw4p", "reachMinimumAge": false}' \
    --invitationId 'GLjdBxLM' \
    --namespace '079pDAbT' \
    >$TEMP_FILE 2>&1
update_status $? 'createUserFromInvitationV3'
delete_file $TEMP_FILE

#- 223 updateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --body '{"country": "gmsEYEq2", "dateOfBirth": "GkYK1vYm", "displayName": "9flXQ7CQ", "languageTag": "oemnQG0d", "userName": "H0NVM9VE"}' \
    --namespace 'HTPqDhkc' \
    >$TEMP_FILE 2>&1
update_status $? 'updateUserV3'
delete_file $TEMP_FILE

#- 224 publicUpdateUserV3
samples/cli/sample-apps Iam publicUpdateUserV3 \
    --body '{"country": "u5vnz6Gi", "dateOfBirth": "NMboBJHm", "displayName": "l0LJmpPi", "languageTag": "4mqhruiC", "userName": "ZLGGP5UX"}' \
    --namespace 'kHNTMapp' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdateUserV3'
delete_file $TEMP_FILE

#- 225 publicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --body '{"context": "5SbonsUJ", "emailAddress": "KADr60Ek", "languageTag": "dFrpLsGt"}' \
    --namespace '9yTXWUSC' \
    >$TEMP_FILE 2>&1
update_status $? 'publicSendVerificationCodeV3'
delete_file $TEMP_FILE

#- 226 publicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --body '{"code": "QcMsHN7r", "contactType": "eI22ks7I", "languageTag": "12tAZc8s", "validateOnly": true}' \
    --namespace 'xLx9XQeq' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUserVerificationV3'
delete_file $TEMP_FILE

#- 227 publicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --body '{"code": "NWLm8cNJ", "country": "bYH5J4Wi", "dateOfBirth": "JLv9NvHw", "displayName": "tw2Mjcy9", "emailAddress": "ZL6Zs5Bu", "password": "2XYopLWZ", "validateOnly": false}' \
    --namespace 'UKJJNftR' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpgradeHeadlessAccountV3'
delete_file $TEMP_FILE

#- 228 publicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --body '{"emailAddress": "pGgk1ise", "password": "REzzRG6z"}' \
    --namespace '9wmuHddy' \
    >$TEMP_FILE 2>&1
update_status $? 'publicVerifyHeadlessAccountV3'
delete_file $TEMP_FILE

#- 229 publicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --body '{"languageTag": "OdibI1LV", "newPassword": "yqbdY8DG", "oldPassword": "ZKAuoIKz"}' \
    --namespace '3Pp3zLWU' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdatePasswordV3'
delete_file $TEMP_FILE

#- 230 publicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace 'xMzMtSmM' \
    --targetNamespace 'mZP8nG0F' \
    >$TEMP_FILE 2>&1
update_status $? 'publicCreateJusticeUser'
delete_file $TEMP_FILE

#- 231 publicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --redirectUri 'oQP8q7aS' \
    --ticket 'sb85gAh9' \
    --namespace 'RD3ZzN6N' \
    --platformId '1iJ8ltt9' \
    >$TEMP_FILE 2>&1
update_status $? 'publicPlatformLinkV3'
delete_file $TEMP_FILE

#- 232 publicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --body '{"platformNamespace": "IRqCflgl"}' \
    --namespace 'n6r5f0s5' \
    --platformId 'H6lCf3QH' \
    >$TEMP_FILE 2>&1
update_status $? 'publicPlatformUnlinkV3'
delete_file $TEMP_FILE

#- 233 publicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace 'a11hLLCg' \
    --platformId 'w5av4LEx' \
    --clientId 'dabD8g2c' \
    --redirectUri 'vHfMRupD' \
    >$TEMP_FILE 2>&1
update_status $? 'publicWebLinkPlatform'
delete_file $TEMP_FILE

#- 234 publicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace 'A5xbjs3X' \
    --platformId 'RdHUJ0GC' \
    --state 'mflIXkgJ' \
    >$TEMP_FILE 2>&1
update_status $? 'publicWebLinkPlatformEstablish'
delete_file $TEMP_FILE

#- 235 resetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --body '{"code": "6zkTwoak", "emailAddress": "q7sEejFZ", "newPassword": "1NtONXb9"}' \
    --namespace 'w9hsQHsz' \
    >$TEMP_FILE 2>&1
update_status $? 'resetPasswordV3'
delete_file $TEMP_FILE

#- 236 publicGetUserByUserIdV3
samples/cli/sample-apps Iam publicGetUserByUserIdV3 \
    --namespace 'IsfrlzKp' \
    --userId 'Qdd58dZP' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserByUserIdV3'
delete_file $TEMP_FILE

#- 237 publicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace '5RvrinNt' \
    --userId 'vBtqFSkA' \
    --activeOnly 'False' \
    --after 'IVYJ5pSV' \
    --before 'xBsLhty3' \
    --limit '30' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserBanHistoryV3'
delete_file $TEMP_FILE

#- 238 publicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace 'ecToXA4M' \
    --userId '1oUFPhgo' \
    --after '0.9271120861021633' \
    --before '0.9136647447693423' \
    --limit '44' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserLoginHistoriesV3'
delete_file $TEMP_FILE

#- 239 publicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace 'NC4FY69m' \
    --userId 'M87joJNO' \
    --after 'GB83Ns6H' \
    --before 'l5Poab6l' \
    --limit '73' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserPlatformAccountsV3'
delete_file $TEMP_FILE

#- 240 publicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --body '{"platformId": "oVqNBUzI", "platformUserId": "xOfglquS"}' \
    --namespace '2q2DoWr9' \
    --userId 'zvFtKa2m' \
    >$TEMP_FILE 2>&1
update_status $? 'publicLinkPlatformAccount'
delete_file $TEMP_FILE

#- 241 publicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --password 'OAqOokV1' \
    --namespace 'plxQ2Yri' \
    --userId 'TPfipD67' \
    >$TEMP_FILE 2>&1
update_status $? 'publicValidateUserByUserIDAndPasswordV3'
delete_file $TEMP_FILE

#- 242 publicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'jI2hiZkr' \
    --before 'tLnh2U1R' \
    --isWildcard 'False' \
    --limit '77' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetRolesV3'
delete_file $TEMP_FILE

#- 243 publicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'xkfNMPNt' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetRoleV3'
delete_file $TEMP_FILE

#- 244 publicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetMyUserV3'
delete_file $TEMP_FILE

#- 245 platformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'qv2TMz1b' \
    --code '7SnzkXOe' \
    --error 'k83Igm1w' \
    --state 'kSWsYvAs' \
    >$TEMP_FILE 2>&1
update_status $? 'platformAuthenticateSAMLV3Handler'
delete_file $TEMP_FILE

#- 246 loginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'u18obUdc' \
    --payload '8mbvXcwc' \
    >$TEMP_FILE 2>&1
update_status $? 'loginSSOClient'
delete_file $TEMP_FILE

#- 247 logoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'gMqOXMzi' \
    >$TEMP_FILE 2>&1
update_status $? 'logoutSSOClient'
delete_file $TEMP_FILE

#- 248 adminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --body '{"country": "XrVdsEc3", "dateOfBirth": "ClFP3mJw", "displayName": "usCBTe4k", "languageTag": "LcuqL40N", "userName": "YgekRavp"}' \
    --namespace 'aGTA9BTy' \
    --userId 'CCyN4Fw9' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateUserV4'
delete_file $TEMP_FILE

#- 249 adminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --body '{"code": "i6mI2W3t", "emailAddress": "jjCqPVyY"}' \
    --namespace 's01hEYzW' \
    --userId 'w3qrcxM0' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateUserEmailAddressV4'
delete_file $TEMP_FILE

#- 250 adminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace 'DPAXQBNM' \
    --userId 'P7j3xfPa' \
    >$TEMP_FILE 2>&1
update_status $? 'adminListUserRolesV4'
delete_file $TEMP_FILE

#- 251 adminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --body '{"assignedNamespaces": ["oZaWFspk"], "roleId": "U5kn6PlP"}' \
    --namespace 'qD4Agfas' \
    --userId 'BfclBhZj' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateUserRoleV4'
delete_file $TEMP_FILE

#- 252 adminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --body '{"assignedNamespaces": ["ZbLnmghK"], "roleId": "wPyVIn3q"}' \
    --namespace 'aHP7KNul' \
    --userId 'yfrENVQk' \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddUserRoleV4'
delete_file $TEMP_FILE

#- 253 adminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --body '{"assignedNamespaces": ["pcaWHf6T"], "roleId": "2xOOljn7"}' \
    --namespace 'c6c9efJI' \
    --userId '02TZxrgL' \
    >$TEMP_FILE 2>&1
update_status $? 'adminRemoveUserRoleV4'
delete_file $TEMP_FILE

#- 254 adminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'True' \
    --isWildcard 'True' \
    --limit '70' \
    --offset '61' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetRolesV4'
delete_file $TEMP_FILE

#- 255 adminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "Fz0h6Wpo"}' \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateRoleV4'
delete_file $TEMP_FILE

#- 256 adminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'VpVc2HBB' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetRoleV4'
delete_file $TEMP_FILE

#- 257 adminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'mj6cEi02' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteRoleV4'
delete_file $TEMP_FILE

#- 258 adminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "bCRfy4Gj"}' \
    --roleId 'Kn5ItHXL' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateRoleV4'
delete_file $TEMP_FILE

#- 259 adminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --body '{"permissions": [{"action": 58, "resource": "ZqpRhqnR", "schedAction": 64, "schedCron": "cbLuQOGM", "schedRange": ["OEzmdjNh"]}]}' \
    --roleId 'T0S46kqy' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateRolePermissionsV4'
delete_file $TEMP_FILE

#- 260 adminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --body '{"permissions": [{"action": 11, "resource": "MBSaZc4S", "schedAction": 52, "schedCron": "16M8gQCD", "schedRange": ["7aBHWCYe"]}]}' \
    --roleId 'vNkfcQvl' \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddRolePermissionsV4'
delete_file $TEMP_FILE

#- 261 adminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --body '["4Oso7tx6"]' \
    --roleId '5zXCiTfj' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteRolePermissionsV4'
delete_file $TEMP_FILE

#- 262 adminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'orLFqTmI' \
    --after 'UFUoonHB' \
    --before 'I13SZFHf' \
    --limit '25' \
    >$TEMP_FILE 2>&1
update_status $? 'adminListAssignedUsersV4'
delete_file $TEMP_FILE

#- 263 adminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --body '{"assignedNamespaces": ["0F8vS2Br"], "namespace": "Z3nq88YS", "userId": "SD7zV0C8"}' \
    --roleId 'FvVU3kRX' \
    >$TEMP_FILE 2>&1
update_status $? 'adminAssignUserToRoleV4'
delete_file $TEMP_FILE

#- 264 adminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --body '{"namespace": "BGPXIdft", "userId": "1biZHuhW"}' \
    --roleId 'yFPHdXcy' \
    >$TEMP_FILE 2>&1
update_status $? 'adminRevokeUserFromRoleV4'
delete_file $TEMP_FILE

#- 265 adminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"country": "vZEhYeUS", "dateOfBirth": "y5Ukc65n", "displayName": "aP11R8Xw", "languageTag": "w9vq9nMa", "userName": "2Btgwyuf"}' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateMyUserV4'
delete_file $TEMP_FILE

#- 266 adminInviteUserV4
samples/cli/sample-apps Iam adminInviteUserV4 \
    --body '{"assignedNamespaces": ["2fjV30SL"], "emailAddresses": ["xi7uyhae"], "isAdmin": true, "roleId": "tcO9XNy6"}' \
    >$TEMP_FILE 2>&1
update_status $? 'adminInviteUserV4'
delete_file $TEMP_FILE

#- 267 publicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "W0ck7TED", "policyId": "E8LeEQBe", "policyVersionId": "GPLiE6tH"}], "authType": "Cr0GPFvT", "country": "0SAK91y5", "dateOfBirth": "vCeBIJq0", "displayName": "B9UcI6c5", "emailAddress": "cre9ealH", "password": "OZphcLnc", "passwordMD5Sum": "njnmyU8F", "username": "SxXdCrsk", "verified": false}' \
    --namespace 'Fqnowq9L' \
    >$TEMP_FILE 2>&1
update_status $? 'publicCreateTestUserV4'
delete_file $TEMP_FILE

#- 268 publicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "z1GLt5Mh", "policyId": "f8Z7ahmb", "policyVersionId": "VPm2g7xA"}], "authType": "FfRRLUjf", "code": "WS9sftIf", "country": "HGe5bUTS", "dateOfBirth": "XOv12PMc", "displayName": "RO6E2Mkr", "emailAddress": "e5q7FvaA", "password": "Cp6he0fz", "passwordMD5Sum": "jkPNNS0B", "reachMinimumAge": false, "username": "gF6inIRs"}' \
    --namespace 'Z5hrqNzV' \
    >$TEMP_FILE 2>&1
update_status $? 'publicCreateUserV4'
delete_file $TEMP_FILE

#- 269 createUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "zGVP5P1i", "policyId": "whcf30C1", "policyVersionId": "KHRZHMGy"}], "authType": "5vbfZvYI", "country": "FFctEKOL", "dateOfBirth": "xSRxe0wm", "displayName": "WBMcNiWo", "password": "obB6o6al", "reachMinimumAge": false, "username": "P0EpE9wG"}' \
    --invitationId 'NVwkgfJJ' \
    --namespace '2HIalfzg' \
    >$TEMP_FILE 2>&1
update_status $? 'createUserFromInvitationV4'
delete_file $TEMP_FILE

#- 270 publicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --body '{"country": "RpTf9lxF", "dateOfBirth": "1JPBizXZ", "displayName": "trGe8LyO", "languageTag": "H24nneZH", "userName": "FeRld0bG"}' \
    --namespace 'A7JxWYza' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdateUserV4'
delete_file $TEMP_FILE

#- 271 publicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --body '{"code": "Eaimvokc", "emailAddress": "WX59kwiY"}' \
    --namespace 'HgHT6Ivd' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdateUserEmailAddressV4'
delete_file $TEMP_FILE

#- 272 publicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --body '{"code": "0fGpU209", "country": "nVRclumQ", "dateOfBirth": "TFvr5rRy", "displayName": "YzaNmz3P", "emailAddress": "jMx2T89N", "password": "TrFRUCXF", "reachMinimumAge": false, "username": "ruxegpkc", "validateOnly": true}' \
    --namespace 'fzgcvv0W' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpgradeHeadlessAccountWithVerificationCodeV4'
delete_file $TEMP_FILE

#- 273 publicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --body '{"emailAddress": "E5EQhcom", "password": "PS1E7cps", "username": "Lgr2zEnj"}' \
    --namespace 'yRNjEC3F' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpgradeHeadlessAccountV4'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT