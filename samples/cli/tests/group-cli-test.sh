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
    --limit '99' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "OgrJKc1M", "description": "FFZjdY24", "globalRules": [{"allowedAction": "rvwoxOnI", "ruleDetail": [{"ruleAttribute": "fGtywN2t", "ruleCriteria": "EQUAL", "ruleValue": 0.5067580130119301}, {"ruleAttribute": "FMhi3ZiU", "ruleCriteria": "MINIMUM", "ruleValue": 0.8972533862679901}, {"ruleAttribute": "ET4Bl4ib", "ruleCriteria": "MINIMUM", "ruleValue": 0.42941637948033873}]}, {"allowedAction": "udxt97H3", "ruleDetail": [{"ruleAttribute": "25h3looA", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7324878162221613}, {"ruleAttribute": "1fufwUSK", "ruleCriteria": "MINIMUM", "ruleValue": 0.6506391213721693}, {"ruleAttribute": "Y87lAdKq", "ruleCriteria": "EQUAL", "ruleValue": 0.5861956303168785}]}, {"allowedAction": "d8XJGyXa", "ruleDetail": [{"ruleAttribute": "SgOox6Vn", "ruleCriteria": "MAXIMUM", "ruleValue": 0.14671874201304558}, {"ruleAttribute": "7RTqJ0EY", "ruleCriteria": "EQUAL", "ruleValue": 0.7448578735370496}, {"ruleAttribute": "TXlz37Lp", "ruleCriteria": "EQUAL", "ruleValue": 0.9008143711867489}]}], "groupAdminRoleId": "rBjNecl1", "groupMaxMember": 22, "groupMemberRoleId": "i20jVUML", "name": "c2Y9qFdV"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'byLP1N86' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'ef1SgYZ2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'LqwpSmYz' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "BaRAIshP", "groupMaxMember": 45, "name": "Se7ZRkuu"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'q3ybcmUZ' \
    --configurationCode 'sBSXpZlY' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "koZOsOwI", "ruleCriteria": "EQUAL", "ruleValue": 0.37348440802844163}, {"ruleAttribute": "62jCOB2H", "ruleCriteria": "EQUAL", "ruleValue": 0.19320737986514125}, {"ruleAttribute": "0H5QmaaE", "ruleCriteria": "MAXIMUM", "ruleValue": 0.39766178734286894}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '24d4Z5it' \
    --configurationCode 'uJeO2FIJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'RIRA5TT8' \
    --groupName 'Ube0PWsQ' \
    --groupRegion 'bBnDxjYE' \
    --limit '15' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId '0JhbYbL8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'NbhDNrVi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'rpz1ZKd4' \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '98' \
    --order 'Wb8hbo5c' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "mNPCwYTm", "memberRolePermissions": [{"action": 14, "resourceName": "VoLb3ZYH"}, {"action": 67, "resourceName": "emafIwsY"}, {"action": 0, "resourceName": "JkrTK8uo"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'NLRCOO3w' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'eiwuhQZf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId '8rl6Upma' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "Ner6xJJj"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId '8L0j7IPV' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 45, "resourceName": "cDMV2ngv"}, {"action": 77, "resourceName": "LxcPUco0"}, {"action": 59, "resourceName": "y9MKVqYv"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'jrFbSkh4' \
    --groupRegion 'rjfBJCEe' \
    --limit '55' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "aSHEt6sN", "customAttributes": {"qbf7soND": {}, "0uo0FIOJ": {}, "eIGbAGN6": {}}, "groupDescription": "5PONd8wV", "groupIcon": "lJd5NYLk", "groupMaxMember": 14, "groupName": "Tb3AzQ3D", "groupRegion": "1g9o4FS9", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "bT5LnIG7", "ruleDetail": [{"ruleAttribute": "NrBM2EqK", "ruleCriteria": "MAXIMUM", "ruleValue": 0.34907028617890734}, {"ruleAttribute": "gycyFhCX", "ruleCriteria": "MINIMUM", "ruleValue": 0.5594904825589604}, {"ruleAttribute": "Z1jePHt0", "ruleCriteria": "EQUAL", "ruleValue": 0.9252613372334995}]}, {"allowedAction": "ooltG09v", "ruleDetail": [{"ruleAttribute": "IEapS97h", "ruleCriteria": "MINIMUM", "ruleValue": 0.9161937900583653}, {"ruleAttribute": "h96hGRX2", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8687431362583486}, {"ruleAttribute": "8BXJUVT1", "ruleCriteria": "EQUAL", "ruleValue": 0.3615835496806381}]}, {"allowedAction": "PVPAXmeP", "ruleDetail": [{"ruleAttribute": "8T6Y8NY7", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8630190034230621}, {"ruleAttribute": "ShfT7k0V", "ruleCriteria": "MAXIMUM", "ruleValue": 0.21430129491492533}, {"ruleAttribute": "j75YF7sk", "ruleCriteria": "MINIMUM", "ruleValue": 0.49370314099834167}]}]}, "groupType": "fczXOphW"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'fWSzCALH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'hLLqo2NP' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "RxjmOIyl", "groupIcon": "wwCodguC", "groupName": "CRn5Gswf", "groupRegion": "N29U9hsl", "groupType": "Ga42Y4sm"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'GPLQOmFH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'lvwKdnUR' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "V3mfQaOr", "groupIcon": "XLN1a5TN", "groupName": "FIH6aQQJ", "groupRegion": "b0qhN1Uf", "groupType": "TH3P34Ji"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'lJiIAWMs' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"ZWXkZuWh": {}, "D4EkLFUT": {}, "E0AReTG9": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'pipxDgX8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'P5jdXO03' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId '2cFgUzNr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'DqwabJsF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'XEs7IHYe' \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'okQU6d6L' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '75' \
    --order 'rUvjvgKf' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'iScHo2pC' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"cSY4OgFq": {}, "tlkVsq3S": {}, "MneBBT5A": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'PiAjGnva' \
    --groupId 'KoaHYSuf' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "RrDkwLxs", "ruleCriteria": "MINIMUM", "ruleValue": 0.23845217746927683}, {"ruleAttribute": "NnMfpA3b", "ruleCriteria": "MAXIMUM", "ruleValue": 0.37977132811206504}, {"ruleAttribute": "zGiHnhpg", "ruleCriteria": "MAXIMUM", "ruleValue": 0.11607067750962119}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'nXGojS5j' \
    --groupId 'fpDJkTzn' \
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
    --limit '27' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'OkPK0Vh8' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "8PqPR7p3"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'lLblCfO7' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "caEGgKH2"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'vsSZ4ATV' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '23RHJINC' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '53qC1151' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '8Jiqk5D2' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'VvrjqYYS' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE