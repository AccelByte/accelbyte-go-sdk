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
    --limit '87' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "UEZ2zXt0", "description": "SznQeh89", "globalRules": [{"allowedAction": "UfWwkHiJ", "ruleDetail": [{"ruleAttribute": "63GjeBe7", "ruleCriteria": "EQUAL", "ruleValue": 0.783068447177405}, {"ruleAttribute": "e1w4bzjV", "ruleCriteria": "EQUAL", "ruleValue": 0.10577654685157156}, {"ruleAttribute": "7pn9mGHp", "ruleCriteria": "EQUAL", "ruleValue": 0.03741482476598701}]}, {"allowedAction": "bMfunWEs", "ruleDetail": [{"ruleAttribute": "NcKZ3mZ5", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3004189363967812}, {"ruleAttribute": "12SFFTrw", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8205633191511907}, {"ruleAttribute": "cwIau6p3", "ruleCriteria": "EQUAL", "ruleValue": 0.11933932136967973}]}, {"allowedAction": "XwqeR0tu", "ruleDetail": [{"ruleAttribute": "R5XWweX9", "ruleCriteria": "MAXIMUM", "ruleValue": 0.969602572335425}, {"ruleAttribute": "w1YAVNHl", "ruleCriteria": "EQUAL", "ruleValue": 0.9160962767678216}, {"ruleAttribute": "55vVRxbB", "ruleCriteria": "MINIMUM", "ruleValue": 0.08212742325386857}]}], "groupAdminRoleId": "pCwBZOXN", "groupMaxMember": 60, "groupMemberRoleId": "exNKeYZa", "name": "3J0Ygrqx"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'nLbikkWp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'JHbakGBj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'gRBxW1QN' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "k2ai8aB9", "groupMaxMember": 6, "name": "CqbnasSi"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'HSPvPdr8' \
    --configurationCode 'OS9zvZtj' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "nAnhcgyl", "ruleCriteria": "EQUAL", "ruleValue": 0.8181105302599804}, {"ruleAttribute": "b11eoauS", "ruleCriteria": "EQUAL", "ruleValue": 0.5477257913830116}, {"ruleAttribute": "LTe1ly8p", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9781580008471804}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'szrJxUue' \
    --configurationCode 'tTejRUqj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'Hvu7T5Uy' \
    --groupName 'KmjhIuWp' \
    --groupRegion '7FTyFisO' \
    --limit '75' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'O3oEzcn5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'eaYH5jtg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'hOFZTxMl' \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '85' \
    --order 'Z0U7Rjv3' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "bHWDXoTf", "memberRolePermissions": [{"action": 82, "resourceName": "cnvCxQMM"}, {"action": 83, "resourceName": "GU2yMv1A"}, {"action": 9, "resourceName": "OjJR2GH7"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'vndwyZqW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'wJQbS8vm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId '6AuAqn2q' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "pRDPnbUW"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'QCJWnmVq' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 1, "resourceName": "ESgVT1Y5"}, {"action": 43, "resourceName": "P3a04sUA"}, {"action": 43, "resourceName": "ETlVA8fa"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'zxweaTO6' \
    --groupRegion '6XCyXM4e' \
    --limit '37' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "7T5t3x8q", "customAttributes": {"cGKh78db": {}, "0fz1BbQf": {}, "qIuPH2wH": {}}, "groupDescription": "GydmeKob", "groupIcon": "xNNPtydF", "groupMaxMember": 50, "groupName": "9WkexMVR", "groupRegion": "EVs7R2o6", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "MpgqW2Di", "ruleDetail": [{"ruleAttribute": "iwxiVwEn", "ruleCriteria": "MAXIMUM", "ruleValue": 0.11475253244778127}, {"ruleAttribute": "HyYVpBnz", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3023752477977627}, {"ruleAttribute": "vWNcAjd6", "ruleCriteria": "EQUAL", "ruleValue": 0.6722299681916692}]}, {"allowedAction": "P7y88JkI", "ruleDetail": [{"ruleAttribute": "M1BwR5ka", "ruleCriteria": "MAXIMUM", "ruleValue": 0.21218105456123537}, {"ruleAttribute": "L6UiSpJs", "ruleCriteria": "EQUAL", "ruleValue": 0.9116751679641346}, {"ruleAttribute": "xSbr3xpA", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9678860220860372}]}, {"allowedAction": "MFWjj9Jv", "ruleDetail": [{"ruleAttribute": "U0WBoxqN", "ruleCriteria": "MAXIMUM", "ruleValue": 0.260952783873582}, {"ruleAttribute": "tWnME4fu", "ruleCriteria": "MAXIMUM", "ruleValue": 0.42645643203261097}, {"ruleAttribute": "n9kTYMnC", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7165881911202873}]}]}, "groupType": "FlNMJvCG"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'DiL0Q98K' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'XxaHKLzs' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "3oSpncht", "groupIcon": "kvoM0a31", "groupName": "m8N7yRod", "groupRegion": "IlUIGlAF", "groupType": "gKOMiELq"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'SK3eaiii' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId '4QD5M7wm' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "xoXshAxR", "groupIcon": "1JK4rHAV", "groupName": "iYXEOsDM", "groupRegion": "QRYAhnZz", "groupType": "Vd1XvOdA"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId '32NSJ49W' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"AicspEsz": {}, "45Owv9wQ": {}, "N58sqIvt": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'TMQBih9I' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId '0pSs1nNb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'uwzRXSV2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'oKiScWAH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'OANQmhkW' \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId '2EcsiRk2' \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '62' \
    --order 'DvBDHQS8' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'zgW95n5m' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"1BVJWmKe": {}, "6VczMZuh": {}, "TiHsVRGU": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'U1W1War2' \
    --groupId '0g6e4QRo' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "kvFvyOgL", "ruleCriteria": "EQUAL", "ruleValue": 0.732268169611185}, {"ruleAttribute": "Rt5FrEfL", "ruleCriteria": "EQUAL", "ruleValue": 0.8127764961903035}, {"ruleAttribute": "Y5x0kCOZ", "ruleCriteria": "MINIMUM", "ruleValue": 0.29579216349028437}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'i0OjA8vl' \
    --groupId 'GAjHZ4gk' \
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
    --limit '73' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'nuzo6qnn' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "EIPtsvpP"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'tVmCQ0oL' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "RSyLHNSu"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'D3XGSmnF' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'mDhad0iD' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'UjRXNBHM' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'DzGw8TcD' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'L0fOkepe' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE