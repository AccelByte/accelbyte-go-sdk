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
echo "1..73"

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

#- 2 ListGroupConfigurationAdminV1
samples/cli/sample-apps Group listGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "Ij1vcaFe", "description": "4XElmSdg", "globalRules": [{"allowedAction": "mkMin6Cm", "ruleDetail": [{"ruleAttribute": "LTax8sUX", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6900700754915295}, {"ruleAttribute": "2eZE0bAp", "ruleCriteria": "MINIMUM", "ruleValue": 0.5310346442470912}, {"ruleAttribute": "o9fYpP6x", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9703957576053273}]}, {"allowedAction": "RHzuZzIa", "ruleDetail": [{"ruleAttribute": "QmBVKzFA", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5636102550608122}, {"ruleAttribute": "VaDmNzs1", "ruleCriteria": "MINIMUM", "ruleValue": 0.7693395166874121}, {"ruleAttribute": "s3dYZqeQ", "ruleCriteria": "MINIMUM", "ruleValue": 0.21221588030779792}]}, {"allowedAction": "VqjN3RdC", "ruleDetail": [{"ruleAttribute": "oSamWPnW", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2676361064187498}, {"ruleAttribute": "HvnQph58", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6210200141385626}, {"ruleAttribute": "mL0TqtfV", "ruleCriteria": "MINIMUM", "ruleValue": 0.7299428259173659}]}], "groupAdminRoleId": "AoMvT19j", "groupMaxMember": 71, "groupMemberRoleId": "BdsFm4wH", "name": "tmXjHcVu"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'DTsXQWCC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'Y39SEwgu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'MVVmpXoP' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "bLEVUAtb", "groupMaxMember": 85, "name": "CtiUGGvJ"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'r8e4Njk1' \
    --configurationCode 'xVrsAjs7' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "eNQu6qjT", "ruleCriteria": "MINIMUM", "ruleValue": 0.5776870338172627}, {"ruleAttribute": "PQPEux7a", "ruleCriteria": "MAXIMUM", "ruleValue": 0.924812524749981}, {"ruleAttribute": "N9cubf2O", "ruleCriteria": "MINIMUM", "ruleValue": 0.4975906384983019}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'WUDRXas5' \
    --configurationCode 'Phc4wB8u' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'lCTMbZbC' \
    --groupName 'WjcIQotU' \
    --groupRegion 'P1tqeusS' \
    --limit '85' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'dSFufH0t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'wcVmmiMY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'RabGICMf' \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '47' \
    --order 'qzMVqfPu' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "CFAp2ZuQ", "memberRolePermissions": [{"action": 96, "resourceName": "PdywgKWP"}, {"action": 96, "resourceName": "tIAlJ8ni"}, {"action": 45, "resourceName": "DBk0b5ag"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId '4R7wlJNV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'gQ693SAJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'yu24WJSq' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "lPwfAU4o"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'ObJXVQ1B' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 18, "resourceName": "c3i3XK4D"}, {"action": 31, "resourceName": "P8DQHbhr"}, {"action": 40, "resourceName": "9dD3E6By"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'dUDwCTcS' \
    --groupRegion 'gBrATIfG' \
    --limit '21' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "9JDQBGDi", "customAttributes": {"bs7Ak0vW": {}, "Ik27qe9U": {}, "Q2vMQeR6": {}}, "groupDescription": "ZGCgWFAs", "groupIcon": "DZsqNvbm", "groupMaxMember": 12, "groupName": "DvYI0Csl", "groupRegion": "ydCYMqpV", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "5iT4aJjA", "ruleDetail": [{"ruleAttribute": "U0Gcn2To", "ruleCriteria": "EQUAL", "ruleValue": 0.4428223099362454}, {"ruleAttribute": "RHqMvCVM", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7269620761778057}, {"ruleAttribute": "WKzWuZxU", "ruleCriteria": "EQUAL", "ruleValue": 0.15003588836448112}]}, {"allowedAction": "n2ARw0qW", "ruleDetail": [{"ruleAttribute": "xbsgO1SV", "ruleCriteria": "EQUAL", "ruleValue": 0.3115225629137637}, {"ruleAttribute": "uYo3AbC7", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4468186033460788}, {"ruleAttribute": "qK4WA4iG", "ruleCriteria": "MAXIMUM", "ruleValue": 0.582824739877183}]}, {"allowedAction": "PW6w18VO", "ruleDetail": [{"ruleAttribute": "9PpWCcLK", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2755955556802291}, {"ruleAttribute": "iwuwm5kb", "ruleCriteria": "MINIMUM", "ruleValue": 0.12662448689909522}, {"ruleAttribute": "BrMFF8yJ", "ruleCriteria": "MINIMUM", "ruleValue": 0.7887810071761617}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'azkWTnIk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'JUJdfzT9' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "KKMKqppR", "groupIcon": "qyl2zukV", "groupName": "uKN8ol6G", "groupRegion": "ic2zIweN", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'WOCQIk3o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'Mneeczy2' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "EhYVHDop", "groupIcon": "B4TYmauw", "groupName": "3WnDFvg5", "groupRegion": "nEJqbbXi", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'dXvc56N3' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"ZL10LDXk": {}, "J6x27anI": {}, "GvT93cGA": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'EPoOOEci' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'ZBqoCQBq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId '1xkDQxvS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'Ya6nkbx7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'xzRJw7mE' \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'aF6cLRQC' \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '30' \
    --order 'lUacZQAz' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'ip9uNyxG' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"lmp9gyXX": {}, "JoHwJ9Tq": {}, "OpsT3VJV": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'WzbgUb2r' \
    --groupId 'u0K4TOaO' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "WnI0c372", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7389384210279197}, {"ruleAttribute": "rAcm8npB", "ruleCriteria": "MINIMUM", "ruleValue": 0.7448487597117615}, {"ruleAttribute": "bk8yR1fP", "ruleCriteria": "EQUAL", "ruleValue": 0.509876852636059}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'DQIzdKvy' \
    --groupId 'waNUj4rM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteGroupPredefinedRulePublicV1' test.out

#- 36 LeaveGroupPublicV1
samples/cli/sample-apps Group leaveGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'LeaveGroupPublicV1' test.out

#- 37 GetMemberRolesListPublicV1
samples/cli/sample-apps Group getMemberRolesListPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'hkH8lqmH' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "VKb539mg"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'EDDW9C8j' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "1F7RjeWZ"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '0F78jZ74' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Qkclz1Zz' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'xuKp846t' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'RJQBBa10' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '8AqhKv4F' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["428oxLWw", "pv6hzys3", "3DFXeIhm"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'jzVU8QoW' \
    --limit '74' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "Ik29Locb", "customAttributes": {"BAlstqAC": {}, "MURtCZkU": {}, "0B6KYR6v": {}}, "groupDescription": "2QrVtk3A", "groupIcon": "be3Wf0yb", "groupMaxMember": 81, "groupName": "65fKckRq", "groupRegion": "eYQBD0Wd", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "RPsTWk3O", "ruleDetail": [{"ruleAttribute": "QjXwYGCb", "ruleCriteria": "MINIMUM", "ruleValue": 0.5503089552099947}, {"ruleAttribute": "7RyhfxSd", "ruleCriteria": "MAXIMUM", "ruleValue": 0.30420038757530665}, {"ruleAttribute": "PFpZRJHZ", "ruleCriteria": "EQUAL", "ruleValue": 0.7144582606373302}]}, {"allowedAction": "g7PRVBxW", "ruleDetail": [{"ruleAttribute": "qg0Ttfdy", "ruleCriteria": "EQUAL", "ruleValue": 0.6592244387223899}, {"ruleAttribute": "yVDjMR09", "ruleCriteria": "EQUAL", "ruleValue": 0.8886257678158711}, {"ruleAttribute": "xjG3p2j8", "ruleCriteria": "MINIMUM", "ruleValue": 0.20552849374935211}]}, {"allowedAction": "LE0oWrkP", "ruleDetail": [{"ruleAttribute": "Bp1iyTPe", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7133532787112539}, {"ruleAttribute": "XF3xWHjS", "ruleCriteria": "MINIMUM", "ruleValue": 0.38009789953320217}, {"ruleAttribute": "EbuAgS4T", "ruleCriteria": "EQUAL", "ruleValue": 0.3382737954759266}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 48 'CreateNewGroupPublicV2' test.out

#- 49 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["QDtkhb87", "pyKKTFZY", "x5ANrtF1"]}' \
    > test.out 2>&1
eval_tap $? 49 'GetListGroupByIDsV2' test.out

#- 50 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'ccmPdrcb' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "6a4pYUzL", "groupIcon": "S5DdQoD6", "groupName": "b2StXChG", "groupRegion": "QX0mSSBf", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdatePutSingleGroupPublicV2' test.out

#- 51 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'mmSel05v' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'DeleteGroupPublicV2' test.out

#- 52 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'PzBUVXId' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "U4q0NI6K", "groupIcon": "PM7gQNvA", "groupName": "CzOEtdP3", "groupRegion": "LrceJbnU", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 52 'UpdatePatchSingleGroupPublicV2' test.out

#- 53 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId '9bYaJKfO' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"YuN8KA7F": {}, "U6SOPlkc": {}, "bl9wxVew": {}}}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateGroupCustomAttributesPublicV2' test.out

#- 54 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'frWL8Z39' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'AcceptGroupInvitationPublicV2' test.out

#- 55 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'qAPchtI6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'RejectGroupInvitationPublicV2' test.out

#- 56 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'pMhcGQ6Y' \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 56 'GetGroupInviteRequestPublicV2' test.out

#- 57 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId '0sboqZYj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'JoinGroupV2' test.out

#- 58 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'FAFzbShX' \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 58 'GetGroupJoinRequestPublicV2' test.out

#- 59 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId '7OJf3xTN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'LeaveGroupPublicV2' test.out

#- 60 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId '6PkRh6Rb' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"he9wyxaD": {}, "ou60K9pK": {}, "TU4qs7ns": {}}}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateGroupCustomRulePublicV2' test.out

#- 61 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'RwvX9g7T' \
    --groupId 'eN2VVqKH' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "UtSGUVFI", "ruleCriteria": "EQUAL", "ruleValue": 0.2913270638877268}, {"ruleAttribute": "8t4iDWe4", "ruleCriteria": "MAXIMUM", "ruleValue": 0.11844625382657115}, {"ruleAttribute": "sml8IADC", "ruleCriteria": "EQUAL", "ruleValue": 0.22817981644471974}]}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupPredefinedRulePublicV2' test.out

#- 62 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'Sh73Pjb9' \
    --groupId 'whnIsc2H' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'DeleteGroupPredefinedRulePublicV2' test.out

#- 63 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 63 'GetMemberRolesListPublicV2' test.out

#- 64 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'YDTb5FeB' \
    --memberRoleId '6YFBLPyM' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "MUzxT59e"}' \
    > test.out 2>&1
eval_tap $? 64 'UpdateMemberRolePublicV2' test.out

#- 65 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'MHJXzYFz' \
    --memberRoleId 'ivIpDZii' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "RCLMJ3oQ"}' \
    > test.out 2>&1
eval_tap $? 65 'DeleteMemberRolePublicV2' test.out

#- 66 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 66 'GetUserGroupInformationPublicV2' test.out

#- 67 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 67 'GetMyGroupJoinRequestV2' test.out

#- 68 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'MxABQdnT' \
    --namespace $AB_NAMESPACE \
    --userId 'lezIFKtV' \
    > test.out 2>&1
eval_tap $? 68 'InviteGroupPublicV2' test.out

#- 69 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'g6yfQp6K' \
    --namespace $AB_NAMESPACE \
    --userId 'GP0UgAAX' \
    > test.out 2>&1
eval_tap $? 69 'CancelInvitationGroupMemberV2' test.out

#- 70 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'mFVauJeo' \
    --namespace $AB_NAMESPACE \
    --userId 'nYesqyoe' \
    > test.out 2>&1
eval_tap $? 70 'AcceptGroupJoinRequestPublicV2' test.out

#- 71 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'KVZ3DEYw' \
    --namespace $AB_NAMESPACE \
    --userId 'wqs1sXLD' \
    > test.out 2>&1
eval_tap $? 71 'RejectGroupJoinRequestPublicV2' test.out

#- 72 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'bLjCNEET' \
    --namespace $AB_NAMESPACE \
    --userId 'w6zOjdTp' \
    > test.out 2>&1
eval_tap $? 72 'KickGroupMemberPublicV2' test.out

#- 73 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'eMNk50hq' \
    --namespace $AB_NAMESPACE \
    --userId 'JQsi3Ll1' \
    > test.out 2>&1
eval_tap $? 73 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE