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
    --limit '52' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "CTLW9vkw", "description": "y1YAFXNQ", "globalRules": [{"allowedAction": "3CQaJPBi", "ruleDetail": [{"ruleAttribute": "k8BkHP2u", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8873559543562483}, {"ruleAttribute": "JRZY90D3", "ruleCriteria": "EQUAL", "ruleValue": 0.007194899528289556}, {"ruleAttribute": "42iVHS3l", "ruleCriteria": "EQUAL", "ruleValue": 0.35598813951271946}]}, {"allowedAction": "VKcTIfeQ", "ruleDetail": [{"ruleAttribute": "WyFIYhXf", "ruleCriteria": "MINIMUM", "ruleValue": 0.3590259145587912}, {"ruleAttribute": "NNgzORvf", "ruleCriteria": "EQUAL", "ruleValue": 0.2549223187552776}, {"ruleAttribute": "BrP8ATo9", "ruleCriteria": "EQUAL", "ruleValue": 0.9622195185797578}]}, {"allowedAction": "vtnQg0iM", "ruleDetail": [{"ruleAttribute": "mA6AW2DI", "ruleCriteria": "MINIMUM", "ruleValue": 0.3214055104205691}, {"ruleAttribute": "ITFRow1u", "ruleCriteria": "MINIMUM", "ruleValue": 0.017066754550860486}, {"ruleAttribute": "hOjPcejE", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5710993162424509}]}], "groupAdminRoleId": "EDNJ308Q", "groupMaxMember": 10, "groupMemberRoleId": "jmrKH07s", "name": "pxonXxhU"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 's7wrHbRn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode '2eQZ9q8W' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'Du9KvyKL' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "gEAUQJ21", "groupMaxMember": 42, "name": "ZRPK0X8k"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'qhBFQ0HW' \
    --configurationCode 'jSS6DJ7P' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "940PONaB", "ruleCriteria": "MINIMUM", "ruleValue": 0.7147351082706986}, {"ruleAttribute": "pvxNzUxV", "ruleCriteria": "EQUAL", "ruleValue": 0.9843480081548234}, {"ruleAttribute": "vrNCPfLZ", "ruleCriteria": "EQUAL", "ruleValue": 0.5033951619995702}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'fYsgqGrw' \
    --configurationCode 'RnOsP7e2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'KFvDYIcq' \
    --groupName 'MQmTNFxt' \
    --groupRegion 'Eh3wqA7T' \
    --limit '93' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'kSnyTvZM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId '8TjAiLlH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'z0Og17ON' \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '15' \
    --order 'C9fpDDag' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "HP9WEYkO", "memberRolePermissions": [{"action": 61, "resourceName": "sPWPDZr0"}, {"action": 2, "resourceName": "6K9MA7A6"}, {"action": 50, "resourceName": "YR4wjwsR"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'PsdVGU3I' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'y3q5nHNJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'xhkXDOgI' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "MzzwC9es"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'oYqg810K' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 37, "resourceName": "9QNtwfAe"}, {"action": 96, "resourceName": "z0C9osP3"}, {"action": 64, "resourceName": "X9IrZxfQ"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'HnvllzRx' \
    --groupRegion '1gjMc7Bu' \
    --limit '37' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "hDBvMys7", "customAttributes": {"Ou4MKJqy": {}, "FGdHP5er": {}, "cZreeCAC": {}}, "groupDescription": "9SwelkwT", "groupIcon": "g5yaqpd6", "groupMaxMember": 23, "groupName": "Z04rAICr", "groupRegion": "1RE21gaz", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "buBYTzr5", "ruleDetail": [{"ruleAttribute": "WS4jsl2N", "ruleCriteria": "MINIMUM", "ruleValue": 0.1344591510548857}, {"ruleAttribute": "jTEthXkE", "ruleCriteria": "EQUAL", "ruleValue": 0.9688362333098324}, {"ruleAttribute": "CjmHPegT", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9801830630366084}]}, {"allowedAction": "sXEKTNVy", "ruleDetail": [{"ruleAttribute": "iWVx1kk9", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4890620708514668}, {"ruleAttribute": "lPp2hzyA", "ruleCriteria": "MINIMUM", "ruleValue": 0.25417490941400267}, {"ruleAttribute": "ec5F9Ttj", "ruleCriteria": "EQUAL", "ruleValue": 0.8175381251663175}]}, {"allowedAction": "0lukwwYM", "ruleDetail": [{"ruleAttribute": "WzgXlFUa", "ruleCriteria": "MINIMUM", "ruleValue": 0.3842344063683798}, {"ruleAttribute": "QgFhcQuA", "ruleCriteria": "EQUAL", "ruleValue": 0.5754608547423471}, {"ruleAttribute": "3tR99sic", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7790266579458727}]}]}, "groupType": "RGTFyguB"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'CTol93nL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'Kxe9ySAm' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "gODfMdJu", "groupIcon": "MrppfYZZ", "groupName": "x1TClPCA", "groupRegion": "6oeUZFsq", "groupType": "1x1DVzFj"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'VsXI6KRf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'ZHYUFrpl' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "QVn5YLVN", "groupIcon": "TxoSbRg5", "groupName": "TZhvxq9c", "groupRegion": "0i1Sq70D", "groupType": "Q68shIkZ"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'nwO9PUqc' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"AdIqFzfL": {}, "1zlz0z1H": {}, "JEPIRGwG": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId '0I1zhQSP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'c22RSoVs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'coc5CJBx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'ji5jeZLt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'HH331Yyv' \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'Ey3La5se' \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '34' \
    --order 'vTkWLlIP' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'wRU0hENl' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"SsxWYxeE": {}, "egweesVk": {}, "57UJaydD": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'NqL0PJn1' \
    --groupId 'W7jqrXR3' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "mLYvLxmR", "ruleCriteria": "EQUAL", "ruleValue": 0.1951440936365576}, {"ruleAttribute": "zoJ2ApH3", "ruleCriteria": "EQUAL", "ruleValue": 0.3914329338411324}, {"ruleAttribute": "I9qpwmLc", "ruleCriteria": "MINIMUM", "ruleValue": 0.5591261726970239}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'AvONPIBg' \
    --groupId 'SdJDWpG3' \
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
    --limit '40' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'Hm9bEojs' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "ftZrPmGs"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 's2tLscDP' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "g1pBNUvZ"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '4p00nbvU' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'oDhyIKL2' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'nmnnXsFF' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'UKS3Se9H' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '9A0WquzL' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'SGOGHy1B' \
    --limit '19' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 46 'GetUserJoinedGroupInformationPublicV2' test.out

#- 47 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "VOagEkAo", "customAttributes": {"MOI5Yz8b": {}, "T9TJ9x6B": {}, "UFc3Gb9c": {}}, "groupDescription": "jBnq19hF", "groupIcon": "yNushAPi", "groupMaxMember": 7, "groupName": "Z76e4dAE", "groupRegion": "teswjtFy", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "psdaxjKD", "ruleDetail": [{"ruleAttribute": "a4KjluKw", "ruleCriteria": "EQUAL", "ruleValue": 0.8770489241688995}, {"ruleAttribute": "Pw9y3Vrz", "ruleCriteria": "MINIMUM", "ruleValue": 0.1749271152750128}, {"ruleAttribute": "JvTPgR04", "ruleCriteria": "MINIMUM", "ruleValue": 0.6144218627745129}]}, {"allowedAction": "lOnHmEwp", "ruleDetail": [{"ruleAttribute": "1R1MtpBa", "ruleCriteria": "MINIMUM", "ruleValue": 0.9009471261602183}, {"ruleAttribute": "NpqWBbFa", "ruleCriteria": "MINIMUM", "ruleValue": 0.448218663506585}, {"ruleAttribute": "qvtH8fC8", "ruleCriteria": "EQUAL", "ruleValue": 0.8565022191120651}]}, {"allowedAction": "cxUFhTWD", "ruleDetail": [{"ruleAttribute": "TLIEkH7z", "ruleCriteria": "EQUAL", "ruleValue": 0.34251083191973597}, {"ruleAttribute": "OUYAxZzc", "ruleCriteria": "EQUAL", "ruleValue": 0.6203505551780328}, {"ruleAttribute": "uL2lTCCE", "ruleCriteria": "MINIMUM", "ruleValue": 0.21843640583211144}]}]}, "groupType": "VwbHdkOU"}' \
    > test.out 2>&1
eval_tap $? 47 'CreateNewGroupPublicV2' test.out

#- 48 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["sFPq26dq", "V9OfzO0h", "64SEKNAy"]}' \
    > test.out 2>&1
eval_tap $? 48 'GetListGroupByIDsV2' test.out

#- 49 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'pijKS1Nl' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "dAFSaoKB", "groupIcon": "fN1mVg2P", "groupName": "lVqfq8fy", "groupRegion": "kct9OF8a", "groupType": "5Wn1r9nM"}' \
    > test.out 2>&1
eval_tap $? 49 'UpdatePutSingleGroupPublicV2' test.out

#- 50 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId '5DVBZCPW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'DeleteGroupPublicV2' test.out

#- 51 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'OOjEIOf8' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "e2QH7rvY", "groupIcon": "vLey4GMP", "groupName": "a0v9brBv", "groupRegion": "OndBqX6w", "groupType": "CdPGQtES"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePatchSingleGroupPublicV2' test.out

#- 52 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'dufKSLXf' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"LXZDx0Ui": {}, "SH9JormW": {}, "U2dKHP9O": {}}}' \
    > test.out 2>&1
eval_tap $? 52 'UpdateGroupCustomAttributesPublicV2' test.out

#- 53 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'dAjFT7rI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'AcceptGroupInvitationPublicV2' test.out

#- 54 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'X0NYdl4F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'RejectGroupInvitationPublicV2' test.out

#- 55 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'ZJhlVl3N' \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 55 'GetGroupInviteRequestPublicV2' test.out

#- 56 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'v8Xk3TMa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'JoinGroupV2' test.out

#- 57 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'gK5VXKbs' \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupJoinRequestPublicV2' test.out

#- 58 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'W1an7jOE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'LeaveGroupPublicV2' test.out

#- 59 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'XinGk7nB' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"5P2dySRp": {}, "vXvlQdOn": {}, "E7lyBVm1": {}}}' \
    > test.out 2>&1
eval_tap $? 59 'UpdateGroupCustomRulePublicV2' test.out

#- 60 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction '5Iiuq5qo' \
    --groupId 'N9ruR2Pa' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "PDngFdsD", "ruleCriteria": "EQUAL", "ruleValue": 0.7058299618212156}, {"ruleAttribute": "hFTRUg81", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8427658742421027}, {"ruleAttribute": "Q4NxDO35", "ruleCriteria": "MINIMUM", "ruleValue": 0.6134209384723794}]}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateGroupPredefinedRulePublicV2' test.out

#- 61 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'uGHz6Um8' \
    --groupId 'ANKa28zV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'DeleteGroupPredefinedRulePublicV2' test.out

#- 62 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 62 'GetMemberRolesListPublicV2' test.out

#- 63 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId '1NjYMpkp' \
    --memberRoleId 'zKmnlJyX' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "YqkPR46X"}' \
    > test.out 2>&1
eval_tap $? 63 'UpdateMemberRolePublicV2' test.out

#- 64 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'Lk3Vv8Mi' \
    --memberRoleId 'YJ2nbI6B' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "Zj7MGsLn"}' \
    > test.out 2>&1
eval_tap $? 64 'DeleteMemberRolePublicV2' test.out

#- 65 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 65 'GetUserGroupInformationPublicV2' test.out

#- 66 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 66 'GetMyGroupJoinRequestV2' test.out

#- 67 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId '5do3MATB' \
    --namespace $AB_NAMESPACE \
    --userId 'waqucW2C' \
    > test.out 2>&1
eval_tap $? 67 'InviteGroupPublicV2' test.out

#- 68 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'ZofL1sXP' \
    --namespace $AB_NAMESPACE \
    --userId 'QghNu8pq' \
    > test.out 2>&1
eval_tap $? 68 'CancelInvitationGroupMemberV2' test.out

#- 69 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'NvcGhvGK' \
    --namespace $AB_NAMESPACE \
    --userId 'gwquT06W' \
    > test.out 2>&1
eval_tap $? 69 'AcceptGroupJoinRequestPublicV2' test.out

#- 70 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId '4jpp1v0Q' \
    --namespace $AB_NAMESPACE \
    --userId 'CBxzCx5g' \
    > test.out 2>&1
eval_tap $? 70 'RejectGroupJoinRequestPublicV2' test.out

#- 71 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'wrEZv2CT' \
    --namespace $AB_NAMESPACE \
    --userId 'Opgm8J1W' \
    > test.out 2>&1
eval_tap $? 71 'KickGroupMemberPublicV2' test.out

#- 72 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'JbRvKnZy' \
    --namespace $AB_NAMESPACE \
    --userId '6Spf22yQ' \
    > test.out 2>&1
eval_tap $? 72 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE