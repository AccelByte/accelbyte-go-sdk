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
    --limit '43' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "QNFEQGxR", "description": "uF2N27Ni", "globalRules": [{"allowedAction": "DypwZUDU", "ruleDetail": [{"ruleAttribute": "m3KZrNLI", "ruleCriteria": "MAXIMUM", "ruleValue": 0.24947820267484255}, {"ruleAttribute": "3E8jneds", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9551902199704623}, {"ruleAttribute": "rkYHJtsx", "ruleCriteria": "EQUAL", "ruleValue": 0.6211466658152037}]}, {"allowedAction": "ydgRIopN", "ruleDetail": [{"ruleAttribute": "ONCan3Nn", "ruleCriteria": "EQUAL", "ruleValue": 0.5964193693948484}, {"ruleAttribute": "eKseKj4L", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7828183460006748}, {"ruleAttribute": "5xgOhSiX", "ruleCriteria": "MAXIMUM", "ruleValue": 0.026784837608109124}]}, {"allowedAction": "2KCXASfx", "ruleDetail": [{"ruleAttribute": "xPpn3ly4", "ruleCriteria": "MINIMUM", "ruleValue": 0.460428587335429}, {"ruleAttribute": "AD2fDg7K", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4392864879107673}, {"ruleAttribute": "inVXptDC", "ruleCriteria": "MINIMUM", "ruleValue": 0.00040057274513427554}]}], "groupAdminRoleId": "aWyFaAhU", "groupMaxMember": 8, "groupMemberRoleId": "Z5TCL7nC", "name": "SxWcNr68"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'xFKaG4xw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'BCWCmFVc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'EPJFlPQM' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "5MrB05H7", "groupMaxMember": 97, "name": "x2fhALEJ"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'rWRxtAG5' \
    --configurationCode 'hsK0QGVZ' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "WxHhjJBV", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8890515710881242}, {"ruleAttribute": "oMBqp2yz", "ruleCriteria": "EQUAL", "ruleValue": 0.6592544502334289}, {"ruleAttribute": "vPXraAnm", "ruleCriteria": "MAXIMUM", "ruleValue": 0.403213546769709}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'hGKs0kHS' \
    --configurationCode 'I5KMJvq4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'lsW7iQJ2' \
    --groupName 'LedxM164' \
    --groupRegion 'vYUSXqqA' \
    --limit '36' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'NEZRnzey' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'diYlLoZT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'hb0FoHaF' \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '84' \
    --order 'oAdGhDc2' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "XkcHF9fz", "memberRolePermissions": [{"action": 47, "resourceName": "jA2pnLCd"}, {"action": 75, "resourceName": "A1MTCTeB"}, {"action": 75, "resourceName": "hQZpyFZK"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'T6xAG6hE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'UIBKEiBj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'VUmcLakL' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "zsmO4PXr"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId '4DNAvyJh' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 65, "resourceName": "bj6QPdSr"}, {"action": 73, "resourceName": "dBbsQzvm"}, {"action": 80, "resourceName": "HrzrRWkz"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'Y9XQuH6d' \
    --groupRegion 'N9Rcatan' \
    --limit '30' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "6Ty72vSQ", "customAttributes": {"lihXKuOx": {}, "KaqiaZIf": {}, "Z4QHyFFC": {}}, "groupDescription": "67ZV8s7F", "groupIcon": "8p4nmipZ", "groupMaxMember": 6, "groupName": "BOUr3kpy", "groupRegion": "2RI8M7xE", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "3LelUdzu", "ruleDetail": [{"ruleAttribute": "4GpZJpLH", "ruleCriteria": "EQUAL", "ruleValue": 0.2485341232444287}, {"ruleAttribute": "CGFfi320", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7347785917337548}, {"ruleAttribute": "KtFjLxs6", "ruleCriteria": "EQUAL", "ruleValue": 0.15887108773741032}]}, {"allowedAction": "vIBXiKAS", "ruleDetail": [{"ruleAttribute": "OQ5LUamU", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6179316898745966}, {"ruleAttribute": "EXrYOw3b", "ruleCriteria": "MAXIMUM", "ruleValue": 0.906510418387695}, {"ruleAttribute": "WtbjktIt", "ruleCriteria": "EQUAL", "ruleValue": 0.3225953342986636}]}, {"allowedAction": "Jdxpt82S", "ruleDetail": [{"ruleAttribute": "FxMRnHrn", "ruleCriteria": "EQUAL", "ruleValue": 0.8349364713937393}, {"ruleAttribute": "b75CxkpN", "ruleCriteria": "MINIMUM", "ruleValue": 0.5123225092843069}, {"ruleAttribute": "cJPzbjMJ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.41045179881930016}]}]}, "groupType": "UhhGOHeF"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'CIHb8v2f' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'BNe8N2Ng' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "v6t01wzU", "groupIcon": "FXCZz4ca", "groupName": "iQ2rniqU", "groupRegion": "wXOyV0C3", "groupType": "tB43nz0a"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'hfsvPKBj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'HWHiZkbq' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "0gEi0FAd", "groupIcon": "ZGOCafuk", "groupName": "CM5cqjdV", "groupRegion": "FT8tJtH5", "groupType": "4sAMIql9"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'vtD8OocE' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"oP3K5AZe": {}, "SvgD0me6": {}, "vhE64K63": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'erM1JAcs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId 'uQxrzrtP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'rOJeOPo1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'vSU606vj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'qbx0C8gh' \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'GYV8VCFx' \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '88' \
    --order 'utfN818d' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'iFoOAwsh' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"5AAKKquq": {}, "fBtd5dGh": {}, "GhNUHP2n": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'nqfR5Akz' \
    --groupId 'kjP1hf7c' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "A3vkAj8H", "ruleCriteria": "EQUAL", "ruleValue": 0.3539094482541493}, {"ruleAttribute": "jRMoL4R7", "ruleCriteria": "MINIMUM", "ruleValue": 0.19048077520088202}, {"ruleAttribute": "h8iYe0iD", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6310395592304503}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction '3hv411bZ' \
    --groupId 'YhJGSTSg' \
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
    --limit '88' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'hFU5Rdi8' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "X7vzFGWg"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'iUx4f4il' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "Wg1TjUj2"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'LfPbNxad' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'gio1EUBe' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Ges5EOPx' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '2XhquiOI' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'MH0Tp7Hp' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE