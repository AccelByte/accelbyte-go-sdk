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

OPERATIONS_COUNT=44

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

echo "go install github.com/AccelByte/sample-apps"
go install github.com/AccelByte/sample-apps
#rm -f $TEMP_TOKEN
#echo "\"{"\"access_token"\":"\"foo"\"}"\" >> $TEMP_TOKEN
echo "1..$OPERATIONS_COUNT"

#- 1 listGroupConfigurationAdminV1
sample-apps Group listGroupConfigurationAdminV1 \
    --namespace 'FtBxyZcD' \
    --limit '98' \
    --offset '55' \
    >$TEMP_FILE 2>&1
update_status $? 'listGroupConfigurationAdminV1'
delete_file $TEMP_FILE

#- 2 createGroupConfigurationAdminV1
sample-apps Group createGroupConfigurationAdminV1 \
    --body '{"configurationCode": "pGlsQuJu", "description": "8vMf0IsJ", "globalRules": [{"allowedAction": "kTrd8IDc", "ruleDetail": [{"ruleAttribute": "V2zXnTKj", "ruleCriteria": "XY1bPqam", "ruleValue": 0.13454254286494316}]}], "groupAdminRoleId": "xx9Cs18E", "groupMaxMember": 100, "groupMemberRoleId": "84ekItqR", "name": "zHU1oh57"}' \
    --namespace '0KQBVaew' \
    >$TEMP_FILE 2>&1
update_status $? 'createGroupConfigurationAdminV1'
delete_file $TEMP_FILE

#- 3 initiateGroupConfigurationAdminV1
sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace 'c72krSha' \
    >$TEMP_FILE 2>&1
update_status $? 'initiateGroupConfigurationAdminV1'
delete_file $TEMP_FILE

#- 4 getGroupConfigurationAdminV1
sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode '68n3Ynoz' \
    --namespace 'p1C2KmIQ' \
    >$TEMP_FILE 2>&1
update_status $? 'getGroupConfigurationAdminV1'
delete_file $TEMP_FILE

#- 5 deleteGroupConfigurationV1
sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'TuBdNEUs' \
    --namespace 'xFb8CJ17' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteGroupConfigurationV1'
delete_file $TEMP_FILE

#- 6 updateGroupConfigurationAdminV1
sample-apps Group updateGroupConfigurationAdminV1 \
    --body '{"description": "M7DJZaMS", "groupMaxMember": 47, "name": "ECbZbygy"}' \
    --configurationCode 'oarORoeN' \
    --namespace 'HSb8Rh3k' \
    >$TEMP_FILE 2>&1
update_status $? 'updateGroupConfigurationAdminV1'
delete_file $TEMP_FILE

#- 7 updateGroupConfigurationGlobalRuleAdminV1
sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --body '{"ruleDetail": [{"ruleAttribute": "gs9qqJbn", "ruleCriteria": "QsoBgiVp", "ruleValue": 0.6437922712244237}]}' \
    --allowedAction 'Cm3yvASU' \
    --configurationCode 'oxdxxFqm' \
    --namespace 'AGTJ8IEd' \
    >$TEMP_FILE 2>&1
update_status $? 'updateGroupConfigurationGlobalRuleAdminV1'
delete_file $TEMP_FILE

#- 8 deleteGroupConfigurationGlobalRuleAdminV1
sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'agEtp4w2' \
    --configurationCode '9KOu9c19' \
    --namespace 'R6XDqWHk' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteGroupConfigurationGlobalRuleAdminV1'
delete_file $TEMP_FILE

#- 9 getGroupListAdminV1
sample-apps Group getGroupListAdminV1 \
    --namespace 'kP8npLEK' \
    --configurationCode 'MfjiX7jp' \
    --groupName 'kVZk3IaQ' \
    --groupRegion 'YEmqGodO' \
    --limit '60' \
    --offset '64' \
    >$TEMP_FILE 2>&1
update_status $? 'getGroupListAdminV1'
delete_file $TEMP_FILE

#- 10 getSingleGroupAdminV1
sample-apps Group getSingleGroupAdminV1 \
    --groupId 't9gPOj0c' \
    --namespace '6i0JkvIa' \
    >$TEMP_FILE 2>&1
update_status $? 'getSingleGroupAdminV1'
delete_file $TEMP_FILE

#- 11 deleteGroupAdminV1
sample-apps Group deleteGroupAdminV1 \
    --groupId 's73ucYnF' \
    --namespace 'AJ3DK5T4' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteGroupAdminV1'
delete_file $TEMP_FILE

#- 12 getGroupMembersListAdminV1
sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'Eogg0Y39' \
    --namespace 'UoYlpv5b' \
    --limit '94' \
    --offset '53' \
    --order 'gtsDhUTD' \
    >$TEMP_FILE 2>&1
update_status $? 'getGroupMembersListAdminV1'
delete_file $TEMP_FILE

#- 13 getMemberRolesListAdminV1
sample-apps Group getMemberRolesListAdminV1 \
    --namespace 'UscbQDjb' \
    --limit '91' \
    --offset '85' \
    >$TEMP_FILE 2>&1
update_status $? 'getMemberRolesListAdminV1'
delete_file $TEMP_FILE

#- 14 createMemberRoleAdminV1
sample-apps Group createMemberRoleAdminV1 \
    --body '{"memberRoleName": "uPMz2PTR", "memberRolePermissions": [{"action": 23, "resourceName": "kyU89ZPO"}]}' \
    --namespace 'w6zPFJ42' \
    >$TEMP_FILE 2>&1
update_status $? 'createMemberRoleAdminV1'
delete_file $TEMP_FILE

#- 15 getSingleMemberRoleAdminV1
sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'cwmzBBSM' \
    --namespace 'NcoAAOjK' \
    >$TEMP_FILE 2>&1
update_status $? 'getSingleMemberRoleAdminV1'
delete_file $TEMP_FILE

#- 16 deleteMemberRoleAdminV1
sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'NjfcYHm0' \
    --namespace '93aYgBU1' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteMemberRoleAdminV1'
delete_file $TEMP_FILE

#- 17 updateMemberRoleAdminV1
sample-apps Group updateMemberRoleAdminV1 \
    --body '{"memberRoleName": "sqjyK0XH"}' \
    --memberRoleId '45PaRSOF' \
    --namespace 'QBtu23RE' \
    >$TEMP_FILE 2>&1
update_status $? 'updateMemberRoleAdminV1'
delete_file $TEMP_FILE

#- 18 updateMemberRolePermissionAdminV1
sample-apps Group updateMemberRolePermissionAdminV1 \
    --body '{"memberRolePermissions": [{"action": 15, "resourceName": "RVX7LGOv"}]}' \
    --memberRoleId 'DdYiQS9i' \
    --namespace '7mV1C91p' \
    >$TEMP_FILE 2>&1
update_status $? 'updateMemberRolePermissionAdminV1'
delete_file $TEMP_FILE

#- 19 getGroupListPublicV1
sample-apps Group getGroupListPublicV1 \
    --namespace 'jG9gpxL6' \
    --groupName 'ycTQdvln' \
    --groupRegion '2LAuSQWE' \
    --limit '99' \
    --offset '74' \
    >$TEMP_FILE 2>&1
update_status $? 'getGroupListPublicV1'
delete_file $TEMP_FILE

#- 20 createNewGroupPublicV1
sample-apps Group createNewGroupPublicV1 \
    --body '{"configurationCode": "6LFE1YHo", "customAttributes": {"9m126ZWc": {}}, "groupDescription": "8hHtWvbN", "groupIcon": "YqgUqslA", "groupMaxMember": 34, "groupName": "FPiHUIva", "groupRegion": "Cv8kU9dB", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "BpdsJLhs", "ruleDetail": [{"ruleAttribute": "VyExrkxo", "ruleCriteria": "ot0B7WOf", "ruleValue": 0.06938643216836282}]}]}, "groupType": "cZdpMci3"}' \
    --namespace '7Ds7YSfE' \
    >$TEMP_FILE 2>&1
update_status $? 'createNewGroupPublicV1'
delete_file $TEMP_FILE

#- 21 getSingleGroupPublicV1
sample-apps Group getSingleGroupPublicV1 \
    --groupId 'xaI3uzLt' \
    --namespace 'eMbFAlt4' \
    >$TEMP_FILE 2>&1
update_status $? 'getSingleGroupPublicV1'
delete_file $TEMP_FILE

#- 22 updateSingleGroupV1
sample-apps Group updateSingleGroupV1 \
    --body '{"customAttributes": {}, "groupDescription": "hr7HmOYi", "groupIcon": "BA5ltAOX", "groupName": "mlG6eh1d", "groupRegion": "TdoTFpBI", "groupType": "cuC1dQY9"}' \
    --groupId '3OJnJ6Te' \
    --namespace '9vD8ldz7' \
    >$TEMP_FILE 2>&1
update_status $? 'updateSingleGroupV1'
delete_file $TEMP_FILE

#- 23 deleteGroupPublicV1
sample-apps Group deleteGroupPublicV1 \
    --groupId 'Hu8AD79k' \
    --namespace 'dWunvizU' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteGroupPublicV1'
delete_file $TEMP_FILE

#- 24 updatePatchSingleGroupPublicV1
sample-apps Group updatePatchSingleGroupPublicV1 \
    --body '{"customAttributes": {}, "groupDescription": "0q1pHyhh", "groupIcon": "ERoGgdry", "groupName": "sMizBGSR", "groupRegion": "dP2l7DNS", "groupType": "Z8Aq0XiP"}' \
    --groupId 'LQXSe07Z' \
    --namespace 'ddOGTMlJ' \
    >$TEMP_FILE 2>&1
update_status $? 'updatePatchSingleGroupPublicV1'
delete_file $TEMP_FILE

#- 25 updateGroupCustomAttributesPublicV1
sample-apps Group updateGroupCustomAttributesPublicV1 \
    --body '{"customAttributes": {"jBwj9HJH": {}}}' \
    --groupId 'QKseEdSX' \
    --namespace 'RDSvguau' \
    >$TEMP_FILE 2>&1
update_status $? 'updateGroupCustomAttributesPublicV1'
delete_file $TEMP_FILE

#- 26 acceptGroupInvitationPublicV1
sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'w1xT7eMw' \
    --namespace 'Sl9MLH0N' \
    >$TEMP_FILE 2>&1
update_status $? 'acceptGroupInvitationPublicV1'
delete_file $TEMP_FILE

#- 27 rejectGroupInvitationPublicV1
sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'nTJ2ulNz' \
    --namespace 'BvwJaQa5' \
    >$TEMP_FILE 2>&1
update_status $? 'rejectGroupInvitationPublicV1'
delete_file $TEMP_FILE

#- 28 joinGroupV1
sample-apps Group joinGroupV1 \
    --groupId '47JllvA8' \
    --namespace 'RWSpabUt' \
    >$TEMP_FILE 2>&1
update_status $? 'joinGroupV1'
delete_file $TEMP_FILE

#- 29 cancelGroupJoinRequestV1
sample-apps Group cancelGroupJoinRequestV1 \
    --groupId '7xk6QxyW' \
    --namespace 'hfqoWfJw' \
    >$TEMP_FILE 2>&1
update_status $? 'cancelGroupJoinRequestV1'
delete_file $TEMP_FILE

#- 30 getGroupJoinRequestPublicV1
sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId '2o8oWUqv' \
    --namespace 'PCZ2HzT7' \
    --limit '78' \
    --offset '99' \
    >$TEMP_FILE 2>&1
update_status $? 'getGroupJoinRequestPublicV1'
delete_file $TEMP_FILE

#- 31 getGroupMembersListPublicV1
sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'mWDlXsuN' \
    --namespace 'IdQJR5ls' \
    --limit '78' \
    --offset '81' \
    --order 'lvkfwaSb' \
    >$TEMP_FILE 2>&1
update_status $? 'getGroupMembersListPublicV1'
delete_file $TEMP_FILE

#- 32 updateGroupCustomRulePublicV1
sample-apps Group updateGroupCustomRulePublicV1 \
    --body '{"groupCustomRule": {"nsuLCgTo": {}}}' \
    --groupId 'xuVTekJg' \
    --namespace 'vg6h5HIp' \
    >$TEMP_FILE 2>&1
update_status $? 'updateGroupCustomRulePublicV1'
delete_file $TEMP_FILE

#- 33 updateGroupPredefinedRulePublicV1
sample-apps Group updateGroupPredefinedRulePublicV1 \
    --body '{"ruleDetail": [{"ruleAttribute": "H0DviplE", "ruleCriteria": "k4vj3LDp", "ruleValue": 0.8807918011238242}]}' \
    --allowedAction 'qDt8QUZD' \
    --groupId 'pxlHasin' \
    --namespace 'GcjrkmRM' \
    >$TEMP_FILE 2>&1
update_status $? 'updateGroupPredefinedRulePublicV1'
delete_file $TEMP_FILE

#- 34 deleteGroupPredefinedRulePublicV1
sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'ttgjDSaI' \
    --groupId 'VBmft3Ud' \
    --namespace 'g7p9PGmY' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteGroupPredefinedRulePublicV1'
delete_file $TEMP_FILE

#- 35 leaveGroupPublicV1
sample-apps Group leaveGroupPublicV1 \
    --namespace '2H5kX4Ms' \
    >$TEMP_FILE 2>&1
update_status $? 'leaveGroupPublicV1'
delete_file $TEMP_FILE

#- 36 getMemberRolesListPublicV1
sample-apps Group getMemberRolesListPublicV1 \
    --namespace 'isSX28nA' \
    --limit '86' \
    --offset '46' \
    >$TEMP_FILE 2>&1
update_status $? 'getMemberRolesListPublicV1'
delete_file $TEMP_FILE

#- 37 updateMemberRolePublicV1
sample-apps Group updateMemberRolePublicV1 \
    --body '{"userId": "WRpv5ou5"}' \
    --memberRoleId 'xtvd28OU' \
    --namespace 'fCt8UJC5' \
    >$TEMP_FILE 2>&1
update_status $? 'updateMemberRolePublicV1'
delete_file $TEMP_FILE

#- 38 deleteMemberRolePublicV1
sample-apps Group deleteMemberRolePublicV1 \
    --body '{"userId": "flNyj6Hs"}' \
    --memberRoleId 'TtX8P3ll' \
    --namespace 'naaS9lqy' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteMemberRolePublicV1'
delete_file $TEMP_FILE

#- 39 getGroupInvitationRequestPublicV1
sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace 'ygPcfkJI' \
    --limit '47' \
    --offset '11' \
    >$TEMP_FILE 2>&1
update_status $? 'getGroupInvitationRequestPublicV1'
delete_file $TEMP_FILE

#- 40 getUserGroupInformationPublicV1
sample-apps Group getUserGroupInformationPublicV1 \
    --namespace 'QZza8kNV' \
    --userId 'bDxVMq7H' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserGroupInformationPublicV1'
delete_file $TEMP_FILE

#- 41 inviteGroupPublicV1
sample-apps Group inviteGroupPublicV1 \
    --namespace 'Jk0F89xA' \
    --userId 'c3YVfaEN' \
    >$TEMP_FILE 2>&1
update_status $? 'inviteGroupPublicV1'
delete_file $TEMP_FILE

#- 42 acceptGroupJoinRequestPublicV1
sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace 'trl0pTKZ' \
    --userId 'TXqzHuBM' \
    >$TEMP_FILE 2>&1
update_status $? 'acceptGroupJoinRequestPublicV1'
delete_file $TEMP_FILE

#- 43 rejectGroupJoinRequestPublicV1
sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace 'YQSA2jz1' \
    --userId 'ZOpdOjSy' \
    >$TEMP_FILE 2>&1
update_status $? 'rejectGroupJoinRequestPublicV1'
delete_file $TEMP_FILE

#- 44 kickGroupMemberPublicV1
sample-apps Group kickGroupMemberPublicV1 \
    --namespace 'MddB41Ju' \
    --userId 'Mf7RUyBH' \
    >$TEMP_FILE 2>&1
update_status $? 'kickGroupMemberPublicV1'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT