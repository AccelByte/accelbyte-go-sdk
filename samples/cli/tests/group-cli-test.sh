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
    --limit '56' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "Zx9JwfiP", "description": "TFAg6EDC", "globalRules": [{"allowedAction": "s01mh4wd", "ruleDetail": [{"ruleAttribute": "cPjG22W4", "ruleCriteria": "EQUAL", "ruleValue": 0.025586128705999966}, {"ruleAttribute": "JkNv753u", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8534131668843354}, {"ruleAttribute": "PgKX9IkD", "ruleCriteria": "MINIMUM", "ruleValue": 0.22269890824647243}]}, {"allowedAction": "YJoqcKnr", "ruleDetail": [{"ruleAttribute": "F3vgjLqq", "ruleCriteria": "MAXIMUM", "ruleValue": 0.25062154148112714}, {"ruleAttribute": "mct737O4", "ruleCriteria": "MINIMUM", "ruleValue": 0.78635752997782}, {"ruleAttribute": "c9dWGZMu", "ruleCriteria": "MINIMUM", "ruleValue": 0.7710087663624496}]}, {"allowedAction": "Ab0tddG6", "ruleDetail": [{"ruleAttribute": "Q4f2dgG0", "ruleCriteria": "MINIMUM", "ruleValue": 0.7644313338682943}, {"ruleAttribute": "HBpYv5t4", "ruleCriteria": "EQUAL", "ruleValue": 0.8218597293212477}, {"ruleAttribute": "mPyPHctQ", "ruleCriteria": "MINIMUM", "ruleValue": 0.7244239151965002}]}], "groupAdminRoleId": "1XHPVD5D", "groupMaxMember": 26, "groupMemberRoleId": "Y99bTI1D", "name": "1w5QiUai"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'Lj5UajYZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'a6mTBSuP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode '50ZPwmFq' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "63U2rvKd", "groupMaxMember": 29, "name": "J2Jw5usX"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'DHjblAYF' \
    --configurationCode 'hbgEwRZG' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "ZIZnY2pc", "ruleCriteria": "EQUAL", "ruleValue": 0.9156453952687436}, {"ruleAttribute": "hrWsJNeg", "ruleCriteria": "MINIMUM", "ruleValue": 0.1098885805949511}, {"ruleAttribute": "v15Qv0oF", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6564763691476894}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'FK6oc82K' \
    --configurationCode 'ObqLbDI6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'bpyPpmvE' \
    --groupName 'RqesOEzN' \
    --groupRegion '38UtpCoS' \
    --limit '73' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'WO7tJpcy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'A03uwL7x' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'iwXhzDYy' \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '21' \
    --order 'NmplfWMw' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "g9pg9iIp", "memberRolePermissions": [{"action": 41, "resourceName": "5RFQvhq1"}, {"action": 89, "resourceName": "vx2dkZKU"}, {"action": 13, "resourceName": "EJNsXKnq"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'RjJJm5H3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'Uii3ZUJZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'cPDqquuc' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "v2SoPFkW"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'F8Y7BkJL' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 91, "resourceName": "nqHHjsHt"}, {"action": 65, "resourceName": "D08A9APa"}, {"action": 49, "resourceName": "78Px5bm5"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'PKejqTwY' \
    --groupRegion 'fHSw5tfn' \
    --limit '91' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "AhCEinPQ", "customAttributes": {"0tiOw8ow": {}, "AyeTJk6y": {}, "bm81BDkm": {}}, "groupDescription": "XDt3IK9F", "groupIcon": "O3oeZkF4", "groupMaxMember": 36, "groupName": "Yod8yhsI", "groupRegion": "MKzMiRgV", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "arEFQ1L5", "ruleDetail": [{"ruleAttribute": "qGfgkSrB", "ruleCriteria": "MINIMUM", "ruleValue": 0.5834502146724968}, {"ruleAttribute": "nNQpbfDt", "ruleCriteria": "EQUAL", "ruleValue": 0.6180993971044982}, {"ruleAttribute": "R7S0o5nV", "ruleCriteria": "MINIMUM", "ruleValue": 0.9585555487592261}]}, {"allowedAction": "8JgjcpHe", "ruleDetail": [{"ruleAttribute": "xHtKPEFg", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2802474131942295}, {"ruleAttribute": "TISO8lBC", "ruleCriteria": "MINIMUM", "ruleValue": 0.38236424167169225}, {"ruleAttribute": "ayvCJJsB", "ruleCriteria": "EQUAL", "ruleValue": 0.8619695106163757}]}, {"allowedAction": "vV2O4jm7", "ruleDetail": [{"ruleAttribute": "RKiOuyk6", "ruleCriteria": "EQUAL", "ruleValue": 0.8789803149204476}, {"ruleAttribute": "KnUkGzZE", "ruleCriteria": "EQUAL", "ruleValue": 0.4432432859482123}, {"ruleAttribute": "wZbDSDdJ", "ruleCriteria": "MINIMUM", "ruleValue": 0.11111075972265771}]}]}, "groupType": "jvxgOUNM"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'sg1YOX36' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'ciJGo5Hd' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "WhovhyvU", "groupIcon": "lHPBSWZp", "groupName": "410bLty4", "groupRegion": "l0CYYTpA", "groupType": "kEhjmx2V"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'W60i7GA6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'g7djpbmh' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "mXnPvnnu", "groupIcon": "vGhqKUQY", "groupName": "K4jWoAK1", "groupRegion": "CzyT5efZ", "groupType": "PxpaFqW1"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'lb700ymT' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"eHwBECRf": {}, "CFiy2bqB": {}, "42wHJlwy": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'Q4u6pmu9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'kyJy1Ikz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'YtxKowyu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId '9bmpvzCb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'HnyYtmkg' \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'SwtTdDdS' \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '95' \
    --order 'cIly7UlV' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'qyI7j7bs' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"dNQAl8Q9": {}, "Oc94kn6u": {}, "fXSErvKs": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'lfTODjsm' \
    --groupId 'ekgLlKyo' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "tKB4Juen", "ruleCriteria": "MAXIMUM", "ruleValue": 0.43960859330663704}, {"ruleAttribute": "l3C0q97Q", "ruleCriteria": "EQUAL", "ruleValue": 0.4630191681619199}, {"ruleAttribute": "wQnmXuJh", "ruleCriteria": "EQUAL", "ruleValue": 0.5901623434979134}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'sXOt1T0j' \
    --groupId 'X80W6v3T' \
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
    --limit '14' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'VzBRBwwE' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "K2k4xMLb"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'vXjJsc08' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "65givenw"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'dTZondwD' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Nq1BbO2G' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ETDikdXf' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'YkUPPFRZ' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '9jPb0lgm' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE