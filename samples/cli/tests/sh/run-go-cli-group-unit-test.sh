#!/bin/bash

#Meta:
#- random seed: 256
#- template file: go-cli-unit-test.j2

#Instructions:
#- Run the Justice SDK Mock Server first before running this script.

MODULE='cmd'
MODULE_PATH='../samples/cli'
TEMP_FILE='file.tmp'

OPERATIONS_COUNT=44

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

echo 'TAP version 13'
echo "1..$OPERATIONS_COUNT"

#- 1 listGroupConfigurationAdminV1
$ sample-apps Group listGroupConfigurationAdminV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'listGroupConfigurationAdminV1'
delete_file $TEMP_FILE

#- 2 createGroupConfigurationAdminV1
$ sample-apps Group createGroupConfigurationAdminV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'createGroupConfigurationAdminV1'
delete_file $TEMP_FILE

#- 3 initiateGroupConfigurationAdminV1
$ sample-apps Group initiateGroupConfigurationAdminV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'initiateGroupConfigurationAdminV1'
delete_file $TEMP_FILE

#- 4 getGroupConfigurationAdminV1
$ sample-apps Group getGroupConfigurationAdminV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getGroupConfigurationAdminV1'
delete_file $TEMP_FILE

#- 5 deleteGroupConfigurationV1
$ sample-apps Group deleteGroupConfigurationV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteGroupConfigurationV1'
delete_file $TEMP_FILE

#- 6 updateGroupConfigurationAdminV1
$ sample-apps Group updateGroupConfigurationAdminV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateGroupConfigurationAdminV1'
delete_file $TEMP_FILE

#- 7 updateGroupConfigurationGlobalRuleAdminV1
$ sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateGroupConfigurationGlobalRuleAdminV1'
delete_file $TEMP_FILE

#- 8 deleteGroupConfigurationGlobalRuleAdminV1
$ sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteGroupConfigurationGlobalRuleAdminV1'
delete_file $TEMP_FILE

#- 9 getGroupListAdminV1
$ sample-apps Group getGroupListAdminV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getGroupListAdminV1'
delete_file $TEMP_FILE

#- 10 getSingleGroupAdminV1
$ sample-apps Group getSingleGroupAdminV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getSingleGroupAdminV1'
delete_file $TEMP_FILE

#- 11 deleteGroupAdminV1
$ sample-apps Group deleteGroupAdminV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteGroupAdminV1'
delete_file $TEMP_FILE

#- 12 getGroupMembersListAdminV1
$ sample-apps Group getGroupMembersListAdminV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getGroupMembersListAdminV1'
delete_file $TEMP_FILE

#- 13 getMemberRolesListAdminV1
$ sample-apps Group getMemberRolesListAdminV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getMemberRolesListAdminV1'
delete_file $TEMP_FILE

#- 14 createMemberRoleAdminV1
$ sample-apps Group createMemberRoleAdminV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'createMemberRoleAdminV1'
delete_file $TEMP_FILE

#- 15 getSingleMemberRoleAdminV1
$ sample-apps Group getSingleMemberRoleAdminV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getSingleMemberRoleAdminV1'
delete_file $TEMP_FILE

#- 16 deleteMemberRoleAdminV1
$ sample-apps Group deleteMemberRoleAdminV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteMemberRoleAdminV1'
delete_file $TEMP_FILE

#- 17 updateMemberRoleAdminV1
$ sample-apps Group updateMemberRoleAdminV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateMemberRoleAdminV1'
delete_file $TEMP_FILE

#- 18 updateMemberRolePermissionAdminV1
$ sample-apps Group updateMemberRolePermissionAdminV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateMemberRolePermissionAdminV1'
delete_file $TEMP_FILE

#- 19 getGroupListPublicV1
$ sample-apps Group getGroupListPublicV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getGroupListPublicV1'
delete_file $TEMP_FILE

#- 20 createNewGroupPublicV1
$ sample-apps Group createNewGroupPublicV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'createNewGroupPublicV1'
delete_file $TEMP_FILE

#- 21 getSingleGroupPublicV1
$ sample-apps Group getSingleGroupPublicV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getSingleGroupPublicV1'
delete_file $TEMP_FILE

#- 22 updateSingleGroupV1
$ sample-apps Group updateSingleGroupV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateSingleGroupV1'
delete_file $TEMP_FILE

#- 23 deleteGroupPublicV1
$ sample-apps Group deleteGroupPublicV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteGroupPublicV1'
delete_file $TEMP_FILE

#- 24 updatePatchSingleGroupPublicV1
$ sample-apps Group updatePatchSingleGroupPublicV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'updatePatchSingleGroupPublicV1'
delete_file $TEMP_FILE

#- 25 updateGroupCustomAttributesPublicV1
$ sample-apps Group updateGroupCustomAttributesPublicV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateGroupCustomAttributesPublicV1'
delete_file $TEMP_FILE

#- 26 acceptGroupInvitationPublicV1
$ sample-apps Group acceptGroupInvitationPublicV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'acceptGroupInvitationPublicV1'
delete_file $TEMP_FILE

#- 27 rejectGroupInvitationPublicV1
$ sample-apps Group rejectGroupInvitationPublicV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'rejectGroupInvitationPublicV1'
delete_file $TEMP_FILE

#- 28 joinGroupV1
$ sample-apps Group joinGroupV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'joinGroupV1'
delete_file $TEMP_FILE

#- 29 cancelGroupJoinRequestV1
$ sample-apps Group cancelGroupJoinRequestV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'cancelGroupJoinRequestV1'
delete_file $TEMP_FILE

#- 30 getGroupJoinRequestPublicV1
$ sample-apps Group getGroupJoinRequestPublicV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getGroupJoinRequestPublicV1'
delete_file $TEMP_FILE

#- 31 getGroupMembersListPublicV1
$ sample-apps Group getGroupMembersListPublicV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getGroupMembersListPublicV1'
delete_file $TEMP_FILE

#- 32 updateGroupCustomRulePublicV1
$ sample-apps Group updateGroupCustomRulePublicV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateGroupCustomRulePublicV1'
delete_file $TEMP_FILE

#- 33 updateGroupPredefinedRulePublicV1
$ sample-apps Group updateGroupPredefinedRulePublicV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateGroupPredefinedRulePublicV1'
delete_file $TEMP_FILE

#- 34 deleteGroupPredefinedRulePublicV1
$ sample-apps Group deleteGroupPredefinedRulePublicV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteGroupPredefinedRulePublicV1'
delete_file $TEMP_FILE

#- 35 leaveGroupPublicV1
$ sample-apps Group leaveGroupPublicV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'leaveGroupPublicV1'
delete_file $TEMP_FILE

#- 36 getMemberRolesListPublicV1
$ sample-apps Group getMemberRolesListPublicV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getMemberRolesListPublicV1'
delete_file $TEMP_FILE

#- 37 updateMemberRolePublicV1
$ sample-apps Group updateMemberRolePublicV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateMemberRolePublicV1'
delete_file $TEMP_FILE

#- 38 deleteMemberRolePublicV1
$ sample-apps Group deleteMemberRolePublicV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteMemberRolePublicV1'
delete_file $TEMP_FILE

#- 39 getGroupInvitationRequestPublicV1
$ sample-apps Group getGroupInvitationRequestPublicV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getGroupInvitationRequestPublicV1'
delete_file $TEMP_FILE

#- 40 getUserGroupInformationPublicV1
$ sample-apps Group getUserGroupInformationPublicV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserGroupInformationPublicV1'
delete_file $TEMP_FILE

#- 41 inviteGroupPublicV1
$ sample-apps Group inviteGroupPublicV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'inviteGroupPublicV1'
delete_file $TEMP_FILE

#- 42 acceptGroupJoinRequestPublicV1
$ sample-apps Group acceptGroupJoinRequestPublicV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'acceptGroupJoinRequestPublicV1'
delete_file $TEMP_FILE

#- 43 rejectGroupJoinRequestPublicV1
$ sample-apps Group rejectGroupJoinRequestPublicV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'rejectGroupJoinRequestPublicV1'
delete_file $TEMP_FILE

#- 44 kickGroupMemberPublicV1
$ sample-apps Group kickGroupMemberPublicV1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'kickGroupMemberPublicV1'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT