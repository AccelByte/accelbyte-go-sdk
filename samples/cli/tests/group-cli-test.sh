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
    --limit '11' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "0iNJNlLk", "description": "0CVuMVzg", "globalRules": [{"allowedAction": "36fFArYn", "ruleDetail": [{"ruleAttribute": "oFhHeHTg", "ruleCriteria": "EQUAL", "ruleValue": 0.30675660371101454}, {"ruleAttribute": "6QT31aVe", "ruleCriteria": "MAXIMUM", "ruleValue": 0.17105202099126937}, {"ruleAttribute": "avkV5pIF", "ruleCriteria": "MAXIMUM", "ruleValue": 0.09239921661315376}]}, {"allowedAction": "yANE73H4", "ruleDetail": [{"ruleAttribute": "oKhMdCAf", "ruleCriteria": "EQUAL", "ruleValue": 0.22267237387127126}, {"ruleAttribute": "u1ayrrAq", "ruleCriteria": "EQUAL", "ruleValue": 0.8530000000380478}, {"ruleAttribute": "JRmGZ7M5", "ruleCriteria": "MAXIMUM", "ruleValue": 0.09546005765623866}]}, {"allowedAction": "aNGhZIro", "ruleDetail": [{"ruleAttribute": "CAK1JszD", "ruleCriteria": "EQUAL", "ruleValue": 0.6704190524004402}, {"ruleAttribute": "UckJAEuX", "ruleCriteria": "EQUAL", "ruleValue": 0.5003693278663722}, {"ruleAttribute": "dcn6wP9w", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8836818443509477}]}], "groupAdminRoleId": "TekjVyrY", "groupMaxMember": 96, "groupMemberRoleId": "b1kSq6ob", "name": "saUVnzIy"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'a1Q2yHnC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'GgEQYWoE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'tEgsT4O5' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "f0cbgW6d", "groupMaxMember": 90, "name": "gXmZbPSV"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'rHq4UJJU' \
    --configurationCode 'FxDWybKK' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "w2KKMwah", "ruleCriteria": "EQUAL", "ruleValue": 0.33923617675149564}, {"ruleAttribute": "72aICvQc", "ruleCriteria": "MINIMUM", "ruleValue": 0.7414391222314761}, {"ruleAttribute": "q08Q0tAm", "ruleCriteria": "EQUAL", "ruleValue": 0.6381445328196022}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '1USRC8h3' \
    --configurationCode '3Yv1glpv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'AmVmcbwO' \
    --groupName 'WalGQIOw' \
    --groupRegion 'JsNXn2ud' \
    --limit '38' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId '1vYLf69I' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'CmF2oRym' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'C6wXLZmm' \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '29' \
    --order 'FdXJUbwI' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "hweVF6rO", "memberRolePermissions": [{"action": 84, "resourceName": "t4fqy6x6"}, {"action": 79, "resourceName": "R51ynGsi"}, {"action": 67, "resourceName": "psX46ZzA"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'VnPINkkD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'TrlE4lUu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'IH5J0FPD' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "4aOgxZmq"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'GVsShd8Q' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 98, "resourceName": "EUhBqUPG"}, {"action": 67, "resourceName": "x4GDJnRh"}, {"action": 51, "resourceName": "FF95qqeC"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'TuUadPyV' \
    --groupRegion 'RPgWeTTl' \
    --limit '19' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "ru0pzv95", "customAttributes": {"B7u0j0LI": {}, "spduKfVC": {}, "ZmvimpdI": {}}, "groupDescription": "ODB6xhpO", "groupIcon": "Bw9Sh6ls", "groupMaxMember": 38, "groupName": "m2pfbRyG", "groupRegion": "Ck3qW3sH", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "EHpEv4Zk", "ruleDetail": [{"ruleAttribute": "BcVqtSwF", "ruleCriteria": "EQUAL", "ruleValue": 0.42776373777987553}, {"ruleAttribute": "TU9xP1Cd", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8397701279325096}, {"ruleAttribute": "0C4MSlv4", "ruleCriteria": "MINIMUM", "ruleValue": 0.4769061093947803}]}, {"allowedAction": "itIk2XnK", "ruleDetail": [{"ruleAttribute": "jVIOGZrI", "ruleCriteria": "MINIMUM", "ruleValue": 0.8239807050003998}, {"ruleAttribute": "qYxrpZnW", "ruleCriteria": "EQUAL", "ruleValue": 0.8091308126602655}, {"ruleAttribute": "P0CDIZVf", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6482319302408739}]}, {"allowedAction": "FptyT45r", "ruleDetail": [{"ruleAttribute": "baaTTZ1y", "ruleCriteria": "MINIMUM", "ruleValue": 0.9810497844720749}, {"ruleAttribute": "6bspEpcQ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3941075282308494}, {"ruleAttribute": "FsfQJT7T", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3763645443164654}]}]}, "groupType": "aAhBdZpA"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'WeNWe1TJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'R370XqQG' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "unAMl37S", "groupIcon": "H6Jc30aT", "groupName": "0Ul0WrsG", "groupRegion": "wLLMATyp", "groupType": "7SQK4DpE"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'GoWrTFT1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'RN1ip1NF' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "0pmlaMsL", "groupIcon": "zedA36Lq", "groupName": "WhxoJtwW", "groupRegion": "Wkz7CFdk", "groupType": "uQirX10s"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId '3G4F8iF7' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"Dct035v8": {}, "r8mQDKBt": {}, "9Wkw0Tj2": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'sA0bc7mc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'FTqFjXmw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'sl0IGOVf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'N9j3NgyB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'mvVQCX72' \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'ATgeYYrE' \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '83' \
    --order 'tcfQ3UJA' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'dvuAm4Yb' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"WNcH1nVr": {}, "dCQV0Ed2": {}, "zGZQdRso": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'IFS45CMn' \
    --groupId 'RWyJ6xt9' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "WugcsIex", "ruleCriteria": "EQUAL", "ruleValue": 0.3376908562925601}, {"ruleAttribute": "Ts2m2qav", "ruleCriteria": "EQUAL", "ruleValue": 0.9109420236739055}, {"ruleAttribute": "UNhYQfb2", "ruleCriteria": "MINIMUM", "ruleValue": 0.6167276395049139}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'erwjEy7H' \
    --groupId 'iKfrce8U' \
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
    --limit '45' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'GIuHYrjo' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "GUCoB18x"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'BNe8Gynr' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "2dUCq4j6"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'DY0r5VqL' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'pTxK4mBN' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'RuTf8QMU' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'PeRUbp3M' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'zCmWOJSv' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'rvwqc2fg' \
    --limit '86' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 46 'GetUserJoinedGroupInformationPublicV2' test.out

#- 47 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "mseb5MAy", "customAttributes": {"xzdCnfzg": {}, "V9bDiGLt": {}, "839CjBkq": {}}, "groupDescription": "iBUf9o7g", "groupIcon": "K2dlvJhp", "groupMaxMember": 17, "groupName": "NzytCKZx", "groupRegion": "tvjabMd8", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "EWRXSROg", "ruleDetail": [{"ruleAttribute": "0ik8dzuL", "ruleCriteria": "MAXIMUM", "ruleValue": 0.617819818016778}, {"ruleAttribute": "qY0aZwvn", "ruleCriteria": "MAXIMUM", "ruleValue": 0.06845339760298197}, {"ruleAttribute": "a7pIH3e0", "ruleCriteria": "MINIMUM", "ruleValue": 0.06478893365944682}]}, {"allowedAction": "uOHbTlrj", "ruleDetail": [{"ruleAttribute": "vqxQG344", "ruleCriteria": "EQUAL", "ruleValue": 0.19810076502134377}, {"ruleAttribute": "M4PucDBC", "ruleCriteria": "MINIMUM", "ruleValue": 0.9250418876555824}, {"ruleAttribute": "y6cpIjhC", "ruleCriteria": "MAXIMUM", "ruleValue": 0.07029209136443926}]}, {"allowedAction": "9xyfs5ej", "ruleDetail": [{"ruleAttribute": "kLAzLqPO", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5355877524387991}, {"ruleAttribute": "faUOU9SQ", "ruleCriteria": "EQUAL", "ruleValue": 0.09842521156251094}, {"ruleAttribute": "erKgz2FF", "ruleCriteria": "EQUAL", "ruleValue": 0.33236297079543375}]}]}, "groupType": "yGid5Kqy"}' \
    > test.out 2>&1
eval_tap $? 47 'CreateNewGroupPublicV2' test.out

#- 48 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["yOAPLRfU", "ow6vIA5o", "yNSMfOrr"]}' \
    > test.out 2>&1
eval_tap $? 48 'GetListGroupByIDsV2' test.out

#- 49 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'ecMbBWFN' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "PclaZM2v", "groupIcon": "CicAc0gr", "groupName": "fhlooMec", "groupRegion": "TcVRcwzW", "groupType": "vIYJ4AHP"}' \
    > test.out 2>&1
eval_tap $? 49 'UpdatePutSingleGroupPublicV2' test.out

#- 50 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'XuQovsrJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteGroupPublicV2' test.out

#- 51 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'Y5lac3C1' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "lGWldIzJ", "groupIcon": "lAFBD4aW", "groupName": "vn0z2bQ0", "groupRegion": "NizIRb7C", "groupType": "OHWxdBJn"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePatchSingleGroupPublicV2' test.out

#- 52 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'AV9aDIx4' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"0SXEsH8h": {}, "g4wULuFv": {}, "xOe0JkgN": {}}}' \
    > test.out 2>&1
eval_tap $? 52 'UpdateGroupCustomAttributesPublicV2' test.out

#- 53 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'ATzzDGYq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'AcceptGroupInvitationPublicV2' test.out

#- 54 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'hYVfSnEZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'RejectGroupInvitationPublicV2' test.out

#- 55 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'Cia1AEXz' \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 55 'GetGroupInviteRequestPublicV2' test.out

#- 56 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId '9pNM42Vo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'JoinGroupV2' test.out

#- 57 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'ZUGPmJWE' \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupJoinRequestPublicV2' test.out

#- 58 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'OEorMBbG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'LeaveGroupPublicV2' test.out

#- 59 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'ZoKgGUxD' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"wceDTbYc": {}, "p6FJCelr": {}, "mSClc6yB": {}}}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateGroupCustomRulePublicV2' test.out

#- 60 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'S5Em8Wyw' \
    --groupId 'rN1D5u1N' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "aC7gg0pI", "ruleCriteria": "MAXIMUM", "ruleValue": 0.17457447412362093}, {"ruleAttribute": "ePreWs5v", "ruleCriteria": "EQUAL", "ruleValue": 0.9156597504419495}, {"ruleAttribute": "Z6Iaa4VL", "ruleCriteria": "MAXIMUM", "ruleValue": 0.32314951208842413}]}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateGroupPredefinedRulePublicV2' test.out

#- 61 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'Ln6LFwg6' \
    --groupId '773VjRMW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'DeleteGroupPredefinedRulePublicV2' test.out

#- 62 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 62 'GetMemberRolesListPublicV2' test.out

#- 63 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'zSKbDtJe' \
    --memberRoleId 'ZCPFlwWa' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "Nez5lonL"}' \
    > test.out 2>&1
eval_tap $? 63 'UpdateMemberRolePublicV2' test.out

#- 64 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'NWGDv8uB' \
    --memberRoleId '9PVVRVOy' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "UCKVOzUa"}' \
    > test.out 2>&1
eval_tap $? 64 'DeleteMemberRolePublicV2' test.out

#- 65 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 65 'GetUserGroupInformationPublicV2' test.out

#- 66 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 66 'GetMyGroupJoinRequestV2' test.out

#- 67 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'Cmrtaamj' \
    --namespace $AB_NAMESPACE \
    --userId 'vpK5auvA' \
    > test.out 2>&1
eval_tap $? 67 'InviteGroupPublicV2' test.out

#- 68 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'HWyfcCPg' \
    --namespace $AB_NAMESPACE \
    --userId 'eNSUiemz' \
    > test.out 2>&1
eval_tap $? 68 'CancelInvitationGroupMemberV2' test.out

#- 69 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId '69UZjoPX' \
    --namespace $AB_NAMESPACE \
    --userId '64xYs3bd' \
    > test.out 2>&1
eval_tap $? 69 'AcceptGroupJoinRequestPublicV2' test.out

#- 70 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId '00eOSE53' \
    --namespace $AB_NAMESPACE \
    --userId 'eZoRYTBZ' \
    > test.out 2>&1
eval_tap $? 70 'RejectGroupJoinRequestPublicV2' test.out

#- 71 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'W7RQZk8N' \
    --namespace $AB_NAMESPACE \
    --userId 'f8nFKMX9' \
    > test.out 2>&1
eval_tap $? 71 'KickGroupMemberPublicV2' test.out

#- 72 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'bnAzec05' \
    --namespace $AB_NAMESPACE \
    --userId 'zyd7n7y5' \
    > test.out 2>&1
eval_tap $? 72 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE