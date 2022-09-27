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
    --limit '71' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "jtEpWISP", "description": "QbK6k5eK", "globalRules": [{"allowedAction": "TJ4rp9KH", "ruleDetail": [{"ruleAttribute": "6VykiUI4", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6263053259310274}, {"ruleAttribute": "epvtZ29P", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8725058673107434}, {"ruleAttribute": "F9z4qp7v", "ruleCriteria": "MINIMUM", "ruleValue": 0.19868290477223882}]}, {"allowedAction": "Hnns5sfl", "ruleDetail": [{"ruleAttribute": "CvydPYh7", "ruleCriteria": "EQUAL", "ruleValue": 0.8351477751617818}, {"ruleAttribute": "Y2srezd6", "ruleCriteria": "EQUAL", "ruleValue": 0.7392137475945063}, {"ruleAttribute": "yLAYyqj4", "ruleCriteria": "MINIMUM", "ruleValue": 0.7912462864240926}]}, {"allowedAction": "7Znte7YO", "ruleDetail": [{"ruleAttribute": "8U57FG9b", "ruleCriteria": "EQUAL", "ruleValue": 0.12795798312429674}, {"ruleAttribute": "C2ycvDzo", "ruleCriteria": "MINIMUM", "ruleValue": 0.0985692029372075}, {"ruleAttribute": "YwvFALtv", "ruleCriteria": "EQUAL", "ruleValue": 0.40247094020115404}]}], "groupAdminRoleId": "F3RkRh9g", "groupMaxMember": 39, "groupMemberRoleId": "7K9v8fus", "name": "gpN4azDt"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'Omvk0J3x' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'NgL8tubO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'A81APjRE' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "35PJfrMf", "groupMaxMember": 33, "name": "0BMVl7sQ"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction '6j6VmHUW' \
    --configurationCode 'SguyGDe5' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "rjcD5wxS", "ruleCriteria": "MINIMUM", "ruleValue": 0.010896047551868127}, {"ruleAttribute": "biwamrnq", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2996399809687422}, {"ruleAttribute": "53nam3nU", "ruleCriteria": "MAXIMUM", "ruleValue": 0.18125064938420998}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'r6x1fxIJ' \
    --configurationCode 'TEIC4xEd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'hfpiRZrL' \
    --groupName 'VDLkpbnD' \
    --groupRegion 'ZaA86PEV' \
    --limit '29' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'njw9SCFT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'cDY1wsh5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'LgfWAwD6' \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '57' \
    --order 'uRlzp17h' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "koJQigGb", "memberRolePermissions": [{"action": 77, "resourceName": "NQTkcwyC"}, {"action": 98, "resourceName": "qds5HKH1"}, {"action": 27, "resourceName": "bOdR0ZRK"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'zxXwfbxe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId '7YpFqIhA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'O4i6RwPA' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "qk2RZ461"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'uOMhikpU' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 3, "resourceName": "UZNNelcc"}, {"action": 94, "resourceName": "4AtiFL9W"}, {"action": 74, "resourceName": "o4m82JYJ"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'SfLQ1bAO' \
    --groupRegion 'mMU3bAhJ' \
    --limit '55' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "UgerIs7e", "customAttributes": {"InLVArEk": {}, "mxKBxKxq": {}, "yBEXrqjS": {}}, "groupDescription": "j1El1NvG", "groupIcon": "xRlNnl5N", "groupMaxMember": 68, "groupName": "YtriPvNK", "groupRegion": "ntp5RXwm", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "8TCSQ6l4", "ruleDetail": [{"ruleAttribute": "nqoaygys", "ruleCriteria": "MINIMUM", "ruleValue": 0.5004196497034129}, {"ruleAttribute": "Sp4OH5Jz", "ruleCriteria": "EQUAL", "ruleValue": 0.32246471161450485}, {"ruleAttribute": "IQR0klVI", "ruleCriteria": "EQUAL", "ruleValue": 0.3365960462261124}]}, {"allowedAction": "fDMDbDbI", "ruleDetail": [{"ruleAttribute": "pXwsv9uR", "ruleCriteria": "EQUAL", "ruleValue": 0.12179144471241898}, {"ruleAttribute": "hcoP29v6", "ruleCriteria": "EQUAL", "ruleValue": 0.2842526305820303}, {"ruleAttribute": "fEYWxs0Y", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8040011163004585}]}, {"allowedAction": "UbuyzdPz", "ruleDetail": [{"ruleAttribute": "QbZfrvBt", "ruleCriteria": "MAXIMUM", "ruleValue": 0.825440452721876}, {"ruleAttribute": "zK2IEsN2", "ruleCriteria": "EQUAL", "ruleValue": 0.08143767764476773}, {"ruleAttribute": "qbalp6wD", "ruleCriteria": "MINIMUM", "ruleValue": 0.8997635175430162}]}]}, "groupType": "AZgDeMGB"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'cm2ApRWt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'jQLFBQ03' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "fs4uJA4Q", "groupIcon": "aTbhdSbq", "groupName": "Voflvyg5", "groupRegion": "Hs1BtTBx", "groupType": "K1KbSkg8"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'kxqnBwRR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId '3n7DBmKR' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "IOTaFIZL", "groupIcon": "wIAZa5ID", "groupName": "NeMJfRSH", "groupRegion": "Y0rgKPXP", "groupType": "8zb3jsHg"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'MrynWXFi' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"xiOYRoHv": {}, "7F3McsDG": {}, "OqtgXh2l": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'swzjij0X' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId '3ZzFE4fq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'F6cETu1u' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'oGe7232I' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'uxLKJQHj' \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'jMEkxAva' \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '11' \
    --order '7CHZqI92' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId '3WMbSr9I' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"7NpVCuqi": {}, "bo6OqYvb": {}, "sLJWa3vq": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction '6ORyfRLQ' \
    --groupId 'bGUT36ta' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "FELakX96", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4815886162269307}, {"ruleAttribute": "HoG7adSg", "ruleCriteria": "EQUAL", "ruleValue": 0.43303164941061334}, {"ruleAttribute": "dSVlqHAY", "ruleCriteria": "EQUAL", "ruleValue": 0.08150424814144652}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction 'MyuQQbU3' \
    --groupId 'jQZHwEbe' \
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
    --limit '4' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'oialKqBg' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "Uki9OOkz"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'HFyopx6V' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "mVI5KyvG"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'vvGYZLCq' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'i9wQzNUy' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'f4hQtot2' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'QuVT6zIw' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'vG94rTqF' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE