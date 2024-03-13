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
    --limit '97' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
samples/cli/sample-apps Group createGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowMultiple": false, "configurationCode": "eCpjTy4JMe5HHSCA", "description": "251PXcziygKklXMD", "globalRules": [{"allowedAction": "CIqFmghEhHmK8mSL", "ruleDetail": [{"ruleAttribute": "dq6NMmxsxszP7lDs", "ruleCriteria": "MAXIMUM", "ruleValue": 0.1073964313489163}, {"ruleAttribute": "QAMHcgd0utsHUJXQ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8655234483473665}, {"ruleAttribute": "N9LgH6Bh23rtWPRE", "ruleCriteria": "MINIMUM", "ruleValue": 0.6714957924726248}]}, {"allowedAction": "2wiasCiJYa42k3Tq", "ruleDetail": [{"ruleAttribute": "2qB7rXZWHZD00aXN", "ruleCriteria": "MINIMUM", "ruleValue": 0.5807235566096527}, {"ruleAttribute": "GH8Tw56ndqCGheuC", "ruleCriteria": "EQUAL", "ruleValue": 0.7595177566376325}, {"ruleAttribute": "xkRqB42SnutIZrMj", "ruleCriteria": "MAXIMUM", "ruleValue": 0.539155782267008}]}, {"allowedAction": "VW5CjqsKA5cmoyEv", "ruleDetail": [{"ruleAttribute": "P9JLfFLDr17Zzy4o", "ruleCriteria": "MINIMUM", "ruleValue": 0.8298088098061581}, {"ruleAttribute": "BmLHnTnqjHVRNmyG", "ruleCriteria": "MINIMUM", "ruleValue": 0.3954214883669199}, {"ruleAttribute": "e9UFK0LOAHUrMYAI", "ruleCriteria": "EQUAL", "ruleValue": 0.7467122145868184}]}], "groupAdminRoleId": "sl8TEBXYbtuCZqod", "groupMaxMember": 26, "groupMemberRoleId": "cZLDz2MsFIj0eikp", "name": "AbLHSp0tvddpxZ5Z"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
samples/cli/sample-apps Group initiateGroupConfigurationAdminV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
samples/cli/sample-apps Group getGroupConfigurationAdminV1 \
    --configurationCode 'cvTIe2TcMyVybBNP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
samples/cli/sample-apps Group deleteGroupConfigurationV1 \
    --configurationCode 'KLP7wOXVZpGGD2e1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
samples/cli/sample-apps Group updateGroupConfigurationAdminV1 \
    --configurationCode '9HIvvTWYhBJlxIvY' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "K9HkV30yG1wRE6sU", "groupMaxMember": 47, "name": "NPePYJczzXh2BCkH"}' \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group updateGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'vozojZ7l7yphogxy' \
    --configurationCode 'Sp31YcWhju38YIXm' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "mStE7Zs4FvqiChJ5", "ruleCriteria": "EQUAL", "ruleValue": 0.7974314725620689}, {"ruleAttribute": "pap7HI6DP1Q3KxA3", "ruleCriteria": "EQUAL", "ruleValue": 0.7217688611839141}, {"ruleAttribute": "enEJwWfCNV8oMME2", "ruleCriteria": "EQUAL", "ruleValue": 0.009411115281384497}]}' \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
samples/cli/sample-apps Group deleteGroupConfigurationGlobalRuleAdminV1 \
    --allowedAction 'aHFxK6oPpWg6zBea' \
    --configurationCode 'ol1LFv3YJrLsfs3d' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
samples/cli/sample-apps Group getGroupListAdminV1 \
    --namespace $AB_NAMESPACE \
    --configurationCode 'GtrqN4Uc2FPWMS5r' \
    --groupName 'bsdyun0gR5c9LkPt' \
    --groupRegion '7VHvGE42Wy7OSNkq' \
    --limit '13' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
samples/cli/sample-apps Group getSingleGroupAdminV1 \
    --groupId 'wlQUlh0QSZ0kFRuj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
samples/cli/sample-apps Group deleteGroupAdminV1 \
    --groupId '7o2Aff8BrGpzKaYP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
samples/cli/sample-apps Group getGroupMembersListAdminV1 \
    --groupId 'kRwOVjwvioKAVFpp' \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '35' \
    --order 'xqjnXhBIQ5sigJ9h' \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
samples/cli/sample-apps Group getMemberRolesListAdminV1 \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
samples/cli/sample-apps Group createMemberRoleAdminV1 \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "M7RsmmC9j19GpxFp", "memberRolePermissions": [{"action": 47, "resourceName": "0QSOErQYlCHT2uOY"}, {"action": 56, "resourceName": "tVVOOaQq35sIxP2c"}, {"action": 18, "resourceName": "JHLzcpb6JFlxigae"}]}' \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
samples/cli/sample-apps Group getSingleMemberRoleAdminV1 \
    --memberRoleId 'DVnWoEIZ7C0nmfxu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
samples/cli/sample-apps Group deleteMemberRoleAdminV1 \
    --memberRoleId 'BJq9f7I5BoNOZhaF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
samples/cli/sample-apps Group updateMemberRoleAdminV1 \
    --memberRoleId 'AsAoLe0aQqvyzOP5' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRoleName": "NrkOdQJlVc6JU6Z7"}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
samples/cli/sample-apps Group updateMemberRolePermissionAdminV1 \
    --memberRoleId '4tofVws9HBJGkryD' \
    --namespace $AB_NAMESPACE \
    --body '{"memberRolePermissions": [{"action": 38, "resourceName": "qYIEVgJCCytYhTLQ"}, {"action": 62, "resourceName": "fPHeEiEnUimHPgH9"}, {"action": 51, "resourceName": "lNQr1Uh6zTcCGWrS"}]}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
samples/cli/sample-apps Group getGroupListPublicV1 \
    --namespace $AB_NAMESPACE \
    --groupName 'RKhzXV8ZtPDKxmAT' \
    --groupRegion 'nJA5e7rExOV6dPWa' \
    --limit '52' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
samples/cli/sample-apps Group createNewGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "YAAJ01lVFlHCHXwP", "customAttributes": {"yU3A7qVpHh4XVnc5": {}, "yuUcucifHStp6WC9": {}, "nyxE3CsEcaq34Nvs": {}}, "groupDescription": "RlvcalklMmNmhwaf", "groupIcon": "9cMFyc1HpJRiaKDb", "groupMaxMember": 83, "groupName": "8KPWZyEwddiEf8J0", "groupRegion": "MSjEFcHk3XzvkMML", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "BNAOny9TMrAcBKG9", "ruleDetail": [{"ruleAttribute": "YPgqXea5AsIn1Hhn", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9257991906943814}, {"ruleAttribute": "0opG0MFSArUd2ClD", "ruleCriteria": "EQUAL", "ruleValue": 0.5688506846006327}, {"ruleAttribute": "1QppXJI800c06ecc", "ruleCriteria": "EQUAL", "ruleValue": 0.8090065206624616}]}, {"allowedAction": "ETtDAkB9W2NbO3Di", "ruleDetail": [{"ruleAttribute": "8L3KimXdVXupooDE", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4401926618755393}, {"ruleAttribute": "4VBYigHvRnLr5r1Q", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7486593598334287}, {"ruleAttribute": "WwlC3cnCRekquc21", "ruleCriteria": "MINIMUM", "ruleValue": 0.9748160123989293}]}, {"allowedAction": "74T1AXUe3Zy9CyQz", "ruleDetail": [{"ruleAttribute": "1WxtiOtprAMHeG4p", "ruleCriteria": "EQUAL", "ruleValue": 0.8077693805860695}, {"ruleAttribute": "cts0RaA2itGev8G7", "ruleCriteria": "MINIMUM", "ruleValue": 0.24446524789199142}, {"ruleAttribute": "LVphESQd3obCWROx", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9300866409642967}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
samples/cli/sample-apps Group getSingleGroupPublicV1 \
    --groupId 'x1Qpzb6TANu7gNS2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
samples/cli/sample-apps Group updateSingleGroupV1 \
    --groupId '0DGifLhp3CAYSrnw' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "BartdRYDLFSj7lNU", "groupIcon": "f84o3SkzSx7K2SEI", "groupName": "TnMkNrUEVjkRr3db", "groupRegion": "1Ho7P0JoQ2UBfmEt", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
samples/cli/sample-apps Group deleteGroupPublicV1 \
    --groupId 'A4FyT7ukxmPC2o07' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
samples/cli/sample-apps Group updatePatchSingleGroupPublicV1 \
    --groupId 'cOakWzRxDAPWa40S' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "L2Nv25l27ai9LF1C", "groupIcon": "j7Fmc08nxzBISAkQ", "groupName": "NndZdXUJvrdo6DVl", "groupRegion": "wPV4KcUJOvjH3J6u", "groupType": "PUBLIC"}' \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV1 \
    --groupId 'gg4YL5rsL6WLy8wN' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"6sj4ye7DpZs8XpsA": {}, "TtZgtV6bAzuoagyZ": {}, "0oYrcKNM8LopiRzh": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
samples/cli/sample-apps Group acceptGroupInvitationPublicV1 \
    --groupId 'Sjk0PxIusPdfBGbk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
samples/cli/sample-apps Group rejectGroupInvitationPublicV1 \
    --groupId '87GdyW56e0riC97v' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
samples/cli/sample-apps Group joinGroupV1 \
    --groupId 'sj4SLsKC59bA4opN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
samples/cli/sample-apps Group cancelGroupJoinRequestV1 \
    --groupId 'ju2HhCmdP3pvwysR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
samples/cli/sample-apps Group getGroupJoinRequestPublicV1 \
    --groupId 'UoYO6jrKc6jSjQpH' \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
samples/cli/sample-apps Group getGroupMembersListPublicV1 \
    --groupId 'qK1EWYTTz4U6FSZt' \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '1' \
    --order 'ngsgiZsTSNBDCyjA' \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
samples/cli/sample-apps Group updateGroupCustomRulePublicV1 \
    --groupId 'baDK5yXG6xCUwYAj' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"eQ1CAMNp5jhBbXwp": {}, "mPePVqNk5isUHoy0": {}, "wiQ0aVqYbYFBHTZZ": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV1 \
    --allowedAction 'uUIXhnds16BRbWKP' \
    --groupId '81ToBVdcAnY0iMNr' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "GfYm7BvGAT3deecF", "ruleCriteria": "MINIMUM", "ruleValue": 0.775451505292073}, {"ruleAttribute": "Z2jAk7wdzBx5Kgr4", "ruleCriteria": "MINIMUM", "ruleValue": 0.14540618455640308}, {"ruleAttribute": "QrWJEb3Bfh4hh8EB", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5284492860323501}]}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV1 \
    --allowedAction '4O0P0RP23u3MZ1gB' \
    --groupId 'eTVAMXLPv3Glpch8' \
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
    --limit '21' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
samples/cli/sample-apps Group updateMemberRolePublicV1 \
    --memberRoleId 'R4RScKLApYTGP0LJ' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "GVAIEv96sjqdVhWR"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
samples/cli/sample-apps Group deleteMemberRolePublicV1 \
    --memberRoleId 'DucHziX4JFa1WHQR' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "B9utQBlWzQPkA11X"}' \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
samples/cli/sample-apps Group getGroupInvitationRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
samples/cli/sample-apps Group getUserGroupInformationPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'mpzEOgKNM5OHonCb' \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
samples/cli/sample-apps Group inviteGroupPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'c2zAE8pxpg2MKCSm' \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'tjOQAbcPUFWcbHON' \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'SeP5NBdxFolVcJFO' \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
samples/cli/sample-apps Group kickGroupMemberPublicV1 \
    --namespace $AB_NAMESPACE \
    --userId 'bFfz2GU31Xm6lZtx' \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
samples/cli/sample-apps Group getListGroupByIDsAdminV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["hNpufzGIYzmxGhcz", "MOk3uEawZjtAZtSf", "rSWyyLhhRS9gGjv2"]}' \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
samples/cli/sample-apps Group getUserJoinedGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --userId 'C4ilookfFeKgm5nu' \
    --limit '76' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
samples/cli/sample-apps Group adminGetUserGroupStatusInformationV2 \
    --groupId 'z7Nreth53LPmlFkb' \
    --namespace $AB_NAMESPACE \
    --userId 'D0LAYRCTv7j6dOBf' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
samples/cli/sample-apps Group createNewGroupPublicV2 \
    --namespace $AB_NAMESPACE \
    --body '{"configurationCode": "z8uUB3DzHAiAb4Y1", "customAttributes": {"heaF5BFcYm0QM0fp": {}, "8v04Zsmherzxljsa": {}, "iw7A4j2soh9VZABE": {}}, "groupDescription": "DdWDQrgMUIsxSfNA", "groupIcon": "LnzM6b1V70oasEuN", "groupMaxMember": 68, "groupName": "4jKNMce9GlaZ9Gxk", "groupRegion": "MLSJ4qvWI9TxXqlG", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "3ahB2n76ic4AMIq3", "ruleDetail": [{"ruleAttribute": "ZjkuxBbDt62F6Hqt", "ruleCriteria": "EQUAL", "ruleValue": 0.5121587720105141}, {"ruleAttribute": "rchzj1aEHZrsOR3I", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5092982623865433}, {"ruleAttribute": "fdlB5FRbm4APEjVI", "ruleCriteria": "MAXIMUM", "ruleValue": 0.24897535357934109}]}, {"allowedAction": "DkksXen5vRt5ILDM", "ruleDetail": [{"ruleAttribute": "JjCkPnrltjTuxkb5", "ruleCriteria": "MINIMUM", "ruleValue": 0.11172241398361649}, {"ruleAttribute": "u6Ohmw82RqHwtoR4", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6822383897561128}, {"ruleAttribute": "HVW41XmBQP8wUDSo", "ruleCriteria": "MAXIMUM", "ruleValue": 0.11958472915948704}]}, {"allowedAction": "H5DS8BGNGu5r6pkC", "ruleDetail": [{"ruleAttribute": "WkdLJvMfDPI8jsEx", "ruleCriteria": "MINIMUM", "ruleValue": 0.8522956025920353}, {"ruleAttribute": "TTOeARq0FcePHfIb", "ruleCriteria": "MINIMUM", "ruleValue": 0.12844771765124052}, {"ruleAttribute": "gYLMubGGmMmUtsoS", "ruleCriteria": "MINIMUM", "ruleValue": 0.10524671993884371}]}]}, "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
samples/cli/sample-apps Group getListGroupByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"groupIDs": ["zKpSDU9oPMfErdFj", "nnaAJQ4ICT2Qu6eU", "0pqy4KnYrFzPgHqL"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
samples/cli/sample-apps Group updatePutSingleGroupPublicV2 \
    --groupId 'ufLFKVRsVfRznclX' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "7IXVQjYcX9bHLTiZ", "groupIcon": "c2u1qk1XW9R8mHgJ", "groupName": "U75UQzpjNi1AmmVl", "groupRegion": "C3fYnnkVTlT3D0hD", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
samples/cli/sample-apps Group deleteGroupPublicV2 \
    --groupId 'CXSQP61jJ24deONR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
samples/cli/sample-apps Group updatePatchSingleGroupPublicV2 \
    --groupId 'zxWUQwQT9f1QTcUB' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {}, "groupDescription": "VtHsl5aVLNLUjQeo", "groupIcon": "BjYZRcIzMY4uyCTJ", "groupName": "oFoTgTE5DmZzsM4F", "groupRegion": "YzduN4LKvgQDfVOI", "groupType": "OPEN"}' \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
samples/cli/sample-apps Group updateGroupCustomAttributesPublicV2 \
    --groupId 'WidoCOAX62DRehgA' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"ZNhql58nSf8bkwLo": {}, "cRhOqPbXSsd2F3JG": {}, "cg5TeSaVBjL1HzbI": {}}}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
samples/cli/sample-apps Group acceptGroupInvitationPublicV2 \
    --groupId '61j5JFdSankQpNV4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
samples/cli/sample-apps Group rejectGroupInvitationPublicV2 \
    --groupId 'ZRNeYhsLeURT5kdf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
samples/cli/sample-apps Group getGroupInviteRequestPublicV2 \
    --groupId 'b9jZ3rfJEkDbpKZz' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
samples/cli/sample-apps Group joinGroupV2 \
    --groupId 'BVZvoHLdSwzI1bfX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
samples/cli/sample-apps Group getGroupJoinRequestPublicV2 \
    --groupId 'OQQg1TL1xOSWT5m3' \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
samples/cli/sample-apps Group leaveGroupPublicV2 \
    --groupId 'lKQAto2kuDlYdHCa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
samples/cli/sample-apps Group updateGroupCustomRulePublicV2 \
    --groupId 'Bh4bFUjdIxuYEPlD' \
    --namespace $AB_NAMESPACE \
    --body '{"groupCustomRule": {"N7jWX7QWlotjDRsb": {}, "x22coJO8k5eqtRJE": {}, "Qel1mVdh8vyP6RgF": {}}}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
samples/cli/sample-apps Group updateGroupPredefinedRulePublicV2 \
    --allowedAction '7Ktwt4usKJ78gwJx' \
    --groupId 'hiFQgGiPnj75Lju0' \
    --namespace $AB_NAMESPACE \
    --body '{"ruleDetail": [{"ruleAttribute": "VvGr4dO4tMqF6Sk4", "ruleCriteria": "MINIMUM", "ruleValue": 0.5925106165922612}, {"ruleAttribute": "dbJifzfEFldfgcZw", "ruleCriteria": "EQUAL", "ruleValue": 0.09542678278471173}, {"ruleAttribute": "bHyMlymZjKEmYh1K", "ruleCriteria": "EQUAL", "ruleValue": 0.3489954992838443}]}' \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
samples/cli/sample-apps Group deleteGroupPredefinedRulePublicV2 \
    --allowedAction 'OmS1ktt5MYvQZZER' \
    --groupId '4ADX7kqKX4k8fyre' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
samples/cli/sample-apps Group getMemberRolesListPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
samples/cli/sample-apps Group updateMemberRolePublicV2 \
    --groupId 'thMzg2YxJ0dY11IU' \
    --memberRoleId 'PXkCkZtxIrYIlRKU' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "uFbcpCje2CTM1KmZ"}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
samples/cli/sample-apps Group deleteMemberRolePublicV2 \
    --groupId 'BnYssowlaIPooQp6' \
    --memberRoleId 'mJJhoUwTp2sC4EuC' \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "JJP20K4OuPMV0EpQ"}' \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
samples/cli/sample-apps Group getUserGroupInformationPublicV2 \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
samples/cli/sample-apps Group getMyGroupJoinRequestV2 \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
samples/cli/sample-apps Group inviteGroupPublicV2 \
    --groupId 'TaMgNxlRJDeHmgP3' \
    --namespace $AB_NAMESPACE \
    --userId 'DZ1olCE6sPdioTmW' \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
samples/cli/sample-apps Group cancelInvitationGroupMemberV2 \
    --groupId 'gCOCK9zIPbMIcwUu' \
    --namespace $AB_NAMESPACE \
    --userId '1UuT71iWMIozTKFK' \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
samples/cli/sample-apps Group acceptGroupJoinRequestPublicV2 \
    --groupId 'GNbsJEsAeOhLkJVA' \
    --namespace $AB_NAMESPACE \
    --userId 'OaEJx9ClK1Dy3wN9' \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
samples/cli/sample-apps Group rejectGroupJoinRequestPublicV2 \
    --groupId 'Fs7i5ECpVSEsEB3U' \
    --namespace $AB_NAMESPACE \
    --userId '0T2GIF0XijdufPdf' \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
samples/cli/sample-apps Group kickGroupMemberPublicV2 \
    --groupId '7QWWrdANA9Inb6WA' \
    --namespace $AB_NAMESPACE \
    --userId 'MZ382SQntcG9aGYS' \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
samples/cli/sample-apps Group getUserGroupStatusInformationV2 \
    --groupId '0cibWl0rcRxCM3m6' \
    --namespace $AB_NAMESPACE \
    --userId 'nSmFhpRaww9WSk7y' \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE