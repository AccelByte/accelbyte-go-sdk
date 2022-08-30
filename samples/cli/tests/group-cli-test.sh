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
    --limit '73' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "QBEfeT4H", "description": "2xpO4ZUe", "globalRules": [{"allowedAction": "Olxyba5s", "ruleDetail": [{"ruleAttribute": "isTZQ3V0", "ruleCriteria": "MINIMUM", "ruleValue": 0.7752187153337837}, {"ruleAttribute": "MC51v640", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8733908790942161}, {"ruleAttribute": "ZX8DExiw", "ruleCriteria": "MINIMUM", "ruleValue": 0.6830401840115011}]}, {"allowedAction": "244BrFB8", "ruleDetail": [{"ruleAttribute": "mTnmt9MO", "ruleCriteria": "EQUAL", "ruleValue": 0.6199074718823965}, {"ruleAttribute": "PJ8X3Pyy", "ruleCriteria": "EQUAL", "ruleValue": 0.08801672180426101}, {"ruleAttribute": "DXZ3bY5K", "ruleCriteria": "MAXIMUM", "ruleValue": 0.007024620016283678}]}, {"allowedAction": "iAnKxeq7", "ruleDetail": [{"ruleAttribute": "UxtW0Y8Q", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6352240510492719}, {"ruleAttribute": "1mOfarVD", "ruleCriteria": "MINIMUM", "ruleValue": 0.8738360859316117}, {"ruleAttribute": "oICvM31b", "ruleCriteria": "EQUAL", "ruleValue": 0.19796025243099669}]}], "groupAdminRoleId": "GC5yXJaS", "groupMaxMember": 82, "groupMemberRoleId": "pIQGZ5ja", "name": "FXPp09NE"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'IQvSRZKv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'E5CI43DJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'X2UlrR1P' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "6Z27m297", "groupMaxMember": 36, "name": "JOgnXmyh"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'eFMiSJiy' \
    --configurationCode 'jhm1Hlof' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "j1RIxglw", "ruleCriteria": "EQUAL", "ruleValue": 0.9476324251671916}, {"ruleAttribute": "X4ZqKu0Y", "ruleCriteria": "EQUAL", "ruleValue": 0.24135821174835015}, {"ruleAttribute": "0BpbOI5j", "ruleCriteria": "MINIMUM", "ruleValue": 0.6813068601019311}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'AjMlg7Ek' \
    --configurationCode 'az02X8dV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'A8pNstUi' \
    --groupName 'oWaEew0J' \
    --groupRegion 'NKhQJZv0' \
    --limit '38' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'XXlaurSz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'PKW8qH1j' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'YNxjY82u' \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '26' \
    --order 'wvZU6SlO' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "Glq8D7lZ", "memberRolePermissions": [{"action": 16, "resourceName": "4m9rduZI"}, {"action": 10, "resourceName": "kWdhfDn1"}, {"action": 42, "resourceName": "jouWntbq"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'Cz6rEOlY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'eoNF6m0S' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'hH8WovUY' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "knGyzsLu"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'I4OCnP0f' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 8, "resourceName": "iQ8AK4cN"}, {"action": 21, "resourceName": "1HvTd5w9"}, {"action": 81, "resourceName": "eVdpUzEe"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'TMNyOS9W' \
    --groupRegion 'nlWpm4ia' \
    --limit '98' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "ZWsPXh7z", "customAttributes": {"0V7oh7f5": {}, "X9eCHlbo": {}, "mJhZGYMe": {}}, "groupDescription": "rDrtBE2a", "groupIcon": "lD2Bn3nj", "groupMaxMember": 40, "groupName": "WhGZ2zFY", "groupRegion": "4Q5L3zbd", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "NVN5iMLQ", "ruleDetail": [{"ruleAttribute": "mYLvEOmX", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5743041681273328}, {"ruleAttribute": "ewP7lFxN", "ruleCriteria": "EQUAL", "ruleValue": 0.7332463581310391}, {"ruleAttribute": "ipY3iKmz", "ruleCriteria": "EQUAL", "ruleValue": 0.09723993189071722}]}, {"allowedAction": "bgX0DB32", "ruleDetail": [{"ruleAttribute": "CjVZGqXb", "ruleCriteria": "EQUAL", "ruleValue": 0.44730856460473734}, {"ruleAttribute": "D8uuX8Hn", "ruleCriteria": "EQUAL", "ruleValue": 0.856715181580704}, {"ruleAttribute": "u7OGgnxZ", "ruleCriteria": "EQUAL", "ruleValue": 0.17060598323953236}]}, {"allowedAction": "c4ziGYDb", "ruleDetail": [{"ruleAttribute": "ZiocrW3i", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6342797411354717}, {"ruleAttribute": "Gu0gIVUG", "ruleCriteria": "MAXIMUM", "ruleValue": 0.33765063267367346}, {"ruleAttribute": "JLwjLATb", "ruleCriteria": "EQUAL", "ruleValue": 0.9779704931169275}]}]}, "groupType": "s1Ui6syH"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'yNhnkc2J' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'ooeLHHbO' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "aHHjHS8q", "groupIcon": "pgvGmkXZ", "groupName": "vOhlHNG5", "groupRegion": "mBmyom9Q", "groupType": "0U8grEh7"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'pSJqZgv4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'GXtaJMbG' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "agX92xXL", "groupIcon": "hFa1Pq8j", "groupName": "pG1wyCwl", "groupRegion": "lYCWRqX6", "groupType": "FSd4CCey"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'YHqUxGk0' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"zdf9WHlg": {}, "ViLzGpaW": {}, "thawZ7DC": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId '6B9l86Wy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'BIZj0zVX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'Mo8DF2Ns' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId '3p0gvs96' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'YUIuXVKl' \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId '6Sa7XatK' \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '23' \
    --order 'W1GDobe4' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'KLquU3EO' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"qTWkFTgS": {}, "hwMSYLfl": {}, "kPkHy3kp": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction '4nLehQZ6' \
    --groupId 'z3zqqFQs' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "TpyArdeQ", "ruleCriteria": "EQUAL", "ruleValue": 0.5466250176057934}, {"ruleAttribute": "6hZqQ5uJ", "ruleCriteria": "MINIMUM", "ruleValue": 0.06469251185075386}, {"ruleAttribute": "H2wGwPsQ", "ruleCriteria": "MINIMUM", "ruleValue": 0.5820387605983777}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'oId2zrje' \
    --groupId 'qgjwBlxF' \
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
    --limit '66' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'j3Bsps0N' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "V8sHBW4b"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'M7c0yhy0' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "f5tclwed"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'CssQoWSf' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ikE8WNZ1' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'KZHDBeyu' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'JDDQihgE' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'gpcv2Wgh' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE