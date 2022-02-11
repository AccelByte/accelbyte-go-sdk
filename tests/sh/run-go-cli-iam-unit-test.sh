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

OPERATIONS_COUNT=270

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
    --limit '0.8434382695447258' \
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
    --body '{"Code": "YVfaENtr", "ContactType": "l0pTKZTX", "LanguageTag": "qzHuBMYQ"}' \
    --namespace 'SA2jz1ZO' \
    --userId 'pdOjSyMd' \
    >$TEMP_FILE 2>&1
update_status $? 'userVerification'
delete_file $TEMP_FILE

#- 52 sendVerificationCode
samples/cli/sample-apps Iam sendVerificationCode \
    --body '{"Context": "dB41JuMf", "LanguageTag": "7RUyBHRj", "LoginID": "8IiRimRl"}' \
    --namespace 'lHT6Dc40' \
    --userId 'vFFA6gpU' \
    >$TEMP_FILE 2>&1
update_status $? 'sendVerificationCode'
delete_file $TEMP_FILE

#- 53 authorization
samples/cli/sample-apps Iam authorization \
    --login '7EW3x1dC' \
    --password 'pm55gOeq' \
    --scope 'QIqcJVKm' \
    --state 'BM1J1Ibu' \
    --clientId 'TrrkbmuT' \
    --redirectUri '1whOqmEn' \
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
    --namespace 'XIWrBPlS' \
    --userId 'ay46mv71' \
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
    --deviceId 'BAZAOjtF' \
    --code 'J2vmTj7t' \
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

#- 94 publicCreateUserV2
samples/cli/sample-apps Iam publicCreateUserV2 \
    --body '{"AuthType": "5Hog0blM", "Country": "1d5MStYG", "DisplayName": "czLINlEC", "LoginId": "0OEsE3yz", "Password": "IsUP0Njl", "PasswordMD5Sum": "uOrGZTzs"}' \
    --namespace 'LW7Fjfs9' \
    >$TEMP_FILE 2>&1
update_status $? 'publicCreateUserV2'
delete_file $TEMP_FILE

#- 95 publicForgotPasswordV2
samples/cli/sample-apps Iam publicForgotPasswordV2 \
    --body '{"Context": "nIkcZ38f", "LanguageTag": "UEanjKHb", "LoginID": "Xfk1zxdz"}' \
    --namespace 'xg0UXcRy' \
    >$TEMP_FILE 2>&1
update_status $? 'publicForgotPasswordV2'
delete_file $TEMP_FILE

#- 96 publicResetPasswordV2
samples/cli/sample-apps Iam publicResetPasswordV2 \
    --body '{"Code": "Hi3u8BzV", "LoginID": "Wu1tOmhU", "NewPassword": "tCgcpvGr"}' \
    --namespace 'EbcZUDEx' \
    >$TEMP_FILE 2>&1
update_status $? 'publicResetPasswordV2'
delete_file $TEMP_FILE

#- 97 publicGetUserByUserIDV2
samples/cli/sample-apps Iam publicGetUserByUserIDV2 \
    --namespace 'H1tayOGX' \
    --userId 'IHzMRjMC' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserByUserIDV2'
delete_file $TEMP_FILE

#- 98 publicUpdateUserV2
samples/cli/sample-apps Iam publicUpdateUserV2 \
    --body '{"Country": "tOJsEijl", "DateOfBirth": "rbpyyEcQ", "DisplayName": "xVgJIjMZ", "LanguageTag": "qcWfMl6d"}' \
    --namespace 'qrpD4tnc' \
    --userId '3ZRB3Ikd' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdateUserV2'
delete_file $TEMP_FILE

#- 99 publicGetUserBan
samples/cli/sample-apps Iam publicGetUserBan \
    --namespace 'tPfAJEom' \
    --userId 'wenJvQ8g' \
    --activeOnly 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserBan'
delete_file $TEMP_FILE

#- 100 publicUpdatePasswordV2
samples/cli/sample-apps Iam publicUpdatePasswordV2 \
    --body '{"LanguageTag": "tQSv6EcA", "NewPassword": "LcMIPms5", "OldPassword": "bT51M4yk"}' \
    --namespace 'o8S0EnGL' \
    --userId 'vGvfuSyC' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdatePasswordV2'
delete_file $TEMP_FILE

#- 101 getListJusticePlatformAccounts
samples/cli/sample-apps Iam getListJusticePlatformAccounts \
    --namespace 'Tyjj4mCa' \
    --userId 'iuMGKOF5' \
    >$TEMP_FILE 2>&1
update_status $? 'getListJusticePlatformAccounts'
delete_file $TEMP_FILE

#- 102 publicPlatformLinkV2
samples/cli/sample-apps Iam publicPlatformLinkV2 \
    --ticket 'GJJooSXU' \
    --namespace 'l3YU35QH' \
    --platformId 'GpBABnOl' \
    --userId 'xDznICQV' \
    >$TEMP_FILE 2>&1
update_status $? 'publicPlatformLinkV2'
delete_file $TEMP_FILE

#- 103 publicDeletePlatformLinkV2
samples/cli/sample-apps Iam publicDeletePlatformLinkV2 \
    --platformNamespace 'yqBg34WT' \
    --namespace 'tDkn0rtn' \
    --platformId '6t0Yx4z1' \
    --userId '2EaQ1rUQ' \
    >$TEMP_FILE 2>&1
update_status $? 'publicDeletePlatformLinkV2'
delete_file $TEMP_FILE

#- 104 adminGetBansTypeV3
samples/cli/sample-apps Iam adminGetBansTypeV3 \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetBansTypeV3'
delete_file $TEMP_FILE

#- 105 adminGetListBanReasonV3
samples/cli/sample-apps Iam adminGetListBanReasonV3 \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetListBanReasonV3'
delete_file $TEMP_FILE

#- 106 adminGetInputValidations
samples/cli/sample-apps Iam adminGetInputValidations \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetInputValidations'
delete_file $TEMP_FILE

#- 107 adminUpdateInputValidations
samples/cli/sample-apps Iam adminUpdateInputValidations \
    --body '[{"field": "YCNTiDX4", "validation": {"allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "description": [{"language": "8QwNyOlX", "message": ["fIWd0mcq"]}], "isCustomRegex": false, "letterCase": "7cWfCKK6", "maxLength": 59, "maxRepeatingAlphaNum": 16, "maxRepeatingSpecialCharacter": 18, "minCharType": 12, "minLength": 63, "regex": "cenEMySP", "specialCharacterLocation": "fhxBenDi", "specialCharacters": ["TiAqFYmF"]}}]' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateInputValidations'
delete_file $TEMP_FILE

#- 108 adminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'KjaELmml' \
    >$TEMP_FILE 2>&1
update_status $? 'adminResetInputValidations'
delete_file $TEMP_FILE

#- 109 listAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace 'l6oexId1' \
    --after 'OKGUN2Uz' \
    --before 'nd7uVa7t' \
    --limit '48' \
    >$TEMP_FILE 2>&1
update_status $? 'listAdminsV3'
delete_file $TEMP_FILE

#- 110 adminGetAgeRestrictionStatusV3
samples/cli/sample-apps Iam adminGetAgeRestrictionStatusV3 \
    --namespace 'vSYSV52b' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetAgeRestrictionStatusV3'
delete_file $TEMP_FILE

#- 111 adminUpdateAgeRestrictionConfigV3
samples/cli/sample-apps Iam adminUpdateAgeRestrictionConfigV3 \
    --body '{"ageRestriction": 66, "enable": false}' \
    --namespace 'fCIf4tsu' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateAgeRestrictionConfigV3'
delete_file $TEMP_FILE

#- 112 adminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace 'u6Pkam6t' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetListCountryAgeRestrictionV3'
delete_file $TEMP_FILE

#- 113 adminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --body '{"ageRestriction": 62}' \
    --countryCode 'SYFt4ZxA' \
    --namespace '2PzZFRkB' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateCountryAgeRestrictionV3'
delete_file $TEMP_FILE

#- 114 adminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace 'Nlg6hn5q' \
    --activeOnly 'True' \
    --banType 'sKyZAuV6' \
    --limit '40' \
    --offset '92' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetBannedUsersV3'
delete_file $TEMP_FILE

#- 115 adminGetBansTypeWithNamespaceV3
samples/cli/sample-apps Iam adminGetBansTypeWithNamespaceV3 \
    --namespace 'vqM0lV6U' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetBansTypeWithNamespaceV3'
delete_file $TEMP_FILE

#- 116 adminGetClientsByNamespaceV3
samples/cli/sample-apps Iam adminGetClientsByNamespaceV3 \
    --namespace 'ZMlEbxHN' \
    --limit '13' \
    --offset 'JRiQExau' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetClientsByNamespaceV3'
delete_file $TEMP_FILE

#- 117 adminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --body '{"audiences": ["njdAqnHU"], "baseUri": "z44tx4O6", "clientId": "hamPwNoi", "clientName": "071ezDK5", "clientPermissions": [{"action": 71, "resource": "FIGe1IMU", "schedAction": 56, "schedCron": "LcN0DsaD", "schedRange": ["5FyBsFe9"]}], "namespace": "OYEJVsYf", "oauthClientType": "fmhyx6J2", "redirectUri": "5PrM4S3c", "secret": "B8m17hEe"}' \
    --namespace 'LLgoaYth' \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateClientV3'
delete_file $TEMP_FILE

#- 118 adminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId '6zcf8eA4' \
    --namespace '5OMvObWe' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetClientsbyNamespacebyIDV3'
delete_file $TEMP_FILE

#- 119 adminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'jo9LfGee' \
    --namespace 'gJMaBGR6' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteClientV3'
delete_file $TEMP_FILE

#- 120 adminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --body '{"audiences": ["D1ZoZEZQ"], "baseUri": "kJ8DSqFn", "clientName": "hdKvjFCF", "clientPermissions": [{"action": 2, "resource": "SFlEWoMP", "schedAction": 7, "schedCron": "gK5zn62m", "schedRange": ["hnFSpCTl"]}], "namespace": "DNBOcygv", "redirectUri": "v2LAgfBG"}' \
    --clientId 'VzanbKYs' \
    --namespace 'B0gqJ8Vh' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateClientV3'
delete_file $TEMP_FILE

#- 121 adminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --body '{"permissions": [{"action": 88, "resource": "ikJl2p9r"}]}' \
    --clientId 'Bx8N5ega' \
    --namespace 'pqxDy4cL' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateClientPermissionV3'
delete_file $TEMP_FILE

#- 122 adminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --body '{"permissions": [{"action": 11, "resource": "NjzzEZYA"}]}' \
    --clientId '8jIkMJb7' \
    --namespace 'cZ2bPsaL' \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddClientPermissionsV3'
delete_file $TEMP_FILE

#- 123 adminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '75' \
    --clientId 'pEBVEMk5' \
    --namespace 'AsKaF2P4' \
    --resource '4lXkI3zd' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteClientPermissionV3'
delete_file $TEMP_FILE

#- 124 retrieveAllThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 \
    --namespace 'iRiC5IbP' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveAllThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 125 retrieveAllActiveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 \
    --namespace 'it71JWlY' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveAllActiveThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 126 retrieveAllSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 \
    --namespace 'Coi4nDfP' \
    --limit '41' \
    --offset '5V6QSYxE' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveAllSSOLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 127 retrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace 'VOryVuZY' \
    --platformId 'mgUeEPB5' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 128 addThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --body '{"ACSURL": "AGPgvk0Z", "AWSCognitoRegion": "thaj0EBA", "AWSCognitoUserPool": "4azRz0d5", "AppId": "6smobor4", "ClientId": "p1PlgQB9", "Environment": "EcNGOeBR", "FederationMetadataURL": "Y6G5ae07", "IsActive": false, "KeyID": "eDLaZ8JC", "OrganizationId": "vbeTfW0h", "RedirectUri": "gzrabLJx", "Secret": "EwJrEBmQ", "TeamID": "64haNOzl"}' \
    --namespace 'Gu68UYyu' \
    --platformId 'pjdDetno' \
    >$TEMP_FILE 2>&1
update_status $? 'addThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 129 deleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace 'T0rfWtVP' \
    --platformId 'wQfq6V92' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 130 updateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --body '{"ACSURL": "gbfPouNd", "AWSCognitoRegion": "mP7fckVn", "AWSCognitoUserPool": "uDGvYIb1", "AppId": "p5tcR5z8", "ClientId": "ZJLjSHca", "Environment": "R3X4tZmw", "FederationMetadataURL": "r0QmOnsE", "IsActive": false, "KeyID": "49eXp0xQ", "OrganizationId": "kZ2JjuwW", "RedirectUri": "Wy0tU11P", "Secret": "CeSrvejU", "TeamID": "KwVfF37V"}' \
    --namespace 'r7mkDzFB' \
    --platformId 'I1VwhkVS' \
    >$TEMP_FILE 2>&1
update_status $? 'updateThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 131 updateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --body '{"affectedClientIDs": ["KDlNFOUH"], "assignedNamespaces": ["BJsvTsqk"], "domain": "9hg4hj6n", "roleId": "UdebW6Us"}' \
    --namespace 'kbPkkZAk' \
    --platformId '01f1KxCt' \
    >$TEMP_FILE 2>&1
update_status $? 'updateThirdPartyLoginPlatformDomainV3'
delete_file $TEMP_FILE

#- 132 deleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --body '{"domain": "WADU2guN"}' \
    --namespace '6U9w13W1' \
    --platformId 'K9TZQ4qR' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteThirdPartyLoginPlatformDomainV3'
delete_file $TEMP_FILE

#- 133 retrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace 'LEi5wowE' \
    --platformId '36rfmM0C' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveSSOLoginPlatformCredential'
delete_file $TEMP_FILE

#- 134 addSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --body '{"acsUrl": "Cs35TPUP", "apiKey": "LmsY8Wgw", "appId": "Sx1DI5GH", "federationMetadataUrl": "9bv9ZTo2", "isActive": false, "redirectUri": "A6pzjHpZ", "secret": "O0E9iLgR", "ssoUrl": "PJK3nBae"}' \
    --namespace '3GOgbQrq' \
    --platformId 'ra0Ptkfv' \
    >$TEMP_FILE 2>&1
update_status $? 'addSSOLoginPlatformCredential'
delete_file $TEMP_FILE

#- 135 deleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace 'OpY2ramp' \
    --platformId '5lnBn6xm' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteSSOLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 136 updateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --body '{"acsUrl": "BkfMtC66", "apiKey": "hFq0kPOk", "appId": "ORm2XjlN", "federationMetadataUrl": "EE5ecPzA", "isActive": false, "redirectUri": "i0ySJHfP", "secret": "loP1XkYK", "ssoUrl": "4MgIsDSF"}' \
    --namespace 'MPyMhyw1' \
    --platformId 'OLZPVwwx' \
    >$TEMP_FILE 2>&1
update_status $? 'updateSSOPlatformCredential'
delete_file $TEMP_FILE

#- 137 adminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace 'H4BIDJuD' \
    --platformId 'oShMMftl' \
    --platformUserId 'l8N0VvCh' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserByPlatformUserIDV3'
delete_file $TEMP_FILE

#- 138 getAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace 'Hz9urmt7' \
    --roleId 'QWvE8s6U' \
    --after '51' \
    --before '54' \
    --limit '87' \
    >$TEMP_FILE 2>&1
update_status $? 'getAdminUsersByRoleIdV3'
delete_file $TEMP_FILE

#- 139 adminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace 'uYWDTtL6' \
    --emailAddress 'MTTRkCbb' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserByEmailAddressV3'
delete_file $TEMP_FILE

#- 140 adminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --body '{"userIds": ["9S5Q1IVH"]}' \
    --namespace 'GT88prRE' \
    >$TEMP_FILE 2>&1
update_status $? 'adminListUserIDByUserIDsV3'
delete_file $TEMP_FILE

#- 141 adminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --body '{"emailAddresses": ["BgYOWdHJ"], "isAdmin": true, "roles": ["mohtU13g"]}' \
    --namespace 'f7TRigNZ' \
    >$TEMP_FILE 2>&1
update_status $? 'adminInviteUserV3'
delete_file $TEMP_FILE

#- 142 adminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace 'j5w5y3Hm' \
    --limit '73' \
    --offset '85' \
    >$TEMP_FILE 2>&1
update_status $? 'adminListUsersV3'
delete_file $TEMP_FILE

#- 143 adminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace 'VOa62eQZ' \
    --by 'tbLLcF67' \
    --endDate '1WLtv38H' \
    --limit '8' \
    --offset 'cczopFme' \
    --platformBy 'RwpcJBZy' \
    --platformId 'i3mLC4Kz' \
    --query 'ekiSzeyo' \
    --startDate 'lnOQt0jo' \
    >$TEMP_FILE 2>&1
update_status $? 'adminSearchUserV3'
delete_file $TEMP_FILE

#- 144 adminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --body '{"listEmailAddressRequest": ["VHgCytC6"]}' \
    --namespace 'lRG98Yxn' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetBulkUserByEmailAddressV3'
delete_file $TEMP_FILE

#- 145 adminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace 'HbRdoTKK' \
    --userId 'euSjfZe9' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserByUserIdV3'
delete_file $TEMP_FILE

#- 146 adminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --body '{"country": "i1osghF1", "dateOfBirth": "hzi1Nl47", "displayName": "syJ5ibzS", "languageTag": "HZeCLIvW", "userName": "PVRsdEqA"}' \
    --namespace '61yTrMgs' \
    --userId 'ycTgmPzc' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateUserV3'
delete_file $TEMP_FILE

#- 147 adminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace '20EuO5dM' \
    --userId 'qGDlSZPY' \
    --activeOnly 'True' \
    --after 'EVSjzHjL' \
    --before '6ZbXjG6D' \
    --limit '89' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserBanV3'
delete_file $TEMP_FILE

#- 148 adminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --body '{"ban": "mpp3op8h", "comment": "taRLxtW4", "endDate": "PvFkESTU", "reason": "Lat5F1Le", "skipNotif": false}' \
    --namespace 'R7q6PWhZ' \
    --userId 'mmKz41i1' \
    >$TEMP_FILE 2>&1
update_status $? 'adminBanUserV3'
delete_file $TEMP_FILE

#- 149 adminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --body '{"enabled": false, "skipNotif": true}' \
    --banId 'ipJHahVi' \
    --namespace 'JvLYW0kd' \
    --userId 'mlk2luqS' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateUserBanV3'
delete_file $TEMP_FILE

#- 150 adminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --body '{"context": "OOA2VOZB", "emailAddress": "oNbB98Pu", "languageTag": "SGykqFzP"}' \
    --namespace 'wSMXT53b' \
    --userId 'BuL38beO' \
    >$TEMP_FILE 2>&1
update_status $? 'adminSendVerificationCodeV3'
delete_file $TEMP_FILE

#- 151 adminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --body '{"Code": "YDVuHZQ9", "ContactType": "LYt6w23W", "LanguageTag": "f8iEQo72"}' \
    --namespace 'sH0aRdcD' \
    --userId 'lDyGcsfI' \
    >$TEMP_FILE 2>&1
update_status $? 'adminVerifyAccountV3'
delete_file $TEMP_FILE

#- 152 getUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace 'uI4Dv5lE' \
    --userId 'JpK1AyRl' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserVerificationCode'
delete_file $TEMP_FILE

#- 153 adminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace 'zsrRXEFZ' \
    --userId 'ivQOHG6w' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserDeletionStatusV3'
delete_file $TEMP_FILE

#- 154 adminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --body '{"enabled": false}' \
    --namespace 'cNratsvv' \
    --userId 'HLmIohfN' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateUserDeletionStatusV3'
delete_file $TEMP_FILE

#- 155 adminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --body '{"code": "ISLXMDWD", "country": "dm5FE4ll", "dateOfBirth": "iQMnutJb", "displayName": "pEo4mUNH", "emailAddress": "Ftdml2xN", "password": "viWacJc3"}' \
    --namespace 'Fm7Z548u' \
    --userId 'uKgoCBqS' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpgradeHeadlessAccountV3'
delete_file $TEMP_FILE

#- 156 adminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace '5uIdCbwC' \
    --userId 'eeq9ouEd' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteUserInformationV3'
delete_file $TEMP_FILE

#- 157 adminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace 'DtjOgsyp' \
    --userId 'Lkm2ZYew' \
    --after '0.8925523573604067' \
    --before '0.9358989582255054' \
    --limit '0.19888699664074383' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserLoginHistoriesV3'
delete_file $TEMP_FILE

#- 158 adminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --body '{"Permissions": [{"Action": 13, "Resource": "nYyj6MXf", "SchedAction": 64, "SchedCron": "1ntyebvo", "SchedRange": ["eHenAALK"]}]}' \
    --namespace 't7EfxIH4' \
    --userId '46oUnP2S' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateUserPermissionV3'
delete_file $TEMP_FILE

#- 159 adminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --body '{"Permissions": [{"Action": 40, "Resource": "nXwg0JKq", "SchedAction": 94, "SchedCron": "WW1rjK1e", "SchedRange": ["pwkAvcsY"]}]}' \
    --namespace 'vbgfBVPp' \
    --userId 'Ta8Yuq7T' \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddUserPermissionsV3'
delete_file $TEMP_FILE

#- 160 adminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --body '[{"Action": 73, "Resource": "iNXmz7eM"}]' \
    --namespace 'rMD5TbaU' \
    --userId 'xTCTng0x' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteUserPermissionBulkV3'
delete_file $TEMP_FILE

#- 161 adminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '19' \
    --namespace 'tdBrjs3K' \
    --resource 'iykt2Ck2' \
    --userId 'gOlSatEC' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteUserPermissionV3'
delete_file $TEMP_FILE

#- 162 adminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace 'Z2UgwQLq' \
    --userId 'DqYSxTPu' \
    --after 'VlBqirdp' \
    --before '3yxnsETl' \
    --limit '88' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserPlatformAccountsV3'
delete_file $TEMP_FILE

#- 163 adminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace 'vhQudsjI' \
    --userId 'hXdxiSoW' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetListJusticePlatformAccounts'
delete_file $TEMP_FILE

#- 164 adminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace 'pnnxgX7B' \
    --targetNamespace 'CPMqzQIx' \
    --userId 'ibhpNYsH' \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateJusticeUser'
delete_file $TEMP_FILE

#- 165 adminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --body '{"platformId": "tdB3Ikju", "platformUserId": "aZqhJilr"}' \
    --namespace 'ZkSSKgP5' \
    --userId 'rxCR77G9' \
    >$TEMP_FILE 2>&1
update_status $? 'adminLinkPlatformAccount'
delete_file $TEMP_FILE

#- 166 adminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --body '{"platformNamespace": "d5CA1GOR"}' \
    --namespace 'SbL9n0db' \
    --platformId 'WDEupmdL' \
    --userId 'QzPnNfBA' \
    >$TEMP_FILE 2>&1
update_status $? 'adminPlatformUnlinkV3'
delete_file $TEMP_FILE

#- 167 adminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --ticket 'cWArbkCf' \
    --namespace 'dHIZb03o' \
    --platformId 'tqmBuS9V' \
    --userId '2pCZ23UH' \
    >$TEMP_FILE 2>&1
update_status $? 'adminPlatformLinkV3'
delete_file $TEMP_FILE

#- 168 adminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --body '["mk0lpJ4J"]' \
    --namespace 'Ll01qi7L' \
    --userId '2oDUoVRU' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteUserRolesV3'
delete_file $TEMP_FILE

#- 169 adminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --body '[{"namespace": "b39j22P4", "roleId": "Sp09cKmj"}]' \
    --namespace 'RUbZVBVS' \
    --userId '7OK2Zrdc' \
    >$TEMP_FILE 2>&1
update_status $? 'adminSaveUserRoleV3'
delete_file $TEMP_FILE

#- 170 adminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace 'sckMekRO' \
    --roleId 'WZ2KUTqk' \
    --userId 'K2eFaGLo' \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddUserRoleV3'
delete_file $TEMP_FILE

#- 171 adminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace 'SmEEPbLy' \
    --roleId 'wJsyUie6' \
    --userId 'fZgLllUP' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteUserRoleV3'
delete_file $TEMP_FILE

#- 172 adminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --body '{"enabled": true, "reason": "O8lg46Si"}' \
    --namespace '7006vL2w' \
    --userId '4aajDAOx' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateUserStatusV3'
delete_file $TEMP_FILE

#- 173 adminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace '0iJjYlea' \
    --userId 'ktqv2Wkl' \
    >$TEMP_FILE 2>&1
update_status $? 'adminVerifyUserWithoutVerificationCodeV3'
delete_file $TEMP_FILE

#- 174 adminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'jQuD5mnJ' \
    --before 'ONqHGq8m' \
    --isWildcard 'True' \
    --limit '24' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetRolesV3'
delete_file $TEMP_FILE

#- 175 adminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "isWildcard": false, "managers": [{"displayName": "MFcaghFX", "namespace": "JIJflRHF", "userId": "csIqCy4x"}], "members": [{"displayName": "DifSSQ5O", "namespace": "n2ccEcl3", "userId": "xeiO4bwF"}], "permissions": [{"action": 70, "resource": "OjGoGxKM", "schedAction": 33, "schedCron": "Mce5tfLc", "schedRange": ["pjFZMKCb"]}], "roleName": "p0pEbLCL"}' \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateRoleV3'
delete_file $TEMP_FILE

#- 176 adminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'FpHxMYF8' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetRoleV3'
delete_file $TEMP_FILE

#- 177 adminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId '36075xEp' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteRoleV3'
delete_file $TEMP_FILE

#- 178 adminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --body '{"isWildcard": true, "roleName": "dnYtpja5"}' \
    --roleId 'ig2isQZg' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateRoleV3'
delete_file $TEMP_FILE

#- 179 adminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'a6Vy76iz' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetRoleAdminStatusV3'
delete_file $TEMP_FILE

#- 180 adminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'PiQRjYa8' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateAdminRoleStatusV3'
delete_file $TEMP_FILE

#- 181 adminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'fv5fIt22' \
    >$TEMP_FILE 2>&1
update_status $? 'adminRemoveRoleAdminV3'
delete_file $TEMP_FILE

#- 182 adminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'tIZhjhgk' \
    --after 'igW22zXM' \
    --before 'WXfbcM0G' \
    --limit '68' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetRoleManagersV3'
delete_file $TEMP_FILE

#- 183 adminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --body '{"managers": [{"displayName": "ALIbFCQg", "namespace": "BcLNT6iO", "userId": "QVYx5rW2"}]}' \
    --roleId 'gMsI1aYB' \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddRoleManagersV3'
delete_file $TEMP_FILE

#- 184 adminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --body '{"managers": [{"displayName": "itSn3UDe", "namespace": "Kj97I4WY", "userId": "XLqjN7kt"}]}' \
    --roleId 'OBTraBxW' \
    >$TEMP_FILE 2>&1
update_status $? 'adminRemoveRoleManagersV3'
delete_file $TEMP_FILE

#- 185 adminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'RTVuYEqG' \
    --after 'lKDwTKXB' \
    --before 'rXiQcd9I' \
    --limit '96' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetRoleMembersV3'
delete_file $TEMP_FILE

#- 186 adminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --body '{"members": [{"displayName": "8kiCKeQJ", "namespace": "WZBvcq1E", "userId": "TvWBxYZJ"}]}' \
    --roleId 'h7B8gbnS' \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddRoleMembersV3'
delete_file $TEMP_FILE

#- 187 adminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --body '{"members": [{"displayName": "u9M2OxD2", "namespace": "udaeYpCX", "userId": "YSMiy87C"}]}' \
    --roleId 'TqEQBg36' \
    >$TEMP_FILE 2>&1
update_status $? 'adminRemoveRoleMembersV3'
delete_file $TEMP_FILE

#- 188 adminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --body '{"permissions": [{"action": 24, "resource": "y3sY2clr", "schedAction": 58, "schedCron": "cain0cOV", "schedRange": ["F1zHwDTI"]}]}' \
    --roleId '0sJ1Q0kp' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateRolePermissionsV3'
delete_file $TEMP_FILE

#- 189 adminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --body '{"permissions": [{"action": 15, "resource": "MTggSP2S", "schedAction": 75, "schedCron": "cuAP7vU9", "schedRange": ["71Czw2nb"]}]}' \
    --roleId 'g8C7Mvyw' \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddRolePermissionsV3'
delete_file $TEMP_FILE

#- 190 adminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --body '["hu6MjOju"]' \
    --roleId 'Gzo1Fz4t' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteRolePermissionsV3'
delete_file $TEMP_FILE

#- 191 adminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '93' \
    --resource '0aSn98N8' \
    --roleId 'qOUA0z92' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteRolePermissionV3'
delete_file $TEMP_FILE

#- 192 adminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetMyUserV3'
delete_file $TEMP_FILE

#- 193 userAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'RaDe8ngT' \
    --extendExp 'False' \
    --redirectUri 'MnG1LZyF' \
    --password '2mdYY6ZM' \
    --requestId 'fuTYTKsu' \
    --userName 'e48qBEBN' \
    >$TEMP_FILE 2>&1
update_status $? 'userAuthenticationV3'
delete_file $TEMP_FILE

#- 194 getCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    >$TEMP_FILE 2>&1
update_status $? 'getCountryLocationV3'
delete_file $TEMP_FILE

#- 195 logout
samples/cli/sample-apps Iam logout \
    >$TEMP_FILE 2>&1
update_status $? 'logout'
delete_file $TEMP_FILE

#- 196 adminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace 'AV5BTe6e' \
    --platformId 'c1zA92UR' \
    --userId 'CLSGPmRB' \
    >$TEMP_FILE 2>&1
update_status $? 'adminRetrieveUserThirdPartyPlatformTokenV3'
delete_file $TEMP_FILE

#- 197 revokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace 'ZWunHW7M' \
    --userId 'Yvr6QA7P' \
    >$TEMP_FILE 2>&1
update_status $? 'revokeUserV3'
delete_file $TEMP_FILE

#- 198 authorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'pepc92HA' \
    --codeChallengeMethod 'S256' \
    --redirectUri 'ACdeyfUp' \
    --scope 'giPpf8nx' \
    --state 'KJ3dnmtP' \
    --targetAuthPage 'wa64Y4gP' \
    --clientId 'EKMhhu9a' \
    --responseType 'code' \
    >$TEMP_FILE 2>&1
update_status $? 'authorizeV3'
delete_file $TEMP_FILE

#- 199 tokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token '3xJNtUlK' \
    >$TEMP_FILE 2>&1
update_status $? 'tokenIntrospectionV3'
delete_file $TEMP_FILE

#- 200 getJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    >$TEMP_FILE 2>&1
update_status $? 'getJWKSV3'
delete_file $TEMP_FILE

#- 201 retrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace 'LlIIAeHb' \
    --platformId 'm5M6LsY1' \
    --userId 'VMuIEcRl' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveUserThirdPartyPlatformTokenV3'
delete_file $TEMP_FILE

#- 202 authCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 's68M3MPM' \
    --clientId 'RPBepyyM' \
    --redirectUri 'z6zfR1pv' \
    --requestId 'TYYtDOiE' \
    >$TEMP_FILE 2>&1
update_status $? 'authCodeRequestV3'
delete_file $TEMP_FILE

#- 203 platformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --clientId 'i4RuEcHC' \
    --deviceId 'SGhpOZQF' \
    --platformToken 'lwOiuKGD' \
    --platformId 'FgK49YuK' \
    >$TEMP_FILE 2>&1
update_status $? 'platformTokenGrantV3'
delete_file $TEMP_FILE

#- 204 getRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    >$TEMP_FILE 2>&1
update_status $? 'getRevocationListV3'
delete_file $TEMP_FILE

#- 205 tokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'nXks0m8A' \
    >$TEMP_FILE 2>&1
update_status $? 'tokenRevocationV3'
delete_file $TEMP_FILE

#- 206 tokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --deviceId 'NrcRal7t' \
    --clientId 'a3fojA3h' \
    --code '4MMW3AJ5' \
    --codeVerifier 'zlsFBwjv' \
    --extendExp 'True' \
    --password 'mg6avudQ' \
    --redirectUri 'FF1CPNY9' \
    --refreshToken 'u2dVYdgl' \
    --username 'OOoCeK0k' \
    --grantType 'client_credentials' \
    >$TEMP_FILE 2>&1
update_status $? 'tokenGrantV3'
delete_file $TEMP_FILE

#- 207 platformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'BqVux3lX' \
    --code 'cD8aertA' \
    --error 'VCqs8XT8' \
    --openidAssocHandle 'xy3nJ06K' \
    --openidClaimedId 'kseA0ARj' \
    --openidIdentity '9ricfayv' \
    --openidMode 'nhi8MDdY' \
    --openidNs '4WLHoaUk' \
    --openidOpEndpoint 'YnQp5egd' \
    --openidResponseNonce 'mVE8Imiv' \
    --openidReturnTo 'NtQxqWRK' \
    --openidSig 'HohODoWO' \
    --openidSigned 'r98kjBUa' \
    --state 's9jjz2Fr' \
    >$TEMP_FILE 2>&1
update_status $? 'platformAuthenticationV3'
delete_file $TEMP_FILE

#- 208 publicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'False' \
    --languageCode 'iaGrcB7d' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetInputValidations'
delete_file $TEMP_FILE

#- 209 retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace 'IOVKIPSJ' \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3'
delete_file $TEMP_FILE

#- 210 publicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --body '{"platformUserIds": ["JHo5W8tK"]}' \
    --namespace 'H8ou9Sdb' \
    --platformId 'xSXcrEFC' \
    >$TEMP_FILE 2>&1
update_status $? 'publicListUserIDByPlatformUserIDsV3'
delete_file $TEMP_FILE

#- 211 publicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace 'wqeGNLdI' \
    --platformId 'BRdliFQV' \
    --platformUserId 'MKEzVUWl' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserByPlatformUserIDV3'
delete_file $TEMP_FILE

#- 212 publicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace 'UWDs2x1E' \
    --requestId 'QU0oepEv' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetAsyncStatus'
delete_file $TEMP_FILE

#- 213 publicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace 'cjaSgEh6' \
    --by 'jJnFxinI' \
    --query 'HJ1o7aq5' \
    >$TEMP_FILE 2>&1
update_status $? 'publicSearchUserV3'
delete_file $TEMP_FILE

#- 214 publicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --body '{"PasswordMD5Sum": "Zznd5eac", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "bTsuRlhr", "policyId": "eQVFID3o", "policyVersionId": "8hJWVjKI"}], "authType": "OAw70DvA", "country": "HhSGWUvz", "dateOfBirth": "q1Za3IBC", "displayName": "4vQFsUJP", "emailAddress": "fiaJp1rt", "password": "7OBgBCe6"}' \
    --namespace 'N0eI65Mn' \
    >$TEMP_FILE 2>&1
update_status $? 'publicCreateUserV3'
delete_file $TEMP_FILE

#- 215 checkUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace '5tngEYXg' \
    --field 'PVT5CqXD' \
    --query 'ZBVMJyJe' \
    >$TEMP_FILE 2>&1
update_status $? 'checkUserAvailability'
delete_file $TEMP_FILE

#- 216 publicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --body '{"userIds": ["KFO92YDt"]}' \
    --namespace 'aZvJoKS0' \
    >$TEMP_FILE 2>&1
update_status $? 'publicBulkGetUsers'
delete_file $TEMP_FILE

#- 217 publicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --body '{"emailAddress": "OxyipZuO", "languageTag": "4N9S2YCg"}' \
    --namespace 'Ha6XBcvG' \
    >$TEMP_FILE 2>&1
update_status $? 'publicForgotPasswordV3'
delete_file $TEMP_FILE

#- 218 getAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'RYk5rUtW' \
    --namespace 'HCnhmzzp' \
    >$TEMP_FILE 2>&1
update_status $? 'getAdminInvitationV3'
delete_file $TEMP_FILE

#- 219 createUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "V7tKNKYU", "policyId": "QVBXymWc", "policyVersionId": "NlHaFxYa"}], "authType": "GHUpmBFy", "country": "OrFKtxGN", "dateOfBirth": "Ai0fq4xC", "displayName": "hPLd2lOo", "password": "pc7XoVpd"}' \
    --invitationId 'd6rCpyMr' \
    --namespace 'nH9YHXh7' \
    >$TEMP_FILE 2>&1
update_status $? 'createUserFromInvitationV3'
delete_file $TEMP_FILE

#- 220 updateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --body '{"country": "KnCVOKY2", "dateOfBirth": "zsBRGtd8", "displayName": "QY2OLbij", "languageTag": "rvfr8hkn", "userName": "jWUWdMUX"}' \
    --namespace 'Hvw4pNlG' \
    >$TEMP_FILE 2>&1
update_status $? 'updateUserV3'
delete_file $TEMP_FILE

#- 221 publicUpdateUserV3
samples/cli/sample-apps Iam publicUpdateUserV3 \
    --body '{"country": "LjdBxLM0", "dateOfBirth": "79pDAbTg", "displayName": "msEYEq2G", "languageTag": "kYK1vYm9", "userName": "flXQ7CQo"}' \
    --namespace 'emnQG0dH' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdateUserV3'
delete_file $TEMP_FILE

#- 222 publicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --body '{"context": "0NVM9VEH", "emailAddress": "TPqDhkcu", "languageTag": "5vnz6GiN"}' \
    --namespace 'MboBJHml' \
    >$TEMP_FILE 2>&1
update_status $? 'publicSendVerificationCodeV3'
delete_file $TEMP_FILE

#- 223 publicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --body '{"code": "0LJmpPi4", "contactType": "mqhruiCZ", "languageTag": "LGGP5UXk"}' \
    --namespace 'HNTMapp5' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUserVerificationV3'
delete_file $TEMP_FILE

#- 224 publicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --body '{"code": "SbonsUJK", "country": "ADr60Ekd", "dateOfBirth": "FrpLsGt9", "displayName": "yTXWUSCQ", "emailAddress": "cMsHN7re", "password": "I22ks7I1"}' \
    --namespace '2tAZc8sx' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpgradeHeadlessAccountV3'
delete_file $TEMP_FILE

#- 225 publicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --body '{"emailAddress": "xLx9XQeq", "password": "NWLm8cNJ"}' \
    --namespace 'bYH5J4Wi' \
    >$TEMP_FILE 2>&1
update_status $? 'publicVerifyHeadlessAccountV3'
delete_file $TEMP_FILE

#- 226 publicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --body '{"languageTag": "JLv9NvHw", "newPassword": "tw2Mjcy9", "oldPassword": "ZL6Zs5Bu"}' \
    --namespace '2XYopLWZ' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdatePasswordV3'
delete_file $TEMP_FILE

#- 227 publicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace 'eUKJJNft' \
    --targetNamespace 'RpGgk1is' \
    >$TEMP_FILE 2>&1
update_status $? 'publicCreateJusticeUser'
delete_file $TEMP_FILE

#- 228 publicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --redirectUri 'eREzzRG6' \
    --ticket 'z9wmuHdd' \
    --namespace 'yOdibI1L' \
    --platformId 'VyqbdY8D' \
    >$TEMP_FILE 2>&1
update_status $? 'publicPlatformLinkV3'
delete_file $TEMP_FILE

#- 229 publicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --body '{"platformNamespace": "GZKAuoIK"}' \
    --namespace 'z3Pp3zLW' \
    --platformId 'UxMzMtSm' \
    >$TEMP_FILE 2>&1
update_status $? 'publicPlatformUnlinkV3'
delete_file $TEMP_FILE

#- 230 publicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace 'MmZP8nG0' \
    --platformId 'FoQP8q7a' \
    --clientId 'Ssb85gAh' \
    --redirectUri '9RD3ZzN6' \
    >$TEMP_FILE 2>&1
update_status $? 'publicWebLinkPlatform'
delete_file $TEMP_FILE

#- 231 publicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace 'N1iJ8ltt' \
    --platformId '9IRqCflg' \
    --state 'ln6r5f0s' \
    >$TEMP_FILE 2>&1
update_status $? 'publicWebLinkPlatformEstablish'
delete_file $TEMP_FILE

#- 232 resetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --body '{"code": "5H6lCf3Q", "emailAddress": "Ha11hLLC", "newPassword": "gw5av4LE"}' \
    --namespace 'xdabD8g2' \
    >$TEMP_FILE 2>&1
update_status $? 'resetPasswordV3'
delete_file $TEMP_FILE

#- 233 publicGetUserByUserIdV3
samples/cli/sample-apps Iam publicGetUserByUserIdV3 \
    --namespace 'cvHfMRup' \
    --userId 'DA5xbjs3' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserByUserIdV3'
delete_file $TEMP_FILE

#- 234 publicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace 'XRdHUJ0G' \
    --userId 'CmflIXkg' \
    --activeOnly 'True' \
    --after 'kTwoakq7' \
    --before 'sEejFZ1N' \
    --limit '39' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserBanHistoryV3'
delete_file $TEMP_FILE

#- 235 publicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace 'ONXb9w9h' \
    --userId 'sQHszIsf' \
    --after '0.27471178907021454' \
    --before '0.39589349599752466' \
    --limit '0.23784471047307376' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserLoginHistoriesV3'
delete_file $TEMP_FILE

#- 236 publicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace 'dd58dZP5' \
    --userId 'RvrinNtv' \
    --after 'BtqFSkA6' \
    --before '8mIVYJ5p' \
    --limit '89' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserPlatformAccountsV3'
delete_file $TEMP_FILE

#- 237 publicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --body '{"platformId": "VxBsLhty", "platformUserId": "3pecToXA"}' \
    --namespace '4M1oUFPh' \
    --userId 'go7Z6mwN' \
    >$TEMP_FILE 2>&1
update_status $? 'publicLinkPlatformAccount'
delete_file $TEMP_FILE

#- 238 publicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --password 'C4FY69mM' \
    --namespace '87joJNOG' \
    --userId 'B83Ns6Hl' \
    >$TEMP_FILE 2>&1
update_status $? 'publicValidateUserByUserIDAndPasswordV3'
delete_file $TEMP_FILE

#- 239 publicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after '5Poab6lK' \
    --before 'oVqNBUzI' \
    --isWildcard 'True' \
    --limit '80' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetRolesV3'
delete_file $TEMP_FILE

#- 240 publicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'fglquS2q' \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetRoleV3'
delete_file $TEMP_FILE

#- 241 publicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetMyUserV3'
delete_file $TEMP_FILE

#- 242 platformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId '2DoWr9zv' \
    --code 'FtKa2mOA' \
    --error 'qOokV1pl' \
    --state 'xQ2YriTP' \
    >$TEMP_FILE 2>&1
update_status $? 'platformAuthenticateSAMLV3Handler'
delete_file $TEMP_FILE

#- 243 loginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'fipD67jI' \
    --payload '2hiZkrtL' \
    >$TEMP_FILE 2>&1
update_status $? 'loginSSOClient'
delete_file $TEMP_FILE

#- 244 logoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'nh2U1RQl' \
    >$TEMP_FILE 2>&1
update_status $? 'logoutSSOClient'
delete_file $TEMP_FILE

#- 245 adminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --body '{"country": "MxkfNMPN", "dateOfBirth": "tqv2TMz1", "displayName": "b7SnzkXO", "languageTag": "ek83Igm1", "userName": "wkSWsYvA"}' \
    --namespace 'su18obUd' \
    --userId 'c8mbvXcw' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateUserV4'
delete_file $TEMP_FILE

#- 246 adminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --body '{"code": "cgMqOXMz", "emailAddress": "iXrVdsEc"}' \
    --namespace '3ClFP3mJ' \
    --userId 'wusCBTe4' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateUserEmailAddressV4'
delete_file $TEMP_FILE

#- 247 adminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace 'kLcuqL40' \
    --userId 'NYgekRav' \
    >$TEMP_FILE 2>&1
update_status $? 'adminListUserRolesV4'
delete_file $TEMP_FILE

#- 248 adminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --body '{"assignedNamespaces": ["paGTA9BT"], "roleId": "yCCyN4Fw"}' \
    --namespace '9i6mI2W3' \
    --userId 'tjjCqPVy' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateUserRoleV4'
delete_file $TEMP_FILE

#- 249 adminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --body '{"assignedNamespaces": ["Ys01hEYz"], "roleId": "Ww3qrcxM"}' \
    --namespace '0DPAXQBN' \
    --userId 'MP7j3xfP' \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddUserRoleV4'
delete_file $TEMP_FILE

#- 250 adminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --body '{"assignedNamespaces": ["aoZaWFsp"], "roleId": "kU5kn6Pl"}' \
    --namespace 'PqD4Agfa' \
    --userId 'sBfclBhZ' \
    >$TEMP_FILE 2>&1
update_status $? 'adminRemoveUserRoleV4'
delete_file $TEMP_FILE

#- 251 adminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'False' \
    --isWildcard 'False' \
    --limit '75' \
    --offset '27' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetRolesV4'
delete_file $TEMP_FILE

#- 252 adminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "isWildcard": false, "roleName": "hKwPyVIn"}' \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateRoleV4'
delete_file $TEMP_FILE

#- 253 adminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId '3qaHP7KN' \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetRoleV4'
delete_file $TEMP_FILE

#- 254 adminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'ulyfrENV' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteRoleV4'
delete_file $TEMP_FILE

#- 255 adminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --body '{"adminRole": false, "isWildcard": false, "roleName": "caWHf6T2"}' \
    --roleId 'xOOljn7c' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateRoleV4'
delete_file $TEMP_FILE

#- 256 adminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --body '{"permissions": [{"action": 4, "resource": "9efJI02T", "schedAction": 46, "schedCron": "rgLBFJEk", "schedRange": ["phFz0h6W"]}]}' \
    --roleId 'poVpVc2H' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateRolePermissionsV4'
delete_file $TEMP_FILE

#- 257 adminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --body '{"permissions": [{"action": 54, "resource": "Bmj6cEi0", "schedAction": 14, "schedCron": "Xl42ubCR", "schedRange": ["fy4GjKn5"]}]}' \
    --roleId 'ItHXLDZq' \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddRolePermissionsV4'
delete_file $TEMP_FILE

#- 258 adminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --body '["pRhqnR74"]' \
    --roleId '2GcbLuQO' \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteRolePermissionsV4'
delete_file $TEMP_FILE

#- 259 adminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'GMOEzmdj' \
    --after 'NhT0S46k' \
    --before 'qyfMBSaZ' \
    --limit '5' \
    >$TEMP_FILE 2>&1
update_status $? 'adminListAssignedUsersV4'
delete_file $TEMP_FILE

#- 260 adminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --body '{"assignedNamespaces": ["4SA16M8g"], "namespace": "QCD7aBHW", "userId": "CYevNkfc"}' \
    --roleId 'Qvl4Oso7' \
    >$TEMP_FILE 2>&1
update_status $? 'adminAssignUserToRoleV4'
delete_file $TEMP_FILE

#- 261 adminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --body '{"namespace": "tx65zXCi", "userId": "TfjorLFq"}' \
    --roleId 'TmIUFUoo' \
    >$TEMP_FILE 2>&1
update_status $? 'adminRevokeUserFromRoleV4'
delete_file $TEMP_FILE

#- 262 adminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"country": "nHBI13SZ", "dateOfBirth": "FHfm0F8v", "displayName": "S2BrZ3nq", "languageTag": "88YSSD7z", "userName": "V0C8FvVU"}' \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateMyUserV4'
delete_file $TEMP_FILE

#- 263 adminInviteUserV4
samples/cli/sample-apps Iam adminInviteUserV4 \
    --body '{"assignedNamespaces": ["3kRXBGPX"], "emailAddresses": ["Idft1biZ"], "isAdmin": true, "roleId": "hWyFPHdX"}' \
    >$TEMP_FILE 2>&1
update_status $? 'adminInviteUserV4'
delete_file $TEMP_FILE

#- 264 publicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "yvZEhYeU", "policyId": "Sy5Ukc65", "policyVersionId": "naP11R8X"}], "authType": "ww9vq9nM", "country": "a2Btgwyu", "dateOfBirth": "f2fjV30S", "displayName": "Lxi7uyha", "emailAddress": "eFtcO9XN", "password": "y63QO9vW", "passwordMD5Sum": "0ck7TEDE", "username": "8LeEQBeG", "verified": false}' \
    --namespace 'E6tHCr0G' \
    >$TEMP_FILE 2>&1
update_status $? 'publicCreateTestUserV4'
delete_file $TEMP_FILE

#- 265 publicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "vT0SAK91", "policyId": "y5vCeBIJ", "policyVersionId": "q0B9UcI6"}], "authType": "c5cre9ea", "country": "lHOZphcL", "dateOfBirth": "ncnjnmyU", "displayName": "8FSxXdCr", "emailAddress": "skoFqnow", "password": "q9Laz1GL", "passwordMD5Sum": "t5Mhf8Z7", "username": "ahmbVPm2"}' \
    --namespace 'g7xAFfRR' \
    >$TEMP_FILE 2>&1
update_status $? 'publicCreateUserV4'
delete_file $TEMP_FILE

#- 266 createUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "fWS9sftI", "policyId": "fHGe5bUT", "policyVersionId": "SXOv12PM"}], "authType": "cRO6E2Mk", "country": "re5q7Fva", "dateOfBirth": "ACp6he0f", "displayName": "zjkPNNS0", "password": "BfgF6inI", "username": "RsZ5hrqN"}' \
    --invitationId 'zVszGVP5' \
    --namespace 'P1iwhcf3' \
    >$TEMP_FILE 2>&1
update_status $? 'createUserFromInvitationV4'
delete_file $TEMP_FILE

#- 267 publicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --body '{"country": "0C1KHRZH", "dateOfBirth": "MGy5vbfZ", "displayName": "vYIFFctE", "languageTag": "KOLxSRxe", "userName": "0wmWBMcN"}' \
    --namespace 'iWoobB6o' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdateUserV4'
delete_file $TEMP_FILE

#- 268 publicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --body '{"code": "6alTQcP0", "emailAddress": "EpE9wGNV"}' \
    --namespace 'wkgfJJ2H' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdateUserEmailAddressV4'
delete_file $TEMP_FILE

#- 269 publicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --body '{"code": "IalfzgRp", "country": "Tf9lxF1J", "dateOfBirth": "PBizXZtr", "displayName": "Ge8LyOH2", "emailAddress": "4nneZHFe", "password": "Rld0bGA7", "username": "JxWYzaEa"}' \
    --namespace 'imvokcWX' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpgradeHeadlessAccountWithVerificationCodeV4'
delete_file $TEMP_FILE

#- 270 publicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --body '{"emailAddress": "59kwiYHg", "password": "HT6Ivd0f", "username": "GpU209nV"}' \
    --namespace 'RclumQTF' \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpgradeHeadlessAccountV4'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT