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

rm -f $TEMP_TOKEN
mkdir -p $(dirname $TEMP_TOKEN)
echo {"\"access_token"\":"\"foo"\"} >> $TEMP_TOKEN
echo "1..$OPERATIONS_COUNT"

#- 1 listGroupConfigurationAdminV1
samples/cli/sample-apps Group listGroupConfigurationAdminV1 \
    --namespace 'FtBxyZcD' \
    --limit '98' \
    --offset '55' \
    >$TEMP_FILE 2>&1
update_status $? 'listGroupConfigurationAdminV1'
delete_file $TEMP_FILE

#- 2 createGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --body '{"configurationCode": "pGlsQuJu", "description": "8vMf0IsJ", "globalRules": [{"allowedAction": "kTrd8IDc", "ruleDetail": [{"ruleAttribute": "V2zXnTKj", "ruleCriteria": "EQUAL", "ruleValue": 0.6555286739869362}]}], "groupAdminRoleId": "amiBxx9C", "groupMaxMember": 36, "groupMemberRoleId": "18EY84ek", "name": "ItqRzHU1"}' \
    --namespace 'oh570KQB' \
    >$TEMP_FILE 2>&1
update_status $? 'createGroupConfigurationAdminV1'
delete_file $TEMP_FILE

#- 3 initiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace 'Vaewc72k' \
    >$TEMP_FILE 2>&1
update_status $? 'initiateGroupConfigurationAdminV1'
delete_file $TEMP_FILE

#- 4 getGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'rSha68n3' \
    --namespace 'Ynozp1C2' \
    >$TEMP_FILE 2>&1
update_status $? 'getGroupConfigurationAdminV1'
delete_file $TEMP_FILE

#- 5 deleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'KmIQTuBd' \
    --namespace 'NEUsxFb8' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteGroupConfigurationV1'
delete_file $TEMP_FILE

#- 6 updateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --body '{"description": "CJ17M7DJ", "groupMaxMember": 0, "name": "MSxECbZb"}' \
    --configurationCode 'ygyoarOR' \
    --namespace 'oeNHSb8R' \
    >$TEMP_FILE 2>&1
update_status $? 'updateGroupConfigurationAdminV1'
delete_file $TEMP_FILE

#- 7 updateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --body '{"ruleDetail": [{"ruleAttribute": "h3kgs9qq", "ruleCriteria": "MAXIMUM", "ruleValue": 0.016507493074878643}]}' \
    --allowedAction 'QsoBgiVp' \
    --configurationCode 'P8Cm3yvA' \
    --namespace 'SUoxdxxF' \
    >$TEMP_FILE 2>&1
update_status $? 'updateGroupConfigurationGlobalRuleAdminV1'
delete_file $TEMP_FILE

#- 8 deleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'qmAGTJ8I' \
    --configurationCode 'EdagEtp4' \
    --namespace 'w29KOu9c' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteGroupConfigurationGlobalRuleAdminV1'
delete_file $TEMP_FILE

#- 9 getGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace '19R6XDqW' \
    --configurationCode 'HkkP8npL' \
    --groupName 'EKMfjiX7' \
    --groupRegion 'jpkVZk3I' \
    --limit '1' \
    --offset '84' \
    >$TEMP_FILE 2>&1
update_status $? 'getGroupListAdminV1'
delete_file $TEMP_FILE

#- 10 getSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'YEmqGodO' \
    --namespace 'EGt9gPOj' \
    >$TEMP_FILE 2>&1
update_status $? 'getSingleGroupAdminV1'
delete_file $TEMP_FILE

#- 11 deleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId '0c6i0Jkv' \
    --namespace 'Ias73ucY' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteGroupAdminV1'
delete_file $TEMP_FILE

#- 12 getGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'nFAJ3DK5' \
    --namespace 'T4Eogg0Y' \
    --limit '93' \
    --offset '29' \
    --order 'Ylpv5bVA' \
    >$TEMP_FILE 2>&1
update_status $? 'getGroupMembersListAdminV1'
delete_file $TEMP_FILE

#- 13 getMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace 'gtsDhUTD' \
    --limit '93' \
    --offset '36' \
    >$TEMP_FILE 2>&1
update_status $? 'getMemberRolesListAdminV1'
delete_file $TEMP_FILE

#- 14 createMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --body '{"memberRoleName": "cbQDjbTQ", "memberRolePermissions": [{"action": 41, "resourceName": "PMz2PTRl"}]}' \
    --namespace 'kyU89ZPO' \
    >$TEMP_FILE 2>&1
update_status $? 'createMemberRoleAdminV1'
delete_file $TEMP_FILE

#- 15 getSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'w6zPFJ42' \
    --namespace 'cwmzBBSM' \
    >$TEMP_FILE 2>&1
update_status $? 'getSingleMemberRoleAdminV1'
delete_file $TEMP_FILE

#- 16 deleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'NcoAAOjK' \
    --namespace 'NjfcYHm0' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteMemberRoleAdminV1'
delete_file $TEMP_FILE

#- 17 updateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --body '{"memberRoleName": "93aYgBU1"}' \
    --memberRoleId 'sqjyK0XH' \
    --namespace '45PaRSOF' \
    >$TEMP_FILE 2>&1
update_status $? 'updateMemberRoleAdminV1'
delete_file $TEMP_FILE

#- 18 updateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --body '{"memberRolePermissions": [{"action": 84, "resourceName": "Btu23REZ"}]}' \
    --memberRoleId '8hRVX7LG' \
    --namespace 'OvDdYiQS' \
    >$TEMP_FILE 2>&1
update_status $? 'updateMemberRolePermissionAdminV1'
delete_file $TEMP_FILE

#- 19 getGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace '9i7mV1C9' \
    --groupName '1pjG9gpx' \
    --groupRegion 'L6ycTQdv' \
    --limit '22' \
    --offset '26' \
    >$TEMP_FILE 2>&1
update_status $? 'getGroupListPublicV1'
delete_file $TEMP_FILE

#- 20 createNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --body '{"configurationCode": "2LAuSQWE", "customAttributes": {"XL6LFE1Y": {}}, "groupDescription": "Ho9m126Z", "groupIcon": "Wc8hHtWv", "groupMaxMember": 3, "groupName": "NYqgUqsl", "groupRegion": "ArFPiHUI", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "vaCv8kU9", "ruleDetail": [{"ruleAttribute": "dBBpdsJL", "ruleCriteria": "EQUAL", "ruleValue": 0.29350275357432876}]}]}, "groupType": "yExrkxoo"}' \
    --namespace 't0B7WOfe' \
    >$TEMP_FILE 2>&1
update_status $? 'createNewGroupPublicV1'
delete_file $TEMP_FILE

#- 21 getSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'rcZdpMci' \
    --namespace '37Ds7YSf' \
    >$TEMP_FILE 2>&1
update_status $? 'getSingleGroupPublicV1'
delete_file $TEMP_FILE

#- 22 updateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --body '{"customAttributes": {}, "groupDescription": "ExaI3uzL", "groupIcon": "teMbFAlt", "groupName": "4hr7HmOY", "groupRegion": "iBA5ltAO", "groupType": "XmlG6eh1"}' \
    --groupId 'dTdoTFpB' \
    --namespace 'IcuC1dQY' \
    >$TEMP_FILE 2>&1
update_status $? 'updateSingleGroupV1'
delete_file $TEMP_FILE

#- 23 deleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId '93OJnJ6T' \
    --namespace 'e9vD8ldz' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteGroupPublicV1'
delete_file $TEMP_FILE

#- 24 updatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --body '{"customAttributes": {}, "groupDescription": "7Hu8AD79", "groupIcon": "kdWunviz", "groupName": "U0q1pHyh", "groupRegion": "hERoGgdr", "groupType": "ysMizBGS"}' \
    --groupId 'RdP2l7DN' \
    --namespace 'SZ8Aq0Xi' \
    >$TEMP_FILE 2>&1
update_status $? 'updatePatchSingleGroupPublicV1'
delete_file $TEMP_FILE

#- 25 updateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --body '{"customAttributes": {"PLQXSe07": {}}}' \
    --groupId 'ZddOGTMl' \
    --namespace 'JjBwj9HJ' \
    >$TEMP_FILE 2>&1
update_status $? 'updateGroupCustomAttributesPublicV1'
delete_file $TEMP_FILE

#- 26 acceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'HQKseEdS' \
    --namespace 'XRDSvgua' \
    >$TEMP_FILE 2>&1
update_status $? 'acceptGroupInvitationPublicV1'
delete_file $TEMP_FILE

#- 27 rejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'uw1xT7eM' \
    --namespace 'wSl9MLH0' \
    >$TEMP_FILE 2>&1
update_status $? 'rejectGroupInvitationPublicV1'
delete_file $TEMP_FILE

#- 28 joinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'NnTJ2ulN' \
    --namespace 'zBvwJaQa' \
    >$TEMP_FILE 2>&1
update_status $? 'joinGroupV1'
delete_file $TEMP_FILE

#- 29 cancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId '547JllvA' \
    --namespace '8RWSpabU' \
    >$TEMP_FILE 2>&1
update_status $? 'cancelGroupJoinRequestV1'
delete_file $TEMP_FILE

#- 30 getGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 't7xk6Qxy' \
    --namespace 'WhfqoWfJ' \
    --limit '45' \
    --offset '28' \
    >$TEMP_FILE 2>&1
update_status $? 'getGroupJoinRequestPublicV1'
delete_file $TEMP_FILE

#- 31 getGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId '8oWUqvPC' \
    --namespace 'Z2HzT7NX' \
    --limit '25' \
    --offset '96' \
    --order 'DlXsuNId' \
    >$TEMP_FILE 2>&1
update_status $? 'getGroupMembersListPublicV1'
delete_file $TEMP_FILE

#- 32 updateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --body '{"groupCustomRule": {"QJR5lsNO": {}}}' \
    --groupId 'lvkfwaSb' \
    --namespace 'nsuLCgTo' \
    >$TEMP_FILE 2>&1
update_status $? 'updateGroupCustomRulePublicV1'
delete_file $TEMP_FILE

#- 33 updateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --body '{"ruleDetail": [{"ruleAttribute": "xuVTekJg", "ruleCriteria": "MINIMUM", "ruleValue": 0.10679770946547151}]}' \
    --allowedAction 'h5HIpH0D' \
    --groupId 'viplEk4v' \
    --namespace 'j3LDp4yq' \
    >$TEMP_FILE 2>&1
update_status $? 'updateGroupPredefinedRulePublicV1'
delete_file $TEMP_FILE

#- 34 deleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'Dt8QUZDp' \
    --groupId 'xlHasinG' \
    --namespace 'cjrkmRMt' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteGroupPredefinedRulePublicV1'
delete_file $TEMP_FILE

#- 35 leaveGroupPublicV1
samples/cli/sample-apps Group leaveGroupPublicV1 \
    --namespace 'tgjDSaIV' \
    >$TEMP_FILE 2>&1
update_status $? 'leaveGroupPublicV1'
delete_file $TEMP_FILE

#- 36 getMemberRolesListPublicV1
samples/cli/sample-apps Group getMemberRolesListPublicV1 \
    --namespace 'Bmft3Udg' \
    --limit '30' \
    --offset '82' \
    >$TEMP_FILE 2>&1
update_status $? 'getMemberRolesListPublicV1'
delete_file $TEMP_FILE

#- 37 updateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --body '{"userId": "GmY2H5kX"}' \
    --memberRoleId '4MsisSX2' \
    --namespace '8nARxWRp' \
    >$TEMP_FILE 2>&1
update_status $? 'updateMemberRolePublicV1'
delete_file $TEMP_FILE

#- 38 deleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --body '{"userId": "v5ou5xtv"}' \
    --memberRoleId 'd28OUfCt' \
    --namespace '8UJC5flN' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteMemberRolePublicV1'
delete_file $TEMP_FILE

#- 39 getGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace 'yj6HsTtX' \
    --limit '82' \
    --offset '23' \
    >$TEMP_FILE 2>&1
update_status $? 'getGroupInvitationRequestPublicV1'
delete_file $TEMP_FILE

#- 40 getUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace 'lnaaS9lq' \
    --userId 'yygPcfkJ' \
    >$TEMP_FILE 2>&1
update_status $? 'getUserGroupInformationPublicV1'
delete_file $TEMP_FILE

#- 41 inviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace 'IxfQZza8' \
    --userId 'kNVbDxVM' \
    >$TEMP_FILE 2>&1
update_status $? 'inviteGroupPublicV1'
delete_file $TEMP_FILE

#- 42 acceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace 'q7HJk0F8' \
    --userId '9xAc3YVf' \
    >$TEMP_FILE 2>&1
update_status $? 'acceptGroupJoinRequestPublicV1'
delete_file $TEMP_FILE

#- 43 rejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace 'aENtrl0p' \
    --userId 'TKZTXqzH' \
    >$TEMP_FILE 2>&1
update_status $? 'rejectGroupJoinRequestPublicV1'
delete_file $TEMP_FILE

#- 44 kickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace 'uBMYQSA2' \
    --userId 'jz1ZOpdO' \
    >$TEMP_FILE 2>&1
update_status $? 'kickGroupMemberPublicV1'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT