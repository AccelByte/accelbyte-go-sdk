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
    --limit '78' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "GFRgo1EF", "description": "FVM7jP9v", "globalRules": [{"allowedAction": "sVJLL6pH", "ruleDetail": [{"ruleAttribute": "vycTaiY7", "ruleCriteria": "MINIMUM", "ruleValue": 0.06318124310659701}, {"ruleAttribute": "2CivBBgB", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5960521344827979}, {"ruleAttribute": "VJzXes4s", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6905551567688529}]}, {"allowedAction": "5C395XGm", "ruleDetail": [{"ruleAttribute": "zzVK8R4e", "ruleCriteria": "EQUAL", "ruleValue": 0.20959451119106753}, {"ruleAttribute": "uyrH8Hrz", "ruleCriteria": "EQUAL", "ruleValue": 0.2336047061901888}, {"ruleAttribute": "hHPtR3NB", "ruleCriteria": "EQUAL", "ruleValue": 0.28905986704505426}]}, {"allowedAction": "1wgsfj2G", "ruleDetail": [{"ruleAttribute": "jUaCz3Gj", "ruleCriteria": "MINIMUM", "ruleValue": 0.9063742836402029}, {"ruleAttribute": "XOVKRXYb", "ruleCriteria": "EQUAL", "ruleValue": 0.16902762511794545}, {"ruleAttribute": "rQ62gR4H", "ruleCriteria": "MAXIMUM", "ruleValue": 0.680918707617497}]}], "groupAdminRoleId": "yk1NYrNG", "groupMaxMember": 58, "groupMemberRoleId": "lionJLCs", "name": "Nqij1BYW"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'UiZWGjko' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'xfBCrEus' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'o1GfbMdf' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "UkNke1p9", "groupMaxMember": 15, "name": "eif3GSt3"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'v0wbMfSQ' \
    --configurationCode 'vX5XfjkS' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "bt0ud5Pm", "ruleCriteria": "MINIMUM", "ruleValue": 0.8100821061035548}, {"ruleAttribute": "YNoBpqlk", "ruleCriteria": "EQUAL", "ruleValue": 0.007400895462600365}, {"ruleAttribute": "OhnMJmRH", "ruleCriteria": "EQUAL", "ruleValue": 0.7344860221878559}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'zXz47BE9' \
    --configurationCode 'wigQPXoH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'gnFqoRRZ' \
    --groupName 'EHpfZ607' \
    --groupRegion '62PNbKia' \
    --limit '21' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'EbJH4WNA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'Tql0KzAn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'ftvooRF4' \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '93' \
    --order 'ExiGaBFc' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "2erdgd3w", "memberRolePermissions": [{"action": 67, "resourceName": "bcA9kX4U"}, {"action": 19, "resourceName": "F3PhaqHW"}, {"action": 11, "resourceName": "oh41uPbO"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'tcyMXvGH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'Cu7XiJX7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'al1i36Fe' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "3gydF9No"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'qHQVoqFd' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 78, "resourceName": "Vj8hQVnu"}, {"action": 80, "resourceName": "uViAl3Gr"}, {"action": 66, "resourceName": "a55d5Dtu"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'F6yVVHqT' \
    --groupRegion 'DmZuEaoQ' \
    --limit '3' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "wuquGOGm", "customAttributes": {"ilQT7jOc": {}, "REgBKsNu": {}, "YVuAcXnD": {}}, "groupDescription": "ylYuLpkZ", "groupIcon": "fC7I3Qu3", "groupMaxMember": 27, "groupName": "urXc2mZk", "groupRegion": "AILiWX7a", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "FLE84yNy", "ruleDetail": [{"ruleAttribute": "D2uENTJB", "ruleCriteria": "MINIMUM", "ruleValue": 0.13439785303642204}, {"ruleAttribute": "OI4EnbP6", "ruleCriteria": "EQUAL", "ruleValue": 0.9697846143475138}, {"ruleAttribute": "D0231Zgm", "ruleCriteria": "MINIMUM", "ruleValue": 0.6274734154704763}]}, {"allowedAction": "VkSH5F7P", "ruleDetail": [{"ruleAttribute": "2LAx4vzN", "ruleCriteria": "MINIMUM", "ruleValue": 0.2253070612181447}, {"ruleAttribute": "ANb3WTfI", "ruleCriteria": "EQUAL", "ruleValue": 0.7424616390828328}, {"ruleAttribute": "dCdERqkG", "ruleCriteria": "EQUAL", "ruleValue": 0.38112738465670526}]}, {"allowedAction": "bsNnYQ5L", "ruleDetail": [{"ruleAttribute": "ub2SiWOF", "ruleCriteria": "MAXIMUM", "ruleValue": 0.02687061765855836}, {"ruleAttribute": "dw0aSXy7", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3393007701109373}, {"ruleAttribute": "YHaQIgjz", "ruleCriteria": "MINIMUM", "ruleValue": 0.8355698581558986}]}]}, "groupType": "BLfAHduN"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'T63KoEer' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'QUTYF2Ew' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "MCZcY7f6", "groupIcon": "pfvX0HIu", "groupName": "R2YAJOie", "groupRegion": "2n3VgfFI", "groupType": "4FFUvqJo"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'kkZQyL2G' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'bWrYwRwV' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "qg8rapTQ", "groupIcon": "3dpdH3NP", "groupName": "Lg7zusPY", "groupRegion": "fGkxTjY7", "groupType": "gyshN0hG"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'kt7HZXU0' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"QD5TPehD": {}, "WBDaOoxK": {}, "U4Sqg2yU": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'naUHssqD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId '3i8gVrpD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'BKrI0xfH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'L9Oi2fNY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'zQb6UP2i' \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'OhNBPXTD' \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '20' \
    --order '31HlqXgl' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId '52e4dZPi' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"ZSp95pI7": {}, "RrLCIIPb": {}, "fV7SQIbj": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'vsyRIUN5' \
    --groupId '5940Wt9B' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "6Xxykd4d", "ruleCriteria": "MINIMUM", "ruleValue": 0.032262297041795285}, {"ruleAttribute": "yAQYbDgB", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8391627837580006}, {"ruleAttribute": "oLP0elLx", "ruleCriteria": "EQUAL", "ruleValue": 0.493956026551045}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction '0abKm6wv' \
    --groupId 'HoakrxJJ' \
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
    --limit '86' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'oWzdPOYi' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "R6sTIoXu"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'nEguAKuq' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "3EjBTEU6"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'dla97Har' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'XX1J9u9z' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'fHGzJH9R' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'LsTSS7lm' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '9MBjgwcp' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE