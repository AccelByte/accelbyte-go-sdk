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
    --offset '3' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "2kGWTjz8", "description": "Hd3J5Fvr", "globalRules": [{"allowedAction": "OLTEEKud", "ruleDetail": [{"ruleAttribute": "WlrJyMV0", "ruleCriteria": "MINIMUM", "ruleValue": 0.8705581202290843}, {"ruleAttribute": "Ar5HaEKS", "ruleCriteria": "EQUAL", "ruleValue": 0.4032060545589249}, {"ruleAttribute": "7NG86MDZ", "ruleCriteria": "MINIMUM", "ruleValue": 0.9131102645316189}]}, {"allowedAction": "AwlWQObA", "ruleDetail": [{"ruleAttribute": "0x5b9L4B", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9081836846747323}, {"ruleAttribute": "PJsCviyL", "ruleCriteria": "MAXIMUM", "ruleValue": 0.09877893429100182}, {"ruleAttribute": "NeikHDIF", "ruleCriteria": "EQUAL", "ruleValue": 0.5110082656155698}]}, {"allowedAction": "1BcAKkdp", "ruleDetail": [{"ruleAttribute": "W8rOKwZL", "ruleCriteria": "MAXIMUM", "ruleValue": 0.21011621260681146}, {"ruleAttribute": "rAxUBSxc", "ruleCriteria": "MINIMUM", "ruleValue": 0.8459660574184773}, {"ruleAttribute": "yHcemhBI", "ruleCriteria": "EQUAL", "ruleValue": 0.22340133442857413}]}], "groupAdminRoleId": "pbpCClcc", "groupMaxMember": 61, "groupMemberRoleId": "WHeGpRfS", "name": "us5xPfzH"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'C8K0WERE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'qj5WeiUS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'XieVIb0p' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Z34okpur", "groupMaxMember": 24, "name": "5rqjfJcF"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'XLuAdUwX' \
    --configurationCode 'DPxPdb8W' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "VTVz5yCE", "ruleCriteria": "EQUAL", "ruleValue": 0.792062052472323}, {"ruleAttribute": "aV33Tsv1", "ruleCriteria": "MINIMUM", "ruleValue": 0.446210201389863}, {"ruleAttribute": "IsxsHIM1", "ruleCriteria": "EQUAL", "ruleValue": 0.7527345966692427}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'B9y55U1O' \
    --configurationCode 'HDAH3Vu7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'TWNdrOGJ' \
    --groupName 'Lam05Ffh' \
    --groupRegion '97w3y1vV' \
    --limit '11' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'DvRiUYzh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'xkcBkEDw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'R3qYj5RK' \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '79' \
    --order 'ar0gcgcL' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "iAIIXngt", "memberRolePermissions": [{"action": 88, "resourceName": "7542wv2P"}, {"action": 96, "resourceName": "chblCndT"}, {"action": 86, "resourceName": "1CsfLn1x"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'zDQkqlxn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'xGTIaWzk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'jW9r5Qjb' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "b4uqOMOu"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'tvlU4rlb' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 30, "resourceName": "5rPcO7Iq"}, {"action": 45, "resourceName": "XG7VjOmd"}, {"action": 96, "resourceName": "z1IFIf5o"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'oY1icme6' \
    --groupRegion 'gY909SgM' \
    --limit '92' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "nFRNPNWQ", "customAttributes": {"ZwLsZ3YA": {}, "2S2gJwNz": {}, "Xb8t5dE2": {}}, "groupDescription": "WoM59NX0", "groupIcon": "3dknyCH8", "groupMaxMember": 84, "groupName": "TIGMmNsW", "groupRegion": "LDYn6HOY", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "aIxqCITk", "ruleDetail": [{"ruleAttribute": "EvGw0VVs", "ruleCriteria": "EQUAL", "ruleValue": 0.589864592132449}, {"ruleAttribute": "GgB6TXjw", "ruleCriteria": "MAXIMUM", "ruleValue": 0.69073827114805}, {"ruleAttribute": "6DcZK1YV", "ruleCriteria": "EQUAL", "ruleValue": 0.06970680198146728}]}, {"allowedAction": "ydx9bGGA", "ruleDetail": [{"ruleAttribute": "nkf93z5e", "ruleCriteria": "EQUAL", "ruleValue": 0.13788428213580395}, {"ruleAttribute": "mhsDOhdy", "ruleCriteria": "EQUAL", "ruleValue": 0.8372866725624787}, {"ruleAttribute": "4ivWsTrV", "ruleCriteria": "MINIMUM", "ruleValue": 0.058127499508197844}]}, {"allowedAction": "LudfHvzN", "ruleDetail": [{"ruleAttribute": "zdHI98Y6", "ruleCriteria": "MINIMUM", "ruleValue": 0.8186957579789357}, {"ruleAttribute": "iJZnHFmM", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7229030382084317}, {"ruleAttribute": "r0xyGyQZ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.1512957930648018}]}]}, "groupType": "Dv3Ty0uQ"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'JzBGIw7M' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'nafCDOi1' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "Uzvba3jS", "groupIcon": "QYiODAjU", "groupName": "JdvsjI2P", "groupRegion": "S9XkPW17", "groupType": "4KNbl8nb"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'qAUU4h5Y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'eql8q81k' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "n118iwhW", "groupIcon": "uWQk6kGf", "groupName": "n1pIeq6a", "groupRegion": "2mRct3n5", "groupType": "sO6O36aS"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId '0rFYBgzw' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"8Idd7T1B": {}, "XAwVvr7R": {}, "idhsEis9": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'N2qWV4Qj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId '04q9756M' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId '2YqzM2NC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'FyzZY6Ms' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'aAiQOcQn' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'uo7Z3qN4' \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '47' \
    --order 'd67l6ABC' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'iDAOlfE1' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"tXbkljjx": {}, "jk6eH47A": {}, "92u12gMf": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'OZsoAG6O' \
    --groupId 'SgRij8WQ' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "9cRwYX7X", "ruleCriteria": "EQUAL", "ruleValue": 0.824421373121084}, {"ruleAttribute": "Df8O8NWv", "ruleCriteria": "MINIMUM", "ruleValue": 0.7797560491214622}, {"ruleAttribute": "HBWSHwMj", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4980504979753033}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'FTOfazBZ' \
    --groupId 'BDhX9Q78' \
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
    --limit '13' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'RjkHrdPu' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "LiNSpPO7"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId '7nKN1NGN' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "G2EYtSV2"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ZOFZxBMh' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'IwnZxMvM' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ZtbtmZnb' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'pD7zNBMm' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '0RBzvO1G' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE