#!/bin/bash

#Meta:
#- random seed: 256
#- template file: go-cli-unit-test.j2

#Instructions:
#- Run the Justice SDK Mock Server first before running this script.

MODULE='cmd'
MODULE_PATH='../samples/cli'
TEMP_FILE='file.tmp'

OPERATIONS_COUNT=270

FINISHED_COUNT=0
SUCCESS_COUNT=0
FAILED_COUNT=0

export JUSTICE_BASE_URL="http://0.0.0.0:8080"
export APP_CLIENT_ID="admin"
export APP_CLIENT_SECRET="admin"
export NAMESPACE="test"

get_current_year() { echo $(date +'%Y'); }
get_adult_birthday() { echo "$(( $(get_current_year) - 22))-01-01"; }

get_random_int() { echo $(( $1 + ( RANDOM % (($2 - $1)) ) )); }
get_random_bool() { ( (( (RANDOM % 2) == 1)) && echo "true" ) || ( echo "false" ) }
get_random_element() { declare -a a=("$@"); r=$((RANDOM % ${#a[@]})); echo ${a[$r]}; }

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

echo "1..$OPERATIONS_COUNT"

#- 1 getBansType
$ sample-apps Iam getBansType -h \
    >$TEMP_FILE 2>&1
update_status $? 'getBansType'
delete_file $TEMP_FILE

#- 2 getListBanReason
$ sample-apps Iam getListBanReason -h \
    >$TEMP_FILE 2>&1
update_status $? 'getListBanReason'
delete_file $TEMP_FILE

#- 3 getClients
update_status 0 'getClients (skipped deprecated)'

#- 4 createClient
update_status 0 'createClient (skipped deprecated)'

#- 5 getClient
$ sample-apps Iam getClient -h \
    >$TEMP_FILE 2>&1
update_status $? 'getClient'
delete_file $TEMP_FILE

#- 6 updateClient
$ sample-apps Iam updateClient -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateClient'
delete_file $TEMP_FILE

#- 7 deleteClient
update_status 0 'deleteClient (skipped deprecated)'

#- 8 updateClientPermission
$ sample-apps Iam updateClientPermission -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateClientPermission'
delete_file $TEMP_FILE

#- 9 addClientPermission
$ sample-apps Iam addClientPermission -h \
    >$TEMP_FILE 2>&1
update_status $? 'addClientPermission'
delete_file $TEMP_FILE

#- 10 deleteClientPermission
$ sample-apps Iam deleteClientPermission -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteClientPermission'
delete_file $TEMP_FILE

#- 11 updateClientSecret
$ sample-apps Iam updateClientSecret -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateClientSecret'
delete_file $TEMP_FILE

#- 12 getClientsbyNamespace
$ sample-apps Iam getClientsbyNamespace -h \
    >$TEMP_FILE 2>&1
update_status $? 'getClientsbyNamespace'
delete_file $TEMP_FILE

#- 13 createClientByNamespace
$ sample-apps Iam createClientByNamespace -h \
    >$TEMP_FILE 2>&1
update_status $? 'createClientByNamespace'
delete_file $TEMP_FILE

#- 14 deleteClientByNamespace
$ sample-apps Iam deleteClientByNamespace -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteClientByNamespace'
delete_file $TEMP_FILE

#- 15 createUser
$ sample-apps Iam createUser -h \
    >$TEMP_FILE 2>&1
update_status $? 'createUser'
delete_file $TEMP_FILE

#- 16 getAdminUsersByRoleID
$ sample-apps Iam getAdminUsersByRoleID -h \
    >$TEMP_FILE 2>&1
update_status $? 'getAdminUsersByRoleID'
delete_file $TEMP_FILE

#- 17 getUserByLoginID
$ sample-apps Iam getUserByLoginID -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserByLoginID'
delete_file $TEMP_FILE

#- 18 getUserByPlatformUserID
$ sample-apps Iam getUserByPlatformUserID -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserByPlatformUserID'
delete_file $TEMP_FILE

#- 19 forgotPassword
$ sample-apps Iam forgotPassword -h \
    >$TEMP_FILE 2>&1
update_status $? 'forgotPassword'
delete_file $TEMP_FILE

#- 20 getUsersByLoginIds
$ sample-apps Iam getUsersByLoginIds -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUsersByLoginIds'
delete_file $TEMP_FILE

#- 21 resetPassword
$ sample-apps Iam resetPassword -h \
    >$TEMP_FILE 2>&1
update_status $? 'resetPassword'
delete_file $TEMP_FILE

#- 22 searchUser
update_status 0 'searchUser (skipped deprecated)'

#- 23 getUserByUserID
$ sample-apps Iam getUserByUserID -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserByUserID'
delete_file $TEMP_FILE

#- 24 updateUser
$ sample-apps Iam updateUser -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateUser'
delete_file $TEMP_FILE

#- 25 deleteUser
$ sample-apps Iam deleteUser -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteUser'
delete_file $TEMP_FILE

#- 26 banUser
$ sample-apps Iam banUser -h \
    >$TEMP_FILE 2>&1
update_status $? 'banUser'
delete_file $TEMP_FILE

#- 27 getUserBanHistory
$ sample-apps Iam getUserBanHistory -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserBanHistory'
delete_file $TEMP_FILE

#- 28 disableUserBan
$ sample-apps Iam disableUserBan -h \
    >$TEMP_FILE 2>&1
update_status $? 'disableUserBan'
delete_file $TEMP_FILE

#- 29 enableUserBan
$ sample-apps Iam enableUserBan -h \
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
$ sample-apps Iam getUserInformation -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserInformation'
delete_file $TEMP_FILE

#- 34 deleteUserInformation
$ sample-apps Iam deleteUserInformation -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteUserInformation'
delete_file $TEMP_FILE

#- 35 getUserLoginHistories
$ sample-apps Iam getUserLoginHistories -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserLoginHistories'
delete_file $TEMP_FILE

#- 36 updatePassword
update_status 0 'updatePassword (skipped deprecated)'

#- 37 saveUserPermission
$ sample-apps Iam saveUserPermission -h \
    >$TEMP_FILE 2>&1
update_status $? 'saveUserPermission'
delete_file $TEMP_FILE

#- 38 addUserPermission
$ sample-apps Iam addUserPermission -h \
    >$TEMP_FILE 2>&1
update_status $? 'addUserPermission'
delete_file $TEMP_FILE

#- 39 deleteUserPermission
$ sample-apps Iam deleteUserPermission -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteUserPermission'
delete_file $TEMP_FILE

#- 40 getUserPlatformAccounts
$ sample-apps Iam getUserPlatformAccounts -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserPlatformAccounts'
delete_file $TEMP_FILE

#- 41 getUserMapping
$ sample-apps Iam getUserMapping -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserMapping'
delete_file $TEMP_FILE

#- 42 getUserJusticePlatformAccount
update_status 0 'getUserJusticePlatformAccount (skipped deprecated)'

#- 43 platformLink
$ sample-apps Iam platformLink -h \
    >$TEMP_FILE 2>&1
update_status $? 'platformLink'
delete_file $TEMP_FILE

#- 44 platformUnlink
$ sample-apps Iam platformUnlink -h \
    >$TEMP_FILE 2>&1
update_status $? 'platformUnlink'
delete_file $TEMP_FILE

#- 45 getPublisherUser
$ sample-apps Iam getPublisherUser -h \
    >$TEMP_FILE 2>&1
update_status $? 'getPublisherUser'
delete_file $TEMP_FILE

#- 46 saveUserRoles
$ sample-apps Iam saveUserRoles -h \
    >$TEMP_FILE 2>&1
update_status $? 'saveUserRoles'
delete_file $TEMP_FILE

#- 47 addUserRole
$ sample-apps Iam addUserRole -h \
    >$TEMP_FILE 2>&1
update_status $? 'addUserRole'
delete_file $TEMP_FILE

#- 48 deleteUserRole
$ sample-apps Iam deleteUserRole -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteUserRole'
delete_file $TEMP_FILE

#- 49 upgradeHeadlessAccount
$ sample-apps Iam upgradeHeadlessAccount -h \
    >$TEMP_FILE 2>&1
update_status $? 'upgradeHeadlessAccount'
delete_file $TEMP_FILE

#- 50 upgradeHeadlessAccountWithVerificationCode
$ sample-apps Iam upgradeHeadlessAccountWithVerificationCode -h \
    >$TEMP_FILE 2>&1
update_status $? 'upgradeHeadlessAccountWithVerificationCode'
delete_file $TEMP_FILE

#- 51 userVerification
$ sample-apps Iam userVerification -h \
    >$TEMP_FILE 2>&1
update_status $? 'userVerification'
delete_file $TEMP_FILE

#- 52 sendVerificationCode
$ sample-apps Iam sendVerificationCode -h \
    >$TEMP_FILE 2>&1
update_status $? 'sendVerificationCode'
delete_file $TEMP_FILE

#- 53 authorization
$ sample-apps Iam authorization -h \
    >$TEMP_FILE 2>&1
update_status $? 'authorization'
delete_file $TEMP_FILE

#- 54 getJWKS
$ sample-apps Iam getJWKS -h \
    >$TEMP_FILE 2>&1
update_status $? 'getJWKS'
delete_file $TEMP_FILE

#- 55 platformTokenRequestHandler
update_status 0 'platformTokenRequestHandler (skipped deprecated)'

#- 56 revokeUser
$ sample-apps Iam revokeUser -h \
    >$TEMP_FILE 2>&1
update_status $? 'revokeUser'
delete_file $TEMP_FILE

#- 57 getRevocationList
$ sample-apps Iam getRevocationList -h \
    >$TEMP_FILE 2>&1
update_status $? 'getRevocationList'
delete_file $TEMP_FILE

#- 58 revokeToken
update_status 0 'revokeToken (skipped deprecated)'

#- 59 revokeAUser
update_status 0 'revokeAUser (skipped deprecated)'

#- 60 tokenGrant
$ sample-apps Iam tokenGrant -h \
    >$TEMP_FILE 2>&1
update_status $? 'tokenGrant'
delete_file $TEMP_FILE

#- 61 verifyToken
$ sample-apps Iam verifyToken -h \
    >$TEMP_FILE 2>&1
update_status $? 'verifyToken'
delete_file $TEMP_FILE

#- 62 getRoles
$ sample-apps Iam getRoles -h \
    >$TEMP_FILE 2>&1
update_status $? 'getRoles'
delete_file $TEMP_FILE

#- 63 createRole
$ sample-apps Iam createRole -h \
    >$TEMP_FILE 2>&1
update_status $? 'createRole'
delete_file $TEMP_FILE

#- 64 getRole
$ sample-apps Iam getRole -h \
    >$TEMP_FILE 2>&1
update_status $? 'getRole'
delete_file $TEMP_FILE

#- 65 updateRole
$ sample-apps Iam updateRole -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateRole'
delete_file $TEMP_FILE

#- 66 deleteRole
$ sample-apps Iam deleteRole -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteRole'
delete_file $TEMP_FILE

#- 67 getRoleAdminStatus
$ sample-apps Iam getRoleAdminStatus -h \
    >$TEMP_FILE 2>&1
update_status $? 'getRoleAdminStatus'
delete_file $TEMP_FILE

#- 68 setRoleAsAdmin
$ sample-apps Iam setRoleAsAdmin -h \
    >$TEMP_FILE 2>&1
update_status $? 'setRoleAsAdmin'
delete_file $TEMP_FILE

#- 69 removeRoleAdmin
$ sample-apps Iam removeRoleAdmin -h \
    >$TEMP_FILE 2>&1
update_status $? 'removeRoleAdmin'
delete_file $TEMP_FILE

#- 70 getRoleManagers
$ sample-apps Iam getRoleManagers -h \
    >$TEMP_FILE 2>&1
update_status $? 'getRoleManagers'
delete_file $TEMP_FILE

#- 71 addRoleManagers
$ sample-apps Iam addRoleManagers -h \
    >$TEMP_FILE 2>&1
update_status $? 'addRoleManagers'
delete_file $TEMP_FILE

#- 72 removeRoleManagers
$ sample-apps Iam removeRoleManagers -h \
    >$TEMP_FILE 2>&1
update_status $? 'removeRoleManagers'
delete_file $TEMP_FILE

#- 73 getRoleMembers
$ sample-apps Iam getRoleMembers -h \
    >$TEMP_FILE 2>&1
update_status $? 'getRoleMembers'
delete_file $TEMP_FILE

#- 74 addRoleMembers
$ sample-apps Iam addRoleMembers -h \
    >$TEMP_FILE 2>&1
update_status $? 'addRoleMembers'
delete_file $TEMP_FILE

#- 75 removeRoleMembers
$ sample-apps Iam removeRoleMembers -h \
    >$TEMP_FILE 2>&1
update_status $? 'removeRoleMembers'
delete_file $TEMP_FILE

#- 76 updateRolePermissions
$ sample-apps Iam updateRolePermissions -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateRolePermissions'
delete_file $TEMP_FILE

#- 77 addRolePermission
$ sample-apps Iam addRolePermission -h \
    >$TEMP_FILE 2>&1
update_status $? 'addRolePermission'
delete_file $TEMP_FILE

#- 78 deleteRolePermission
$ sample-apps Iam deleteRolePermission -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteRolePermission'
delete_file $TEMP_FILE

#- 79 adminGetAgeRestrictionStatusV2
$ sample-apps Iam adminGetAgeRestrictionStatusV2 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetAgeRestrictionStatusV2'
delete_file $TEMP_FILE

#- 80 adminUpdateAgeRestrictionConfigV2
$ sample-apps Iam adminUpdateAgeRestrictionConfigV2 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateAgeRestrictionConfigV2'
delete_file $TEMP_FILE

#- 81 getListCountryAgeRestriction
$ sample-apps Iam getListCountryAgeRestriction -h \
    >$TEMP_FILE 2>&1
update_status $? 'getListCountryAgeRestriction'
delete_file $TEMP_FILE

#- 82 updateCountryAgeRestriction
$ sample-apps Iam updateCountryAgeRestriction -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateCountryAgeRestriction'
delete_file $TEMP_FILE

#- 83 adminSearchUsersV2
$ sample-apps Iam adminSearchUsersV2 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminSearchUsersV2'
delete_file $TEMP_FILE

#- 84 adminGetUserByUserIdV2
$ sample-apps Iam adminGetUserByUserIdV2 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserByUserIdV2'
delete_file $TEMP_FILE

#- 85 adminUpdateUserV2
$ sample-apps Iam adminUpdateUserV2 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateUserV2'
delete_file $TEMP_FILE

#- 86 adminBanUserV2
$ sample-apps Iam adminBanUserV2 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminBanUserV2'
delete_file $TEMP_FILE

#- 87 adminGetUserBanV2
$ sample-apps Iam adminGetUserBanV2 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserBanV2'
delete_file $TEMP_FILE

#- 88 adminDisableUserV2
$ sample-apps Iam adminDisableUserV2 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminDisableUserV2'
delete_file $TEMP_FILE

#- 89 adminEnableUserV2
$ sample-apps Iam adminEnableUserV2 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminEnableUserV2'
delete_file $TEMP_FILE

#- 90 adminResetPasswordV2
$ sample-apps Iam adminResetPasswordV2 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminResetPasswordV2'
delete_file $TEMP_FILE

#- 91 adminDeletePlatformLinkV2
$ sample-apps Iam adminDeletePlatformLinkV2 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeletePlatformLinkV2'
delete_file $TEMP_FILE

#- 92 adminPutUserRolesV2
$ sample-apps Iam adminPutUserRolesV2 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminPutUserRolesV2'
delete_file $TEMP_FILE

#- 93 adminCreateUserRolesV2
$ sample-apps Iam adminCreateUserRolesV2 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateUserRolesV2'
delete_file $TEMP_FILE

#- 94 publicCreateUserV2
$ sample-apps Iam publicCreateUserV2 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicCreateUserV2'
delete_file $TEMP_FILE

#- 95 publicForgotPasswordV2
$ sample-apps Iam publicForgotPasswordV2 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicForgotPasswordV2'
delete_file $TEMP_FILE

#- 96 publicResetPasswordV2
$ sample-apps Iam publicResetPasswordV2 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicResetPasswordV2'
delete_file $TEMP_FILE

#- 97 publicGetUserByUserIDV2
$ sample-apps Iam publicGetUserByUserIDV2 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserByUserIDV2'
delete_file $TEMP_FILE

#- 98 publicUpdateUserV2
$ sample-apps Iam publicUpdateUserV2 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdateUserV2'
delete_file $TEMP_FILE

#- 99 publicGetUserBan
$ sample-apps Iam publicGetUserBan -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserBan'
delete_file $TEMP_FILE

#- 100 publicUpdatePasswordV2
$ sample-apps Iam publicUpdatePasswordV2 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdatePasswordV2'
delete_file $TEMP_FILE

#- 101 getListJusticePlatformAccounts
$ sample-apps Iam getListJusticePlatformAccounts -h \
    >$TEMP_FILE 2>&1
update_status $? 'getListJusticePlatformAccounts'
delete_file $TEMP_FILE

#- 102 publicPlatformLinkV2
$ sample-apps Iam publicPlatformLinkV2 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicPlatformLinkV2'
delete_file $TEMP_FILE

#- 103 publicDeletePlatformLinkV2
$ sample-apps Iam publicDeletePlatformLinkV2 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicDeletePlatformLinkV2'
delete_file $TEMP_FILE

#- 104 adminGetBansTypeV3
$ sample-apps Iam adminGetBansTypeV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetBansTypeV3'
delete_file $TEMP_FILE

#- 105 adminGetListBanReasonV3
$ sample-apps Iam adminGetListBanReasonV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetListBanReasonV3'
delete_file $TEMP_FILE

#- 106 adminGetInputValidations
$ sample-apps Iam adminGetInputValidations -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetInputValidations'
delete_file $TEMP_FILE

#- 107 adminUpdateInputValidations
$ sample-apps Iam adminUpdateInputValidations -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateInputValidations'
delete_file $TEMP_FILE

#- 108 adminResetInputValidations
$ sample-apps Iam adminResetInputValidations -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminResetInputValidations'
delete_file $TEMP_FILE

#- 109 listAdminsV3
$ sample-apps Iam listAdminsV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'listAdminsV3'
delete_file $TEMP_FILE

#- 110 adminGetAgeRestrictionStatusV3
$ sample-apps Iam adminGetAgeRestrictionStatusV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetAgeRestrictionStatusV3'
delete_file $TEMP_FILE

#- 111 adminUpdateAgeRestrictionConfigV3
$ sample-apps Iam adminUpdateAgeRestrictionConfigV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateAgeRestrictionConfigV3'
delete_file $TEMP_FILE

#- 112 adminGetListCountryAgeRestrictionV3
$ sample-apps Iam adminGetListCountryAgeRestrictionV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetListCountryAgeRestrictionV3'
delete_file $TEMP_FILE

#- 113 adminUpdateCountryAgeRestrictionV3
$ sample-apps Iam adminUpdateCountryAgeRestrictionV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateCountryAgeRestrictionV3'
delete_file $TEMP_FILE

#- 114 adminGetBannedUsersV3
$ sample-apps Iam adminGetBannedUsersV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetBannedUsersV3'
delete_file $TEMP_FILE

#- 115 adminGetBansTypeWithNamespaceV3
$ sample-apps Iam adminGetBansTypeWithNamespaceV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetBansTypeWithNamespaceV3'
delete_file $TEMP_FILE

#- 116 adminGetClientsByNamespaceV3
$ sample-apps Iam adminGetClientsByNamespaceV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetClientsByNamespaceV3'
delete_file $TEMP_FILE

#- 117 adminCreateClientV3
$ sample-apps Iam adminCreateClientV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateClientV3'
delete_file $TEMP_FILE

#- 118 adminGetClientsbyNamespacebyIDV3
$ sample-apps Iam adminGetClientsbyNamespacebyIDV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetClientsbyNamespacebyIDV3'
delete_file $TEMP_FILE

#- 119 adminDeleteClientV3
$ sample-apps Iam adminDeleteClientV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteClientV3'
delete_file $TEMP_FILE

#- 120 adminUpdateClientV3
$ sample-apps Iam adminUpdateClientV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateClientV3'
delete_file $TEMP_FILE

#- 121 adminUpdateClientPermissionV3
$ sample-apps Iam adminUpdateClientPermissionV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateClientPermissionV3'
delete_file $TEMP_FILE

#- 122 adminAddClientPermissionsV3
$ sample-apps Iam adminAddClientPermissionsV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddClientPermissionsV3'
delete_file $TEMP_FILE

#- 123 adminDeleteClientPermissionV3
$ sample-apps Iam adminDeleteClientPermissionV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteClientPermissionV3'
delete_file $TEMP_FILE

#- 124 retrieveAllThirdPartyLoginPlatformCredentialV3
$ sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveAllThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 125 retrieveAllActiveThirdPartyLoginPlatformCredentialV3
$ sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveAllActiveThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 126 retrieveAllSSOLoginPlatformCredentialV3
$ sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveAllSSOLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 127 retrieveThirdPartyLoginPlatformCredentialV3
$ sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 128 addThirdPartyLoginPlatformCredentialV3
$ sample-apps Iam addThirdPartyLoginPlatformCredentialV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'addThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 129 deleteThirdPartyLoginPlatformCredentialV3
$ sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 130 updateThirdPartyLoginPlatformCredentialV3
$ sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateThirdPartyLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 131 updateThirdPartyLoginPlatformDomainV3
$ sample-apps Iam updateThirdPartyLoginPlatformDomainV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateThirdPartyLoginPlatformDomainV3'
delete_file $TEMP_FILE

#- 132 deleteThirdPartyLoginPlatformDomainV3
$ sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteThirdPartyLoginPlatformDomainV3'
delete_file $TEMP_FILE

#- 133 retrieveSSOLoginPlatformCredential
$ sample-apps Iam retrieveSSOLoginPlatformCredential -h \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveSSOLoginPlatformCredential'
delete_file $TEMP_FILE

#- 134 addSSOLoginPlatformCredential
$ sample-apps Iam addSSOLoginPlatformCredential -h \
    >$TEMP_FILE 2>&1
update_status $? 'addSSOLoginPlatformCredential'
delete_file $TEMP_FILE

#- 135 deleteSSOLoginPlatformCredentialV3
$ sample-apps Iam deleteSSOLoginPlatformCredentialV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteSSOLoginPlatformCredentialV3'
delete_file $TEMP_FILE

#- 136 updateSSOPlatformCredential
$ sample-apps Iam updateSSOPlatformCredential -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateSSOPlatformCredential'
delete_file $TEMP_FILE

#- 137 adminGetUserByPlatformUserIDV3
$ sample-apps Iam adminGetUserByPlatformUserIDV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserByPlatformUserIDV3'
delete_file $TEMP_FILE

#- 138 getAdminUsersByRoleIdV3
$ sample-apps Iam getAdminUsersByRoleIdV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getAdminUsersByRoleIdV3'
delete_file $TEMP_FILE

#- 139 adminGetUserByEmailAddressV3
$ sample-apps Iam adminGetUserByEmailAddressV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserByEmailAddressV3'
delete_file $TEMP_FILE

#- 140 adminListUserIDByUserIDsV3
$ sample-apps Iam adminListUserIDByUserIDsV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminListUserIDByUserIDsV3'
delete_file $TEMP_FILE

#- 141 adminInviteUserV3
$ sample-apps Iam adminInviteUserV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminInviteUserV3'
delete_file $TEMP_FILE

#- 142 adminListUsersV3
$ sample-apps Iam adminListUsersV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminListUsersV3'
delete_file $TEMP_FILE

#- 143 adminSearchUserV3
$ sample-apps Iam adminSearchUserV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminSearchUserV3'
delete_file $TEMP_FILE

#- 144 adminGetBulkUserByEmailAddressV3
$ sample-apps Iam adminGetBulkUserByEmailAddressV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetBulkUserByEmailAddressV3'
delete_file $TEMP_FILE

#- 145 adminGetUserByUserIdV3
$ sample-apps Iam adminGetUserByUserIdV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserByUserIdV3'
delete_file $TEMP_FILE

#- 146 adminUpdateUserV3
$ sample-apps Iam adminUpdateUserV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateUserV3'
delete_file $TEMP_FILE

#- 147 adminGetUserBanV3
$ sample-apps Iam adminGetUserBanV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserBanV3'
delete_file $TEMP_FILE

#- 148 adminBanUserV3
$ sample-apps Iam adminBanUserV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminBanUserV3'
delete_file $TEMP_FILE

#- 149 adminUpdateUserBanV3
$ sample-apps Iam adminUpdateUserBanV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateUserBanV3'
delete_file $TEMP_FILE

#- 150 adminSendVerificationCodeV3
$ sample-apps Iam adminSendVerificationCodeV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminSendVerificationCodeV3'
delete_file $TEMP_FILE

#- 151 adminVerifyAccountV3
$ sample-apps Iam adminVerifyAccountV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminVerifyAccountV3'
delete_file $TEMP_FILE

#- 152 getUserVerificationCode
$ sample-apps Iam getUserVerificationCode -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserVerificationCode'
delete_file $TEMP_FILE

#- 153 adminGetUserDeletionStatusV3
$ sample-apps Iam adminGetUserDeletionStatusV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserDeletionStatusV3'
delete_file $TEMP_FILE

#- 154 adminUpdateUserDeletionStatusV3
$ sample-apps Iam adminUpdateUserDeletionStatusV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateUserDeletionStatusV3'
delete_file $TEMP_FILE

#- 155 adminUpgradeHeadlessAccountV3
$ sample-apps Iam adminUpgradeHeadlessAccountV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpgradeHeadlessAccountV3'
delete_file $TEMP_FILE

#- 156 adminDeleteUserInformationV3
$ sample-apps Iam adminDeleteUserInformationV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteUserInformationV3'
delete_file $TEMP_FILE

#- 157 adminGetUserLoginHistoriesV3
$ sample-apps Iam adminGetUserLoginHistoriesV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserLoginHistoriesV3'
delete_file $TEMP_FILE

#- 158 adminUpdateUserPermissionV3
$ sample-apps Iam adminUpdateUserPermissionV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateUserPermissionV3'
delete_file $TEMP_FILE

#- 159 adminAddUserPermissionsV3
$ sample-apps Iam adminAddUserPermissionsV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddUserPermissionsV3'
delete_file $TEMP_FILE

#- 160 adminDeleteUserPermissionBulkV3
$ sample-apps Iam adminDeleteUserPermissionBulkV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteUserPermissionBulkV3'
delete_file $TEMP_FILE

#- 161 adminDeleteUserPermissionV3
$ sample-apps Iam adminDeleteUserPermissionV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteUserPermissionV3'
delete_file $TEMP_FILE

#- 162 adminGetUserPlatformAccountsV3
$ sample-apps Iam adminGetUserPlatformAccountsV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetUserPlatformAccountsV3'
delete_file $TEMP_FILE

#- 163 adminGetListJusticePlatformAccounts
$ sample-apps Iam adminGetListJusticePlatformAccounts -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetListJusticePlatformAccounts'
delete_file $TEMP_FILE

#- 164 adminCreateJusticeUser
$ sample-apps Iam adminCreateJusticeUser -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateJusticeUser'
delete_file $TEMP_FILE

#- 165 adminLinkPlatformAccount
$ sample-apps Iam adminLinkPlatformAccount -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminLinkPlatformAccount'
delete_file $TEMP_FILE

#- 166 adminPlatformUnlinkV3
$ sample-apps Iam adminPlatformUnlinkV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminPlatformUnlinkV3'
delete_file $TEMP_FILE

#- 167 adminPlatformLinkV3
$ sample-apps Iam adminPlatformLinkV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminPlatformLinkV3'
delete_file $TEMP_FILE

#- 168 adminDeleteUserRolesV3
$ sample-apps Iam adminDeleteUserRolesV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteUserRolesV3'
delete_file $TEMP_FILE

#- 169 adminSaveUserRoleV3
$ sample-apps Iam adminSaveUserRoleV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminSaveUserRoleV3'
delete_file $TEMP_FILE

#- 170 adminAddUserRoleV3
$ sample-apps Iam adminAddUserRoleV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddUserRoleV3'
delete_file $TEMP_FILE

#- 171 adminDeleteUserRoleV3
$ sample-apps Iam adminDeleteUserRoleV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteUserRoleV3'
delete_file $TEMP_FILE

#- 172 adminUpdateUserStatusV3
$ sample-apps Iam adminUpdateUserStatusV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateUserStatusV3'
delete_file $TEMP_FILE

#- 173 adminVerifyUserWithoutVerificationCodeV3
$ sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminVerifyUserWithoutVerificationCodeV3'
delete_file $TEMP_FILE

#- 174 adminGetRolesV3
$ sample-apps Iam adminGetRolesV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetRolesV3'
delete_file $TEMP_FILE

#- 175 adminCreateRoleV3
$ sample-apps Iam adminCreateRoleV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateRoleV3'
delete_file $TEMP_FILE

#- 176 adminGetRoleV3
$ sample-apps Iam adminGetRoleV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetRoleV3'
delete_file $TEMP_FILE

#- 177 adminDeleteRoleV3
$ sample-apps Iam adminDeleteRoleV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteRoleV3'
delete_file $TEMP_FILE

#- 178 adminUpdateRoleV3
$ sample-apps Iam adminUpdateRoleV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateRoleV3'
delete_file $TEMP_FILE

#- 179 adminGetRoleAdminStatusV3
$ sample-apps Iam adminGetRoleAdminStatusV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetRoleAdminStatusV3'
delete_file $TEMP_FILE

#- 180 adminUpdateAdminRoleStatusV3
$ sample-apps Iam adminUpdateAdminRoleStatusV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateAdminRoleStatusV3'
delete_file $TEMP_FILE

#- 181 adminRemoveRoleAdminV3
$ sample-apps Iam adminRemoveRoleAdminV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminRemoveRoleAdminV3'
delete_file $TEMP_FILE

#- 182 adminGetRoleManagersV3
$ sample-apps Iam adminGetRoleManagersV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetRoleManagersV3'
delete_file $TEMP_FILE

#- 183 adminAddRoleManagersV3
$ sample-apps Iam adminAddRoleManagersV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddRoleManagersV3'
delete_file $TEMP_FILE

#- 184 adminRemoveRoleManagersV3
$ sample-apps Iam adminRemoveRoleManagersV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminRemoveRoleManagersV3'
delete_file $TEMP_FILE

#- 185 adminGetRoleMembersV3
$ sample-apps Iam adminGetRoleMembersV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetRoleMembersV3'
delete_file $TEMP_FILE

#- 186 adminAddRoleMembersV3
$ sample-apps Iam adminAddRoleMembersV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddRoleMembersV3'
delete_file $TEMP_FILE

#- 187 adminRemoveRoleMembersV3
$ sample-apps Iam adminRemoveRoleMembersV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminRemoveRoleMembersV3'
delete_file $TEMP_FILE

#- 188 adminUpdateRolePermissionsV3
$ sample-apps Iam adminUpdateRolePermissionsV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateRolePermissionsV3'
delete_file $TEMP_FILE

#- 189 adminAddRolePermissionsV3
$ sample-apps Iam adminAddRolePermissionsV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddRolePermissionsV3'
delete_file $TEMP_FILE

#- 190 adminDeleteRolePermissionsV3
$ sample-apps Iam adminDeleteRolePermissionsV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteRolePermissionsV3'
delete_file $TEMP_FILE

#- 191 adminDeleteRolePermissionV3
$ sample-apps Iam adminDeleteRolePermissionV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteRolePermissionV3'
delete_file $TEMP_FILE

#- 192 adminGetMyUserV3
$ sample-apps Iam adminGetMyUserV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetMyUserV3'
delete_file $TEMP_FILE

#- 193 userAuthenticationV3
$ sample-apps Iam userAuthenticationV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'userAuthenticationV3'
delete_file $TEMP_FILE

#- 194 getCountryLocationV3
$ sample-apps Iam getCountryLocationV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getCountryLocationV3'
delete_file $TEMP_FILE

#- 195 logout
$ sample-apps Iam logout -h \
    >$TEMP_FILE 2>&1
update_status $? 'logout'
delete_file $TEMP_FILE

#- 196 adminRetrieveUserThirdPartyPlatformTokenV3
$ sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminRetrieveUserThirdPartyPlatformTokenV3'
delete_file $TEMP_FILE

#- 197 revokeUserV3
$ sample-apps Iam revokeUserV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'revokeUserV3'
delete_file $TEMP_FILE

#- 198 authorizeV3
$ sample-apps Iam authorizeV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'authorizeV3'
delete_file $TEMP_FILE

#- 199 tokenIntrospectionV3
$ sample-apps Iam tokenIntrospectionV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'tokenIntrospectionV3'
delete_file $TEMP_FILE

#- 200 getJWKSV3
$ sample-apps Iam getJWKSV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getJWKSV3'
delete_file $TEMP_FILE

#- 201 retrieveUserThirdPartyPlatformTokenV3
$ sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveUserThirdPartyPlatformTokenV3'
delete_file $TEMP_FILE

#- 202 authCodeRequestV3
$ sample-apps Iam authCodeRequestV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'authCodeRequestV3'
delete_file $TEMP_FILE

#- 203 platformTokenGrantV3
$ sample-apps Iam platformTokenGrantV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'platformTokenGrantV3'
delete_file $TEMP_FILE

#- 204 getRevocationListV3
$ sample-apps Iam getRevocationListV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getRevocationListV3'
delete_file $TEMP_FILE

#- 205 tokenRevocationV3
$ sample-apps Iam tokenRevocationV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'tokenRevocationV3'
delete_file $TEMP_FILE

#- 206 tokenGrantV3
$ sample-apps Iam tokenGrantV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'tokenGrantV3'
delete_file $TEMP_FILE

#- 207 platformAuthenticationV3
$ sample-apps Iam platformAuthenticationV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'platformAuthenticationV3'
delete_file $TEMP_FILE

#- 208 publicGetInputValidations
$ sample-apps Iam publicGetInputValidations -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetInputValidations'
delete_file $TEMP_FILE

#- 209 retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
$ sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3'
delete_file $TEMP_FILE

#- 210 publicListUserIDByPlatformUserIDsV3
$ sample-apps Iam publicListUserIDByPlatformUserIDsV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicListUserIDByPlatformUserIDsV3'
delete_file $TEMP_FILE

#- 211 publicGetUserByPlatformUserIDV3
$ sample-apps Iam publicGetUserByPlatformUserIDV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserByPlatformUserIDV3'
delete_file $TEMP_FILE

#- 212 publicGetAsyncStatus
$ sample-apps Iam publicGetAsyncStatus -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetAsyncStatus'
delete_file $TEMP_FILE

#- 213 publicSearchUserV3
$ sample-apps Iam publicSearchUserV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicSearchUserV3'
delete_file $TEMP_FILE

#- 214 publicCreateUserV3
$ sample-apps Iam publicCreateUserV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicCreateUserV3'
delete_file $TEMP_FILE

#- 215 checkUserAvailability
$ sample-apps Iam checkUserAvailability -h \
    >$TEMP_FILE 2>&1
update_status $? 'checkUserAvailability'
delete_file $TEMP_FILE

#- 216 publicBulkGetUsers
$ sample-apps Iam publicBulkGetUsers -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicBulkGetUsers'
delete_file $TEMP_FILE

#- 217 publicForgotPasswordV3
$ sample-apps Iam publicForgotPasswordV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicForgotPasswordV3'
delete_file $TEMP_FILE

#- 218 getAdminInvitationV3
$ sample-apps Iam getAdminInvitationV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getAdminInvitationV3'
delete_file $TEMP_FILE

#- 219 createUserFromInvitationV3
$ sample-apps Iam createUserFromInvitationV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'createUserFromInvitationV3'
delete_file $TEMP_FILE

#- 220 updateUserV3
$ sample-apps Iam updateUserV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateUserV3'
delete_file $TEMP_FILE

#- 221 publicUpdateUserV3
$ sample-apps Iam publicUpdateUserV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdateUserV3'
delete_file $TEMP_FILE

#- 222 publicSendVerificationCodeV3
$ sample-apps Iam publicSendVerificationCodeV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicSendVerificationCodeV3'
delete_file $TEMP_FILE

#- 223 publicUserVerificationV3
$ sample-apps Iam publicUserVerificationV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicUserVerificationV3'
delete_file $TEMP_FILE

#- 224 publicUpgradeHeadlessAccountV3
$ sample-apps Iam publicUpgradeHeadlessAccountV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpgradeHeadlessAccountV3'
delete_file $TEMP_FILE

#- 225 publicVerifyHeadlessAccountV3
$ sample-apps Iam publicVerifyHeadlessAccountV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicVerifyHeadlessAccountV3'
delete_file $TEMP_FILE

#- 226 publicUpdatePasswordV3
$ sample-apps Iam publicUpdatePasswordV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdatePasswordV3'
delete_file $TEMP_FILE

#- 227 publicCreateJusticeUser
$ sample-apps Iam publicCreateJusticeUser -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicCreateJusticeUser'
delete_file $TEMP_FILE

#- 228 publicPlatformLinkV3
$ sample-apps Iam publicPlatformLinkV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicPlatformLinkV3'
delete_file $TEMP_FILE

#- 229 publicPlatformUnlinkV3
$ sample-apps Iam publicPlatformUnlinkV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicPlatformUnlinkV3'
delete_file $TEMP_FILE

#- 230 publicWebLinkPlatform
$ sample-apps Iam publicWebLinkPlatform -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicWebLinkPlatform'
delete_file $TEMP_FILE

#- 231 publicWebLinkPlatformEstablish
$ sample-apps Iam publicWebLinkPlatformEstablish -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicWebLinkPlatformEstablish'
delete_file $TEMP_FILE

#- 232 resetPasswordV3
$ sample-apps Iam resetPasswordV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'resetPasswordV3'
delete_file $TEMP_FILE

#- 233 publicGetUserByUserIdV3
$ sample-apps Iam publicGetUserByUserIdV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserByUserIdV3'
delete_file $TEMP_FILE

#- 234 publicGetUserBanHistoryV3
$ sample-apps Iam publicGetUserBanHistoryV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserBanHistoryV3'
delete_file $TEMP_FILE

#- 235 publicGetUserLoginHistoriesV3
$ sample-apps Iam publicGetUserLoginHistoriesV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserLoginHistoriesV3'
delete_file $TEMP_FILE

#- 236 publicGetUserPlatformAccountsV3
$ sample-apps Iam publicGetUserPlatformAccountsV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserPlatformAccountsV3'
delete_file $TEMP_FILE

#- 237 publicLinkPlatformAccount
$ sample-apps Iam publicLinkPlatformAccount -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicLinkPlatformAccount'
delete_file $TEMP_FILE

#- 238 publicValidateUserByUserIDAndPasswordV3
$ sample-apps Iam publicValidateUserByUserIDAndPasswordV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicValidateUserByUserIDAndPasswordV3'
delete_file $TEMP_FILE

#- 239 publicGetRolesV3
$ sample-apps Iam publicGetRolesV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetRolesV3'
delete_file $TEMP_FILE

#- 240 publicGetRoleV3
$ sample-apps Iam publicGetRoleV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetRoleV3'
delete_file $TEMP_FILE

#- 241 publicGetMyUserV3
$ sample-apps Iam publicGetMyUserV3 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetMyUserV3'
delete_file $TEMP_FILE

#- 242 platformAuthenticateSAMLV3Handler
$ sample-apps Iam platformAuthenticateSAMLV3Handler -h \
    >$TEMP_FILE 2>&1
update_status $? 'platformAuthenticateSAMLV3Handler'
delete_file $TEMP_FILE

#- 243 loginSSOClient
$ sample-apps Iam loginSSOClient -h \
    >$TEMP_FILE 2>&1
update_status $? 'loginSSOClient'
delete_file $TEMP_FILE

#- 244 logoutSSOClient
$ sample-apps Iam logoutSSOClient -h \
    >$TEMP_FILE 2>&1
update_status $? 'logoutSSOClient'
delete_file $TEMP_FILE

#- 245 adminUpdateUserV4
$ sample-apps Iam adminUpdateUserV4 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateUserV4'
delete_file $TEMP_FILE

#- 246 adminUpdateUserEmailAddressV4
$ sample-apps Iam adminUpdateUserEmailAddressV4 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateUserEmailAddressV4'
delete_file $TEMP_FILE

#- 247 adminListUserRolesV4
$ sample-apps Iam adminListUserRolesV4 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminListUserRolesV4'
delete_file $TEMP_FILE

#- 248 adminUpdateUserRoleV4
$ sample-apps Iam adminUpdateUserRoleV4 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateUserRoleV4'
delete_file $TEMP_FILE

#- 249 adminAddUserRoleV4
$ sample-apps Iam adminAddUserRoleV4 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddUserRoleV4'
delete_file $TEMP_FILE

#- 250 adminRemoveUserRoleV4
$ sample-apps Iam adminRemoveUserRoleV4 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminRemoveUserRoleV4'
delete_file $TEMP_FILE

#- 251 adminGetRolesV4
$ sample-apps Iam adminGetRolesV4 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetRolesV4'
delete_file $TEMP_FILE

#- 252 adminCreateRoleV4
$ sample-apps Iam adminCreateRoleV4 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminCreateRoleV4'
delete_file $TEMP_FILE

#- 253 adminGetRoleV4
$ sample-apps Iam adminGetRoleV4 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminGetRoleV4'
delete_file $TEMP_FILE

#- 254 adminDeleteRoleV4
$ sample-apps Iam adminDeleteRoleV4 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteRoleV4'
delete_file $TEMP_FILE

#- 255 adminUpdateRoleV4
$ sample-apps Iam adminUpdateRoleV4 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateRoleV4'
delete_file $TEMP_FILE

#- 256 adminUpdateRolePermissionsV4
$ sample-apps Iam adminUpdateRolePermissionsV4 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateRolePermissionsV4'
delete_file $TEMP_FILE

#- 257 adminAddRolePermissionsV4
$ sample-apps Iam adminAddRolePermissionsV4 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminAddRolePermissionsV4'
delete_file $TEMP_FILE

#- 258 adminDeleteRolePermissionsV4
$ sample-apps Iam adminDeleteRolePermissionsV4 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminDeleteRolePermissionsV4'
delete_file $TEMP_FILE

#- 259 adminListAssignedUsersV4
$ sample-apps Iam adminListAssignedUsersV4 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminListAssignedUsersV4'
delete_file $TEMP_FILE

#- 260 adminAssignUserToRoleV4
$ sample-apps Iam adminAssignUserToRoleV4 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminAssignUserToRoleV4'
delete_file $TEMP_FILE

#- 261 adminRevokeUserFromRoleV4
$ sample-apps Iam adminRevokeUserFromRoleV4 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminRevokeUserFromRoleV4'
delete_file $TEMP_FILE

#- 262 adminUpdateMyUserV4
$ sample-apps Iam adminUpdateMyUserV4 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminUpdateMyUserV4'
delete_file $TEMP_FILE

#- 263 adminInviteUserV4
$ sample-apps Iam adminInviteUserV4 -h \
    >$TEMP_FILE 2>&1
update_status $? 'adminInviteUserV4'
delete_file $TEMP_FILE

#- 264 publicCreateTestUserV4
$ sample-apps Iam publicCreateTestUserV4 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicCreateTestUserV4'
delete_file $TEMP_FILE

#- 265 publicCreateUserV4
$ sample-apps Iam publicCreateUserV4 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicCreateUserV4'
delete_file $TEMP_FILE

#- 266 createUserFromInvitationV4
$ sample-apps Iam createUserFromInvitationV4 -h \
    >$TEMP_FILE 2>&1
update_status $? 'createUserFromInvitationV4'
delete_file $TEMP_FILE

#- 267 publicUpdateUserV4
$ sample-apps Iam publicUpdateUserV4 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdateUserV4'
delete_file $TEMP_FILE

#- 268 publicUpdateUserEmailAddressV4
$ sample-apps Iam publicUpdateUserEmailAddressV4 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpdateUserEmailAddressV4'
delete_file $TEMP_FILE

#- 269 publicUpgradeHeadlessAccountWithVerificationCodeV4
$ sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpgradeHeadlessAccountWithVerificationCodeV4'
delete_file $TEMP_FILE

#- 270 publicUpgradeHeadlessAccountV4
$ sample-apps Iam publicUpgradeHeadlessAccountV4 -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicUpgradeHeadlessAccountV4'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT