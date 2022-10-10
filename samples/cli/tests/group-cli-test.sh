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
    --limit '26' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "O4rBUY8P", "description": "3NS77kSA", "globalRules": [{"allowedAction": "zYdrFFGU", "ruleDetail": [{"ruleAttribute": "S5ONM6Rk", "ruleCriteria": "MINIMUM", "ruleValue": 0.30064840207330856}, {"ruleAttribute": "B8j0ATAR", "ruleCriteria": "MINIMUM", "ruleValue": 0.02385201684539795}, {"ruleAttribute": "k2csfxle", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7602378304188616}]}, {"allowedAction": "u7EGj8u0", "ruleDetail": [{"ruleAttribute": "5RAX5Nbd", "ruleCriteria": "EQUAL", "ruleValue": 0.29540151482101984}, {"ruleAttribute": "2xliX5Rz", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8712073392546988}, {"ruleAttribute": "H2Cs84hQ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.26555313968302763}]}, {"allowedAction": "WVM35CtH", "ruleDetail": [{"ruleAttribute": "cvI4V3Bn", "ruleCriteria": "MINIMUM", "ruleValue": 0.6718391716652804}, {"ruleAttribute": "dijP98J2", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4605555440906284}, {"ruleAttribute": "TTRLlmKq", "ruleCriteria": "MAXIMUM", "ruleValue": 0.19614773786159978}]}], "groupAdminRoleId": "5HVeaxJD", "groupMaxMember": 28, "groupMemberRoleId": "TgywBduh", "name": "Kv2DI1zL"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'caPOtOGl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode '3vrGvnhw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'jToN0b0Q' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "YOBJ2hVF", "groupMaxMember": 63, "name": "9tHkEWk1"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'MR3BPzjg' \
    --configurationCode 'HNFahPD6' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "dXBpCgid", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8275322433306687}, {"ruleAttribute": "66kYCikr", "ruleCriteria": "MINIMUM", "ruleValue": 0.31300943251085833}, {"ruleAttribute": "oMYG4Era", "ruleCriteria": "MINIMUM", "ruleValue": 0.9312725436215901}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'eoPEiXfb' \
    --configurationCode 'MEX47w5e' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'B82841wo' \
    --groupName '1wr5GMWk' \
    --groupRegion '1VXsBDIt' \
    --limit '95' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'mI2POfGB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId '9xEBbYaG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'H64MDx3n' \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '43' \
    --order 'TzCXipow' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "Z7Ax28AS", "memberRolePermissions": [{"action": 98, "resourceName": "mHLIKhcI"}, {"action": 45, "resourceName": "iv0SPddf"}, {"action": 77, "resourceName": "DAzkjZod"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'xGnKEHH3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'RV2zVZFc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'v3M53Kaf' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "gI59MCFi"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId '1KDf7uko' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 39, "resourceName": "nphscGyW"}, {"action": 79, "resourceName": "wgCxQRSX"}, {"action": 85, "resourceName": "mDjFbw13"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'S04Kp9Cz' \
    --groupRegion 'y1wzzbSs' \
    --limit '15' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "sR1J9sZv", "customAttributes": {"o9lG8ffm": {}, "vQXepdG8": {}, "jTPWe6ZT": {}}, "groupDescription": "eV5SClpW", "groupIcon": "OCgeMdAj", "groupMaxMember": 64, "groupName": "rH63n3Lp", "groupRegion": "q0WhkyVI", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "G43xLy3a", "ruleDetail": [{"ruleAttribute": "BW2GJuxF", "ruleCriteria": "EQUAL", "ruleValue": 0.9326300896523755}, {"ruleAttribute": "KYCNVdUL", "ruleCriteria": "MINIMUM", "ruleValue": 0.5136388161689291}, {"ruleAttribute": "XPBzoPQy", "ruleCriteria": "MAXIMUM", "ruleValue": 0.08739936227518663}]}, {"allowedAction": "Vl2TEA09", "ruleDetail": [{"ruleAttribute": "GASk63b3", "ruleCriteria": "EQUAL", "ruleValue": 0.24021438402371187}, {"ruleAttribute": "IMSGPAOo", "ruleCriteria": "EQUAL", "ruleValue": 0.7164662999011175}, {"ruleAttribute": "ubDMilYv", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7908519025700004}]}, {"allowedAction": "0PY6MAlU", "ruleDetail": [{"ruleAttribute": "ZGjEmZy4", "ruleCriteria": "EQUAL", "ruleValue": 0.4850001261910174}, {"ruleAttribute": "v7lL17dJ", "ruleCriteria": "EQUAL", "ruleValue": 0.7466237823725782}, {"ruleAttribute": "JgPqnhrd", "ruleCriteria": "MINIMUM", "ruleValue": 0.24725597216922102}]}]}, "groupType": "A7FmKFKd"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'OSCMfQuj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'h5B3VDKC' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "Mimw2WTC", "groupIcon": "pIgwHCOV", "groupName": "sUp5JE6E", "groupRegion": "DXPpYRIM", "groupType": "DtfJLGGV"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'KjTdYIwE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'ca5fnAFA' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "0OBkHrJG", "groupIcon": "cmRdJIE6", "groupName": "BMzVqYhV", "groupRegion": "HrbidTJH", "groupType": "eWaFX46M"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'Qx573OsS' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"3ZOMSCW2": {}, "y1j34cWn": {}, "6O2h5drK": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'O4I9cpEu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'LlTmkCV5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'cyYsJqej' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId '5SC5A30i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'fiqwZ4M3' \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'VMl3Aib8' \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '89' \
    --order 'sF7XA7yw' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId '115Rv2C0' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"gUMyxYz1": {}, "8ld7ztgK": {}, "NZWOC8DG": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'dBUMBV2G' \
    --groupId '6tC0laMe' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "rMgXsKSn", "ruleCriteria": "MINIMUM", "ruleValue": 0.9015159856786938}, {"ruleAttribute": "tK1UwYMg", "ruleCriteria": "MINIMUM", "ruleValue": 0.43592638350535595}, {"ruleAttribute": "C0kuGqDk", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5817854609884726}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'VARiVZQS' \
    --groupId '2lZNO29P' \
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
    --limit '85' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'WquHEbnh' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "LTShMfHu"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'hkN49UHt' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "ZiJJgf06"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'VroinSrw' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'sKrybPmR' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ghyToBYE' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'kg5nQzUN' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '8xTk3XT4' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE