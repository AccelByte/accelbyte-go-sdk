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
echo "1..45"

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
    --limit '85' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "VvYZ7WfI", "description": "H3IMtcwd", "globalRules": [{"allowedAction": "3563OgCD", "ruleDetail": [{"ruleAttribute": "nOZ6exTT", "ruleCriteria": "EQUAL", "ruleValue": 0.7911360752702679}, {"ruleAttribute": "lRTNZg2w", "ruleCriteria": "EQUAL", "ruleValue": 0.23186030577183003}, {"ruleAttribute": "yCMHRtUq", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4249566699990237}]}, {"allowedAction": "oBokRxrX", "ruleDetail": [{"ruleAttribute": "olrr0OP4", "ruleCriteria": "MINIMUM", "ruleValue": 0.8862260318379656}, {"ruleAttribute": "cimxojQu", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8363933854302431}, {"ruleAttribute": "C78PxnrO", "ruleCriteria": "EQUAL", "ruleValue": 0.7668261712380496}]}, {"allowedAction": "Bq1HpAi9", "ruleDetail": [{"ruleAttribute": "ruOkNz1v", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9333058452514239}, {"ruleAttribute": "CEl11B2S", "ruleCriteria": "EQUAL", "ruleValue": 0.8222537072282653}, {"ruleAttribute": "aWRgifgX", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5793426007703484}]}], "groupAdminRoleId": "yCHUMfjz", "groupMaxMember": 93, "groupMemberRoleId": "LHjlGman", "name": "y9mzH5AO"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'CHW3lWi6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'algfhpxv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode '7oInwHhC' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "ipWjFIC0", "groupMaxMember": 57, "name": "70HrdO5R"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'ZCETrsWB' \
    --configurationCode 'bwyxGP23' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "3rVSmohp", "ruleCriteria": "MINIMUM", "ruleValue": 0.49229427887702293}, {"ruleAttribute": "1IrU9ndP", "ruleCriteria": "MAXIMUM", "ruleValue": 0.1100088220285329}, {"ruleAttribute": "TLwvXldr", "ruleCriteria": "MINIMUM", "ruleValue": 0.36187368144825793}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '0MQ3zTkl' \
    --configurationCode 'AOHkSHpB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'EqPcLSnH' \
    --groupName 'O6UoCvhH' \
    --groupRegion 'HSjyq3Jd' \
    --limit '95' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'BWYqQ44A' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'SFDoX5IR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'wI4bsRpO' \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '77' \
    --order 'zltjJT9U' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "yp3p5nbq", "memberRolePermissions": [{"action": 47, "resourceName": "wFlbOoGA"}, {"action": 79, "resourceName": "DGZ6Hlya"}, {"action": 12, "resourceName": "PKx6BN7w"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'P52MkbOH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'avXKJyLz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'z5Bmx7qk' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "o1KWXrIZ"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'znwkPCih' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 17, "resourceName": "7EDSjR90"}, {"action": 80, "resourceName": "KZUTXxFd"}, {"action": 93, "resourceName": "hkQl2P4R"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'qWRT7Iqz' \
    --groupRegion 'vKTIGR7E' \
    --limit '64' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "u8fjztnc", "customAttributes": {"rgCwIbTp": {}, "1ec4sGKH": {}, "ymZZlWQY": {}}, "groupDescription": "oILMilqX", "groupIcon": "q7ADl1CM", "groupMaxMember": 69, "groupName": "x6Xl27ru", "groupRegion": "48RrSvcP", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "FlN6PFHw", "ruleDetail": [{"ruleAttribute": "PxDXuTJ8", "ruleCriteria": "MINIMUM", "ruleValue": 0.04835241680957725}, {"ruleAttribute": "UbVUhPcO", "ruleCriteria": "EQUAL", "ruleValue": 0.10991217719353386}, {"ruleAttribute": "B4gmgoft", "ruleCriteria": "MAXIMUM", "ruleValue": 0.08227622165347426}]}, {"allowedAction": "HJdvsjY4", "ruleDetail": [{"ruleAttribute": "0D2wdfXQ", "ruleCriteria": "MINIMUM", "ruleValue": 0.8149750368510376}, {"ruleAttribute": "e0hePYng", "ruleCriteria": "MAXIMUM", "ruleValue": 0.17525733277373468}, {"ruleAttribute": "DqK0PLNG", "ruleCriteria": "MINIMUM", "ruleValue": 0.7955905317524058}]}, {"allowedAction": "7YLsFoab", "ruleDetail": [{"ruleAttribute": "Gef5BRg4", "ruleCriteria": "MINIMUM", "ruleValue": 0.4821838649166814}, {"ruleAttribute": "fPUxE3Ep", "ruleCriteria": "MINIMUM", "ruleValue": 0.20195177150050725}, {"ruleAttribute": "nxwnIGWb", "ruleCriteria": "MINIMUM", "ruleValue": 0.6392055136325873}]}]}, "groupType": "h3Mx3YDn"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'b3XIa7xw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'yExRp8Jl' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "88o6jiEt", "groupIcon": "h2cWucqQ", "groupName": "sv271S8r", "groupRegion": "MkaSuaVj", "groupType": "mYk5hbid"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'j8Hwok1o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'yqhE6DuE' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "r8cZgELs", "groupIcon": "3OjM13LN", "groupName": "QjDbCwy6", "groupRegion": "NmA6Wqla", "groupType": "TMYxzIRT"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'NDzXlUQZ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"FKqsRPoL": {}, "3mwzFbNM": {}, "6KpEHv7J": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'vrruPhvP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'ZhrHryXz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId '12DcqEgh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'gwDPUb7n' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'rUB4YWWV' \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'oxIEwPbM' \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '3' \
    --order 'e1kjzpiR' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'ucrCOKvu' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"CFGe10eh": {}, "uoNLxumy": {}, "Mbz8EgBr": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'nNLMobuS' \
    --groupId '5ObXu78s' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "4KHZrxGD", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5899177331859892}, {"ruleAttribute": "vMwRooN9", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9446839723491278}, {"ruleAttribute": "ZPDaI9P2", "ruleCriteria": "EQUAL", "ruleValue": 0.88740887845673}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'A4VMxbk4' \
    --groupId 'LBGTTN3M' \
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
    --limit '36' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'Ck8TZiiS' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "oQTnKGrc"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'tgCCxtIv' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "EHMo4bhY"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '3Cp0VIgX' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Z8eU9nyA' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'VXvewdAC' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '9v5mQNFr' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Dspn29ys' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE