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
echo "1..74"

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
    --limit '4' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "ta812ygTvc0oRnKO", "description": "c2ROooXbpKEavsWg", "globalRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "8s0hijJQd2FV81yw", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4944878603554085}, {"ruleAttribute": "Rp1gN2cCDIPvy1aH", "ruleCriteria": "EQUAL", "ruleValue": 0.5356522624631623}, {"ruleAttribute": "6bqc31zqppKt3AXI", "ruleCriteria": "MINIMUM", "ruleValue": 0.7232944607719206}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "FclkSsMrTFWzuj1T", "ruleCriteria": "EQUAL", "ruleValue": 0.8619705761442152}, {"ruleAttribute": "KeqMdVJjOfk2hhFW", "ruleCriteria": "EQUAL", "ruleValue": 0.8942732478418297}, {"ruleAttribute": "c08Tsy7ounkfNUE6", "ruleCriteria": "MAXIMUM", "ruleValue": 0.1991377318892601}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "Iw7cUOA7szzxZfyq", "ruleCriteria": "MINIMUM", "ruleValue": 0.9574889347834465}, {"ruleAttribute": "b3ET4YeWixAUYaHl", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3584419133687978}, {"ruleAttribute": "wIxrsY8VVIr088WK", "ruleCriteria": "MINIMUM", "ruleValue": 0.8935553958705795}]}], "groupAdminRoleId": "78jvLlURAP0rp7Yz", "groupMaxMember": 42, "groupMemberRoleId": "2Ek1kpL71jvFmAND", "name": "Vc6y7qXFFsYeaN7V"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'bpJwReYZXmYTrdMf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'APVCniAzuF0VcWca' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'APpLrgTn9b9ylzFe' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "ZyL70AsSeMGUusV6", "groupMaxMember": 57, "name": "FhrnThp2WC9EKInl"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'lKNgl05Qld819gk1' \
    --configurationCode '764obem5nVP1PdJr' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "xUHWGZOF9TAaTihO", "ruleCriteria": "EQUAL", "ruleValue": 0.0536852297554673}, {"ruleAttribute": "5knPCSb2PTxSuCrL", "ruleCriteria": "EQUAL", "ruleValue": 0.6579116266860093}, {"ruleAttribute": "rCLy4nJgfaRxGa8P", "ruleCriteria": "EQUAL", "ruleValue": 0.6983840207096216}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '8NmvaD1rtBbK8xGm' \
    --configurationCode 'g4H6WARd4PU8NxCD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode '1uKVcQcvRh4Dpx2z' \
    --groupName 'NVAHJXgFdWllHeGz' \
    --groupRegion '9oTMjflMDsRqnelm' \
    --limit '38' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId '1WcVIPubmadayvCF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'uM12YwKpqyZgO00M' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'z0vvk2GhYuk3qqJB' \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '17' \
    --order 'xN2oElmBfbJCLqD0' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "CDZMgWp54vMNA5De", "memberRolePermissions": [{"action": 23, "resourceName": "DjVoLCVgl1tpNlKZ"}, {"action": 7, "resourceName": "HtF4LPe6pXYuBZPH"}, {"action": 40, "resourceName": "ZRP6bLGx2J0bKWr7"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'TL1pLgagSosQOf3v' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId '018fNObZNgfcGw6i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'bHivTTmzrgN9xJl4' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "ENII0nbBhkRuJDfV"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'EK9GRCWtyrDCIgoT' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 50, "resourceName": "wgoPjVvdfxAAyjPK"}, {"action": 89, "resourceName": "iD45VjfYAjfXqylD"}, {"action": 99, "resourceName": "2KmzzcTDcW8j4Mqm"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'X8lP5rc8zvgtrrqY' \
    --groupRegion 'Jx6nv2vt4iisRpR1' \
    --limit '35' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "TCss5xbgS0ipRmtb", "customAttributes": {"JLUmfgwxrPE85Lzk": {}, "6sK3zAdAdQAdjxpS": {}, "NCjeYKEMilHWRN4v": {}}, "groupDescription": "TsyUnlC10BmUxlnA", "groupIcon": "kqYhRV1YHFNPCff0", "groupMaxMember": 87, "groupName": "0N2dc7HSzuJjpT88", "groupRegion": "DkrJMJccGDvwje2h", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "00hskRjFWModLCAd", "ruleCriteria": "MINIMUM", "ruleValue": 0.9604128484455066}, {"ruleAttribute": "5OtWtlq4u8cehtVB", "ruleCriteria": "EQUAL", "ruleValue": 0.9385051767565411}, {"ruleAttribute": "hbyRPZSOPlToP4PT", "ruleCriteria": "EQUAL", "ruleValue": 0.4396928644958442}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "FKAg2PqgehoYeAn7", "ruleCriteria": "MINIMUM", "ruleValue": 0.09586367514556549}, {"ruleAttribute": "lDXqmqdfYQoVnhp6", "ruleCriteria": "MAXIMUM", "ruleValue": 0.07647511242048965}, {"ruleAttribute": "J9cwJRea48Gg3bsJ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6001267912127032}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "jC2hOH5g9IHexYbe", "ruleCriteria": "MINIMUM", "ruleValue": 0.3849167367726899}, {"ruleAttribute": "TA1Ub3iKHzkl4Zh6", "ruleCriteria": "MAXIMUM", "ruleValue": 0.21175657182029417}, {"ruleAttribute": "IHyLZuCo9gSUNTAu", "ruleCriteria": "MAXIMUM", "ruleValue": 0.29934604584305136}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'iv9FmE66qkdWBDA6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'DWVZzjAudI7eTGbu' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "aNJeUla9CXlK7KgL", "groupIcon": "VowiV1erqBBHkcih", "groupName": "a8L7IIGV2Axpd9Op", "groupRegion": "96ixP7kqoJth8aw3", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'Yjtso5CKftW1hbJI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'UjUxngvVlrAHOxZx' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "dKiHALAehjjSSHWn", "groupIcon": "6gzr0bk5bnSmngK6", "groupName": "RXVQl2oM2nleB8Sj", "groupRegion": "VZ5lX6hFcIxYg3DH", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId '7d2yNUanY6ewikcN' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"eiWLsbIDxFQesxvb": {}, "7Bph3myQw0WVyPTK": {}, "GBSHKMfo85q2Udpq": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'rEyY4iUphYmYV0Q0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'aVYp8dYo8KEtwqfz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'KO1ObVbI2tNQ4vLM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId '2NLm5vqy3rbfhALm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'CsvgNGpYC6lxrBRz' \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'qoSJ2MRKYwzSyOEo' \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '29' \
    --order 'chbyMuF0nTbFnycg' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'v99CC67lZbgF6MCt' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"0iCbawhOb2lXjHD8": {}, "HZKNsTGnQwiBLtdT": {}, "RW68API11wcCIc1Q": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'TWi5KAAgyCBQWRu5' \
    --groupId 'OR2ebl2YWU4PAP6n' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "Wq4dAtXQyqw02f5S", "ruleCriteria": "MINIMUM", "ruleValue": 0.9329041559314079}, {"ruleAttribute": "XWnhVhY21jIsL3MA", "ruleCriteria": "MINIMUM", "ruleValue": 0.22498016685488886}, {"ruleAttribute": "cI2gQuNaleV4QfPK", "ruleCriteria": "EQUAL", "ruleValue": 0.2118611543058242}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'R5WzNZvfNFID6sCP' \
    --groupId '2ubx7cs80AYwvc9K' \
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
    --limit '9' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'cpd9NsU9Q8oIqWhm' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "wonrzo4XnBtDvzxC"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'oGUc2lOrxjOonPK1' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "wUceaDplc5htQxhP"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'OkCveeCqI91I1o0r' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '941PZzRiOVRyv2Fh' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '83CS7Y315UjZV7ll' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'xVXJHN7wnZVw4j5T' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'O6Nz1x1maPH2ZY8J' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["OrW3nJyZgR5fmyke", "wtxYMnVdYTeCIe3b", "R180ntFpAb4LNdTQ"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'RC7v3nZGpFaQroGY' \
    --limit '51' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId '9hU9vQAqbopEJ8EG' \
    --namespace $AB_NAMESPACE \
    --userId 'lytqgMGKYSDxNEwL' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "yfjaInhwAtCstKSw", "customAttributes": {"rPH4T38MkzY2ZBxU": {}, "BPCRUHpU2R8sdfOh": {}, "xvCq1FPfnREMKLHQ": {}}, "groupDescription": "LlS7nHctxQc9XoVe", "groupIcon": "YcxY9sQcElov6R3H", "groupMaxMember": 78, "groupName": "xo8v9HMrRKezCW5b", "groupRegion": "lByOVINYRIlS8Dak", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "HiwKNLxJPQNAjuTk", "ruleCriteria": "MAXIMUM", "ruleValue": 0.11025244802018508}, {"ruleAttribute": "SeCAbvFKQwR4C56o", "ruleCriteria": "MAXIMUM", "ruleValue": 0.19940446555214053}, {"ruleAttribute": "wqiHIQOcBFTKBBHa", "ruleCriteria": "EQUAL", "ruleValue": 0.5606016739812805}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "f8eqxCCqHo9jM7py", "ruleCriteria": "MINIMUM", "ruleValue": 0.9263052363051105}, {"ruleAttribute": "OIElw3mp7aQy0Z6T", "ruleCriteria": "MINIMUM", "ruleValue": 0.04384479063534974}, {"ruleAttribute": "IRGTycJQOs7ojIwV", "ruleCriteria": "EQUAL", "ruleValue": 0.04879460754361875}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "itMN1uNjDUdsMnPj", "ruleCriteria": "EQUAL", "ruleValue": 0.027117764003057654}, {"ruleAttribute": "D96BQ18BwCp5C4pm", "ruleCriteria": "MAXIMUM", "ruleValue": 0.02348104284713548}, {"ruleAttribute": "27xD68HPZ6o2ZGEU", "ruleCriteria": "EQUAL", "ruleValue": 0.8090935626515188}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["FF7QW8mw2kV123pY", "DEucibEevnbSkC8Z", "V03IG8cKFetJKumj"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId '64F195YAWOVKvXNN' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "tJJeYJ312mYEBPSD", "groupIcon": "YcDyXpe7lzCqZ2Xb", "groupName": "cU6AlUg0O7FNLbnO", "groupRegion": "vI5FRZmij6kdF3PY", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'P0jMkB2lhUEYryah' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'gyohHEgckQXra2I9' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "kVFZpHEJ54mGfO5m", "groupIcon": "LENeWMGbFEa1nG14", "groupName": "cFQ12gfk1vzHwipQ", "groupRegion": "sm8WFn48iZIoXQTy", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'sPDWibh1wUL0ZM3O' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"LwFkQeSVIpURijR4": {}, "na49HnXzym6sD6V9": {}, "5TcCSv8MaS9xH1WT": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'GkuBHPnBIvvqHFde' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'pxRctaoBhMhy5BQ7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'p7QeoEYVLLk4PdQC' \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId '2XzC1oyB8gse7hDU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'VYSdDUNELEBo4NEE' \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId '4Tkrl68qREugkxey' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'DIpekAoczrlxFDof' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"Hmc4TlEtHqN6TtdS": {}, "nLQWi8DbNCyrmDqK": {}, "7GeJSLtOtMqhXSJ1": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'KgHwiCvnNUXkTd5d' \
    --groupId 'XRhUObi4irXNIY3o' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "nKBpfIQX1Sd9jPvp", "ruleCriteria": "MAXIMUM", "ruleValue": 0.09079844669534853}, {"ruleAttribute": "vgzVeYGitsxkg0WT", "ruleCriteria": "MAXIMUM", "ruleValue": 0.41213719938953264}, {"ruleAttribute": "8isL4QZIU4jvEZ5O", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7177615876545501}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'eEXFAXjeWqjS2WXl' \
    --groupId '15yGD3ax8WyYr4dk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'dd0uvm9ABowSi0TG' \
    --memberRoleId 'WnvS8v2EmEN853JI' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "dWFcXhRRqz96KdUR"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'UjXFqRc3ShLXfXNM' \
    --memberRoleId '3Pbb3cVDGs6znSoZ' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "MX58Um4jQFQKPZai"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'Mrs3EsuRCtkXq9mu' \
    --namespace $AB_NAMESPACE \
    --userId 'NyYiRftohjplH8jt' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'LNs2zsQmLOTVcKT0' \
    --namespace $AB_NAMESPACE \
    --userId 'N9EahyKlDctI9Gtu' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'mE1dxyfzAzPQ6pr7' \
    --namespace $AB_NAMESPACE \
    --userId 'oJDC3MWR5pRCgPsA' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'xosSFvVxVnMkHQ3o' \
    --namespace $AB_NAMESPACE \
    --userId 'p41Zhp6an49mk67h' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'iXCqA7i6GVlHJNiN' \
    --namespace $AB_NAMESPACE \
    --userId 'OZYliuQxgAZZSI3v' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'fpDEl7ZtgVpYhZNW' \
    --namespace $AB_NAMESPACE \
    --userId '51zcDJMzPxVs81MF' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE