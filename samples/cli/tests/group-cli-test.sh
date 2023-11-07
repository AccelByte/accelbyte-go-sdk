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
    --limit '63' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": true, "configurationCode": "86h3RBdlUsqJvPFF", "description": "zKvSsJGEEtusJi2A", "globalRules": [{"allowedAction": "f8Ey4AAE3RP6EZe2", "ruleDetail": [{"ruleAttribute": "dio5Gfgp95b7bxcL", "ruleCriteria": "EQUAL", "ruleValue": 0.6142121352143947}, {"ruleAttribute": "gtwtxNHedqU8mYYP", "ruleCriteria": "MAXIMUM", "ruleValue": 0.05654738671876869}, {"ruleAttribute": "NjuGj9stS8MMjDtK", "ruleCriteria": "EQUAL", "ruleValue": 0.04057638268515751}]}, {"allowedAction": "0h6pcFlexPG2rHNs", "ruleDetail": [{"ruleAttribute": "omo5BAhGpfXkfCj9", "ruleCriteria": "MINIMUM", "ruleValue": 0.47710145106270485}, {"ruleAttribute": "Wf8I3XJUsJqsyEML", "ruleCriteria": "MAXIMUM", "ruleValue": 0.998093649689199}, {"ruleAttribute": "L7y5ozpf2w9JwgxH", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7223634075055243}]}, {"allowedAction": "BucXuLxGMaxS2It1", "ruleDetail": [{"ruleAttribute": "zHKivuSSGNVzsUKO", "ruleCriteria": "MINIMUM", "ruleValue": 0.20784029847124896}, {"ruleAttribute": "n1Yzhv40ijwSdjAd", "ruleCriteria": "EQUAL", "ruleValue": 0.40828234284052045}, {"ruleAttribute": "CtMovnmzDcF9Af29", "ruleCriteria": "MINIMUM", "ruleValue": 0.10250856954876819}]}], "groupAdminRoleId": "pmUBNnG0bQPOogrV", "groupMaxMember": 87, "groupMemberRoleId": "dMyixOXbGRPTEWPg", "name": "Jfs4rZoALpyGUsbi"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'IGJqHo3hUPE1sjNB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode '0gmx9nQ47TNZ8zZx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode 'KiGUg1eespz2zpM8' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "DF0zx3AUhmmAOD1X", "groupMaxMember": 3, "name": "yubriQVaWV3jTCbD"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'lfn47OAty80w17wv' \
    --configurationCode '5SDxhKnWsK4Qc1iw' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "HvtXvwkTUjjrLkHf", "ruleCriteria": "MINIMUM", "ruleValue": 0.9353160476618568}, {"ruleAttribute": "v1N4PB8hgZugR8qP", "ruleCriteria": "EQUAL", "ruleValue": 0.3532929077809708}, {"ruleAttribute": "lgRYBOHFOZTY7VZC", "ruleCriteria": "EQUAL", "ruleValue": 0.42550202369804624}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'G849jyiZtqpv5dGG' \
    --configurationCode 'P3V8Mr8XWnCdEOn8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'u8TgsEfWzfp5a4t0' \
    --groupName 'Fhv3eY7YuE8ZBs6Z' \
    --groupRegion 'F98EauaT3z4dEvTO' \
    --limit '53' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'MLI4sJ1O9KVG3bnm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId 'O6EtCZGScwfMUAHd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId '8XAFRpvJNUfczWBa' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '46' \
    --order 'XD66dyKXmtTRtzbn' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "L402xM2q0H23YcmW", "memberRolePermissions": [{"action": 21, "resourceName": "9TDl87ocHUi79kgn"}, {"action": 25, "resourceName": "pAx9sXRCBrxRq1Al"}, {"action": 63, "resourceName": "MJM0kXj4qcbiDASC"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId '7d4Fr9peQsHy3QdR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'nXecgPD1jV4ssDXx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'QVLWiTShAIN1JKma' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "AC7t31HXsllr8rNG"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId 'Bu0WMvILvYwUxAfY' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 73, "resourceName": "yXWVn83MHMAMT8qA"}, {"action": 25, "resourceName": "w0sDPEjAZIxRqIK4"}, {"action": 16, "resourceName": "gmtVlKlPMPmYJWlq"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'ADD2a6mnkSS1Gbeq' \
    --groupRegion '5u4rSqUh6CkwQcNe' \
    --limit '20' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "5qYEMv8JbHDBXrYs", "customAttributes": {"LRqeL1EE3WVlAZTA": {}, "kL7FBbr1xXBw6PuV": {}, "ZwDENnLB0sXQxPEr": {}}, "groupDescription": "BaMacXJR64LFDApF", "groupIcon": "t5ZQiYNb0IcF0Pwi", "groupMaxMember": 20, "groupName": "CXnpRRI8G8LW0aJ0", "groupRegion": "nUv8PbxuFH9gOXen", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "jEmlv3h1IgT2YhqK", "ruleDetail": [{"ruleAttribute": "RoOTWRNPJd9HYXLf", "ruleCriteria": "MINIMUM", "ruleValue": 0.1867003420585892}, {"ruleAttribute": "ZBwwAc4Y28pjPawJ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6979671677186037}, {"ruleAttribute": "r6Cxw5sN82KcHGfm", "ruleCriteria": "MINIMUM", "ruleValue": 0.6131409182504031}]}, {"allowedAction": "jjddfNmL6HS4Gylk", "ruleDetail": [{"ruleAttribute": "0LJ0v2l0Nw4mIXbF", "ruleCriteria": "MINIMUM", "ruleValue": 0.6768422910136269}, {"ruleAttribute": "kptpMzzZGX863VDn", "ruleCriteria": "EQUAL", "ruleValue": 0.011868422804901746}, {"ruleAttribute": "znJHpO7YmWgxMgUu", "ruleCriteria": "MINIMUM", "ruleValue": 0.5063317052327851}]}, {"allowedAction": "bXEXnuNwzVwAOvHt", "ruleDetail": [{"ruleAttribute": "s8vfVyx3o9ceZPy8", "ruleCriteria": "EQUAL", "ruleValue": 0.1027255394317319}, {"ruleAttribute": "wejffqPIsgjA51Lm", "ruleCriteria": "EQUAL", "ruleValue": 0.6610157538909268}, {"ruleAttribute": "lc00Wi0H2bKeHRXo", "ruleCriteria": "MAXIMUM", "ruleValue": 0.06917451658689877}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'MejuyIGJj9hvJwRv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId 'tkwwMMMMUfSm98me' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "qmbcBRyMlAssbbKJ", "groupIcon": "aSDWeS5ueD5mZXcy", "groupName": "zjGiinGeIUJCXYE2", "groupRegion": "8WvpzE67TT6HgpBC", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId '0YwJ0Owsdzf80qTX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'SJRbBDBfMv9hClsF' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "YXijGkueEOtZJtKQ", "groupIcon": "tH8z70LvhnTWXPJI", "groupName": "NOqMXCpWlajYyjgK", "groupRegion": "j16vjKdhqu2F8AA8", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId '1wFHBbmLpzhbihk9' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"rm8KluGxPv1CyAQM": {}, "pPsdXJPJxPxVw5GM": {}, "9kVkzVSycxIsht22": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'gucC2M1OezM0Dx9l' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId '14QYsuwuWhZHZy2B' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'EWjTnjxNKg3W5E65' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'uj4cwcCBrWxF0SqD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'od1eHAebzvC2Pbs4' \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'nk77A9VbquUF7XYq' \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '72' \
    --order 'cHf3xaF13gBGrzN1' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'YdZzTnZYEW9nlXfI' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"WNvygyGosZbFKxhR": {}, "RuTjyYeeXm09JQqI": {}, "mKEf618i7QmoZa1p": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'iD7ZizBtwp9tJUVu' \
    --groupId 'cW2Pcu1XXInESCjN' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "b2IjDvysZbJEu0af", "ruleCriteria": "MAXIMUM", "ruleValue": 0.12303659497324815}, {"ruleAttribute": "NXvP5Y09THBE4QkG", "ruleCriteria": "MINIMUM", "ruleValue": 0.2147737891358935}, {"ruleAttribute": "bTGv4nsAQz3ybaSY", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8594040767797712}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction '6J62LkSKq6YbCu2i' \
    --groupId 'S6MY3r7533AnvWb4' \
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
    --limit '97' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'HWpD1PnaovEzSeZH' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "MApHI3NPbxXY46u9"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'YtUCeu3pNTdKHHq7' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "smKWAoOxgSTh9VHf"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'kU6mtVHHVVHED6i4' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'b6n4OeQSKGTGS3YM' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ofZWyg3NOdk5Wwrd' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'SXyVZYUkbsBmrOOo' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId '5DKMvvsuQLI6Fxz5' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["eUEBcZTiOEbG7lL3", "zsttm5ARVq4IEAmE", "SHl7rZB1TqhKH3sk"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'u6XwGm1QCGWvPvUA' \
    --limit '93' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'OQSZvEFmReX2my0U' \
    --namespace $AB_NAMESPACE \
    --userId 'aBEaELI5sapkPTZx' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "UEf4CrFYNgF7V0Q5", "customAttributes": {"UsIxrZC1TwUR0Fkp": {}, "pJQHgM2WpUaoEFRQ": {}, "10I9lUcGEBYFqJfD": {}}, "groupDescription": "NqLViYFg3fIXE6Q6", "groupIcon": "aFKUHn1fbTeVTwl5", "groupMaxMember": 58, "groupName": "h0Q3xFYwiVtWcsTq", "groupRegion": "XqYn1x9JOlwf5FUQ", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "4yKVCxOpMFtHd3dR", "ruleDetail": [{"ruleAttribute": "9XpJsnaDHSSqbh3b", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8378153569670225}, {"ruleAttribute": "K7n80HWOxpLzuIxH", "ruleCriteria": "EQUAL", "ruleValue": 0.6437277861609219}, {"ruleAttribute": "xUvkUzHg9nLZbAQ6", "ruleCriteria": "MAXIMUM", "ruleValue": 0.748462812251196}]}, {"allowedAction": "VqPmyNwzArpG5mCe", "ruleDetail": [{"ruleAttribute": "IpbOAj81T81M4Gg6", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8821842986268319}, {"ruleAttribute": "jaa6DyzBh4VYBX5P", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8150228474387524}, {"ruleAttribute": "V4IE3UquE95Lbiqg", "ruleCriteria": "MINIMUM", "ruleValue": 0.93870396721616}]}, {"allowedAction": "xCYBuBZcGqGCEYs5", "ruleDetail": [{"ruleAttribute": "9nViT2uQbmpgZbrI", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6797133376151745}, {"ruleAttribute": "n2Z7R9n6t7OHQeLL", "ruleCriteria": "MINIMUM", "ruleValue": 0.8205606903749859}, {"ruleAttribute": "Oiyr5lxUvDhxSovb", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3314319138202302}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["a03XAVT1IpG4Akid", "IAWHrGl8alrwTazq", "onrLFjorAAcQYgRj"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'XeYdMcIN43jHKNb4' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "BDMJ3c0a0fTp9osO", "groupIcon": "XCx5TmfsbagO93g2", "groupName": "NDdEygYKgtLdgn8Q", "groupRegion": "F3wwg1oSei8fLRgM", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId '491PFzhBkUL1aPXB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'edBbKgJGI1c42HSd' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "C8w34oaboYf6f3MJ", "groupIcon": "eU9GZcaSLnCa7B4N", "groupName": "2jy1lXZyXhH8v62M", "groupRegion": "oanTTxbFenXKxgss", "groupType": "PRIVATE"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'k0SK4REoUUpl314S' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"2u0l8gW9ZW4wjr1q": {}, "iMfbLdhad63g0xaM": {}, "hakLJ4M2vO0rcMPG": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId '9RIN3kSKkVj9YUV5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'yuVXWFX611UapfSX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId '3vcc3wvQQzQ939FT' \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'E6mP80SNMbkjkFCq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'lN7kGYC3J7YRka7R' \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId '1QzOEy4pZvHPHIqM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'MgnsUAVRlMpArqnh' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"wNsFbIPv5Dx5h7Ae": {}, "gNhkbJpYAiCHGWRE": {}, "1NVjKseR1rbzAvrb": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction 'w8ZIWb2eFIv658dD' \
    --groupId 'gTArEYeR8wrBwxNm' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "58nrOfZbLnsThbjN", "ruleCriteria": "MAXIMUM", "ruleValue": 0.1777084335821767}, {"ruleAttribute": "aORVDpmow42ydtwI", "ruleCriteria": "EQUAL", "ruleValue": 0.7098291306122735}, {"ruleAttribute": "7xhVQDG5mnMJufSo", "ruleCriteria": "MINIMUM", "ruleValue": 0.9584848807028044}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction '2UZkFC7JgogaaqZD' \
    --groupId '1WzTY586TWdzWqGh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'NDyZF1p4SJy9DUwH' \
    --memberRoleId 'gWVdy62DMaRJWB0L' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "y1OhexxMxmw49OcI"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'rtMWNyXvm1dDUnDZ' \
    --memberRoleId 'cjE3KRJwUqucQ234' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "pufUtfd0jNuWpdR0"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'OB21ANpVNRtqBzGp' \
    --namespace $AB_NAMESPACE \
    --userId '4hc1NJMBp4h8nx4p' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId '2Ij7IhcqxjiMnXW8' \
    --namespace $AB_NAMESPACE \
    --userId '1WaPdRkYaQEVjSUz' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'G3JLuQfgTeuRwcHO' \
    --namespace $AB_NAMESPACE \
    --userId 'vJEm5J9yZtd7y4oi' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'Wf2qwnwBDzZfksKM' \
    --namespace $AB_NAMESPACE \
    --userId 'jJ1yIfqsfeVeIzAh' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId 'oA0nyKmNFSgN0SqC' \
    --namespace $AB_NAMESPACE \
    --userId 'RyXUNZ50KvCmULBQ' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId 'cdWx8dQhSMnpV2G7' \
    --namespace $AB_NAMESPACE \
    --userId 'ZkzfOhuY09iIV3r1' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE