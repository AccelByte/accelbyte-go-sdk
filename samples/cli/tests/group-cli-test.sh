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
    --offset '4' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "pqxjgZMV", "description": "dmlzi74A", "globalRules": [{"allowedAction": "k55a0RbJ", "ruleDetail": [{"ruleAttribute": "AxEkuUhD", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9803128085826078}, {"ruleAttribute": "g6Xr41du", "ruleCriteria": "MAXIMUM", "ruleValue": 0.28182041128743973}, {"ruleAttribute": "sXQBndpx", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7702415364090686}]}, {"allowedAction": "YWQdxS3i", "ruleDetail": [{"ruleAttribute": "xA3uzUGW", "ruleCriteria": "MINIMUM", "ruleValue": 0.558063745031343}, {"ruleAttribute": "hDQ6a2yB", "ruleCriteria": "EQUAL", "ruleValue": 0.7048319929412062}, {"ruleAttribute": "dapBVGoG", "ruleCriteria": "EQUAL", "ruleValue": 0.6333670337810489}]}, {"allowedAction": "ZqFuKAm0", "ruleDetail": [{"ruleAttribute": "DHYYck6c", "ruleCriteria": "MINIMUM", "ruleValue": 0.6103673569757592}, {"ruleAttribute": "oMk1JgGC", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9377253417621175}, {"ruleAttribute": "vXidOmIJ", "ruleCriteria": "MINIMUM", "ruleValue": 0.3457755670763236}]}], "groupAdminRoleId": "e1PvjZP5", "groupMaxMember": 41, "groupMemberRoleId": "kkonEgYH", "name": "POSJcKja"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'Trt6Cwuf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'CaAu50Qj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'nbRhGzxD' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "2c0c29Sh", "groupMaxMember": 96, "name": "dd3NTMwk"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '4MpDQQHI' \
    --configurationCode 'swJJ7wkJ' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "gcuJRXzQ", "ruleCriteria": "EQUAL", "ruleValue": 0.13945834256256673}, {"ruleAttribute": "Kzt7i4BE", "ruleCriteria": "EQUAL", "ruleValue": 0.6359091932860227}, {"ruleAttribute": "JFIUCf5b", "ruleCriteria": "EQUAL", "ruleValue": 0.44733858708582075}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'KPMOP7nX' \
    --configurationCode 'ux29avBE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'cCX2Wq3M' \
    --groupName 'L3AqCynj' \
    --groupRegion 'oelChdcy' \
    --limit '11' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId '6H3M0A8t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'MY8rjag1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'aHYIIeyL' \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '54' \
    --order 'JJT36JGl' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "ycLePyxM", "memberRolePermissions": [{"action": 13, "resourceName": "piRVgiDr"}, {"action": 1, "resourceName": "N7xpPLSN"}, {"action": 10, "resourceName": "vXYHZ7Vi"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId '0Tdyl9of' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'ybHmNY1Y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'aepM4VjO' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "BsCyMCPT"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId '9fRPrkEl' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 62, "resourceName": "eKTGJ30v"}, {"action": 63, "resourceName": "C2WNS5jC"}, {"action": 75, "resourceName": "jOl6GlbW"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'D0OqowgK' \
    --groupRegion 'cK9MRClr' \
    --limit '23' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "ihl4iOsv", "customAttributes": {"bm7LjOly": {}, "02hXPpQe": {}, "fivg3voY": {}}, "groupDescription": "90WRJMt2", "groupIcon": "hU4dJwWo", "groupMaxMember": 68, "groupName": "V7MzShZ9", "groupRegion": "YQS6jyAv", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "eVs6KzjZ", "ruleDetail": [{"ruleAttribute": "zCvHHzrw", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3846775498229289}, {"ruleAttribute": "NUTRYFcJ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9429468966033583}, {"ruleAttribute": "UQG3CXq2", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9671628769313511}]}, {"allowedAction": "pZm1IE4j", "ruleDetail": [{"ruleAttribute": "DNBoC9Qj", "ruleCriteria": "MINIMUM", "ruleValue": 0.4589503697626145}, {"ruleAttribute": "vD2KjOQL", "ruleCriteria": "EQUAL", "ruleValue": 0.7946661601346364}, {"ruleAttribute": "cdEQccCc", "ruleCriteria": "MINIMUM", "ruleValue": 0.6297855575364176}]}, {"allowedAction": "LlCzV0UD", "ruleDetail": [{"ruleAttribute": "EVnz1Ui8", "ruleCriteria": "EQUAL", "ruleValue": 0.4171485855401057}, {"ruleAttribute": "Mjsy7hiR", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8765349305569238}, {"ruleAttribute": "WoSmLDbn", "ruleCriteria": "MINIMUM", "ruleValue": 0.916078841389982}]}]}, "groupType": "x8HW8W4J"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'R3sNqpnd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'yKYopJEO' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "zVuiDJuy", "groupIcon": "7pTxfjRS", "groupName": "S2TcaDC6", "groupRegion": "SzRo1mhW", "groupType": "yWBZ03Cd"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'kDqalUmq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'a7oDzT5v' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "7TBv0wZ6", "groupIcon": "WgkrhGMn", "groupName": "b8VU4hab", "groupRegion": "QBWumFsN", "groupType": "BNAVJZ1c"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'FPH7jTiM' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"qN2OI1G4": {}, "xO7HuApE": {}, "NaBezIUB": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'kyKZ5CYs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'ZqQlN4Eq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'fckYqJag' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId '8L4QCbd1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'YwAp6Tpt' \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'dAEmh1o1' \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '41' \
    --order 'ObczaoYU' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'ojbMDiFi' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"jWqqOjdJ": {}, "F9KBqD8S": {}, "yO6VDwhk": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'IJEtEkSM' \
    --groupId 'lGleBZZp' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "NuB8s6Ir", "ruleCriteria": "MINIMUM", "ruleValue": 0.16336987770503675}, {"ruleAttribute": "I7pJHPoo", "ruleCriteria": "EQUAL", "ruleValue": 0.5113247496613459}, {"ruleAttribute": "VeCIkOFf", "ruleCriteria": "MAXIMUM", "ruleValue": 0.1234188330594792}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction '6yfAauL7' \
    --groupId 'z64uGu1l' \
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
    --limit '32' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId '2eth8XVl' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "NKYJqFWu"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'pwNucBPo' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "a9CR3B6a"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Ibl0rAuG' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'EDxPmRRw' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'TGcTU94J' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '9xtKRQz1' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'koqYofzE' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE