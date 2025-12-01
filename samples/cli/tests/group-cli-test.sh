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
    --limit '34' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "1uPmVbODuvLNed52", "description": "us7Bf0jQYlTVqJSf", "globalRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "whrz1keFCnaSaStA", "ruleCriteria": "MINIMUM", "ruleValue": 0.19089073951663738}, {"ruleAttribute": "aeo3ON7QkrFbgCwv", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2881432597333855}, {"ruleAttribute": "FMWBZou1Bz8CLO6G", "ruleCriteria": "MINIMUM", "ruleValue": 0.9702011777811523}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "hzPC8FbKqBpIPb2U", "ruleCriteria": "MINIMUM", "ruleValue": 0.46877800025454364}, {"ruleAttribute": "TEboWf41oxPSrios", "ruleCriteria": "MINIMUM", "ruleValue": 0.9659972016856484}, {"ruleAttribute": "SJAlHlyxD5gEGynI", "ruleCriteria": "MINIMUM", "ruleValue": 0.758995161797057}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "V1XBW0DQvQKPcXzh", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7989919614164365}, {"ruleAttribute": "1jrC8eVv6YH9egko", "ruleCriteria": "MINIMUM", "ruleValue": 0.35890473548940904}, {"ruleAttribute": "kSrsuJ5dyeksF079", "ruleCriteria": "MINIMUM", "ruleValue": 0.9929625147594137}]}], "groupAdminRoleId": "thMiaYnakc5IQ6W5", "groupMaxMember": 11, "groupMemberRoleId": "LDcwtc2Wz6ZP4pOa", "name": "6L5WaQaw1b1yIWBt"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'KongLbl5zHbyBA7E' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'aTvHMv6xqsE5oSMt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'ANqIYntsNUMLVLV9' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "dziQxLriRVy2QRXj", "groupMaxMember": 12, "name": "Za2A1wPt7CY5Ck2W"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'YXzzgyiofu7c78K3' \
    --configurationCode 'Wa35GWAUHsHx7Rrs' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "yqk8nJiu1tSF1DUa", "ruleCriteria": "EQUAL", "ruleValue": 0.14299252460002343}, {"ruleAttribute": "SdQCsSrkTZBVNbcd", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8483568986487999}, {"ruleAttribute": "kSjrtWMwQUK4vpBk", "ruleCriteria": "MINIMUM", "ruleValue": 0.19943738883878237}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '1kP2K57cm7aKERIP' \
    --configurationCode 'DZDXQXEIDlEVnX6r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'k5BCx7wCo3SqIyUE' \
    --groupName 'Jvl6VkRSyAO2natR' \
    --groupRegion 'LevsAwuihtwRfXoa' \
    --limit '89' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'nw44PMKR4NnyFQB1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'HRtxOGfDvX56iasQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'kz1p0gLMfMRe6Fy3' \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '15' \
    --order 'DNDfgRr8lnZw7cAN' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "2L88ePS0BGo0f1Nx", "memberRolePermissions": [{"action": 93, "resourceName": "cbpAJABYSF08jyjF"}, {"action": 61, "resourceName": "32YaVGpU6qJopQnj"}, {"action": 34, "resourceName": "R5dAQNaIq7AvrvPs"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'GbJH3ZlNgS6qndb8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'fXKEODMA4Bv3d9jZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'eEotMNiBc8JEMxAd' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "XpGSYVlmr0vzmTag"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'PhpZNh4n6TmaAzA0' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 33, "resourceName": "dMbHP0L2mI9NFojD"}, {"action": 58, "resourceName": "DCM38vVetsRX8BiC"}, {"action": 16, "resourceName": "4DsYtmAEoiJBGU2I"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'MMuuNt4N2UCT71wn' \
    --groupRegion 'ookUOVxK6prXef6b' \
    --limit '31' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "3zzzr5jWLvDZxpzs", "customAttributes": {"XxXI4IvTnZBb3AXr": {}, "iprEKZAZPb2KDONO": {}, "pDkNODCHouSCBW8J": {}}, "groupDescription": "afOYZoHOVkJBsVtE", "groupIcon": "hIEbLbAV0lEXfMf1", "groupMaxMember": 54, "groupName": "nRX7Ai6Gl6v8BxQm", "groupRegion": "k5bYh1EOWXIGoPSC", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "E6OCvoHIv7nqKcas", "ruleCriteria": "MINIMUM", "ruleValue": 0.3805523335534534}, {"ruleAttribute": "tukCCmssxo0FyY4R", "ruleCriteria": "MAXIMUM", "ruleValue": 0.975820502504267}, {"ruleAttribute": "DeZJiMyhGlRScXiO", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5887925999981127}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "ZZpZqFBtdOcoXbPJ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.966819730925978}, {"ruleAttribute": "bhBEp6gL6awRtugU", "ruleCriteria": "EQUAL", "ruleValue": 0.05208050074598247}, {"ruleAttribute": "dNZsfVNybqxCg9Mb", "ruleCriteria": "MINIMUM", "ruleValue": 0.6550103816178008}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "ZNUfL9UJi7I5RE98", "ruleCriteria": "EQUAL", "ruleValue": 0.8617080183412612}, {"ruleAttribute": "JqobQWdUPI7JBAuL", "ruleCriteria": "MINIMUM", "ruleValue": 0.5667876764949901}, {"ruleAttribute": "jIKVs9K02dgNX3gt", "ruleCriteria": "EQUAL", "ruleValue": 0.2902774989720952}]}]}, "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'FQQJXHCTFFLQbhr2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'e8lw6TNozpQLxIzK' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "bB715rEBFb42o8TJ", "groupIcon": "9DOnV4IE0JgxgBL2", "groupName": "oToSD6pNd7XWhwfb", "groupRegion": "yCVSMKY9LGJFjIlq", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId '1g3X1EfgDhxtxcDl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'k2K42fOb9hCVacRv' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "5RRtVmEmcVBo8jzR", "groupIcon": "LgwupS3ZfNq8Q6jr", "groupName": "y1wcPN9anZX60FnT", "groupRegion": "3t7x9F7BuFEBg2X2", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'VW8uCNjf1NjV0s7U' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"UXXU2VRt6SbTl50Y": {}, "XI9VgnkCxpJQISiQ": {}, "IKsBTDeJYXPyOrHk": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'kogO7nQ5BHNBuy2q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'fzaexIfemW4CiJvL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'dYVRnumZvBBpAiuA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'lhaoLm98251ZMPWC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'XZhkORiPoSifOZfB' \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'aTufOwYDIBHwc6XT' \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '29' \
    --order 'jZx3Na5usQmigsqg' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'hNPj0fWxUxUvIR20' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"wKfG8LBx6kGV9cnp": {}, "AJo37Le6C7A0TW4R": {}, "kV1jvM0i3a2ZHRH0": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction '5c2DoYH1CRr5Hyvb' \
    --groupId 'ygW7PnWV1lHfNzkg' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "PuVQbajomO8BqtdF", "ruleCriteria": "MINIMUM", "ruleValue": 0.8036196019958947}, {"ruleAttribute": "a63cBp0YrVREj1Wo", "ruleCriteria": "EQUAL", "ruleValue": 0.8378890102183293}, {"ruleAttribute": "wbHjy8GFlfbT5Cv3", "ruleCriteria": "MINIMUM", "ruleValue": 0.9125652306246255}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'CzwijPpKUQJn8Hga' \
    --groupId 'Fy7nQBomj4guDuTp' \
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
    --limit '90' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'GaGRxV1ZG3VdPnsy' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "000kIdYwgNHhfBjx"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'sJQycArlrUeS7bZW' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "hCG5Emx4Z6KVNavQ"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'WQejRBlY7aFQmLKJ' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'rsgCWaPtsCTcMVyY' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'PH0Bq8E8GhQHSgAM' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '9QtQfibnTBrw1zBn' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'SlFsp3No37h8Ekub' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["WkVgRRFKs9Jfvmij", "uDa5uSx8SlRa0c1G", "W0310B30HHJGIGeJ"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'ylhKGPDe7tLImIFO' \
    --limit '70' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'LZfoolZ8RNXlBnjq' \
    --namespace $AB_NAMESPACE \
    --userId 'akVGbNJcvU48OGck' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "bHAlxoXq1y4sFySU", "customAttributes": {"D3Nymd70uOI6cZjz": {}, "PFivbD6smVYtXIBt": {}, "GXBqeGbTMCXxSP0j": {}}, "groupDescription": "DuidHqpMC6gmgIxV", "groupIcon": "IDp7tOGX46MaNUtH", "groupMaxMember": 4, "groupName": "hq6q6ifblWzZYMYc", "groupRegion": "PnCVMIMz9HZIrZmP", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "OhUvUc4u44s2X3Pf", "ruleCriteria": "MAXIMUM", "ruleValue": 0.628016676162895}, {"ruleAttribute": "drVGGyjXCbBMAf4a", "ruleCriteria": "MINIMUM", "ruleValue": 0.6355380224403386}, {"ruleAttribute": "Dr1e2izqD5uFfYFL", "ruleCriteria": "EQUAL", "ruleValue": 0.227421835403119}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "ZFA3uUdxByacBCbC", "ruleCriteria": "MINIMUM", "ruleValue": 0.5513309483102506}, {"ruleAttribute": "LUSin4zOS9nQiETr", "ruleCriteria": "MINIMUM", "ruleValue": 0.5206575824560135}, {"ruleAttribute": "ds4gdlRNzjHAjMyr", "ruleCriteria": "MINIMUM", "ruleValue": 0.8539963037572105}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "8VizVpWtv2DlXZV9", "ruleCriteria": "EQUAL", "ruleValue": 0.8287404773467929}, {"ruleAttribute": "ZANC4O7tfFVYuahJ", "ruleCriteria": "MINIMUM", "ruleValue": 0.5062383945341649}, {"ruleAttribute": "OsI7jwq3392e4rJl", "ruleCriteria": "EQUAL", "ruleValue": 0.3549945517857429}]}]}, "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["Z3aZtrY7jEmPmV2t", "o1Ydza4u3HqNrGsn", "Pos0vcnTKxdxy84d"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId '1zfHFAMi7oTC2wdK' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "xnQkoGxXgDf26oFO", "groupIcon": "qSFP631SCqR9J27f", "groupName": "Z2l2XOsbhFWKMz79", "groupRegion": "2i0hDMRdWgckGJh4", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId '7dSGfSf6Mi1rPDQx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'xFnh4WsHAOqV6b9j' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "cKrQjIqSeUCfGO9b", "groupIcon": "RN37GttlZU21w7Sw", "groupName": "vYkOHpjPgb2GRceF", "groupRegion": "ftiGuImOPQ5sC1WC", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'CclqAnQWz1Rs8ATR' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"9VtKX3L6WhPxbXYv": {}, "Du91354V9Xiq5bBx": {}, "vxF1J5Xiu5cE1Pgl": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId 'lXktrSF2N93Nc0ct' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId '4cSZyskFUrCHeSJM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'FEr1xA68e0v5itNC' \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'yfAy1xqyk2wojmbr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId '2qw4QV89YcjBsDXO' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'u7N4ZlsjdZ2xGNUw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'G4GjxOrjKEOnbkX0' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"SL7mQv1axrJMy0KE": {}, "w5zQyqYj6kpUC8Ux": {}, "8lis4BPcAiWBOdQD": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction '1OUkHjUSzXRXRmKa' \
    --groupId 'dWcBqGsFPnLfKenT' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "j7pq5X3FzfCUFEBx", "ruleCriteria": "MINIMUM", "ruleValue": 0.22820357217340026}, {"ruleAttribute": "ghCJFbwCsELonk8F", "ruleCriteria": "MINIMUM", "ruleValue": 0.5113500713219445}, {"ruleAttribute": "yeVTiYarwqzaCRYX", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5923060209113694}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'f2ZbO3YX7XLQEBDw' \
    --groupId 'h03GIm6zxetQGwzu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'vjfzZDIJdekPJzDU' \
    --memberRoleId 'WF0Yu5aqL1SyBogI' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "EslcAJ8moEhXsuYa"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'JG4zQvwQuF1TpHoy' \
    --memberRoleId 'T3mWWB3b79I0kN9Y' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "vCaRQjWuiTtcSyyX"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'eISRSH6688r977Xa' \
    --namespace $AB_NAMESPACE \
    --userId 'QtPQh4Gf7rJuT6q1' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'ChjT289aPEHOeJQp' \
    --namespace $AB_NAMESPACE \
    --userId 'irpFqFYxZFykRSz6' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'z15CwpKPXhIFVWrt' \
    --namespace $AB_NAMESPACE \
    --userId 'Idw3sk8irCA263MN' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'Bq9KDguZd68FwAe4' \
    --namespace $AB_NAMESPACE \
    --userId '3jCFWA1X7U6Yojlx' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'v3IQVQtsVTEvNDL5' \
    --namespace $AB_NAMESPACE \
    --userId 'PuSpah8uMIx9IfQ9' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'jsb3RF9mTbxJaWTU' \
    --namespace $AB_NAMESPACE \
    --userId 'sUB98PehPCfNlDrZ' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE