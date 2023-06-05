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
    --limit '40' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "InJsi0uaNSZxhGJu", "description": "6ehBczLtCkMknVk9", "globalRules": [{"allowedAction": "7oILigRzGRdDHm7u", "ruleDetail": [{"ruleAttribute": "TwPBjf2UmcNcts49", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5375342153884209}, {"ruleAttribute": "JFlmlmNRN10ajKGN", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8073798429999703}, {"ruleAttribute": "hPHKYEn45MbQbcOn", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5254741627343391}]}, {"allowedAction": "3DX1xZxVnn1gQER5", "ruleDetail": [{"ruleAttribute": "MKPDY00xqpYhxB31", "ruleCriteria": "MINIMUM", "ruleValue": 0.012492481478297068}, {"ruleAttribute": "4MdhST7Nlc8K7DfR", "ruleCriteria": "EQUAL", "ruleValue": 0.41632549510834604}, {"ruleAttribute": "cNpf3yci0ZuTpCiY", "ruleCriteria": "MINIMUM", "ruleValue": 0.5130088076603052}]}, {"allowedAction": "7gNDO9osnutS8Zl4", "ruleDetail": [{"ruleAttribute": "03JG2GzArwdQc3eq", "ruleCriteria": "MINIMUM", "ruleValue": 0.02133636210984491}, {"ruleAttribute": "05BA6NFjYCyQgkd0", "ruleCriteria": "MINIMUM", "ruleValue": 0.16671804079882335}, {"ruleAttribute": "zEvOtMggdA3mQksC", "ruleCriteria": "MAXIMUM", "ruleValue": 0.634733004984709}]}], "groupAdminRoleId": "m3kNKCQ4cxZLt3xs", "groupMaxMember": 13, "groupMemberRoleId": "nsUH5g9Vh3DcD3xq", "name": "soWHJBp3IUISGo28"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode '6Ou8MxhRVnpbcw8F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'hexyBDXnUDdSM3ij' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'LqWAg4oSdkADoSAq' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "1kwlKG4IdaKDtFxl", "groupMaxMember": 56, "name": "fykNKjeB94BtJhM4"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '6RG9idyKc4zr3byA' \
    --configurationCode 'xff2g7gFfTXwcnA0' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "tvJ87FfoLoGR5lqG", "ruleCriteria": "EQUAL", "ruleValue": 0.5871697583180233}, {"ruleAttribute": "9QKLBQdkbRtwTcl0", "ruleCriteria": "EQUAL", "ruleValue": 0.8194143523931992}, {"ruleAttribute": "q7D67sR8IHbJHpep", "ruleCriteria": "EQUAL", "ruleValue": 0.35156967424550767}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'mjBoGk9FO8OMjejG' \
    --configurationCode '9EVaap6Ed0JHxC4F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'h93sThTd9b0ZrMOL' \
    --groupName 'N9GeHHclrcE5e8vH' \
    --groupRegion '7H80agw1ZmR7Yf02' \
    --limit '71' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId '1QJgKjGuTUYqI3Lc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId '9eRPA2ZJtbchGn61' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'MygozTmIIGIjrd7G' \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '1' \
    --order 'IuBNGY3jlwNnBG8U' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "ilmqJ3Cf8Zw0llIN", "memberRolePermissions": [{"action": 51, "resourceName": "e0VvDs2O1n7xi2E8"}, {"action": 60, "resourceName": "viW4gwnZFrUUB2NK"}, {"action": 40, "resourceName": "m4jWi76MiLVKe8or"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'FY0OYCoILk55hSC1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'erPrEpxtstQvCWpM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'MRBCsF4RbpKeRQJC' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "XmfQzAAcGK0wHFQx"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'TGz3cMSp3oHZscgV' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 76, "resourceName": "gKJp4djB0cUN5RNO"}, {"action": 0, "resourceName": "wkNC9VerhEeLnCUE"}, {"action": 23, "resourceName": "oLE3ZObbB1KYrbNm"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'zUin7DHqGQtSmlQq' \
    --groupRegion 'CQIufZLqT0Sb6l8S' \
    --limit '59' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "sYfaZKsx50Up90vX", "customAttributes": {"yvzCqlzKl6uF5KNA": {}, "rKj7P0qIWUl2cBWn": {}, "aBsBQTmWAfMJ6mYj": {}}, "groupDescription": "YoLh3fE9skJmuKtM", "groupIcon": "2OTCVVkuahN9UWpt", "groupMaxMember": 54, "groupName": "4f8DOtkYsxEMcctY", "groupRegion": "jLAvyJPSAW03lFP8", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "kCE5hrWniXrt8UXI", "ruleDetail": [{"ruleAttribute": "jnldcNFIbYiLmQnr", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2795187397311206}, {"ruleAttribute": "KbjFN7wXLgsOXOMv", "ruleCriteria": "MINIMUM", "ruleValue": 0.8154866078948616}, {"ruleAttribute": "e3c1RzFZVdCwodnE", "ruleCriteria": "MINIMUM", "ruleValue": 0.9653523672773994}]}, {"allowedAction": "x7uEzW95XopaKneR", "ruleDetail": [{"ruleAttribute": "bwVKxwr7AoanG3gg", "ruleCriteria": "EQUAL", "ruleValue": 0.46139482893799244}, {"ruleAttribute": "YMhLNuRT2IJlvWuP", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5957654252590632}, {"ruleAttribute": "Y2edeG6PW0JIsqZd", "ruleCriteria": "MINIMUM", "ruleValue": 0.8198216471980891}]}, {"allowedAction": "fyPOkmXDgGb8kDcc", "ruleDetail": [{"ruleAttribute": "pU9katQSZcFBlx2u", "ruleCriteria": "MINIMUM", "ruleValue": 0.5093305208304292}, {"ruleAttribute": "P1JVEZMhkBECuCNZ", "ruleCriteria": "MINIMUM", "ruleValue": 0.12926997163090892}, {"ruleAttribute": "172gtOSVaiMkSPkc", "ruleCriteria": "MAXIMUM", "ruleValue": 0.12170139324525242}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'OzlMZjd1vzY9AIX0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'Vff7Ukk8Y4FWT6pG' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "q2ihksWiSElvsCLU", "groupIcon": "tP5Cmp4fHXS1awTM", "groupName": "L5vQL5rRo4VWdRGm", "groupRegion": "fpcozEPapFIDilqI", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'nYT3ZVh3IuI3fSr6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'AtZAmKTDFzrR3yTk' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "RuF63WVUJ1f0Qd1T", "groupIcon": "EEIVVDuLHx8tPRTb", "groupName": "UHWjolDC9rVRTe3a", "groupRegion": "zPcMueAUNMuuMmQn", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'jx6uPd7K7eSqBS9X' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"SNqVw9dZzvwYsNwa": {}, "esUU0cqFA8G759dd": {}, "vY7xqG49jcEMfmkv": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'qriP0Jcx4xytlKRL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'W45XXYGF51jNOGT1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'C7iHIdtHtQa61FCt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'a2gmtrPCkS8yGQtQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'PL8ZOJw3285sKlzj' \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'XK78xogNRLBdt9l7' \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '11' \
    --order 'rlX1PXqfCfE9T1jj' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'FI0mCnrzDfuCMJRX' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"Fe3U0zkFEMxA4Wxq": {}, "54Kg9FJaRCQAj5hg": {}, "dgLC0IZluo5BCHxT": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'yQA1IvoXYCU3R6pH' \
    --groupId 'zYAhymT0HxAL8vzM' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "BQhWoIgsMCKt2RHn", "ruleCriteria": "EQUAL", "ruleValue": 0.8776394657050665}, {"ruleAttribute": "QA2Z4ghNOoFHl9gy", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8585176088418562}, {"ruleAttribute": "jQ7hDLjFSllhypPC", "ruleCriteria": "EQUAL", "ruleValue": 0.6609465486350037}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'yc4uPwvS1oROOS5O' \
    --groupId 'iVFtBMg1axIRf7JI' \
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
    --limit '69' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'voSu2CNW01rq50aQ' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "U2HUi6oieJnz6kiM"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'U6CBS8t1YLcXLLzU' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "8neFar5hD0SYYkHm"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'q4D2DOeoGsOpTeT0' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ZHV3Zq0nTNVokvSM' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'xv65yFzvOinwgqgv' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'AHDwMCsOypKzGEVj' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '91rMSXlHqMAXXknz' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["gCu0kCGtJpsnfoak", "q3z7rOmXmMI2iU5o", "tvycg05SseX8Rn3w"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'YYsHZOsAXbMZkuI8' \
    --limit '66' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'KmeviYlBb2yssbGi' \
    --namespace $AB_NAMESPACE \
    --userId 'DRTDQ3zOJPSJnplV' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "siSLxDMDWi3vzcU4", "customAttributes": {"PZW0SnxGoV8qIWFQ": {}, "A2JCFnG4ZWoLxHhD": {}, "6SyQADrwBE1iVsHk": {}}, "groupDescription": "9nBrw35N49cWXPwi", "groupIcon": "KtmKop7NpYtiSyae", "groupMaxMember": 26, "groupName": "OEJH8qpaNYKGODVZ", "groupRegion": "TE3E6a4SYiOssCBt", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "pQ0HfCSHAIrJ42RX", "ruleDetail": [{"ruleAttribute": "77qCxSGWZqesUl8n", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5072265081992094}, {"ruleAttribute": "aiDaZXznXCr0hrUg", "ruleCriteria": "MINIMUM", "ruleValue": 0.8567868022656612}, {"ruleAttribute": "TBxOjIGnQH1bT5vj", "ruleCriteria": "MINIMUM", "ruleValue": 0.3597240642442905}]}, {"allowedAction": "UVo8jDk9M3BylaLA", "ruleDetail": [{"ruleAttribute": "oIR7y7zoFNEE0wFz", "ruleCriteria": "MINIMUM", "ruleValue": 0.48093636415519037}, {"ruleAttribute": "GVKDRCujVYWb2Qjc", "ruleCriteria": "MINIMUM", "ruleValue": 0.051694121791976966}, {"ruleAttribute": "ealKhnVeJuQjYM8u", "ruleCriteria": "MINIMUM", "ruleValue": 0.06554693188402405}]}, {"allowedAction": "rX4xM1D5N4PJnzhS", "ruleDetail": [{"ruleAttribute": "nItN9yiFBrmKEZXN", "ruleCriteria": "MAXIMUM", "ruleValue": 0.06759004572354999}, {"ruleAttribute": "msOVxRqKZCpyymVP", "ruleCriteria": "EQUAL", "ruleValue": 0.4555676469035963}, {"ruleAttribute": "RHXusuaWT7EG0lDc", "ruleCriteria": "MINIMUM", "ruleValue": 0.40584255474517494}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["1zfABgKSsHpt45Jk", "GUvoavIHK2dd1LOP", "eFII1TaIqKZPCsr2"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'eBgm7tcpWUi1nGmh' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "VlDjdprytPrqF4tX", "groupIcon": "WtfOShQyTqR7g8i9", "groupName": "oaycL5DCHgzXgvyo", "groupRegion": "1mmg5my3SgiQ3dFz", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'd8cCAPRt7qt7hK3p' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId '9XIqb7fZAaJ1Bqnn' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "PavQU0ZgD2QVny5d", "groupIcon": "HF2RZE5iZMOAWl9M", "groupName": "6sGiF8O2OLMR5t4n", "groupRegion": "1IGbuZWme8UaUdPF", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'l026sKoZo3gxfLp6' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"bx3DmfNg1f9SQx1p": {}, "QfPKtu8DdsDRKtfx": {}, "phmGXiHHNnolHfIG": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'GhbyR8Miu2IIvJpM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'LurwTGZSHr1mDhDo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'kHQueHmFnx3zXoiZ' \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'Byfnd2D69G2Fjawc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'hXrThvgV6IGb73zF' \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'NFY0Vwe8MeoXG2r7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId '2gvz9eCwxnZ1bsoj' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"yus6g0YzcBYK4LLW": {}, "i25dabfP7XSH7TqC": {}, "0aWag4OA6RXduGKH": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'HTiQFOYBMR24RbG2' \
    --groupId 'Q1iPMPJrsvHDGUp4' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "Uc0L1bE1vUFDpaxN", "ruleCriteria": "MINIMUM", "ruleValue": 0.3917700278351989}, {"ruleAttribute": "9v4CszH2r0hxXwzT", "ruleCriteria": "MAXIMUM", "ruleValue": 0.09777649609572447}, {"ruleAttribute": "mM7oe4Jmi8iNzMem", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7638869773288138}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'o79JleGMaIalJvuc' \
    --groupId '6tS8mxnWV5OTtgyV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'GRtW9P23izfn3x8C' \
    --memberRoleId 'J7JU0hLQUG31HesM' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "cCwQatTGJel5VBb6"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'vff5aZp5gM2fCL2X' \
    --memberRoleId 'vPONE6r6ojJNUCbe' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "z7DRYO32BpYbvvqg"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'NM7i8rDEaZZtXqWi' \
    --namespace $AB_NAMESPACE \
    --userId '3IQLRNclbtvKnIqG' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'V0b0ov7zGP0lz6In' \
    --namespace $AB_NAMESPACE \
    --userId 'EmW5mtMnbcRhH6En' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId '0nNqyPlSbM4y3qla' \
    --namespace $AB_NAMESPACE \
    --userId '76mROzHFvU2kOYQK' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'kMrFeI9UjrC0ez4x' \
    --namespace $AB_NAMESPACE \
    --userId 'GU3WF7C5KUYRfjLb' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'Tt2uKhgtvy5aMfS0' \
    --namespace $AB_NAMESPACE \
    --userId 'u0nHf4lvCoptPtfL' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'AQd1UwaDPdIt4Cb1' \
    --namespace $AB_NAMESPACE \
    --userId 'vb3QIaUwGvViEgVF' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE