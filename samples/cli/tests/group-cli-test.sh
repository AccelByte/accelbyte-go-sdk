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
    --limit '20' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "6Ref5p0F", "description": "4J62NhxW", "globalRules": [{"allowedAction": "bg9eZCVs", "ruleDetail": [{"ruleAttribute": "0dlid6Nk", "ruleCriteria": "MINIMUM", "ruleValue": 0.007393738791818261}, {"ruleAttribute": "smptcKww", "ruleCriteria": "MINIMUM", "ruleValue": 0.11271011367267969}, {"ruleAttribute": "0Ctb2KQE", "ruleCriteria": "EQUAL", "ruleValue": 0.9446685243889332}]}, {"allowedAction": "jZOHmtHQ", "ruleDetail": [{"ruleAttribute": "e6QAo7AV", "ruleCriteria": "MINIMUM", "ruleValue": 0.050744087692691564}, {"ruleAttribute": "psJgmur5", "ruleCriteria": "EQUAL", "ruleValue": 0.6768493274147824}, {"ruleAttribute": "4dntrJwZ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5359033073201649}]}, {"allowedAction": "B8db97Uw", "ruleDetail": [{"ruleAttribute": "C3JhVYDA", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8608798527027492}, {"ruleAttribute": "JGTfGD88", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7610230026342605}, {"ruleAttribute": "fS8dPHnP", "ruleCriteria": "MAXIMUM", "ruleValue": 0.0729417207116948}]}], "groupAdminRoleId": "6J9Agmp4", "groupMaxMember": 7, "groupMemberRoleId": "on5cMcph", "name": "SsckAVFP"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'yKCz1Ijx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'APXd9Pil' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'NrcX7JXf' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "DOO39wH5", "groupMaxMember": 60, "name": "9msYqWkT"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'nBFLDOnq' \
    --configurationCode 's9LqM1OA' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "nnVfYogg", "ruleCriteria": "EQUAL", "ruleValue": 0.5480641885843305}, {"ruleAttribute": "MbKsOBti", "ruleCriteria": "MINIMUM", "ruleValue": 0.5929991116872434}, {"ruleAttribute": "99jg23yg", "ruleCriteria": "MINIMUM", "ruleValue": 0.9835676173330318}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'CQ0z4j3x' \
    --configurationCode 'saLQC5kO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'QDgoT1dK' \
    --groupName 'V858B5XF' \
    --groupRegion 'ZFJtHecY' \
    --limit '28' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'A3P8mt2H' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'pVEjBWRv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId '5WXGXo5y' \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '93' \
    --order 'crbauE6y' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "0SKbRdKq", "memberRolePermissions": [{"action": 77, "resourceName": "nknQLKZq"}, {"action": 7, "resourceName": "PsfjXrSZ"}, {"action": 92, "resourceName": "BgPhv5TM"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'zW0FNClZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId '76GqSN2b' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'VuJLuudY' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "TRPZF5et"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'MEVpAM1b' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 53, "resourceName": "4YNqWbPu"}, {"action": 26, "resourceName": "ef8DKcAU"}, {"action": 38, "resourceName": "ywVyVr68"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName '5iP415xy' \
    --groupRegion 'bCTiBNyb' \
    --limit '34' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "aJ8fwGZ7", "customAttributes": {"mtkezV1i": {}, "mC4CbGbc": {}, "nLF8VX8v": {}}, "groupDescription": "ydiWwx6U", "groupIcon": "quXlvZT9", "groupMaxMember": 15, "groupName": "nvKsAI2o", "groupRegion": "AaAlrOv4", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "mWhErKlm", "ruleDetail": [{"ruleAttribute": "L6wdakdE", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7418077345669356}, {"ruleAttribute": "HPn3kHkg", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5623570552125088}, {"ruleAttribute": "2Acll0zG", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4692485510445735}]}, {"allowedAction": "EHc0kTxf", "ruleDetail": [{"ruleAttribute": "SKj8y6Ee", "ruleCriteria": "MAXIMUM", "ruleValue": 0.1630154873893379}, {"ruleAttribute": "mTJUyJgg", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5427253616260296}, {"ruleAttribute": "1bgSvnme", "ruleCriteria": "MAXIMUM", "ruleValue": 0.12786414771714616}]}, {"allowedAction": "o68RWVF3", "ruleDetail": [{"ruleAttribute": "kVcMXD0W", "ruleCriteria": "MINIMUM", "ruleValue": 0.45265200024035246}, {"ruleAttribute": "9jdFd4vv", "ruleCriteria": "EQUAL", "ruleValue": 0.3590254738474352}, {"ruleAttribute": "R8aGLnlx", "ruleCriteria": "EQUAL", "ruleValue": 0.26628870145000216}]}]}, "groupType": "sfBGwsa7"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'Zzv116tD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'wY0VQJGh' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "oCTkv3A5", "groupIcon": "13bv0AzJ", "groupName": "610LfiuM", "groupRegion": "9yruY31V", "groupType": "3Ai5dfU3"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'sHq10fRY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'sULx64BH' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "DWkx4vpl", "groupIcon": "TYaONP12", "groupName": "K6Mgcwsn", "groupRegion": "P8LpGWPQ", "groupType": "OEnS5z7f"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'bg7tQCms' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"v0wfSA8i": {}, "B4MbMUN4": {}, "m8SM7u5W": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'Wtw6ewLA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'B26AuYhH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'ZuqB5vTs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'Wz8TGQF3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'GfucxuQM' \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'ugPxkfER' \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '40' \
    --order '2QzfMTYE' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'tZ0D1iDf' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"5Uv7IuGI": {}, "WQNjun6g": {}, "3SSJxHm1": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'UyUqqwRX' \
    --groupId 'jmw7ZRIc' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "xZobcwFf", "ruleCriteria": "MINIMUM", "ruleValue": 0.02366939302303639}, {"ruleAttribute": "hiVSRuUV", "ruleCriteria": "MINIMUM", "ruleValue": 0.3579589829093559}, {"ruleAttribute": "dkkXwKfu", "ruleCriteria": "MINIMUM", "ruleValue": 0.4536302180997387}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'R9AIPjdx' \
    --groupId 'kmoq4UBc' \
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
    --limit '65' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'wgemAzOu' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "yBzWg0r1"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'x0JLcO7t' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "hr80U97X"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Pu5Vftwm' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'OGJO4cmH' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'kKPkLoca' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'pfi3i4el' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'EtRuTRGK' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE