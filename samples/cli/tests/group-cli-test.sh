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
echo "1..72"

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
    --limit '84' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "1vcqWrzn", "description": "B0jdfbRM", "globalRules": [{"allowedAction": "bMBBp8du", "ruleDetail": [{"ruleAttribute": "Y56ZRsOB", "ruleCriteria": "MAXIMUM", "ruleValue": 0.06937389780267056}, {"ruleAttribute": "B29Vf21u", "ruleCriteria": "MAXIMUM", "ruleValue": 0.0926974830333177}, {"ruleAttribute": "8bSn8TST", "ruleCriteria": "EQUAL", "ruleValue": 0.4221058849633821}]}, {"allowedAction": "d5YRJnJq", "ruleDetail": [{"ruleAttribute": "072taxBT", "ruleCriteria": "EQUAL", "ruleValue": 0.24511412161390222}, {"ruleAttribute": "XTtIqNjM", "ruleCriteria": "EQUAL", "ruleValue": 0.5308144081217812}, {"ruleAttribute": "tB2FvVwl", "ruleCriteria": "MINIMUM", "ruleValue": 0.7600099226045505}]}, {"allowedAction": "VCjycCu7", "ruleDetail": [{"ruleAttribute": "V7aIOjLS", "ruleCriteria": "MAXIMUM", "ruleValue": 0.054761519505073464}, {"ruleAttribute": "bTnVGETx", "ruleCriteria": "MINIMUM", "ruleValue": 0.4908943983923547}, {"ruleAttribute": "PkPDz71A", "ruleCriteria": "EQUAL", "ruleValue": 0.6334995212198119}]}], "groupAdminRoleId": "kVEQNntK", "groupMaxMember": 8, "groupMemberRoleId": "LKQqR4SC", "name": "1iyOnVGT"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'x9CQfv68' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'RmXmjx6v' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'smfMauGB' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "KJI5d7yq", "groupMaxMember": 5, "name": "NeQV99pG"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'Q13Cft52' \
    --configurationCode 'QTG4sOlj' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "9vYJYcO6", "ruleCriteria": "EQUAL", "ruleValue": 0.9992682293482533}, {"ruleAttribute": "XnPfX9xW", "ruleCriteria": "EQUAL", "ruleValue": 0.8265326311921325}, {"ruleAttribute": "GCdcrOP0", "ruleCriteria": "EQUAL", "ruleValue": 0.8178674895788869}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '3cacyHcU' \
    --configurationCode 'NuW18MAo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'hFYiVvMW' \
    --groupName 'pAAL1FaD' \
    --groupRegion 'jSDLYAog' \
    --limit '9' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'RT15ftiy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'ezNQ9V9i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId '2fLlUP9r' \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '9' \
    --order 'b8UdcTcw' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "9QW331CX", "memberRolePermissions": [{"action": 38, "resourceName": "ZU8uHiNh"}, {"action": 42, "resourceName": "r3Vrw8z1"}, {"action": 47, "resourceName": "Gu34s0Hl"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'EOdpP6FL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'KLrbPK5h' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId '7wkejapN' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "WGTfY3bL"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'GMsJn0IT' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 88, "resourceName": "8Z0jeldA"}, {"action": 56, "resourceName": "WFdOHpzo"}, {"action": 79, "resourceName": "9CI6rbmw"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'u0EiJoB1' \
    --groupRegion 'Euq3VD9b' \
    --limit '25' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "4j4D9GP5", "customAttributes": {"W2Vje3O3": {}, "rFVNEdrt": {}, "FyfYXBSw": {}}, "groupDescription": "F8iRN37t", "groupIcon": "Ixj9jmcP", "groupMaxMember": 98, "groupName": "jTcoSgoZ", "groupRegion": "LlAxDLwK", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "nRWq2b3x", "ruleDetail": [{"ruleAttribute": "Yh5A9JW1", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5568783812299097}, {"ruleAttribute": "7xpxrJyf", "ruleCriteria": "MINIMUM", "ruleValue": 0.03479873301522263}, {"ruleAttribute": "gOutk9KC", "ruleCriteria": "MINIMUM", "ruleValue": 0.20481840486438607}]}, {"allowedAction": "Io3S9l6j", "ruleDetail": [{"ruleAttribute": "CRNGx4Z7", "ruleCriteria": "MINIMUM", "ruleValue": 0.3459493495420296}, {"ruleAttribute": "EjjcLdCy", "ruleCriteria": "EQUAL", "ruleValue": 0.5072862249464908}, {"ruleAttribute": "5zZ0V39Q", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5813052536533448}]}, {"allowedAction": "qem5WhYX", "ruleDetail": [{"ruleAttribute": "I4uhQo2o", "ruleCriteria": "MINIMUM", "ruleValue": 0.39994861003814075}, {"ruleAttribute": "IVZHsGzI", "ruleCriteria": "MAXIMUM", "ruleValue": 0.760631544511914}, {"ruleAttribute": "gYAwzjIk", "ruleCriteria": "MAXIMUM", "ruleValue": 0.638959212871497}]}]}, "groupType": "XZN50Oq5"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'G2WUVSrT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'FBgfy1bP' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "CnPtd8Tg", "groupIcon": "u32RTEDE", "groupName": "tibyaJA3", "groupRegion": "VViT9Hwg", "groupType": "Vdo1w1uR"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'G3aFgYPd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'BwHmmNJc' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "pRJhoUML", "groupIcon": "xDZJCLK2", "groupName": "epBwvvrc", "groupRegion": "7KPBXvmR", "groupType": "AoW9HGbA"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'N767oQWd' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"tHhaZW0e": {}, "ON7KCupA": {}, "AsuFwgVR": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'hbJL4rkY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'GZ6LSKZU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'f9HSuPg7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'Fuk0t99F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'gcdBAX2c' \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'nsnsHtJm' \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '45' \
    --order 'TBxd0CYh' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId '3PbEJFWe' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"vBK4r0V0": {}, "kgl4BKNb": {}, "U1Jm9wZF": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'TRSUofbf' \
    --groupId '595L0J6O' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "AoPSZpF4", "ruleCriteria": "MINIMUM", "ruleValue": 0.34703757179716066}, {"ruleAttribute": "PDBzjc06", "ruleCriteria": "MINIMUM", "ruleValue": 0.6596362261155578}, {"ruleAttribute": "5Lg6qRoL", "ruleCriteria": "EQUAL", "ruleValue": 0.27727788866707936}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'nPoTXuFa' \
    --groupId 'pVJiyHMw' \
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
    --limit '22' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'U3mnUk60' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "B0AfOWMC"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'zbqlGjoe' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "tM8wzBpW"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Puoz4CxJ' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'pPMjg2U3' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'zC1SK5y1' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '5GUBFs7U' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ts8uyI4j' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'LeAB08ge' \
    --limit '39' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 46 'GetUserJoinedGroupInformationPublicV2' test.out

#- 47 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "199IOdiv", "customAttributes": {"yk3RNgEn": {}, "JcdyBqpg": {}, "eIjQZR01": {}}, "groupDescription": "Guw8NkVb", "groupIcon": "47QjLLLa", "groupMaxMember": 17, "groupName": "qxzHRzGy", "groupRegion": "FNupl2nJ", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "7MWq2DFH", "ruleDetail": [{"ruleAttribute": "WHvZWXnC", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4169654415859726}, {"ruleAttribute": "PiGy8zOU", "ruleCriteria": "MAXIMUM", "ruleValue": 0.751133020073712}, {"ruleAttribute": "ateqFga1", "ruleCriteria": "MINIMUM", "ruleValue": 0.04877150049673995}]}, {"allowedAction": "nxQ1MRfw", "ruleDetail": [{"ruleAttribute": "oKQfaeE8", "ruleCriteria": "MINIMUM", "ruleValue": 0.6323649790028001}, {"ruleAttribute": "d6innXa6", "ruleCriteria": "MAXIMUM", "ruleValue": 0.42416593278172143}, {"ruleAttribute": "sXwcKi5q", "ruleCriteria": "MAXIMUM", "ruleValue": 0.03686355929516827}]}, {"allowedAction": "f8kyx0fg", "ruleDetail": [{"ruleAttribute": "sgGEYCtd", "ruleCriteria": "MINIMUM", "ruleValue": 0.7524277849299074}, {"ruleAttribute": "htHKX3m3", "ruleCriteria": "EQUAL", "ruleValue": 0.8366414025999928}, {"ruleAttribute": "AEypmgaC", "ruleCriteria": "MAXIMUM", "ruleValue": 0.407428067319219}]}]}, "groupType": "xsZfuXWh"}' \
    > test.out 2>&1
eval_tap $? 47 'CreateNewGroupPublicV2' test.out

#- 48 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["Q6xsRJ0g", "CAgLMR6U", "CXFsUKSv"]}' \
    > test.out 2>&1
eval_tap $? 48 'GetListGroupByIDsV2' test.out

#- 49 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'YMC3fuXQ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "Z82UmVe3", "groupIcon": "6F1llIoU", "groupName": "EDjI8Y9d", "groupRegion": "8X2D58Vx", "groupType": "P4XkRo1H"}' \
    > test.out 2>&1
eval_tap $? 49 'UpdatePutSingleGroupPublicV2' test.out

#- 50 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId '93MhI8x0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteGroupPublicV2' test.out

#- 51 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'T2hYsyAn' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "jypLIWQo", "groupIcon": "JwfAdikJ", "groupName": "WFaMLFqd", "groupRegion": "jhNNusR7", "groupType": "gnLM0OQG"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePatchSingleGroupPublicV2' test.out

#- 52 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'XMdzEHqd' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"qZYLJTqK": {}, "rC6NBJMV": {}, "wo0GMxzk": {}}}' \
    > test.out 2>&1
eval_tap $? 52 'UpdateGroupCustomAttributesPublicV2' test.out

#- 53 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'Am45KHVe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'AcceptGroupInvitationPublicV2' test.out

#- 54 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'OQ63Pek3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'RejectGroupInvitationPublicV2' test.out

#- 55 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'ovgXCbLO' \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 55 'GetGroupInviteRequestPublicV2' test.out

#- 56 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'HxYzLnwu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'JoinGroupV2' test.out

#- 57 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'dCMkGfkL' \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupJoinRequestPublicV2' test.out

#- 58 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'TYr8ZWXN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'LeaveGroupPublicV2' test.out

#- 59 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'YZzxhUUx' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"eei5KWEi": {}, "eh4fy7uv": {}, "AVXhd94p": {}}}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateGroupCustomRulePublicV2' test.out

#- 60 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'pq9ztFWe' \
    --groupId 'Ow1x8omt' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "T3G4iJyx", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5311707348703117}, {"ruleAttribute": "81NU1Nvl", "ruleCriteria": "EQUAL", "ruleValue": 0.6950599660272637}, {"ruleAttribute": "NywZkOu8", "ruleCriteria": "MAXIMUM", "ruleValue": 0.19226934223434022}]}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateGroupPredefinedRulePublicV2' test.out

#- 61 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'oIw6wUHh' \
    --groupId 'ucimoqyM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'DeleteGroupPredefinedRulePublicV2' test.out

#- 62 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 62 'GetMemberRolesListPublicV2' test.out

#- 63 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'iU6L5dM7' \
    --memberRoleId '0e5s0bhx' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "sROfWq7L"}' \
    > test.out 2>&1
eval_tap $? 63 'UpdateMemberRolePublicV2' test.out

#- 64 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'HV2WFQSS' \
    --memberRoleId 'Uf7XAGAx' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "OqkaXEWc"}' \
    > test.out 2>&1
eval_tap $? 64 'DeleteMemberRolePublicV2' test.out

#- 65 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 65 'GetUserGroupInformationPublicV2' test.out

#- 66 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 66 'GetMyGroupJoinRequestV2' test.out

#- 67 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'KHXaSnK3' \
    --namespace $AB_NAMESPACE \
    --userId '8KsW9sRQ' \
    > test.out 2>&1
eval_tap $? 67 'InviteGroupPublicV2' test.out

#- 68 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'JQ08udc2' \
    --namespace $AB_NAMESPACE \
    --userId 'qcbj74Sa' \
    > test.out 2>&1
eval_tap $? 68 'CancelInvitationGroupMemberV2' test.out

#- 69 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'CpEpPAne' \
    --namespace $AB_NAMESPACE \
    --userId 'pmk2bV5Z' \
    > test.out 2>&1
eval_tap $? 69 'AcceptGroupJoinRequestPublicV2' test.out

#- 70 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'WAGkWyJU' \
    --namespace $AB_NAMESPACE \
    --userId 'HkPpPzHM' \
    > test.out 2>&1
eval_tap $? 70 'RejectGroupJoinRequestPublicV2' test.out

#- 71 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'iqhYbWIO' \
    --namespace $AB_NAMESPACE \
    --userId '1sSir3Cg' \
    > test.out 2>&1
eval_tap $? 71 'KickGroupMemberPublicV2' test.out

#- 72 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'Nv56K9Ly' \
    --namespace $AB_NAMESPACE \
    --userId 'YOMOcBFx' \
    > test.out 2>&1
eval_tap $? 72 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE