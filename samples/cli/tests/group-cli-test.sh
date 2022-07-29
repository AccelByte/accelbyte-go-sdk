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
    --namespace 'EQKhxZtP' \
    --limit '25' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --body '{"configurationCode": "EH2xUByi", "description": "K93UMssF", "globalRules": [{"allowedAction": "ztHEpwEQ", "ruleDetail": [{"ruleAttribute": "1qlzGwrn", "ruleCriteria": "MINIMUM", "ruleValue": 0.4090113048244888}, {"ruleAttribute": "FCv0UPlO", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5386499774146173}, {"ruleAttribute": "KAEvTtCh", "ruleCriteria": "MINIMUM", "ruleValue": 0.5164396489134542}]}, {"allowedAction": "luOJVyfV", "ruleDetail": [{"ruleAttribute": "yi3WeBNy", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9734011105244679}, {"ruleAttribute": "CaLOU4IZ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.1357361285919193}, {"ruleAttribute": "xhCa72iL", "ruleCriteria": "MAXIMUM", "ruleValue": 0.17007552425609607}]}, {"allowedAction": "frPxFBk1", "ruleDetail": [{"ruleAttribute": "dVjTphMz", "ruleCriteria": "MINIMUM", "ruleValue": 0.2093800378243016}, {"ruleAttribute": "p78QHAHR", "ruleCriteria": "EQUAL", "ruleValue": 0.8623892337476636}, {"ruleAttribute": "xVaCz46h", "ruleCriteria": "MINIMUM", "ruleValue": 0.08055381522009719}]}], "groupAdminRoleId": "ViGXQAzT", "groupMaxMember": 85, "groupMemberRoleId": "rfGcY7Vo", "name": "V7YvfrQW"}' \
    --namespace 'JmXlSa34' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace 'YBwEEELZ' \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'HLPetyPS' \
    --namespace 'oSO4vFvC' \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'FhAXuqQJ' \
    --namespace 'q5TGxwcW' \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --body '{"description": "cDT2VhRx", "groupMaxMember": 25, "name": "yCeqwUw1"}' \
    --configurationCode 'aqPzzuZD' \
    --namespace 'FdjcCCuj' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --body '{"ruleDetail": [{"ruleAttribute": "0Z1wVBKL", "ruleCriteria": "MINIMUM", "ruleValue": 0.5959546151083238}, {"ruleAttribute": "4ZRfwDYS", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4146228770202842}, {"ruleAttribute": "rWwvHJ0p", "ruleCriteria": "MINIMUM", "ruleValue": 0.9191095408440673}]}' \
    --allowedAction 'rmAa0edK' \
    --configurationCode 'LyzThzxw' \
    --namespace 'vNO5t22K' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'OoOR63Wq' \
    --configurationCode 'jkwAp2Kb' \
    --namespace '0fXUyeHJ' \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace 'uyyiPjPR' \
    --configurationCode 'SvSwFUE0' \
    --groupName 'IMljQbUg' \
    --groupRegion '9KGSfJcn' \
    --limit '68' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'U94Xav3W' \
    --namespace 'gKFk2vMV' \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'oAaUPXXP' \
    --namespace '1O1tBKms' \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId '6SLcw8da' \
    --namespace 'E0pcUysj' \
    --limit '81' \
    --offset '49' \
    --order 'XbWRi8Nb' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace 'r3PA2Wdm' \
    --limit '89' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --body '{"memberRoleName": "1E9pJKpc", "memberRolePermissions": [{"action": 31, "resourceName": "HTCmmmdO"}, {"action": 21, "resourceName": "FZIkTe4C"}, {"action": 75, "resourceName": "46XXg3kT"}]}' \
    --namespace 'X9oK5GR9' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'DfqWwV5U' \
    --namespace 'NZtfn31t' \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'QKRtE9rp' \
    --namespace 'd1zxmqOv' \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --body '{"memberRoleName": "GwobU0PS"}' \
    --memberRoleId 'V5LVKJRy' \
    --namespace 'ruxNMgVO' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --body '{"memberRolePermissions": [{"action": 53, "resourceName": "Ga3JM62c"}, {"action": 71, "resourceName": "J2b5LMoM"}, {"action": 67, "resourceName": "MDd77OZu"}]}' \
    --memberRoleId 'Wz4nHJfq' \
    --namespace 'M1e0Nzc6' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace 'nMseuF6t' \
    --groupName '37Mq7sR2' \
    --groupRegion '2avWjpfm' \
    --limit '7' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --body '{"configurationCode": "UOy5e0p5", "customAttributes": {"JndxcC44": {}, "X0MiDKno": {}, "P7Vg4fjJ": {}}, "groupDescription": "ZW8x3bi7", "groupIcon": "RHZyeAFb", "groupMaxMember": 27, "groupName": "FjpJ01CL", "groupRegion": "84WOjcwM", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "JSoLgyIh", "ruleDetail": [{"ruleAttribute": "CcrkdwMN", "ruleCriteria": "EQUAL", "ruleValue": 0.3322367912406815}, {"ruleAttribute": "Dre7g4mS", "ruleCriteria": "EQUAL", "ruleValue": 0.4897162588547239}, {"ruleAttribute": "xWzfCaP3", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4094340489206115}]}, {"allowedAction": "qpNCEIl8", "ruleDetail": [{"ruleAttribute": "Lg3yQxcg", "ruleCriteria": "MINIMUM", "ruleValue": 0.353141023068661}, {"ruleAttribute": "bLGmERwX", "ruleCriteria": "MINIMUM", "ruleValue": 0.3907798487632005}, {"ruleAttribute": "9KIt3as3", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5561447204083546}]}, {"allowedAction": "HTBeDWSy", "ruleDetail": [{"ruleAttribute": "iv4MDLFQ", "ruleCriteria": "EQUAL", "ruleValue": 0.23056958024653296}, {"ruleAttribute": "ohSmczZI", "ruleCriteria": "MINIMUM", "ruleValue": 0.4914158519398636}, {"ruleAttribute": "OlFC4QXT", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8319924175279475}]}]}, "groupType": "lMZEr3gm"}' \
    --namespace 'ZEONVsok' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'C6G49Qco' \
    --namespace 'IOIPMELe' \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --body '{"customAttributes": {}, "groupDescription": "gfi3y1mw", "groupIcon": "5QxAHArj", "groupName": "aSNvxTUN", "groupRegion": "poZfs91M", "groupType": "tqOpzrqR"}' \
    --groupId 'xMxolrRx' \
    --namespace '8GBSyM2S' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId '47N2kEor' \
    --namespace '5DgDxGZ0' \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --body '{"customAttributes": {}, "groupDescription": "306gkGSH", "groupIcon": "HX7Pi1H9", "groupName": "C0FFOWTb", "groupRegion": "QKIetzty", "groupType": "f4EQ4lnf"}' \
    --groupId 'lljTRecg' \
    --namespace 'p0bZay5r' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --body '{"customAttributes": {"lPzQP6N9": {}, "SE01UH5Q": {}, "EAe2FYFR": {}}}' \
    --groupId 'eWlv22r2' \
    --namespace 'j2GbLgFe' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'pO6UKpxv' \
    --namespace '6QTTR9Tx' \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'aeFUCtdQ' \
    --namespace 'U3sMLfoT' \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId '7TxT984J' \
    --namespace 't2kUCuHM' \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'j4OYjIA9' \
    --namespace 'fRyMpFAh' \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'Uy2ImoAu' \
    --namespace 'CtAinQK8' \
    --limit '9' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'Z88VSyY5' \
    --namespace 'eISLnBM4' \
    --limit '39' \
    --offset '51' \
    --order 'DerZYXRs' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --body '{"groupCustomRule": {"cKX1q2Jc": {}, "jCWJ5j9Q": {}, "ol8nYkq2": {}}}' \
    --groupId '7bXmawJ3' \
    --namespace 'Z3SCeuLK' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --body '{"ruleDetail": [{"ruleAttribute": "VcbLqjWL", "ruleCriteria": "MAXIMUM", "ruleValue": 0.36637160262361124}, {"ruleAttribute": "bLDwCC0y", "ruleCriteria": "EQUAL", "ruleValue": 0.4147723336784881}, {"ruleAttribute": "NvkrsX7g", "ruleCriteria": "MINIMUM", "ruleValue": 0.04547894208237502}]}' \
    --allowedAction 'SiaGZLnb' \
    --groupId 'IdHbkDJF' \
    --namespace 'Pqnh2U81' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction '5ksRcenG' \
    --groupId 'iNhgaYMh' \
    --namespace 'lqXFDn2e' \
    > test.out 2>&1
eval_tap $? 35 'DeleteGroupPredefinedRulePublicV1' test.out

#- 36 LeaveGroupPublicV1
samples/cli/sample-apps Group leaveGroupPublicV1 \
    --namespace '1lPHgdet' \
    > test.out 2>&1
eval_tap $? 36 'LeaveGroupPublicV1' test.out

#- 37 GetMemberRolesListPublicV1
samples/cli/sample-apps Group getMemberRolesListPublicV1 \
    --namespace 'aooKKBM6' \
    --limit '34' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --body '{"userId": "ubsAPXRp"}' \
    --memberRoleId 'cqfQzwWu' \
    --namespace 'CmAlP65a' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --body '{"userId": "iUVqKDul"}' \
    --memberRoleId 'XDTIyn59' \
    --namespace 'Yddq1jwo' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace 'MOe5jcrx' \
    --limit '92' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace 'Ht04VgGD' \
    --userId 'kNdLc8i0' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace '24NMTab2' \
    --userId '19F7qHTe' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace 'frOUBFZ1' \
    --userId 'aL5q8eaQ' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace 'EFKEZ4Hi' \
    --userId 'R6OgUSGz' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace 'Fsw6BA5v' \
    --userId 'vOv2Xnmz' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE