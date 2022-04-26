#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

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
echo "1..45"

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

#- 2 ListGroupConfigurationAdminV1
samples/cli/sample-apps Group listGroupConfigurationAdminV1 \
    --namespace 'FtBxyZcD' \
    --limit '98' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --body '{"configurationCode": "pGlsQuJu", "description": "8vMf0IsJ", "globalRules": [{"allowedAction": "kTrd8IDc", "ruleDetail": [{"ruleAttribute": "V2zXnTKj", "ruleCriteria": "EQUAL", "ruleValue": 0.6555286739869362}]}], "groupAdminRoleId": "amiBxx9C", "groupMaxMember": 36, "groupMemberRoleId": "18EY84ek", "name": "ItqRzHU1"}' \
    --namespace 'oh570KQB' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace 'Vaewc72k' \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'rSha68n3' \
    --namespace 'Ynozp1C2' \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'KmIQTuBd' \
    --namespace 'NEUsxFb8' \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --body '{"description": "CJ17M7DJ", "groupMaxMember": 0, "name": "MSxECbZb"}' \
    --configurationCode 'ygyoarOR' \
    --namespace 'oeNHSb8R' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --body '{"ruleDetail": [{"ruleAttribute": "h3kgs9qq", "ruleCriteria": "MAXIMUM", "ruleValue": 0.016507493074878643}]}' \
    --allowedAction 'QsoBgiVp' \
    --configurationCode 'P8Cm3yvA' \
    --namespace 'SUoxdxxF' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'qmAGTJ8I' \
    --configurationCode 'EdagEtp4' \
    --namespace 'w29KOu9c' \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace '19R6XDqW' \
    --configurationCode 'HkkP8npL' \
    --groupName 'EKMfjiX7' \
    --groupRegion 'jpkVZk3I' \
    --limit '1' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'YEmqGodO' \
    --namespace 'EGt9gPOj' \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId '0c6i0Jkv' \
    --namespace 'Ias73ucY' \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'nFAJ3DK5' \
    --namespace 'T4Eogg0Y' \
    --limit '93' \
    --offset '29' \
    --order 'Ylpv5bVA' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace 'gtsDhUTD' \
    --limit '93' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --body '{"memberRoleName": "cbQDjbTQ", "memberRolePermissions": [{"action": 41, "resourceName": "PMz2PTRl"}]}' \
    --namespace 'kyU89ZPO' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'w6zPFJ42' \
    --namespace 'cwmzBBSM' \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'NcoAAOjK' \
    --namespace 'NjfcYHm0' \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --body '{"memberRoleName": "93aYgBU1"}' \
    --memberRoleId 'sqjyK0XH' \
    --namespace '45PaRSOF' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --body '{"memberRolePermissions": [{"action": 84, "resourceName": "Btu23REZ"}]}' \
    --memberRoleId '8hRVX7LG' \
    --namespace 'OvDdYiQS' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace '9i7mV1C9' \
    --groupName '1pjG9gpx' \
    --groupRegion 'L6ycTQdv' \
    --limit '22' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --body '{"configurationCode": "2LAuSQWE", "customAttributes": {"XL6LFE1Y": {}}, "groupDescription": "Ho9m126Z", "groupIcon": "Wc8hHtWv", "groupMaxMember": 3, "groupName": "NYqgUqsl", "groupRegion": "ArFPiHUI", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "vaCv8kU9", "ruleDetail": [{"ruleAttribute": "dBBpdsJL", "ruleCriteria": "EQUAL", "ruleValue": 0.29350275357432876}]}]}, "groupType": "yExrkxoo"}' \
    --namespace 't0B7WOfe' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'rcZdpMci' \
    --namespace '37Ds7YSf' \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --body '{"customAttributes": {}, "groupDescription": "ExaI3uzL", "groupIcon": "teMbFAlt", "groupName": "4hr7HmOY", "groupRegion": "iBA5ltAO", "groupType": "XmlG6eh1"}' \
    --groupId 'dTdoTFpB' \
    --namespace 'IcuC1dQY' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId '93OJnJ6T' \
    --namespace 'e9vD8ldz' \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --body '{"customAttributes": {}, "groupDescription": "7Hu8AD79", "groupIcon": "kdWunviz", "groupName": "U0q1pHyh", "groupRegion": "hERoGgdr", "groupType": "ysMizBGS"}' \
    --groupId 'RdP2l7DN' \
    --namespace 'SZ8Aq0Xi' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --body '{"customAttributes": {"PLQXSe07": {}}}' \
    --groupId 'ZddOGTMl' \
    --namespace 'JjBwj9HJ' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'HQKseEdS' \
    --namespace 'XRDSvgua' \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'uw1xT7eM' \
    --namespace 'wSl9MLH0' \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'NnTJ2ulN' \
    --namespace 'zBvwJaQa' \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId '547JllvA' \
    --namespace '8RWSpabU' \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 't7xk6Qxy' \
    --namespace 'WhfqoWfJ' \
    --limit '45' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId '8oWUqvPC' \
    --namespace 'Z2HzT7NX' \
    --limit '25' \
    --offset '96' \
    --order 'DlXsuNId' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --body '{"groupCustomRule": {"QJR5lsNO": {}}}' \
    --groupId 'lvkfwaSb' \
    --namespace 'nsuLCgTo' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --body '{"ruleDetail": [{"ruleAttribute": "xuVTekJg", "ruleCriteria": "MINIMUM", "ruleValue": 0.10679770946547151}]}' \
    --allowedAction 'h5HIpH0D' \
    --groupId 'viplEk4v' \
    --namespace 'j3LDp4yq' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'Dt8QUZDp' \
    --groupId 'xlHasinG' \
    --namespace 'cjrkmRMt' \
    > test.out 2>&1
eval_tap $? 35 'DeleteGroupPredefinedRulePublicV1' test.out

#- 36 LeaveGroupPublicV1
samples/cli/sample-apps Group leaveGroupPublicV1 \
    --namespace 'tgjDSaIV' \
    > test.out 2>&1
eval_tap $? 36 'LeaveGroupPublicV1' test.out

#- 37 GetMemberRolesListPublicV1
samples/cli/sample-apps Group getMemberRolesListPublicV1 \
    --namespace 'Bmft3Udg' \
    --limit '30' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --body '{"userId": "GmY2H5kX"}' \
    --memberRoleId '4MsisSX2' \
    --namespace '8nARxWRp' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --body '{"userId": "v5ou5xtv"}' \
    --memberRoleId 'd28OUfCt' \
    --namespace '8UJC5flN' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace 'yj6HsTtX' \
    --limit '82' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace 'lnaaS9lq' \
    --userId 'yygPcfkJ' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace 'IxfQZza8' \
    --userId 'kNVbDxVM' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace 'q7HJk0F8' \
    --userId '9xAc3YVf' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace 'aENtrl0p' \
    --userId 'TKZTXqzH' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace 'uBMYQSA2' \
    --userId 'jz1ZOpdO' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE